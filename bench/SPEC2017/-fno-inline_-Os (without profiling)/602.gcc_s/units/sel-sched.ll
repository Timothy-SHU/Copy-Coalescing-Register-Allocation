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
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.moveop_static_params = type { ptr, ptr, i32, i8 }
%struct.cmpd_local_params = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.vinsn_def = type { ptr, %struct.idata_def, i32, i32, i32, i32, i8 }
%struct.idata_def = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.spec_info_def = type { i32, ptr, i32, i32, i32 }
%struct.VEC_insn_t_base = type { i32, i32, [1 x ptr] }
%struct.transformed_insns = type { ptr, ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtx_search_arg = type { ptr, i32 }
%struct.sel_region_bb_info_def = type { ptr, ptr, i32 }
%struct._list_iterator = type { ptr, i8, i8 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_sel_region_bb_info_def_base = type { i32, i32, [1 x %struct.sel_region_bb_info_def] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct._list_node = type { ptr, %union.anon }
%union.anon = type { %struct._fence }
%struct._fence = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i8 }
%struct.succs_info = type { i16, ptr, ptr, ptr, i32, i32, i32 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.VEC_vinsn_t_base = type { i32, i32, [1 x ptr] }
%struct.fur_static_params = type { ptr, ptr, i8 }
%struct.succ_iterator = type { i8, ptr, ptr, %struct.edge_iterator, ptr, i16, i16, i32, ptr }
%struct.loop_exit = type { ptr, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.flist_tail_def = type { ptr, ptr }
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

@pipelining_p = dso_local local_unnamed_addr global i8 0, align 1
@bookkeeping_p = dso_local local_unnamed_addr global i8 0, align 1
@max_insns_to_rename = dso_local local_unnamed_addr global i32 0, align 4
@code_motion_path_driver_info = dso_local local_unnamed_addr global ptr null, align 8
@sched_emulate_haifa_p = dso_local local_unnamed_addr global i32 0, align 4
@global_level = dso_local local_unnamed_addr global i32 0, align 4
@fences = dso_local local_unnamed_addr global ptr null, align 8
@forced_ebb_heads = dso_local local_unnamed_addr global ptr @_forced_ebb_heads, align 8
@_forced_ebb_heads = internal global %struct.bitmap_head_def zeroinitializer, align 8
@blocks_to_reschedule = dso_local local_unnamed_addr global ptr null, align 8
@ignore_first = internal unnamed_addr global i1 false, align 1
@sel_global_bb_info = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"sel-sched.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@s_i_d = external local_unnamed_addr global ptr, align 8
@sched_luids = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@nop_pattern = external local_unnamed_addr global ptr, align 8
@sched_verbose = external local_unnamed_addr global i32, align 4
@sched_dump_to_dot_p = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"sel_add_to_insn_priority: insn %d, by %d (now %d+%d).\0A\00", align 1
@sched_dump = external local_unnamed_addr global ptr, align 8
@move_op_hooks = dso_local global %struct.code_motion_path_driver_info_def { ptr @move_op_on_enter, ptr @move_op_orig_expr_found, ptr @move_op_orig_expr_not_found, ptr @move_op_merge_succs, ptr @move_op_after_merge_succs, ptr @move_op_ascend, ptr @move_op_at_first_insn, i32 1, ptr @.str.5 }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"move_op\00", align 1
@current_originators = internal unnamed_addr global ptr null, align 8
@current_copies = internal unnamed_addr global ptr null, align 8
@first_emitted_uid = internal unnamed_addr global i32 0, align 4
@num_insns_scheduled = internal unnamed_addr global i32 0, align 4
@max_uid_before_move_op = internal unnamed_addr global i32 0, align 4
@stat_bookkeeping_copies = internal unnamed_addr global i32 0, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@vec_temp_moveop_nops = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"Moving \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" through %d: \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"removed\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"unchanged\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"unchanged (as RHS)\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"changed: \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"removed (cached)\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"unchanged (cached)\0A\00", align 1
@enable_schedule_as_rhs_p = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"unchanged (as RHS, cached)\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"removed (cached as RHS, but renaming is now disabled)\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"changed (cached): \00", align 1
@was_target_conflict = internal unnamed_addr global i1 false, align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"no bookkeeping required: \00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"only one pred edge: \00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"found existing block: \00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"would create bookkeeping block: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.23 = private unnamed_addr constant [38 x i8] c"Generating bookkeeping insn (%d->%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"New block is %i, split from bookkeeping block %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Pre-existing bookkeeping block is %i\0A\00", align 1
@current_loop_nest = external local_unnamed_addr global ptr, align 8
@sched_split_block = external local_unnamed_addr global ptr, align 8
@sel_region_bb_info = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [30 x i8] c"Swapping block ids %i and %i\0A\00", align 1
@block_to_bb = external local_unnamed_addr global ptr, align 8
@containing_rgn = external local_unnamed_addr global ptr, align 8
@current_nr_blocks = external local_unnamed_addr global i32, align 4
@rgn_bb_table = external local_unnamed_addr global ptr, align 8
@ebb_head = external local_unnamed_addr global ptr, align 8
@code_motion_visited_blocks = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [32 x i8] c"Swapping code labels %i and %i\0A\00", align 1
@reg_rename_this_tick = internal unnamed_addr global i32 0, align 4
@reg_rename_tick = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [33 x i8] c"Insn %d is ineligible_successor\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Insn %d has a valid av set: \00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Insn %d has a valid empty av set\0A\00", align 1
@max_ws = internal unnamed_addr global i32 0, align 4
@.str.31 = private unnamed_addr constant [54 x i8] c"Insn %d is beyond the software lookahead window size\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"Computed av set for insn %d: \00", align 1
@sched_lists_pool = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [28 x i8] c"successors of bb end (%d): \00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"real successors num: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"av_succs (%d): \00", align 1
@vec_bookkeeping_blocked_vinsns = internal global ptr null, align 8
@fur_hooks = dso_local global %struct.code_motion_path_driver_info_def { ptr @fur_on_enter, ptr @fur_orig_expr_found, ptr @fur_orig_expr_not_found, ptr @fur_merge_succs, ptr null, ptr null, ptr @fur_at_first_insn, i32 7, ptr @.str.36 }, align 8
@.str.36 = private unnamed_addr constant [15 x i8] c"find_used_regs\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"./sel-sched-ir.h\00", align 1
@flag_sel_sched_pipelining_outer_loops = external local_unnamed_addr global i32, align 4
@after_recovery = external local_unnamed_addr global ptr, align 8
@exit_insn = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [22 x i8] c"Scheduling region %d\0A\00", align 1
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
@nr_regions = external local_unnamed_addr global i32, align 4
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @compute_live(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load i1, ptr @ignore_first, align 1
  br i1 %5, label %49, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @sel_global_bb_info, align 8
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !9
  %13 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %10, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %9, %6
  %18 = tail call zeroext i8 @in_current_region_p(ptr noundef %4) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3069, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %17, %20
  %22 = load ptr, ptr @s_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %2, align 8, !tbaa !6
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #24
  %26 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #24
  %27 = getelementptr inbounds %struct._sel_insn_data, ptr %26, i64 0, i32 13
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct._sel_insn_data, ptr %26, i64 0, i32 3
  br label %33

33:                                               ; preds = %9, %31
  %34 = phi ptr [ %32, %31 ], [ %13, %9 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @get_regset_from_pool() #23
  tail call void @bitmap_copy(ptr noundef %38, ptr noundef nonnull %35) #23
  %39 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %135, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @sel_global_bb_info, align 8
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !9
  %45 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %42, i32 noundef %44) #24
  %46 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %45, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %126, label %135

49:                                               ; preds = %21, %33, %1
  store i1 false, ptr @ignore_first, align 1
  %50 = tail call zeroext i8 @in_current_region_p(ptr noundef %4) #23
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3092, ptr noundef nonnull @.str.1) #23
  br label %53

53:                                               ; preds = %49, %52
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.rtl_bb_info, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = load ptr, ptr @s_i_d, align 8
  %61 = load ptr, ptr @sched_luids, align 8
  br label %62

62:                                               ; preds = %67, %53
  %63 = phi ptr [ %0, %53 ], [ %65, %67 ]
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 2
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = icmp eq ptr %65, %59
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !6
  %70 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %61, i32 noundef %69) #24
  %71 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %60, i32 noundef %70) #24
  %72 = getelementptr inbounds %struct._sel_insn_data, ptr %71, i64 0, i32 13
  %73 = load i8, ptr %72, align 4
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %62, label %80, !llvm.loop !19

76:                                               ; preds = %62
  %77 = tail call fastcc ptr @compute_live_after_bb(ptr noundef %4) #24
  %78 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  br label %90

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %82 = tail call ptr @get_regset_from_pool() #23
  %83 = load ptr, ptr @s_i_d, align 8
  %84 = load ptr, ptr @sched_luids, align 8
  %85 = load i32, ptr %81, align 8, !tbaa !6
  %86 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %84, i32 noundef %85) #24
  %87 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %83, i32 noundef %86) #24
  %88 = getelementptr inbounds %struct._sel_insn_data, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !21
  tail call void @bitmap_copy(ptr noundef %82, ptr noundef %89) #23
  br label %90

90:                                               ; preds = %80, %76
  %91 = phi ptr [ %79, %76 ], [ %65, %80 ]
  %92 = phi ptr [ %77, %76 ], [ %82, %80 ]
  %93 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = icmp eq ptr %91, %94
  br i1 %95, label %117, label %96

96:                                               ; preds = %90, %96
  %97 = phi ptr [ %115, %96 ], [ %91, %90 ]
  tail call fastcc void @propagate_lv_set(ptr noundef %92, ptr noundef %97) #24
  %98 = load ptr, ptr @s_i_d, align 8
  %99 = load ptr, ptr @sched_luids, align 8
  %100 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !6
  %102 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %99, i32 noundef %101) #24
  %103 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %98, i32 noundef %102) #24
  %104 = getelementptr inbounds %struct._sel_insn_data, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !21
  tail call void @bitmap_copy(ptr noundef %105, ptr noundef %92) #23
  %106 = load ptr, ptr @s_i_d, align 8
  %107 = load ptr, ptr @sched_luids, align 8
  %108 = load i32, ptr %100, align 8, !tbaa !6
  %109 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %107, i32 noundef %108) #24
  %110 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %106, i32 noundef %109) #24
  %111 = getelementptr inbounds %struct._sel_insn_data, ptr %110, i64 0, i32 13
  %112 = load i8, ptr %111, align 4
  %113 = or i8 %112, 1
  store i8 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = icmp eq ptr %115, %94
  br i1 %116, label %117, label %96, !llvm.loop !26

117:                                              ; preds = %96, %90
  %118 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %3, align 8, !tbaa !6
  %122 = load ptr, ptr @sel_global_bb_info, align 8
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 9
  %124 = load i32, ptr %123, align 8, !tbaa !9
  %125 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %122, i32 noundef %124) #24
  br label %126

126:                                              ; preds = %41, %120
  %127 = phi ptr [ %125, %120 ], [ %45, %41 ]
  %128 = phi ptr [ %92, %120 ], [ %38, %41 ]
  %129 = phi ptr [ %123, %120 ], [ %43, %41 ]
  %130 = load ptr, ptr %127, align 8, !tbaa !27
  tail call void @bitmap_copy(ptr noundef %130, ptr noundef %128) #23
  %131 = load ptr, ptr @sel_global_bb_info, align 8
  %132 = load i32, ptr %129, align 8, !tbaa !9
  %133 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %131, i32 noundef %132) #24
  %134 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %133, i64 0, i32 1
  store i8 1, ptr %134, align 8, !tbaa !14
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
define internal fastcc nonnull ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_global_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @in_current_region_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !28
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
define internal fastcc ptr @compute_live_after_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = tail call ptr @get_clear_regset_from_pool() #23
  %5 = load i1, ptr @ignore_first, align 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3031, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %8) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !29
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !30
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %2) #24, !range !31
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %7, %56
  %14 = load ptr, ptr %2, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @sel_global_bb_info, align 8
  %21 = load ptr, ptr %15, align 8, !tbaa !32
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !9
  %24 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %20, i32 noundef %23) #24
  %25 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %24, i64 0, i32 1
  %26 = load i8, ptr %25, align 8, !tbaa !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3038, ptr noundef nonnull @.str.1) #23
  %29 = load ptr, ptr @sel_global_bb_info, align 8
  %30 = load ptr, ptr %15, align 8, !tbaa !32
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !9
  %33 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %29, i32 noundef %32) #24
  %34 = load ptr, ptr %33, align 8, !tbaa !27
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3039, ptr noundef nonnull @.str.1) #23
  %37 = load ptr, ptr %15, align 8, !tbaa !32
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi ptr [ %30, %28 ], [ %37, %36 ]
  %40 = tail call fastcc ptr @compute_live_after_bb(ptr noundef %39) #24
  %41 = load ptr, ptr @sel_global_bb_info, align 8
  %42 = load ptr, ptr %15, align 8, !tbaa !32
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !9
  %45 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %41, i32 noundef %44) #24
  store ptr %40, ptr %45, align 8, !tbaa !27
  %46 = load ptr, ptr @sel_global_bb_info, align 8
  %47 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %46, i32 noundef %44) #24
  %48 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %47, i64 0, i32 1
  store i8 1, ptr %48, align 8, !tbaa !14
  br label %49

49:                                               ; preds = %38, %19
  %50 = phi ptr [ %47, %38 ], [ %24, %19 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !27
  br label %56

52:                                               ; preds = %13
  %53 = load ptr, ptr %15, align 8, !tbaa !32
  %54 = tail call ptr @sel_bb_head(ptr noundef %53) #23
  %55 = tail call ptr @compute_live(ptr noundef %54) #24
  br label %56

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %51, %49 ], [ %55, %52 ]
  %58 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %4, ptr noundef %57) #23
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %59 = load i32, ptr %3, align 8
  %60 = load ptr, ptr %10, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %2) #24, !range !31
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %13, !llvm.loop !34

63:                                               ; preds = %56, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_lv_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3015, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  tail call void @df_simulate_one_insn_backwards(ptr noundef %15, ptr noundef nonnull %1, ptr noundef %0) #23
  br label %16

16:                                               ; preds = %8, %13
  ret void
}

; Function Attrs: optsize
declare ptr @get_clear_regset_from_pool() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #3 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !16
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @sel_bb_empty_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sel_bb_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 738, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !35
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !37
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 687, ptr noundef nonnull @.str.1) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  ret ptr %5
}

; Function Attrs: optsize
declare void @df_simulate_one_insn_backwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_add_to_insn_priority(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #24
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #24
  %9 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !39
  %11 = add nsw i32 %10, %1
  store i32 %11, ptr %9, align 4, !tbaa !39
  %12 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 8, !tbaa !6
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %18) #24
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !39
  %25 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %18, i32 noundef %1, i32 noundef %22, i32 noundef %24) #24
  %26 = shl nsw i32 %25, 1
  %27 = or disjoint i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  %30 = load i32, ptr %5, align 8, !tbaa !6
  %31 = load ptr, ptr @s_i_d, align 8
  %32 = load ptr, ptr @sched_luids, align 8
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %32, i32 noundef %30) #24
  %34 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %31, i32 noundef %33) #24
  %35 = getelementptr inbounds %struct._expr, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct._expr, ptr %34, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %29, i64 noundef %28, ptr noundef nonnull @.str.3, i32 noundef %30, i32 noundef %1, i32 noundef %36, i32 noundef %38) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %29) #23
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %41 = call i32 @fputs(ptr nonnull %29, ptr %40)
  br label %52

42:                                               ; preds = %14
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %44 = load i32, ptr %5, align 8, !tbaa !6
  %45 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %44) #24
  %46 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %45) #24
  %47 = getelementptr inbounds %struct._expr, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !40
  %49 = getelementptr inbounds %struct._expr, ptr %46, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !39
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.3, i32 noundef %44, i32 noundef %1, i32 noundef %48, i32 noundef %50) #24
  br label %52

52:                                               ; preds = %42, %17, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @sel_prepare_string_for_dot_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @move_op_on_enter(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i8 noundef zeroext %3) #3 {
  %5 = icmp eq i8 %3, 0
  %6 = select i1 %5, i32 1, i32 -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_orig_expr_found(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.moveop_static_params, ptr %3, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = load ptr, ptr @s_i_d, align 8
  %8 = load ptr, ptr @sched_luids, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !6
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %8, i32 noundef %10) #24
  %12 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %7, i32 noundef %11) #24
  tail call void @copy_expr_onside(ptr noundef %6, ptr noundef nonnull %12) #23
  tail call fastcc void @track_scheduled_insns_and_blocks(ptr noundef %0) #24
  %13 = tail call fastcc zeroext i8 @handle_emitting_transformations(ptr noundef %0, ptr noundef %1, ptr noundef %3) #24, !range !31
  %14 = getelementptr inbounds %struct.moveop_static_params, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = load i32, ptr %9, align 8, !tbaa !6
  %17 = icmp ne i32 %15, %16
  %18 = icmp ne i8 %13, 0
  %19 = or i1 %18, %17
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = tail call fastcc i32 @VEC_expr_history_def_base_length(ptr noundef %22) #24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, ptr %14, align 8, !tbaa !43
  br label %26

26:                                               ; preds = %4, %25, %20
  %27 = phi i8 [ 1, %25 ], [ 0, %20 ], [ 0, %4 ]
  tail call fastcc void @remove_insn_from_stream(ptr noundef nonnull %0, i8 noundef zeroext %27) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @move_op_orig_expr_not_found(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !45
  %5 = tail call zeroext i8 @lhs_of_insn_equals_to_dest_p(ptr noundef %0, ptr noundef %4) #23
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_merge_succs(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #0 {
  %6 = icmp eq i32 %2, 1
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.cmpd_local_params, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.moveop_static_params, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  store ptr %13, ptr %8, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.cmpd_local_params, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  store ptr %15, ptr %12, align 8, !tbaa !41
  br label %29

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct._expr, ptr %9, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.moveop_static_params, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  tail call void @merge_expr_data(ptr noundef nonnull %9, ptr noundef %20, ptr noundef null) #23
  %21 = load ptr, ptr %19, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct._expr, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load ptr, ptr %8, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct._expr, ptr %26, i64 0, i32 5
  store i32 %18, ptr %27, align 8, !tbaa !49
  br label %28

28:                                               ; preds = %25, %16
  tail call void @clear_expr(ptr noundef nonnull %21) #23
  br label %29

29:                                               ; preds = %11, %28, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @move_op_after_merge_succs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.cmpd_local_params, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_ascend(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = tail call fastcc i32 @moveup_expr_cached(ptr noundef %9, ptr noundef nonnull %0) #24
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6142, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %12, %7, %2
  tail call fastcc void @update_liveness_on_insn(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @move_op_at_first_insn(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.cmpd_local_params, ptr %1, i64 0, i32 5
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @sel_num_cfg_preds_gt_1(ptr noundef %0) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call fastcc void @update_data_sets(ptr noundef %0) #24
  br label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.moveop_static_params, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = load ptr, ptr %1, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.cmpd_local_params, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = tail call fastcc ptr @generate_bookkeeping_insn(ptr noundef %20, ptr noundef %21, ptr noundef %23) #24
  tail call fastcc void @update_data_sets(ptr noundef %0) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  tail call fastcc void @update_and_record_unavailable_insns(ptr noundef nonnull %24) #24
  br label %27

27:                                               ; preds = %8, %11, %3, %17, %26, %18
  %28 = load i8, ptr %4, align 8
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %0, %27 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !50
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = tail call zeroext i8 @tidy_control_flow(ptr noundef %40, i8 noundef zeroext 1) #23
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: optsize
declare void @copy_expr_onside(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @track_scheduled_insns_and_blocks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @current_originators, align 8, !tbaa !16
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %4) #23
  %6 = load ptr, ptr @current_copies, align 8, !tbaa !16
  %7 = load i32, ptr %3, align 8, !tbaa !6
  %8 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %7) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load ptr, ptr @s_i_d, align 8
  %12 = load ptr, ptr @sched_luids, align 8
  %13 = load i32, ptr %3, align 8, !tbaa !6
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %12, i32 noundef %13) #24
  %15 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %11, i32 noundef %14) #24
  %16 = getelementptr inbounds %struct._expr, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !9
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %24) #23
  br label %40

26:                                               ; preds = %10
  %27 = load i32, ptr @first_emitted_uid, align 4, !tbaa !28
  %28 = icmp slt i32 %13, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr @num_insns_scheduled, align 4, !tbaa !28
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @num_insns_scheduled, align 4, !tbaa !28
  br label %40

36:                                               ; preds = %1
  %37 = load ptr, ptr @current_copies, align 8, !tbaa !16
  %38 = load i32, ptr %3, align 8, !tbaa !6
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %37, i32 noundef %38) #23
  br label %40

40:                                               ; preds = %19, %33, %29, %26, %36
  %41 = load i32, ptr %3, align 8, !tbaa !6
  %42 = load i32, ptr @max_uid_before_move_op, align 4, !tbaa !28
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  br label %47

47:                                               ; preds = %44, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @handle_emitting_transformations(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @maybe_emit_renaming_copy(ptr noundef %0, ptr noundef %2) #24, !range !31
  %5 = tail call fastcc zeroext i8 @maybe_emit_speculative_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24, !range !31
  %6 = or i8 %5, %4
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_history_def_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !53
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_insn_from_stream(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @need_nop_to_preserve_insn_bb(ptr noundef %0) #24, !range !31
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @get_nop_from_pool(ptr noundef %0) #23
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %12, label %11

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
define internal fastcc noundef zeroext i8 @maybe_emit_renaming_copy(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = tail call ptr @expr_dest_reg(ptr noundef nonnull %4) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %12, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5835, ptr noundef nonnull @.str.1) #23
  %20 = load ptr, ptr %1, align 8, !tbaa !45
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi ptr [ %13, %15 ], [ %20, %19 ]
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef %22) #24
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef %10) #24
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %53, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !6
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %30) #24
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %31) #24
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = tail call fastcc ptr @create_insn_rtx_with_rhs(ptr noundef %33, ptr noundef %22) #24
  %35 = load ptr, ptr @s_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = load i32, ptr %29, align 8, !tbaa !6
  %38 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %37) #24
  %39 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %35, i32 noundef %38) #24
  %40 = getelementptr inbounds %struct._sel_insn_data, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !60
  %42 = tail call ptr @sel_gen_insn_from_rtx_after(ptr noundef %34, ptr noundef nonnull %39, i32 noundef %41, ptr noundef %0) #23
  %43 = load ptr, ptr @s_i_d, align 8
  %44 = load ptr, ptr @sched_luids, align 8
  %45 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !6
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %44, i32 noundef %46) #24
  %48 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %43, i32 noundef %47) #24
  %49 = getelementptr inbounds %struct._expr, ptr %48, i64 0, i32 7
  store i32 0, ptr %49, align 8, !tbaa !61
  %50 = load ptr, ptr %3, align 8, !tbaa !41
  %51 = load ptr, ptr %1, align 8, !tbaa !45
  tail call fastcc void @replace_dest_with_reg_in_expr(ptr noundef %50, ptr noundef %51) #24
  %52 = getelementptr inbounds %struct.moveop_static_params, ptr %1, i64 0, i32 3
  store i8 1, ptr %52, align 4, !tbaa !62
  br label %53

53:                                               ; preds = %21, %26, %2
  %54 = phi i8 [ 0, %2 ], [ 1, %26 ], [ 0, %21 ]
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @maybe_emit_speculative_check(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @get_spec_check_type_for_insn(ptr noundef %0, ptr noundef %1) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.moveop_static_params, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = tail call fastcc ptr @create_speculation_check(ptr noundef %8, i32 noundef %4, ptr noundef %0) #24
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  br label %20

12:                                               ; preds = %3
  %13 = load ptr, ptr @s_i_d, align 8
  %14 = load ptr, ptr @sched_luids, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %14, i32 noundef %16) #24
  %18 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %13, i32 noundef %17) #24
  %19 = getelementptr inbounds %struct._expr, ptr %18, i64 0, i32 7
  store i32 0, ptr %19, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %12, %6
  %21 = phi ptr [ %11, %6 ], [ %14, %12 ]
  %22 = phi ptr [ %10, %6 ], [ %13, %12 ]
  %23 = phi ptr [ %9, %6 ], [ %0, %12 ]
  %24 = phi i8 [ 1, %6 ], [ 0, %12 ]
  %25 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !6
  %27 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %26) #24
  %28 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %22, i32 noundef %27) #24
  %29 = getelementptr inbounds %struct._expr, ptr %28, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !61
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct._expr, ptr %28, i64 0, i32 8
  %34 = load i32, ptr %33, align 4, !tbaa !63
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5885, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %32, %36
  ret i8 %24
}

; Function Attrs: optsize
declare ptr @expr_dest_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_insn_rtx_with_rhs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call ptr @copy_rtx(ptr noundef %4) #23
  %6 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %5, ptr noundef %1) #23
  %7 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %6, ptr noundef null) #23
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @sel_gen_insn_from_rtx_after(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_dest_with_reg_in_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = tail call fastcc ptr @create_insn_rtx_with_lhs(ptr noundef %3, ptr noundef %1) #24
  %5 = tail call ptr @create_vinsn_from_insn_rtx(ptr noundef %4, i8 noundef zeroext 0) #23
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %5) #23
  %6 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 4
  store i8 %8, ptr %6, align 1
  %9 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 1, ptr %9, align 8, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_insn_rtx_from_pattern(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_insn_rtx_with_lhs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
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
define internal fastcc i32 @get_spec_check_type_for_insn(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #24
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #24
  %9 = getelementptr inbounds %struct._expr, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !67
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 34), align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = tail call i32 %13(ptr noundef nonnull %0) #23
  %17 = or i32 %16, %10
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %17, %15 ], [ %10, %2 ]
  %20 = load ptr, ptr @spec_info, align 8, !tbaa !16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.spec_info_def, ptr %20, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !80
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
define internal fastcc ptr @create_speculation_check(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 29), align 8, !tbaa !82
  %5 = tail call zeroext i8 %4(i32 noundef %1) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._expr, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %7, %3
  %18 = tail call ptr @sel_create_recovery_block(ptr noundef %2) #23
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  br label %22

22:                                               ; preds = %7, %17
  %23 = phi ptr [ %18, %17 ], [ null, %7 ]
  %24 = phi ptr [ %21, %17 ], [ null, %7 ]
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 30), align 8, !tbaa !84
  %26 = load ptr, ptr %0, align 8, !tbaa !55
  %27 = load ptr, ptr %26, align 8, !tbaa !85
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
  %36 = load i32, ptr %35, align 8, !tbaa !6
  %37 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %36) #24
  %38 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %33, i32 noundef %37) #24
  %39 = getelementptr inbounds %struct._sel_insn_data, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !60
  %41 = tail call ptr @sel_gen_insn_from_rtx_after(ptr noundef %32, ptr noundef nonnull %38, i32 noundef %40, ptr noundef %2) #23
  %42 = load ptr, ptr @s_i_d, align 8
  %43 = load ptr, ptr @sched_luids, align 8
  %44 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !6
  %46 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %45) #24
  %47 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %42, i32 noundef %46) #24
  %48 = getelementptr inbounds %struct._expr, ptr %47, i64 0, i32 7
  store i32 0, ptr %48, align 8, !tbaa !61
  %49 = load i32, ptr %44, align 8, !tbaa !6
  %50 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %49) #24
  %51 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %42, i32 noundef %50) #24
  %52 = getelementptr inbounds %struct._sel_insn_data, ptr %51, i64 0, i32 12
  store i32 %1, ptr %52, align 8, !tbaa !86
  %53 = load i32, ptr %35, align 8, !tbaa !6
  %54 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %53) #24
  %55 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %42, i32 noundef %54) #24
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = tail call i32 @sel_vinsn_cost(ptr noundef %56) #23
  %58 = load ptr, ptr @s_i_d, align 8
  %59 = load ptr, ptr @sched_luids, align 8
  %60 = load i32, ptr %44, align 8, !tbaa !6
  %61 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %59, i32 noundef %60) #24
  %62 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %58, i32 noundef %61) #24
  %63 = load ptr, ptr %62, align 8, !tbaa !59
  %64 = tail call i32 @sel_vinsn_cost(ptr noundef %63) #23
  %65 = sub i32 %64, %57
  %66 = load ptr, ptr @s_i_d, align 8
  %67 = load ptr, ptr @sched_luids, align 8
  %68 = load i32, ptr %44, align 8, !tbaa !6
  %69 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %67, i32 noundef %68) #24
  %70 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %66, i32 noundef %69) #24
  %71 = getelementptr inbounds %struct._expr, ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !40
  %73 = add i32 %65, %72
  store i32 %73, ptr %71, align 8, !tbaa !40
  %74 = icmp eq ptr %23, null
  br i1 %74, label %94, label %75

75:                                               ; preds = %31
  %76 = load ptr, ptr %0, align 8, !tbaa !55
  %77 = load ptr, ptr %76, align 8, !tbaa !85
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = tail call ptr @copy_rtx(ptr noundef %79) #23
  %81 = tail call ptr @create_insn_rtx_from_pattern(ptr noundef %80, ptr noundef null) #23
  %82 = load ptr, ptr @s_i_d, align 8
  %83 = load ptr, ptr @sched_luids, align 8
  %84 = load i32, ptr %35, align 8, !tbaa !6
  %85 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %83, i32 noundef %84) #24
  %86 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %82, i32 noundef %85) #24
  %87 = load i32, ptr %44, align 8, !tbaa !6
  %88 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %83, i32 noundef %87) #24
  %89 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %82, i32 noundef %88) #24
  %90 = getelementptr inbounds %struct._sel_insn_data, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !60
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
define internal fastcc zeroext i8 @need_nop_to_preserve_insn_bb(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call ptr @sel_bb_head(ptr noundef %3) #23
  %5 = tail call ptr @sel_bb_end(ptr noundef %3) #23
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %51, label %7

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %16, %14 ], [ %4, %1 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %8, %5
  br i1 %13, label %51, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %51, label %7, !llvm.loop !87

18:                                               ; preds = %12, %23
  %19 = phi ptr [ %25, %23 ], [ %5, %12 ]
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %8, %25
  br i1 %26, label %51, label %18, !llvm.loop !88

27:                                               ; preds = %18, %32
  %28 = phi ptr [ %30, %32 ], [ %8, %18 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, %19
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %30, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %27, label %38, !llvm.loop !89

36:                                               ; preds = %27
  %37 = icmp eq i32 %21, 9
  br i1 %37, label %51, label %38

38:                                               ; preds = %32, %36
  br label %39

39:                                               ; preds = %38, %39
  %40 = phi ptr [ %42, %39 ], [ %0, %38 ]
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %39, label %46, !llvm.loop !90

46:                                               ; preds = %39
  %47 = load ptr, ptr @fences, align 8, !tbaa !16
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
define internal fastcc void @VEC_insn_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_insn_t_heap_reserve() #24
  %2 = load ptr, ptr @vec_temp_moveop_nops, align 8, !tbaa !16
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
define internal fastcc void @VEC_insn_t_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @vec_temp_moveop_nops, align 8, !tbaa !16
  %2 = tail call fastcc i32 @VEC_insn_t_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @vec_temp_moveop_nops, align 8, !tbaa !16
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_insn_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !91
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !91
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_insn_t_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = load i32, ptr %0, align 8, !tbaa !91
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
define internal fastcc i32 @moveup_expr_cached(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %6 = icmp sgt i32 %5, 5
  br i1 %6, label %7, label %37

7:                                                ; preds = %2
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = alloca [15 x i8], align 16
  store i64 9120923168173901, ptr %11, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11) #23
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %16 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %14, %10
  call void @dump_expr(ptr noundef %0) #23
  %18 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !6
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %22) #24
  %24 = shl nsw i32 %23, 1
  %25 = or disjoint i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  %28 = load i32, ptr %21, align 8, !tbaa !6
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %27, i64 noundef %26, ptr noundef nonnull @.str.7, i32 noundef %28) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %27) #23
  %30 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %31 = call i32 @fputs(ptr nonnull %27, ptr %30)
  br label %37

32:                                               ; preds = %17
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !6
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %35) #24
  br label %37

37:                                               ; preds = %20, %32, %2
  %38 = load ptr, ptr %0, align 8, !tbaa !55
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = call ptr @sel_bb_head(ptr noundef %45) #23
  %47 = load ptr, ptr %0, align 8, !tbaa !55
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %43, %37
  %51 = call fastcc zeroext i8 @try_bitmap_cache(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #24
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %154

53:                                               ; preds = %50
  %54 = call fastcc zeroext i8 @try_transformation_cache(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #24, !range !31
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %154

56:                                               ; preds = %53
  %57 = load ptr, ptr %0, align 8, !tbaa !55
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  br label %59

59:                                               ; preds = %56, %43
  %60 = phi ptr [ %58, %56 ], [ %46, %43 ]
  %61 = phi ptr [ %57, %56 ], [ %47, %43 ]
  %62 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !94
  %64 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct.vinsn_def, ptr %61, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !28
  call void @vinsn_attach(ptr noundef nonnull %61) #23
  %68 = call fastcc i32 @moveup_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #24
  store i32 %68, ptr %3, align 4, !tbaa !28
  switch i32 %68, label %152 [
    i32 2, label %69
    i32 0, label %82
    i32 1, label %95
    i32 3, label %112
  ]

69:                                               ; preds = %59
  call fastcc void @update_bitmap_cache(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2) #24
  %70 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %71 = icmp sgt i32 %70, 5
  br i1 %71, label %72, label %153

72:                                               ; preds = %69
  %73 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = alloca [17 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %76, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, i64 9, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %76) #23
  %77 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %78 = call i32 @fputs(ptr nonnull %76, ptr %77)
  br label %153

79:                                               ; preds = %72
  %80 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %81 = call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %80)
  br label %153

82:                                               ; preds = %59
  call fastcc void @update_bitmap_cache(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #24
  %83 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %84 = icmp sgt i32 %83, 5
  br i1 %84, label %85, label %153

85:                                               ; preds = %82
  %86 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = alloca [21 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %89, ptr noundef nonnull align 1 dereferenceable(11) @.str.9, i64 11, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %89) #23
  %90 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %91 = call i32 @fputs(ptr nonnull %89, ptr %90)
  br label %153

92:                                               ; preds = %85
  %93 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %94 = call i64 @fwrite(ptr nonnull @.str.9, i64 10, i64 1, ptr %93)
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
  %100 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %101 = icmp sgt i32 %100, 5
  br i1 %101, label %102, label %153

102:                                              ; preds = %99
  %103 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = alloca [39 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %106, ptr noundef nonnull align 1 dereferenceable(20) @.str.10, i64 20, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %106) #23
  %107 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %108 = call i32 @fputs(ptr nonnull %106, ptr %107)
  br label %153

109:                                              ; preds = %102
  %110 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %111 = call i64 @fwrite(ptr nonnull @.str.10, i64 19, i64 1, ptr %110)
  br label %153

112:                                              ; preds = %59
  %113 = load ptr, ptr %0, align 8, !tbaa !55
  %114 = load ptr, ptr %113, align 8, !tbaa !85
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !6
  %117 = icmp eq i32 %116, %65
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32, ptr %62, align 8, !tbaa !94
  %120 = icmp eq i32 %119, %63
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2555, ptr noundef nonnull @.str.1) #23
  %122 = load ptr, ptr %0, align 8, !tbaa !55
  br label %123

123:                                              ; preds = %112, %118, %121
  %124 = phi ptr [ %113, %112 ], [ %113, %118 ], [ %122, %121 ]
  %125 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  %126 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !6
  %128 = load i32, ptr %4, align 4, !tbaa !28
  call void @insert_in_history_vect(ptr noundef nonnull %125, i32 noundef %127, i32 noundef %128, ptr noundef nonnull %61, ptr noundef %124, i32 noundef %63) #23
  %129 = load i32, ptr %4, align 4, !tbaa !28
  call fastcc void @update_transformation_cache(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %129, ptr noundef nonnull %61) #24
  %130 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %131 = icmp sgt i32 %130, 5
  br i1 %131, label %132, label %153

132:                                              ; preds = %123
  %133 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = alloca [19 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %136, ptr noundef nonnull align 1 dereferenceable(10) @.str.11, i64 10, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %136) #23
  %137 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %138 = call i32 @fputs(ptr nonnull %136, ptr %137)
  br label %142

139:                                              ; preds = %132
  %140 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %141 = call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %140)
  br label %142

142:                                              ; preds = %139, %135
  call void @dump_expr(ptr noundef nonnull %0) #23
  %143 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = alloca [3 x i8], align 16
  store i16 10, ptr %146, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %146) #23
  %147 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %148 = call i32 @fputs(ptr nonnull %146, ptr %147)
  br label %153

149:                                              ; preds = %142
  %150 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %151 = call i32 @fputc(i32 10, ptr %150)
  br label %153

152:                                              ; preds = %59
  unreachable

153:                                              ; preds = %123, %149, %145, %99, %109, %105, %82, %92, %88, %69, %79, %75
  call void @vinsn_detach(ptr noundef nonnull %61) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %154

154:                                              ; preds = %50, %153, %53
  %155 = load i32, ptr %3, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_liveness_on_insn(ptr noundef %0) unnamed_addr #0 {
  store i1 true, ptr @ignore_first, align 1
  %2 = tail call ptr @compute_live(ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare void @dump_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_bitmap_cache(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._sel_insn_data, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %15, i32 noundef %7) #23
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @s_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = load i32, ptr %10, align 8, !tbaa !6
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %18, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %7) #23
  %26 = icmp eq i32 %25, 0
  br i1 %17, label %52, label %27

27:                                               ; preds = %3
  %28 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %29 = icmp sgt i32 %28, 5
  br i1 %26, label %41, label %30

30:                                               ; preds = %27
  br i1 %29, label %31, label %80

31:                                               ; preds = %30
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = alloca [35 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %35, ptr noundef nonnull align 1 dereferenceable(18) @.str.13, i64 18, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #23
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %37 = call i32 @fputs(ptr nonnull %35, ptr %36)
  br label %80

38:                                               ; preds = %31
  %39 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %40 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 17, i64 1, ptr %39)
  br label %80

41:                                               ; preds = %27
  br i1 %29, label %42, label %80

42:                                               ; preds = %41
  %43 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = alloca [39 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %46, ptr noundef nonnull align 1 dereferenceable(20) @.str.14, i64 20, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %46) #23
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %48 = call i32 @fputs(ptr nonnull %46, ptr %47)
  br label %80

49:                                               ; preds = %42
  %50 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %51 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 19, i64 1, ptr %50)
  br label %80

52:                                               ; preds = %3
  br i1 %26, label %82, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %54, align 8, !tbaa !65
  %55 = load i1, ptr @enable_schedule_as_rhs_p, align 1
  %56 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %57 = icmp sgt i32 %56, 5
  br i1 %55, label %58, label %69

58:                                               ; preds = %53
  br i1 %57, label %59, label %80

59:                                               ; preds = %58
  %60 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = alloca [55 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %63, ptr noundef nonnull align 1 dereferenceable(28) @.str.16, i64 28, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %63) #23
  %64 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %65 = call i32 @fputs(ptr nonnull %63, ptr %64)
  br label %80

66:                                               ; preds = %59
  %67 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %68 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr %67)
  br label %80

69:                                               ; preds = %53
  br i1 %57, label %70, label %80

70:                                               ; preds = %69
  %71 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = alloca [109 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) %74, ptr noundef nonnull align 1 dereferenceable(55) @.str.17, i64 55, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %74) #23
  %75 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %76 = call i32 @fputs(ptr nonnull %74, ptr %75)
  br label %80

77:                                               ; preds = %70
  %78 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %79 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 54, i64 1, ptr %78)
  br label %80

80:                                               ; preds = %69, %77, %73, %58, %66, %62, %41, %49, %45, %30, %38, %34
  %81 = phi i32 [ 2, %34 ], [ 2, %38 ], [ 2, %30 ], [ 0, %45 ], [ 0, %49 ], [ 0, %41 ], [ 1, %62 ], [ 1, %66 ], [ 1, %58 ], [ 2, %73 ], [ 2, %77 ], [ 2, %69 ]
  store i32 %81, ptr %2, align 4, !tbaa !28
  br label %82

82:                                               ; preds = %80, %52
  %83 = phi i8 [ 0, %52 ], [ 1, %80 ]
  ret i8 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_transformation_cache(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr @s_i_d, align 8
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %7) #24
  %9 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %4, i32 noundef %8) #24
  %10 = getelementptr inbounds %struct._sel_insn_data, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = load ptr, ptr %0, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !98
  %15 = tail call ptr @htab_find_with_hash(ptr noundef %11, ptr noundef nonnull %0, i32 noundef %14) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %82, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 10
  %19 = load i32, ptr %6, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !99
  %22 = load ptr, ptr %15, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !94
  tail call void @insert_in_history_vect(ptr noundef nonnull %18, i32 noundef %19, i32 noundef %21, ptr noundef %22, ptr noundef %24, i32 noundef %26) #23
  %27 = load ptr, ptr %23, align 8, !tbaa !102
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @vinsn_copy(ptr noundef nonnull %27, i8 noundef zeroext 1) #23
  store ptr %37, ptr %23, align 8, !tbaa !102
  br label %38

38:                                               ; preds = %36, %32, %17
  %39 = phi ptr [ %37, %36 ], [ %27, %32 ], [ %27, %17 ]
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %39) #23
  %40 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 4
  %41 = load i8, ptr %40, align 8
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %45, align 8, !tbaa !65
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i32, ptr %20, align 4, !tbaa !99
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.transformed_insns, ptr %15, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !103
  store i32 %51, ptr %25, align 8, !tbaa !94
  %52 = load i8, ptr %40, align 8
  %53 = lshr i8 %52, 1
  %54 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %53, 1
  %57 = or i8 %56, %55
  store i8 %57, ptr %54, align 1
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %60 = icmp sgt i32 %59, 5
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = alloca [37 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %65, ptr noundef nonnull align 1 dereferenceable(19) @.str.18, i64 19, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %65) #23
  %66 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %67 = call i32 @fputs(ptr nonnull %65, ptr %66)
  br label %71

68:                                               ; preds = %61
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %70 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %69)
  br label %71

71:                                               ; preds = %68, %64
  call void @dump_expr(ptr noundef nonnull %0) #23
  %72 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = alloca [3 x i8], align 16
  store i16 10, ptr %75, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %75) #23
  %76 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %77 = call i32 @fputs(ptr nonnull %75, ptr %76)
  br label %81

78:                                               ; preds = %71
  %79 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %80 = call i32 @fputc(i32 10, ptr %79)
  br label %81

81:                                               ; preds = %74, %78, %58
  store i32 3, ptr %2, align 4, !tbaa !28
  br label %82

82:                                               ; preds = %3, %81
  %83 = phi i8 [ 1, %81 ], [ 0, %3 ]
  ret i8 %83
}

; Function Attrs: optsize
declare void @vinsn_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @moveup_expr(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !55
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = add i32 %8, -23
  %10 = icmp ult i32 %9, 2
  %11 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %6) #23
  %12 = icmp eq i8 %11, 0
  br i1 %10, label %54, label %13

13:                                               ; preds = %3
  br i1 %12, label %39, label %14

14:                                               ; preds = %13
  %15 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %1) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %178

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %6) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %178

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @bookkeeping_can_be_created_if_moved_through_p(ptr noundef %1) #23
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %178

23:                                               ; preds = %20
  %24 = tail call ptr @fallthru_bb_of_jump(ptr noundef %6) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %178, label %26

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @in_current_region_p(ptr noundef nonnull %24) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %178, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @any_uncondjump_p(ptr noundef %6) #23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %6, ptr noundef %1) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, ptr %1, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %178

39:                                               ; preds = %29, %32, %35, %13
  %40 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %178

50:                                               ; preds = %44, %39
  %51 = load i32, ptr %6, align 8
  %52 = and i32 %51, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %178

54:                                               ; preds = %3
  br i1 %12, label %56, label %55

55:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2192, ptr noundef nonnull @.str.1) #23
  br label %56

56:                                               ; preds = %55, %54, %50
  %57 = load i32, ptr %6, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = tail call fastcc zeroext i8 @moving_insn_creates_bookkeeping_block_p(ptr noundef nonnull %6, ptr noundef nonnull %1) #24, !range !31
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %178

69:                                               ; preds = %66, %60, %56
  store i1 false, ptr @was_target_conflict, align 1
  %70 = call i32 @has_dependence_p(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load ptr, ptr %0, align 8, !tbaa !55
  %74 = getelementptr inbounds %struct.vinsn_def, ptr %73, i64 0, i32 6
  %75 = load i8, ptr %74, align 8, !tbaa !104
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %178, label %77

77:                                               ; preds = %72
  %78 = call zeroext i8 @sel_insn_has_single_succ_p(ptr noundef %1, i32 noundef 7) #23
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %178

80:                                               ; preds = %77
  %81 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %1) #23
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %102, label %178

83:                                               ; preds = %69
  %84 = load i32, ptr %7, align 8, !tbaa !56
  %85 = add i32 %84, -23
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %87, label %178

87:                                               ; preds = %83
  %88 = call fastcc zeroext i8 @can_speculate_dep_p(i32 noundef %70) #24, !range !31
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %102, label %90

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
  store i32 1, ptr %2, align 4, !tbaa !28
  br label %101

101:                                              ; preds = %100, %98
  call void @sel_clear_has_dependence() #23
  br label %102

102:                                              ; preds = %80, %90, %101, %87
  %103 = phi i8 [ 0, %87 ], [ %95, %101 ], [ 0, %90 ], [ 0, %80 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !16
  %105 = load i32, ptr %104, align 4, !tbaa !28
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %178

107:                                              ; preds = %102
  %108 = getelementptr inbounds i32, ptr %104, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !28
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i1, ptr @enable_schedule_as_rhs_p, align 1
  br i1 %112, label %113, label %178

113:                                              ; preds = %111
  %114 = load ptr, ptr %0, align 8, !tbaa !55
  %115 = getelementptr inbounds %struct.vinsn_def, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !56
  %117 = icmp eq i32 %116, 23
  br i1 %117, label %118, label %178

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %119, align 8, !tbaa !65
  store i1 true, ptr @was_target_conflict, align 1
  br label %120

120:                                              ; preds = %118, %107
  %121 = getelementptr inbounds i32, ptr %104, i64 2
  %122 = load i32, ptr %121, align 4, !tbaa !28
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %162, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %7, align 8, !tbaa !56
  %126 = add i32 %125, -23
  %127 = icmp ult i32 %126, 2
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2271, ptr noundef nonnull @.str.1) #23
  %129 = load i32, ptr %121, align 4, !tbaa !28
  br label %130

130:                                              ; preds = %124, %128
  %131 = phi i32 [ %122, %124 ], [ %129, %128 ]
  %132 = call fastcc zeroext i8 @can_speculate_dep_p(i32 noundef %131) #24, !range !31
  %133 = icmp eq i8 %132, 0
  %134 = load i32, ptr %121, align 4, !tbaa !28
  br i1 %133, label %146, label %135

135:                                              ; preds = %130
  %136 = call i32 @speculate_expr(ptr noundef nonnull %0, i32 noundef %134) #23
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %138, label %178

138:                                              ; preds = %135
  store i32 0, ptr %121, align 4, !tbaa !28
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
  store i32 1, ptr %2, align 4, !tbaa !28
  br label %162

146:                                              ; preds = %130
  %147 = call fastcc zeroext i8 @can_substitute_through_p(ptr noundef %1, i32 noundef %134) #24, !range !31
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %178, label %149

149:                                              ; preds = %146
  %150 = call fastcc zeroext i8 @substitute_reg_in_expr(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 0) #24, !range !31
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %178, label %152

152:                                              ; preds = %149
  %153 = icmp eq i8 %103, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %152
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2297, ptr noundef nonnull @.str.1) #23
  br label %155

155:                                              ; preds = %152, %154
  %156 = icmp eq ptr %2, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %155
  store i32 0, ptr %2, align 4, !tbaa !28
  br label %158

158:                                              ; preds = %157, %155
  %159 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %160 = load i8, ptr %159, align 1
  %161 = or i8 %160, 2
  store i8 %161, ptr %159, align 1
  br label %162

162:                                              ; preds = %143, %145, %158, %120
  %163 = phi i8 [ %103, %120 ], [ %140, %145 ], [ %140, %143 ], [ 1, %158 ]
  %164 = load ptr, ptr %0, align 8, !tbaa !55
  %165 = getelementptr inbounds %struct.vinsn_def, ptr %164, i64 0, i32 6
  %166 = load i8, ptr %165, align 8, !tbaa !104
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = call zeroext i8 @sel_insn_has_single_succ_p(ptr noundef %1, i32 noundef 7) #23
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %1) #23
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171, %168, %162
  %175 = icmp eq i8 %163, 0
  %176 = zext i1 %110 to i32
  %177 = select i1 %175, i32 %176, i32 3
  br label %178

178:                                              ; preds = %149, %146, %135, %83, %171, %111, %113, %102, %72, %77, %80, %66, %50, %44, %17, %14, %20, %26, %23, %35, %174
  %179 = phi i32 [ %177, %174 ], [ 2, %35 ], [ 2, %23 ], [ 2, %26 ], [ 2, %20 ], [ 2, %14 ], [ 2, %17 ], [ 2, %44 ], [ 2, %50 ], [ 2, %66 ], [ 0, %80 ], [ 0, %77 ], [ 0, %72 ], [ 2, %83 ], [ 2, %102 ], [ 2, %113 ], [ 2, %111 ], [ 2, %171 ], [ 2, %135 ], [ 2, %146 ], [ 2, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i32 %179
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_bitmap_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !6
  switch i32 %2, label %62 [
    i32 2, label %8
    i32 0, label %26
    i32 1, label %44
  ]

8:                                                ; preds = %3
  %9 = load ptr, ptr @s_i_d, align 8
  %10 = load ptr, ptr @sched_luids, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %12) #24
  %14 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %9, i32 noundef %13) #24
  %15 = getelementptr inbounds %struct._sel_insn_data, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %16, i32 noundef %7) #23
  %18 = load ptr, ptr @s_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = load i32, ptr %11, align 8, !tbaa !6
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %18, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct._sel_insn_data, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %7) #23
  br label %63

26:                                               ; preds = %3
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !6
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %30) #24
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %31) #24
  %33 = getelementptr inbounds %struct._sel_insn_data, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %7) #23
  %36 = load ptr, ptr @s_i_d, align 8
  %37 = load ptr, ptr @sched_luids, align 8
  %38 = load i32, ptr %29, align 8, !tbaa !6
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %37, i32 noundef %38) #24
  %40 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %36, i32 noundef %39) #24
  %41 = getelementptr inbounds %struct._sel_insn_data, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !96
  %43 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %42, i32 noundef %7) #23
  br label %63

44:                                               ; preds = %3
  %45 = load ptr, ptr @s_i_d, align 8
  %46 = load ptr, ptr @sched_luids, align 8
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !6
  %49 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %48) #24
  %50 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %45, i32 noundef %49) #24
  %51 = getelementptr inbounds %struct._sel_insn_data, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  %53 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %52, i32 noundef %7) #23
  %54 = load ptr, ptr @s_i_d, align 8
  %55 = load ptr, ptr @sched_luids, align 8
  %56 = load i32, ptr %47, align 8, !tbaa !6
  %57 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %55, i32 noundef %56) #24
  %58 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %54, i32 noundef %57) #24
  %59 = getelementptr inbounds %struct._sel_insn_data, ptr %58, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !96
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
define internal fastcc void @update_transformation_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @xmalloc(i64 noundef 32) #23
  store ptr %3, ptr %5, align 8, !tbaa !101
  %6 = load ptr, ptr %0, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 3
  store i32 %2, ptr %8, align 4, !tbaa !99
  %9 = load i1, ptr @was_target_conflict, align 1
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 4
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -2
  %14 = or disjoint i8 %13, %10
  store i8 %14, ptr %11, align 8
  %15 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !94
  %17 = getelementptr inbounds %struct.transformed_insns, ptr %5, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = shl i8 %19, 1
  %21 = and i8 %20, 2
  %22 = and i8 %14, -3
  %23 = or disjoint i8 %21, %22
  store i8 %23, ptr %11, align 8
  tail call void @vinsn_attach(ptr noundef %3) #23
  %24 = load ptr, ptr %7, align 8, !tbaa !102
  tail call void @vinsn_attach(ptr noundef %24) #23
  %25 = load ptr, ptr @s_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !6
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %26, i32 noundef %28) #24
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %25, i32 noundef %29) #24
  %31 = getelementptr inbounds %struct._sel_insn_data, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !97
  %33 = getelementptr inbounds %struct.vinsn_def, ptr %3, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !98
  %35 = tail call ptr @htab_find_slot_with_hash(ptr noundef %32, ptr noundef nonnull %5, i32 noundef %34, i32 noundef 1) #23
  store ptr %5, ptr %35, align 8, !tbaa !16
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
define internal fastcc noundef zeroext i8 @moving_insn_creates_bookkeeping_block_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
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
  %10 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %11 = icmp sgt i32 %10, 8
  br i1 %11, label %12, label %97

12:                                               ; preds = %9
  %13 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = alloca [51 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %16, ptr noundef nonnull align 1 dereferenceable(26) @.str.19, i64 26, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %16) #23
  %17 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %18 = call i32 @fputs(ptr nonnull %16, ptr %17)
  br label %97

19:                                               ; preds = %12
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 25, i64 1, ptr %20)
  br label %97

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  %26 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %25) #24
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %30 = icmp sgt i32 %29, 8
  br i1 %30, label %31, label %97

31:                                               ; preds = %28
  %32 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = alloca [41 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %35, ptr noundef nonnull align 1 dereferenceable(21) @.str.20, i64 21, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #23
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %37 = call i32 @fputs(ptr nonnull %35, ptr %36)
  br label %97

38:                                               ; preds = %31
  %39 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %40 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr %39)
  br label %97

41:                                               ; preds = %22
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 1
  %45 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %44) #24
  store i32 0, ptr %5, align 8, !tbaa.struct !29
  %46 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %45, ptr %46, align 8, !tbaa.struct !30
  %47 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %45, ptr noundef nonnull %3) #24, !range !31
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %41
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %24) #24
  %51 = getelementptr inbounds i8, ptr %6, i64 8
  br label %52

52:                                               ; preds = %49, %79
  store i32 0, ptr %6, align 8, !tbaa.struct !29
  store ptr %50, ptr %51, align 8, !tbaa.struct !30
  %53 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %4) #24, !range !31
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 8, !tbaa !16
  br label %57

57:                                               ; preds = %55, %74
  %58 = load ptr, ptr %4, align 8, !tbaa !16
  %59 = tail call fastcc ptr @find_block_for_bookkeeping(ptr noundef %56, ptr noundef %58, i8 noundef zeroext 1) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %63 = icmp sgt i32 %62, 8
  br i1 %63, label %64, label %97

64:                                               ; preds = %61
  %65 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = alloca [45 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %68, ptr noundef nonnull align 1 dereferenceable(23) @.str.21, i64 23, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %68) #23
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %70 = call i32 @fputs(ptr nonnull %68, ptr %69)
  br label %97

71:                                               ; preds = %64
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %73 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 22, i64 1, ptr %72)
  br label %97

74:                                               ; preds = %57
  call fastcc void @ei_next(ptr noundef nonnull %6) #24
  %75 = load i32, ptr %6, align 8
  %76 = load ptr, ptr %51, align 8
  %77 = call fastcc zeroext i8 @ei_cond(i32 %75, ptr %76, ptr noundef nonnull %4) #24, !range !31
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %57, !llvm.loop !106

79:                                               ; preds = %74, %52
  call fastcc void @ei_next(ptr noundef nonnull %5) #24
  %80 = load i32, ptr %5, align 8
  %81 = load ptr, ptr %46, align 8
  %82 = call fastcc zeroext i8 @ei_cond(i32 %80, ptr %81, ptr noundef nonnull %3) #24, !range !31
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %52, !llvm.loop !107

84:                                               ; preds = %79, %41
  %85 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %86 = icmp sgt i32 %85, 8
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = alloca [65 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %91, ptr noundef nonnull align 1 dereferenceable(33) @.str.22, i64 33, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %91) #23
  %92 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %93 = call i32 @fputs(ptr nonnull %91, ptr %92)
  br label %97

94:                                               ; preds = %87
  %95 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %96 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 32, i64 1, ptr %95)
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
define internal fastcc zeroext i8 @can_speculate_dep_p(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @spec_info, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = and i32 %0, 16777215
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %2, align 8, !tbaa !108
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, %5
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = tail call i32 @ds_weak(i32 noundef %5) #23
  %13 = load ptr, ptr @spec_info, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.spec_info_def, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !109
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
define internal fastcc noundef zeroext i8 @can_substitute_through_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = and i32 %1, 100663296
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %2
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #24
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %6, i32 noundef %10) #24
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 1, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.vinsn_def, ptr %12, i64 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %24, %2, %5, %16, %28
  %30 = phi i8 [ 0, %28 ], [ 0, %16 ], [ 0, %5 ], [ 0, %2 ], [ 1, %24 ]
  ret i8 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @substitute_reg_in_expr(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.vinsn_def, ptr %4, i64 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi ptr [ %10, %8 ], [ %5, %3 ]
  %13 = icmp eq i8 %2, 0
  %14 = load ptr, ptr @s_i_d, align 8
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #24
  %19 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %14, i32 noundef %18) #24
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 2
  %22 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 1
  %23 = select i1 %13, ptr %22, ptr %21
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = load ptr, ptr %12, align 8, !tbaa !16
  %26 = tail call fastcc zeroext i8 @rtx_ok_for_substitution_p(ptr noundef %24, ptr noundef %25) #24, !range !31
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %11
  %29 = load ptr, ptr @s_i_d, align 8
  %30 = load ptr, ptr @sched_luids, align 8
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !6
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #24
  %34 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #24
  %35 = load ptr, ptr %34, align 8, !tbaa !59
  %36 = getelementptr inbounds %struct.vinsn_def, ptr %35, i64 0, i32 1, i32 1
  %37 = getelementptr inbounds %struct.vinsn_def, ptr %35, i64 0, i32 1, i32 2
  %38 = select i1 %13, ptr %37, ptr %36
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = tail call ptr @copy_rtx(ptr noundef %39) #23
  %41 = load ptr, ptr %0, align 8, !tbaa !16
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  %43 = tail call ptr @create_copy_of_insn_rtx(ptr noundef %42) #23
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  br i1 %7, label %48, label %45

45:                                               ; preds = %28
  %46 = load ptr, ptr %44, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %48

48:                                               ; preds = %28, %45
  %49 = phi ptr [ %47, %45 ], [ %44, %28 ]
  %50 = tail call i32 @validate_replace_rtx_part_nosimplify(ptr noundef %24, ptr noundef %40, ptr noundef nonnull %49, ptr noundef %43) #23
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @create_vinsn_from_insn_rtx(ptr noundef %43, i8 noundef zeroext 0) #23
  tail call void @change_vinsn_in_expr(ptr noundef nonnull %0, ptr noundef %54) #23
  %55 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !94
  %57 = and i32 %56, 16777215
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %0, align 8, !tbaa !55
  %61 = getelementptr inbounds %struct.vinsn_def, ptr %60, i64 0, i32 1, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !110
  %63 = tail call i32 @expr_dest_regno(ptr noundef nonnull %0) #23
  %64 = tail call i32 @bitmap_bit_p(ptr noundef %62, i32 noundef %63) #23
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  store i8 0, ptr %67, align 8, !tbaa !65
  br label %68

68:                                               ; preds = %11, %66, %59, %53, %48
  %69 = phi i8 [ 1, %66 ], [ 1, %59 ], [ 1, %53 ], [ 0, %48 ], [ 0, %11 ]
  ret i8 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_block_for_bookkeeping(ptr noundef readonly %0, ptr noundef readnone %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  %5 = load ptr, ptr @cfun, align 8
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  br label %7

7:                                                ; preds = %49, %3
  %8 = phi ptr [ null, %3 ], [ %34, %49 ]
  %9 = phi ptr [ %0, %3 ], [ %50, %49 ]
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  br i1 %4, label %17, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %11, %15
  br i1 %16, label %51, label %17

17:                                               ; preds = %7, %12
  %18 = load ptr, ptr %11, align 8, !tbaa !105
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
  %30 = load ptr, ptr %29, align 8, !tbaa !115
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
  %40 = tail call fastcc zeroext i8 @block_valid_for_bookkeeping_p(ptr noundef %34) #24, !range !31
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, ptr null, ptr %34
  br label %51

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  br i1 %4, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %45) #24
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %46
  %50 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %45, i32 noundef 0) #24
  br label %7, !llvm.loop !117

51:                                               ; preds = %12, %46, %31, %21, %36, %39
  %52 = phi ptr [ null, %36 ], [ %42, %39 ], [ null, %21 ], [ null, %31 ], [ null, %46 ], [ null, %12 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @block_valid_for_bookkeeping_p(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.rtl_bb_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = tail call zeroext i8 @in_current_region_p(ptr noundef %0) #23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !116
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
  %20 = load i32, ptr %19, align 8, !tbaa !6
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct._expr, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %32, label %31

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %28 = load i32, ptr %27, align 8, !tbaa !6
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
define internal fastcc zeroext i8 @rtx_ok_for_substitution_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
define internal fastcc i32 @count_occurrences_equiv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.rtx_search_arg, align 8
  store ptr %1, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.rtx_search_arg, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !120
  %6 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @count_occurrences_1, ptr noundef nonnull %4) #23
  %7 = load i32, ptr %5, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @count_occurrences_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = load ptr, ptr %1, align 8, !tbaa !118
  %5 = tail call i32 @exp_equiv_p(ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #23
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %0, align 8, !tbaa !16
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  br i1 %6, label %29, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %9, 37
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #24
  %14 = icmp ult i32 %13, 53
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = zext nneg i32 %13 to i64
  %17 = lshr i32 %8, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %16, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !6
  %22 = icmp ugt i8 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rtx_search_arg, ptr %1, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !120
  br label %44

25:                                               ; preds = %15, %12, %10
  %26 = getelementptr inbounds %struct.rtx_search_arg, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !120
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !120
  br label %44

29:                                               ; preds = %2
  %30 = icmp eq i32 %9, 39
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  %32 = load ptr, ptr %1, align 8, !tbaa !118
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef %38) #24
  %40 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #24
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_search_arg, ptr %1, i64 0, i32 1
  store i32 0, ptr %43, align 8, !tbaa !120
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
define internal fastcc ptr @generate_bookkeeping_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %1, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !9
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %12, i32 noundef %16) #24
  %18 = shl nsw i32 %17, 1
  %19 = or disjoint i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  %22 = load ptr, ptr %1, align 8, !tbaa !115
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !9
  %25 = load ptr, ptr %13, align 8, !tbaa !32
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !9
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %21, i64 noundef %20, ptr noundef nonnull @.str.23, i32 noundef %24, i32 noundef %27) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %21) #23
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %30 = call i32 @fputs(ptr nonnull %21, ptr %29)
  br label %41

31:                                               ; preds = %6
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %33 = load ptr, ptr %1, align 8, !tbaa !115
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !9
  %36 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !32
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !9
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.23, i32 noundef %35, i32 noundef %39) #24
  br label %41

41:                                               ; preds = %9, %31, %3
  %42 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = call ptr @sel_bb_head(ptr noundef %43) #23
  %45 = call fastcc ptr @find_place_for_bookkeeping(ptr noundef %1, ptr noundef %2) #24
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %41
  %48 = call fastcc i32 @find_seqno_for_bookkeeping(ptr noundef nonnull %45, ptr noundef %44) #24
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = call zeroext i8 @sel_bb_empty_p(ptr noundef %50) #23
  %52 = call fastcc ptr @emit_bookkeeping_insn(ptr noundef nonnull %45, ptr noundef %0, i32 noundef %48) #24
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  call void @exchange_data_sets(ptr noundef %56, ptr noundef %58) #23
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %62 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  br label %64

64:                                               ; preds = %41, %59
  %65 = phi ptr [ %63, %59 ], [ null, %41 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_data_sets(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @update_liveness_on_insn(ptr noundef %0) #24
  %2 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @get_av_level(ptr noundef %0) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3163, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %4, %7
  %9 = load ptr, ptr @sel_region_bb_info, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %9, i32 noundef %13) #24
  %15 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %14, i64 0, i32 2
  store i32 -1, ptr %15, align 8, !tbaa !121
  %16 = tail call fastcc ptr @compute_av_set(ptr noundef %0, i8 noundef zeroext 0) #24
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_and_record_unavailable_insns(ptr noundef %0) unnamed_addr #0 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  tail call fastcc void @update_liveness_on_insn(ptr noundef %10) #24
  br label %11

11:                                               ; preds = %8, %1
  %12 = tail call ptr @sel_bb_head(ptr noundef %0) #23
  %13 = tail call i32 @get_av_level(ptr noundef %12) #23
  %14 = load i32, ptr @global_level, align 4, !tbaa !28
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %11
  %17 = load ptr, ptr @sel_region_bb_info, align 8
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !9
  %20 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %17, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = tail call ptr @av_set_copy(ptr noundef %22) #23
  store ptr %23, ptr %3, align 8, !tbaa !16
  %24 = tail call ptr @sel_bb_head(ptr noundef %0) #23
  tail call fastcc void @update_data_sets(ptr noundef %24) #24
  call fastcc void @_list_iter_start(ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  %25 = load ptr, ptr %2, align 8, !tbaa !124
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %26, ptr noundef nonnull %4) #24, !range !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %16, %46
  %30 = load ptr, ptr @sel_region_bb_info, align 8
  %31 = load i32, ptr %18, align 8, !tbaa !9
  %32 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %30, i32 noundef %31) #24
  %33 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !123
  %35 = load ptr, ptr %4, align 8, !tbaa !16
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = call ptr @av_set_lookup(ptr noundef %34, ptr noundef %36) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct._expr, ptr %37, i64 0, i32 11
  %41 = load i8, ptr %40, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct._expr, ptr %35, i64 0, i32 11
  %43 = load i8, ptr %42, align 8, !tbaa !65
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %29
  call fastcc void @vinsn_vec_add(ptr noundef nonnull @vec_bookkeeping_blocked_vinsns, ptr noundef nonnull %35) #24
  br label %46

46:                                               ; preds = %45, %39
  call fastcc void @_list_iter_next(ptr noundef nonnull %2) #24
  %47 = load ptr, ptr %2, align 8, !tbaa !124
  %48 = load ptr, ptr %47, align 8, !tbaa !16
  %49 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %48, ptr noundef nonnull %4) #24, !range !31
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %29, !llvm.loop !126

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
define internal fastcc ptr @find_place_for_bookkeeping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @find_block_for_bookkeeping(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !17
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
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %24, label %16, !llvm.loop !127

24:                                               ; preds = %20, %13, %2
  %25 = tail call fastcc ptr @create_block_for_bookkeeping(ptr noundef %0, ptr noundef %1) #24
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.rtl_bb_info, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %95

32:                                               ; preds = %24
  %33 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !116
  %38 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %37, i32 noundef 0) #24
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !32
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !9
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !9
  %45 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %42, i32 noundef %44) #24
  %46 = shl nsw i32 %45, 1
  %47 = or disjoint i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  %50 = load ptr, ptr %36, align 8, !tbaa !116
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef 0) #24
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !9
  %56 = load i32, ptr %43, align 8, !tbaa !9
  %57 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %49, i64 noundef %48, ptr noundef nonnull @.str.24, i32 noundef %55, i32 noundef %56) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %49) #23
  %58 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %59 = call i32 @fputs(ptr nonnull %49, ptr %58)
  br label %95

60:                                               ; preds = %32
  %61 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !116
  %64 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %63, i32 noundef 0) #24
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !32
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !9
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !9
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.24, i32 noundef %68, i32 noundef %70) #24
  br label %95

72:                                               ; preds = %16, %5
  %73 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %74 = icmp sgt i32 %73, 8
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !9
  %81 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.25, i32 noundef %80) #24
  %82 = shl nsw i32 %81, 1
  %83 = or disjoint i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = alloca i8, i64 %84, align 16
  %86 = load i32, ptr %79, align 8, !tbaa !9
  %87 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %85, i64 noundef %84, ptr noundef nonnull @.str.25, i32 noundef %86) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %85) #23
  %88 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %89 = call i32 @fputs(ptr nonnull %85, ptr %88)
  br label %95

90:                                               ; preds = %75
  %91 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !9
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.25, i32 noundef %93) #24
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
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  br label %107

107:                                              ; preds = %95, %104, %101
  %108 = phi ptr [ %106, %104 ], [ %96, %101 ], [ %96, %95 ]
  ret ptr %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_seqno_for_bookkeeping(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %8
  %16 = load ptr, ptr @s_i_d, align 8
  %17 = load ptr, ptr @sched_luids, align 8
  %18 = load i32, ptr %9, align 8, !tbaa !6
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %17, i32 noundef %18) #24
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %16, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !52
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4740, ptr noundef nonnull @.str.1) #23
  %25 = load ptr, ptr @s_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = load i32, ptr %9, align 8, !tbaa !6
  br label %28

28:                                               ; preds = %15, %24
  %29 = phi i32 [ %18, %15 ], [ %27, %24 ]
  %30 = phi ptr [ %17, %15 ], [ %26, %24 ]
  %31 = phi ptr [ %16, %15 ], [ %25, %24 ]
  %32 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %29) #24
  %33 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %31, i32 noundef %32) #24
  %34 = getelementptr inbounds %struct._sel_insn_data, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !60
  br label %52

36:                                               ; preds = %2, %8
  %37 = load ptr, ptr @s_i_d, align 8
  %38 = load ptr, ptr @sched_luids, align 8
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !6
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %38, i32 noundef %40) #24
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %37, i32 noundef %41) #24
  %43 = getelementptr inbounds %struct._sel_insn_data, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !60
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %36
  %47 = tail call i32 @get_seqno_by_preds(ptr noundef nonnull %0) #23
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8, ptr @pipelining_p, align 1, !tbaa !6
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
define internal fastcc ptr @emit_bookkeeping_insn(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = tail call ptr @create_copy_of_insn_rtx(ptr noundef %5) #23
  %7 = load ptr, ptr %1, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.vinsn_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = add i32 %9, -25
  %11 = icmp ult i32 %10, -2
  %12 = zext i1 %11 to i8
  %13 = tail call ptr @create_vinsn_from_insn_rtx(ptr noundef %6, i8 noundef zeroext %12) #23
  %14 = tail call fastcc ptr @emit_insn_from_expr_after(ptr noundef nonnull %1, ptr noundef %13, i32 noundef %2, ptr noundef %0) #24
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !6
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #24
  %20 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 5
  store i32 0, ptr %21, align 8, !tbaa !52
  %22 = load ptr, ptr @current_copies, align 8, !tbaa !16
  %23 = load i32, ptr %17, align 8, !tbaa !6
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %23) #23
  ret ptr %14
}

; Function Attrs: optsize
declare void @exchange_data_sets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_block_for_bookkeeping(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.sel_global_bb_info_def, align 8
  %4 = alloca %struct.sel_region_bb_info_def, align 8
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = icmp eq ptr %6, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4548, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %9, %15
  %17 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = icmp eq ptr %18, %11
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %11) #24, !range !31
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
  %28 = load ptr, ptr @sched_split_block, align 8, !tbaa !16
  %29 = tail call ptr %28(ptr noundef %6, ptr noundef null) #23
  %30 = load ptr, ptr @sel_region_bb_info, align 8
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !9
  %33 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %30, i32 noundef %32) #24
  %34 = load ptr, ptr %33, align 8, !tbaa !133
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4560, ptr noundef nonnull @.str.1) #23
  %37 = load ptr, ptr @sel_region_bb_info, align 8
  %38 = load i32, ptr %31, align 8, !tbaa !9
  %39 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %37, i32 noundef %38) #24
  br label %40

40:                                               ; preds = %27, %36
  %41 = phi ptr [ %33, %27 ], [ %39, %36 ]
  %42 = phi ptr [ %30, %27 ], [ %37, %36 ]
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !9
  %45 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %42, i32 noundef %44) #24
  %46 = load ptr, ptr %45, align 8, !tbaa !133
  store ptr %46, ptr %41, align 8, !tbaa !133
  %47 = load ptr, ptr @sel_region_bb_info, align 8
  %48 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %47, i32 noundef %44) #24
  store ptr null, ptr %48, align 8, !tbaa !133
  %49 = load ptr, ptr %5, align 8, !tbaa !32
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4564, ptr noundef nonnull @.str.1) #23
  br label %52

52:                                               ; preds = %40, %51
  %53 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !134
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
  %62 = load ptr, ptr %61, align 8, !tbaa !32
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
  %70 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !28
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %354, label %72

72:                                               ; preds = %69
  %73 = tail call ptr @sel_bb_head(ptr noundef nonnull %29) #23
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 7
  br i1 %76, label %77, label %354

77:                                               ; preds = %72
  %78 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %29) #24, !range !31
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %354, label %80

80:                                               ; preds = %77
  %81 = tail call fastcc ptr @single_succ(ptr noundef nonnull %29) #24
  %82 = icmp eq ptr %81, null
  br i1 %82, label %354, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @cfun, align 8, !tbaa !16
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !111
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !113
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
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = icmp eq ptr %103, %91
  br i1 %104, label %105, label %97, !llvm.loop !135

105:                                              ; preds = %101, %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  %106 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %31, align 8, !tbaa !9
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !9
  %115 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %112, i32 noundef %114) #24
  %116 = shl nsw i32 %115, 1
  %117 = or disjoint i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = alloca i8, i64 %118, align 16
  %120 = load i32, ptr %31, align 8, !tbaa !9
  %121 = load i32, ptr %113, align 8, !tbaa !9
  %122 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %119, i64 noundef %118, ptr noundef nonnull @.str.26, i32 noundef %120, i32 noundef %121) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %119) #23
  %123 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %124 = call i32 @fputs(ptr nonnull %119, ptr %123)
  br label %131

125:                                              ; preds = %108
  %126 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %127 = load i32, ptr %31, align 8, !tbaa !9
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %129 = load i32, ptr %128, align 8, !tbaa !9
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.26, i32 noundef %127, i32 noundef %129) #24
  br label %131

131:                                              ; preds = %111, %125, %105
  %132 = load i32, ptr %31, align 8, !tbaa !9
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !9
  store i32 %134, ptr %31, align 8, !tbaa !9
  store i32 %132, ptr %133, align 8, !tbaa !9
  %135 = load ptr, ptr @cfun, align 8, !tbaa !16
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !111
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !136
  %140 = load i32, ptr %31, align 8, !tbaa !9
  call fastcc void @VEC_basic_block_base_replace(ptr noundef %139, i32 noundef %140, ptr noundef %29) #24
  %141 = load ptr, ptr @cfun, align 8, !tbaa !16
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !111
  %144 = getelementptr inbounds %struct.control_flow_graph, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !136
  %146 = load i32, ptr %133, align 8, !tbaa !9
  call fastcc void @VEC_basic_block_base_replace(ptr noundef %145, i32 noundef %146, ptr noundef nonnull %81) #24
  %147 = load ptr, ptr @sel_global_bb_info, align 8
  %148 = load i32, ptr %31, align 8, !tbaa !9
  %149 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %147, i32 noundef %148) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %149, i64 16, i1 false)
  %150 = load i32, ptr %133, align 8, !tbaa !9
  %151 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %147, i32 noundef %150) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, ptr noundef nonnull align 8 dereferenceable(16) %151, i64 16, i1 false)
  %152 = load ptr, ptr @sel_global_bb_info, align 8
  %153 = load i32, ptr %133, align 8, !tbaa !9
  %154 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %152, i32 noundef %153) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %155 = load ptr, ptr @sel_region_bb_info, align 8
  %156 = load i32, ptr %31, align 8, !tbaa !9
  %157 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %155, i32 noundef %156) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %157, i64 24, i1 false)
  %158 = load i32, ptr %133, align 8, !tbaa !9
  %159 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %155, i32 noundef %158) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %157, ptr noundef nonnull align 8 dereferenceable(24) %159, i64 24, i1 false)
  %160 = load ptr, ptr @sel_region_bb_info, align 8
  %161 = load i32, ptr %133, align 8, !tbaa !9
  %162 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %160, i32 noundef %161) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %162, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %163 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %164 = load i32, ptr %31, align 8, !tbaa !9
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %163, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !28
  %168 = load i32, ptr %133, align 8, !tbaa !9
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %163, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !28
  store i32 %171, ptr %166, align 4, !tbaa !28
  %172 = load i32, ptr %133, align 8, !tbaa !9
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %163, i64 %173
  store i32 %167, ptr %174, align 4, !tbaa !28
  %175 = load ptr, ptr @containing_rgn, align 8, !tbaa !16
  %176 = load i32, ptr %31, align 8, !tbaa !9
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %175, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !28
  %180 = load i32, ptr %133, align 8, !tbaa !9
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %175, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !28
  store i32 %183, ptr %178, align 4, !tbaa !28
  %184 = load i32, ptr %133, align 8, !tbaa !9
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %175, i64 %185
  store i32 %179, ptr %186, align 4, !tbaa !28
  %187 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %131
  %190 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %191 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  br label %192

192:                                              ; preds = %189, %206
  %193 = phi i64 [ 0, %189 ], [ %207, %206 ]
  %194 = getelementptr inbounds i32, ptr %191, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !28
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, ptr %190, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !28
  %199 = load i32, ptr %133, align 8, !tbaa !9
  %200 = icmp eq i32 %198, %199
  %201 = load i32, ptr %31, align 8, !tbaa !9
  br i1 %200, label %204, label %202

202:                                              ; preds = %192
  %203 = icmp eq i32 %198, %201
  br i1 %203, label %204, label %206

204:                                              ; preds = %202, %192
  %205 = phi i32 [ %201, %192 ], [ %199, %202 ]
  store i32 %205, ptr %197, align 4, !tbaa !28
  br label %206

206:                                              ; preds = %204, %202
  %207 = add nuw nsw i64 %193, 1
  %208 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %192, label %211, !llvm.loop !137

211:                                              ; preds = %206, %131
  %212 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %213 = load ptr, ptr %212, align 8, !tbaa !6
  %214 = load ptr, ptr %213, align 8, !tbaa !6
  %215 = icmp eq ptr %214, null
  br i1 %215, label %243, label %216

216:                                              ; preds = %211
  %217 = load ptr, ptr @s_i_d, align 8
  %218 = load ptr, ptr @sched_luids, align 8
  br label %219

219:                                              ; preds = %216, %239
  %220 = phi ptr [ %214, %216 ], [ %241, %239 ]
  %221 = load ptr, ptr %212, align 8, !tbaa !6
  %222 = getelementptr inbounds %struct.rtl_bb_info, ptr %221, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !17
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 2
  %225 = load ptr, ptr %224, align 8, !tbaa !6
  %226 = icmp eq ptr %220, %225
  br i1 %226, label %243, label %227

227:                                              ; preds = %219
  %228 = load i32, ptr %220, align 8
  %229 = and i32 %228, 65535
  %230 = add nsw i32 %229, -7
  %231 = icmp ult i32 %230, 4
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load i32, ptr %31, align 8, !tbaa !9
  %234 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %235 = load i32, ptr %234, align 8, !tbaa !6
  %236 = call fastcc i32 @VEC_int_base_index(ptr noundef %218, i32 noundef %235) #24
  %237 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %217, i32 noundef %236) #24
  %238 = getelementptr inbounds %struct._expr, ptr %237, i64 0, i32 6
  store i32 %233, ptr %238, align 4, !tbaa !138
  br label %239

239:                                              ; preds = %227, %232
  %240 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1, i32 0, i32 0, i64 2
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %219, !llvm.loop !139

243:                                              ; preds = %219, %239, %211
  %244 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 7
  %245 = load ptr, ptr %244, align 8, !tbaa !6
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  %247 = icmp eq ptr %246, null
  br i1 %247, label %275, label %248

248:                                              ; preds = %243
  %249 = load ptr, ptr @s_i_d, align 8
  %250 = load ptr, ptr @sched_luids, align 8
  br label %251

251:                                              ; preds = %248, %271
  %252 = phi ptr [ %246, %248 ], [ %273, %271 ]
  %253 = load ptr, ptr %244, align 8, !tbaa !6
  %254 = getelementptr inbounds %struct.rtl_bb_info, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !17
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1, i32 0, i32 0, i64 2
  %257 = load ptr, ptr %256, align 8, !tbaa !6
  %258 = icmp eq ptr %252, %257
  br i1 %258, label %275, label %259

259:                                              ; preds = %251
  %260 = load i32, ptr %252, align 8
  %261 = and i32 %260, 65535
  %262 = add nsw i32 %261, -7
  %263 = icmp ult i32 %262, 4
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load i32, ptr %133, align 8, !tbaa !9
  %266 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !6
  %268 = call fastcc i32 @VEC_int_base_index(ptr noundef %250, i32 noundef %267) #24
  %269 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %249, i32 noundef %268) #24
  %270 = getelementptr inbounds %struct._expr, ptr %269, i64 0, i32 6
  store i32 %265, ptr %270, align 4, !tbaa !138
  br label %271

271:                                              ; preds = %259, %264
  %272 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1, i32 0, i32 0, i64 2
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %251, !llvm.loop !140

275:                                              ; preds = %251, %271, %243
  %276 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  %277 = load i32, ptr %31, align 8, !tbaa !9
  %278 = call i32 @bitmap_bit_p(ptr noundef %276, i32 noundef %277) #23
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %287, label %280

280:                                              ; preds = %275
  %281 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  %282 = load i32, ptr %133, align 8, !tbaa !9
  %283 = call zeroext i8 @bitmap_set_bit(ptr noundef %281, i32 noundef %282) #23
  %284 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  %285 = load i32, ptr %31, align 8, !tbaa !9
  %286 = call zeroext i8 @bitmap_clear_bit(ptr noundef %284, i32 noundef %285) #23
  br label %287

287:                                              ; preds = %280, %275
  %288 = load ptr, ptr %212, align 8, !tbaa !6
  %289 = load ptr, ptr %288, align 8, !tbaa !83
  %290 = load i32, ptr %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 12
  br i1 %292, label %293, label %299

293:                                              ; preds = %287
  %294 = load ptr, ptr %244, align 8, !tbaa !6
  %295 = load ptr, ptr %294, align 8, !tbaa !83
  %296 = load i32, ptr %295, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 12
  br i1 %298, label %300, label %299

299:                                              ; preds = %293, %287
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4655, ptr noundef nonnull @.str.1) #23
  br label %300

300:                                              ; preds = %293, %299
  %301 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %302 = icmp sgt i32 %301, 3
  br i1 %302, label %303, label %342

303:                                              ; preds = %300
  %304 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %331, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %212, align 8, !tbaa !6
  %308 = load ptr, ptr %307, align 8, !tbaa !83
  %309 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 1, i32 1
  %310 = load i32, ptr %309, align 8, !tbaa !6
  %311 = load ptr, ptr %244, align 8, !tbaa !6
  %312 = load ptr, ptr %311, align 8, !tbaa !83
  %313 = getelementptr inbounds %struct.rtx_def, ptr %312, i64 1, i32 1
  %314 = load i32, ptr %313, align 8, !tbaa !6
  %315 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %310, i32 noundef %314) #24
  %316 = shl nsw i32 %315, 1
  %317 = or disjoint i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = alloca i8, i64 %318, align 16
  %320 = load ptr, ptr %212, align 8, !tbaa !6
  %321 = load ptr, ptr %320, align 8, !tbaa !83
  %322 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 1, i32 1
  %323 = load i32, ptr %322, align 8, !tbaa !6
  %324 = load ptr, ptr %244, align 8, !tbaa !6
  %325 = load ptr, ptr %324, align 8, !tbaa !83
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 1, i32 1
  %327 = load i32, ptr %326, align 8, !tbaa !6
  %328 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %319, i64 noundef %318, ptr noundef nonnull @.str.27, i32 noundef %323, i32 noundef %327) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %319) #23
  %329 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %330 = call i32 @fputs(ptr nonnull %319, ptr %329)
  br label %342

331:                                              ; preds = %303
  %332 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %333 = load ptr, ptr %212, align 8, !tbaa !6
  %334 = load ptr, ptr %333, align 8, !tbaa !83
  %335 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 1, i32 1
  %336 = load i32, ptr %335, align 8, !tbaa !6
  %337 = load ptr, ptr %244, align 8, !tbaa !6
  %338 = load ptr, ptr %337, align 8, !tbaa !83
  %339 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 1, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !6
  %341 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef nonnull @.str.27, i32 noundef %336, i32 noundef %340) #24
  br label %342

342:                                              ; preds = %306, %331, %300
  %343 = load ptr, ptr %212, align 8, !tbaa !6
  %344 = load ptr, ptr %343, align 8, !tbaa !83
  %345 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 1, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !6
  %347 = load ptr, ptr %244, align 8, !tbaa !6
  %348 = load ptr, ptr %347, align 8, !tbaa !83
  %349 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 1, i32 1
  %350 = load i32, ptr %349, align 8, !tbaa !6
  store i32 %350, ptr %345, align 8, !tbaa !6
  %351 = load ptr, ptr %244, align 8, !tbaa !6
  %352 = load ptr, ptr %351, align 8, !tbaa !83
  %353 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 1, i32 1
  store i32 %346, ptr %353, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  br label %354

354:                                              ; preds = %97, %72, %77, %80, %83, %90, %342, %69
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #24, !range !31
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !105
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #24
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_sel_region_bb_info_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @sel_redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sel_redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !31
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @get_seqno_by_preds(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_insn_from_expr_after(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !55
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
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
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @expr_dest_regno(ptr noundef nonnull %0) #23
  %22 = icmp ult i32 %21, 53
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  tail call void @df_set_regs_ever_live(i32 noundef %21, i8 noundef zeroext 1) #23
  %24 = load i32, ptr @reg_rename_this_tick, align 4, !tbaa !28
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @reg_rename_this_tick, align 4, !tbaa !28
  %26 = zext nneg i32 %21 to i64
  %27 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !28
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
define internal fastcc ptr @compute_av_set(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @compute_av_set_inside_bb(ptr noundef %0, ptr noundef null, i32 noundef 0, i8 noundef zeroext %1) #24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_av_set_inside_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = tail call ptr @sel_bb_end(ptr noundef %9) #23
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr null, ptr %6, align 8, !tbaa !16
  %13 = load ptr, ptr %8, align 8, !tbaa !6
  %14 = tail call fastcc zeroext i8 @is_ineligible_successor(ptr noundef %0, ptr noundef %1) #24, !range !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %4
  %17 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %18 = icmp sgt i32 %17, 5
  br i1 %18, label %19, label %304

19:                                               ; preds = %16
  %20 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 8, !tbaa !6
  %24 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %23) #24
  %25 = shl nsw i32 %24, 1
  %26 = or disjoint i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  %29 = load i32, ptr %7, align 8, !tbaa !6
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %28, i64 noundef %27, ptr noundef nonnull @.str.28, i32 noundef %29) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %28) #23
  %31 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %32 = call i32 @fputs(ptr nonnull %28, ptr %31)
  br label %304

33:                                               ; preds = %19
  %34 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %35 = load i32, ptr %7, align 8, !tbaa !6
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.28, i32 noundef %35) #24
  br label %304

37:                                               ; preds = %4
  %38 = tail call i32 @get_av_level(ptr noundef nonnull %0) #23
  %39 = load i32, ptr @global_level, align 4, !tbaa !28
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @sel_region_bb_info, align 8
  %46 = load ptr, ptr %8, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !9
  %49 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %45, i32 noundef %48) #24
  %50 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !123
  br label %52

52:                                               ; preds = %41, %44
  %53 = phi ptr [ %51, %44 ], [ null, %41 ]
  %54 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %55 = icmp sgt i32 %54, 5
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %7, align 8, !tbaa !6
  %61 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %60) #24
  %62 = shl nsw i32 %61, 1
  %63 = or disjoint i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = alloca i8, i64 %64, align 16
  %66 = load i32, ptr %7, align 8, !tbaa !6
  %67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %65, i64 noundef %64, ptr noundef nonnull @.str.29, i32 noundef %66) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %65) #23
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %69 = call i32 @fputs(ptr nonnull %65, ptr %68)
  br label %74

70:                                               ; preds = %56
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %72 = load i32, ptr %7, align 8, !tbaa !6
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.29, i32 noundef %72) #24
  br label %74

74:                                               ; preds = %70, %59
  call void @dump_av_set(ptr noundef %53) #23
  %75 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = alloca [3 x i8], align 16
  store i16 10, ptr %78, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %78) #23
  %79 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %80 = call i32 @fputs(ptr nonnull %78, ptr %79)
  br label %84

81:                                               ; preds = %74
  %82 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %83 = call i32 @fputc(i32 10, ptr %82)
  br label %84

84:                                               ; preds = %77, %81, %52
  %85 = icmp eq i8 %3, 0
  br i1 %85, label %304, label %86

86:                                               ; preds = %84
  %87 = call ptr @av_set_copy(ptr noundef %53) #23
  br label %304

88:                                               ; preds = %37
  call fastcc void @_xlist_add(ptr noundef nonnull %5, ptr noundef nonnull %0) #24
  %89 = icmp eq ptr %12, %0
  %90 = load ptr, ptr %5, align 8
  br i1 %89, label %204, label %91

91:                                               ; preds = %88, %186
  %92 = phi i32 [ %187, %186 ], [ %2, %88 ]
  %93 = phi ptr [ %189, %186 ], [ %0, %88 ]
  %94 = tail call i32 @get_av_level(ptr noundef %93) #23
  %95 = load i32, ptr @global_level, align 4, !tbaa !28
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %91
  %98 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %99 = icmp sgt i32 %98, 5
  br i1 %99, label %100, label %191

100:                                              ; preds = %97
  %101 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !6
  %106 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %105) #24
  %107 = shl nsw i32 %106, 1
  %108 = or disjoint i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = alloca i8, i64 %109, align 16
  %111 = load i32, ptr %104, align 8, !tbaa !6
  %112 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %110, i64 noundef %109, ptr noundef nonnull @.str.30, i32 noundef %111) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %110) #23
  %113 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %114 = call i32 @fputs(ptr nonnull %110, ptr %113)
  br label %191

115:                                              ; preds = %100
  %116 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %117 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !6
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.30, i32 noundef %118) #24
  br label %191

120:                                              ; preds = %91
  %121 = icmp eq ptr %93, %0
  br i1 %121, label %148, label %122

122:                                              ; preds = %120
  %123 = tail call fastcc zeroext i8 @is_ineligible_successor(ptr noundef %93, ptr noundef %90) #24, !range !31
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %148, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %127 = icmp sgt i32 %126, 5
  br i1 %127, label %128, label %191

128:                                              ; preds = %125
  %129 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !6
  %134 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %133) #24
  %135 = shl nsw i32 %134, 1
  %136 = or disjoint i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = alloca i8, i64 %137, align 16
  %139 = load i32, ptr %132, align 8, !tbaa !6
  %140 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %138, i64 noundef %137, ptr noundef nonnull @.str.28, i32 noundef %139) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %138) #23
  %141 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %142 = call i32 @fputs(ptr nonnull %138, ptr %141)
  br label %191

143:                                              ; preds = %128
  %144 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %145 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !6
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.28, i32 noundef %146) #24
  br label %191

148:                                              ; preds = %122, %120
  %149 = load i32, ptr %93, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 7
  br i1 %151, label %186, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr @max_ws, align 4, !tbaa !28
  %154 = icmp sgt i32 %92, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %152
  %156 = load i32, ptr @global_level, align 4, !tbaa !28
  %157 = load ptr, ptr @s_i_d, align 8
  %158 = load ptr, ptr @sched_luids, align 8
  %159 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !6
  %161 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %158, i32 noundef %160) #24
  %162 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %157, i32 noundef %161) #24
  %163 = getelementptr inbounds %struct._sel_insn_data, ptr %162, i64 0, i32 1
  store i32 %156, ptr %163, align 8, !tbaa !141
  %164 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %165 = icmp sgt i32 %164, 5
  br i1 %165, label %166, label %191

166:                                              ; preds = %155
  %167 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %159, align 8, !tbaa !6
  %171 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %170) #24
  %172 = shl nsw i32 %171, 1
  %173 = or disjoint i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = alloca i8, i64 %174, align 16
  %176 = load i32, ptr %159, align 8, !tbaa !6
  %177 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %175, i64 noundef %174, ptr noundef nonnull @.str.31, i32 noundef %176) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %175) #23
  %178 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %179 = call i32 @fputs(ptr nonnull %175, ptr %178)
  br label %191

180:                                              ; preds = %166
  %181 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %182 = load i32, ptr %159, align 8, !tbaa !6
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.31, i32 noundef %182) #24
  br label %191

184:                                              ; preds = %152
  %185 = add nsw i32 %92, 1
  br label %186

186:                                              ; preds = %148, %184
  %187 = phi i32 [ %92, %148 ], [ %185, %184 ]
  %188 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 2
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  %190 = icmp eq ptr %189, %12
  br i1 %190, label %204, label %91, !llvm.loop !142

191:                                              ; preds = %103, %115, %97, %131, %143, %125, %169, %180, %155
  store ptr null, ptr %6, align 8, !tbaa !16
  %192 = icmp eq ptr %93, %0
  br i1 %192, label %193, label %208

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %197 = icmp eq ptr %195, %196
  br i1 %197, label %208, label %198

198:                                              ; preds = %193
  %199 = load ptr, ptr @s_i_d, align 8
  %200 = load ptr, ptr @sched_luids, align 8
  %201 = load i32, ptr %7, align 8, !tbaa !6
  %202 = call fastcc i32 @VEC_int_base_index(ptr noundef %200, i32 noundef %201) #24
  %203 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %199, i32 noundef %202) #24
  call void @av_set_add(ptr noundef nonnull %6, ptr noundef nonnull %203) #23
  br label %208

204:                                              ; preds = %186, %88
  %205 = phi ptr [ %0, %88 ], [ %12, %186 ]
  %206 = phi i32 [ %2, %88 ], [ %187, %186 ]
  %207 = tail call fastcc ptr @compute_av_set_at_bb_end(ptr noundef %10, ptr noundef %90, i32 noundef %206) #24
  store ptr %207, ptr %6, align 8, !tbaa !16
  br label %208

208:                                              ; preds = %191, %193, %198, %204
  %209 = phi ptr [ %93, %191 ], [ %0, %193 ], [ %0, %198 ], [ %205, %204 ]
  %210 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1, i32 0, i32 0, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  %213 = load ptr, ptr %210, align 8, !tbaa !6
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %249, label %215

215:                                              ; preds = %208, %244
  %216 = phi ptr [ %246, %244 ], [ %212, %208 ]
  %217 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %218 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  %220 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %221 = icmp eq ptr %219, %220
  br i1 %221, label %244, label %222

222:                                              ; preds = %215
  call fastcc void @moveup_set_expr(ptr noundef nonnull %6, ptr noundef nonnull %216) #24
  %223 = load ptr, ptr %6, align 8, !tbaa !16
  %224 = load ptr, ptr @s_i_d, align 8
  %225 = load ptr, ptr @sched_luids, align 8
  %226 = load i32, ptr %217, align 8, !tbaa !6
  %227 = call fastcc i32 @VEC_int_base_index(ptr noundef %225, i32 noundef %226) #24
  %228 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %224, i32 noundef %227) #24
  %229 = load ptr, ptr %228, align 8, !tbaa !59
  %230 = call ptr @av_set_lookup(ptr noundef %223, ptr noundef %229) #23
  %231 = icmp eq ptr %230, null
  br i1 %231, label %238, label %232

232:                                              ; preds = %222
  call void @clear_expr(ptr noundef nonnull %230) #23
  %233 = load ptr, ptr @s_i_d, align 8
  %234 = load ptr, ptr @sched_luids, align 8
  %235 = load i32, ptr %217, align 8, !tbaa !6
  %236 = call fastcc i32 @VEC_int_base_index(ptr noundef %234, i32 noundef %235) #24
  %237 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %233, i32 noundef %236) #24
  call void @copy_expr(ptr noundef nonnull %230, ptr noundef nonnull %237) #23
  br label %244

238:                                              ; preds = %222
  %239 = load ptr, ptr @s_i_d, align 8
  %240 = load ptr, ptr @sched_luids, align 8
  %241 = load i32, ptr %217, align 8, !tbaa !6
  %242 = call fastcc i32 @VEC_int_base_index(ptr noundef %240, i32 noundef %241) #24
  %243 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %239, i32 noundef %242) #24
  call void @av_set_add(ptr noundef nonnull %6, ptr noundef nonnull %243) #23
  br label %244

244:                                              ; preds = %232, %238, %215
  %245 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  %247 = load ptr, ptr %210, align 8, !tbaa !6
  %248 = icmp eq ptr %246, %247
  br i1 %248, label %249, label %215, !llvm.loop !143

249:                                              ; preds = %244, %208
  %250 = call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %270, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr @sel_region_bb_info, align 8
  %254 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %255 = load i32, ptr %254, align 8, !tbaa !9
  %256 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %253, i32 noundef %255) #24
  %257 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %256, i64 0, i32 1
  call void @av_set_clear(ptr noundef nonnull %257) #23
  %258 = icmp eq i8 %3, 0
  %259 = load ptr, ptr %6, align 8, !tbaa !16
  br i1 %258, label %262, label %260

260:                                              ; preds = %252
  %261 = call ptr @av_set_copy(ptr noundef %259) #23
  br label %262

262:                                              ; preds = %252, %260
  %263 = phi ptr [ %261, %260 ], [ %259, %252 ]
  %264 = load ptr, ptr @sel_region_bb_info, align 8
  %265 = load i32, ptr %254, align 8, !tbaa !9
  %266 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %264, i32 noundef %265) #24
  %267 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %266, i64 0, i32 1
  store ptr %263, ptr %267, align 8, !tbaa !123
  %268 = load i32, ptr @global_level, align 4, !tbaa !28
  %269 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %266, i64 0, i32 2
  store i32 %268, ptr %269, align 8, !tbaa !121
  br label %270

270:                                              ; preds = %262, %249
  %271 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %272 = icmp sgt i32 %271, 5
  br i1 %272, label %273, label %302

273:                                              ; preds = %270
  %274 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %287, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %7, align 8, !tbaa !6
  %278 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.32, i32 noundef %277) #24
  %279 = shl nsw i32 %278, 1
  %280 = or disjoint i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = alloca i8, i64 %281, align 16
  %283 = load i32, ptr %7, align 8, !tbaa !6
  %284 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %282, i64 noundef %281, ptr noundef nonnull @.str.32, i32 noundef %283) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %282) #23
  %285 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %286 = call i32 @fputs(ptr nonnull %282, ptr %285)
  br label %291

287:                                              ; preds = %273
  %288 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %289 = load i32, ptr %7, align 8, !tbaa !6
  %290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %288, ptr noundef nonnull @.str.32, i32 noundef %289) #24
  br label %291

291:                                              ; preds = %287, %276
  %292 = load ptr, ptr %6, align 8, !tbaa !16
  call void @dump_av_set(ptr noundef %292) #23
  %293 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = alloca [3 x i8], align 16
  store i16 10, ptr %296, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %296) #23
  %297 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %298 = call i32 @fputs(ptr nonnull %296, ptr %297)
  br label %302

299:                                              ; preds = %291
  %300 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %301 = call i32 @fputc(i32 10, ptr %300)
  br label %302

302:                                              ; preds = %295, %299, %270
  call fastcc void @_list_remove(ptr noundef nonnull %5) #24
  %303 = load ptr, ptr %6, align 8, !tbaa !16
  br label %304

304:                                              ; preds = %86, %84, %16, %33, %22, %302
  %305 = phi ptr [ %303, %302 ], [ null, %22 ], [ null, %33 ], [ null, %16 ], [ %87, %86 ], [ %53, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret ptr %305
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_ineligible_successor(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %7
  %20 = phi i32 [ 2673, %7 ], [ 2675, %15 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %20, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %19, %11, %15
  %22 = icmp eq ptr %1, null
  br i1 %22, label %85, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._list_node, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load ptr, ptr @s_i_d, align 8
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load i32, ptr %3, align 8, !tbaa !6
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #24
  %30 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %26, i32 noundef %29) #24
  %31 = getelementptr inbounds %struct._sel_insn_data, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !60
  %33 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !6
  %35 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %34) #24
  %36 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %26, i32 noundef %35) #24
  %37 = getelementptr inbounds %struct._sel_insn_data, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !60
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %85, label %40

40:                                               ; preds = %23
  %41 = icmp eq i32 %32, %38
  br i1 %41, label %42, label %54

42:                                               ; preds = %40
  %43 = tail call fastcc zeroext i8 @_xlist_is_in_p(ptr noundef nonnull %1, ptr noundef nonnull %0) #24, !range !31
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load ptr, ptr @fences, align 8, !tbaa !16
  %47 = tail call ptr @flist_lookup(ptr noundef %46, ptr noundef nonnull %0) #23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load ptr, ptr @s_i_d, align 8
  %51 = load ptr, ptr @sched_luids, align 8
  %52 = load i32, ptr %3, align 8, !tbaa !6
  %53 = load i32, ptr %33, align 8, !tbaa !6
  br label %54

54:                                               ; preds = %49, %40
  %55 = phi i32 [ %53, %49 ], [ %34, %40 ]
  %56 = phi i32 [ %52, %49 ], [ %28, %40 ]
  %57 = phi ptr [ %51, %49 ], [ %27, %40 ]
  %58 = phi ptr [ %50, %49 ], [ %26, %40 ]
  %59 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %57, i32 noundef %56) #24
  %60 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %58, i32 noundef %59) #24
  %61 = getelementptr inbounds %struct._sel_insn_data, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !60
  %63 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %57, i32 noundef %55) #24
  %64 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %58, i32 noundef %63) #24
  %65 = getelementptr inbounds %struct._sel_insn_data, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !60
  %67 = icmp sgt i32 %62, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load ptr, ptr @fences, align 8, !tbaa !16
  %70 = tail call ptr @flist_lookup(ptr noundef %69, ptr noundef nonnull %0) #23
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %68, %54
  %73 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load ptr, ptr @s_i_d, align 8
  %77 = load ptr, ptr @sched_luids, align 8
  %78 = load i32, ptr %3, align 8, !tbaa !6
  %79 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %77, i32 noundef %78) #24
  %80 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %76, i32 noundef %79) #24
  %81 = getelementptr inbounds %struct._expr, ptr %80, i64 0, i32 5
  %82 = load i32, ptr %81, align 8, !tbaa !52
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %85, label %84

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
define internal fastcc void @_xlist_add(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @_list_add(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @av_set_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_av_set_at_bb_end(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._list_iterator, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct._list_iterator, align 8
  %12 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  store ptr null, ptr %7, align 8, !tbaa !16
  %13 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %0) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2720, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %3, %15
  %17 = tail call ptr @compute_succs_info(ptr noundef %0, i16 noundef signext 1) #23
  %18 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %19 = icmp sgt i32 %18, 5
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !6
  %26 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %25) #24
  %27 = shl nsw i32 %26, 1
  %28 = or disjoint i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  %31 = load i32, ptr %24, align 8, !tbaa !6
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %30, i64 noundef %29, ptr noundef nonnull @.str.33, i32 noundef %31) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %30) #23
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %34 = call i32 @fputs(ptr nonnull %30, ptr %33)
  br label %40

35:                                               ; preds = %20
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !6
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.33, i32 noundef %38) #24
  br label %40

40:                                               ; preds = %35, %23
  %41 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !144
  call void @dump_insn_vector(ptr noundef %42) #23
  %43 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = alloca [3 x i8], align 16
  store i16 10, ptr %46, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %46) #23
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %48 = call i32 @fputs(ptr nonnull %46, ptr %47)
  br label %52

49:                                               ; preds = %40
  %50 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %51 = call i32 @fputc(i32 10, ptr %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !147
  %55 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !148
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %52
  %59 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %56) #24
  %63 = shl nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = alloca i8, i64 %65, align 16
  %67 = load i32, ptr %55, align 4, !tbaa !148
  %68 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %66, i64 noundef %65, ptr noundef nonnull @.str.34, i32 noundef %67) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %66) #23
  %69 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %70 = call i32 @fputs(ptr nonnull %66, ptr %69)
  br label %74

71:                                               ; preds = %58
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.34, i32 noundef %56) #24
  br label %74

74:                                               ; preds = %52, %71, %61, %16
  call fastcc void @_xlist_add(ptr noundef nonnull %4, ptr noundef %0) #24
  %75 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !144
  %77 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %76, i32 noundef 0, ptr noundef nonnull %6) #24, !range !149
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %162, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %4, align 8, !tbaa !16
  %81 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 2
  %82 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 4
  %83 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 5
  %84 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 6
  br label %85

85:                                               ; preds = %79, %156
  %86 = phi i32 [ 0, %79 ], [ %158, %156 ]
  %87 = phi ptr [ null, %79 ], [ %157, %156 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %88 = load ptr, ptr %6, align 8, !tbaa !16
  %89 = call fastcc ptr @compute_av_set_inside_bb(ptr noundef %88, ptr noundef %80, i32 noundef %2, i8 noundef zeroext 1) #24
  store ptr %89, ptr %8, align 8, !tbaa !16
  %90 = load ptr, ptr %81, align 8, !tbaa !150
  %91 = call fastcc i32 @VEC_int_base_index(ptr noundef %90, i32 noundef %86) #24
  %92 = load i32, ptr %82, align 8, !tbaa !151
  call void @av_set_split_usefulness(ptr noundef %89, i32 noundef %91, i32 noundef %92) #23
  %93 = load i32, ptr %83, align 4, !tbaa !148
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %118

95:                                               ; preds = %85
  %96 = icmp eq i32 %86, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load ptr, ptr %8, align 8, !tbaa !16
  %99 = call ptr @av_set_copy(ptr noundef %98) #23
  store ptr %99, ptr %5, align 8, !tbaa !16
  br label %154

100:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %9, ptr noundef nonnull %5, i8 noundef zeroext 1) #24
  %101 = load ptr, ptr %9, align 8, !tbaa !124
  %102 = load ptr, ptr %101, align 8, !tbaa !16
  %103 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %102, ptr noundef nonnull %10) #24, !range !31
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %100, %112
  %106 = load ptr, ptr %8, align 8, !tbaa !16
  %107 = load ptr, ptr %10, align 8, !tbaa !16
  %108 = load ptr, ptr %107, align 8, !tbaa !55
  %109 = call zeroext i8 @av_set_is_in_p(ptr noundef %106, ptr noundef %108) #23
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  call void @av_set_iter_remove(ptr noundef nonnull %9) #23
  br label %112

112:                                              ; preds = %105, %111
  call fastcc void @_list_iter_next(ptr noundef nonnull %9) #24
  %113 = load ptr, ptr %9, align 8, !tbaa !124
  %114 = load ptr, ptr %113, align 8, !tbaa !16
  %115 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %114, ptr noundef nonnull %10) #24, !range !31
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %105, !llvm.loop !152

117:                                              ; preds = %112, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #25
  br label %118

118:                                              ; preds = %117, %85
  %119 = load i32, ptr %84, align 8, !tbaa !147
  %120 = icmp eq i32 %119, 2
  %121 = icmp eq i32 %86, 1
  %122 = and i1 %121, %120
  br i1 %122, label %123, label %154

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = load ptr, ptr @sel_global_bb_info, align 8
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 9
  %130 = load i32, ptr %129, align 8, !tbaa !9
  %131 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %128, i32 noundef %130) #24
  %132 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %131, i64 0, i32 1
  %133 = load i8, ptr %132, align 8, !tbaa !14
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %137 = load i32, ptr %136, align 8, !tbaa !9
  %138 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %128, i32 noundef %137) #24
  %139 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %138, i64 0, i32 1
  %140 = load i8, ptr %139, align 8, !tbaa !14
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135, %123
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2780, ptr noundef nonnull @.str.1) #23
  %143 = load ptr, ptr @sel_global_bb_info, align 8
  %144 = load i32, ptr %129, align 8, !tbaa !9
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !9
  %147 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %143, i32 noundef %144) #24
  %148 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %143, i32 noundef %146) #24
  br label %149

149:                                              ; preds = %135, %142
  %150 = phi ptr [ %138, %135 ], [ %148, %142 ]
  %151 = phi ptr [ %131, %135 ], [ %147, %142 ]
  %152 = load ptr, ptr %151, align 8, !tbaa !27
  %153 = load ptr, ptr %150, align 8, !tbaa !27
  call void @av_set_union_and_live(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %152, ptr noundef %153, ptr noundef %0) #23
  br label %156

154:                                              ; preds = %97, %118
  %155 = phi ptr [ %88, %97 ], [ %87, %118 ]
  call void @av_set_union_and_clear(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %0) #23
  br label %156

156:                                              ; preds = %154, %149
  %157 = phi ptr [ %155, %154 ], [ %87, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  %158 = add nuw nsw i32 %86, 1
  %159 = load ptr, ptr %75, align 8, !tbaa !144
  %160 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %159, i32 noundef %158, ptr noundef nonnull %6) #24, !range !149
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %85, !llvm.loop !153

162:                                              ; preds = %156, %74
  %163 = phi ptr [ %76, %74 ], [ %159, %156 ]
  %164 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 6
  %165 = load i32, ptr %164, align 8, !tbaa !147
  %166 = icmp sgt i32 %165, 2
  br i1 %166, label %167, label %201

167:                                              ; preds = %162
  %168 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %163, i32 noundef 0, ptr noundef nonnull %6) #24, !range !149
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %201, label %170

170:                                              ; preds = %167, %186
  %171 = phi i32 [ %195, %186 ], [ 0, %167 ]
  %172 = load ptr, ptr %6, align 8, !tbaa !16
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = load ptr, ptr @sel_global_bb_info, align 8
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 9
  %177 = load i32, ptr %176, align 8, !tbaa !9
  %178 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %175, i32 noundef %177) #24
  %179 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %178, i64 0, i32 1
  %180 = load i8, ptr %179, align 8, !tbaa !14
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %170
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2797, ptr noundef nonnull @.str.1) #23
  %183 = load i32, ptr %176, align 8, !tbaa !9
  %184 = load ptr, ptr @sel_global_bb_info, align 8
  %185 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %184, i32 noundef %183) #24
  br label %186

186:                                              ; preds = %170, %182
  %187 = phi ptr [ %178, %170 ], [ %185, %182 ]
  %188 = phi i32 [ %177, %170 ], [ %183, %182 ]
  %189 = load ptr, ptr %7, align 8, !tbaa !16
  %190 = load ptr, ptr @sel_region_bb_info, align 8
  %191 = call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %190, i32 noundef %188) #24
  %192 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !123
  %194 = load ptr, ptr %187, align 8, !tbaa !27
  call void @mark_unavailable_targets(ptr noundef %189, ptr noundef %193, ptr noundef %194) #23
  %195 = add nuw nsw i32 %171, 1
  %196 = load ptr, ptr %75, align 8, !tbaa !144
  %197 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %196, i32 noundef %195, ptr noundef nonnull %6) #24, !range !149
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %170, !llvm.loop !154

199:                                              ; preds = %186
  %200 = load i32, ptr %164, align 8, !tbaa !147
  br label %201

201:                                              ; preds = %199, %167, %162
  %202 = phi i32 [ %200, %199 ], [ %165, %167 ], [ %165, %162 ]
  %203 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 5
  %204 = load i32, ptr %203, align 4, !tbaa !148
  %205 = icmp sgt i32 %204, %202
  br i1 %205, label %206, label %228

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.succs_info, ptr %17, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !155
  %209 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %208, i32 noundef 0, ptr noundef nonnull %6) #24, !range !149
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %228, label %211

211:                                              ; preds = %206, %211
  %212 = phi i32 [ %222, %211 ], [ 0, %206 ]
  %213 = load ptr, ptr %7, align 8, !tbaa !16
  %214 = load ptr, ptr @sel_global_bb_info, align 8
  %215 = load ptr, ptr %6, align 8, !tbaa !16
  %216 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = getelementptr inbounds %struct.basic_block_def, ptr %217, i64 0, i32 9
  %219 = load i32, ptr %218, align 8, !tbaa !9
  %220 = call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %214, i32 noundef %219) #24
  %221 = load ptr, ptr %220, align 8, !tbaa !27
  call void @mark_unavailable_targets(ptr noundef %213, ptr noundef null, ptr noundef %221) #23
  %222 = add nuw nsw i32 %212, 1
  %223 = load ptr, ptr %207, align 8, !tbaa !155
  %224 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %223, i32 noundef %222, ptr noundef nonnull %6) #24, !range !149
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %211, !llvm.loop !156

226:                                              ; preds = %211
  %227 = load i32, ptr %203, align 4, !tbaa !148
  br label %228

228:                                              ; preds = %206, %226, %201
  %229 = phi i32 [ %204, %201 ], [ %227, %226 ], [ %204, %206 ]
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %252

231:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %11, ptr noundef nonnull %7, i8 noundef zeroext 0) #24
  %232 = load ptr, ptr %11, align 8, !tbaa !124
  %233 = load ptr, ptr %232, align 8, !tbaa !16
  %234 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %233, ptr noundef nonnull %12) #24, !range !31
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %251, label %236

236:                                              ; preds = %231, %246
  %237 = load ptr, ptr %5, align 8, !tbaa !16
  %238 = load ptr, ptr %12, align 8, !tbaa !16
  %239 = load ptr, ptr %238, align 8, !tbaa !55
  %240 = call zeroext i8 @av_set_is_in_p(ptr noundef %237, ptr noundef %239) #23
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct._expr, ptr %238, i64 0, i32 1
  %244 = load i32, ptr %243, align 8, !tbaa !157
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %243, align 8, !tbaa !157
  br label %246

246:                                              ; preds = %236, %242
  call fastcc void @_list_iter_next(ptr noundef nonnull %11) #24
  %247 = load ptr, ptr %11, align 8, !tbaa !124
  %248 = load ptr, ptr %247, align 8, !tbaa !16
  %249 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %248, ptr noundef nonnull %12) #24, !range !31
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %236, !llvm.loop !158

251:                                              ; preds = %246, %231
  call void @av_set_clear(ptr noundef nonnull %5) #23
  call void @av_set_substract_cond_branches(ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #25
  br label %252

252:                                              ; preds = %251, %228
  call fastcc void @_list_remove(ptr noundef nonnull %4) #24
  call void @free_succs_info(ptr noundef %17) #23
  %253 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %254 = icmp sgt i32 %253, 5
  br i1 %254, label %255, label %286

255:                                              ; preds = %252
  %256 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !6
  %261 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %260) #24
  %262 = shl nsw i32 %261, 1
  %263 = or disjoint i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = alloca i8, i64 %264, align 16
  %266 = load i32, ptr %259, align 8, !tbaa !6
  %267 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %265, i64 noundef %264, ptr noundef nonnull @.str.35, i32 noundef %266) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %265) #23
  %268 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %269 = call i32 @fputs(ptr nonnull %265, ptr %268)
  br label %275

270:                                              ; preds = %255
  %271 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %272 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !6
  %274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %271, ptr noundef nonnull @.str.35, i32 noundef %273) #24
  br label %275

275:                                              ; preds = %270, %258
  %276 = load ptr, ptr %7, align 8, !tbaa !16
  call void @dump_av_set(ptr noundef %276) #23
  %277 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = alloca [3 x i8], align 16
  store i16 10, ptr %280, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %280) #23
  %281 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %282 = call i32 @fputs(ptr nonnull %280, ptr %281)
  br label %286

283:                                              ; preds = %275
  %284 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %285 = call i32 @fputc(i32 10, ptr %284)
  br label %286

286:                                              ; preds = %279, %283, %252
  %287 = load ptr, ptr %7, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret ptr %287
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @moveup_set_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %5 = load ptr, ptr %3, align 8, !tbaa !124
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %4) #24, !range !31
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2, %16
  %10 = load ptr, ptr %4, align 8, !tbaa !16
  %11 = call fastcc i32 @moveup_expr_cached(ptr noundef %10, ptr noundef %1) #24
  switch i32 %11, label %15 [
    i32 0, label %16
    i32 1, label %16
    i32 2, label %12
    i32 3, label %13
  ]

12:                                               ; preds = %9
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %16

13:                                               ; preds = %9
  %14 = call ptr @merge_with_other_exprs(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %10) #23
  store ptr %14, ptr %4, align 8, !tbaa !16
  br label %16

15:                                               ; preds = %9
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2605, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %12, %13, %15, %9, %9
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %17 = load ptr, ptr %3, align 8, !tbaa !124
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %18, ptr noundef nonnull %4) #24, !range !31
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %9, !llvm.loop !159

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
define internal fastcc void @_list_remove(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  store ptr %3, ptr %0, align 8, !tbaa !16
  %4 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !16
  tail call void @pool_free(ptr noundef %4, ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @_xlist_is_in_p(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct._list_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !162

12:                                               ; preds = %4, %9, %2
  %13 = phi i8 [ 0, %2 ], [ 0, %9 ], [ 1, %4 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_add(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @_list_alloc() #24
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  store ptr %3, ptr %2, align 8, !tbaa !160
  store ptr %2, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @_list_alloc() unnamed_addr #0 {
  %1 = load ptr, ptr @sched_lists_pool, align 8, !tbaa !16
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
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !163
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !16
  ret i32 %14
}

; Function Attrs: optsize
declare void @av_set_split_usefulness(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_list_iter_start(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #10 {
  store ptr %1, ptr %0, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 1
  store i8 %2, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 1, !tbaa !166
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_expr(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !16
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
define internal fastcc void @_list_iter_next(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct._list_iterator, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !166
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !124
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  store ptr %7, ptr %0, align 8, !tbaa !124
  br label %9

8:                                                ; preds = %1
  store i8 0, ptr %2, align 1, !tbaa !166
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
define internal fastcc void @vinsn_vec_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !55
  tail call void @vinsn_attach(ptr noundef %3) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !55
  tail call fastcc void @VEC_vinsn_t_heap_safe_push(ptr noundef %0, ptr noundef %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vinsn_t_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_vinsn_t_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  tail call fastcc void @VEC_vinsn_t_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vinsn_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = tail call fastcc i32 @VEC_vinsn_t_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vinsn_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !167
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !167
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vinsn_t_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !169
  %6 = load i32, ptr %0, align 8, !tbaa !167
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fur_on_enter(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) #0 {
  %5 = icmp eq i8 %3, 0
  %6 = getelementptr inbounds %struct.fur_static_params, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  br i1 %5, label %21, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6162, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr %6, align 8, !tbaa !170
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %8, %9 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.fur_static_params, ptr %2, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !172
  %18 = getelementptr inbounds %struct._list_node, ptr %15, i64 0, i32 1, i32 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !6
  %20 = or i8 %19, %17
  store i8 %20, ptr %18, align 8, !tbaa !6
  br label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.cmpd_local_params, ptr %1, i64 0, i32 4
  store ptr %8, ptr %22, align 8, !tbaa !173
  br label %23

23:                                               ; preds = %21, %14
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fur_orig_expr_found(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef %3) #0 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  %8 = getelementptr inbounds %struct.fur_static_params, ptr %3, i64 0, i32 2
  br i1 %7, label %11, label %9

9:                                                ; preds = %4
  %10 = load i8, ptr %8, align 8, !tbaa !172
  br label %12

11:                                               ; preds = %4
  store i8 1, ptr %8, align 8, !tbaa !172
  br label %12

12:                                               ; preds = %9, %11
  %13 = phi i8 [ %10, %9 ], [ 1, %11 ]
  %14 = getelementptr inbounds %struct.fur_static_params, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  tail call void @def_list_add(ptr noundef %15, ptr noundef nonnull %0, i8 noundef zeroext %13) #23
  %16 = tail call ptr @get_clear_regset_from_pool() #23
  tail call fastcc void @compute_live_below_insn(ptr noundef nonnull %0, ptr noundef %16) #24
  %17 = load ptr, ptr @s_i_d, align 8
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !6
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %18, i32 noundef %20) #24
  %22 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %17, i32 noundef %21) #24
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.vinsn_def, ptr %23, i64 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !174
  %26 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %16, ptr noundef %25) #23
  %27 = load ptr, ptr @s_i_d, align 8
  %28 = load ptr, ptr @sched_luids, align 8
  %29 = load i32, ptr %19, align 8, !tbaa !6
  %30 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %29) #24
  %31 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %27, i32 noundef %30) #24
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = getelementptr inbounds %struct.vinsn_def, ptr %32, i64 0, i32 1, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = tail call zeroext i8 @bitmap_and_compl_into(ptr noundef %16, ptr noundef %34) #23
  %36 = load ptr, ptr %3, align 8, !tbaa !176
  %37 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %36, ptr noundef %16) #23
  tail call void @return_regset_to_pool(ptr noundef %16) #23
  %38 = load ptr, ptr @s_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = load i32, ptr %19, align 8, !tbaa !6
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %40) #24
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %41) #24
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  %44 = getelementptr inbounds %struct.vinsn_def, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !56
  %46 = icmp eq i32 %45, 23
  br i1 %46, label %47, label %54

47:                                               ; preds = %12
  %48 = getelementptr inbounds %struct.vinsn_def, ptr %43, i64 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6034, ptr noundef nonnull @.str.1) #23
  br label %54

54:                                               ; preds = %12, %47, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @fur_orig_expr_not_found(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  store ptr %1, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %11 [
    i16 10, label %9
    i16 7, label %59
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fur_static_params, ptr %2, i64 0, i32 2
  store i8 1, ptr %10, align 8, !tbaa !172
  br label %11

11:                                               ; preds = %3, %9
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %4, i8 noundef zeroext 0) #24
  %12 = load ptr, ptr %6, align 8, !tbaa !124
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %13, ptr noundef nonnull %5) #24, !range !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %11, %22
  %17 = load ptr, ptr %5, align 8, !tbaa !16
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %0, ptr noundef %19) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %23 = load ptr, ptr %6, align 8, !tbaa !124
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %24, ptr noundef nonnull %5) #24, !range !31
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %59, label %16, !llvm.loop !177

27:                                               ; preds = %16
  %28 = load ptr, ptr %2, align 8, !tbaa !176
  %29 = load ptr, ptr @s_i_d, align 8
  %30 = load ptr, ptr @sched_luids, align 8
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !6
  %33 = call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #24
  %34 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #24
  %35 = load ptr, ptr %34, align 8, !tbaa !59
  %36 = getelementptr inbounds %struct.vinsn_def, ptr %35, i64 0, i32 1, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !174
  %38 = call zeroext i8 @bitmap_ior_into(ptr noundef %28, ptr noundef %37) #23
  %39 = load ptr, ptr %2, align 8, !tbaa !176
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = load i32, ptr %31, align 8, !tbaa !6
  %43 = call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %42) #24
  %44 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %43) #24
  %45 = load ptr, ptr %44, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.vinsn_def, ptr %45, i64 0, i32 1, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !110
  %48 = call zeroext i8 @bitmap_ior_into(ptr noundef %39, ptr noundef %47) #23
  %49 = load ptr, ptr %2, align 8, !tbaa !176
  %50 = load ptr, ptr @s_i_d, align 8
  %51 = load ptr, ptr @sched_luids, align 8
  %52 = load i32, ptr %31, align 8, !tbaa !6
  %53 = call fastcc i32 @VEC_int_base_index(ptr noundef %51, i32 noundef %52) #24
  %54 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %50, i32 noundef %53) #24
  %55 = load ptr, ptr %54, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.vinsn_def, ptr %55, i64 0, i32 1, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !175
  %58 = call zeroext i8 @bitmap_ior_into(ptr noundef %49, ptr noundef %57) #23
  br label %59

59:                                               ; preds = %22, %11, %27, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fur_merge_succs(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = tail call ptr @compute_live(ptr noundef %1) #24
  %9 = load ptr, ptr %4, align 8, !tbaa !176
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %9, ptr noundef %8) #23
  br label %11

11:                                               ; preds = %5, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @fur_at_first_insn(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call zeroext i8 @sel_bb_head_p(ptr noundef %0) #23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @get_av_level(ptr noundef %0) #23
  %8 = load i32, ptr @global_level, align 4, !tbaa !28
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

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

; Function Attrs: optsize
declare void @def_list_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_live_below_insn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.succ_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #25
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %4, ptr noundef nonnull %3, ptr noundef %0, i32 noundef 7) #24
  %5 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0) #24
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr %3, align 8, !tbaa !16
  %9 = tail call ptr @compute_live(ptr noundef %8) #24
  %10 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %1, ptr noundef %9) #23
  call fastcc void @_succ_iter_next(ptr noundef nonnull %4) #24
  %11 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0) #24
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !178

13:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.succ_iterator) align 8 %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
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
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %14, label %13

13:                                               ; preds = %4, %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1206, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %4, %4, %4, %4, %9, %13
  %15 = trunc i32 %3 to i16
  %16 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !179
  store ptr null, ptr %1, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr %6, ptr %18, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 0, ptr %19, align 2, !tbaa !182
  %20 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 7
  store i32 -1, ptr %20, align 4, !tbaa !183
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  store ptr null, ptr %21, align 8, !tbaa !184
  %22 = load ptr, ptr @cfun, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = icmp eq ptr %6, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  store i8 0, ptr %0, align 8, !tbaa !185
  %35 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %35, align 8, !tbaa !186
  %36 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr null, ptr %36, align 8, !tbaa !187
  br label %42

37:                                               ; preds = %28, %14
  %38 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %40 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %39) #24
  store i32 0, ptr %38, align 8, !tbaa.struct !29
  %41 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3, i32 1
  store ptr %40, ptr %41, align 8, !tbaa.struct !30
  store i8 1, ptr %0, align 8, !tbaa !185
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @_succ_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = load i8, ptr %0, align 8, !tbaa !185
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
  %15 = load ptr, ptr %8, align 8, !tbaa !184
  %16 = icmp eq ptr %15, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !16
  br i1 %16, label %42, label %30

17:                                               ; preds = %3
  %18 = load ptr, ptr %1, align 8, !tbaa !16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %126

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !179
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %126, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  store ptr %27, ptr %1, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 6
  store i16 1, ptr %28, align 2, !tbaa !182
  br label %126

29:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !16
  br label %30

30:                                               ; preds = %29, %7
  br label %31

31:                                               ; preds = %30, %38
  %32 = load ptr, ptr %8, align 8, !tbaa !184
  %33 = load i32, ptr %9, align 4, !tbaa !183
  %34 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %32, i32 noundef %33, ptr noundef nonnull %4) #24, !range !149
  %35 = add nsw i32 %33, 1
  store i32 %35, ptr %9, align 4, !tbaa !183
  %36 = load ptr, ptr %4, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef nonnull %36, ptr noundef nonnull %0) #24, !range !31
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %31, label %47, !llvm.loop !188

41:                                               ; preds = %31
  tail call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %8) #24
  br label %42

42:                                               ; preds = %41, %7
  %43 = load i32, ptr %10, align 8
  %44 = load ptr, ptr %12, align 8
  %45 = tail call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %11) #24, !range !31
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %88, label %48

47:                                               ; preds = %38
  store ptr %36, ptr %11, align 8, !tbaa !189
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %94

48:                                               ; preds = %42, %83
  %49 = load ptr, ptr %11, align 8, !tbaa !189
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !32
  %52 = load i16, ptr %13, align 8, !tbaa !179
  %53 = and i16 %52, 8
  %54 = icmp ne i16 %53, 0
  %55 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %79

58:                                               ; preds = %48
  %59 = tail call zeroext i8 @in_current_region_p(ptr noundef %51) #23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %63 = load ptr, ptr %14, align 8, !tbaa !181
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !9
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %62, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !28
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %62, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !28
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %61, %58
  %76 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %51) #24
  store ptr %76, ptr %8, align 8, !tbaa !184
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 0, ptr %9, align 4, !tbaa !183
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #24
  br label %88

79:                                               ; preds = %75, %61, %48
  %80 = load ptr, ptr %11, align 8, !tbaa !189
  %81 = tail call fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %80, ptr noundef nonnull %0) #24, !range !31
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  tail call fastcc void @ei_next(ptr noundef nonnull %10) #24
  %84 = load i32, ptr %10, align 8
  %85 = load ptr, ptr %12, align 8
  %86 = tail call fastcc zeroext i8 @ei_cond(i32 %84, ptr %85, ptr noundef nonnull %11) #24, !range !31
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %48

88:                                               ; preds = %83, %79, %42, %78
  %89 = load ptr, ptr %8, align 8, !tbaa !184
  %90 = icmp eq ptr %89, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br i1 %90, label %91, label %29

91:                                               ; preds = %88
  %92 = load ptr, ptr %11, align 8, !tbaa !189
  %93 = icmp eq ptr %92, null
  br i1 %93, label %126, label %94

94:                                               ; preds = %47, %91
  %95 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !190
  %97 = getelementptr inbounds %struct.edge_def, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !32
  %99 = load ptr, ptr @cfun, align 8, !tbaa !16
  %100 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !111
  %102 = getelementptr inbounds %struct.control_flow_graph, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !113
  %104 = icmp eq ptr %98, %103
  %105 = load ptr, ptr @after_recovery, align 8
  %106 = icmp eq ptr %98, %105
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = load ptr, ptr @exit_insn, align 8, !tbaa !16
  store ptr %109, ptr %1, align 8, !tbaa !16
  br label %126

110:                                              ; preds = %94
  %111 = tail call ptr @sel_bb_head(ptr noundef %98) #23
  store ptr %111, ptr %1, align 8, !tbaa !16
  %112 = load i16, ptr %13, align 8, !tbaa !179
  %113 = icmp eq i16 %112, 1
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = tail call ptr @bb_note(ptr noundef %98) #23
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 2
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = icmp eq ptr %111, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1331, ptr noundef nonnull @.str.1) #23
  br label %120

120:                                              ; preds = %110, %114, %119
  %121 = load ptr, ptr %1, align 8, !tbaa !16
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = icmp eq ptr %123, %98
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1332, ptr noundef nonnull @.str.1) #23
  br label %126

126:                                              ; preds = %91, %108, %120, %125, %17, %20, %25
  %127 = phi i8 [ 1, %25 ], [ 0, %20 ], [ 0, %17 ], [ 1, %125 ], [ 1, %120 ], [ 1, %108 ], [ 0, %91 ]
  ret i8 %127
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @_eligible_successor_edge_p(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 8, !tbaa !179
  %5 = zext i16 %4 to i32
  %6 = load ptr, ptr %0, align 8, !tbaa !115
  %7 = tail call zeroext i8 @in_current_region_p(ptr noundef %6) #23
  %8 = icmp ne i8 %7, 0
  %9 = icmp eq i16 %4, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1363, ptr noundef nonnull @.str.1) #23
  br label %11

11:                                               ; preds = %2, %10
  br i1 %8, label %12, label %15

12:                                               ; preds = %11
  %13 = and i32 %5, 4
  %14 = icmp eq i32 %13, 0
  br label %22

15:                                               ; preds = %11
  %16 = and i32 %5, 12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1369, ptr noundef nonnull @.str.1) #23
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
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  br label %28

28:                                               ; preds = %24, %36
  %29 = phi ptr [ %41, %36 ], [ %27, %24 ]
  %30 = phi ptr [ %39, %36 ], [ %25, %24 ]
  %31 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %29) #23
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %29) #24, !range !31
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 0) #24
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !32
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
  %51 = load ptr, ptr %50, align 8, !tbaa !116
  %52 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %51) #24
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %106, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %51, i32 noundef 0) #24
  br label %24

56:                                               ; preds = %33, %36
  %57 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 2
  store ptr %30, ptr %57, align 8, !tbaa !190
  %58 = tail call zeroext i8 @in_current_region_p(ptr noundef %29) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %101, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %62 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !181
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !9
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %61, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !28
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %61, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !28
  %74 = icmp slt i32 %68, %73
  %75 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 1, ptr %75, align 2, !tbaa !182
  br i1 %74, label %76, label %83

76:                                               ; preds = %60
  %77 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %8, i1 true, i1 %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1431, ptr noundef nonnull @.str.1) #23
  br label %81

81:                                               ; preds = %76, %80
  %82 = trunc i16 %4 to i8
  br label %98

83:                                               ; preds = %60
  %84 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %0, align 8, !tbaa !115
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !191
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !191
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = trunc i16 %4 to i8
  br label %98

95:                                               ; preds = %86, %83
  store i16 2, ptr %75, align 2, !tbaa !182
  %96 = trunc i16 %4 to i8
  %97 = lshr i8 %96, 1
  br label %98

98:                                               ; preds = %95, %93, %81
  %99 = phi i8 [ %82, %81 ], [ %94, %93 ], [ %97, %95 ]
  %100 = and i8 %99, 1
  br label %106

101:                                              ; preds = %56
  %102 = getelementptr inbounds %struct.succ_iterator, ptr %1, i64 0, i32 6
  store i16 4, ptr %102, align 2, !tbaa !182
  %103 = trunc i16 %4 to i8
  %104 = lshr i8 %103, 2
  %105 = and i8 %104, 1
  br label %106

106:                                              ; preds = %49, %45, %19, %101, %98
  %107 = phi i8 [ %100, %98 ], [ %105, %101 ], [ 0, %19 ], [ 0, %45 ], [ 0, %49 ]
  ret i8 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_succ_iter_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1345, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %1, %5, %9
  %11 = load i8, ptr %0, align 8, !tbaa !185
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !189
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.succ_iterator, ptr %0, i64 0, i32 3
  tail call fastcc void @ei_next(ptr noundef nonnull %22) #24
  br label %23

23:                                               ; preds = %21, %17, %13, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !37
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !16
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_all_loop_exits(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %5 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) #24, !range !31
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1127, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %12) #24, !range !31
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %7, !llvm.loop !192

19:                                               ; preds = %7, %16, %1
  %20 = phi ptr [ %0, %1 ], [ %12, %16 ], [ %8, %7 ]
  %21 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %20) #24, !range !31
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !191
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
  br i1 %35, label %30, label %37, !llvm.loop !193

36:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1144, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %30, %36
  %38 = phi ptr [ null, %36 ], [ %31, %30 ]
  %39 = tail call fastcc ptr @get_loop_exit_edges_unique_dests(ptr noundef %38) #24
  store ptr %39, ptr %2, align 8, !tbaa !16
  %40 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %3) #24, !range !149
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %37, %72
  %43 = phi ptr [ %73, %72 ], [ %39, %37 ]
  %44 = phi i32 [ %75, %72 ], [ 0, %37 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !16
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !32
  %48 = tail call zeroext i8 @in_current_region_p(ptr noundef %47) #23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load ptr, ptr %46, align 8, !tbaa !32
  %52 = tail call fastcc zeroext i8 @inner_loop_header_p(ptr noundef %51) #24, !range !31
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %50, %42
  %55 = load ptr, ptr %46, align 8, !tbaa !32
  %56 = tail call fastcc ptr @get_all_loop_exits(ptr noundef %55) #24
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %59 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %56, i32 noundef 0, ptr noundef nonnull %4) #24, !range !149
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58, %61
  %62 = phi i32 [ %64, %61 ], [ 0, %58 ]
  %63 = load ptr, ptr %4, align 8, !tbaa !16
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef %63) #24
  %64 = add nuw nsw i32 %62, 1
  %65 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef nonnull %56, i32 noundef %64, ptr noundef nonnull %4) #24, !range !149
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %61, !llvm.loop !194

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
  %76 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %73, i32 noundef %75, ptr noundef nonnull %3) #24, !range !149
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %42, !llvm.loop !195

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
define internal fastcc zeroext i8 @sel_bb_empty_or_nop_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @sel_bb_head(ptr noundef %0) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load ptr, ptr @cfun, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %20, label %16

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
define internal fastcc noundef zeroext i8 @inner_loop_header_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !191
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.loop, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !132
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %2, ptr noundef nonnull %0) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %13) #24
  %24 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %25 = tail call fastcc i32 @loop_depth(ptr noundef %24) #24
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1052, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %15, %19, %27, %22, %11, %4, %1
  %29 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %11 ], [ 1, %22 ], [ 1, %27 ], [ 0, %19 ], [ 0, %15 ]
  ret i8 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !196
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
define internal fastcc ptr @get_loop_exit_edges_unique_dests(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store ptr null, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = load ptr, ptr @cfun, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !197
  %15 = load i32, ptr %14, align 8, !tbaa !198
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.37, i32 noundef 1067, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %12, %18
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  %22 = getelementptr inbounds %struct.loop_exit, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = load ptr, ptr %23, align 8, !tbaa !203
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %19, %46
  %27 = phi ptr [ %49, %46 ], [ %24, %19 ]
  %28 = phi ptr [ %48, %46 ], [ %23, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %29 = load ptr, ptr %2, align 8
  %30 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %3) #24, !range !149
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !32
  br label %39

35:                                               ; preds = %39
  %36 = add nuw nsw i32 %40, 1
  %37 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %29, i32 noundef %36, ptr noundef nonnull %3) #24, !range !149
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39, !llvm.loop !204

39:                                               ; preds = %32, %35
  %40 = phi i32 [ 0, %32 ], [ %36, %35 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !16
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = icmp eq ptr %43, %34
  br i1 %44, label %46, label %35

45:                                               ; preds = %35, %26
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %27) #24
  br label %46

46:                                               ; preds = %39, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %47 = getelementptr inbounds %struct.loop_exit, ptr %28, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !201
  %49 = load ptr, ptr %48, align 8, !tbaa !203
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %26, !llvm.loop !205

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !tbaa !16
  br label %53

53:                                               ; preds = %51, %19
  %54 = phi ptr [ %52, %51 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !37
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !37
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !206
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !37
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !37
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !208
  %6 = load i32, ptr %0, align 8, !tbaa !37
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sel_sched_region(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @sel_region_init(i32 noundef %0) #24, !range !31
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.38, i32 noundef %0) #24
  %12 = shl nsw i32 %11, 1
  %13 = or disjoint i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %15, i64 noundef %14, ptr noundef nonnull @.str.38, i32 noundef %0) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %15) #23
  %17 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %18 = call i32 @fputs(ptr nonnull %15, ptr %17)
  br label %22

19:                                               ; preds = %7
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.38, i32 noundef %0) #24
  br label %22

22:                                               ; preds = %10, %19, %4
  %23 = call zeroext i8 @sched_is_disabled_for_current_region_p() #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = call zeroext i8 @dbg_cnt(i32 noundef 32) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr @pipelining_p, align 1, !tbaa !6
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
define internal fastcc noundef zeroext i8 @sel_region_init(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  tail call void @rgn_setup_region(i32 noundef %0) #23
  %3 = tail call fastcc zeroext i8 @current_region_empty_p() #24, !range !31
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %85

5:                                                ; preds = %1
  %6 = load i32, ptr @flag_sel_sched_pipelining, align 4, !tbaa !28
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @setup_current_loop_nest(i32 noundef %0) #24
  br label %9

9:                                                ; preds = %8, %5
  tail call fastcc void @sel_setup_region_sched_flags() #24
  %10 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %11 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %10) #24
  store ptr %11, ptr %2, align 8, !tbaa !16
  %12 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %9, %14
  %15 = phi i64 [ %29, %14 ], [ 0, %9 ]
  %16 = load ptr, ptr @cfun, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %22 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %23 = getelementptr inbounds i32, ptr %22, i64 %15
  %24 = load i32, ptr %23, align 4, !tbaa !28
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %21, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !28
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %27) #24
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %11, ptr noundef %28) #24
  %29 = add nuw nsw i64 %15, 1
  %30 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %14, label %33, !llvm.loop !209

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
  store ptr %34, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %35 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %71, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @cfun, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !111
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !136
  %43 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %44 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %45 = load i32, ptr %44, align 4, !tbaa !28
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %43, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !28
  %49 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %48) #24
  %50 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %49) #23
  %51 = icmp ne i8 %50, 0
  %52 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %53 = select i1 %51, i32 2, i32 1
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %37
  %56 = load ptr, ptr @cfun, align 8, !tbaa !16
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !111
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !136
  %61 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %62 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %63 = zext i1 %51 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !28
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %61, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !28
  %69 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %60, i32 noundef %68) #24
  %70 = tail call ptr @sel_bb_head(ptr noundef %69) #23
  tail call fastcc void @update_liveness_on_insn(ptr noundef %70) #24
  br label %71

71:                                               ; preds = %37, %55, %33
  tail call void @sel_register_cfg_hooks() #23
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !210
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %76 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  tail call void %72(ptr noundef %75, i32 noundef %76, i32 noundef -1) #23
  br label %77

77:                                               ; preds = %74, %71
  %78 = tail call i32 @get_max_uid() #23
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr @first_emitted_uid, align 4, !tbaa !28
  store i8 0, ptr @preheader_removed, align 1, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @reg_rename_tick, i8 0, i64 212, i1 false)
  store i32 0, ptr @reg_rename_this_tick, align 4, !tbaa !28
  %80 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !16
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %80) #24
  %81 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !16
  tail call void @bitmap_clear(ptr noundef %81) #23
  tail call void @setup_nop_vinsn() #23
  %82 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %82, ptr @current_copies, align 8, !tbaa !16
  %83 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %83, ptr @current_originators, align 8, !tbaa !16
  %84 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %84, ptr @code_motion_visited_blocks, align 8, !tbaa !16
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
define internal fastcc void @sel_sched_region_1() unnamed_addr #0 {
  %1 = alloca %struct.flist_tail_def, align 8
  %2 = load i32, ptr @sched_max_luid, align 4, !tbaa !28
  %3 = add nsw i32 %2, -1
  tail call void @purge_empty_blocks() #23
  %4 = tail call fastcc i32 @init_seqno(i32 noundef %3, ptr noundef null, ptr noundef null) #24
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7444, ptr noundef nonnull @.str.1) #23
  br label %7

7:                                                ; preds = %0, %6
  store ptr null, ptr @fences, align 8, !tbaa !16
  %8 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @cfun, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !136
  %15 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %16 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !28
  %21 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %14, i32 noundef %20) #24
  br i1 %9, label %27, label %22

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  br label %29

27:                                               ; preds = %7
  %28 = tail call ptr @bb_note(ptr noundef %21) #23
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %26, %22 ]
  tail call void @init_fences(ptr noundef %30) #23
  store i32 1, ptr @global_level, align 4, !tbaa !28
  tail call fastcc void @sel_sched_region_2(i32 noundef %4) #24
  %31 = load ptr, ptr @fences, align 8, !tbaa !16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7457, ptr noundef nonnull @.str.1) #23
  br label %34

34:                                               ; preds = %29, %33
  %35 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %173, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #25
  store i8 0, ptr @pipelining_p, align 1, !tbaa !6
  %38 = load i32, ptr @max_ws, align 4, !tbaa !28
  %39 = load i32, ptr @issue_rate, align 4, !tbaa !28
  %40 = mul nsw i32 %39, 3
  %41 = sdiv i32 %40, 2
  %42 = tail call i32 @llvm.smin.i32(i32 %38, i32 %41)
  store i32 %42, ptr @max_ws, align 4, !tbaa !28
  store i8 0, ptr @bookkeeping_p, align 1, !tbaa !6
  store i1 false, ptr @enable_schedule_as_rhs_p, align 1
  %43 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %47, label %172

45:                                               ; preds = %119
  %46 = icmp sgt i32 %121, 0
  br i1 %46, label %126, label %172

47:                                               ; preds = %37, %124
  %48 = phi i64 [ %125, %124 ], [ 0, %37 ]
  %49 = load ptr, ptr @cfun, align 8, !tbaa !16
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !111
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !136
  %54 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %55 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %56 = getelementptr inbounds i32, ptr %55, i64 %48
  %57 = load i32, ptr %56, align 4, !tbaa !28
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %54, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !28
  %61 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %53, i32 noundef %60) #24
  %62 = call zeroext i8 @sel_bb_empty_p(ptr noundef %61) #23
  %63 = icmp eq i8 %62, 0
  %64 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !9
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
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !17
  %77 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %76) #23
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %119, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %73, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.rtl_bb_info, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !17
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 9
  br i1 %85, label %86, label %119

86:                                               ; preds = %79
  %87 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !116
  %90 = call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 0) #24
  %91 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !134
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %86
  %96 = call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 1) #24
  br label %97

97:                                               ; preds = %86, %95
  %98 = phi ptr [ %96, %95 ], [ %90, %86 ]
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !32
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !9
  %103 = call zeroext i8 @bitmap_set_bit(ptr noundef %87, i32 noundef %102) #23
  br label %119

104:                                              ; preds = %69
  %105 = load ptr, ptr @s_i_d, align 8
  %106 = load ptr, ptr @sched_luids, align 8
  %107 = call ptr @sel_bb_head(ptr noundef nonnull %61) #23
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !6
  %110 = call fastcc i32 @VEC_int_base_index(ptr noundef %106, i32 noundef %109) #24
  %111 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %105, i32 noundef %110) #24
  %112 = getelementptr inbounds %struct._expr, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !52
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %117 = load i32, ptr %65, align 8, !tbaa !9
  %118 = call zeroext i8 @bitmap_set_bit(ptr noundef %116, i32 noundef %117) #23
  br label %119

119:                                              ; preds = %97, %79, %72, %115, %104, %67
  %120 = add nuw nsw i64 %48, 1
  %121 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %124, label %45

124:                                              ; preds = %119, %168
  %125 = phi i64 [ %120, %119 ], [ 0, %168 ]
  br label %47, !llvm.loop !211

126:                                              ; preds = %45, %163
  %127 = phi i64 [ %164, %163 ], [ 0, %45 ]
  %128 = load ptr, ptr @cfun, align 8, !tbaa !16
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !111
  %131 = getelementptr inbounds %struct.control_flow_graph, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !136
  %133 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %134 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %135 = getelementptr inbounds i32, ptr %134, i64 %127
  %136 = load i32, ptr %135, align 4, !tbaa !28
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %133, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !28
  %140 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %132, i32 noundef %139) #24
  %141 = call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %140) #23
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %126
  call void @clear_outdated_rtx_info(ptr noundef %140) #23
  br label %163

144:                                              ; preds = %126
  %145 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %140, i64 0, i32 9
  %147 = load i32, ptr %146, align 8, !tbaa !9
  %148 = call i32 @bitmap_bit_p(ptr noundef %145, i32 noundef %147) #23
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %140, i64 0, i32 9
  call void @flist_tail_init(ptr noundef nonnull %1) #23
  %152 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %153 = call fastcc i32 @init_seqno(i32 noundef 0, ptr noundef %152, ptr noundef nonnull %140) #24
  %154 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !16
  %155 = load i32, ptr %151, align 8, !tbaa !9
  %156 = call zeroext i8 @bitmap_set_bit(ptr noundef %154, i32 noundef %155) #23
  %157 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  %158 = load i32, ptr %151, align 8, !tbaa !9
  %159 = call zeroext i8 @bitmap_clear_bit(ptr noundef %157, i32 noundef %158) #23
  %160 = load ptr, ptr @fences, align 8, !tbaa !16
  %161 = icmp eq ptr %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7525, ptr noundef nonnull @.str.1) #23
  br label %168

163:                                              ; preds = %144, %143
  %164 = add nuw nsw i64 %127, 1
  %165 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %164, %166
  br i1 %167, label %126, label %172, !llvm.loop !212

168:                                              ; preds = %162, %150
  %169 = call ptr @bb_note(ptr noundef nonnull %140) #23
  call void @init_fences(ptr noundef %169) #23
  call fastcc void @sel_sched_region_2(i32 noundef %153) #24
  %170 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %124, label %172

172:                                              ; preds = %45, %168, %163, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #25
  br label %173

173:                                              ; preds = %172, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_region_finish(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca %struct.succ_iterator, align 8
  %3 = alloca ptr, align 8
  tail call fastcc void @simplify_changed_insns() #24
  tail call void @sched_finish_ready_list() #23
  tail call void @free_nop_pool() #23
  %4 = load ptr, ptr @vec_av_set, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @VEC_expr_t_heap_free() #24
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr @current_copies, align 8, !tbaa !16
  tail call void @bitmap_obstack_free(ptr noundef %8) #23
  store ptr null, ptr @current_copies, align 8, !tbaa !16
  %9 = load ptr, ptr @current_originators, align 8, !tbaa !16
  tail call void @bitmap_obstack_free(ptr noundef %9) #23
  store ptr null, ptr @current_originators, align 8, !tbaa !16
  %10 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  tail call void @bitmap_obstack_free(ptr noundef %10) #23
  store ptr null, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  tail call fastcc void @vinsn_vec_free(ptr noundef nonnull @vec_bookkeeping_blocked_vinsns) #24
  tail call fastcc void @vinsn_vec_free(ptr noundef nonnull @vec_target_unavailable_vinsns) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %11 = load ptr, ptr @cfun, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %17 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %18 = load i32, ptr %17, align 4, !tbaa !28
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %15, i32 noundef %21) #24
  %23 = tail call ptr @bb_note(ptr noundef %22) #23
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %2, ptr noundef nonnull %3, ptr noundef %23, i32 noundef 9) #24
  br label %24

24:                                               ; preds = %53, %7
  %25 = load ptr, ptr @cfun, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !136
  %30 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %31 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %32 = load i32, ptr %31, align 4, !tbaa !28
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !28
  %36 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %29, i32 noundef %35) #24
  %37 = tail call ptr @bb_note(ptr noundef %36) #23
  %38 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %37) #24
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %24
  %41 = load ptr, ptr %3, align 8, !tbaa !16
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = load ptr, ptr @sel_global_bb_info, align 8
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !9
  %47 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %44, i32 noundef %46) #24
  %48 = getelementptr inbounds %struct.sel_global_bb_info_def, ptr %47, i64 0, i32 1
  %49 = load i8, ptr %48, align 8, !tbaa !14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = tail call ptr @compute_live(ptr noundef nonnull %41) #24
  br label %53

53:                                               ; preds = %51, %40
  call fastcc void @_succ_iter_next(ptr noundef nonnull %2) #24
  br label %24, !llvm.loop !213

54:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #25
  %55 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call fastcc void @sel_region_target_finish(i8 noundef zeroext %0) #24
  br label %58

58:                                               ; preds = %57, %54
  tail call void @sel_finish_global_and_expr() #23
  %59 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !16
  tail call void @bitmap_clear(ptr noundef %59) #23
  tail call void @free_nop_vinsn() #23
  tail call void @finish_deps_global() #23
  tail call void @sched_finish_luids() #23
  tail call void @sel_finish_bbs() #23
  %60 = load ptr, ptr @blocks_to_reschedule, align 8, !tbaa !16
  tail call void @bitmap_obstack_free(ptr noundef %60) #23
  store ptr null, ptr @blocks_to_reschedule, align 8, !tbaa !16
  tail call void @sel_unregister_cfg_hooks() #23
  store i32 0, ptr @max_issue_size, align 4, !tbaa !28
  ret void
}

; Function Attrs: optsize
declare void @rgn_setup_region(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @current_region_empty_p() unnamed_addr #0 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %8, label %25

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1
  %5 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %6 = sext i32 %5 to i64
  %7 = icmp slt i64 %4, %6
  br i1 %7, label %8, label %25, !llvm.loop !214

8:                                                ; preds = %0, %3
  %9 = phi i64 [ %4, %3 ], [ 0, %0 ]
  %10 = load ptr, ptr @cfun, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !136
  %15 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %16 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  %18 = load i32, ptr %17, align 4, !tbaa !28
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %15, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %14, i32 noundef %21) #24
  %23 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %22) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %3

25:                                               ; preds = %8, %3, %0
  %26 = phi i8 [ 1, %0 ], [ 1, %3 ], [ 0, %8 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_current_loop_nest(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @get_loop_nest_for_rgn(i32 noundef %0) #23
  store ptr %2, ptr @current_loop_nest, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  tail call void @sel_add_loop_preheaders() #23
  %5 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %6 = tail call ptr @loop_latch_edge(ptr noundef %5) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6792, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %4, %8
  %10 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !215
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6793, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @sel_setup_region_sched_flags() unnamed_addr #14 {
  store i1 true, ptr @enable_schedule_as_rhs_p, align 1
  store i8 1, ptr @bookkeeping_p, align 1, !tbaa !6
  %1 = load i32, ptr @flag_sel_sched_pipelining, align 4
  %2 = icmp ne i32 %1, 0
  %3 = load ptr, ptr @current_loop_nest, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  store i8 %6, ptr @pipelining_p, align 1, !tbaa !6
  %7 = load ptr, ptr @compiler_params, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.param_info, ptr %7, i64 87, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !216
  store i32 %9, ptr @max_insns_to_rename, align 4, !tbaa !28
  %10 = getelementptr inbounds %struct.param_info, ptr %7, i64 85, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !216
  store i32 %11, ptr @max_ws, align 4, !tbaa !28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !218
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !218
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !16
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
define internal fastcc void @sel_compute_priorities(i32 noundef %0) unnamed_addr #0 {
  tail call void @sched_rgn_compute_dependencies(i32 noundef %0) #23
  tail call void @compute_priorities() #23
  %2 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %4, label %5

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
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !16
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
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %2, align 8, !tbaa !220
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
define internal fastcc i32 @init_seqno(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %6 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #23
  %8 = icmp eq ptr %1, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  tail call void @sbitmap_ones(ptr noundef %7) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %5) #24
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #24, !range !31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %9, %24
  %13 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %14 = load i32, ptr %5, align 4, !tbaa !28
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6735, ptr noundef nonnull @.str.1) #23
  %21 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %22 = getelementptr inbounds i32, ptr %21, i64 %15
  %23 = load i32, ptr %22, align 4, !tbaa !28
  br label %24

24:                                               ; preds = %12, %20
  %25 = phi i32 [ %17, %12 ], [ %23, %20 ]
  tail call fastcc void @RESET_BIT(ptr noundef %7, i32 noundef %25) #24
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #24, !range !31
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %12, !llvm.loop !221

28:                                               ; preds = %3
  tail call void @sbitmap_zero(ptr noundef %7) #23
  %29 = load ptr, ptr @cfun, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !136
  %34 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %35 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %36 = load i32, ptr %35, align 4, !tbaa !28
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %34, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !28
  %40 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %33, i32 noundef %39) #24
  br label %41

41:                                               ; preds = %24, %9, %28
  %42 = phi ptr [ %40, %28 ], [ %2, %9 ], [ %2, %24 ]
  %43 = icmp sgt i32 %0, 0
  %44 = load i32, ptr @sched_max_luid, align 4
  %45 = add nsw i32 %44, -1
  %46 = select i1 %43, i32 %0, i32 %45
  store i32 %46, ptr @cur_seqno, align 4, !tbaa !28
  tail call fastcc void @init_seqno_1(ptr noundef %42, ptr noundef %7, ptr noundef %1) #24
  %47 = load i32, ptr @cur_seqno, align 4, !tbaa !28
  %48 = icmp eq i32 %47, 0
  %49 = icmp eq i32 %0, 0
  %50 = or i1 %49, %48
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6747, ptr noundef nonnull @.str.1) #23
  br label %52

52:                                               ; preds = %41, %51
  %53 = load ptr, ptr %7, align 8, !tbaa !222
  tail call void @free(ptr noundef %53) #24
  tail call void @free(ptr noundef %7) #24
  %54 = load i32, ptr @sched_max_luid, align 4, !tbaa !28
  %55 = add nsw i32 %54, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret i32 %55
}

; Function Attrs: optsize
declare void @init_fences(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_sched_region_2(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store i32 0, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  store i32 0, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !28
  store i32 0, ptr @stat_renamed_scheduled, align 4, !tbaa !28
  store i32 0, ptr @stat_substitutions_total, align 4, !tbaa !28
  store i32 0, ptr @num_insns_scheduled, align 4, !tbaa !28
  %6 = load ptr, ptr @fences, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %17, %8 ], [ %6, %1 ]
  %10 = phi i32 [ %16, %8 ], [ %0, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !16
  call fastcc void @find_min_max_seqno(ptr noundef nonnull %9, ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %11 = load ptr, ptr @fences, align 8, !tbaa !16
  %12 = load i32, ptr %3, align 4, !tbaa !28
  call fastcc void @schedule_on_fences(ptr noundef %11, i32 noundef %12, ptr noundef nonnull %5) #24
  %13 = load ptr, ptr @fences, align 8, !tbaa !16
  %14 = call fastcc ptr @calculate_new_fences(ptr noundef %13, i32 noundef %0) #24
  store ptr %14, ptr @fences, align 8, !tbaa !16
  %15 = load i32, ptr %2, align 4, !tbaa !28
  %16 = call fastcc i32 @update_seqnos_and_stage(i32 noundef %15, i32 noundef %12, i32 noundef %10, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %17 = load ptr, ptr @fences, align 8, !tbaa !16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !224

19:                                               ; preds = %8, %1
  %20 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %27 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !28
  %28 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !28
  %29 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !28
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29) #24
  %31 = shl nsw i32 %30, 1
  %32 = or disjoint i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  %35 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %36 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !28
  %37 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !28
  %38 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !28
  %39 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %34, i64 noundef %33, ptr noundef nonnull @.str.39, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %34) #23
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %41 = call i32 @fputs(ptr nonnull %34, ptr %40)
  br label %49

42:                                               ; preds = %22
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %44 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %45 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !28
  %46 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !28
  %47 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !28
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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = load ptr, ptr %1, align 8, !tbaa !225
  store ptr %4, ptr %0, align 8, !tbaa !226
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !228
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !226
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !229
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !231
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !232
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !233
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !233
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !28
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !234

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !28
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !28
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !231
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !226
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !231
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !232
  store i64 %35, ptr %3, align 8, !tbaa !233
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !28
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !28
  %40 = load i32, ptr %23, align 8, !tbaa !231
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !231
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !235

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !236
  store ptr %44, ptr %0, align 8, !tbaa !226
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !229
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !28
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !233
  store i32 %16, ptr %1, align 4, !tbaa !28
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !222
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
  %15 = load i64, ptr %14, align 8, !tbaa !232
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !6
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !6
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !232
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !233
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !233
  %6 = load i32, ptr %1, align 4, !tbaa !28
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !28
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_seqno_1(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.succ_iterator, align 8
  %6 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !9
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = tail call ptr @bb_note(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #25
  tail call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %11) #24
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %7, align 8, !tbaa !9
  %16 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %15) #23
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %5, ptr noundef nonnull %4, ptr noundef %21, i32 noundef 9) #24
  %22 = load ptr, ptr %18, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %24) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %17, %54
  %28 = load ptr, ptr %4, align 8, !tbaa !16
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !9
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !28
  %37 = tail call zeroext i8 @in_current_region_p(ptr noundef %30) #23
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6700, ptr noundef nonnull @.str.1) #23
  br label %40

40:                                               ; preds = %27, %39
  %41 = lshr i32 %36, 6
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !232
  %45 = and i32 %36, 63
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %44, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = icmp sgt i32 %36, %11
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6704, ptr noundef nonnull @.str.1) #23
  br label %53

53:                                               ; preds = %50, %52
  tail call fastcc void @init_seqno_1(ptr noundef nonnull %30, ptr noundef nonnull %1, ptr noundef %2) #24
  br label %54

54:                                               ; preds = %53, %40
  call fastcc void @_succ_iter_next(ptr noundef nonnull %5) #24
  %55 = load ptr, ptr %18, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.rtl_bb_info, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %57) #24
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %27, !llvm.loop !237

60:                                               ; preds = %54, %17
  %61 = load ptr, ptr %18, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.rtl_bb_info, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, %12
  br i1 %64, label %82, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr @cur_seqno, align 4, !tbaa !28
  %67 = load ptr, ptr @s_i_d, align 8
  %68 = load ptr, ptr @sched_luids, align 8
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi ptr [ %63, %65 ], [ %79, %69 ]
  %71 = phi i32 [ %66, %65 ], [ %72, %69 ]
  %72 = add nsw i32 %71, -1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !6
  %75 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %68, i32 noundef %74) #24
  %76 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %67, i32 noundef %75) #24
  %77 = getelementptr inbounds %struct._sel_insn_data, ptr %76, i64 0, i32 2
  store i32 %71, ptr %77, align 4, !tbaa !60
  %78 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = icmp eq ptr %79, %12
  br i1 %80, label %81, label %69, !llvm.loop !238

81:                                               ; preds = %69
  store i32 %72, ptr @cur_seqno, align 4, !tbaa !28
  br label %82

82:                                               ; preds = %81, %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !222
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
  %15 = load i64, ptr %14, align 8, !tbaa !232
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !6
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !6
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !232
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !232
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @find_min_max_seqno(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #18 {
  %4 = load ptr, ptr @s_i_d, align 8
  %5 = load ptr, ptr @sched_luids, align 8
  %6 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %5, i32 noundef %9) #24
  %11 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %4, i32 noundef %10) #24
  %12 = getelementptr inbounds %struct._sel_insn_data, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !60
  store i32 %13, ptr %2, align 4, !tbaa !28
  store i32 %13, ptr %1, align 4, !tbaa !28
  %14 = load ptr, ptr %0, align 8, !tbaa !160
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %3, %35
  %17 = phi ptr [ %36, %35 ], [ %14, %3 ]
  %18 = load ptr, ptr @s_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = getelementptr inbounds %struct._list_node, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !6
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %23) #24
  %25 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %18, i32 noundef %24) #24
  %26 = getelementptr inbounds %struct._sel_insn_data, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !60
  %28 = load i32, ptr %1, align 4, !tbaa !28
  %29 = icmp sgt i32 %28, %27
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, ptr %2, align 4, !tbaa !28
  %32 = icmp slt i32 %31, %27
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %16
  %34 = phi ptr [ %1, %16 ], [ %2, %30 ]
  store i32 %27, ptr %34, align 4, !tbaa !28
  br label %35

35:                                               ; preds = %33, %30
  %36 = load ptr, ptr %17, align 8, !tbaa !160
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %16, !llvm.loop !239

38:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @schedule_on_fences(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = alloca [47 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 1 dereferenceable(24) @.str.40, i64 24, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %10) #23
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %12 = call i32 @fputs(ptr nonnull %10, ptr %11)
  br label %16

13:                                               ; preds = %6
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %15 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 23, i64 1, ptr %14)
  br label %16

16:                                               ; preds = %13, %9
  call void @dump_flist(ptr noundef %0) #23
  %17 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = alloca [3 x i8], align 16
  store i16 10, ptr %20, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %20) #23
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %22 = call i32 @fputs(ptr nonnull %20, ptr %21)
  br label %26

23:                                               ; preds = %16
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %25 = call i32 @fputc(i32 10, ptr %24)
  br label %26

26:                                               ; preds = %19, %23, %3
  store i1 false, ptr @scheduled_something_on_previous_fence, align 1
  %27 = icmp eq ptr %0, null
  br i1 %27, label %74, label %28

28:                                               ; preds = %26
  %29 = xor i32 %1, -1
  br label %30

30:                                               ; preds = %67, %28
  %31 = phi ptr [ %0, %28 ], [ %72, %67 ]
  %32 = load ptr, ptr @s_i_d, align 8
  %33 = load ptr, ptr @sched_luids, align 8
  br label %34

34:                                               ; preds = %30, %58
  %35 = phi ptr [ null, %30 ], [ %61, %58 ]
  %36 = phi i8 [ 1, %30 ], [ %60, %58 ]
  %37 = phi ptr [ %0, %30 ], [ %62, %58 ]
  %38 = phi i32 [ 0, %30 ], [ %59, %58 ]
  %39 = getelementptr inbounds %struct._list_node, ptr %37, i64 0, i32 1, i32 0, i32 13
  %40 = load i8, ptr %39, align 8
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct._list_node, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !240
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !6
  %48 = call fastcc i32 @VEC_int_base_index(ptr noundef %33, i32 noundef %47) #24
  %49 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %32, i32 noundef %48) #24
  %50 = getelementptr inbounds %struct._sel_insn_data, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !60
  %52 = icmp ne i8 %36, 0
  %53 = icmp sgt i32 %51, %38
  %54 = select i1 %52, i1 true, i1 %53
  %55 = select i1 %54, i32 %51, i32 %38
  %56 = select i1 %54, i8 0, i8 %36
  %57 = select i1 %54, ptr %44, ptr %35
  br label %58

58:                                               ; preds = %43, %34
  %59 = phi i32 [ %38, %34 ], [ %55, %43 ]
  %60 = phi i8 [ %36, %34 ], [ %56, %43 ]
  %61 = phi ptr [ %35, %34 ], [ %57, %43 ]
  %62 = load ptr, ptr %37, align 8, !tbaa !160
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %34, !llvm.loop !242

64:                                               ; preds = %58
  %65 = icmp eq ptr %61, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7273, ptr noundef nonnull @.str.1) #23
  br label %67

67:                                               ; preds = %64, %66
  %68 = add i32 %59, %29
  call fastcc void @fill_insns(ptr noundef %61, i32 noundef %68, ptr noundef %2) #24
  %69 = getelementptr inbounds %struct._fence, ptr %61, i64 0, i32 13
  %70 = load i8, ptr %69, align 8
  %71 = or i8 %70, 1
  store i8 %71, ptr %69, align 8
  %72 = load ptr, ptr %31, align 8, !tbaa !160
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %30, !llvm.loop !243

74:                                               ; preds = %67, %26
  call fastcc void @vinsn_vec_clear(ptr noundef nonnull @vec_bookkeeping_blocked_vinsns) #24
  call fastcc void @vinsn_vec_clear(ptr noundef nonnull @vec_target_unavailable_vinsns) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @calculate_new_fences(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.flist_tail_def, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  call void @flist_tail_init(ptr noundef nonnull %4) #23
  %5 = icmp eq ptr %0, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %2, %65
  %7 = phi ptr [ %66, %65 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %64

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1, i32 0, i32 13
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 8, !tbaa !240
  %19 = load ptr, ptr @s_i_d, align 8
  %20 = load ptr, ptr @sched_luids, align 8
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !6
  %23 = call fastcc i32 @VEC_int_base_index(ptr noundef %20, i32 noundef %22) #24
  %24 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %19, i32 noundef %23) #24
  %25 = getelementptr inbounds %struct._sel_insn_data, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !60
  %27 = icmp slt i32 %26, 1
  %28 = icmp sgt i32 %26, %1
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7329, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %17, %30
  %32 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %21, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !9
  %43 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.80, i32 noundef %38, i32 noundef %42) #24
  %44 = shl nsw i32 %43, 1
  %45 = or disjoint i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  %48 = load i32, ptr %21, align 8, !tbaa !6
  %49 = load ptr, ptr %39, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !9
  %52 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %47, i64 noundef %46, ptr noundef nonnull @.str.80, i32 noundef %48, i32 noundef %51) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %47) #23
  %53 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %54 = call i32 @fputs(ptr nonnull %47, ptr %53)
  br label %63

55:                                               ; preds = %34
  %56 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %57 = load i32, ptr %21, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !9
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.80, i32 noundef %57, i32 noundef %61) #24
  br label %63

63:                                               ; preds = %37, %55, %31
  call void @move_fence_to_fences(ptr noundef nonnull %7, ptr noundef nonnull %4) #23
  br label %65

64:                                               ; preds = %6
  call fastcc void @extract_new_fences_from(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %1) #24
  br label %65

65:                                               ; preds = %12, %63, %64
  %66 = load ptr, ptr %7, align 8, !tbaa !160
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %6, !llvm.loop !245

68:                                               ; preds = %65, %2
  call void @flist_clear(ptr noundef nonnull %3) #23
  %69 = load ptr, ptr %4, align 8, !tbaa !246
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @update_seqnos_and_stage(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct._list_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = load ptr, ptr %3, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @s_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct._list_node, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  %16 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %15) #24
  %17 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %16) #24
  %18 = getelementptr inbounds %struct._sel_insn_data, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !60
  %20 = sub i32 %1, %0
  %21 = add i32 %20, 2
  %22 = add i32 %21, %2
  %23 = add i32 %22, %19
  %24 = icmp sgt i32 %23, %2
  br i1 %24, label %26, label %25

25:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7364, ptr noundef nonnull @.str.1) #23
  br label %26

26:                                               ; preds = %4, %25, %9
  %27 = phi i32 [ %23, %9 ], [ %23, %25 ], [ %2, %4 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #24
  %28 = load ptr, ptr %5, align 8, !tbaa !124
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %29, ptr noundef nonnull %6) #24, !range !31
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %26
  %33 = add nsw i32 %2, %1
  %34 = add i32 %33, 2
  %35 = sub i32 %34, %0
  br label %36

36:                                               ; preds = %32, %71
  %37 = load ptr, ptr @s_i_d, align 8
  %38 = load ptr, ptr @sched_luids, align 8
  %39 = load ptr, ptr %6, align 8, !tbaa !16
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !6
  %42 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %38, i32 noundef %41) #24
  %43 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %37, i32 noundef %42) #24
  %44 = getelementptr inbounds %struct._sel_insn_data, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !60
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7371, ptr noundef nonnull @.str.1) #23
  %48 = load ptr, ptr @s_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = load i32, ptr %40, align 8, !tbaa !6
  br label %51

51:                                               ; preds = %36, %47
  %52 = phi i32 [ %41, %36 ], [ %50, %47 ]
  %53 = phi ptr [ %38, %36 ], [ %49, %47 ]
  %54 = phi ptr [ %37, %36 ], [ %48, %47 ]
  %55 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %53, i32 noundef %52) #24
  %56 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %54, i32 noundef %55) #24
  %57 = getelementptr inbounds %struct._sel_insn_data, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !60
  %59 = add nsw i32 %35, %58
  store i32 %59, ptr %57, align 4, !tbaa !60
  %60 = load i32, ptr %40, align 8, !tbaa !6
  %61 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %53, i32 noundef %60) #24
  %62 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %54, i32 noundef %61) #24
  %63 = getelementptr inbounds %struct._sel_insn_data, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !60
  %65 = icmp sgt i32 %64, %27
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7373, ptr noundef nonnull @.str.1) #23
  br label %67

67:                                               ; preds = %51, %66
  %68 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call void @free_data_for_scheduled_insn(ptr noundef nonnull %39) #23
  br label %71

71:                                               ; preds = %67, %70
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #24
  %72 = load ptr, ptr %5, align 8, !tbaa !124
  %73 = load ptr, ptr %72, align 8, !tbaa !16
  %74 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %73, ptr noundef nonnull %6) #24, !range !31
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %36, !llvm.loop !248

76:                                               ; preds = %71, %26
  tail call fastcc void @_list_clear(ptr noundef nonnull %3) #24
  %77 = load i32, ptr @global_level, align 4, !tbaa !28
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr @global_level, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  ret i32 %27
}

; Function Attrs: optsize
declare void @dump_flist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_insns(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !16
  %7 = load ptr, ptr %0, align 8, !tbaa !240
  %8 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !249
  %18 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %15, i32 noundef %17) #24
  %19 = shl nsw i32 %18, 1
  %20 = or disjoint i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  %23 = load i32, ptr %14, align 8, !tbaa !6
  %24 = load i32, ptr %16, align 8, !tbaa !249
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %22, i64 noundef %21, ptr noundef nonnull @.str.41, i32 noundef %23, i32 noundef %24) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %22) #23
  %26 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %27 = call i32 @fputs(ptr nonnull %22, ptr %26)
  br label %35

28:                                               ; preds = %10
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !249
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.41, i32 noundef %31, i32 noundef %33) #24
  br label %35

35:                                               ; preds = %13, %28, %3
  %36 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !250
  call void @blist_add(ptr noundef nonnull %4, ptr noundef %7, ptr noundef null, ptr noundef %37) #23
  %38 = load ptr, ptr %4, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !251
  call void @set_target_context(ptr noundef %40) #23
  %41 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  %42 = load i32, ptr %41, align 8, !tbaa !252
  store i32 %42, ptr @can_issue_more, align 4, !tbaa !28
  %43 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !9
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, ptr %43, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !28
  store i32 %50, ptr @target_bb, align 4, !tbaa !28
  %51 = load ptr, ptr %4, align 8, !tbaa !16
  br label %52

52:                                               ; preds = %153, %35
  %53 = phi ptr [ %51, %35 ], [ %154, %153 ]
  %54 = phi ptr [ %7, %35 ], [ %133, %153 ]
  %55 = phi ptr [ %38, %35 ], [ %134, %153 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %56 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %57 = icmp eq i8 %56, 0
  %58 = load i32, ptr @issue_rate, align 4
  %59 = zext i1 %57 to i32
  %60 = shl nsw i32 %58, %59
  %61 = select i1 %57, i32 3, i32 1
  call fastcc void @compute_av_set_on_boundaries(ptr noundef nonnull %0, ptr noundef %53, ptr noundef nonnull %5) #24
  call fastcc void @remove_insns_that_need_bookkeeping(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  %62 = load ptr, ptr %4, align 8, !tbaa !16
  call fastcc void @remove_insns_for_debug(ptr noundef %62, ptr noundef nonnull %5) #24
  %63 = load ptr, ptr %5, align 8, !tbaa !16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %152, label %65

65:                                               ; preds = %52
  %66 = load ptr, ptr %4, align 8, !tbaa !16
  %67 = call fastcc ptr @find_best_expr(ptr noundef nonnull %5, ptr noundef %66, ptr noundef nonnull %0, ptr noundef nonnull %6) #24
  %68 = icmp eq ptr %67, null
  %69 = load i32, ptr %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %85

72:                                               ; preds = %65, %77
  %73 = phi i32 [ %82, %77 ], [ %69, %65 ]
  %74 = phi i32 [ %78, %77 ], [ 0, %65 ]
  %75 = icmp slt i32 %73, 4
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call fastcc void @stall_for_cycles(ptr noundef nonnull %0, i32 noundef 1) #24
  br label %91

77:                                               ; preds = %72
  %78 = add nuw nsw i32 %74, 1
  call fastcc void @stall_for_cycles(ptr noundef nonnull %0, i32 noundef %73) #24
  %79 = load ptr, ptr %4, align 8, !tbaa !16
  %80 = call fastcc ptr @find_best_expr(ptr noundef nonnull %5, ptr noundef %79, ptr noundef nonnull %0, ptr noundef nonnull %6) #24
  %81 = icmp eq ptr %80, null
  %82 = load i32, ptr %6, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %72, label %85

85:                                               ; preds = %77, %65
  %86 = phi i32 [ 0, %65 ], [ %78, %77 ]
  %87 = phi ptr [ %67, %65 ], [ %80, %77 ]
  %88 = phi i1 [ %68, %65 ], [ %81, %77 ]
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %4, align 8, !tbaa !16
  br label %92

91:                                               ; preds = %85, %76
  call void @av_set_clear(ptr noundef nonnull %5) #23
  br label %152

92:                                               ; preds = %89, %129
  %93 = phi ptr [ %135, %129 ], [ %90, %89 ]
  %94 = phi ptr [ %130, %129 ], [ %4, %89 ]
  %95 = phi i8 [ %131, %129 ], [ 0, %89 ]
  %96 = phi i8 [ %132, %129 ], [ 0, %89 ]
  %97 = phi ptr [ %133, %129 ], [ %54, %89 ]
  %98 = phi ptr [ %134, %129 ], [ %55, %89 ]
  %99 = getelementptr inbounds %struct._list_node, ptr %93, i64 0, i32 1
  %100 = getelementptr inbounds %struct._list_node, ptr %93, i64 0, i32 1, i32 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !253
  %102 = load ptr, ptr %87, align 8, !tbaa !55
  %103 = call zeroext i8 @av_set_is_in_p(ptr noundef %101, ptr noundef %102) #23
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load ptr, ptr %94, align 8, !tbaa !16
  br label %129

107:                                              ; preds = %92
  %108 = call fastcc ptr @schedule_expr_on_boundary(ptr noundef nonnull %99, ptr noundef nonnull %87, i32 noundef %1) #24
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 7
  %112 = zext i1 %111 to i8
  br i1 %111, label %113, label %122

113:                                              ; preds = %107
  %114 = load ptr, ptr %99, align 8, !tbaa !255
  %115 = icmp eq ptr %108, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %108) #23
  %118 = icmp ne i8 %117, 0
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i1 [ false, %113 ], [ %118, %116 ]
  %121 = zext i1 %120 to i8
  br label %122

122:                                              ; preds = %119, %107
  %123 = phi i8 [ %121, %119 ], [ %96, %107 ]
  %124 = load i32, ptr %6, align 4, !tbaa !28
  call fastcc void @update_fence_and_insn(ptr noundef nonnull %0, ptr noundef nonnull %108, i32 noundef %124) #24
  %125 = call fastcc ptr @update_boundaries(ptr noundef nonnull %0, ptr noundef nonnull %99, ptr noundef nonnull %108, ptr noundef nonnull %94, ptr noundef %98) #24
  %126 = load ptr, ptr %2, align 8, !tbaa !16
  call fastcc void @_xlist_add(ptr noundef %126, ptr noundef nonnull %108) #24
  %127 = load ptr, ptr %2, align 8, !tbaa !16
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  store ptr %128, ptr %2, align 8, !tbaa !16
  br label %129

129:                                              ; preds = %122, %105
  %130 = phi ptr [ %94, %122 ], [ %106, %105 ]
  %131 = phi i8 [ %112, %122 ], [ %95, %105 ]
  %132 = phi i8 [ %123, %122 ], [ %96, %105 ]
  %133 = phi ptr [ %108, %122 ], [ %97, %105 ]
  %134 = phi ptr [ %125, %122 ], [ %98, %105 ]
  %135 = load ptr, ptr %130, align 8, !tbaa !16
  %136 = load ptr, ptr %55, align 8, !tbaa !16
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %92, !llvm.loop !256

138:                                              ; preds = %129
  call void @av_set_clear(ptr noundef nonnull %5) #23
  %139 = icmp eq i8 %131, 0
  %140 = zext i1 %139 to i32
  br i1 %139, label %143, label %141

141:                                              ; preds = %138
  %142 = icmp eq i8 %132, 0
  br i1 %142, label %146, label %152

143:                                              ; preds = %138
  %144 = call zeroext i8 @sel_bb_end_p(ptr noundef %133) #23
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143, %141
  %147 = icmp eq i32 %86, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %146
  %149 = icmp ult i32 %86, %61
  %150 = icmp sgt i32 %60, %140
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %153, label %152

152:                                              ; preds = %52, %148, %143, %141, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br label %156

153:                                              ; preds = %146, %148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %154 = load ptr, ptr %4, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %52, !llvm.loop !257

156:                                              ; preds = %153, %152
  %157 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !244
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5596, ptr noundef nonnull @.str.1) #23
  br label %161

161:                                              ; preds = %156, %160
  %162 = load ptr, ptr %4, align 8, !tbaa !16
  %163 = icmp eq ptr %162, null
  br i1 %163, label %179, label %164

164:                                              ; preds = %161, %176
  %165 = phi ptr [ %177, %176 ], [ %162, %161 ]
  %166 = getelementptr inbounds %struct._list_node, ptr %165, i64 0, i32 1, i32 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !6
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct._list_node, ptr %167, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = load ptr, ptr %157, align 8, !tbaa !244
  %173 = call fastcc zeroext i8 @_xlist_is_in_p(ptr noundef %172, ptr noundef %171) #24, !range !31
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  call fastcc void @_xlist_add(ptr noundef nonnull %157, ptr noundef %171) #24
  br label %176

176:                                              ; preds = %169, %175, %164
  call void @blist_remove(ptr noundef nonnull %4) #23
  %177 = load ptr, ptr %4, align 8, !tbaa !16
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %164, !llvm.loop !258

179:                                              ; preds = %176, %161
  %180 = load ptr, ptr %39, align 8, !tbaa !251
  call void @reset_target_context(ptr noundef %180, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vinsn_vec_clear(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = tail call fastcc i32 @VEC_vinsn_t_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %7 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !149
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %6 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !16
  tail call void @vinsn_detach(ptr noundef %11) #23
  %12 = add nuw nsw i32 %10, 1
  %13 = load ptr, ptr %0, align 8, !tbaa !16
  %14 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %2) #24, !range !149
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !259

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
define internal fastcc void @compute_av_set_on_boundaries(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = alloca [25 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %11, ptr noundef nonnull align 1 dereferenceable(13) @.str.42, i64 13, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11) #23
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %16 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 12, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %10, %14
  call void @dump_blist(ptr noundef %1) #23
  %18 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = alloca [3 x i8], align 16
  store i16 10, ptr %21, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %21) #23
  %22 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %23 = call i32 @fputs(ptr nonnull %21, ptr %22)
  br label %27

24:                                               ; preds = %17
  %25 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %26 = call i32 @fputc(i32 10, ptr %25)
  br label %27

27:                                               ; preds = %24, %20, %3
  %28 = icmp eq ptr %1, null
  br i1 %28, label %82, label %29

29:                                               ; preds = %27, %71
  %30 = phi ptr [ %80, %71 ], [ %1, %27 ]
  %31 = getelementptr inbounds %struct._list_node, ptr %30, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %32 = load ptr, ptr %31, align 8, !tbaa !255
  %33 = call zeroext i8 @sel_bb_head_p(ptr noundef %32) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr @s_i_d, align 8
  %37 = load ptr, ptr @sched_luids, align 8
  %38 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !6
  %40 = call fastcc i32 @VEC_int_base_index(ptr noundef %37, i32 noundef %39) #24
  %41 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %36, i32 noundef %40) #24
  %42 = getelementptr inbounds %struct._expr, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !52
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5029, ptr noundef nonnull @.str.1) #23
  br label %62

46:                                               ; preds = %29, %59
  %47 = phi ptr [ %51, %59 ], [ %32, %29 ]
  %48 = load ptr, ptr @s_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !6
  %54 = call fastcc i32 @VEC_int_base_index(ptr noundef %49, i32 noundef %53) #24
  %55 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %48, i32 noundef %54) #24
  %56 = getelementptr inbounds %struct._expr, ptr %55, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !52
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %51) #23
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %46, label %62, !llvm.loop !260

62:                                               ; preds = %46, %59, %45, %35
  %63 = phi ptr [ %32, %35 ], [ %32, %45 ], [ %47, %46 ], [ %51, %59 ]
  %64 = load ptr, ptr %31, align 8, !tbaa !255
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %0, align 8, !tbaa !240
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5040, ptr noundef nonnull @.str.1) #23
  br label %70

70:                                               ; preds = %66, %69
  store ptr %63, ptr %0, align 8, !tbaa !240
  store ptr %63, ptr %31, align 8, !tbaa !255
  br label %71

71:                                               ; preds = %70, %62
  %72 = getelementptr inbounds %struct._list_node, ptr %30, i64 0, i32 1, i32 0, i32 2
  call void @av_set_clear(ptr noundef nonnull %72) #23
  %73 = load ptr, ptr %31, align 8, !tbaa !255
  %74 = call fastcc ptr @compute_av_set(ptr noundef %73, i8 noundef zeroext 1) #24
  store ptr %74, ptr %72, align 8, !tbaa !261
  %75 = getelementptr inbounds %struct._list_node, ptr %30, i64 0, i32 1, i32 0, i32 4
  call void @av_set_clear(ptr noundef nonnull %75) #23
  %76 = load ptr, ptr %72, align 8, !tbaa !261
  %77 = call ptr @av_set_copy(ptr noundef %76) #23
  store ptr %77, ptr %75, align 8, !tbaa !253
  call fastcc void @moveup_set_inside_insn_group() #24
  %78 = load ptr, ptr %75, align 8, !tbaa !253
  %79 = call ptr @av_set_copy(ptr noundef %78) #23
  store ptr %79, ptr %4, align 8, !tbaa !16
  call void @av_set_union_and_clear(ptr noundef %2, ptr noundef nonnull %4, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %80 = load ptr, ptr %30, align 8, !tbaa !160
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %29, !llvm.loop !262

82:                                               ; preds = %71, %27
  %83 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = alloca [59 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %89, ptr noundef nonnull align 1 dereferenceable(30) @.str.43, i64 30, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %89) #23
  %90 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %91 = call i32 @fputs(ptr nonnull %89, ptr %90)
  br label %95

92:                                               ; preds = %85
  %93 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %94 = call i64 @fwrite(ptr nonnull @.str.43, i64 29, i64 1, ptr %93)
  br label %95

95:                                               ; preds = %88, %92
  %96 = load ptr, ptr %2, align 8, !tbaa !16
  call void @dump_av_set(ptr noundef %96) #23
  %97 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = alloca [3 x i8], align 16
  store i16 10, ptr %100, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %100) #23
  %101 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %102 = call i32 @fputs(ptr nonnull %100, ptr %101)
  br label %106

103:                                              ; preds = %95
  %104 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %105 = call i32 @fputc(i32 10, ptr %104)
  br label %106

106:                                              ; preds = %103, %99, %82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_insns_that_need_bookkeeping(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 1) #24
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %3) #24, !range !31
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %2, %75
  %10 = load ptr, ptr %3, align 8, !tbaa !16
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = call zeroext i8 @control_flow_insn_p(ptr noundef %12) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %9
  %16 = load i8, ptr @bookkeeping_p, align 1, !tbaa !6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !56
  %22 = add i32 %21, -23
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %75, label %24

24:                                               ; preds = %18, %15
  %25 = getelementptr inbounds %struct._expr, ptr %10, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !157
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._expr, ptr %10, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !263
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @cfun, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !136
  %38 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef %30) #24
  %39 = load ptr, ptr %0, align 8, !tbaa !240
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %38, ptr noundef %41) #23
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %32, %28, %24
  %45 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %10, align 8, !tbaa !55
  %52 = load ptr, ptr %51, align 8, !tbaa !85
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !6
  %55 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.45, i32 noundef %54) #24
  %56 = shl nsw i32 %55, 1
  %57 = or disjoint i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = alloca i8, i64 %58, align 16
  %60 = load ptr, ptr %10, align 8, !tbaa !55
  %61 = load ptr, ptr %60, align 8, !tbaa !85
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !6
  %64 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %59, i64 noundef %58, ptr noundef nonnull @.str.45, i32 noundef %63) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %59) #23
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %66 = call i32 @fputs(ptr nonnull %59, ptr %65)
  br label %74

67:                                               ; preds = %47
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %69 = load ptr, ptr %10, align 8, !tbaa !55
  %70 = load ptr, ptr %69, align 8, !tbaa !85
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !6
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.45, i32 noundef %72) #24
  br label %74

74:                                               ; preds = %50, %67, %44
  call void @av_set_iter_remove(ptr noundef nonnull %4) #23
  br label %75

75:                                               ; preds = %18, %9, %32, %74
  call fastcc void @_list_iter_next(ptr noundef nonnull %4) #24
  %76 = load ptr, ptr %4, align 8, !tbaa !124
  %77 = load ptr, ptr %76, align 8, !tbaa !16
  %78 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %77, ptr noundef nonnull %3) #24, !range !31
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %9, !llvm.loop !264

80:                                               ; preds = %75, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_insns_for_debug(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = tail call zeroext i8 @dbg_cnt(i32 noundef 33) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %8 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !255
  %10 = load ptr, ptr %0, align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4999, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %7, %12
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #24
  %14 = load ptr, ptr %3, align 8, !tbaa !124
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %15, ptr noundef nonnull %4) #24, !range !31
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13, %24
  %19 = load ptr, ptr %4, align 8, !tbaa !16
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp eq ptr %21, %9
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %24

24:                                               ; preds = %18, %23
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %25 = load ptr, ptr %3, align 8, !tbaa !124
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %26, ptr noundef nonnull %4) #24, !range !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !265

29:                                               ; preds = %24, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_best_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = tail call fastcc ptr @fill_ready_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #24
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8
  %9 = icmp sgt i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %12 = tail call fastcc i32 @invoke_reorder_hooks(ptr noundef %2) #24
  store i32 %12, ptr @can_issue_more, align 4, !tbaa !28
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  tail call fastcc void @invoke_dfa_lookahead_guard() #24
  %15 = tail call fastcc i32 @calculate_privileged_insns() #24
  %16 = call fastcc i32 @choose_best_insn(ptr noundef %2, i32 noundef %15, ptr noundef nonnull %5) #24
  store i32 %16, ptr @can_issue_more, align 4, !tbaa !28
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4, !tbaa !28
  %20 = call fastcc ptr @find_expr_for_ready(i32 noundef %19) #24
  %21 = load i32, ptr @can_issue_more, align 4, !tbaa !28
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %21, %18 ], [ %12, %11 ]
  %24 = phi ptr [ %20, %18 ], [ null, %11 ]
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14, %22
  store i32 1, ptr %3, align 4, !tbaa !28
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi ptr [ null, %26 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi ptr [ %28, %27 ], [ %6, %4 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !55
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  %35 = load i32, ptr @can_issue_more, align 4, !tbaa !28
  %36 = call fastcc i32 @invoke_aftermath_hooks(ptr noundef %2, ptr noundef %34, i32 noundef %35) #24
  store i32 %36, ptr @can_issue_more, align 4, !tbaa !28
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, ptr %3, align 4, !tbaa !28
  br label %39

39:                                               ; preds = %32, %38
  %40 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %45, label %85

42:                                               ; preds = %29
  %43 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %75, label %85

45:                                               ; preds = %39
  %46 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = alloca [59 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %49, ptr noundef nonnull align 1 dereferenceable(30) @.str.46, i64 30, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %49) #23
  %50 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %51 = call i32 @fputs(ptr nonnull %49, ptr %50)
  br label %55

52:                                               ; preds = %45
  %53 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %54 = call i64 @fwrite(ptr nonnull @.str.46, i64 29, i64 1, ptr %53)
  br label %55

55:                                               ; preds = %52, %48
  call void @dump_expr(ptr noundef nonnull %30) #23
  %56 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !249
  %61 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.47, i32 noundef %60) #24
  %62 = shl nsw i32 %61, 1
  %63 = or disjoint i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = alloca i8, i64 %64, align 16
  %66 = load i32, ptr %59, align 8, !tbaa !249
  %67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %65, i64 noundef %64, ptr noundef nonnull @.str.47, i32 noundef %66) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %65) #23
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %69 = call i32 @fputs(ptr nonnull %65, ptr %68)
  br label %85

70:                                               ; preds = %55
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %72 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !249
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.47, i32 noundef %73) #24
  br label %85

75:                                               ; preds = %42
  %76 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = alloca [41 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %79, ptr noundef nonnull align 1 dereferenceable(21) @.str.48, i64 21, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %79) #23
  %80 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %81 = call i32 @fputs(ptr nonnull %79, ptr %80)
  br label %85

82:                                               ; preds = %75
  %83 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %84 = call i64 @fwrite(ptr nonnull @.str.48, i64 20, i64 1, ptr %83)
  br label %85

85:                                               ; preds = %42, %70, %58, %82, %78, %39
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stall_for_cycles(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !266
  %7 = load i32, ptr @issue_rate, align 4, !tbaa !28
  %8 = icmp slt i32 %6, %7
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2, %4
  %11 = phi i1 [ %8, %4 ], [ true, %2 ]
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %14, %12 ], [ %1, %10 ]
  %14 = add nsw i32 %13, -1
  tail call fastcc void @advance_one_cycle(ptr noundef %0) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12, !llvm.loop !267

16:                                               ; preds = %12, %4
  %17 = phi i1 [ %8, %4 ], [ %11, %12 ]
  br i1 %17, label %18, label %22

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
define internal fastcc ptr @schedule_expr_on_boundary(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = alloca [64 x i8], align 16
  %6 = tail call fastcc ptr @find_sequential_best_exprs(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #24
  store ptr %6, ptr %4, align 8, !tbaa !16
  %7 = load ptr, ptr %1, align 8, !tbaa !55
  %8 = tail call zeroext i8 @vinsn_cond_branch_p(ptr noundef %7) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !55
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = load ptr, ptr %0, align 8, !tbaa !255
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %19, label %15

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
  %22 = load ptr, ptr %1, align 8, !tbaa !55
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call ptr @vinsn_copy(ptr noundef nonnull %22, i8 noundef zeroext 0) #23
  call void @change_vinsn_in_expr(ptr noundef nonnull %1, ptr noundef %32) #23
  br label %37

33:                                               ; preds = %27, %19
  %34 = icmp eq i8 %21, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = call ptr @sel_move_insn(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %20) #23
  br label %39

37:                                               ; preds = %31, %33
  %38 = call fastcc ptr @emit_insn_from_expr_after(ptr noundef nonnull %1, ptr noundef null, i32 noundef %2, ptr noundef %20) #24
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %50

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
  br i1 %58, label %66, label %59

59:                                               ; preds = %50
  %60 = load ptr, ptr @s_i_d, align 8
  %61 = load ptr, ptr @sched_luids, align 8
  %62 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !6
  %64 = call fastcc i32 @VEC_int_base_index(ptr noundef %61, i32 noundef %63) #24
  %65 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %60, i32 noundef %64) #24
  call fastcc void @vinsn_vec_add(ptr noundef nonnull @vec_target_unavailable_vinsns, ptr noundef nonnull %65) #24
  br label %66

66:                                               ; preds = %59, %50
  %67 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr @current_loop_nest, align 8
  %70 = icmp eq ptr %69, null
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = call ptr @loop_latch_edge(ptr noundef nonnull %69) #23
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5462, ptr noundef nonnull @.str.1) #23
  br label %76

76:                                               ; preds = %66, %72, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_fence_and_insn(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @advance_state_on_fence(ptr noundef %0, ptr noundef %1) #24, !range !31
  %5 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 10
  store ptr %1, ptr %5, align 8, !tbaa !268
  %6 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_rtx_gc_safe_push(ptr noundef nonnull %6, ptr noundef %1) #24
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @s_i_d, align 8
  %12 = load ptr, ptr @sched_luids, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !6
  %15 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %12, i32 noundef %14) #24
  %16 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %11, i32 noundef %15) #24
  %17 = getelementptr inbounds %struct._sel_insn_data, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !269
  %19 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  store ptr %18, ptr %19, align 8, !tbaa !270
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, -268435457
  store i32 %21, ptr %1, align 8
  br label %24

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 12
  store ptr null, ptr %23, align 8, !tbaa !270
  br label %24

24:                                               ; preds = %22, %10
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !271
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !272
  %33 = sext i32 %26 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  store i32 0, ptr %34, align 4, !tbaa !28
  %35 = load i32, ptr %25, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i32 [ %35, %30 ], [ %26, %24 ]
  %38 = load ptr, ptr @s_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %37) #24
  %41 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %40) #24
  %42 = getelementptr inbounds %struct._expr, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !52
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !52
  %45 = load i32, ptr %25, align 8, !tbaa !6
  %46 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %45) #24
  %47 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %46) #24
  %48 = getelementptr inbounds %struct._expr, ptr %47, i64 0, i32 11
  store i8 1, ptr %48, align 8, !tbaa !273
  %49 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !249
  %51 = load i32, ptr %25, align 8, !tbaa !6
  %52 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %51) #24
  %53 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %52) #24
  %54 = getelementptr inbounds %struct._expr, ptr %53, i64 0, i32 9
  store i32 %50, ptr %54, align 8, !tbaa !274
  %55 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %56 = load i8, ptr %55, align 8
  %57 = load i32, ptr %25, align 8, !tbaa !6
  %58 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %57) #24
  %59 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %58) #24
  %60 = getelementptr inbounds %struct._sel_insn_data, ptr %59, i64 0, i32 13
  %61 = load i8, ptr %60, align 4
  %62 = lshr i8 %56, 1
  %63 = and i8 %62, 4
  %64 = and i8 %61, -5
  %65 = or disjoint i8 %64, %63
  store i8 %65, ptr %60, align 4
  %66 = load i32, ptr %49, align 8, !tbaa !249
  %67 = load i32, ptr %25, align 8, !tbaa !6
  %68 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %67) #24
  %69 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %68) #24
  %70 = getelementptr inbounds %struct._sel_insn_data, ptr %69, i64 0, i32 10
  store i32 %66, ptr %70, align 8, !tbaa !275
  %71 = load i32, ptr %25, align 8, !tbaa !6
  %72 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %71) #24
  %73 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %38, i32 noundef %72) #24
  %74 = getelementptr inbounds %struct._sel_insn_data, ptr %73, i64 0, i32 10
  %75 = load i32, ptr %74, align 8, !tbaa !275
  %76 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !6
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %36
  %80 = tail call i32 @maximal_insn_latency(ptr noundef nonnull %1) #23
  %81 = add nsw i32 %80, 1
  %82 = load ptr, ptr @s_i_d, align 8
  %83 = load ptr, ptr @sched_luids, align 8
  %84 = load i32, ptr %25, align 8, !tbaa !6
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
  store i32 %90, ptr %93, align 4, !tbaa !276
  %94 = load i8, ptr %55, align 8
  %95 = and i8 %94, -9
  store i8 %95, ptr %55, align 8
  %96 = icmp ne i8 %4, 0
  %97 = icmp ne i32 %2, 0
  %98 = or i1 %97, %96
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  tail call fastcc void @advance_one_cycle(ptr noundef nonnull %0) #24
  %100 = load i8, ptr %55, align 8
  br label %101

101:                                              ; preds = %85, %99
  %102 = phi i8 [ %95, %85 ], [ %100, %99 ]
  %103 = or i8 %102, 2
  store i8 %103, ptr %55, align 8
  store i1 true, ptr @scheduled_something_on_previous_fence, align 1
  %104 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %126

106:                                              ; preds = %101
  %107 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = alloca [35 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %110, ptr noundef nonnull align 1 dereferenceable(18) @.str.78, i64 18, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %110) #23
  %111 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %112 = call i32 @fputs(ptr nonnull %110, ptr %111)
  br label %116

113:                                              ; preds = %106
  %114 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %115 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 17, i64 1, ptr %114)
  br label %116

116:                                              ; preds = %113, %109
  call void @dump_insn_1(ptr noundef nonnull %1, i32 noundef 1) #23
  %117 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = alloca [3 x i8], align 16
  store i16 10, ptr %120, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %120) #23
  %121 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %122 = call i32 @fputs(ptr nonnull %120, ptr %121)
  br label %126

123:                                              ; preds = %116
  %124 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %125 = call i32 @fputc(i32 10, ptr %124)
  br label %126

126:                                              ; preds = %119, %123, %101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @update_boundaries(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.succ_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %9 = getelementptr inbounds %struct._bnd, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !277
  tail call void @advance_deps_context(ptr noundef %10, ptr noundef %2) #23
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %6, ptr noundef nonnull %7, ptr noundef %2, i32 noundef 9) #24
  %11 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %2) #24
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._bnd, ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  br label %16

16:                                               ; preds = %13, %75
  %17 = phi ptr [ %4, %13 ], [ %76, %75 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %18 = load ptr, ptr %14, align 8, !tbaa !278
  %19 = call ptr @ilist_copy(ptr noundef %18) #23
  store ptr %19, ptr %8, align 8, !tbaa !16
  call fastcc void @_xlist_add(ptr noundef nonnull %8, ptr noundef %2) #24
  %20 = load i32, ptr %2, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %2) #23
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8, !tbaa !16
  %28 = load ptr, ptr %8, align 8, !tbaa !16
  %29 = call fastcc zeroext i8 @is_ineligible_successor(ptr noundef %27, ptr noundef %28) #24, !range !31
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call fastcc void @_list_clear(ptr noundef nonnull %8) #24
  br label %75

32:                                               ; preds = %26, %23, %16
  %33 = load ptr, ptr %0, align 8, !tbaa !240
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  %36 = call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %2) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %40 = icmp sgt i32 %39, 8
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %7, align 8, !tbaa !16
  br label %68

43:                                               ; preds = %38
  %44 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %15, align 8, !tbaa !6
  %48 = load ptr, ptr %7, align 8, !tbaa !16
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !6
  %51 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.79, i32 noundef %47, i32 noundef %50) #24
  %52 = shl nsw i32 %51, 1
  %53 = or disjoint i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = alloca i8, i64 %54, align 16
  %56 = load i32, ptr %15, align 8, !tbaa !6
  %57 = load i32, ptr %49, align 8, !tbaa !6
  %58 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %55, i64 noundef %54, ptr noundef nonnull @.str.79, i32 noundef %56, i32 noundef %57) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %55) #23
  %59 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %60 = call i32 @fputs(ptr nonnull %55, ptr %59)
  br label %68

61:                                               ; preds = %43
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %63 = load i32, ptr %15, align 8, !tbaa !6
  %64 = load ptr, ptr %7, align 8, !tbaa !16
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !6
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.79, i32 noundef %63, i32 noundef %66) #24
  br label %68

68:                                               ; preds = %41, %46, %61
  %69 = phi ptr [ %42, %41 ], [ %48, %46 ], [ %64, %61 ]
  store ptr %69, ptr %0, align 8, !tbaa !240
  br label %70

70:                                               ; preds = %68, %35, %32
  %71 = load ptr, ptr %7, align 8, !tbaa !16
  %72 = load ptr, ptr %8, align 8, !tbaa !16
  %73 = load ptr, ptr %9, align 8, !tbaa !277
  call void @blist_add(ptr noundef %17, ptr noundef %71, ptr noundef %72, ptr noundef %73) #23
  %74 = load ptr, ptr %17, align 8, !tbaa !16
  br label %75

75:                                               ; preds = %70, %31
  %76 = phi ptr [ %17, %31 ], [ %74, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call fastcc void @_succ_iter_next(ptr noundef nonnull %6) #24
  %77 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %2) #24
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %16, !llvm.loop !279

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
define internal fastcc void @moveup_set_inside_insn_group() unnamed_addr #0 {
  %1 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %2 = icmp sgt i32 %1, 5
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = alloca [87 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %7, ptr noundef nonnull align 1 dereferenceable(44) @.str.44, i64 44, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %7) #23
  %8 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %9 = call i32 @fputs(ptr nonnull %7, ptr %8)
  br label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %12 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 43, i64 1, ptr %11)
  br label %13

13:                                               ; preds = %6, %10, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @fill_ready_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !160
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4006, ptr noundef nonnull @.str.1) #23
  br label %8

8:                                                ; preds = %4, %7
  tail call fastcc void @process_pipelined_exprs(ptr noundef %0) #24
  tail call fastcc void @process_spec_exprs(ptr noundef %0) #24
  %9 = tail call fastcc ptr @process_use_exprs(ptr noundef %0) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !16
  %14 = tail call fastcc zeroext i8 @fill_vec_av_set(ptr noundef %13, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #24, !range !31
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  br label %18

17:                                               ; preds = %12
  tail call fastcc void @convert_vec_av_set_to_ready() #24
  br label %18

18:                                               ; preds = %17, %16, %11
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @invoke_reorder_hooks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !266
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8, !tbaa !282
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

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
  %17 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %13, -1
  store i32 %20, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8, !tbaa !282
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %24 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %25 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #23
  %26 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !249
  %28 = tail call i32 %22(ptr noundef %23, i32 noundef %24, ptr noundef %25, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %27) #23
  %29 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %21
  %32 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  br label %81

34:                                               ; preds = %8, %5
  %35 = load i32, ptr @issue_rate, align 4, !tbaa !28
  br label %123

36:                                               ; preds = %1
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !283
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #23
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !283
  %49 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %50 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %51 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #23
  %52 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !249
  %54 = tail call i32 %48(ptr noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %53) #23
  br label %81

55:                                               ; preds = %44
  %56 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = add nsw i32 %45, -1
  store i32 %59, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ %45, %55 ]
  %62 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !283
  %63 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %64 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %65 = icmp eq i32 %61, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #23
  br label %68

68:                                               ; preds = %60, %66
  %69 = phi ptr [ %67, %66 ], [ null, %60 ]
  %70 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !249
  %72 = tail call i32 %62(ptr noundef %63, i32 noundef %64, ptr noundef %69, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %71) #23
  %73 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  br label %81

78:                                               ; preds = %39, %36
  %79 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !252
  br label %123

81:                                               ; preds = %47, %75, %68, %21, %31
  %82 = phi i32 [ %28, %31 ], [ %28, %21 ], [ %54, %47 ], [ %72, %75 ], [ %72, %68 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %123, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr @ready, align 8, !tbaa !284
  %86 = load ptr, ptr @vec_av_set, align 8
  %87 = tail call fastcc ptr @VEC_expr_t_base_address(ptr noundef %86) #24
  %88 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = zext nneg i32 %88 to i64
  br label %92

92:                                               ; preds = %90, %120
  %93 = phi i64 [ 0, %90 ], [ %121, %120 ]
  %94 = getelementptr inbounds ptr, ptr %87, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !16
  %96 = load ptr, ptr %95, align 8, !tbaa !55
  %97 = load ptr, ptr %96, align 8, !tbaa !85
  %98 = getelementptr inbounds ptr, ptr %85, i64 %93
  %99 = load ptr, ptr %98, align 8, !tbaa !16
  %100 = icmp eq ptr %97, %99
  br i1 %100, label %120, label %101

101:                                              ; preds = %92, %108
  %102 = phi i64 [ %109, %108 ], [ %93, %92 ]
  %103 = getelementptr inbounds ptr, ptr %87, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !16
  %105 = load ptr, ptr %104, align 8, !tbaa !55
  %106 = load ptr, ptr %105, align 8, !tbaa !85
  %107 = icmp eq ptr %106, %99
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = add nuw nsw i64 %102, 1
  %110 = icmp eq i64 %109, %91
  br i1 %110, label %111, label %101, !llvm.loop !285

111:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4140, ptr noundef nonnull @.str.1) #23
  %112 = load ptr, ptr %94, align 8, !tbaa !16
  br label %115

113:                                              ; preds = %101
  %114 = and i64 %102, 4294967295
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i64 [ %114, %113 ], [ %91, %111 ]
  %117 = phi ptr [ %95, %113 ], [ %112, %111 ]
  %118 = getelementptr inbounds ptr, ptr %87, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !16
  store ptr %119, ptr %94, align 8, !tbaa !16
  store ptr %117, ptr %118, align 8, !tbaa !16
  br label %120

120:                                              ; preds = %92, %115
  %121 = add nuw nsw i64 %93, 1
  %122 = icmp eq i64 %121, %91
  br i1 %122, label %123, label %92, !llvm.loop !286

123:                                              ; preds = %120, %84, %78, %34, %81
  %124 = phi i32 [ 0, %81 ], [ %80, %78 ], [ %35, %34 ], [ %82, %84 ], [ %82, %120 ]
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invoke_dfa_lookahead_guard() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 18), align 8, !tbaa !287
  %2 = icmp eq ptr %1, null
  %3 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = alloca [43 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(22) @.str.69, i64 22, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %9) #23
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %11 = call i32 @fputs(ptr nonnull %9, ptr %10)
  br label %15

12:                                               ; preds = %5
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %14 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 21, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %8, %12, %0
  %16 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %15, %76
  %19 = phi i64 [ %77, %76 ], [ 0, %15 ]
  %20 = trunc i64 %19 to i32
  %21 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %20) #23
  %22 = icmp eq i64 %19, 0
  %23 = or i1 %2, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 18), align 8, !tbaa !287
  %26 = call i32 %25(ptr noundef %21) #23
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %18, %24
  %30 = phi i8 [ %28, %24 ], [ 0, %18 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !6
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4196, ptr noundef nonnull @.str.1) #23
  br label %35

35:                                               ; preds = %29, %34
  %36 = load ptr, ptr @ready_try, align 8, !tbaa !16
  %37 = getelementptr inbounds i8, ptr %36, i64 %19
  %38 = load i8, ptr %37, align 1, !tbaa !6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4200, ptr noundef nonnull @.str.1) #23
  %41 = load ptr, ptr @ready_try, align 8, !tbaa !16
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi ptr [ %36, %35 ], [ %41, %40 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 %19
  store i8 %30, ptr %44, align 1, !tbaa !6
  %45 = call fastcc ptr @find_expr_for_ready(i32 noundef %20) #24
  %46 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load ptr, ptr %45, align 8, !tbaa !55
  call void @dump_vinsn(ptr noundef %49) #23
  %50 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @ready_try, align 8, !tbaa !16
  %54 = getelementptr inbounds i8, ptr %53, i64 %19
  %55 = load i8, ptr %54, align 1, !tbaa !6
  %56 = sext i8 %55 to i32
  %57 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.70, i32 noundef %56) #24
  %58 = shl nsw i32 %57, 1
  %59 = or disjoint i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = alloca i8, i64 %60, align 16
  %62 = load ptr, ptr @ready_try, align 8, !tbaa !16
  %63 = getelementptr inbounds i8, ptr %62, i64 %19
  %64 = load i8, ptr %63, align 1, !tbaa !6
  %65 = sext i8 %64 to i32
  %66 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %61, i64 noundef %60, ptr noundef nonnull @.str.70, i32 noundef %65) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %61) #23
  %67 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %68 = call i32 @fputs(ptr nonnull %61, ptr %67)
  br label %76

69:                                               ; preds = %48
  %70 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %71 = load ptr, ptr @ready_try, align 8, !tbaa !16
  %72 = getelementptr inbounds i8, ptr %71, i64 %19
  %73 = load i8, ptr %72, align 1, !tbaa !6
  %74 = sext i8 %73 to i32
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.70, i32 noundef %74) #24
  br label %76

76:                                               ; preds = %52, %69, %42
  %77 = add nuw nsw i64 %19, 1
  %78 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %18, label %81, !llvm.loop !288

81:                                               ; preds = %76, %15
  %82 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = alloca [3 x i8], align 16
  store i16 10, ptr %88, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %88) #23
  %89 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %90 = call i32 @fputs(ptr nonnull %88, ptr %89)
  br label %94

91:                                               ; preds = %84
  %92 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %93 = call i32 @fputc(i32 10, ptr %92)
  br label %94

94:                                               ; preds = %87, %91, %81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @calculate_privileged_insns() unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %41

3:                                                ; preds = %0
  %4 = load ptr, ptr @ready_try, align 8, !tbaa !16
  br label %5

5:                                                ; preds = %3, %31
  %6 = phi i32 [ %1, %3 ], [ %32, %31 ]
  %7 = phi ptr [ %4, %3 ], [ %33, %31 ]
  %8 = phi i64 [ 0, %3 ], [ %36, %31 ]
  %9 = phi ptr [ null, %3 ], [ %35, %31 ]
  %10 = phi i32 [ 0, %3 ], [ %34, %31 ]
  %11 = getelementptr inbounds i8, ptr %7, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %5
  %15 = icmp eq ptr %9, null
  %16 = trunc i64 %8 to i32
  br i1 %15, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @find_expr_for_ready(i32 noundef %16) #24
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ %9, %14 ]
  %21 = tail call fastcc ptr @find_expr_for_ready(i32 noundef %16) #24
  %22 = getelementptr inbounds %struct._expr, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !157
  %24 = getelementptr inbounds %struct._expr, ptr %20, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !157
  %26 = icmp sgt i32 %23, %25
  %27 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  br i1 %26, label %41, label %28

28:                                               ; preds = %19
  %29 = load ptr, ptr @ready_try, align 8, !tbaa !16
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
  br i1 %38, label %5, label %39, !llvm.loop !289

39:                                               ; preds = %31
  %40 = trunc i64 %36 to i32
  br label %41

41:                                               ; preds = %19, %39, %0
  %42 = phi i32 [ %1, %0 ], [ %32, %39 ], [ %27, %19 ]
  %43 = phi i32 [ 0, %0 ], [ %40, %39 ], [ %16, %19 ]
  %44 = phi i32 [ 0, %0 ], [ %34, %39 ], [ %10, %19 ]
  %45 = phi ptr [ null, %0 ], [ %35, %39 ], [ %20, %19 ]
  %46 = icmp eq i32 %43, %42
  %47 = select i1 %46, i32 0, i32 %44
  %48 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %82

50:                                               ; preds = %41
  %51 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50
  %54 = icmp eq i32 %47, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct._expr, ptr %45, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !157
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
  %67 = load i32, ptr %66, align 8, !tbaa !157
  br label %68

68:                                               ; preds = %58, %65
  %69 = phi i32 [ %67, %65 ], [ -1, %58 ]
  %70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %64, i64 noundef %63, ptr noundef nonnull @.str.71, i32 noundef %47, i32 noundef %69) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %64) #23
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %72 = call i32 @fputs(ptr nonnull %64, ptr %71)
  br label %82

73:                                               ; preds = %50
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %75 = icmp eq i32 %47, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._expr, ptr %45, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !157
  br label %79

79:                                               ; preds = %73, %76
  %80 = phi i32 [ %78, %76 ], [ -1, %73 ]
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.71, i32 noundef %47, i32 noundef %80) #24
  br label %82

82:                                               ; preds = %68, %79, %41
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @choose_best_insn(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @dfa_lookahead, align 4, !tbaa !28
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %35, label %65

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !266
  store i32 %11, ptr @cycle_issued_insns, align 4, !tbaa !28
  %12 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !290
  %14 = tail call i32 @max_issue(ptr noundef nonnull @ready, i32 noundef %1, ptr noundef %13, ptr noundef %2) #23
  %15 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %71

17:                                               ; preds = %9
  %18 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %10, align 4, !tbaa !266
  %22 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.72, i32 noundef %14, i32 noundef %21) #24
  %23 = shl nsw i32 %22, 1
  %24 = or disjoint i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  %27 = load i32, ptr %10, align 4, !tbaa !266
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %26, i64 noundef %25, ptr noundef nonnull @.str.72, i32 noundef %14, i32 noundef %27) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %26) #23
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %30 = call i32 @fputs(ptr nonnull %26, ptr %29)
  br label %71

31:                                               ; preds = %17
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %33 = load i32, ptr %10, align 4, !tbaa !266
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.72, i32 noundef %14, i32 noundef %33) #24
  br label %71

35:                                               ; preds = %6, %61
  %36 = phi i32 [ %62, %61 ], [ 0, %6 ]
  %37 = tail call fastcc ptr @find_expr_for_ready(i32 noundef %36) #24
  %38 = tail call fastcc i32 @get_expr_cost(ptr noundef %37, ptr noundef %0) #24, !range !291
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load i32, ptr @can_issue_more, align 4, !tbaa !28
  store i32 %36, ptr %2, align 4, !tbaa !28
  %42 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
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
  %55 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %56 = call i32 @fputs(ptr nonnull %53, ptr %55)
  br label %65

57:                                               ; preds = %44
  %58 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %59 = add nuw nsw i32 %36, 1
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.73, i32 noundef %59) #24
  br label %65

61:                                               ; preds = %35
  %62 = add nuw nsw i32 %36, 1
  %63 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %35, label %65, !llvm.loop !292

65:                                               ; preds = %61, %6, %40, %57, %47
  %66 = phi i32 [ %36, %47 ], [ %36, %57 ], [ %36, %40 ], [ 0, %6 ], [ %62, %61 ]
  %67 = phi i32 [ %41, %47 ], [ %41, %57 ], [ %41, %40 ], [ 0, %6 ], [ 0, %61 ]
  %68 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 -1, ptr %2, align 4, !tbaa !28
  br label %71

71:                                               ; preds = %65, %70, %9, %31, %20
  %72 = phi i32 [ %14, %20 ], [ %14, %31 ], [ %14, %9 ], [ 0, %70 ], [ %67, %65 ]
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @find_expr_for_ready(i32 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4
  %3 = sub nsw i32 %2, %0
  %4 = load ptr, ptr @vec_av_set, align 8
  %5 = tail call fastcc ptr @VEC_expr_t_base_index(ptr noundef %4, i32 noundef %3) #24
  %6 = load ptr, ptr @ready, align 8, !tbaa !284
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = load ptr, ptr %5, align 8, !tbaa !55
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4164, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %1, %13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @invoke_aftermath_hooks(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4258, ptr noundef nonnull @.str.1) #23
  br label %9

9:                                                ; preds = %3, %8
  tail call fastcc void @sel_dfa_new_cycle(ptr noundef nonnull %1, ptr noundef %0) #24
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !293
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !290
  %16 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %15, i64 %16, i1 false)
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !293
  %18 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %19 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %20 = tail call i32 %17(ptr noundef %18, i32 noundef %19, ptr noundef nonnull %1, i32 noundef %2) #23
  %21 = load ptr, ptr %14, align 8, !tbaa !290
  %22 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %23 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %23, i1 false)
  br label %32

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
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
define internal fastcc void @process_pipelined_exprs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #24, !range !31
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1, %17
  %9 = load ptr, ptr %2, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct._expr, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = load ptr, ptr @compiler_params, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.param_info, ptr %12, i64 86, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !216
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %17

17:                                               ; preds = %8, %16
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %18 = load ptr, ptr %3, align 8, !tbaa !124
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %19, ptr noundef nonnull %2) #24, !range !31
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %8, !llvm.loop !294

22:                                               ; preds = %17, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_spec_exprs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = load ptr, ptr @spec_info, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %88, label %6

6:                                                ; preds = %1
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %7 = load ptr, ptr %3, align 8, !tbaa !124
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %2) #24, !range !31
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %6, %50
  %12 = phi i8 [ %52, %50 ], [ 1, %6 ]
  %13 = phi i8 [ %51, %50 ], [ 1, %6 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !94
  %17 = and i32 %16, 16777215
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load ptr, ptr @spec_info, align 8, !tbaa !16
  br label %34

21:                                               ; preds = %11
  %22 = call i32 @ds_weak(i32 noundef %16) #23
  %23 = load ptr, ptr @spec_info, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.spec_info_def, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !109
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._expr, ptr %14, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !295
  %30 = getelementptr inbounds %struct.spec_info_def, ptr %23, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !296
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %50

34:                                               ; preds = %19, %27
  %35 = phi ptr [ %20, %19 ], [ %23, %27 ]
  %36 = getelementptr inbounds %struct.spec_info_def, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !80
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
  %53 = load ptr, ptr %3, align 8, !tbaa !124
  %54 = load ptr, ptr %53, align 8, !tbaa !16
  %55 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %54, ptr noundef nonnull %2) #24, !range !31
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %11, !llvm.loop !297

57:                                               ; preds = %50
  %58 = icmp ne i8 %52, 0
  %59 = icmp ne i8 %51, 0
  br label %60

60:                                               ; preds = %57, %6
  %61 = phi i1 [ true, %6 ], [ %59, %57 ]
  %62 = phi i1 [ true, %6 ], [ %58, %57 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %63 = load ptr, ptr %3, align 8, !tbaa !124
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  %65 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %64, ptr noundef nonnull %2) #24, !range !31
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %60, %83
  %68 = load ptr, ptr %2, align 8, !tbaa !16
  %69 = getelementptr inbounds %struct._expr, ptr %68, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !94
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
  %84 = load ptr, ptr %3, align 8, !tbaa !124
  %85 = load ptr, ptr %84, align 8, !tbaa !16
  %86 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %85, ptr noundef nonnull %2) #24, !range !31
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %67, !llvm.loop !298

88:                                               ; preds = %83, %60, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @process_use_exprs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %5, ptr noundef nonnull %2) #24, !range !31
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %1, %29
  %9 = phi i8 [ %31, %29 ], [ 1, %1 ]
  %10 = phi i8 [ %30, %29 ], [ 0, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !16
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = call fastcc i32 @recog_memoized(ptr noundef %13) #24
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct._expr, ptr %11, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !49
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._expr, ptr %11, i64 0, i32 11
  %22 = load i8, ptr %21, align 8, !tbaa !65
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %76, label %24

24:                                               ; preds = %20
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %29

25:                                               ; preds = %16
  %26 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3532, ptr noundef nonnull @.str.1) #23
  br label %29

29:                                               ; preds = %8, %28, %25, %24
  %30 = phi i8 [ %10, %24 ], [ 1, %25 ], [ 1, %28 ], [ %10, %8 ]
  %31 = phi i8 [ %9, %24 ], [ %9, %25 ], [ %9, %28 ], [ 0, %8 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %32 = load ptr, ptr %3, align 8, !tbaa !124
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %33, ptr noundef nonnull %2) #24, !range !31
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %8, !llvm.loop !299

36:                                               ; preds = %29
  %37 = icmp eq i8 %30, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %36
  %39 = icmp eq i8 %31, 0
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %40 = load ptr, ptr %3, align 8, !tbaa !124
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  %42 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %41, ptr noundef nonnull %2) #24, !range !31
  %43 = icmp eq i8 %42, 0
  br i1 %39, label %44, label %58

44:                                               ; preds = %38
  br i1 %43, label %76, label %45

45:                                               ; preds = %44, %53
  %46 = load ptr, ptr %2, align 8, !tbaa !16
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 1, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !6
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %53

53:                                               ; preds = %45, %52
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %54 = load ptr, ptr %3, align 8, !tbaa !124
  %55 = load ptr, ptr %54, align 8, !tbaa !16
  %56 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %55, ptr noundef nonnull %2) #24, !range !31
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %76, label %45, !llvm.loop !300

58:                                               ; preds = %38
  br i1 %43, label %76, label %59

59:                                               ; preds = %58, %71
  %60 = load ptr, ptr %2, align 8, !tbaa !16
  %61 = load ptr, ptr %60, align 8, !tbaa !55
  %62 = load ptr, ptr %61, align 8, !tbaa !85
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 1, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !6
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3555, ptr noundef nonnull @.str.1) #23
  br label %67

67:                                               ; preds = %59, %66
  %68 = getelementptr inbounds %struct._expr, ptr %60, i64 0, i32 11
  %69 = load i8, ptr %68, align 8, !tbaa !65
  %70 = icmp eq i8 %69, 1
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %72 = load ptr, ptr %3, align 8, !tbaa !124
  %73 = load ptr, ptr %72, align 8, !tbaa !16
  %74 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %73, ptr noundef nonnull %2) #24, !range !31
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %59, !llvm.loop !301

76:                                               ; preds = %20, %67, %71, %53, %1, %58, %44, %36
  %77 = phi ptr [ null, %36 ], [ null, %44 ], [ null, %58 ], [ null, %1 ], [ null, %53 ], [ %60, %67 ], [ null, %71 ], [ %11, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fill_vec_av_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store ptr %0, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %9 = getelementptr inbounds %struct._list_node, ptr %1, i64 0, i32 1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %0, null
  br i1 %11, label %546, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @vec_av_set, align 8
  %14 = tail call fastcc i32 @VEC_expr_t_base_length(ptr noundef %13) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call fastcc void @VEC_expr_t_base_block_remove(ptr noundef %13, i32 noundef %14) #24
  %17 = load ptr, ptr @vec_av_set, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %13, %12 ]
  %20 = tail call fastcc i32 @VEC_expr_t_base_length(ptr noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3710, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %18, %22
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %5, i8 noundef zeroext 0) #24
  %24 = load ptr, ptr %6, align 8, !tbaa !124
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %25, ptr noundef nonnull %7) #24, !range !31
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %23, %37
  %29 = load ptr, ptr %7, align 8, !tbaa !16
  call fastcc void @VEC_expr_t_heap_safe_push(ptr noundef %29) #24
  %30 = getelementptr inbounds %struct._expr, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !302
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 4, !tbaa !28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3715, ptr noundef nonnull @.str.1) #23
  br label %37

37:                                               ; preds = %28, %33, %36
  call fastcc void @sel_target_adjust_priority(ptr noundef nonnull %29) #24
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %38 = load ptr, ptr %6, align 8, !tbaa !124
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %39, ptr noundef nonnull %7) #24, !range !31
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %28, !llvm.loop !303

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
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 -2147483648, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !28
  store i32 -2147483648, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !28
  br label %52

52:                                               ; preds = %51, %42
  %53 = load ptr, ptr @vec_av_set, align 8
  %54 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %53) #24
  %55 = add i32 %54, -1
  %56 = icmp sgt i32 %55, -1
  %57 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 12
  br i1 %56, label %58, label %448

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 9
  %60 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 8
  %61 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 2
  br label %62

62:                                               ; preds = %58, %438
  %63 = phi i32 [ %55, %58 ], [ %442, %438 ]
  %64 = phi i32 [ 0, %58 ], [ %441, %438 ]
  %65 = phi i32 [ 0, %58 ], [ %440, %438 ]
  %66 = phi i32 [ %54, %58 ], [ %63, %438 ]
  %67 = phi i32 [ -1, %58 ], [ %439, %438 ]
  %68 = load ptr, ptr @vec_av_set, align 8
  %69 = call fastcc ptr @VEC_expr_t_base_index(ptr noundef %68, i32 noundef %63) #24
  %70 = load ptr, ptr %69, align 8, !tbaa !55
  %71 = load ptr, ptr %70, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #25
  store i8 1, ptr %8, align 1, !tbaa !6
  %72 = load ptr, ptr %57, align 8, !tbaa !270
  %73 = icmp eq ptr %72, null
  %74 = icmp eq ptr %71, %72
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %68, i32 noundef %63) #24
  br label %438

77:                                               ; preds = %62
  %78 = xor i1 %73, true
  %79 = zext i1 %78 to i32
  %80 = add nsw i32 %64, %79
  %81 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 11
  %82 = load i8, ptr %81, align 8, !tbaa !65
  %83 = load ptr, ptr @vec_target_unavailable_vinsns, align 8, !tbaa !16
  %84 = call fastcc zeroext i8 @vinsn_vec_has_expr_p(ptr noundef %83, ptr noundef nonnull %69) #24, !range !31
  %85 = load ptr, ptr @vec_bookkeeping_blocked_vinsns, align 8, !tbaa !16
  %86 = call fastcc zeroext i8 @vinsn_vec_has_expr_p(ptr noundef %85, ptr noundef nonnull %69) #24, !range !31
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %77
  %89 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %89, i32 noundef %63) #24
  %90 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %91 = icmp sgt i32 %90, 3
  br i1 %91, label %92, label %438

92:                                               ; preds = %88
  %93 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !6
  %98 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.49, i32 noundef %97) #24
  %99 = shl nsw i32 %98, 1
  %100 = or disjoint i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = alloca i8, i64 %101, align 16
  %103 = load i32, ptr %96, align 8, !tbaa !6
  %104 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %102, i64 noundef %101, ptr noundef nonnull @.str.49, i32 noundef %103) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %102) #23
  %105 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %106 = call i32 @fputs(ptr nonnull %102, ptr %105)
  br label %438

107:                                              ; preds = %92
  %108 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %109 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !6
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.49, i32 noundef %110) #24
  br label %438

112:                                              ; preds = %77
  %113 = icmp eq i8 %84, 0
  %114 = select i1 %113, i8 %82, i8 -1
  switch i8 %114, label %126 [
    i8 1, label %115
    i8 0, label %121
  ]

115:                                              ; preds = %112
  %116 = load ptr, ptr %69, align 8, !tbaa !55
  %117 = getelementptr inbounds %struct.vinsn_def, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !56
  %119 = icmp eq i32 %118, 23
  %120 = zext i1 %119 to i8
  store i8 %120, ptr %8, align 1, !tbaa !6
  br label %164

121:                                              ; preds = %112
  %122 = load ptr, ptr %69, align 8, !tbaa !55
  %123 = getelementptr inbounds %struct.vinsn_def, ptr %122, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !56
  %125 = icmp eq i32 %124, 23
  br i1 %125, label %126, label %140

126:                                              ; preds = %112, %121
  %127 = load ptr, ptr @vec_av_set, align 8
  %128 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %127) #24
  %129 = sub i32 %128, %66
  %130 = load i32, ptr @max_insns_to_rename, align 4, !tbaa !28
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 7
  %134 = load i32, ptr %133, align 8, !tbaa !94
  %135 = and i32 %134, 63
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = call fastcc zeroext i8 @find_best_reg_for_expr(ptr noundef nonnull %69, ptr noundef %1, ptr noundef nonnull %8) #24
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %137, %132, %126, %121
  %141 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %141, i32 noundef %63) #24
  %142 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %143 = icmp sgt i32 %142, 3
  br i1 %143, label %144, label %438

144:                                              ; preds = %140
  %145 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !6
  %150 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %149) #24
  %151 = shl nsw i32 %150, 1
  %152 = or disjoint i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = alloca i8, i64 %153, align 16
  %155 = load i32, ptr %148, align 8, !tbaa !6
  %156 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %154, i64 noundef %153, ptr noundef nonnull @.str.50, i32 noundef %155) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %154) #23
  %157 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %158 = call i32 @fputs(ptr nonnull %154, ptr %157)
  br label %438

159:                                              ; preds = %144
  %160 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %161 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %162 = load i32, ptr %161, align 8, !tbaa !6
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.50, i32 noundef %162) #24
  br label %438

164:                                              ; preds = %137, %115
  %165 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %243, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 9
  %169 = load i32, ptr %168, align 8, !tbaa !304
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %243

171:                                              ; preds = %167
  %172 = load i8, ptr %8, align 1, !tbaa !6
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 7
  %176 = load i32, ptr %175, align 8, !tbaa !94
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %243, label %178

178:                                              ; preds = %174, %171
  %179 = load ptr, ptr %69, align 8, !tbaa !55
  %180 = call i32 @sel_vinsn_cost(ptr noundef %179) #23
  %181 = load ptr, ptr @current_loop_nest, align 8, !tbaa !16
  %182 = getelementptr inbounds %struct.loop, ptr %181, i64 0, i32 1
  %183 = load i32, ptr %182, align 4, !tbaa !305
  %184 = icmp slt i32 %183, 9
  br i1 %184, label %185, label %209

185:                                              ; preds = %178
  %186 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %186, i32 noundef %63) #24
  %187 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %188 = icmp sgt i32 %187, 3
  br i1 %188, label %189, label %438

189:                                              ; preds = %185
  %190 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !6
  %195 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %194) #24
  %196 = shl nsw i32 %195, 1
  %197 = or disjoint i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = alloca i8, i64 %198, align 16
  %200 = load i32, ptr %193, align 8, !tbaa !6
  %201 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %199, i64 noundef %198, ptr noundef nonnull @.str.51, i32 noundef %200) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %199) #23
  %202 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %203 = call i32 @fputs(ptr nonnull %199, ptr %202)
  br label %438

204:                                              ; preds = %189
  %205 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %206 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !6
  %208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef nonnull @.str.51, i32 noundef %207) #24
  br label %438

209:                                              ; preds = %178
  %210 = load i32, ptr @num_insns_scheduled, align 4, !tbaa !28
  %211 = sub nsw i32 %183, %210
  %212 = load i32, ptr @issue_rate, align 4, !tbaa !28
  %213 = mul nsw i32 %212, %180
  %214 = sdiv i32 %213, 2
  %215 = icmp slt i32 %211, %214
  %216 = load i32, ptr @fill_vec_av_set.est_ticks_till_branch, align 4
  %217 = icmp slt i32 %216, %180
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %243

219:                                              ; preds = %209
  %220 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %220, i32 noundef %63) #24
  %221 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %222 = icmp sgt i32 %221, 3
  br i1 %222, label %223, label %438

223:                                              ; preds = %219
  %224 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %228 = load i32, ptr %227, align 8, !tbaa !6
  %229 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %228) #24
  %230 = shl nsw i32 %229, 1
  %231 = or disjoint i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = alloca i8, i64 %232, align 16
  %234 = load i32, ptr %227, align 8, !tbaa !6
  %235 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %233, i64 noundef %232, ptr noundef nonnull @.str.51, i32 noundef %234) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %233) #23
  %236 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %237 = call i32 @fputs(ptr nonnull %233, ptr %236)
  br label %438

238:                                              ; preds = %223
  %239 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %240 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !6
  %242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef nonnull @.str.51, i32 noundef %241) #24
  br label %438

243:                                              ; preds = %209, %174, %167, %164
  %244 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %71) #23
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %279, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %248 = load i32, ptr %247, align 8, !tbaa !306
  %249 = load i32, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !28
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %279

251:                                              ; preds = %246
  %252 = add nsw i32 %65, 1
  %253 = icmp slt i32 %67, 0
  %254 = call i32 @llvm.smin.i32(i32 %67, i32 1)
  %255 = select i1 %253, i32 1, i32 %254
  %256 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %256, i32 noundef %63) #24
  %257 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %258 = icmp sgt i32 %257, 3
  br i1 %258, label %259, label %438

259:                                              ; preds = %251
  %260 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !6
  %265 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.52, i32 noundef %264) #24
  %266 = shl nsw i32 %265, 1
  %267 = or disjoint i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = alloca i8, i64 %268, align 16
  %270 = load i32, ptr %263, align 8, !tbaa !6
  %271 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %269, i64 noundef %268, ptr noundef nonnull @.str.52, i32 noundef %270) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %269) #23
  %272 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %273 = call i32 @fputs(ptr nonnull %269, ptr %272)
  br label %438

274:                                              ; preds = %259
  %275 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %276 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %277 = load i32, ptr %276, align 8, !tbaa !6
  %278 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.52, i32 noundef %277) #24
  br label %438

279:                                              ; preds = %246, %243
  %280 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 9
  %281 = load i32, ptr %280, align 8, !tbaa !304
  %282 = icmp slt i32 %281, 1
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = load i32, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !28
  %285 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %286 = load i32, ptr %285, align 8, !tbaa !306
  %287 = call i32 @llvm.smax.i32(i32 %284, i32 %286)
  store i32 %287, ptr @fill_vec_av_set.av_max_prio, align 4, !tbaa !28
  br label %288

288:                                              ; preds = %283, %279
  %289 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !6
  %291 = load i32, ptr %59, align 8, !tbaa !271
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %346

293:                                              ; preds = %288
  %294 = load ptr, ptr %60, align 8, !tbaa !272
  %295 = sext i32 %290 to i64
  %296 = getelementptr inbounds i32, ptr %294, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !28
  %298 = load i32, ptr %61, align 8, !tbaa !249
  %299 = sub nsw i32 %297, %298
  br i1 %282, label %300, label %306

300:                                              ; preds = %293
  %301 = load i32, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !28
  %302 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %303 = load i32, ptr %302, align 8, !tbaa !306
  %304 = add nsw i32 %303, %299
  %305 = call i32 @llvm.smax.i32(i32 %301, i32 %304)
  store i32 %305, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !28
  br label %306

306:                                              ; preds = %300, %293
  %307 = icmp sgt i32 %299, 0
  br i1 %307, label %308, label %346

308:                                              ; preds = %306
  %309 = add nsw i32 %65, 1
  %310 = icmp slt i32 %67, 0
  %311 = call i32 @llvm.smin.i32(i32 %67, i32 %299)
  %312 = select i1 %310, i32 %299, i32 %311
  %313 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %313, i32 noundef %63) #24
  %314 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %315 = icmp sgt i32 %314, 3
  br i1 %315, label %316, label %438

316:                                              ; preds = %308
  %317 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %338, label %319

319:                                              ; preds = %316
  %320 = load i32, ptr %289, align 8, !tbaa !6
  %321 = load ptr, ptr %60, align 8, !tbaa !272
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, ptr %321, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !28
  %325 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.53, i32 noundef %320, i32 noundef %324) #24
  %326 = shl nsw i32 %325, 1
  %327 = or disjoint i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = alloca i8, i64 %328, align 16
  %330 = load i32, ptr %289, align 8, !tbaa !6
  %331 = load ptr, ptr %60, align 8, !tbaa !272
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, ptr %331, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !28
  %335 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %329, i64 noundef %328, ptr noundef nonnull @.str.53, i32 noundef %330, i32 noundef %334) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %329) #23
  %336 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %337 = call i32 @fputs(ptr nonnull %329, ptr %336)
  br label %438

338:                                              ; preds = %316
  %339 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %340 = load i32, ptr %289, align 8, !tbaa !6
  %341 = load ptr, ptr %60, align 8, !tbaa !272
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i32, ptr %341, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !28
  %345 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.53, i32 noundef %340, i32 noundef %344) #24
  br label %438

346:                                              ; preds = %306, %288
  %347 = call i32 @tick_check_p(ptr noundef nonnull %69, ptr noundef %10, ptr noundef nonnull %2) #23
  %348 = load i32, ptr %280, align 8, !tbaa !304
  %349 = icmp slt i32 %348, 1
  br i1 %349, label %350, label %359

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 3
  %352 = load i32, ptr %351, align 8, !tbaa !306
  %353 = getelementptr inbounds %struct._expr, ptr %69, i64 0, i32 4
  %354 = load i32, ptr %353, align 4, !tbaa !302
  %355 = add i32 %352, %347
  %356 = add i32 %355, %354
  %357 = load i32, ptr @fill_vec_av_set.est_ticks_till_branch, align 4
  %358 = call i32 @llvm.smax.i32(i32 %357, i32 %356)
  store i32 %358, ptr @fill_vec_av_set.est_ticks_till_branch, align 4, !tbaa !28
  br label %359

359:                                              ; preds = %350, %346
  %360 = icmp sgt i32 %347, 0
  br i1 %360, label %361, label %417

361:                                              ; preds = %359
  %362 = load i32, ptr %289, align 8, !tbaa !6
  %363 = load i32, ptr %59, align 8, !tbaa !271
  %364 = icmp slt i32 %362, %363
  %365 = load ptr, ptr %60, align 8, !tbaa !272
  br i1 %364, label %373, label %366

366:                                              ; preds = %361
  %367 = mul nsw i32 %362, 3
  %368 = sdiv i32 %367, 2
  %369 = sext i32 %368 to i64
  %370 = sext i32 %363 to i64
  %371 = call ptr @xrecalloc(ptr noundef %365, i64 noundef %369, i64 noundef %370, i64 noundef 4) #23
  store ptr %371, ptr %60, align 8, !tbaa !272
  %372 = load i32, ptr %289, align 8, !tbaa !6
  br label %373

373:                                              ; preds = %366, %361
  %374 = phi i32 [ %372, %366 ], [ %362, %361 ]
  %375 = phi ptr [ %371, %366 ], [ %365, %361 ]
  %376 = load i32, ptr %61, align 8, !tbaa !249
  %377 = add nsw i32 %376, %347
  %378 = sext i32 %374 to i64
  %379 = getelementptr inbounds i32, ptr %375, i64 %378
  store i32 %377, ptr %379, align 4, !tbaa !28
  %380 = add nsw i32 %65, 1
  %381 = icmp slt i32 %67, 0
  %382 = call i32 @llvm.smin.i32(i32 %67, i32 %347)
  %383 = select i1 %381, i32 %347, i32 %382
  %384 = load ptr, ptr @vec_av_set, align 8
  call fastcc void @VEC_expr_t_base_unordered_remove(ptr noundef %384, i32 noundef %63) #24
  %385 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %386 = icmp sgt i32 %385, 3
  br i1 %386, label %387, label %438

387:                                              ; preds = %373
  %388 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %409, label %390

390:                                              ; preds = %387
  %391 = load i32, ptr %289, align 8, !tbaa !6
  %392 = load ptr, ptr %60, align 8, !tbaa !272
  %393 = sext i32 %391 to i64
  %394 = getelementptr inbounds i32, ptr %392, i64 %393
  %395 = load i32, ptr %394, align 4, !tbaa !28
  %396 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.54, i32 noundef %391, i32 noundef %395) #24
  %397 = shl nsw i32 %396, 1
  %398 = or disjoint i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = alloca i8, i64 %399, align 16
  %401 = load i32, ptr %289, align 8, !tbaa !6
  %402 = load ptr, ptr %60, align 8, !tbaa !272
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i32, ptr %402, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !28
  %406 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %400, i64 noundef %399, ptr noundef nonnull @.str.54, i32 noundef %401, i32 noundef %405) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %400) #23
  %407 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %408 = call i32 @fputs(ptr nonnull %400, ptr %407)
  br label %438

409:                                              ; preds = %387
  %410 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %411 = load i32, ptr %289, align 8, !tbaa !6
  %412 = load ptr, ptr %60, align 8, !tbaa !272
  %413 = sext i32 %411 to i64
  %414 = getelementptr inbounds i32, ptr %412, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !28
  %416 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %410, ptr noundef nonnull @.str.54, i32 noundef %411, i32 noundef %415) #24
  br label %438

417:                                              ; preds = %359
  %418 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %419 = icmp sgt i32 %418, 3
  br i1 %419, label %420, label %438

420:                                              ; preds = %417
  %421 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %434, label %423

423:                                              ; preds = %420
  %424 = load i32, ptr %289, align 8, !tbaa !6
  %425 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %424) #24
  %426 = shl nsw i32 %425, 1
  %427 = or disjoint i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = alloca i8, i64 %428, align 16
  %430 = load i32, ptr %289, align 8, !tbaa !6
  %431 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %429, i64 noundef %428, ptr noundef nonnull @.str.55, i32 noundef %430) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %429) #23
  %432 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %433 = call i32 @fputs(ptr nonnull %429, ptr %432)
  br label %438

434:                                              ; preds = %420
  %435 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %436 = load i32, ptr %289, align 8, !tbaa !6
  %437 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %435, ptr noundef nonnull @.str.55, i32 noundef %436) #24
  br label %438

438:                                              ; preds = %192, %204, %185, %226, %238, %219, %417, %434, %423, %373, %409, %390, %308, %338, %319, %251, %274, %262, %140, %159, %147, %88, %107, %95, %76
  %439 = phi i32 [ %67, %76 ], [ %67, %95 ], [ %67, %107 ], [ %67, %88 ], [ %67, %147 ], [ %67, %159 ], [ %67, %140 ], [ %255, %262 ], [ %255, %274 ], [ %255, %251 ], [ %312, %319 ], [ %312, %338 ], [ %312, %308 ], [ %383, %390 ], [ %383, %409 ], [ %383, %373 ], [ 0, %423 ], [ 0, %434 ], [ 0, %417 ], [ %67, %219 ], [ %67, %238 ], [ %67, %226 ], [ %67, %185 ], [ %67, %204 ], [ %67, %192 ]
  %440 = phi i32 [ %65, %76 ], [ %65, %95 ], [ %65, %107 ], [ %65, %88 ], [ %65, %147 ], [ %65, %159 ], [ %65, %140 ], [ %252, %262 ], [ %252, %274 ], [ %252, %251 ], [ %309, %319 ], [ %309, %338 ], [ %309, %308 ], [ %380, %390 ], [ %380, %409 ], [ %380, %373 ], [ %65, %423 ], [ %65, %434 ], [ %65, %417 ], [ %65, %219 ], [ %65, %238 ], [ %65, %226 ], [ %65, %185 ], [ %65, %204 ], [ %65, %192 ]
  %441 = phi i32 [ %64, %76 ], [ %80, %95 ], [ %80, %107 ], [ %80, %88 ], [ %80, %147 ], [ %80, %159 ], [ %80, %140 ], [ %80, %262 ], [ %80, %274 ], [ %80, %251 ], [ %80, %319 ], [ %80, %338 ], [ %80, %308 ], [ %80, %390 ], [ %80, %409 ], [ %80, %373 ], [ %80, %423 ], [ %80, %434 ], [ %80, %417 ], [ %80, %219 ], [ %80, %238 ], [ %80, %226 ], [ %80, %185 ], [ %80, %204 ], [ %80, %192 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #25
  %442 = add nsw i32 %63, -1
  %443 = icmp sgt i32 %63, 0
  br i1 %443, label %62, label %444, !llvm.loop !307

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct._fence, ptr %2, i64 0, i32 12
  %446 = load ptr, ptr %445, align 8, !tbaa !270
  %447 = icmp eq ptr %446, null
  br i1 %447, label %461, label %451

448:                                              ; preds = %52
  %449 = load ptr, ptr %57, align 8, !tbaa !270
  %450 = icmp eq ptr %449, null
  br i1 %450, label %461, label %453

451:                                              ; preds = %444
  %452 = icmp eq i32 %441, 1
  br i1 %452, label %457, label %453

453:                                              ; preds = %448, %451
  %454 = phi i32 [ %439, %451 ], [ -1, %448 ]
  %455 = phi i32 [ %440, %451 ], [ 0, %448 ]
  %456 = phi ptr [ %445, %451 ], [ %57, %448 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3923, ptr noundef nonnull @.str.1) #23
  br label %457

457:                                              ; preds = %451, %453
  %458 = phi i32 [ %439, %451 ], [ %454, %453 ]
  %459 = phi i32 [ %440, %451 ], [ %455, %453 ]
  %460 = phi ptr [ %445, %451 ], [ %456, %453 ]
  store ptr null, ptr %460, align 8, !tbaa !270
  br label %461

461:                                              ; preds = %448, %457, %444
  %462 = phi i32 [ 0, %448 ], [ %459, %457 ], [ %440, %444 ]
  %463 = phi i32 [ -1, %448 ], [ %458, %457 ], [ %439, %444 ]
  %464 = load ptr, ptr @vec_av_set, align 8
  %465 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %464) #24
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %461
  %468 = call i32 @llvm.smax.i32(i32 %463, i32 0)
  br label %543

469:                                              ; preds = %461
  %470 = icmp slt i32 %463, 1
  br i1 %470, label %473, label %471

471:                                              ; preds = %469
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3939, ptr noundef nonnull @.str.1) #23
  %472 = load ptr, ptr @vec_av_set, align 8
  br label %473

473:                                              ; preds = %469, %471
  %474 = phi ptr [ %464, %469 ], [ %472, %471 ]
  %475 = call fastcc ptr @VEC_expr_t_base_address(ptr noundef %474) #24
  %476 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %474) #24
  %477 = zext i32 %476 to i64
  call void @spec_qsort(ptr noundef %475, i64 noundef %477, i64 noundef 8, ptr noundef nonnull @sel_rank_for_schedule) #23
  %478 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %479 = icmp sgt i32 %478, 3
  br i1 %479, label %480, label %543

480:                                              ; preds = %473
  %481 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %482 = icmp eq i8 %481, 0
  br i1 %482, label %496, label %483

483:                                              ; preds = %480
  %484 = load ptr, ptr @vec_av_set, align 8
  %485 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %484) #24
  %486 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %485, i32 noundef %462) #24
  %487 = shl nsw i32 %486, 1
  %488 = or disjoint i32 %487, 1
  %489 = sext i32 %488 to i64
  %490 = alloca i8, i64 %489, align 16
  %491 = load ptr, ptr @vec_av_set, align 8
  %492 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %491) #24
  %493 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %490, i64 noundef %489, ptr noundef nonnull @.str.56, i32 noundef %492, i32 noundef %462) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %490) #23
  %494 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %495 = call i32 @fputs(ptr nonnull %490, ptr %494)
  br label %501

496:                                              ; preds = %480
  %497 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %498 = load ptr, ptr @vec_av_set, align 8
  %499 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %498) #24
  %500 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %497, ptr noundef nonnull @.str.56, i32 noundef %499, i32 noundef %462) #24
  br label %501

501:                                              ; preds = %483, %496
  %502 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %517, label %504

504:                                              ; preds = %501
  %505 = load ptr, ptr @vec_av_set, align 8
  %506 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %505) #24
  %507 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.57, i32 noundef %506) #24
  %508 = shl nsw i32 %507, 1
  %509 = or disjoint i32 %508, 1
  %510 = sext i32 %509 to i64
  %511 = alloca i8, i64 %510, align 16
  %512 = load ptr, ptr @vec_av_set, align 8
  %513 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %512) #24
  %514 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %511, i64 noundef %510, ptr noundef nonnull @.str.57, i32 noundef %513) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %511) #23
  %515 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %516 = call i32 @fputs(ptr nonnull %511, ptr %515)
  br label %522

517:                                              ; preds = %501
  %518 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %519 = load ptr, ptr @vec_av_set, align 8
  %520 = call fastcc i32 @VEC_expr_t_base_length(ptr noundef %519) #24
  %521 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %518, ptr noundef nonnull @.str.57, i32 noundef %520) #24
  br label %522

522:                                              ; preds = %517, %504
  %523 = load ptr, ptr @vec_av_set, align 8
  %524 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %523, i32 noundef 0, ptr noundef nonnull %7) #24, !range !149
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %533, label %526

526:                                              ; preds = %522, %526
  %527 = phi i32 [ %529, %526 ], [ 0, %522 ]
  %528 = load ptr, ptr %7, align 8, !tbaa !16
  call void @dump_expr(ptr noundef %528) #23
  %529 = add nuw nsw i32 %527, 1
  %530 = load ptr, ptr @vec_av_set, align 8
  %531 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %530, i32 noundef %529, ptr noundef nonnull %7) #24, !range !149
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %526, !llvm.loop !308

533:                                              ; preds = %526, %522
  %534 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %540, label %536

536:                                              ; preds = %533
  %537 = alloca [3 x i8], align 16
  store i16 10, ptr %537, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %537) #23
  %538 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %539 = call i32 @fputs(ptr nonnull %537, ptr %538)
  br label %543

540:                                              ; preds = %533
  %541 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %542 = call i32 @fputc(i32 10, ptr %541)
  br label %543

543:                                              ; preds = %473, %540, %536, %467
  %544 = phi i32 [ %468, %467 ], [ 0, %536 ], [ 0, %540 ], [ 0, %473 ]
  %545 = phi i8 [ 0, %467 ], [ 1, %536 ], [ 1, %540 ], [ 1, %473 ]
  store i32 %544, ptr %3, align 4, !tbaa !28
  br label %546

546:                                              ; preds = %543, %4
  %547 = phi i8 [ 0, %4 ], [ %545, %543 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  ret i8 %547
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_vec_av_set_to_ready() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr @vec_av_set, align 8
  %3 = tail call fastcc i32 @VEC_expr_t_base_length(ptr noundef %2) #24
  store i32 %3, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !309
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3976, ptr noundef nonnull @.str.1) #23
  %7 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !280
  br label %8

8:                                                ; preds = %0, %6
  %9 = phi i32 [ %3, %0 ], [ %7, %6 ]
  %10 = load i32, ptr @max_issue_size, align 4, !tbaa !28
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 %9, ptr @max_issue_size, align 4, !tbaa !28
  tail call void @sched_extend_ready_list(i32 noundef %9) #23
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr @vec_av_set, align 8
  %15 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %1) #24, !range !149
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @vec_av_set, align 8
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %28, %19 ], [ 0, %17 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !16
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = load ptr, ptr @ready_try, align 8, !tbaa !16
  %25 = getelementptr inbounds i8, ptr %24, i64 %20
  store i8 0, ptr %25, align 1, !tbaa !6
  %26 = load ptr, ptr @ready, align 8, !tbaa !284
  %27 = getelementptr inbounds ptr, ptr %26, i64 %20
  store ptr %23, ptr %27, align 8, !tbaa !16
  %28 = add nuw i64 %20, 1
  %29 = trunc i64 %28 to i32
  %30 = call fastcc i32 @VEC_expr_t_base_iterate(ptr noundef %18, i32 noundef %29, ptr noundef nonnull %1) #24, !range !149
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %19, !llvm.loop !310

32:                                               ; preds = %19, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #23
  store i32 %8, ptr %2, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_t_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !311
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_t_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !311
  %4 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !311
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_expr_t_heap_reserve() #24
  %2 = load ptr, ptr @vec_av_set, align 8, !tbaa !16
  tail call fastcc void @VEC_expr_t_base_quick_push(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_target_adjust_priority(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !306
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 1), align 8, !tbaa !313
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !55
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = tail call i32 %4(ptr noundef %8, i32 noundef %3) #23
  %10 = load i32, ptr %2, align 8, !tbaa !306
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi i32 [ %10, %6 ], [ %3, %1 ]
  %13 = phi i32 [ %9, %6 ], [ %3, %1 ]
  %14 = sub nsw i32 %13, %12
  %15 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 4, !tbaa !302
  %16 = icmp sgt i32 %14, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3308, ptr noundef nonnull @.str.1) #23
  br label %18

18:                                               ; preds = %11, %17
  %19 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8, !tbaa !55
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !6
  %29 = load i32, ptr %2, align 8, !tbaa !306
  %30 = load i32, ptr %15, align 4, !tbaa !302
  %31 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.58, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %13) #24
  %32 = shl nsw i32 %31, 1
  %33 = or disjoint i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  %36 = load ptr, ptr %0, align 8, !tbaa !55
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !6
  %40 = load i32, ptr %2, align 8, !tbaa !306
  %41 = load i32, ptr %15, align 4, !tbaa !302
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %35, i64 noundef %34, ptr noundef nonnull @.str.58, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %13) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %35) #23
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %44 = call i32 @fputs(ptr nonnull %35, ptr %43)
  br label %54

45:                                               ; preds = %21
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %47 = load ptr, ptr %0, align 8, !tbaa !55
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !6
  %51 = load i32, ptr %2, align 8, !tbaa !306
  %52 = load i32, ptr %15, align 4, !tbaa !302
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.58, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %13) #24
  br label %54

54:                                               ; preds = %24, %45, %18
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_expr_t_base_address(ptr noundef readnone %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @sel_rank_for_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !16
  %4 = load ptr, ptr %0, align 8, !tbaa !16
  %5 = load ptr, ptr %3, align 8, !tbaa !55
  %6 = load ptr, ptr %4, align 8, !tbaa !55
  %7 = load ptr, ptr %5, align 8, !tbaa !85
  %8 = load ptr, ptr %6, align 8, !tbaa !85
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  %12 = load i32, ptr %8, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 7
  br i1 %11, label %15, label %17

15:                                               ; preds = %2
  %16 = select i1 %14, i32 1, i32 -1
  br label %142

17:                                               ; preds = %2
  br i1 %14, label %142, label %18

18:                                               ; preds = %17
  %19 = lshr i32 %9, 28
  %20 = and i32 %19, 1
  %21 = lshr i32 %12, 28
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.vinsn_def, ptr %5, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = add i32 %26, -23
  %28 = icmp ult i32 %27, 2
  %29 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !56
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
  br i1 %45, label %46, label %142

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !49
  %49 = icmp slt i32 %48, 1
  %50 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !49
  %52 = icmp slt i32 %51, 1
  %53 = select i1 %49, i1 %52, i1 false
  %54 = sub nsw i32 %48, %51
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %142

57:                                               ; preds = %46
  %58 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %7) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %8) #23
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %142, label %63

63:                                               ; preds = %60, %57
  %64 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %8) #23
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %7) #23
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %142, label %69

69:                                               ; preds = %63, %66
  %70 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !295
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !295
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !306
  %80 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !302
  %82 = add nsw i32 %81, %79
  %83 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !306
  %85 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 4
  %86 = load i32, ptr %85, align 4, !tbaa !302
  %87 = add nsw i32 %86, %84
  %88 = mul nsw i32 %82, %75
  %89 = mul nsw i32 %87, %71
  %90 = sub nsw i32 %88, %89
  br label %103

91:                                               ; preds = %73, %69
  %92 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !306
  %94 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !306
  %96 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 4
  %97 = load i32, ptr %96, align 4, !tbaa !302
  %98 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 4
  %99 = load i32, ptr %98, align 4, !tbaa !302
  %100 = add i32 %93, %97
  %101 = add i32 %95, %99
  %102 = sub i32 %100, %101
  br label %103

103:                                              ; preds = %91, %77
  %104 = phi i32 [ %90, %77 ], [ %102, %91 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %142

106:                                              ; preds = %103
  %107 = load ptr, ptr @spec_info, align 8, !tbaa !16
  %108 = icmp eq ptr %107, null
  br i1 %108, label %130, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %107, align 8, !tbaa !108
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct._expr, ptr %3, i64 0, i32 7
  %114 = load i32, ptr %113, align 8, !tbaa !94
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = tail call i32 @ds_weak(i32 noundef %114) #23
  br label %118

118:                                              ; preds = %112, %116
  %119 = phi i32 [ %117, %116 ], [ 63, %112 ]
  %120 = getelementptr inbounds %struct._expr, ptr %4, i64 0, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !94
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
  %132 = load i32, ptr %131, align 8, !tbaa !6
  %133 = load i32, ptr @first_emitted_uid, align 4, !tbaa !28
  %134 = icmp slt i32 %132, %133
  %135 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !6
  %137 = icmp slt i32 %136, %133
  br i1 %134, label %138, label %139

138:                                              ; preds = %130
  br i1 %137, label %140, label %142

139:                                              ; preds = %130
  br i1 %137, label %142, label %140

140:                                              ; preds = %138, %139
  %141 = sub nsw i32 %132, %136
  br label %142

142:                                              ; preds = %15, %46, %35, %33, %139, %138, %103, %66, %60, %39, %17, %125, %140, %36
  %143 = phi i32 [ %38, %36 ], [ %141, %140 ], [ %127, %125 ], [ 1, %17 ], [ %44, %39 ], [ -1, %60 ], [ 1, %66 ], [ %104, %103 ], [ -1, %138 ], [ 1, %139 ], [ %34, %33 ], [ -1, %35 ], [ %16, %15 ], [ %54, %46 ]
  ret i32 %143
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_expr_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_t_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !311
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !311
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  store ptr %9, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vinsn_vec_has_expr_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #24, !range !149
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2, %24
  %7 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.vinsn_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i32 %10, 23
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 8, !tbaa !55
  %14 = tail call zeroext i8 @vinsn_equal_p(ptr noundef nonnull %8, ptr noundef %13) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %28

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.vinsn_def, ptr %8, i64 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  %19 = load ptr, ptr %1, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !174
  %22 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %18, ptr noundef %21) #23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %12, %16
  %25 = add nuw nsw i32 %7, 1
  %26 = call fastcc i32 @VEC_vinsn_t_base_iterate(ptr noundef %0, i32 noundef %25, ptr noundef nonnull %3) #24, !range !149
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %6, !llvm.loop !314

28:                                               ; preds = %12, %16, %24, %2
  %29 = phi i8 [ 0, %2 ], [ 0, %24 ], [ 1, %16 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_best_reg_for_expr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !16
  store i8 0, ptr %2, align 1, !tbaa !6
  %6 = load ptr, ptr %0, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !174
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vinsn_def, ptr %6, i64 0, i32 1, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = load ptr, ptr %13, align 8, !tbaa !225
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %11, %3
  %17 = tail call ptr @get_clear_regset_from_pool() #23
  store i64 0, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  call fastcc void @collect_unavailable_regs_from_bnds(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %17, ptr noundef nonnull %4) #24
  %18 = load ptr, ptr %0, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.vinsn_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  call fastcc void @verify_target_availability(ptr noundef nonnull %0, ptr noundef %17) #24
  %23 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store i64 0, ptr %5, align 8, !tbaa !232
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %5, ptr noundef %17) #23
  %26 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %27 = load i64, ptr %5, align 8, !tbaa !232
  %28 = or i64 %27, %26
  store i64 %28, ptr %5, align 8, !tbaa !232
  %29 = load ptr, ptr %4, align 8, !tbaa !16
  %30 = call fastcc ptr @choose_best_reg(i64 noundef %28, ptr noundef %29, ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %34

31:                                               ; preds = %22
  %32 = load ptr, ptr %4, align 8, !tbaa !16
  %33 = call fastcc ptr @choose_best_pseudo_reg(ptr noundef %17, ptr noundef %32, ptr noundef nonnull %2) #24
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %30, %25 ], [ %33, %31 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = load i8, ptr %2, align 1, !tbaa !6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %4, align 8, !tbaa !16
  %42 = call fastcc zeroext i8 @try_replace_dest_reg(ptr noundef %41, ptr noundef nonnull %35, ptr noundef nonnull %0) #24
  br label %62

43:                                               ; preds = %37
  %44 = load ptr, ptr %0, align 8, !tbaa !55
  %45 = call i32 @sel_vinsn_cost(ptr noundef %44) #23
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !16
  %49 = call fastcc zeroext i8 @try_replace_dest_reg(ptr noundef %48, ptr noundef nonnull %35, ptr noundef nonnull %0) #24
  br label %62

50:                                               ; preds = %16
  %51 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %52 = call fastcc zeroext i8 @vinsn_writes_one_of_regs_p(ptr noundef nonnull %18, ptr noundef %17, i64 noundef %51) #24, !range !31
  %53 = icmp eq i8 %52, 0
  %54 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %55 = load i8, ptr %54, align 8, !tbaa !65
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
define internal fastcc noundef i32 @VEC_expr_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !311
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !16
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_expr_t_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @vec_av_set, align 8, !tbaa !16
  %2 = tail call fastcc i32 @VEC_expr_t_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #23
  store ptr %5, ptr @vec_av_set, align 8, !tbaa !16
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_expr_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !311
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !311
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_expr_t_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_expr_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !317
  %6 = load i32, ptr %0, align 8, !tbaa !311
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_vinsn_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !167
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !16
  ret i32 %14
}

; Function Attrs: optsize
declare zeroext i8 @vinsn_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @collect_unavailable_regs_from_bnds(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4, %18
  %8 = phi ptr [ %19, %18 ], [ %1, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct._list_node, ptr %8, i64 0, i32 1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !253
  %11 = load ptr, ptr %0, align 8, !tbaa !55
  %12 = call zeroext i8 @av_set_is_in_p(ptr noundef %10, ptr noundef %11) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct._list_node, ptr %8, i64 0, i32 1
  %16 = call fastcc ptr @find_sequential_best_exprs(ptr noundef nonnull %15, ptr noundef nonnull %0, i8 noundef zeroext 0) #24
  store ptr %16, ptr %5, align 8, !tbaa !16
  %17 = load ptr, ptr %15, align 8, !tbaa !255
  call fastcc void @find_used_regs(ptr noundef %17, ptr noundef %16, ptr noundef %2, ptr noundef %3) #24
  call void @av_set_clear(ptr noundef nonnull %5) #23
  br label %18

18:                                               ; preds = %7, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %19 = load ptr, ptr %8, align 8, !tbaa !160
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !318

21:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_target_availability(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.vinsn_def, ptr %3, i64 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %9, label %78

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._expr, ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 8, !tbaa !65
  %12 = icmp slt i8 %11, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @expr_dest_regno(ptr noundef nonnull %0) #23
  %15 = load i8, ptr %10, align 8, !tbaa !65
  %16 = icmp eq i8 %15, 1
  %17 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.vinsn_def, ptr %20, i64 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext i32 %14 to i64
  %27 = zext nneg i32 %25 to i64
  %28 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %26, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !6
  %30 = zext i8 %29 to i64
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %13, %19
  %33 = phi i64 [ %30, %19 ], [ 1, %13 ]
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %49, %34 ]
  %36 = phi i8 [ 1, %32 ], [ %48, %34 ]
  %37 = phi i8 [ 1, %32 ], [ %42, %34 ]
  %38 = trunc i64 %35 to i32
  %39 = add i32 %14, %38
  %40 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %39) #23
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i8 %37, i8 0
  %43 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %44 = zext nneg i32 %39 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %43, %45
  %47 = icmp eq i64 %46, 0
  %48 = select i1 %47, i8 %36, i8 0
  %49 = add nuw nsw i64 %35, 1
  %50 = icmp eq i64 %49, %33
  br i1 %50, label %51, label %34, !llvm.loop !319

51:                                               ; preds = %34
  %52 = icmp ne i8 %48, 0
  br i1 %16, label %54, label %56

53:                                               ; preds = %19
  br i1 %16, label %78, label %56

54:                                               ; preds = %51
  %55 = icmp eq i8 %42, 0
  br i1 %55, label %76, label %78

56:                                               ; preds = %53, %51
  %57 = phi i1 [ true, %53 ], [ %52, %51 ]
  %58 = phi i8 [ 1, %53 ], [ %42, %51 ]
  %59 = load i1, ptr @scheduled_something_on_previous_fence, align 1
  %60 = xor i1 %59, true
  %61 = icmp ne i8 %58, 0
  %62 = select i1 %60, i1 %61, i1 false
  %63 = select i1 %62, i1 %57, i1 false
  br i1 %63, label %64, label %78

64:                                               ; preds = %56
  %65 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %66 = icmp ne i32 %65, 0
  %67 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr @reg_info_p, align 8, !tbaa !16
  %72 = zext i32 %14 to i64
  %73 = getelementptr inbounds %struct.reg_info_t, ptr %71, i64 %72, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !320
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %64, %70, %54
  %77 = phi i32 [ 1597, %54 ], [ 1614, %70 ], [ 1614, %64 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %77, ptr noundef nonnull @.str.1) #23
  br label %78

78:                                               ; preds = %76, %53, %56, %70, %54, %2, %9
  ret void
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @choose_best_reg(i64 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @choose_best_reg_1(i64 noundef %0, ptr noundef %1, ptr noundef %2) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !322
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #24
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = and i64 %10, %7
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1475, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %3, %6, %13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @choose_best_pseudo_reg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._list_iterator, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %7 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1500, ptr noundef nonnull @.str.1) #23
  br label %10

10:                                               ; preds = %3, %9
  store i8 1, ptr %2, align 1, !tbaa !6
  call fastcc void @_list_iter_start(ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 0) #24
  %11 = load ptr, ptr %5, align 8, !tbaa !124
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %12, ptr noundef nonnull %6) #24, !range !31
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  store i8 0, ptr %2, align 1, !tbaa !6
  %16 = call ptr @gen_reg_rtx(i32 noundef 0) #23
  br label %77

17:                                               ; preds = %10, %66
  %18 = phi i32 [ %39, %66 ], [ 0, %10 ]
  %19 = phi i8 [ %67, %66 ], [ 0, %10 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !16
  %21 = load ptr, ptr %20, align 8, !tbaa !324
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
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
  %50 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %51 = zext nneg i32 %40 to i64
  %52 = shl nuw i64 1, %51
  %53 = and i64 %50, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !326
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @reg_info_p, align 8, !tbaa !16
  %60 = sext i32 %40 to i64
  %61 = getelementptr inbounds %struct.reg_info_t, ptr %59, i64 %60, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !320
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %55
  %65 = call ptr @gen_rtx_REG(i32 noundef %39, i32 noundef %40) #23
  br label %89

66:                                               ; preds = %49, %58, %38
  %67 = phi i8 [ 1, %49 ], [ 1, %58 ], [ %19, %38 ]
  call fastcc void @_list_iter_next(ptr noundef nonnull %5) #24
  %68 = load ptr, ptr %5, align 8, !tbaa !124
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %69, ptr noundef nonnull %6) #24, !range !31
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %17, !llvm.loop !327

72:                                               ; preds = %66
  %73 = icmp eq i8 %67, 0
  store i8 0, ptr %2, align 1, !tbaa !6
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
  store i32 %81, ptr @max_regno, align 4, !tbaa !28
  call void @maybe_extend_reg_info_p() #23
  %82 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !326
  %83 = icmp ne i8 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load ptr, ptr @reg_info_p, align 8, !tbaa !16
  %86 = call fastcc i32 @rhs_regno(ptr noundef %80) #24
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.reg_info_t, ptr %85, i64 %87, i32 3
  store i32 %84, ptr %88, align 4, !tbaa !320
  br label %89

89:                                               ; preds = %43, %64, %72, %79
  %90 = phi ptr [ %80, %79 ], [ null, %72 ], [ %65, %64 ], [ %25, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  ret ptr %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_replace_dest_reg(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @s_i_d, align 8
  %7 = load ptr, ptr @sched_luids, align 8
  br label %8

8:                                                ; preds = %5, %46
  %9 = phi ptr [ %47, %46 ], [ %7, %5 ]
  %10 = phi ptr [ %48, %46 ], [ %6, %5 ]
  %11 = phi ptr [ %49, %46 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct._list_node, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  %16 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %15) #24
  %17 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %10, i32 noundef %16) #24
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.vinsn_def, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !56
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %26, label %22

22:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1663, ptr noundef nonnull @.str.1) #23
  %23 = load ptr, ptr @s_i_d, align 8
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = load i32, ptr %14, align 8, !tbaa !6
  br label %26

26:                                               ; preds = %8, %22
  %27 = phi i32 [ %15, %8 ], [ %25, %22 ]
  %28 = phi ptr [ %9, %8 ], [ %24, %22 ]
  %29 = phi ptr [ %10, %8 ], [ %23, %22 ]
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #24
  %31 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %28, i32 noundef %27) #24
  %32 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %29, i32 noundef %31) #24
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.vinsn_def, ptr %33, i64 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = tail call fastcc i32 @rhs_regno(ptr noundef %35) #24
  %37 = icmp eq i32 %30, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %26
  %39 = tail call fastcc zeroext i8 @replace_src_with_reg_ok_p(ptr noundef nonnull %13, ptr noundef %1) #24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc zeroext i8 @replace_dest_with_reg_ok_p(ptr noundef nonnull %13, ptr noundef %1) #24
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr @s_i_d, align 8
  %45 = load ptr, ptr @sched_luids, align 8
  br i1 %43, label %58, label %46

46:                                               ; preds = %41, %26
  %47 = phi ptr [ %45, %41 ], [ %28, %26 ]
  %48 = phi ptr [ %44, %41 ], [ %29, %26 ]
  %49 = load ptr, ptr %11, align 8, !tbaa !160
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %8, !llvm.loop !328

51:                                               ; preds = %46, %3
  %52 = tail call i32 @expr_dest_regno(ptr noundef %2) #23
  %53 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #24
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call fastcc void @replace_dest_with_reg_in_expr(ptr noundef %2, ptr noundef %1) #24
  br label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct._expr, ptr %2, i64 0, i32 11
  store i8 1, ptr %57, align 8, !tbaa !65
  br label %58

58:                                               ; preds = %38, %41, %55, %56
  %59 = phi i8 [ 1, %56 ], [ 1, %55 ], [ 0, %41 ], [ 0, %38 ]
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vinsn_writes_one_of_regs_p(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %6 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !174
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %7, ptr noundef nonnull %4) #24
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !31
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3, %21
  %11 = load i32, ptr %4, align 4, !tbaa !28
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
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !31
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %10, !llvm.loop !329

24:                                               ; preds = %21, %3
  %25 = getelementptr inbounds %struct.vinsn_def, ptr %0, i64 0, i32 1, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !175
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %26, ptr noundef nonnull %4) #24
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24, %40
  %30 = load i32, ptr %4, align 4, !tbaa !28
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
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !31
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %29, !llvm.loop !330

43:                                               ; preds = %16, %10, %29, %35, %40, %24
  %44 = phi i8 [ 0, %24 ], [ 1, %29 ], [ 1, %35 ], [ 0, %40 ], [ 1, %10 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @_list_clear(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1, %4
  tail call fastcc void @_list_remove(ptr noundef nonnull %0) #24
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %4, !llvm.loop !331

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_sequential_best_exprs(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %7 = getelementptr inbounds %struct._bnd, ptr %0, i64 0, i32 2
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #24
  %8 = load ptr, ptr %6, align 8, !tbaa !124
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %9, ptr noundef nonnull %5) #24, !range !31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %3, %58
  %13 = load ptr, ptr %5, align 8, !tbaa !16
  %14 = tail call fastcc zeroext i8 @equal_after_moveup_path_p(ptr noundef %13, ptr noundef %1) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %13, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !56
  %22 = icmp eq i32 %21, 23
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.vinsn_def, ptr %19, i64 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = tail call i32 @expr_dest_regno(ptr noundef nonnull %13) #23
  %31 = tail call i32 @expr_dest_regno(ptr noundef %1) #23
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %1, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.vinsn_def, ptr %34, i64 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  tail call fastcc void @replace_dest_with_reg_in_expr(ptr noundef nonnull %13, ptr noundef %36) #24
  %37 = load i32, ptr @stat_renamed_scheduled, align 4, !tbaa !28
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr @stat_renamed_scheduled, align 4, !tbaa !28
  br label %49

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct._expr, ptr %13, i64 0, i32 11
  %41 = load i8, ptr %40, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct._expr, ptr %1, i64 0, i32 11
  %43 = load i8, ptr %42, align 8, !tbaa !65
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = icmp eq i8 %43, 1
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5097, ptr noundef nonnull @.str.1) #23
  br label %48

48:                                               ; preds = %45, %47
  store i8 1, ptr %40, align 8, !tbaa !65
  br label %49

49:                                               ; preds = %33, %48, %39, %23, %18
  %50 = getelementptr inbounds %struct._expr, ptr %13, i64 0, i32 12
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr @stat_substitutions_total, align 4, !tbaa !28
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr @stat_substitutions_total, align 4, !tbaa !28
  br label %57

57:                                               ; preds = %49, %54, %16
  call void @av_set_add(ptr noundef nonnull %4, ptr noundef %13) #23
  br label %63

58:                                               ; preds = %12
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %59 = load ptr, ptr %6, align 8, !tbaa !124
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  %61 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %60, ptr noundef nonnull %5) #24, !range !31
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %12, !llvm.loop !332

63:                                               ; preds = %58, %3, %57
  %64 = icmp ne i8 %2, 0
  %65 = load i32, ptr @sched_verbose, align 4
  %66 = icmp sgt i32 %65, 1
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = alloca [77 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %72, ptr noundef nonnull align 1 dereferenceable(39) @.str.59, i64 39, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %72) #23
  %73 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %74 = call i32 @fputs(ptr nonnull %72, ptr %73)
  br label %78

75:                                               ; preds = %68
  %76 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %77 = call i64 @fwrite(ptr nonnull @.str.59, i64 38, i64 1, ptr %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load ptr, ptr %4, align 8, !tbaa !16
  call void @dump_av_set(ptr noundef %79) #23
  %80 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = alloca [3 x i8], align 16
  store i16 10, ptr %83, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %83) #23
  %84 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %85 = call i32 @fputs(ptr nonnull %83, ptr %84)
  br label %89

86:                                               ; preds = %78
  %87 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %88 = call i32 @fputc(i32 10, ptr %87)
  br label %89

89:                                               ; preds = %82, %86, %63
  %90 = load ptr, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_used_regs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct._list_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._list_iterator, align 8
  %10 = alloca %struct.fur_static_params, align 8
  %11 = alloca %struct.cmpd_local_params, align 8
  store ptr %1, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #25
  %12 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  tail call void @bitmap_clear(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.fur_static_params, ptr %10, i64 0, i32 2
  store i8 0, ptr %13, align 8, !tbaa !172
  %14 = getelementptr inbounds %struct.fur_static_params, ptr %10, i64 0, i32 1
  store ptr %3, ptr %14, align 8, !tbaa !170
  store ptr %2, ptr %10, align 8, !tbaa !176
  store ptr @fur_hooks, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %15 = call fastcc i32 @code_motion_path_driver(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %10) #24
  %16 = load i8, ptr %13, align 8, !tbaa !172
  %17 = load i8, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !326
  %18 = or i8 %17, %16
  store i8 %18, ptr @find_best_reg_for_expr.reg_rename_data.2, align 8, !tbaa !326
  %19 = icmp eq i32 %15, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3260, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %4, %20
  %22 = icmp eq ptr %3, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %3, align 8, !tbaa !16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %21
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3261, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %23, %26
  call fastcc void @_list_iter_start(ptr noundef nonnull %9, ptr noundef nonnull %5, i8 noundef zeroext 0) #24
  %28 = load ptr, ptr %9, align 8, !tbaa !124
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %29, ptr noundef nonnull %8) #24, !range !31
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27, %32
  %33 = phi i8 [ %38, %32 ], [ 0, %27 ]
  %34 = load ptr, ptr %8, align 8, !tbaa !16
  %35 = getelementptr inbounds %struct._expr, ptr %34, i64 0, i32 12
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 1
  %38 = or i8 %37, %33
  call fastcc void @_list_iter_next(ptr noundef nonnull %9) #24
  %39 = load ptr, ptr %9, align 8, !tbaa !124
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %40, ptr noundef nonnull %8) #24, !range !31
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %32, !llvm.loop !333

43:                                               ; preds = %32
  %44 = icmp eq i8 %38, 0
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i1 [ true, %27 ], [ %44, %43 ]
  call fastcc void @_list_iter_start(ptr noundef nonnull %6, ptr noundef %3, i8 noundef zeroext 0) #24
  %47 = load ptr, ptr %6, align 8, !tbaa !124
  %48 = load ptr, ptr %47, align 8, !tbaa !16
  %49 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %48, ptr noundef nonnull %7) #24, !range !31
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %45, %70
  %52 = load ptr, ptr @s_i_d, align 8
  %53 = load ptr, ptr @sched_luids, align 8
  %54 = load ptr, ptr %7, align 8, !tbaa !16
  %55 = load ptr, ptr %54, align 8, !tbaa !324
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !6
  %58 = call fastcc i32 @VEC_int_base_index(ptr noundef %53, i32 noundef %57) #24
  %59 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %52, i32 noundef %58) #24
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = getelementptr inbounds %struct.vinsn_def, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !56
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  call fastcc void @mark_unavailable_hard_regs(ptr noundef nonnull %54, ptr noundef %2) #24
  br label %65

65:                                               ; preds = %64, %51
  br i1 %46, label %70, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.vinsn_def, ptr %60, i64 0, i32 1, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !110
  %69 = call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %68) #23
  br label %70

70:                                               ; preds = %66, %65
  call fastcc void @_list_iter_next(ptr noundef nonnull %6) #24
  %71 = load ptr, ptr %6, align 8, !tbaa !124
  %72 = load ptr, ptr %71, align 8, !tbaa !16
  %73 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %72, ptr noundef nonnull %7) #24, !range !31
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %51, !llvm.loop !334

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
define internal fastcc zeroext i8 @equal_after_moveup_path_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct._expr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #25
  call void @copy_expr_onside(ptr noundef nonnull %3, ptr noundef %0) #23
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %1, align 8, !tbaa !55
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %9, label %7

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
define internal fastcc i32 @code_motion_path_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8, !tbaa !16
  store ptr %2, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %12 = icmp sgt i32 %11, 5
  br i1 %12, label %13, label %58

13:                                               ; preds = %5
  %14 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !335
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %19) #24
  %21 = shl nsw i32 %20, 1
  %22 = or disjoint i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  %25 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %25, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !335
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %24, i64 noundef %23, ptr noundef nonnull @.str.60, ptr noundef %27) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %24) #23
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %30 = call i32 @fputs(ptr nonnull %24, ptr %29)
  br label %37

31:                                               ; preds = %13
  %32 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %33 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !335
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.60, ptr noundef %35) #24
  br label %37

37:                                               ; preds = %31, %16
  call void @dump_insn(ptr noundef nonnull %0) #23
  %38 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = alloca [3 x i8], align 16
  store i16 44, ptr %41, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %41) #23
  %42 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %43 = call i32 @fputs(ptr nonnull %41, ptr %42)
  br label %47

44:                                               ; preds = %37
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %46 = call i32 @fputc(i32 44, ptr %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load ptr, ptr %6, align 8, !tbaa !16
  call void @dump_av_set(ptr noundef %48) #23
  %49 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = alloca [5 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %52, ptr noundef nonnull align 1 dereferenceable(3) @.str.62, i64 3, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %52) #23
  %53 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %54 = call i32 @fputs(ptr nonnull %52, ptr %53)
  br label %58

55:                                               ; preds = %47
  %56 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %57 = call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %56)
  br label %58

58:                                               ; preds = %51, %55, %5
  %59 = load ptr, ptr %6, align 8, !tbaa !16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6420, ptr noundef nonnull @.str.1) #23
  br label %62

62:                                               ; preds = %58, %61
  %63 = call fastcc zeroext i8 @is_ineligible_successor(ptr noundef nonnull %0, ptr noundef %2) #24, !range !31
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %67 = icmp sgt i32 %66, 5
  br i1 %67, label %68, label %327

68:                                               ; preds = %65
  %69 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %8, align 8, !tbaa !6
  %73 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.63, i32 noundef %72) #24
  %74 = shl nsw i32 %73, 1
  %75 = or disjoint i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = alloca i8, i64 %76, align 16
  %78 = load i32, ptr %8, align 8, !tbaa !6
  %79 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %77, i64 noundef %76, ptr noundef nonnull @.str.63, i32 noundef %78) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %77) #23
  %80 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %81 = call i32 @fputs(ptr nonnull %77, ptr %80)
  br label %327

82:                                               ; preds = %68
  %83 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %84 = load i32, ptr %8, align 8, !tbaa !6
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.63, i32 noundef %84) #24
  br label %327

86:                                               ; preds = %62
  %87 = call zeroext i8 @sel_bb_head_p(ptr noundef nonnull %0) #23
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %149, label %89

89:                                               ; preds = %86
  %90 = call i32 @get_av_level(ptr noundef nonnull %0) #23
  %91 = load i32, ptr @global_level, align 4, !tbaa !28
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %116, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %95 = icmp sgt i32 %94, 5
  br i1 %95, label %96, label %327

96:                                               ; preds = %93
  %97 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !9
  %102 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.64, i32 noundef %101) #24
  %103 = shl nsw i32 %102, 1
  %104 = or disjoint i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = alloca i8, i64 %105, align 16
  %107 = load i32, ptr %100, align 8, !tbaa !9
  %108 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %106, i64 noundef %105, ptr noundef nonnull @.str.64, i32 noundef %107) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %106) #23
  %109 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %110 = call i32 @fputs(ptr nonnull %106, ptr %109)
  br label %327

111:                                              ; preds = %96
  %112 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !9
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.64, i32 noundef %114) #24
  br label %327

116:                                              ; preds = %89
  %117 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !9
  %120 = call i32 @bitmap_bit_p(ptr noundef %117, i32 noundef %119) #23
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %149, label %122

122:                                              ; preds = %116
  %123 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %124 = icmp sgt i32 %123, 5
  br i1 %124, label %125, label %143

125:                                              ; preds = %122
  %126 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %118, align 8, !tbaa !9
  %130 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.65, i32 noundef %129) #24
  %131 = shl nsw i32 %130, 1
  %132 = or disjoint i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = alloca i8, i64 %133, align 16
  %135 = load i32, ptr %118, align 8, !tbaa !9
  %136 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %134, i64 noundef %133, ptr noundef nonnull @.str.65, i32 noundef %135) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %134) #23
  %137 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %138 = call i32 @fputs(ptr nonnull %134, ptr %137)
  br label %143

139:                                              ; preds = %125
  %140 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %141 = load i32, ptr %118, align 8, !tbaa !9
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.65, i32 noundef %141) #24
  br label %143

143:                                              ; preds = %128, %139, %122
  %144 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %145 = load ptr, ptr %144, align 8, !tbaa !337
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call i32 %145(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 1) #23
  br label %327

149:                                              ; preds = %116, %143, %86
  %150 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %151 = load ptr, ptr %150, align 8, !tbaa !337
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = call i32 %151(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0) #23
  br label %155

155:                                              ; preds = %153, %149
  %156 = load ptr, ptr %6, align 8, !tbaa !16
  %157 = call ptr @av_set_copy(ptr noundef %156) #23
  store ptr %157, ptr %6, align 8, !tbaa !16
  %158 = call i32 @get_av_level(ptr noundef nonnull %0) #23
  %159 = load i32, ptr @global_level, align 4, !tbaa !28
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = call ptr @get_av_set(ptr noundef nonnull %0) #23
  call void @av_set_intersect(ptr noundef nonnull %6, ptr noundef %162) #23
  br label %163

163:                                              ; preds = %161, %155
  %164 = load ptr, ptr %6, align 8, !tbaa !16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %189

166:                                              ; preds = %163
  %167 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %168 = icmp sgt i32 %167, 5
  br i1 %168, label %169, label %327

169:                                              ; preds = %166
  %170 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !9
  %175 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %174) #24
  %176 = shl nsw i32 %175, 1
  %177 = or disjoint i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = alloca i8, i64 %178, align 16
  %180 = load i32, ptr %173, align 8, !tbaa !9
  %181 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %179, i64 noundef %178, ptr noundef nonnull @.str.66, i32 noundef %180) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %179) #23
  %182 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %183 = call i32 @fputs(ptr nonnull %179, ptr %182)
  br label %327

184:                                              ; preds = %169
  %185 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %187 = load i32, ptr %186, align 8, !tbaa !9
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef nonnull @.str.66, i32 noundef %187) #24
  br label %327

189:                                              ; preds = %163
  call void @av_set_leave_one_nonspec(ptr noundef nonnull %6) #23
  %190 = load ptr, ptr %6, align 8, !tbaa !16
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6487, ptr noundef nonnull @.str.1) #23
  br label %193

193:                                              ; preds = %189, %192
  call fastcc void @_xlist_add(ptr noundef nonnull %7, ptr noundef nonnull %0) #24
  %194 = call ptr @sel_bb_end(ptr noundef %10) #23
  %195 = load ptr, ptr %6, align 8, !tbaa !16
  %196 = load ptr, ptr @s_i_d, align 8
  %197 = load ptr, ptr @sched_luids, align 8
  %198 = load i32, ptr %8, align 8, !tbaa !6
  %199 = call fastcc i32 @VEC_int_base_index(ptr noundef %197, i32 noundef %198) #24
  %200 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %196, i32 noundef %199) #24
  %201 = load ptr, ptr %200, align 8, !tbaa !59
  %202 = call ptr @av_set_lookup(ptr noundef %195, ptr noundef %201) #23
  %203 = icmp eq ptr %202, null
  br i1 %203, label %239, label %204

204:                                              ; preds = %254, %193
  %205 = phi ptr [ %0, %193 ], [ %256, %254 ]
  %206 = phi ptr [ %202, %193 ], [ %265, %254 ]
  %207 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %208 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1, i32 0, i32 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !6
  %210 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %211 = icmp sgt i32 %210, 5
  br i1 %211, label %212, label %230

212:                                              ; preds = %204
  %213 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %212
  %216 = load i32, ptr %207, align 8, !tbaa !6
  %217 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.67, i32 noundef %216) #24
  %218 = shl nsw i32 %217, 1
  %219 = or disjoint i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = alloca i8, i64 %220, align 16
  %222 = load i32, ptr %207, align 8, !tbaa !6
  %223 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %221, i64 noundef %220, ptr noundef nonnull @.str.67, i32 noundef %222) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %221) #23
  %224 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %225 = call i32 @fputs(ptr nonnull %221, ptr %224)
  br label %230

226:                                              ; preds = %212
  %227 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %228 = load i32, ptr %207, align 8, !tbaa !6
  %229 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.67, i32 noundef %228) #24
  br label %230

230:                                              ; preds = %215, %226, %204
  %231 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %232 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !338
  call void %233(ptr noundef nonnull %205, ptr noundef nonnull %206, ptr noundef %3, ptr noundef %4) #23
  %234 = icmp eq ptr %205, %0
  br i1 %234, label %235, label %285

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1, i32 0, i32 0, i64 2
  %237 = load ptr, ptr %236, align 8, !tbaa !6
  %238 = call zeroext i8 @sel_bb_end_p(ptr noundef %209) #23
  br label %285

239:                                              ; preds = %193, %254
  %240 = phi ptr [ %256, %254 ], [ %0, %193 ]
  %241 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %242 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !339
  %244 = load ptr, ptr %6, align 8, !tbaa !16
  %245 = call zeroext i8 %243(ptr noundef nonnull %240, ptr noundef %244, ptr noundef %4) #23
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %239
  call fastcc void @undo_transformations(ptr noundef nonnull %6, ptr noundef nonnull %240) #24
  %248 = load ptr, ptr %6, align 8, !tbaa !16
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %252

250:                                              ; preds = %239
  call fastcc void @code_motion_path_driver_cleanup(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  br label %327

251:                                              ; preds = %247
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6557, ptr noundef nonnull @.str.1) #23
  br label %252

252:                                              ; preds = %247, %251
  %253 = icmp eq ptr %240, %194
  br i1 %253, label %267, label %254

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1, i32 0, i32 0, i64 2
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = load ptr, ptr %6, align 8, !tbaa !16
  %258 = load ptr, ptr @s_i_d, align 8
  %259 = load ptr, ptr @sched_luids, align 8
  %260 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !6
  %262 = call fastcc i32 @VEC_int_base_index(ptr noundef %259, i32 noundef %261) #24
  %263 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %258, i32 noundef %262) #24
  %264 = load ptr, ptr %263, align 8, !tbaa !59
  %265 = call ptr @av_set_lookup(ptr noundef %257, ptr noundef %264) #23
  %266 = icmp eq ptr %265, null
  br i1 %266, label %239, label %204

267:                                              ; preds = %252
  %268 = call ptr @sel_bb_end(ptr noundef %10) #23
  %269 = icmp eq ptr %194, %268
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6573, ptr noundef nonnull @.str.1) #23
  br label %271

271:                                              ; preds = %267, %270
  %272 = icmp eq ptr %194, %0
  br i1 %272, label %273, label %277

273:                                              ; preds = %271
  %274 = load ptr, ptr %6, align 8, !tbaa !16
  %275 = load ptr, ptr %7, align 8, !tbaa !16
  %276 = call fastcc i32 @code_motion_process_successors(ptr noundef nonnull %0, ptr noundef %274, ptr noundef %275, ptr noundef %4) #24
  br label %281

277:                                              ; preds = %271
  call fastcc void @_xlist_add(ptr noundef nonnull %7, ptr noundef nonnull %194) #24
  %278 = load ptr, ptr %6, align 8, !tbaa !16
  %279 = load ptr, ptr %7, align 8, !tbaa !16
  %280 = call fastcc i32 @code_motion_process_successors(ptr noundef nonnull %194, ptr noundef %278, ptr noundef %279, ptr noundef %4) #24
  call fastcc void @_list_remove(ptr noundef nonnull %7) #24
  br label %281

281:                                              ; preds = %273, %277
  %282 = phi i32 [ %276, %273 ], [ %280, %277 ]
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  call fastcc void @code_motion_path_driver_cleanup(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  br label %327

285:                                              ; preds = %235, %230, %281
  %286 = phi ptr [ %194, %281 ], [ %209, %230 ], [ %209, %235 ]
  %287 = phi ptr [ %0, %281 ], [ %0, %230 ], [ %237, %235 ]
  %288 = phi i8 [ 0, %281 ], [ 0, %230 ], [ %238, %235 ]
  call void @av_set_clear(ptr noundef nonnull %6) #23
  %289 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1, i32 0, i32 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !6
  %291 = icmp eq ptr %286, %290
  br i1 %291, label %307, label %292

292:                                              ; preds = %285
  %293 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  br label %294

294:                                              ; preds = %292, %302
  %295 = phi ptr [ %303, %302 ], [ %293, %292 ]
  %296 = phi ptr [ %305, %302 ], [ %286, %292 ]
  %297 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %295, i64 0, i32 5
  %298 = load ptr, ptr %297, align 8, !tbaa !340
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %294
  call void %298(ptr noundef %296, ptr noundef %4) #23
  %301 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  br label %302

302:                                              ; preds = %300, %294
  %303 = phi ptr [ %301, %300 ], [ %295, %294 ]
  %304 = getelementptr inbounds %struct.rtx_def, ptr %296, i64 0, i32 1, i32 0, i32 0, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = icmp eq ptr %305, %290
  br i1 %306, label %307, label %294, !llvm.loop !341

307:                                              ; preds = %302, %285
  call fastcc void @_list_remove(ptr noundef nonnull %7) #24
  %308 = getelementptr inbounds %struct.cmpd_local_params, ptr %3, i64 0, i32 5
  %309 = load i8, ptr %308, align 8
  %310 = and i8 %288, 1
  %311 = and i8 %309, -2
  %312 = or disjoint i8 %311, %310
  store i8 %312, ptr %308, align 8
  %313 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %314 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %313, i64 0, i32 6
  %315 = load ptr, ptr %314, align 8, !tbaa !342
  call void %315(ptr noundef %287, ptr noundef %3, ptr noundef %4) #23
  %316 = icmp eq i8 %288, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %307
  %318 = load ptr, ptr %289, align 8, !tbaa !6
  br label %319

319:                                              ; preds = %317, %307
  %320 = phi ptr [ %318, %317 ], [ %287, %307 ]
  %321 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  %322 = getelementptr inbounds %struct.rtx_def, ptr %320, i64 0, i32 1, i32 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !6
  %324 = getelementptr inbounds %struct.basic_block_def, ptr %323, i64 0, i32 9
  %325 = load i32, ptr %324, align 8, !tbaa !9
  %326 = call zeroext i8 @bitmap_set_bit(ptr noundef %321, i32 noundef %325) #23
  br label %327

327:                                              ; preds = %284, %166, %184, %172, %93, %111, %99, %65, %82, %71, %319, %250, %147
  %328 = phi i32 [ %148, %147 ], [ 1, %319 ], [ %282, %284 ], [ -1, %250 ], [ 0, %71 ], [ 0, %82 ], [ 0, %65 ], [ 0, %99 ], [ 0, %111 ], [ 0, %93 ], [ 0, %172 ], [ 0, %184 ], [ 0, %166 ]
  ret i32 %328
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_def(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  store ptr %5, ptr %1, align 8, !tbaa !16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_unavailable_hard_regs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hard_reg_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !324
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 23
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1216, ptr noundef nonnull @.str.1) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !324
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi ptr [ %14, %11 ], [ %7, %2 ]
  %17 = phi ptr [ %12, %11 ], [ %5, %2 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %214

23:                                               ; preds = %15
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #24
  %25 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %26 = icmp ne i32 %25, 0
  %27 = icmp ult i32 %24, 53
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %214

29:                                               ; preds = %23
  br i1 %26, label %30, label %32

30:                                               ; preds = %29
  %31 = tail call fastcc i32 @get_reg_class(ptr noundef nonnull %17) #24
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ %31, %30 ], [ 0, %29 ]
  %34 = zext i32 %24 to i64
  %35 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !6
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %34
  %40 = load i8, ptr %39, align 1, !tbaa !6
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !343
  %44 = icmp ne i8 %43, 0
  %45 = icmp eq i32 %24, 6
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %49 = icmp ne i32 %48, 0
  %50 = icmp eq i32 %33, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %59

52:                                               ; preds = %47, %42, %38, %32
  store i64 -1, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %53 = getelementptr inbounds %struct._def, ptr %0, i64 0, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !352
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %214

56:                                               ; preds = %52
  %57 = shl nuw i64 1, %34
  %58 = xor i64 %57, -1
  store i64 %58, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  br label %214

59:                                               ; preds = %47
  %60 = icmp eq i8 %43, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %59
  %62 = load i8, ptr getelementptr inbounds ([53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 20, i64 16), align 4, !tbaa !6
  %63 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %64 = icmp eq i8 %62, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %61
  %66 = zext i8 %62 to i64
  %67 = add nuw nsw i64 %66, 1
  %68 = and i64 %67, 510
  %69 = add nsw i64 %66, -1
  %70 = insertelement <2 x i64> poison, i64 %69, i64 0
  %71 = shufflevector <2 x i64> %70, <2 x i64> poison, <2 x i32> zeroinitializer
  %72 = insertelement <2 x i64> poison, i64 %66, i64 0
  %73 = shufflevector <2 x i64> %72, <2 x i64> poison, <2 x i32> zeroinitializer
  %74 = add nsw <2 x i64> %73, <i64 0, i64 -1>
  %75 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %63, i64 0
  br label %76

76:                                               ; preds = %76, %65
  %77 = phi i64 [ 0, %65 ], [ %84, %76 ]
  %78 = phi <2 x i64> [ %74, %65 ], [ %85, %76 ]
  %79 = phi <2 x i64> [ %75, %65 ], [ %83, %76 ]
  %80 = add <2 x i64> %78, <i64 19, i64 19>
  %81 = and <2 x i64> %80, <i64 4294967295, i64 4294967295>
  %82 = shl nuw <2 x i64> <i64 1, i64 1>, %81
  %83 = or <2 x i64> %79, %82
  %84 = add i64 %77, 2
  %85 = add <2 x i64> %78, <i64 -2, i64 -2>
  %86 = icmp eq i64 %84, %68
  br i1 %86, label %87, label %76, !llvm.loop !353

87:                                               ; preds = %76
  %88 = insertelement <2 x i64> poison, i64 %77, i64 0
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> zeroinitializer
  %90 = or disjoint <2 x i64> %89, <i64 0, i64 1>
  %91 = icmp ugt <2 x i64> %90, %71
  %92 = select <2 x i1> %91, <2 x i64> %79, <2 x i64> %83
  %93 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %92)
  store i64 %93, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  br label %94

94:                                               ; preds = %87, %61
  %95 = phi i64 [ %93, %87 ], [ %63, %61 ]
  %96 = load i8, ptr getelementptr inbounds ([53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 6, i64 16), align 2, !tbaa !6
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %127, label %98

98:                                               ; preds = %94
  %99 = zext i8 %96 to i64
  %100 = add nuw nsw i64 %99, 1
  %101 = and i64 %100, 510
  %102 = add nsw i64 %99, -1
  %103 = insertelement <2 x i64> poison, i64 %102, i64 0
  %104 = shufflevector <2 x i64> %103, <2 x i64> poison, <2 x i32> zeroinitializer
  %105 = insertelement <2 x i64> poison, i64 %99, i64 0
  %106 = shufflevector <2 x i64> %105, <2 x i64> poison, <2 x i32> zeroinitializer
  %107 = add nsw <2 x i64> %106, <i64 0, i64 -1>
  %108 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %95, i64 0
  br label %109

109:                                              ; preds = %109, %98
  %110 = phi i64 [ 0, %98 ], [ %117, %109 ]
  %111 = phi <2 x i64> [ %107, %98 ], [ %118, %109 ]
  %112 = phi <2 x i64> [ %108, %98 ], [ %116, %109 ]
  %113 = add <2 x i64> %111, <i64 5, i64 5>
  %114 = and <2 x i64> %113, <i64 4294967295, i64 4294967295>
  %115 = shl nuw <2 x i64> <i64 1, i64 1>, %114
  %116 = or <2 x i64> %112, %115
  %117 = add i64 %110, 2
  %118 = add <2 x i64> %111, <i64 -2, i64 -2>
  %119 = icmp eq i64 %117, %101
  br i1 %119, label %120, label %109, !llvm.loop !356

120:                                              ; preds = %109
  %121 = insertelement <2 x i64> poison, i64 %110, i64 0
  %122 = shufflevector <2 x i64> %121, <2 x i64> poison, <2 x i32> zeroinitializer
  %123 = or disjoint <2 x i64> %122, <i64 0, i64 1>
  %124 = icmp ugt <2 x i64> %123, %104
  %125 = select <2 x i1> %124, <2 x i64> %112, <2 x i64> %116
  %126 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %125)
  store i64 %126, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  br label %127

127:                                              ; preds = %94, %120, %59
  %128 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %19) #24
  %129 = and i32 %128, -8
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 8) #23
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 5), align 8, !tbaa !357
  %136 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %137 = or i64 %136, %135
  store i64 %137, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  br label %138

138:                                              ; preds = %134, %131, %127
  %139 = getelementptr inbounds %struct._def, ptr %0, i64 0, i32 1
  %140 = load i8, ptr %139, align 8, !tbaa !352
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i64, ptr @call_used_reg_set, align 8, !tbaa !232
  %144 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %145 = or i64 %144, %143
  store i64 %145, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %214, label %149

149:                                              ; preds = %146
  %150 = zext i32 %33 to i64
  %151 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !232
  store i64 %152, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  %153 = load i32, ptr %19, align 8
  %154 = lshr i32 %153, 16
  %155 = and i32 %154, 255
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 1, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !6
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %149
  tail call fastcc void @init_regs_for_mode(i32 noundef %155) #24
  %161 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  %162 = load i8, ptr %139, align 8, !tbaa !352
  br label %163

163:                                              ; preds = %160, %149
  %164 = phi i8 [ %162, %160 ], [ %140, %149 ]
  %165 = phi i64 [ %161, %160 ], [ %152, %149 ]
  %166 = getelementptr inbounds [87 x i64], ptr @sel_hrd, i64 0, i64 %156
  %167 = load i64, ptr %166, align 8, !tbaa !232
  %168 = and i64 %165, %167
  store i64 %168, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  %169 = icmp eq i8 %164, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 3, i64 %156
  %172 = load i64, ptr %171, align 8, !tbaa !232
  %173 = xor i64 %172, -1
  %174 = and i64 %168, %173
  store i64 %174, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  br label %175

175:                                              ; preds = %170, %163
  %176 = phi i64 [ %174, %170 ], [ %168, %163 ]
  call fastcc void @hard_reg_set_iter_init(ptr noundef nonnull %4, i64 noundef %176, ptr noundef nonnull %3) #24
  %177 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !31
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %207, label %179

179:                                              ; preds = %175, %202
  %180 = load i32, ptr %3, align 4, !tbaa !28
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %181, i64 %156
  %183 = load i8, ptr %182, align 1, !tbaa !6
  %184 = zext i8 %183 to i32
  %185 = icmp eq i8 %183, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1324, ptr noundef nonnull @.str.1) #23
  br label %187

187:                                              ; preds = %179, %186
  br label %188

188:                                              ; preds = %187, %191
  %189 = phi i32 [ %192, %191 ], [ %184, %187 ]
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = add nsw i32 %189, -1
  %193 = add i32 %192, %24
  %194 = add i32 %192, %180
  %195 = tail call fastcc zeroext i8 @sel_hard_regno_rename_ok(i32 noundef %193, i32 noundef %194) #24, !range !31
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %188, !llvm.loop !359

197:                                              ; preds = %191
  %198 = shl nuw i64 1, %181
  %199 = xor i64 %198, -1
  %200 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  %201 = and i64 %200, %199
  store i64 %201, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  br label %202

202:                                              ; preds = %188, %197
  call fastcc void @hard_reg_set_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  %203 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !31
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %179, !llvm.loop !360

205:                                              ; preds = %202
  %206 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  br label %207

207:                                              ; preds = %205, %175
  %208 = phi i64 [ %206, %205 ], [ %176, %175 ]
  %209 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.0, align 8, !tbaa !315
  %210 = xor i64 %209, -1
  %211 = and i64 %208, %210
  %212 = shl nuw i64 1, %34
  %213 = or i64 %211, %212
  store i64 %213, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  br label %214

214:                                              ; preds = %146, %52, %56, %23, %15, %207
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
define internal fastcc void @undo_transformations(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr null, ptr %5, align 8, !tbaa !16
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #24
  %7 = load ptr, ptr %3, align 8, !tbaa !124
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %8, ptr noundef nonnull %4) #24, !range !31
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %72, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %67
  %14 = load ptr, ptr %4, align 8, !tbaa !16
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %1, ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %13
  %20 = load ptr, ptr @s_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = load i32, ptr %12, align 8, !tbaa !6
  %23 = call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %22) #24
  %24 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %20, i32 noundef %23) #24
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.vinsn_def, ptr %25, i64 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !174
  %28 = load ptr, ptr %14, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.vinsn_def, ptr %28, i64 0, i32 1, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !110
  %31 = call zeroext i8 @bitmap_intersect_p(ptr noundef %27, ptr noundef %30) #23
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %19
  %34 = call fastcc zeroext i8 @identical_copy_p(ptr noundef nonnull %1) #24, !range !31
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %38 = icmp sgt i32 %37, 5
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %14, align 8, !tbaa !55
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !6
  %47 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.68, i32 noundef %46) #24
  %48 = shl nsw i32 %47, 1
  %49 = or disjoint i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  %52 = load ptr, ptr %14, align 8, !tbaa !55
  %53 = load ptr, ptr %52, align 8, !tbaa !85
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !6
  %56 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %51, i64 noundef %50, ptr noundef nonnull @.str.68, i32 noundef %55) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %51) #23
  %57 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %58 = call i32 @fputs(ptr nonnull %51, ptr %57)
  br label %66

59:                                               ; preds = %39
  %60 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %61 = load ptr, ptr %14, align 8, !tbaa !55
  %62 = load ptr, ptr %61, align 8, !tbaa !85
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !6
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.68, i32 noundef %64) #24
  br label %66

66:                                               ; preds = %42, %59, %36
  call void @av_set_iter_remove(ptr noundef nonnull %3) #23
  br label %67

67:                                               ; preds = %13, %19, %33, %66
  call fastcc void @_list_iter_next(ptr noundef nonnull %3) #24
  %68 = load ptr, ptr %3, align 8, !tbaa !124
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %69, ptr noundef nonnull %4) #24, !range !31
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %13, !llvm.loop !361

72:                                               ; preds = %67, %2
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 0) #24
  %73 = load ptr, ptr %3, align 8, !tbaa !124
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  %75 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %74, ptr noundef nonnull %4) #24, !range !31
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %131, label %77

77:                                               ; preds = %72, %126
  %78 = load ptr, ptr %4, align 8, !tbaa !16
  %79 = getelementptr inbounds %struct._expr, ptr %78, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = load ptr, ptr %78, align 8, !tbaa !55
  %82 = call i32 @find_in_history_vect(ptr noundef %80, ptr noundef %1, ptr noundef %81, i8 noundef zeroext 1) #23
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %126

84:                                               ; preds = %77
  %85 = load ptr, ptr %79, align 8, !tbaa !44
  %86 = call fastcc ptr @VEC_expr_history_def_base_index(ptr noundef %85, i32 noundef %82) #24
  %87 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !362
  switch i32 %88, label %125 [
    i32 1, label %89
    i32 0, label %101
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !364
  %92 = getelementptr inbounds %struct._expr, ptr %78, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !94
  %94 = and i32 %91, 16777215
  %95 = and i32 %93, 16777215
  %96 = xor i32 %94, -1
  %97 = and i32 %95, %96
  %98 = getelementptr inbounds %struct._expr, ptr %78, i64 0, i32 8
  %99 = load i32, ptr %98, align 4, !tbaa !67
  %100 = or i32 %97, %99
  store i32 %100, ptr %98, align 4, !tbaa !67
  br label %126

101:                                              ; preds = %84
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  %102 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !365
  %104 = getelementptr inbounds %struct.vinsn_def, ptr %103, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !56
  %106 = icmp eq i32 %105, 23
  %107 = load ptr, ptr %78, align 8, !tbaa !55
  %108 = getelementptr inbounds %struct.vinsn_def, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !56
  %110 = icmp ne i32 %109, 23
  %111 = xor i1 %106, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1986, ptr noundef nonnull @.str.1) #23
  br label %113

113:                                              ; preds = %101, %112
  call void @copy_expr(ptr noundef nonnull %6, ptr noundef nonnull %78) #23
  %114 = getelementptr inbounds %struct.expr_history_def_1, ptr %86, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !366
  %116 = load ptr, ptr %6, align 8, !tbaa !55
  %117 = call zeroext i8 @vinsn_equal_p(ptr noundef %115, ptr noundef %116) #23
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  call void @change_vinsn_in_expr(ptr noundef nonnull %6, ptr noundef nonnull %103) #23
  br label %123

120:                                              ; preds = %113
  %121 = call fastcc zeroext i8 @substitute_reg_in_expr(ptr noundef nonnull %6, ptr noundef %1, i8 noundef zeroext 1) #24, !range !31
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %124, label %123

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
  %127 = load ptr, ptr %3, align 8, !tbaa !124
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  %129 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %128, ptr noundef nonnull %4) #24, !range !31
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %77, !llvm.loop !367

131:                                              ; preds = %126, %72
  call void @av_set_union_and_clear(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @code_motion_path_driver_cleanup(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  tail call fastcc void @_list_remove(ptr noundef %1) #24
  tail call void @av_set_clear(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @code_motion_process_successors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.succ_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.cmpd_local_params, align 16
  %8 = alloca %struct._expr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #25
  %9 = getelementptr inbounds %struct.cmpd_local_params, ptr %7, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.cmpd_local_params, ptr %7, i64 0, i32 2
  store ptr null, ptr %10, align 16, !tbaa !46
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.succ_iterator, ptr %5, i64 0, i32 1
  %13 = getelementptr inbounds %struct.succ_iterator, ptr %5, i64 0, i32 6
  %14 = load ptr, ptr %11, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = call fastcc i32 @VEC_edge_base_length(ptr noundef %18) #24
  %20 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !368
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %0, i32 noundef %22) #24
  %23 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %0) #24
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %4, %57
  %26 = phi i32 [ %60, %57 ], [ %19, %4 ]
  %27 = phi ptr [ %58, %57 ], [ %17, %4 ]
  %28 = phi i32 [ %48, %57 ], [ 0, %4 ]
  %29 = phi i32 [ %51, %57 ], [ %16, %4 ]
  br label %30

30:                                               ; preds = %25, %66
  %31 = phi i32 [ %48, %66 ], [ %28, %25 ]
  %32 = load <2 x ptr>, ptr %12, align 8, !tbaa !16
  store <2 x ptr> %32, ptr %7, align 16, !tbaa !16
  %33 = load i16, ptr %13, align 2, !tbaa !182
  %34 = icmp eq i16 %33, 1
  %35 = load ptr, ptr %6, align 8, !tbaa !16
  br i1 %34, label %36, label %38

36:                                               ; preds = %30
  %37 = call fastcc i32 @code_motion_path_driver(ptr noundef %35, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %3) #24
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi i32 [ %37, %36 ], [ 0, %30 ]
  %40 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %41 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !369
  call void %42(ptr noundef %0, ptr noundef %35, i32 noundef %39, ptr noundef nonnull %7, ptr noundef %3) #23
  %43 = icmp eq i32 %39, 1
  %44 = icmp eq i32 %39, -1
  %45 = icmp ne i32 %31, 1
  %46 = select i1 %44, i1 %45, i1 false
  %47 = select i1 %46, i32 -1, i32 %31
  %48 = select i1 %43, i32 1, i32 %47
  %49 = load ptr, ptr %11, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !9
  %52 = icmp eq i32 %51, %29
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load ptr, ptr %27, align 8, !tbaa !116
  %55 = call fastcc i32 @VEC_edge_base_length(ptr noundef %54) #24
  %56 = icmp eq i32 %55, %26
  br i1 %56, label %66, label %57

57:                                               ; preds = %53, %38
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !116
  %60 = call fastcc i32 @VEC_edge_base_length(ptr noundef %59) #24
  %61 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %62 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %61, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !368
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %0, i32 noundef %63) #24
  %64 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %0) #24
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %25

66:                                               ; preds = %53
  call fastcc void @_succ_iter_next(ptr noundef nonnull %5) #24
  %67 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %0) #24
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %30, !llvm.loop !370

69:                                               ; preds = %57, %66, %4
  %70 = phi i32 [ 0, %4 ], [ %48, %66 ], [ %48, %57 ]
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %74 = getelementptr inbounds %struct.code_motion_path_driver_info_def, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !371
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  call void %75(ptr noundef nonnull %7, ptr noundef %3) #23
  br label %78

78:                                               ; preds = %77, %72, %69
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #25
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @identical_copy_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %24

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
define internal fastcc nonnull ptr @VEC_expr_history_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_expr_history_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_reg_class(ptr noundef %0) unnamed_addr #0 {
  tail call void @extract_insn(ptr noundef %0) #23
  %2 = tail call i32 @constrain_operands(i32 noundef 1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1033, ptr noundef nonnull @.str.1) #23
  br label %5

5:                                                ; preds = %4, %1
  tail call void @preprocess_constraints() #23
  %6 = load i32, ptr @which_alternative, align 4, !tbaa !28
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !372
  %8 = sext i8 %7 to i32
  %9 = icmp sgt i8 %7, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = sext i32 %6 to i64
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %10, %23
  %14 = phi i64 [ 0, %10 ], [ %24, %23 ]
  %15 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %14, i64 %11, i32 3
  %16 = load i32, ptr %15, align 16, !tbaa !374
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %19, i64 %11, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !376
  %22 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %14, i64 %11, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !376
  br label %23

23:                                               ; preds = %18, %13
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, %12
  br i1 %25, label %26, label %13, !llvm.loop !377

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = tail call i32 @asm_noperands(ptr noundef %28) #23
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %36, label %59

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call i32 @asm_noperands(ptr noundef %33) #23
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %102, label %59

36:                                               ; preds = %26
  br i1 %9, label %37, label %102

37:                                               ; preds = %36
  %38 = zext nneg i32 %8 to i64
  br label %39

39:                                               ; preds = %37, %56
  %40 = phi i64 [ 0, %37 ], [ %57, %56 ]
  %41 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !28
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %40
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = load ptr, ptr %46, align 8, !tbaa !16
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %91

51:                                               ; preds = %44
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %47) #24
  %53 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load i32, ptr %53, align 8, !tbaa !6
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %51, %39
  %57 = add nuw nsw i64 %40, 1
  %58 = icmp eq i64 %57, %38
  br i1 %58, label %102, label %39, !llvm.loop !378

59:                                               ; preds = %31, %26
  %60 = load i32, ptr %0, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %102, label %63

63:                                               ; preds = %59
  %64 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !379
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, %8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %63
  %69 = sext i32 %6 to i64
  %70 = sext i8 %7 to i64
  %71 = zext nneg i32 %66 to i64
  br label %75

72:                                               ; preds = %83
  %73 = add nuw nsw i64 %76, 1
  %74 = icmp eq i64 %73, %71
  br i1 %74, label %102, label %75, !llvm.loop !380

75:                                               ; preds = %68, %72
  %76 = phi i64 [ 0, %68 ], [ %73, %72 ]
  %77 = icmp slt i64 %76, %70
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = sub nsw i64 %76, %70
  %80 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !6
  %82 = sext i8 %81 to i64
  br label %83

83:                                               ; preds = %75, %78
  %84 = phi i64 [ %82, %78 ], [ %76, %75 ]
  %85 = shl i64 %84, 32
  %86 = ashr exact i64 %85, 32
  %87 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !28
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
  %101 = load i32, ptr %100, align 8, !tbaa !376
  br label %102

102:                                              ; preds = %72, %56, %99, %31, %63, %36, %59
  %103 = phi i32 [ 0, %59 ], [ 0, %36 ], [ 0, %63 ], [ 0, %31 ], [ %101, %99 ], [ 0, %56 ], [ 0, %72 ]
  ret i32 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_regs_for_mode(i32 noundef %0) unnamed_addr #0 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [87 x i64], ptr @sel_hrd, i64 0, i64 %2
  store i64 0, ptr %3, align 8, !tbaa !232
  %4 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 3, i64 %2
  store i64 0, ptr %4, align 8, !tbaa !232
  br label %5

5:                                                ; preds = %1, %36
  %6 = phi i64 [ 0, %1 ], [ %37, %36 ]
  %7 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %6, i64 %2
  %8 = load i8, ptr %7, align 1, !tbaa !6
  %9 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8
  %10 = zext i8 %8 to i64
  br label %11

11:                                               ; preds = %24, %5
  %12 = phi i64 [ %13, %24 ], [ %10, %5 ]
  %13 = add nsw i64 %12, -1
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = add nsw i64 %13, %6
  %17 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = shl nuw i64 1, %16
  %26 = and i64 %9, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %36, label %11, !llvm.loop !381

28:                                               ; preds = %11
  %29 = trunc i64 %6 to i32
  %30 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %29, i32 noundef %0) #23
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = shl nuw i64 1, %6
  %34 = load i64, ptr %3, align 8, !tbaa !232
  %35 = or i64 %34, %33
  store i64 %35, ptr %3, align 8, !tbaa !232
  br label %36

36:                                               ; preds = %24, %20, %15, %28, %32
  %37 = add nuw nsw i64 %6, 1
  %38 = icmp eq i64 %37, 53
  br i1 %38, label %39, label %5, !llvm.loop !382

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 1, i64 %2
  store i8 1, ptr %40, align 1, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @hard_reg_set_iter_init(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = alloca i64, align 8
  store ptr %4, ptr %0, align 8, !tbaa !383
  %5 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 1
  store i16 1, ptr %5, align 8, !tbaa !385
  %6 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 2
  store i16 0, ptr %6, align 2, !tbaa !386
  %7 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 3
  store i64 %1, ptr %7, align 8, !tbaa !387
  %8 = icmp eq i64 %1, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %2, align 4, !tbaa !28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @hard_reg_set_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !385
  %6 = load i16, ptr %3, align 2, !tbaa !386
  %7 = icmp ult i16 %6, %5
  br i1 %7, label %8, label %58

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !387
  br label %11

11:                                               ; preds = %8, %52
  %12 = phi i64 [ %10, %8 ], [ %53, %52 ]
  %13 = phi i64 [ %10, %8 ], [ %54, %52 ]
  %14 = phi i16 [ %6, %8 ], [ %55, %52 ]
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = and i64 %12, 1
  %18 = icmp eq i64 %17, 0
  %19 = load i32, ptr %1, align 4, !tbaa !28
  br i1 %18, label %20, label %28

20:                                               ; preds = %16, %20
  %21 = phi i32 [ %24, %20 ], [ %19, %16 ]
  %22 = phi i64 [ %23, %20 ], [ %12, %16 ]
  %23 = lshr exact i64 %22, 1
  %24 = add i32 %21, 1
  %25 = and i64 %22, 2
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %20, label %27, !llvm.loop !388

27:                                               ; preds = %20
  store i64 %23, ptr %9, align 8, !tbaa !387
  store i32 %24, ptr %1, align 4, !tbaa !28
  br label %28

28:                                               ; preds = %27, %16
  %29 = phi i32 [ %24, %27 ], [ %19, %16 ]
  %30 = icmp ult i32 %29, 53
  %31 = zext i1 %30 to i8
  br label %58

32:                                               ; preds = %11
  %33 = load i32, ptr %1, align 4, !tbaa !28
  %34 = add i32 %33, 63
  %35 = and i32 %34, -64
  %36 = add nuw i16 %14, 1
  %37 = icmp ult i16 %36, %5
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8, !tbaa !383
  br label %40

40:                                               ; preds = %38, %47
  %41 = phi i16 [ %36, %38 ], [ %49, %47 ]
  %42 = phi i32 [ %35, %38 ], [ %48, %47 ]
  %43 = zext i16 %41 to i64
  %44 = getelementptr inbounds i64, ptr %39, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !232
  store i64 %45, ptr %9, align 8, !tbaa !387
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = add i32 %42, 64
  %49 = add i16 %41, 1
  %50 = icmp eq i16 %49, %5
  br i1 %50, label %51, label %40, !llvm.loop !389

51:                                               ; preds = %47
  store i32 %48, ptr %1, align 4, !tbaa !28
  store i16 %5, ptr %3, align 2, !tbaa !386
  br label %58

52:                                               ; preds = %40, %32
  %53 = phi i64 [ %12, %32 ], [ %45, %40 ]
  %54 = phi i64 [ 0, %32 ], [ %45, %40 ]
  %55 = phi i16 [ %36, %32 ], [ %41, %40 ]
  %56 = phi i32 [ %35, %32 ], [ %42, %40 ]
  store i32 %56, ptr %1, align 4, !tbaa !28
  store i16 %55, ptr %3, align 2, !tbaa !386
  %57 = icmp ult i16 %55, %5
  br i1 %57, label %11, label %58

58:                                               ; preds = %52, %51, %2, %28
  %59 = phi i8 [ %31, %28 ], [ 0, %2 ], [ 0, %51 ], [ 0, %52 ]
  ret i8 %59
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @sel_hard_regno_rename_ok(i32 noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 2, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !232
  %6 = zext nneg i32 %0 to i64
  %7 = shl nuw i64 1, %6
  %8 = and i64 %5, %7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  tail call fastcc void @init_hard_regno_rename(i32 noundef %0) #24
  %11 = load i64, ptr %4, align 8, !tbaa !232
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
define internal fastcc void @hard_reg_set_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.hard_reg_set_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !387
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !387
  %6 = load i32, ptr %1, align 4, !tbaa !28
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !28
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
define internal fastcc void @init_hard_regno_rename(i32 noundef %0) unnamed_addr #19 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw i64 1, %2
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds %struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 2, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !232
  %7 = or i64 %6, %3
  store i64 %7, ptr %5, align 8, !tbaa !232
  %8 = and i64 %4, -8
  %9 = icmp eq i64 %8, 8
  %10 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !322
  br label %11

11:                                               ; preds = %1, %22
  %12 = phi i64 [ %7, %1 ], [ %23, %22 ]
  %13 = phi i64 [ %10, %1 ], [ %24, %22 ]
  %14 = phi i64 [ 0, %1 ], [ %25, %22 ]
  %15 = shl nuw nsw i64 1, %14
  %16 = and i64 %13, %15
  %17 = icmp eq i64 %16, 0
  %18 = or i1 %9, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = or i64 %12, %15
  store i64 %20, ptr %5, align 8, !tbaa !232
  %21 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !322
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i64 [ %20, %19 ], [ %12, %11 ]
  %24 = phi i64 [ %21, %19 ], [ %13, %11 ]
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %27, label %11, !llvm.loop !390

27:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @choose_best_reg_1(i64 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hard_reg_set_iterator, align 8
  %7 = alloca %struct._list_iterator, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  store i8 1, ptr %2, align 1, !tbaa !6
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef nonnull %4, i8 noundef zeroext 0) #24
  %9 = load ptr, ptr %7, align 8, !tbaa !124
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %10, ptr noundef nonnull %8) #24, !range !31
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %69, label %13

13:                                               ; preds = %3, %64
  %14 = phi i32 [ %35, %64 ], [ 0, %3 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !16
  %16 = load ptr, ptr %15, align 8, !tbaa !324
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1398, ptr noundef nonnull @.str.1) #23
  %25 = load i32, ptr %20, align 8
  br label %26

26:                                               ; preds = %13, %24
  %27 = phi i32 [ %21, %13 ], [ %25, %24 ]
  %28 = icmp eq i32 %14, 0
  %29 = lshr i32 %27, 16
  %30 = and i32 %29, 255
  br i1 %28, label %34, label %31

31:                                               ; preds = %26
  %32 = icmp eq i32 %14, %30
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1406, ptr noundef nonnull @.str.1) #23
  br label %34

34:                                               ; preds = %26, %31, %33
  %35 = phi i32 [ %14, %31 ], [ %14, %33 ], [ %30, %26 ]
  %36 = call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #24
  %37 = zext i32 %36 to i64
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %37, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !6
  %41 = zext i8 %40 to i32
  %42 = icmp eq i8 %40, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %34
  %44 = zext i8 %40 to i64
  br label %45

45:                                               ; preds = %43, %53
  %46 = phi i64 [ 0, %43 ], [ %54, %53 ]
  %47 = trunc i64 %46 to i32
  %48 = add i32 %36, %47
  %49 = zext nneg i32 %48 to i64
  %50 = shl nuw i64 1, %49
  %51 = and i64 %50, %0
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = add nuw nsw i64 %46, 1
  %55 = icmp eq i64 %54, %44
  br i1 %55, label %59, label %45, !llvm.loop !391

56:                                               ; preds = %45, %34
  %57 = phi i32 [ 0, %34 ], [ %47, %45 ]
  %58 = icmp eq i32 %57, %41
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %53
  %60 = icmp eq i32 %35, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1416, ptr noundef nonnull @.str.1) #23
  br label %62

62:                                               ; preds = %61, %59
  %63 = call ptr @gen_rtx_REG(i32 noundef %35, i32 noundef %36) #23
  br label %129

64:                                               ; preds = %56
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #24
  %65 = load ptr, ptr %7, align 8, !tbaa !124
  %66 = load ptr, ptr %65, align 8, !tbaa !16
  %67 = call fastcc zeroext i8 @_list_iter_cond_def(ptr noundef %66, ptr noundef nonnull %8) #24, !range !31
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %13, !llvm.loop !392

69:                                               ; preds = %64, %3
  %70 = phi i32 [ 0, %3 ], [ %35, %64 ]
  store i8 0, ptr %2, align 1, !tbaa !6
  %71 = load i64, ptr @find_best_reg_for_expr.reg_rename_data.1, align 8, !tbaa !358
  call fastcc void @hard_reg_set_iter_init(ptr noundef nonnull %6, i64 noundef %71, ptr noundef nonnull %5) #24
  %72 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !31
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %129, label %74

74:                                               ; preds = %69
  %75 = zext nneg i32 %70 to i64
  br label %76

76:                                               ; preds = %74, %117
  %77 = phi i32 [ -1, %74 ], [ %118, %117 ]
  %78 = load i32, ptr %5, align 4, !tbaa !28
  %79 = zext i32 %78 to i64
  %80 = shl nuw i64 1, %79
  %81 = and i64 %80, %0
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %76
  %84 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %79, i64 %75
  %85 = load i8, ptr %84, align 1, !tbaa !6
  %86 = icmp ugt i8 %85, 1
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = zext i8 %85 to i64
  br label %92

89:                                               ; preds = %92
  %90 = add nuw nsw i64 %93, 1
  %91 = icmp eq i64 %90, %88
  br i1 %91, label %103, label %92, !llvm.loop !393

92:                                               ; preds = %87, %89
  %93 = phi i64 [ 1, %87 ], [ %90, %89 ]
  %94 = trunc i64 %93 to i32
  %95 = add i32 %78, %94
  %96 = zext nneg i32 %95 to i64
  %97 = shl nuw i64 1, %96
  %98 = and i64 %97, %0
  %99 = icmp ne i64 %98, 0
  %100 = and i64 %97, %71
  %101 = icmp eq i64 %100, 0
  %102 = or i1 %99, %101
  br i1 %102, label %117, label %89

103:                                              ; preds = %89, %83
  %104 = icmp slt i32 %77, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %79
  %107 = load i32, ptr %106, align 4, !tbaa !28
  %108 = zext nneg i32 %77 to i64
  %109 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !28
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105, %103
  %113 = sext i32 %78 to i64
  %114 = getelementptr inbounds [53 x i32], ptr @reg_rename_tick, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !28
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %92, %76, %112, %105
  %118 = phi i32 [ %77, %76 ], [ %78, %112 ], [ %77, %105 ], [ %77, %92 ]
  call fastcc void @hard_reg_set_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #24
  %119 = call fastcc zeroext i8 @hard_reg_set_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !31
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %76, !llvm.loop !394

121:                                              ; preds = %117, %112
  %122 = phi i32 [ %118, %117 ], [ %78, %112 ]
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = icmp eq i32 %70, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1457, ptr noundef nonnull @.str.1) #23
  br label %127

127:                                              ; preds = %124, %126
  %128 = call ptr @gen_rtx_REG(i32 noundef %70, i32 noundef %122) #23
  br label %129

129:                                              ; preds = %69, %62, %121, %127
  %130 = phi ptr [ %128, %127 ], [ null, %121 ], [ %63, %62 ], [ null, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret ptr %130
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
define internal fastcc zeroext i8 @replace_src_with_reg_ok_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @s_i_d, align 8
  %6 = load ptr, ptr @sched_luids, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %6, i32 noundef %8) #24
  %10 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %5, i32 noundef %9) #24
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %12 = getelementptr inbounds %struct.vinsn_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !56
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 923, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %2, %15
  call void @get_dest_and_mode(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %17 = load i32, ptr %3, align 4, !tbaa !28
  %18 = load i32, ptr %1, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 926, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %16, %22
  %24 = load ptr, ptr %4, align 8, !tbaa !16
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %30 = call fastcc i32 @rhs_regno(ptr noundef nonnull %24) #24
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28, %23
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
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
define internal fastcc zeroext i8 @replace_dest_with_reg_ok_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @s_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #24
  %8 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #24
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.vinsn_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !56
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 948, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %2, %13
  %15 = getelementptr inbounds %struct.vinsn_def, ptr %9, i64 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = load i32, ptr %16, align 8
  %18 = load i32, ptr %1, align 8
  %19 = xor i32 %18, %17
  %20 = and i32 %19, 16711680
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 949, ptr noundef nonnull @.str.1) #23
  br label %23

23:                                               ; preds = %14, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
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
define internal fastcc i32 @get_expr_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = tail call fastcc i32 @recog_memoized(ptr noundef %4) #24
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %24

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
  %16 = load i32, ptr %15, align 8, !tbaa !6
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
  %26 = load ptr, ptr %25, align 8, !tbaa !290
  %27 = tail call fastcc i32 @estimate_insn_cost(ptr noundef %4, ptr noundef %26) #24, !range !291
  br label %28

28:                                               ; preds = %12, %24, %23
  %29 = phi i32 [ 0, %23 ], [ %27, %24 ], [ 1, %12 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @estimate_insn_cost(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @estimate_insn_cost.temp, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  %7 = tail call ptr @xmalloc(i64 noundef %6) #23
  store ptr %7, ptr @estimate_insn_cost.temp, align 8, !tbaa !16
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %10 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %1, i64 %10, i1 false)
  %11 = tail call i32 @state_transition(ptr noundef %9, ptr noundef %0) #23
  %12 = icmp slt i32 %11, 0
  %13 = tail call i32 @llvm.umax.i32(i32 %11, i32 1)
  %14 = select i1 %12, i32 0, i32 %13
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @state_transition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_dfa_new_cycle(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !268
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._sel_insn_data, ptr %13, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !275
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !249
  %19 = add nsw i32 %18, -1
  br label %20

20:                                               ; preds = %16, %7
  %21 = phi i32 [ %15, %7 ], [ %19, %16 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !28
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !395
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !290
  %28 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %27, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct._fence, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !395
  %31 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %32 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %33 = load i32, ptr %29, align 8, !tbaa !249
  %34 = call i32 %30(ptr noundef %31, i32 noundef %32, ptr noundef %0, i32 noundef %21, i32 noundef %33, ptr noundef nonnull %3) #23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %52, label %43

36:                                               ; preds = %43
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !395
  %38 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %39 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %40 = load i32, ptr %29, align 8, !tbaa !249
  %41 = call i32 %37(ptr noundef %38, i32 noundef %39, ptr noundef %0, i32 noundef %21, i32 noundef %40, ptr noundef nonnull %3) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43, !llvm.loop !396

43:                                               ; preds = %24, %36
  %44 = load ptr, ptr %26, align 8, !tbaa !290
  %45 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %46 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %45, i64 %46, i1 false)
  call fastcc void @advance_one_cycle(ptr noundef nonnull %1) #24
  %47 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %48 = load ptr, ptr %26, align 8, !tbaa !290
  %49 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %48, i64 %49, i1 false)
  %50 = load i32, ptr %3, align 4, !tbaa !28
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %36, label %52, !llvm.loop !396

52:                                               ; preds = %36, %43, %24, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @advance_one_cycle(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !290
  tail call void @advance_state(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !249
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !249
  %8 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  store i32 0, ptr %8, align 4, !tbaa !266
  %9 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %10 = load i8, ptr %9, align 8
  %11 = or i8 %10, 4
  store i8 %11, ptr %9, align 8
  %12 = load i32, ptr @issue_rate, align 4, !tbaa !28
  store i32 %12, ptr @can_issue_more, align 4, !tbaa !28
  %13 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %12, ptr %13, align 8, !tbaa !252
  %14 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !397
  %16 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %2) #24, !range !149
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %56, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 5
  br label %20

20:                                               ; preds = %18, %51
  %21 = phi ptr [ %15, %18 ], [ %52, %51 ]
  %22 = phi i32 [ 0, %18 ], [ %53, %51 ]
  %23 = load ptr, ptr @s_i_d, align 8
  %24 = load ptr, ptr @sched_luids, align 8
  %25 = load ptr, ptr %2, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !6
  %28 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %24, i32 noundef %27) #24
  %29 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %23, i32 noundef %28) #24
  %30 = getelementptr inbounds %struct._sel_insn_data, ptr %29, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !276
  %32 = icmp sgt i32 %31, %6
  br i1 %32, label %51, label %44

33:                                               ; preds = %44
  %34 = load ptr, ptr @s_i_d, align 8
  %35 = load ptr, ptr @sched_luids, align 8
  %36 = load ptr, ptr %2, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !6
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %35, i32 noundef %38) #24
  %40 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %34, i32 noundef %39) #24
  %41 = getelementptr inbounds %struct._sel_insn_data, ptr %40, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !276
  %43 = icmp sgt i32 %42, %6
  br i1 %43, label %51, label %44, !llvm.loop !398

44:                                               ; preds = %20, %33
  %45 = phi ptr [ %36, %33 ], [ %25, %20 ]
  %46 = load ptr, ptr %19, align 8, !tbaa !250
  tail call void @remove_from_deps(ptr noundef %46, ptr noundef nonnull %45) #23
  %47 = load ptr, ptr %14, align 8, !tbaa !397
  tail call fastcc void @VEC_rtx_base_unordered_remove(ptr noundef %47, i32 noundef %22) #24
  %48 = load ptr, ptr %14, align 8, !tbaa !397
  %49 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %48, i32 noundef %22, ptr noundef nonnull %2) #24, !range !149
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %33, !llvm.loop !398

51:                                               ; preds = %33, %20
  %52 = phi ptr [ %21, %20 ], [ %48, %33 ]
  %53 = add i32 %22, 1
  %54 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %52, i32 noundef %53, ptr noundef nonnull %2) #24, !range !149
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %20, !llvm.loop !398

56:                                               ; preds = %51, %44, %1
  %57 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 8, !tbaa !249
  %64 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.74, i32 noundef %63) #24
  %65 = shl nsw i32 %64, 1
  %66 = or disjoint i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = alloca i8, i64 %67, align 16
  %69 = load i32, ptr %5, align 8, !tbaa !249
  %70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %68, i64 noundef %67, ptr noundef nonnull @.str.74, i32 noundef %69) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %68) #23
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %72 = call i32 @fputs(ptr nonnull %68, ptr %71)
  br label %77

73:                                               ; preds = %59
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %75 = load i32, ptr %5, align 8, !tbaa !249
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.74, i32 noundef %75) #24
  br label %77

77:                                               ; preds = %73, %62
  %78 = load ptr, ptr %3, align 8, !tbaa !290
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
define internal fastcc void @VEC_rtx_base_unordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !163
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = add i32 %3, -1
  store i32 %6, ptr %0, align 8, !tbaa !163
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  store ptr %9, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_state(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  %3 = trunc i64 %2 to i32
  %4 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
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
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %14 = call i32 @fputs(ptr nonnull %11, ptr %13)
  br label %18

15:                                               ; preds = %1
  %16 = load ptr, ptr @sched_dump, align 8, !tbaa !16
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
  %24 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %0, i64 %23
  %28 = load i8, ptr %27, align 1, !tbaa !6
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.76, i32 noundef %29) #24
  %31 = shl nsw i32 %30, 1
  %32 = or disjoint i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  %35 = load i8, ptr %27, align 1, !tbaa !6
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %34, i64 noundef %33, ptr noundef nonnull @.str.76, i32 noundef %36) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %34) #23
  %38 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %39 = call i32 @fputs(ptr nonnull %34, ptr %38)
  br label %46

40:                                               ; preds = %22
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %42 = getelementptr inbounds i8, ptr %0, i64 %23
  %43 = load i8, ptr %42, align 1, !tbaa !6
  %44 = zext i8 %43 to i32
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.76, i32 noundef %44) #24
  br label %46

46:                                               ; preds = %26, %40
  %47 = add nuw nsw i64 %23, 1
  %48 = icmp eq i64 %47, %21
  br i1 %48, label %49, label %22, !llvm.loop !399

49:                                               ; preds = %46, %18
  %50 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = alloca [3 x i8], align 16
  store i16 10, ptr %53, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %53) #23
  %54 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %55 = call i32 @fputs(ptr nonnull %53, ptr %54)
  br label %59

56:                                               ; preds = %49
  %57 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %58 = call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @vinsn_cond_branch_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_cond_jump(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr %1, align 8, !tbaa !255
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %5, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4902, ptr noundef nonnull @.str.1) #23
  %11 = load ptr, ptr %1, align 8, !tbaa !255
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %6, %2 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  store ptr %0, ptr %1, align 8, !tbaa !255
  %16 = tail call ptr @find_fallthru_edge(ptr noundef %5) #23
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4913, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %12, %20
  %22 = tail call ptr @sel_split_edge(ptr noundef nonnull %16) #23
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !400
  %25 = icmp eq ptr %24, %18
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !400
  %29 = icmp eq ptr %28, %22
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4918, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %26, %30
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !17
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
  %44 = load i32, ptr %41, align 8, !tbaa !9
  %45 = load ptr, ptr @s_i_d, align 8
  %46 = load ptr, ptr @sched_luids, align 8
  %47 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !6
  %49 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %48) #24
  %50 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %45, i32 noundef %49) #24
  %51 = getelementptr inbounds %struct._expr, ptr %50, i64 0, i32 6
  store i32 %44, ptr %51, align 4, !tbaa !138
  tail call void @df_insn_change_bb(ptr noundef %43, ptr noundef nonnull %22) #23
  %52 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, %0
  br i1 %54, label %55, label %42, !llvm.loop !401

55:                                               ; preds = %42, %38
  %56 = load ptr, ptr %14, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  store ptr %56, ptr %59, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %62, align 8, !tbaa !6
  %63 = load ptr, ptr %60, align 8, !tbaa !6
  store ptr %63, ptr %14, align 8, !tbaa !6
  %64 = load ptr, ptr %57, align 8, !tbaa !6
  %65 = load ptr, ptr %64, align 8, !tbaa !83
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 13
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %71 = load i32, ptr %70, align 8, !tbaa !6
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4937, ptr noundef nonnull @.str.1) #23
  %74 = load ptr, ptr %57, align 8, !tbaa !6
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  br label %76

76:                                               ; preds = %69, %73
  %77 = phi ptr [ %65, %69 ], [ %75, %73 ]
  store ptr %77, ptr %60, align 8, !tbaa !6
  %78 = load ptr, ptr %57, align 8, !tbaa !6
  %79 = load ptr, ptr %78, align 8, !tbaa !83
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %81, ptr %82, align 8, !tbaa !6
  %83 = load ptr, ptr %57, align 8, !tbaa !6
  %84 = load ptr, ptr %83, align 8, !tbaa !83
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %13, ptr %85, align 8, !tbaa !6
  %86 = load ptr, ptr %82, align 8, !tbaa !6
  %87 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %15, ptr %87, align 8, !tbaa !6
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
  %95 = load i32, ptr @global_level, align 4, !tbaa !28
  %96 = load ptr, ptr @sel_region_bb_info, align 8
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %98 = load i32, ptr %97, align 8, !tbaa !9
  %99 = tail call fastcc ptr @VEC_sel_region_bb_info_def_base_index(ptr noundef %96, i32 noundef %98) #24
  %100 = getelementptr inbounds %struct.sel_region_bb_info_def, ptr %99, i64 0, i32 2
  store i32 %95, ptr %100, align 8, !tbaa !121
  %101 = load ptr, ptr @sel_global_bb_info, align 8
  %102 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %101, i32 noundef %98) #24
  %103 = load ptr, ptr %102, align 8, !tbaa !27
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4950, ptr noundef nonnull @.str.1) #23
  br label %106

106:                                              ; preds = %94, %105
  %107 = tail call ptr @get_clear_regset_from_pool() #23
  %108 = load ptr, ptr @sel_global_bb_info, align 8
  %109 = load i32, ptr %97, align 8, !tbaa !9
  %110 = tail call fastcc ptr @VEC_sel_global_bb_info_def_base_index(ptr noundef %108, i32 noundef %109) #24
  store ptr %107, ptr %110, align 8, !tbaa !27
  %111 = tail call ptr @sel_bb_head(ptr noundef nonnull %22) #23
  tail call fastcc void @update_data_sets(ptr noundef %111) #24
  tail call fastcc void @update_data_sets(ptr noundef nonnull %0) #24
  %112 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %113 = icmp sgt i32 %112, 3
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %3, align 8, !tbaa !6
  %119 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.77, i32 noundef %118) #24
  %120 = shl nsw i32 %119, 1
  %121 = or disjoint i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = alloca i8, i64 %122, align 16
  %124 = load i32, ptr %3, align 8, !tbaa !6
  %125 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %123, i64 noundef %122, ptr noundef nonnull @.str.77, i32 noundef %124) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %123) #23
  %126 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %127 = call i32 @fputs(ptr nonnull %123, ptr %126)
  br label %132

128:                                              ; preds = %114
  %129 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %130 = load i32, ptr %3, align 8, !tbaa !6
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.77, i32 noundef %130) #24
  br label %132

132:                                              ; preds = %117, %128, %106
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @prepare_place_to_insert(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._bnd, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._list_node, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %31

11:                                               ; preds = %5, %15
  %12 = phi ptr [ %13, %15 ], [ %3, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._list_node, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %11, label %31, !llvm.loop !402

21:                                               ; preds = %11, %1
  %22 = load ptr, ptr %0, align 8, !tbaa !255
  %23 = tail call ptr @get_nop_from_pool(ptr noundef %22) #23
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load ptr, ptr %0, align 8, !tbaa !255
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %25, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5185, ptr noundef nonnull @.str.1) #23
  br label %31

31:                                               ; preds = %15, %5, %30, %21
  %32 = phi ptr [ %23, %21 ], [ %23, %30 ], [ %7, %5 ], [ %7, %15 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @move_exprs_to_boundary(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  %10 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %11 = tail call i32 @get_max_uid() #23
  store i32 %11, ptr @max_uid_before_move_op, align 4, !tbaa !28
  %12 = load ptr, ptr @current_copies, align 8, !tbaa !16
  tail call void @bitmap_clear(ptr noundef %12) #23
  %13 = load ptr, ptr @current_originators, align 8, !tbaa !16
  tail call void @bitmap_clear(ptr noundef %13) #23
  %14 = load ptr, ptr %0, align 8, !tbaa !255
  %15 = tail call fastcc ptr @get_dest_from_orig_ops(ptr noundef %2) #24
  %16 = call fastcc zeroext i8 @move_op(ptr noundef %14, ptr noundef %2, ptr noundef %1, ptr noundef %15, ptr noundef %3, ptr noundef nonnull %5) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5216, ptr noundef nonnull @.str.1) #23
  br label %19

19:                                               ; preds = %4, %18
  %20 = load i32, ptr @stat_bookkeeping_copies, align 4, !tbaa !28
  %21 = icmp sgt i32 %20, %10
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !28
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @stat_insns_needed_bookkeeping, align 4, !tbaa !28
  br label %25

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr @current_copies, align 8, !tbaa !16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %26, ptr noundef nonnull %6) #24
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #24, !range !31
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %84, label %29

29:                                               ; preds = %25, %81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #25
  %30 = load ptr, ptr @s_i_d, align 8
  %31 = load ptr, ptr @sched_luids, align 8
  %32 = load i32, ptr %6, align 4, !tbaa !28
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %31, i32 noundef %32) #24
  %34 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %30, i32 noundef %33) #24
  %35 = getelementptr inbounds %struct._sel_insn_data, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !403
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %41, i32 noundef %32) #24
  %43 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %40, i32 noundef %42) #24
  %44 = getelementptr inbounds %struct._sel_insn_data, ptr %43, i64 0, i32 6
  store ptr %39, ptr %44, align 8, !tbaa !403
  br label %45

45:                                               ; preds = %38, %29
  %46 = phi ptr [ %41, %38 ], [ %31, %29 ]
  %47 = phi ptr [ %40, %38 ], [ %30, %29 ]
  %48 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %46, i32 noundef %32) #24
  %49 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %47, i32 noundef %48) #24
  %50 = getelementptr inbounds %struct._sel_insn_data, ptr %49, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !403
  %52 = load ptr, ptr @current_originators, align 8, !tbaa !16
  tail call void @bitmap_copy(ptr noundef %51, ptr noundef %52) #23
  %53 = load ptr, ptr @current_originators, align 8, !tbaa !16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %9, ptr noundef %53, ptr noundef nonnull %8) #24
  %54 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %9, ptr noundef nonnull %8) #24, !range !31
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %45
  %57 = load ptr, ptr @s_i_d, align 8
  %58 = load ptr, ptr @sched_luids, align 8
  br label %59

59:                                               ; preds = %56, %76
  %60 = phi ptr [ %58, %56 ], [ %77, %76 ]
  %61 = phi ptr [ %57, %56 ], [ %78, %76 ]
  %62 = load i32, ptr %8, align 4, !tbaa !28
  %63 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %60, i32 noundef %62) #24
  %64 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %61, i32 noundef %63) #24
  %65 = getelementptr inbounds %struct._sel_insn_data, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !403
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %59
  %69 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %60, i32 noundef %32) #24
  %70 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %61, i32 noundef %69) #24
  %71 = getelementptr inbounds %struct._sel_insn_data, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !403
  %73 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %72, ptr noundef nonnull %66) #23
  %74 = load ptr, ptr @s_i_d, align 8
  %75 = load ptr, ptr @sched_luids, align 8
  br label %76

76:                                               ; preds = %59, %68
  %77 = phi ptr [ %60, %59 ], [ %75, %68 ]
  %78 = phi ptr [ %61, %59 ], [ %74, %68 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %9, ptr noundef nonnull %8) #24
  %79 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %9, ptr noundef nonnull %8) #24, !range !31
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %59, !llvm.loop !404

81:                                               ; preds = %76, %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #24
  %82 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #24, !range !31
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %29, !llvm.loop !405

84:                                               ; preds = %81, %25
  %85 = load i8, ptr %5, align 1, !tbaa !6
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
define internal fastcc void @remove_temp_moveop_nops(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load ptr, ptr @vec_temp_moveop_nops, align 8
  %4 = call fastcc i32 @VEC_insn_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #24, !range !149
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1, %14
  %7 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load ptr, ptr @nop_pattern, align 8, !tbaa !16
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4972, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %6, %13
  tail call void @return_nop_to_pool(ptr noundef nonnull %8, i8 noundef zeroext %0) #23
  %15 = add nuw nsw i32 %7, 1
  %16 = load ptr, ptr @vec_temp_moveop_nops, align 8
  %17 = call fastcc i32 @VEC_insn_t_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %2) #24, !range !149
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %6, !llvm.loop !406

19:                                               ; preds = %14, %1
  %20 = phi ptr [ %3, %1 ], [ %16, %14 ]
  %21 = tail call fastcc i32 @VEC_insn_t_base_length(ptr noundef %20) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

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
define internal fastcc zeroext i8 @move_op(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca %struct.moveop_static_params, align 8
  %8 = alloca %struct.cmpd_local_params, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #25
  store ptr %3, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.moveop_static_params, ptr %7, i64 0, i32 1
  store ptr %4, ptr %9, align 8, !tbaa !41
  %10 = load ptr, ptr %2, align 8, !tbaa !55
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.moveop_static_params, ptr %7, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.moveop_static_params, ptr %7, i64 0, i32 3
  store i8 0, ptr %15, align 4, !tbaa !62
  store ptr null, ptr %8, align 8, !tbaa !50
  %16 = load ptr, ptr @code_motion_visited_blocks, align 8, !tbaa !16
  tail call void @bitmap_clear(ptr noundef %16) #23
  store ptr @move_op_hooks, ptr @code_motion_path_driver_info, align 8, !tbaa !16
  %17 = call fastcc i32 @code_motion_path_driver(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  %18 = load i8, ptr %15, align 4, !tbaa !62
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct._expr, ptr %2, i64 0, i32 12
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, 4
  store i8 %23, ptr %21, align 1
  br label %24

24:                                               ; preds = %20, %6
  %25 = trunc i32 %17 to i8
  %26 = load i32, ptr %14, align 8, !tbaa !43
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %5, align 1, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_dest_from_orig_ops(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct._list_iterator, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call fastcc void @_list_iter_start(ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 0) #24
  %5 = load ptr, ptr %3, align 8, !tbaa !124
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %6, ptr noundef nonnull %4) #24, !range !31
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %1, %26
  %10 = phi ptr [ %27, %26 ], [ null, %1 ]
  %11 = phi i1 [ true, %26 ], [ false, %1 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !16
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.vinsn_def, ptr %13, i64 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  br i1 %11, label %16, label %26

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
  %28 = load ptr, ptr %3, align 8, !tbaa !124
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = call fastcc zeroext i8 @_list_iter_cond_expr(ptr noundef %29, ptr noundef nonnull %4) #24, !range !31
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %9, !llvm.loop !407

32:                                               ; preds = %26, %1
  %33 = phi ptr [ null, %1 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_insn_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !91
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !16
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_insn_t_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !91
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_insn_t_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.VEC_insn_t_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !91
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = zext i32 %5 to i64
  %9 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %7, i64 %9, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @advance_state_on_fence(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @recog_memoized(ptr noundef %1) #24
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  %7 = alloca i8, i64 %6, align 16
  %8 = load ptr, ptr @s_i_d, align 8
  %9 = load ptr, ptr @sched_luids, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %9, i32 noundef %11) #24
  %13 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %8, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._sel_insn_data, ptr %13, i64 0, i32 13
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5269, ptr noundef nonnull @.str.1) #23
  %19 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  br label %20

20:                                               ; preds = %5, %18
  %21 = phi i64 [ %6, %5 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !290
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %7, ptr align 1 %23, i64 %21, i1 false)
  %24 = tail call i32 @state_transition(ptr noundef %23, ptr noundef nonnull %1) #23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5274, ptr noundef nonnull @.str.1) #23
  br label %27

27:                                               ; preds = %20, %26
  %28 = load ptr, ptr %22, align 8, !tbaa !290
  %29 = load i64, ptr @dfa_state_size, align 8, !tbaa !232
  %30 = call i32 @bcmp(ptr nonnull %7, ptr %28, i64 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !266
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !266
  %36 = load i32, ptr @issue_rate, align 4, !tbaa !28
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %57, label %38

38:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5282, ptr noundef nonnull @.str.1) #23
  br label %57

39:                                               ; preds = %2
  %40 = load ptr, ptr @s_i_d, align 8
  %41 = load ptr, ptr @sched_luids, align 8
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !6
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
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  tail call fastcc void @advance_one_cycle(ptr noundef nonnull %0) #24
  br label %57

57:                                               ; preds = %27, %38, %32, %39, %56
  %58 = phi i8 [ 1, %56 ], [ %49, %39 ], [ 0, %32 ], [ 0, %38 ], [ 0, %27 ]
  %59 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !290
  tail call fastcc void @debug_state(ptr noundef %63) #24
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, ptr %1, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 13
  %70 = load i8, ptr %69, align 8
  %71 = and i8 %70, -5
  store i8 %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, ptr @can_issue_more, align 4, !tbaa !28
  %74 = getelementptr inbounds %struct._fence, ptr %0, i64 0, i32 11
  store i32 %73, ptr %74, align 8, !tbaa !252
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_gc_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare i32 @maximal_insn_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_insn_1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !163
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !163
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !408
  %6 = load i32, ptr %0, align 8, !tbaa !163
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
define internal fastcc i32 @VEC_vinsn_t_base_length(ptr noundef readonly %0) unnamed_addr #4 {
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
define internal fastcc void @VEC_vinsn_t_base_block_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !167
  %4 = getelementptr inbounds %struct.VEC_vinsn_t_base, ptr %0, i64 0, i32 2
  %5 = sub i32 %3, %1
  store i32 %5, ptr %0, align 8, !tbaa !167
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
define internal fastcc void @extract_new_fences_from(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.succ_iterator, align 8
  %7 = alloca %struct._list_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  %8 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1, i32 0, i32 4
  call fastcc void @_list_iter_start(ptr noundef nonnull %7, ptr noundef nonnull %9, i8 noundef zeroext 0) #24
  %10 = load ptr, ptr %7, align 8, !tbaa !124
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %11, ptr noundef nonnull %4) #24, !range !31
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #24
  %15 = load ptr, ptr %7, align 8, !tbaa !124
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %16, ptr noundef nonnull %4) #24, !range !31
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %21, !llvm.loop !409

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8
  br label %30

21:                                               ; preds = %14, %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @.str.1) #23
  call fastcc void @_list_iter_next(ptr noundef nonnull %7) #24
  %22 = load ptr, ptr %7, align 8, !tbaa !124
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = call fastcc zeroext i8 @_list_iter_cond_x(ptr noundef %23, ptr noundef nonnull %4) #24, !range !31
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %21, !llvm.loop !409

26:                                               ; preds = %21, %14
  %27 = load ptr, ptr %4, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %13, i1 %28, i1 false
  br i1 %29, label %32, label %30

30:                                               ; preds = %19, %26
  %31 = phi ptr [ %20, %19 ], [ %27, %26 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 653, ptr noundef nonnull @.str.1) #23
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %27, %26 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = tail call zeroext i8 @sel_bb_end_p(ptr noundef %33) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %35) #24, !range !31
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %108, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc ptr @single_succ(ptr noundef %35) #24
  %43 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %42) #24, !range !31
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %108, label %45

45:                                               ; preds = %41, %32
  %46 = tail call zeroext i8 @sel_bb_end_p(ptr noundef nonnull %33) #23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @single_succ(ptr noundef %35) #24
  %50 = tail call ptr @sel_bb_head(ptr noundef %49) #23
  br label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %50, %48 ], [ %53, %51 ]
  %56 = load ptr, ptr @s_i_d, align 8
  %57 = load ptr, ptr @sched_luids, align 8
  %58 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !6
  %60 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %57, i32 noundef %59) #24
  %61 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %56, i32 noundef %60) #24
  %62 = getelementptr inbounds %struct._sel_insn_data, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !60
  %64 = icmp slt i32 %63, 1
  %65 = icmp sgt i32 %63, %2
  %66 = or i1 %64, %65
  br i1 %66, label %189, label %67

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct._expr, ptr %61, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !52
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %189

71:                                               ; preds = %67
  store ptr %55, ptr %8, align 8, !tbaa !240
  tail call void @move_fence_to_fences(ptr noundef %0, ptr noundef %1) #23
  %72 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %189

74:                                               ; preds = %71
  %75 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !6
  %80 = load i32, ptr %58, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !9
  %85 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.81, i32 noundef %79, i32 noundef %80, i32 noundef %84) #24
  %86 = shl nsw i32 %85, 1
  %87 = or disjoint i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = alloca i8, i64 %88, align 16
  %90 = load i32, ptr %78, align 8, !tbaa !6
  %91 = load i32, ptr %58, align 8, !tbaa !6
  %92 = load ptr, ptr %81, align 8, !tbaa !6
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !9
  %95 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %89, i64 noundef %88, ptr noundef nonnull @.str.81, i32 noundef %90, i32 noundef %91, i32 noundef %94) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %89) #23
  %96 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %97 = call i32 @fputs(ptr nonnull %89, ptr %96)
  br label %189

98:                                               ; preds = %74
  %99 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %100 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !6
  %102 = load i32, ptr %58, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %106 = load i32, ptr %105, align 8, !tbaa !9
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.81, i32 noundef %101, i32 noundef %102, i32 noundef %106) #24
  br label %189

108:                                              ; preds = %41, %38
  call fastcc void @_succ_iter_start(ptr dead_on_unwind nonnull writable sret(%struct.succ_iterator) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull %33, i32 noundef 9) #24
  %109 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %33) #24
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %189, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  br label %113

113:                                              ; preds = %111, %186
  %114 = load ptr, ptr @s_i_d, align 8
  %115 = load ptr, ptr @sched_luids, align 8
  %116 = load ptr, ptr %5, align 8, !tbaa !16
  %117 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !6
  %119 = call fastcc i32 @VEC_int_base_index(ptr noundef %115, i32 noundef %118) #24
  %120 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %114, i32 noundef %119) #24
  %121 = getelementptr inbounds %struct._sel_insn_data, ptr %120, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !60
  %123 = icmp slt i32 %122, 1
  %124 = icmp sgt i32 %122, %2
  %125 = or i1 %123, %124
  br i1 %125, label %186, label %126

126:                                              ; preds = %113
  %127 = load i8, ptr @pipelining_p, align 1, !tbaa !6
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._expr, ptr %120, i64 0, i32 5
  %131 = load i32, ptr %130, align 8, !tbaa !52
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %133, label %186

133:                                              ; preds = %129, %126
  %134 = call zeroext i8 @in_same_ebb_p(ptr noundef %33, ptr noundef nonnull %116) #23
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = call fastcc zeroext i8 @in_fallthru_bb_p(ptr noundef %33, ptr noundef nonnull %116) #24, !range !31
  %138 = icmp ne i8 %137, 0
  br label %139

139:                                              ; preds = %136, %133
  %140 = phi i1 [ true, %133 ], [ %138, %136 ]
  %141 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %139
  %144 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %167, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr %112, align 8, !tbaa !6
  %148 = load i32, ptr %117, align 8, !tbaa !6
  %149 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 9
  %152 = load i32, ptr %151, align 8, !tbaa !9
  %153 = select i1 %140, ptr @.str.83, ptr @.str.84
  %154 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.82, i32 noundef %147, i32 noundef %148, i32 noundef %152, ptr noundef nonnull %153) #24
  %155 = shl nsw i32 %154, 1
  %156 = or disjoint i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = alloca i8, i64 %157, align 16
  %159 = load i32, ptr %112, align 8, !tbaa !6
  %160 = load i32, ptr %117, align 8, !tbaa !6
  %161 = load ptr, ptr %149, align 8, !tbaa !6
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %163 = load i32, ptr %162, align 8, !tbaa !9
  %164 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %158, i64 noundef %157, ptr noundef nonnull @.str.82, i32 noundef %159, i32 noundef %160, i32 noundef %163, ptr noundef nonnull %153) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %158) #23
  %165 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %166 = call i32 @fputs(ptr nonnull %158, ptr %165)
  br label %177

167:                                              ; preds = %143
  %168 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %169 = load i32, ptr %112, align 8, !tbaa !6
  %170 = load i32, ptr %117, align 8, !tbaa !6
  %171 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !9
  %175 = select i1 %140, ptr @.str.83, ptr @.str.84
  %176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef nonnull @.str.82, i32 noundef %169, i32 noundef %170, i32 noundef %174, ptr noundef nonnull %175) #24
  br label %177

177:                                              ; preds = %146, %167, %139
  br i1 %140, label %178, label %179

178:                                              ; preds = %177
  call void @add_dirty_fence_to_fences(ptr noundef %1, ptr noundef nonnull %116, ptr noundef nonnull %8) #23
  br label %186

179:                                              ; preds = %177
  %180 = load ptr, ptr @forced_ebb_heads, align 8, !tbaa !16
  %181 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !9
  %185 = call zeroext i8 @bitmap_set_bit(ptr noundef %180, i32 noundef %184) #23
  call void @add_clean_fence_to_fences(ptr noundef %1, ptr noundef nonnull %116, ptr noundef nonnull %8) #23
  br label %186

186:                                              ; preds = %178, %179, %129, %113
  call fastcc void @_succ_iter_next(ptr noundef nonnull %6) #24
  %187 = call fastcc zeroext i8 @_succ_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %33) #24
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %113, !llvm.loop !410

189:                                              ; preds = %186, %108, %54, %67, %77, %98, %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @flist_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @_list_iter_cond_x(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._list_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  store ptr %6, ptr %1, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: optsize
declare zeroext i8 @in_same_ebb_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @in_fallthru_bb_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
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
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = tail call zeroext i8 @sel_bb_empty_p(ptr noundef %16) #23
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  br i1 %18, label %20, label %14, !llvm.loop !411

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !tbaa !6
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
define internal fastcc void @simplify_changed_insns() unnamed_addr #0 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %60

3:                                                ; preds = %0, %55
  %4 = phi i32 [ %56, %55 ], [ %1, %0 ]
  %5 = phi i64 [ %57, %55 ], [ 0, %0 ]
  %6 = load ptr, ptr @cfun, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %12 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %13 = getelementptr inbounds i32, ptr %12, i64 %5
  %14 = load i32, ptr %13, align 4, !tbaa !28
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %10, i32 noundef %17) #24
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %3, %49
  %24 = phi ptr [ %51, %49 ], [ %21, %3 ]
  %25 = load ptr, ptr %19, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.rtl_bb_info, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %53, label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %24, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load ptr, ptr @s_i_d, align 8
  %38 = load ptr, ptr @sched_luids, align 8
  %39 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !6
  %41 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %38, i32 noundef %40) #24
  %42 = tail call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %37, i32 noundef %41) #24
  %43 = getelementptr inbounds %struct._expr, ptr %42, i64 0, i32 12
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  %48 = tail call zeroext i8 @validate_simplify_insn(ptr noundef nonnull %24) #23
  br label %49

49:                                               ; preds = %31, %36, %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %23, !llvm.loop !412

53:                                               ; preds = %49, %23
  %54 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  br label %55

55:                                               ; preds = %53, %3
  %56 = phi i32 [ %54, %53 ], [ %4, %3 ]
  %57 = add nuw nsw i64 %5, 1
  %58 = sext i32 %56 to i64
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %3, label %60, !llvm.loop !413

60:                                               ; preds = %55, %0
  ret void
}

; Function Attrs: optsize
declare void @sched_finish_ready_list() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_nop_pool() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_expr_t_heap_free() unnamed_addr #12 {
  %1 = load ptr, ptr @vec_av_set, align 8, !tbaa !16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #24
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @vec_av_set, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @vinsn_vec_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @VEC_vinsn_t_heap_free(ptr noundef nonnull %0) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_region_target_finish(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %3 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %68

5:                                                ; preds = %1
  %6 = icmp eq i8 %0, 0
  br label %7

7:                                                ; preds = %5, %63
  %8 = phi i64 [ 0, %5 ], [ %64, %63 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %9) #23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %7
  %13 = load ptr, ptr @cfun, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  %18 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %19 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %20 = getelementptr inbounds i32, ptr %19, i64 %8
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %18, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !28
  %25 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %17, i32 noundef %24) #24
  %26 = tail call zeroext i8 @sel_is_loop_preheader_p(ptr noundef %25) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %12
  %29 = load ptr, ptr @cfun, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !136
  %34 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !16
  %35 = load ptr, ptr @ebb_head, align 8, !tbaa !16
  %36 = getelementptr inbounds i32, ptr %35, i64 %8
  %37 = load i32, ptr %36, align 4, !tbaa !28
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %34, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !28
  %41 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %33, i32 noundef %40) #24
  tail call fastcc void @find_ebb_boundaries(ptr noundef %41, ptr noundef %2) #24
  %42 = load ptr, ptr @current_sched_info, align 8, !tbaa !16
  %43 = getelementptr inbounds %struct.haifa_sched_info, ptr %42, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !414
  %45 = getelementptr inbounds %struct.haifa_sched_info, ptr %42, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !416
  %47 = tail call i32 @no_real_insns_p(ptr noundef %44, ptr noundef %46) #23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %28
  br i1 %6, label %51, label %50

50:                                               ; preds = %49
  tail call fastcc void @reset_sched_cycles_in_current_ebb() #24
  br label %51

51:                                               ; preds = %50, %49
  %52 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !210
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %56 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  tail call void %52(ptr noundef %55, i32 noundef %56, i32 noundef -1) #23
  br label %57

57:                                               ; preds = %54, %51
  tail call fastcc void @put_TImodes() #24
  %58 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 5), align 8, !tbaa !417
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %62 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  tail call void %58(ptr noundef %61, i32 noundef %62) #23
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #23
  br label %63

63:                                               ; preds = %57, %60, %28, %12, %7
  %64 = add nuw nsw i64 %8, 1
  %65 = load i32, ptr @current_nr_blocks, align 4, !tbaa !28
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %7, label %68, !llvm.loop !418

68:                                               ; preds = %63, %1
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
define internal fastcc void @VEC_vinsn_t_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_ebb_boundaries(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = alloca [55 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, ptr noundef nonnull align 1 dereferenceable(28) @.str.85, i64 28, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %11) #23
  %12 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %13 = call i32 @fputs(ptr nonnull %11, ptr %12)
  br label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %16 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 27, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %10, %14, %2
  br label %18

18:                                               ; preds = %17, %50
  %19 = phi ptr [ %51, %50 ], [ %0, %17 ]
  %20 = load ptr, ptr @block_to_bb, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !9
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !28
  %26 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %25) #23
  %27 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %47

29:                                               ; preds = %18
  %30 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %21, align 8, !tbaa !9
  %34 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.86, i32 noundef %33) #24
  %35 = shl nsw i32 %34, 1
  %36 = or disjoint i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  %39 = load i32, ptr %21, align 8, !tbaa !9
  %40 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %38, i64 noundef %37, ptr noundef nonnull @.str.86, i32 noundef %39) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %38) #23
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %42 = call i32 @fputs(ptr nonnull %38, ptr %41)
  br label %47

43:                                               ; preds = %29
  %44 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %45 = load i32, ptr %21, align 8, !tbaa !9
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.86, i32 noundef %45) #24
  br label %47

47:                                               ; preds = %18, %43, %32
  %48 = call zeroext i8 @bb_ends_ebb_p(ptr noundef nonnull %19) #23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = call fastcc ptr @bb_next_bb(ptr noundef nonnull %19) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %18, !llvm.loop !419

53:                                               ; preds = %47, %50
  %54 = phi ptr [ %19, %47 ], [ null, %50 ]
  %55 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = alloca [3 x i8], align 16
  store i16 10, ptr %61, align 16
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %61) #23
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %63 = call i32 @fputs(ptr nonnull %61, ptr %62)
  br label %67

64:                                               ; preds = %57
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %66 = call i32 @fputc(i32 10, ptr %65)
  br label %67

67:                                               ; preds = %60, %64, %53
  call void @get_ebb_head_tail(ptr noundef %0, ptr noundef %54, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %68 = load ptr, ptr %3, align 8, !tbaa !16
  %69 = load ptr, ptr @current_sched_info, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 10
  store ptr %68, ptr %70, align 8, !tbaa !414
  %71 = load ptr, ptr %4, align 8, !tbaa !16
  %72 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 11
  store ptr %71, ptr %72, align 8, !tbaa !416
  %73 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 8
  store ptr %74, ptr %75, align 8, !tbaa !420
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 9
  store ptr %77, ptr %78, align 8, !tbaa !421
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare i32 @no_real_insns_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_sched_cycles_in_current_ebb() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !210
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %6 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  tail call void %2(ptr noundef %5, i32 noundef %6, i32 noundef -1) #23
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @curr_state, align 8, !tbaa !16
  tail call void @state_reset(ptr noundef %8) #23
  %9 = load ptr, ptr @curr_state, align 8, !tbaa !16
  tail call void @advance_state(ptr noundef %9) #23
  %10 = load ptr, ptr @current_sched_info, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !421
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
  %32 = load i32, ptr %31, align 8, !tbaa !6
  %33 = call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #24
  %34 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #24
  %35 = getelementptr inbounds %struct._sel_insn_data, ptr %34, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !275
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
  %45 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %46 = call fastcc i32 @estimate_insn_cost(ptr noundef nonnull %18, ptr noundef %45) #24, !range !291
  %47 = load ptr, ptr @s_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = load i32, ptr %31, align 8, !tbaa !6
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
  %69 = load ptr, ptr @curr_state, align 8, !tbaa !16
  call void @advance_state(ptr noundef %69) #23
  %70 = add nuw nsw i32 %67, 1
  %71 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = alloca [67 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %77, ptr noundef nonnull align 1 dereferenceable(34) @.str.87, i64 34, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %77) #23
  %78 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %79 = call i32 @fputs(ptr nonnull %77, ptr %78)
  br label %83

80:                                               ; preds = %73
  %81 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %82 = call i64 @fwrite(ptr nonnull @.str.87, i64 33, i64 1, ptr %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load ptr, ptr @curr_state, align 8, !tbaa !16
  call fastcc void @debug_state(ptr noundef %84) #24
  br label %85

85:                                               ; preds = %83, %65
  %86 = icmp sgt i32 %66, 1
  %87 = and i1 %28, %86
  %88 = and i1 %62, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %91 = call fastcc i32 @estimate_insn_cost(ptr noundef nonnull %18, ptr noundef %90) #24, !range !291
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89, %85
  %94 = icmp eq i32 %68, 0
  br i1 %94, label %95, label %65, !llvm.loop !422

95:                                               ; preds = %89, %93
  %96 = phi i32 [ %70, %89 ], [ %63, %93 ]
  %97 = phi i32 [ %68, %89 ], [ -1, %93 ]
  %98 = add nsw i32 %96, %21
  br label %99

99:                                               ; preds = %50, %95
  %100 = phi i32 [ %97, %95 ], [ 0, %50 ]
  %101 = phi i32 [ %98, %95 ], [ %21, %50 ]
  %102 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %31, align 8, !tbaa !6
  %109 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.88, i32 noundef %108, i32 noundef %100) #24
  %110 = shl nsw i32 %109, 1
  %111 = or disjoint i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = alloca i8, i64 %112, align 16
  %114 = load i32, ptr %31, align 8, !tbaa !6
  %115 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %113, i64 noundef %112, ptr noundef nonnull @.str.88, i32 noundef %114, i32 noundef %100) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %113) #23
  %116 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %117 = call i32 @fputs(ptr nonnull %113, ptr %116)
  br label %122

118:                                              ; preds = %104
  %119 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %120 = load i32, ptr %31, align 8, !tbaa !6
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.88, i32 noundef %120, i32 noundef %100) #24
  br label %122

122:                                              ; preds = %107, %118, %99
  %123 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !395
  %124 = icmp eq ptr %123, null
  br i1 %124, label %155, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %127 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %128 = call i32 %123(ptr noundef %126, i32 noundef %127, ptr noundef nonnull %18, i32 noundef %20, i32 noundef %101, ptr noundef nonnull %1) #23
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %155, label %130

130:                                              ; preds = %125, %149
  %131 = phi i32 [ %133, %149 ], [ %101, %125 ]
  %132 = load ptr, ptr @curr_state, align 8, !tbaa !16
  call void @advance_state(ptr noundef %132) #23
  %133 = add nsw i32 %131, 1
  %134 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = alloca [61 x i8], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %140, ptr noundef nonnull align 1 dereferenceable(31) @.str.89, i64 31, i1 false)
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %140) #23
  %141 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %142 = call i32 @fputs(ptr nonnull %140, ptr %141)
  br label %146

143:                                              ; preds = %136
  %144 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %145 = call i64 @fwrite(ptr nonnull @.str.89, i64 30, i64 1, ptr %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = load ptr, ptr @curr_state, align 8, !tbaa !16
  call fastcc void @debug_state(ptr noundef %147) #24
  %148 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  br label %149

149:                                              ; preds = %146, %130
  %150 = phi i32 [ %148, %146 ], [ %134, %130 ]
  %151 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !395
  %152 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %153 = call i32 %151(ptr noundef %152, i32 noundef %150, ptr noundef nonnull %18, i32 noundef %20, i32 noundef %133, ptr noundef nonnull %1) #23
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %130, !llvm.loop !423

155:                                              ; preds = %149, %125, %122
  %156 = phi i32 [ %101, %122 ], [ %101, %125 ], [ %133, %149 ]
  br i1 %28, label %157, label %167

157:                                              ; preds = %155
  %158 = load ptr, ptr @curr_state, align 8, !tbaa !16
  %159 = call i32 @state_transition(ptr noundef %158, ptr noundef nonnull %18) #23
  %160 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load ptr, ptr @curr_state, align 8, !tbaa !16
  call fastcc void @debug_state(ptr noundef %163) #24
  br label %164

164:                                              ; preds = %162, %157
  %165 = icmp slt i32 %159, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %164
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7071, ptr noundef nonnull @.str.1) #23
  br label %167

167:                                              ; preds = %166, %164, %155
  %168 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !293
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %172 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %173 = call i32 %168(ptr noundef %171, i32 noundef %172, ptr noundef nonnull %18, i32 noundef 0) #23
  br label %174

174:                                              ; preds = %170, %167
  %175 = load ptr, ptr @s_i_d, align 8
  %176 = load ptr, ptr @sched_luids, align 8
  %177 = load i32, ptr %31, align 8, !tbaa !6
  %178 = call fastcc i32 @VEC_int_base_index(ptr noundef %176, i32 noundef %177) #24
  %179 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %175, i32 noundef %178) #24
  %180 = getelementptr inbounds %struct._sel_insn_data, ptr %179, i64 0, i32 10
  store i32 %156, ptr %180, align 8, !tbaa !275
  %181 = load ptr, ptr @current_sched_info, align 8, !tbaa !16
  br label %182

182:                                              ; preds = %16, %174
  %183 = phi ptr [ %181, %174 ], [ %17, %16 ]
  %184 = phi i32 [ %156, %174 ], [ %21, %16 ]
  %185 = phi i32 [ %156, %174 ], [ %20, %16 ]
  %186 = phi i32 [ %36, %174 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #25
  %187 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = getelementptr inbounds %struct.haifa_sched_info, ptr %183, i64 0, i32 9
  %190 = load ptr, ptr %189, align 8, !tbaa !421
  %191 = icmp eq ptr %188, %190
  br i1 %191, label %192, label %16, !llvm.loop !424

192:                                              ; preds = %182, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @put_TImodes() unnamed_addr #0 {
  %1 = load ptr, ptr @current_sched_info, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !421
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %76, label %7

7:                                                ; preds = %0, %68
  %8 = phi ptr [ %71, %68 ], [ %3, %0 ]
  %9 = phi i32 [ %69, %68 ], [ -1, %0 ]
  %10 = load i32, ptr %8, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %68

14:                                               ; preds = %7
  %15 = load ptr, ptr @s_i_d, align 8
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !6
  %19 = call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #24
  %20 = call fastcc ptr @VEC_sel_insn_data_def_base_index(ptr noundef %15, i32 noundef %19) #24
  %21 = getelementptr inbounds %struct._sel_insn_data, ptr %20, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !275
  %23 = icmp eq i32 %9, -1
  %24 = sub nsw i32 %22, %9
  %25 = select i1 %23, i32 1, i32 %24
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7102, ptr noundef nonnull @.str.1) #23
  br label %28

28:                                               ; preds = %14, %27
  %29 = load i32, ptr @issue_rate, align 4, !tbaa !28
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65534
  %36 = icmp eq i32 %35, 24
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr @reload_completed, align 4, !tbaa !28
  %39 = icmp ne i32 %38, 0
  %40 = icmp sgt i32 %25, 0
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, ptr %8, align 8
  %44 = and i32 %43, -16711681
  %45 = or disjoint i32 %44, 1179648
  store i32 %45, ptr %8, align 8
  br label %46

46:                                               ; preds = %31, %37, %42, %28
  %47 = phi i32 [ %9, %28 ], [ %9, %31 ], [ %22, %42 ], [ %22, %37 ]
  %48 = load i32, ptr @sched_verbose, align 4, !tbaa !28
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i8, ptr @sched_dump_to_dot_p, align 1, !tbaa !6
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %17, align 8, !tbaa !6
  %55 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.90, i32 noundef %54, i32 noundef %25) #24
  %56 = shl nsw i32 %55, 1
  %57 = or disjoint i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = alloca i8, i64 %58, align 16
  %60 = load i32, ptr %17, align 8, !tbaa !6
  %61 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %59, i64 noundef %58, ptr noundef nonnull @.str.90, i32 noundef %60, i32 noundef %25) #24
  call void @sel_prepare_string_for_dot_label(ptr noundef nonnull %59) #23
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %63 = call i32 @fputs(ptr nonnull %59, ptr %62)
  br label %68

64:                                               ; preds = %50
  %65 = load ptr, ptr @sched_dump, align 8, !tbaa !16
  %66 = load i32, ptr %17, align 8, !tbaa !6
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.90, i32 noundef %66, i32 noundef %25) #24
  br label %68

68:                                               ; preds = %7, %46, %64, %53
  %69 = phi i32 [ %9, %7 ], [ %47, %53 ], [ %47, %64 ], [ %47, %46 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = load ptr, ptr @current_sched_info, align 8, !tbaa !16
  %73 = getelementptr inbounds %struct.haifa_sched_info, ptr %72, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !421
  %75 = icmp eq ptr %71, %74
  br i1 %75, label %76, label %7, !llvm.loop !425

76:                                               ; preds = %68, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bb_ends_ebb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bb_next_bb(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %10
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !400
  br label %25

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #24
  br label %25

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 0) #24
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !134
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 1) #24
  br label %18

18:                                               ; preds = %10, %16
  %19 = phi ptr [ %17, %16 ], [ %11, %10 ]
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  br label %25

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !400
  br label %25

25:                                               ; preds = %22, %18, %8, %5
  %26 = phi ptr [ %24, %22 ], [ %21, %18 ], [ %9, %8 ], [ %7, %5 ]
  ret ptr %26
}

; Function Attrs: optsize
declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @state_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @maybe_skip_selective_scheduling() local_unnamed_addr #0 {
  %1 = tail call zeroext i8 @dbg_cnt(i32 noundef 31) #23
  %2 = icmp eq i8 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @run_selective_scheduling() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !426
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %0
  tail call fastcc void @sel_global_init() #24
  %8 = load i32, ptr @nr_regions, align 4, !tbaa !28
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %7 ]
  tail call void @sel_sched_region(i32 noundef %11) #24
  %12 = add nuw nsw i32 %11, 1
  %13 = load i32, ptr @nr_regions, align 4, !tbaa !28
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %10, label %15, !llvm.loop !427

15:                                               ; preds = %10, %7
  tail call fastcc void @sel_global_finish() #24
  br label %16

16:                                               ; preds = %0, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_global_init() unnamed_addr #0 {
  tail call void @calculate_dominance_info(i32 noundef 1) #23
  tail call void @alloc_sched_pools() #23
  tail call void @sel_setup_sched_infos() #23
  tail call void @setup_sched_dump() #23
  tail call void @sched_rgn_init(i8 noundef zeroext 0) #23
  tail call void @sched_init() #23
  tail call void @sched_init_bbs() #23
  store ptr null, ptr @after_recovery, align 8, !tbaa !16
  %1 = load i32, ptr @issue_rate, align 4, !tbaa !28
  store i32 %1, ptr @can_issue_more, align 4, !tbaa !28
  tail call void @sched_extend_target() #23
  tail call void @sched_deps_init(i8 noundef zeroext 1) #23
  tail call void @setup_nop_and_exit_insns() #23
  tail call void @sel_extend_global_bb_info() #23
  tail call void @init_lv_sets() #23
  tail call fastcc void @init_hard_regs_data() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sel_global_finish() unnamed_addr #0 {
  tail call void @free_bb_note_pool() #23
  tail call void @free_lv_sets() #23
  tail call void @sel_finish_global_bb_info() #23
  tail call void @free_regset_pool() #23
  tail call void @free_nop_and_exit_insns() #23
  tail call void @sched_rgn_finish() #23
  tail call void @sched_deps_finish() #23
  tail call void @sched_finish() #23
  %1 = load ptr, ptr @cfun, align 8, !tbaa !16
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @sel_finish_pipelining() #23
  br label %6

6:                                                ; preds = %5, %0
  tail call void @free_sched_pools() #23
  tail call void @free_dominance_info(i32 noundef 1) #23
  ret void
}

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
define internal fastcc void @init_hard_regs_data() unnamed_addr #0 {
  store i64 0, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !322
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  %3 = trunc i64 %2 to i32
  %4 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %3) #23
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %2
  %8 = load i8, ptr %7, align 1, !tbaa !6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6, %1
  %11 = shl nuw nsw i64 1, %2
  %12 = load i64, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !322
  %13 = or i64 %12, %11
  store i64 %13, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 4), align 8, !tbaa !322
  br label %14

14:                                               ; preds = %6, %10
  %15 = add nuw nsw i64 %2, 1
  %16 = icmp eq i64 %15, 53
  br i1 %16, label %17, label %1, !llvm.loop !428

17:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(87) getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 1, i64 0), i8 0, i64 87, i1 false), !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 2, i64 0), i8 0, i64 424, i1 false), !tbaa !232
  store i64 65280, ptr getelementptr inbounds (%struct.hard_regs_data, ptr @sel_hrd, i64 0, i32 5), align 8, !tbaa !357
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
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !13, i64 80}
!10 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 48, !11, i64 56, !7, i64 64, !12, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !7, i64 8}
!15 = !{!"", !11, i64 0, !7, i64 8}
!16 = !{!11, !11, i64 0}
!17 = !{!18, !11, i64 8}
!18 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !11, i64 72}
!22 = !{!"_sel_insn_data", !23, i64 0, !13, i64 64, !13, i64 68, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !24, i64 112, !11, i64 296, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !13, i64 316, !13, i64 316}
!23 = !{!"_expr", !11, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !11, i64 48, !7, i64 56, !13, i64 57, !13, i64 57, !13, i64 57, !13, i64 57}
!24 = !{!"deps", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !13, i64 80, !11, i64 88, !13, i64 96, !11, i64 104, !25, i64 112, !25, i64 144, !13, i64 176, !13, i64 180}
!25 = !{!"bitmap_head_def", !11, i64 0, !11, i64 8, !13, i64 16, !11, i64 24}
!26 = distinct !{!26, !20}
!27 = !{!15, !11, i64 0}
!28 = !{!13, !13, i64 0}
!29 = !{i64 0, i64 4, !28, i64 8, i64 8, !16}
!30 = !{i64 0, i64 8, !16}
!31 = !{i8 0, i8 2}
!32 = !{!33, !11, i64 8}
!33 = !{!"edge_def", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24, !11, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !12, i64 56}
!34 = distinct !{!34, !20}
!35 = !{!36, !13, i64 0}
!36 = !{!"", !13, i64 0, !11, i64 8}
!37 = !{!38, !13, i64 0}
!38 = !{!"VEC_edge_base", !13, i64 0, !13, i64 4, !7, i64 8}
!39 = !{!22, !13, i64 20}
!40 = !{!22, !13, i64 16}
!41 = !{!42, !11, i64 8}
!42 = !{!"moveop_static_params", !11, i64 0, !11, i64 8, !13, i64 16, !7, i64 20}
!43 = !{!42, !13, i64 16}
!44 = !{!23, !11, i64 48}
!45 = !{!42, !11, i64 0}
!46 = !{!47, !11, i64 16}
!47 = !{!"cmpd_local_params", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !13, i64 40}
!48 = !{!47, !11, i64 24}
!49 = !{!23, !13, i64 24}
!50 = !{!47, !11, i64 0}
!51 = !{!47, !11, i64 8}
!52 = !{!22, !13, i64 24}
!53 = !{!54, !13, i64 0}
!54 = !{!"VEC_expr_history_def_base", !13, i64 0, !13, i64 4, !7, i64 8}
!55 = !{!23, !11, i64 0}
!56 = !{!57, !13, i64 8}
!57 = !{!"vinsn_def", !11, i64 0, !58, i64 8, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !7, i64 72}
!58 = !{!"idata_def", !13, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!59 = !{!22, !11, i64 0}
!60 = !{!22, !13, i64 68}
!61 = !{!22, !13, i64 32}
!62 = !{!42, !7, i64 20}
!63 = !{!22, !13, i64 36}
!64 = !{!57, !11, i64 16}
!65 = !{!23, !7, i64 56}
!66 = !{!57, !11, i64 24}
!67 = !{!23, !13, i64 36}
!68 = !{!69, !11, i64 640}
!69 = !{!"gcc_target", !70, i64 0, !72, i64 368, !73, i64 664, !13, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !12, i64 1064, !12, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !74, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !12, i64 1464, !75, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !76, i64 1784, !77, i64 1792, !78, i64 1896, !79, i64 1968, !11, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!70 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !71, i64 24, !71, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!71 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!72 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!73 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!74 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!75 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!76 = !{!"c", !11, i64 0}
!77 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!78 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !7, i64 64, !7, i64 65}
!79 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!80 = !{!81, !13, i64 24}
!81 = !{!"spec_info_def", !13, i64 0, !11, i64 8, !13, i64 16, !13, i64 20, !13, i64 24}
!82 = !{!69, !11, i64 600}
!83 = !{!18, !11, i64 0}
!84 = !{!69, !11, i64 608}
!85 = !{!57, !11, i64 0}
!86 = !{!22, !13, i64 312}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = !{!92, !13, i64 0}
!92 = !{!"VEC_insn_t_base", !13, i64 0, !13, i64 4, !7, i64 8}
!93 = !{!92, !13, i64 4}
!94 = !{!23, !13, i64 32}
!95 = !{!22, !11, i64 80}
!96 = !{!22, !11, i64 88}
!97 = !{!22, !11, i64 104}
!98 = !{!57, !13, i64 60}
!99 = !{!100, !13, i64 20}
!100 = !{!"transformed_insns", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 24}
!101 = !{!100, !11, i64 0}
!102 = !{!100, !11, i64 8}
!103 = !{!100, !13, i64 16}
!104 = !{!57, !7, i64 72}
!105 = !{!10, !11, i64 0}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !20}
!108 = !{!81, !13, i64 0}
!109 = !{!81, !13, i64 16}
!110 = !{!57, !11, i64 48}
!111 = !{!112, !11, i64 8}
!112 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !11, i64 128, !13, i64 136, !13, i64 137, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139}
!113 = !{!114, !11, i64 8}
!114 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !11, i64 40, !13, i64 48, !7, i64 52, !7, i64 60, !13, i64 68, !13, i64 72}
!115 = !{!33, !11, i64 0}
!116 = !{!10, !11, i64 8}
!117 = distinct !{!117, !20}
!118 = !{!119, !11, i64 0}
!119 = !{!"rtx_search_arg", !11, i64 0, !13, i64 8}
!120 = !{!119, !13, i64 8}
!121 = !{!122, !13, i64 16}
!122 = !{!"", !11, i64 0, !11, i64 8, !13, i64 16}
!123 = !{!122, !11, i64 8}
!124 = !{!125, !11, i64 0}
!125 = !{!"", !11, i64 0, !7, i64 8, !7, i64 9}
!126 = distinct !{!126, !20}
!127 = distinct !{!127, !20}
!128 = !{!129, !11, i64 16}
!129 = !{!"loop", !13, i64 0, !13, i64 4, !11, i64 8, !11, i64 16, !130, i64 24, !13, i64 32, !13, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !131, i64 80, !131, i64 96, !7, i64 112, !7, i64 113, !13, i64 116, !11, i64 120, !11, i64 128, !7, i64 136, !11, i64 144}
!130 = !{!"lpt_decision", !13, i64 0, !13, i64 4}
!131 = !{!"", !12, i64 0, !12, i64 8}
!132 = !{!129, !11, i64 8}
!133 = !{!122, !11, i64 0}
!134 = !{!33, !13, i64 48}
!135 = distinct !{!135, !20}
!136 = !{!114, !11, i64 16}
!137 = distinct !{!137, !20}
!138 = !{!22, !13, i64 28}
!139 = distinct !{!139, !20}
!140 = distinct !{!140, !20}
!141 = !{!22, !13, i64 64}
!142 = distinct !{!142, !20}
!143 = distinct !{!143, !20}
!144 = !{!145, !11, i64 8}
!145 = !{!"succs_info", !146, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32, !13, i64 36, !13, i64 40}
!146 = !{!"short", !7, i64 0}
!147 = !{!145, !13, i64 40}
!148 = !{!145, !13, i64 36}
!149 = !{i32 0, i32 2}
!150 = !{!145, !11, i64 16}
!151 = !{!145, !13, i64 32}
!152 = distinct !{!152, !20}
!153 = distinct !{!153, !20}
!154 = distinct !{!154, !20}
!155 = !{!145, !11, i64 24}
!156 = distinct !{!156, !20}
!157 = !{!23, !13, i64 8}
!158 = distinct !{!158, !20}
!159 = distinct !{!159, !20}
!160 = !{!161, !11, i64 0}
!161 = !{!"_list_node", !11, i64 0, !7, i64 8}
!162 = distinct !{!162, !20}
!163 = !{!164, !13, i64 0}
!164 = !{!"VEC_rtx_base", !13, i64 0, !13, i64 4, !7, i64 8}
!165 = !{!125, !7, i64 8}
!166 = !{!125, !7, i64 9}
!167 = !{!168, !13, i64 0}
!168 = !{!"VEC_vinsn_t_base", !13, i64 0, !13, i64 4, !7, i64 8}
!169 = !{!168, !13, i64 4}
!170 = !{!171, !11, i64 8}
!171 = !{!"fur_static_params", !11, i64 0, !11, i64 8, !7, i64 16}
!172 = !{!171, !7, i64 16}
!173 = !{!47, !11, i64 32}
!174 = !{!57, !11, i64 32}
!175 = !{!57, !11, i64 40}
!176 = !{!171, !11, i64 0}
!177 = distinct !{!177, !20}
!178 = distinct !{!178, !20}
!179 = !{!180, !146, i64 48}
!180 = !{!"", !7, i64 0, !11, i64 8, !11, i64 16, !36, i64 24, !11, i64 40, !146, i64 48, !146, i64 50, !13, i64 52, !11, i64 56}
!181 = !{!180, !11, i64 40}
!182 = !{!180, !146, i64 50}
!183 = !{!180, !13, i64 52}
!184 = !{!180, !11, i64 56}
!185 = !{!180, !7, i64 0}
!186 = !{!180, !13, i64 24}
!187 = !{!180, !11, i64 32}
!188 = distinct !{!188, !20}
!189 = !{!180, !11, i64 8}
!190 = !{!180, !11, i64 16}
!191 = !{!10, !11, i64 24}
!192 = distinct !{!192, !20}
!193 = distinct !{!193, !20}
!194 = distinct !{!194, !20}
!195 = distinct !{!195, !20}
!196 = !{!129, !11, i64 40}
!197 = !{!112, !11, i64 32}
!198 = !{!199, !13, i64 0}
!199 = !{!"loops", !13, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!200 = !{!129, !11, i64 128}
!201 = !{!202, !11, i64 16}
!202 = !{!"loop_exit", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!203 = !{!202, !11, i64 0}
!204 = distinct !{!204, !20}
!205 = distinct !{!205, !20}
!206 = !{!207, !13, i64 0}
!207 = !{!"VEC_loop_p_base", !13, i64 0, !13, i64 4, !7, i64 8}
!208 = !{!38, !13, i64 4}
!209 = distinct !{!209, !20}
!210 = !{!69, !11, i64 400}
!211 = distinct !{!211, !20}
!212 = distinct !{!212, !20}
!213 = distinct !{!213, !20}
!214 = distinct !{!214, !20}
!215 = !{!129, !11, i64 64}
!216 = !{!217, !13, i64 8}
!217 = !{!"param_info", !11, i64 0, !13, i64 8, !7, i64 12, !13, i64 16, !13, i64 20, !11, i64 24}
!218 = !{!219, !13, i64 0}
!219 = !{!"VEC_basic_block_base", !13, i64 0, !13, i64 4, !7, i64 8}
!220 = !{!25, !11, i64 24}
!221 = distinct !{!221, !20}
!222 = !{!223, !11, i64 0}
!223 = !{!"simple_bitmap_def", !11, i64 0, !13, i64 8, !13, i64 12, !7, i64 16}
!224 = distinct !{!224, !20}
!225 = !{!25, !11, i64 0}
!226 = !{!227, !11, i64 0}
!227 = !{!"", !11, i64 0, !11, i64 8, !13, i64 16, !12, i64 24}
!228 = !{!227, !11, i64 8}
!229 = !{!230, !13, i64 16}
!230 = !{!"bitmap_element_def", !11, i64 0, !11, i64 8, !13, i64 16, !7, i64 24}
!231 = !{!227, !13, i64 16}
!232 = !{!12, !12, i64 0}
!233 = !{!227, !12, i64 24}
!234 = distinct !{!234, !20}
!235 = distinct !{!235, !20}
!236 = !{!230, !11, i64 0}
!237 = distinct !{!237, !20}
!238 = distinct !{!238, !20}
!239 = distinct !{!239, !20}
!240 = !{!241, !11, i64 0}
!241 = !{!"_fence", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 20, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !13, i64 64, !11, i64 72, !13, i64 80, !11, i64 88, !13, i64 96, !13, i64 96, !13, i64 96, !13, i64 96}
!242 = distinct !{!242, !20}
!243 = distinct !{!243, !20}
!244 = !{!241, !11, i64 24}
!245 = distinct !{!245, !20}
!246 = !{!247, !11, i64 0}
!247 = !{!"flist_tail_def", !11, i64 0, !11, i64 8}
!248 = distinct !{!248, !20}
!249 = !{!241, !13, i64 16}
!250 = !{!241, !11, i64 32}
!251 = !{!241, !11, i64 40}
!252 = !{!241, !13, i64 80}
!253 = !{!254, !11, i64 24}
!254 = !{!"_bnd", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!255 = !{!254, !11, i64 0}
!256 = distinct !{!256, !20}
!257 = distinct !{!257, !20}
!258 = distinct !{!258, !20}
!259 = distinct !{!259, !20}
!260 = distinct !{!260, !20}
!261 = !{!254, !11, i64 16}
!262 = distinct !{!262, !20}
!263 = !{!23, !13, i64 28}
!264 = distinct !{!264, !20}
!265 = distinct !{!265, !20}
!266 = !{!241, !13, i64 20}
!267 = distinct !{!267, !20}
!268 = !{!241, !11, i64 72}
!269 = !{!22, !11, i64 296}
!270 = !{!241, !11, i64 88}
!271 = !{!241, !13, i64 64}
!272 = !{!241, !11, i64 56}
!273 = !{!22, !7, i64 56}
!274 = !{!22, !13, i64 40}
!275 = !{!22, !13, i64 304}
!276 = !{!22, !13, i64 308}
!277 = !{!254, !11, i64 32}
!278 = !{!254, !11, i64 8}
!279 = distinct !{!279, !20}
!280 = !{!281, !13, i64 16}
!281 = !{!"ready_list", !11, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!282 = !{!69, !11, i64 432}
!283 = !{!69, !11, i64 440}
!284 = !{!281, !11, i64 0}
!285 = distinct !{!285, !20}
!286 = distinct !{!286, !20}
!287 = !{!69, !11, i64 512}
!288 = distinct !{!288, !20}
!289 = distinct !{!289, !20}
!290 = !{!241, !11, i64 8}
!291 = !{i32 0, i32 -2147483648}
!292 = distinct !{!292, !20}
!293 = !{!69, !11, i64 392}
!294 = distinct !{!294, !20}
!295 = !{!23, !13, i64 12}
!296 = !{!81, !13, i64 20}
!297 = distinct !{!297, !20}
!298 = distinct !{!298, !20}
!299 = distinct !{!299, !20}
!300 = distinct !{!300, !20}
!301 = distinct !{!301, !20}
!302 = !{!23, !13, i64 20}
!303 = distinct !{!303, !20}
!304 = !{!23, !13, i64 40}
!305 = !{!129, !13, i64 4}
!306 = !{!23, !13, i64 16}
!307 = distinct !{!307, !20}
!308 = distinct !{!308, !20}
!309 = !{!281, !13, i64 12}
!310 = distinct !{!310, !20}
!311 = !{!312, !13, i64 0}
!312 = !{!"VEC_expr_t_base", !13, i64 0, !13, i64 4, !7, i64 8}
!313 = !{!69, !11, i64 376}
!314 = distinct !{!314, !20}
!315 = !{!316, !12, i64 0}
!316 = !{!"reg_rename", !12, i64 0, !12, i64 8, !7, i64 16}
!317 = !{!312, !13, i64 4}
!318 = distinct !{!318, !20}
!319 = distinct !{!319, !20}
!320 = !{!321, !13, i64 12}
!321 = !{!"reg_info_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24}
!322 = !{!323, !12, i64 1904}
!323 = !{!"hard_regs_data", !7, i64 0, !7, i64 696, !7, i64 784, !7, i64 1208, !12, i64 1904, !12, i64 1912}
!324 = !{!325, !11, i64 0}
!325 = !{!"_def", !11, i64 0, !7, i64 8}
!326 = !{!316, !7, i64 16}
!327 = distinct !{!327, !20}
!328 = distinct !{!328, !20}
!329 = distinct !{!329, !20}
!330 = distinct !{!330, !20}
!331 = distinct !{!331, !20}
!332 = distinct !{!332, !20}
!333 = distinct !{!333, !20}
!334 = distinct !{!334, !20}
!335 = !{!336, !11, i64 64}
!336 = !{!"code_motion_path_driver_info_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !13, i64 56, !11, i64 64}
!337 = !{!336, !11, i64 0}
!338 = !{!336, !11, i64 8}
!339 = !{!336, !11, i64 16}
!340 = !{!336, !11, i64 40}
!341 = distinct !{!341, !20}
!342 = !{!336, !11, i64 48}
!343 = !{!344, !7, i64 477}
!344 = !{!"rtl_data", !345, i64 0, !346, i64 40, !347, i64 96, !348, i64 112, !350, i64 208, !351, i64 248, !13, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !12, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !11, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!345 = !{!"expr_status", !13, i64 0, !13, i64 4, !13, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!346 = !{!"emit_status", !13, i64 0, !13, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !11, i64 48}
!347 = !{!"varasm_status", !11, i64 0, !13, i64 8}
!348 = !{!"incoming_args", !13, i64 0, !13, i64 4, !13, i64 8, !11, i64 16, !349, i64 24, !11, i64 88}
!349 = !{!"ix86_args", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60}
!350 = !{!"function_subsections", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!351 = !{!"rtl_eh", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !7, i64 48}
!352 = !{!325, !7, i64 8}
!353 = distinct !{!353, !20, !354, !355}
!354 = !{!"llvm.loop.isvectorized", i32 1}
!355 = !{!"llvm.loop.unroll.runtime.disable"}
!356 = distinct !{!356, !20, !354, !355}
!357 = !{!323, !12, i64 1912}
!358 = !{!316, !12, i64 8}
!359 = distinct !{!359, !20}
!360 = distinct !{!360, !20}
!361 = distinct !{!361, !20}
!362 = !{!363, !13, i64 28}
!363 = !{!"expr_history_def_1", !13, i64 0, !11, i64 8, !11, i64 16, !13, i64 24, !13, i64 28}
!364 = !{!363, !13, i64 24}
!365 = !{!363, !11, i64 8}
!366 = !{!363, !11, i64 16}
!367 = distinct !{!367, !20}
!368 = !{!336, !13, i64 56}
!369 = !{!336, !11, i64 24}
!370 = distinct !{!370, !20}
!371 = !{!336, !11, i64 32}
!372 = !{!373, !7, i64 1086}
!373 = !{!"recog_data", !7, i64 0, !7, i64 240, !7, i64 480, !7, i64 720, !7, i64 840, !7, i64 960, !7, i64 1072, !7, i64 1086, !7, i64 1087, !7, i64 1088, !7, i64 1089, !11, i64 1120}
!374 = !{!375, !13, i64 16}
!375 = !{!"operand_alternative", !11, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24}
!376 = !{!375, !13, i64 8}
!377 = distinct !{!377, !20}
!378 = distinct !{!378, !20}
!379 = !{!373, !7, i64 1087}
!380 = distinct !{!380, !20}
!381 = distinct !{!381, !20}
!382 = distinct !{!382, !20}
!383 = !{!384, !11, i64 0}
!384 = !{!"", !11, i64 0, !146, i64 8, !146, i64 10, !12, i64 16}
!385 = !{!384, !146, i64 8}
!386 = !{!384, !146, i64 10}
!387 = !{!384, !12, i64 16}
!388 = distinct !{!388, !20}
!389 = distinct !{!389, !20}
!390 = distinct !{!390, !20}
!391 = distinct !{!391, !20}
!392 = distinct !{!392, !20}
!393 = distinct !{!393, !20}
!394 = distinct !{!394, !20}
!395 = !{!69, !11, i64 520}
!396 = distinct !{!396, !20}
!397 = !{!241, !11, i64 48}
!398 = distinct !{!398, !20}
!399 = distinct !{!399, !20}
!400 = !{!10, !11, i64 56}
!401 = distinct !{!401, !20}
!402 = distinct !{!402, !20}
!403 = !{!22, !11, i64 96}
!404 = distinct !{!404, !20}
!405 = distinct !{!405, !20}
!406 = distinct !{!406, !20}
!407 = distinct !{!407, !20}
!408 = !{!164, !13, i64 4}
!409 = distinct !{!409, !20}
!410 = distinct !{!410, !20}
!411 = distinct !{!411, !20}
!412 = distinct !{!412, !20}
!413 = distinct !{!413, !20}
!414 = !{!415, !11, i64 80}
!415 = !{!"haifa_sched_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !13, i64 96, !13, i64 100, !11, i64 104, !11, i64 112, !11, i64 120, !13, i64 128}
!416 = !{!415, !11, i64 88}
!417 = !{!69, !11, i64 408}
!418 = distinct !{!418, !20}
!419 = distinct !{!419, !20}
!420 = !{!415, !11, i64 64}
!421 = !{!415, !11, i64 72}
!422 = distinct !{!422, !20}
!423 = distinct !{!423, !20}
!424 = distinct !{!424, !20}
!425 = distinct !{!425, !20}
!426 = !{!114, !13, i64 24}
!427 = distinct !{!427, !20}
!428 = distinct !{!428, !20}
