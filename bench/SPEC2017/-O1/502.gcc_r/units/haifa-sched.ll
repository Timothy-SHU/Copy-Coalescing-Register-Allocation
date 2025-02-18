; ModuleID = 'haifa-sched.c'
source_filename = "haifa-sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ready_list = type { ptr, i32, i32, i32, i32 }
%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
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
%struct.spec_info_def = type { i32, ptr, i32, i32, i32 }
%struct.sched_scan_info_def = type { ptr, ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.reg_use_data = type { i32, ptr, ptr, ptr }
%struct.reg_pressure_data = type { i32 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.choice_entry = type { i32, i32, i32, ptr }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct._dep_link = type { ptr, ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.reg_set_data = type { i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@sched_verbose = dso_local local_unnamed_addr global i32 0, align 4
@sched_dump = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@sched_verbose_param = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"fix_sched_param: unknown param: %s\00", align 1
@spec_info = dso_local local_unnamed_addr global ptr null, align 8
@adding_bb_to_current_region_p = dso_local local_unnamed_addr global i8 1, align 1
@ready_try = dso_local local_unnamed_addr global ptr null, align 8
@ready = dso_local global %struct.ready_list zeroinitializer, align 8
@haifa_common_sched_info = dso_local local_unnamed_addr constant %struct.common_sched_info_def { ptr null, ptr null, ptr null, ptr @haifa_luid_for_non_insn, i32 0 }, align 8
@sched_luids = dso_local local_unnamed_addr global ptr null, align 8
@sched_max_luid = dso_local local_unnamed_addr global i32 1, align 4
@h_i_d = dso_local local_unnamed_addr global ptr null, align 8
@region_ref_regs = internal unnamed_addr global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"haifa-sched.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sched_pressure_p = dso_local local_unnamed_addr global i8 0, align 1
@note_list = dso_local local_unnamed_addr global ptr null, align 8
@dfa_lookahead = dso_local local_unnamed_addr global i32 0, align 4
@cached_first_cycle_multipass_dfa_lookahead = internal unnamed_addr global i32 0, align 4
@max_lookahead_tries = internal unnamed_addr global i32 0, align 4
@issue_rate = dso_local local_unnamed_addr global i32 0, align 4
@cycle_issued_insns = dso_local local_unnamed_addr global i32 0, align 4
@choice_stack = internal unnamed_addr global ptr null, align 8
@dfa_state_size = dso_local local_unnamed_addr global i64 0, align 8
@current_sched_info = dso_local local_unnamed_addr global ptr null, align 8
@haifa_recovery_bb_recently_added_p = internal unnamed_addr global i1 false, align 1
@curr_state = dso_local local_unnamed_addr global ptr null, align 8
@last_scheduled_insn = internal unnamed_addr global ptr null, align 8
@q_ptr = internal unnamed_addr global i32 0, align 4
@q_size = internal unnamed_addr global i32 0, align 4
@max_insn_queue_index = external local_unnamed_addr constant i32, align 4
@insn_queue = internal unnamed_addr global ptr null, align 8
@clock_var = internal unnamed_addr global i32 0, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c";;\09\09Ready list on entry: %d insns\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c";;\09\09 before reload => truncated to %d insns\0A\00", align 1
@last_clock_var = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c";;\09\09Ready list after queue_to_ready:  \00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c";;\09\09Ready list after ready_sort:  \00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c";;\09Ready list (t = %3d):  \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c";;\09\09Second chance\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c";;\09Ready list (final):  \00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c";;   total time = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c";;   new head = %d\0A;;   new tail = %d\0A\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@flag_sched_pressure = external local_unnamed_addr global i32, align 4
@common_sched_info = dso_local local_unnamed_addr global ptr null, align 8
@spec_info_var = internal global %struct.spec_info_def zeroinitializer, align 8
@cached_issue_rate = internal unnamed_addr global i32 0, align 4
@sched_regno_cover_class = dso_local local_unnamed_addr global ptr null, align 8
@ira_class_translate = external local_unnamed_addr global [27 x i32], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@curr_reg_live = internal unnamed_addr global ptr null, align 8
@saved_reg_live = internal unnamed_addr global ptr null, align 8
@sched_deps_info = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@sched_init_only_bb = dso_local local_unnamed_addr global ptr null, align 8
@sched_split_block = dso_local local_unnamed_addr global ptr null, align 8
@sched_create_empty_bb = dso_local local_unnamed_addr global ptr null, align 8
@haifa_recovery_bb_ever_added_p = dso_local local_unnamed_addr global i8 0, align 1
@nr_be_in_control = internal unnamed_addr global i32 0, align 4
@nr_be_in_data = internal unnamed_addr global i32 0, align 4
@nr_begin_control = internal unnamed_addr global i32 0, align 4
@nr_begin_data = internal unnamed_addr global i32 0, align 4
@before_recovery = internal unnamed_addr global ptr null, align 8
@after_recovery = dso_local local_unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c";; %s:\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c";; Procedure %cr-begin-data-spec motions == %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c";; Procedure %cr-be-in-data-spec motions == %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c";; Procedure %cr-begin-control-spec motions == %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c";; Procedure %cr-be-in-control-spec motions == %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c";;\09\09dependencies resolved: insn %s\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"; data-spec;\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"; control-spec;\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"; in-control-spec;\00", align 1
@sched_ready_n_insns = internal unnamed_addr global i32 -1, align 4
@.str.23 = private unnamed_addr constant [36 x i8] c";;\09\09Generated recovery block rec%d\0A\00", align 1
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@bb_header = internal unnamed_addr global ptr null, align 8
@sched_scan_info = dso_local local_unnamed_addr global ptr null, align 8
@__const.sched_init_luids.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr null, ptr null, ptr @luids_extend_insn, ptr @luids_init_insn }, align 8
@__const.haifa_init_h_i_d.ssi = private unnamed_addr constant %struct.sched_scan_info_def { ptr null, ptr null, ptr @extend_h_i_d, ptr @init_h_i_d }, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@setup_insn_reg_pressure_info.death = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@curr_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_regs = external local_unnamed_addr global [27 x [53 x i16]], align 16
@reg_raw_mode = external local_unnamed_addr global [53 x i32], align 16
@ira_memory_move_cost = external local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@flag_sched_group_heuristic = external local_unnamed_addr global i32, align 4
@flag_sched_critical_path_heuristic = external local_unnamed_addr global i32, align 4
@flag_sched_spec_insn_heuristic = external local_unnamed_addr global i32, align 4
@flag_sched_rank_heuristic = external local_unnamed_addr global i32, align 4
@flag_sched_last_insn_heuristic = external local_unnamed_addr global i32, align 4
@flag_sched_dep_count_heuristic = external local_unnamed_addr global i32, align 4
@current_nr_blocks = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@setup_insn_max_reg_pressure.max_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@saved_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [25 x i8] c";;\09\09Ready-->Q: insn %s: \00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"queued for %d cycles.\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c";;\09Advanced a state.\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c";;\09\09Q-->Ready: insn %s: \00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"requeued because ready full\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"moving to ready without stalls\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"moving to ready with %d stalls\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"  %s:%d\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"(cost=%d\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c":delay=%d\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c";;\09%3i--> %-40s:\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"%s%+d(%d)\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.38 = private unnamed_addr constant [30 x i8] c";;\09\09resetting: debug insn %d\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@flag_sched_stalled_insns = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [4 x i8] c";;\09\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"  %s:%d(%d)\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c";; look at index %d + %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"transition cost = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c";;\09\09Early Q-->Ready: insn %s\0A\00", align 1
@flag_sched_stalled_insns_dep = external local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [41 x i8] c";;\09\09Chosen insn (but can't issue) : %s \0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c";;\09\09Chosen insn : %s\0A\00", align 1
@sd_iterator_start.null_link = internal global ptr null, align 8
@.str.46 = private unnamed_addr constant [26 x i8] c";;\09\09tick updated: insn %s\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" into ready\0A\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c" into queue with cost=%d\0A\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c" removed from ready or queue lists\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c";;\09\09Generated check insn : %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c";;\09\09Generated twin insn : %d/rec%d\0A\00", align 1
@h_d_i_d = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [31 x i8] c";;\09\09Removed simple check : %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c";;\09\09Fixed fallthru to EXIT : %d->>%d->%d->>EXIT\0A\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c";;   ======================================================\0A\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c";;   =====================ADVANCING TO=====================\0A\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c";;   -- basic block %d from %d to %d -- %s reload\0A\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"before\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !94 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !95
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !94 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !95
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !94 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !105

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !99
  %11 = load i8, ptr %3, align 1, !tbaa !106
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !94 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !105

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !99
  %11 = load i8, ptr %3, align 1, !tbaa !106
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !94 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !95
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !105

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #27
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !99
  %11 = load i8, ptr %3, align 1, !tbaa !106
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !94 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !95
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !94 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !105

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !107
  store i8 %12, ptr %4, align 1, !tbaa !106
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !94 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !105

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !107
  store i8 %12, ptr %4, align 1, !tbaa !106
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !94 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !105

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !107
  store i8 %12, ptr %4, align 1, !tbaa !106
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !94 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #27
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !94 {
  %2 = load i32, ptr %0, align 8, !tbaa !109
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !94 {
  %2 = load i32, ptr %0, align 8, !tbaa !109
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !94 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !110
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !94 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !110
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !94 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #27
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
  br i1 %23, label %7, label %24, !llvm.loop !111

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !94 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @fix_sched_param(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !94 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call i64 @strtol(ptr nocapture noundef %1, ptr noundef null, i32 noundef 10)
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr @sched_verbose_param, align 4, !tbaa !110
  br label %10

8:                                                ; preds = %2
  %9 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %0) #27
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @haifa_luid_for_non_insn(ptr nocapture noundef readonly %0) #9 !prof !94 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65534
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3984, ptr noundef nonnull @.str.3) #27
  br label %6

6:                                                ; preds = %1, %5
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @haifa_classify_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !114 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call fastcc i32 @haifa_classify_rtx(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @haifa_classify_rtx(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !115 !PGOFuncName !116 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %5, label %25, !prof !117

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = zext i32 %8 to i64
  br label %10

10:                                               ; preds = %15, %5
  %11 = phi i64 [ %17, %15 ], [ %9, %5 ]
  %12 = phi i32 [ %22, %15 ], [ 0, %5 ]
  %13 = trunc i64 %11 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %76, !prof !120

15:                                               ; preds = %10
  %16 = add nsw i64 %11, -1
  %17 = add nsw i64 %11, -1
  %18 = load ptr, ptr %6, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.rtvec_def, ptr %18, i64 0, i32 1, i64 %16
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = tail call fastcc i32 @haifa_classify_rtx(ptr noundef %20)
  %22 = tail call i32 @llvm.smax.i32(i32 %12, i32 %21)
  %23 = and i32 %22, -2
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %76, label %10, !prof !121, !llvm.loop !122

25:                                               ; preds = %1
  %26 = trunc i32 %2 to i16
  switch i16 %26, label %76 [
    i16 25, label %27
    i16 23, label %39
    i16 14, label %62
    i16 29, label %75
  ], !prof !123

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = icmp eq ptr %29, null
  br i1 %30, label %76, label %31, !prof !124

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %38, !prof !125

35:                                               ; preds = %31
  %36 = tail call i32 @may_trap_p(ptr noundef nonnull %29) #27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %76, !prof !126

38:                                               ; preds = %35, %31
  br label %76

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43, !prof !127

43:                                               ; preds = %39
  %44 = load i32, ptr %41, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 43
  br i1 %46, label %47, label %50, !prof !128

47:                                               ; preds = %43
  %48 = tail call i32 @may_trap_p(ptr noundef nonnull %41) #27
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51, !prof !129

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %39, %47, %50
  %52 = phi i1 [ false, %50 ], [ false, %39 ], [ true, %47 ]
  %53 = phi i32 [ 0, %50 ], [ 0, %39 ], [ 5, %47 ]
  br i1 %52, label %76, label %54, !prof !130

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !106
  %57 = tail call fastcc i32 @may_trap_exp(ptr noundef %56, i32 noundef 0), !range !131
  %58 = icmp ugt i32 %53, %57
  br i1 %58, label %76, label %59, !prof !132

59:                                               ; preds = %54
  %60 = load ptr, ptr %55, align 8, !tbaa !106
  %61 = tail call fastcc i32 @may_trap_exp(ptr noundef %60, i32 noundef 0), !range !131
  br label %76

62:                                               ; preds = %25
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !106
  %66 = tail call fastcc i32 @haifa_classify_rtx(ptr noundef %65)
  %67 = icmp eq i32 %66, 5
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %63, align 8, !tbaa !106
  %70 = tail call fastcc i32 @may_trap_exp(ptr noundef %69, i32 noundef 0), !range !131
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %63, align 8, !tbaa !106
  %74 = tail call fastcc i32 @may_trap_exp(ptr noundef %73, i32 noundef 0), !range !131
  br label %76

75:                                               ; preds = %25
  br label %76

76:                                               ; preds = %15, %10, %38, %35, %27, %75, %51, %62, %25, %54, %59, %68, %72
  %77 = phi i32 [ 0, %25 ], [ 5, %75 ], [ 5, %62 ], [ 5, %51 ], [ %61, %59 ], [ %53, %54 ], [ %74, %72 ], [ %66, %68 ], [ 0, %38 ], [ 0, %27 ], [ 5, %35 ], [ %12, %10 ], [ %22, %15 ]
  ret i32 %77
}

; Function Attrs: cold nounwind uwtable
define dso_local void @sched_init_region_reg_pressure_info() local_unnamed_addr #9 !prof !94 {
  %1 = load ptr, ptr @region_ref_regs, align 8, !tbaa !95
  tail call void @bitmap_clear(ptr noundef %1) #27
  ret void
}

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @insn_cost(ptr noundef %0) local_unnamed_addr #11 !prof !94 {
  %2 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.common_sched_info_def, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !133
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %20, !prof !135

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !106
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14, !prof !136

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = tail call i32 @recog(ptr noundef %12, ptr noundef %0, ptr noundef null) #27
  store i32 %13, ptr %7, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %6, %10
  %15 = load i32, ptr %7, align 8, !tbaa !106
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %53, label %17, !prof !137

17:                                               ; preds = %14
  %18 = tail call i32 @insn_default_latency(ptr noundef %0) #27
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  br label %53

20:                                               ; preds = %1
  %21 = load ptr, ptr @h_i_d, align 8
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !106
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %21, i64 0, i32 2, i64 %24, i32 5
  %26 = load i16, ptr %25, align 4, !tbaa !138
  %27 = sext i16 %26 to i32
  %28 = icmp slt i16 %26, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !106
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !106
  %36 = tail call i32 @recog(ptr noundef %35, ptr noundef %0, ptr noundef null) #27
  store i32 %36, ptr %30, align 8, !tbaa !106
  br label %37

37:                                               ; preds = %29, %33
  %38 = load i32, ptr %30, align 8, !tbaa !106
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load ptr, ptr @h_i_d, align 8
  %42 = load i32, ptr %22, align 8, !tbaa !106
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %41, i64 0, i32 2, i64 %43, i32 5
  store i16 0, ptr %44, align 4, !tbaa !138
  br label %53

45:                                               ; preds = %37
  %46 = tail call i32 @insn_default_latency(ptr noundef %0) #27
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  %48 = trunc i32 %47 to i16
  %49 = load ptr, ptr @h_i_d, align 8
  %50 = load i32, ptr %22, align 8, !tbaa !106
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %49, i64 0, i32 2, i64 %51, i32 5
  store i16 %48, ptr %52, align 4, !tbaa !138
  br label %53

53:                                               ; preds = %20, %45, %14, %40, %17
  %54 = phi i32 [ %19, %17 ], [ 0, %40 ], [ 0, %14 ], [ %47, %45 ], [ %27, %20 ]
  ret i32 %54
}

declare i32 @insn_default_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @dep_cost_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !140 {
  %3 = load ptr, ptr %0, align 8, !tbaa !141
  %4 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13, !prof !144

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = tail call i32 @recog(ptr noundef %11, ptr noundef %5, ptr noundef null) #27
  store i32 %12, ptr %6, align 8, !tbaa !106
  br label %13

13:                                               ; preds = %2, %9
  %14 = load i32, ptr %6, align 8, !tbaa !106
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24, !prof !144

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !106
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %117, !prof !145

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = tail call i32 @recog(ptr noundef %22, ptr noundef %3, ptr noundef null) #27
  store i32 %23, ptr %17, align 8, !tbaa !106
  br label %117

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !146
  %27 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.common_sched_info_def, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !133
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %45, !prof !135

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !106
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39, !prof !136

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = tail call i32 @recog(ptr noundef %37, ptr noundef %3, ptr noundef null) #27
  store i32 %38, ptr %32, align 8, !tbaa !106
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, ptr %32, align 8, !tbaa !106
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %78, label %42, !prof !137

42:                                               ; preds = %39
  %43 = tail call i32 @insn_default_latency(ptr noundef %3) #27
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  br label %78

45:                                               ; preds = %24
  %46 = load ptr, ptr @h_i_d, align 8
  %47 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !106
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %46, i64 0, i32 2, i64 %49, i32 5
  %51 = load i16, ptr %50, align 4, !tbaa !138
  %52 = sext i16 %51 to i32
  %53 = icmp slt i16 %51, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !106
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !106
  %61 = tail call i32 @recog(ptr noundef %60, ptr noundef %3, ptr noundef null) #27
  store i32 %61, ptr %55, align 8, !tbaa !106
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, ptr %55, align 8, !tbaa !106
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load ptr, ptr @h_i_d, align 8
  %67 = load i32, ptr %47, align 8, !tbaa !106
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %66, i64 0, i32 2, i64 %68, i32 5
  store i16 0, ptr %69, align 4, !tbaa !138
  br label %78

70:                                               ; preds = %62
  %71 = tail call i32 @insn_default_latency(ptr noundef %3) #27
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0)
  %73 = trunc i32 %72 to i16
  %74 = load ptr, ptr @h_i_d, align 8
  %75 = load i32, ptr %47, align 8, !tbaa !106
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %74, i64 0, i32 2, i64 %76, i32 5
  store i16 %73, ptr %77, align 4, !tbaa !138
  br label %78

78:                                               ; preds = %39, %42, %45, %65, %70
  %79 = phi i32 [ %44, %42 ], [ 0, %65 ], [ 0, %39 ], [ %72, %70 ], [ %52, %45 ]
  %80 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !106
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %94, !prof !147

83:                                               ; preds = %78
  switch i32 %26, label %89 [
    i32 12, label %94
    i32 11, label %84
  ], !prof !148

84:                                               ; preds = %83
  %85 = tail call i32 @insn_default_latency(ptr noundef %3) #27
  %86 = tail call i32 @insn_default_latency(ptr noundef %5) #27
  %87 = sub nsw i32 %85, %86
  %88 = tail call i32 @llvm.smax.i32(i32 %87, i32 1)
  br label %94

89:                                               ; preds = %83
  %90 = tail call i32 @bypass_p(ptr noundef %3) #27
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92, !prof !149

92:                                               ; preds = %89
  %93 = tail call i32 @insn_latency(ptr noundef %3, ptr noundef %5) #27
  br label %94

94:                                               ; preds = %83, %89, %92, %84, %78
  %95 = phi i32 [ %88, %84 ], [ %93, %92 ], [ %79, %89 ], [ %79, %78 ], [ 0, %83 ]
  %96 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 21), align 8, !tbaa !150
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !162

98:                                               ; preds = %94
  %99 = tail call i32 %96(ptr noundef %5, i32 noundef %26, ptr noundef %3, i32 noundef %95, i32 noundef %1) #27
  br label %114

100:                                              ; preds = %94
  %101 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1), align 8, !tbaa !163
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103, !prof !164

103:                                              ; preds = %100
  %104 = tail call ptr @alloc_INSN_LIST(ptr noundef null, ptr noundef null) #27
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %104, ptr %105, align 8, !tbaa !106
  %106 = load i32, ptr %25, align 8, !tbaa !146
  %107 = load i32, ptr %104, align 8
  %108 = shl i32 %106, 16
  %109 = and i32 %108, 16711680
  %110 = and i32 %107, -16711681
  %111 = or disjoint i32 %110, %109
  store i32 %111, ptr %104, align 8
  %112 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1), align 8, !tbaa !163
  %113 = tail call i32 %112(ptr noundef %5, ptr noundef nonnull %104, ptr noundef %3, i32 noundef %95) #27, !prof !165
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %104) #27
  br label %114

114:                                              ; preds = %100, %103, %98
  %115 = phi i32 [ %99, %98 ], [ %113, %103 ], [ %95, %100 ]
  %116 = tail call i32 @llvm.smax.i32(i32 %115, i32 0)
  br label %117

117:                                              ; preds = %20, %16, %114
  %118 = phi i32 [ %116, %114 ], [ 0, %16 ], [ 0, %20 ]
  ret i32 %118
}

declare i32 @bypass_p(ptr noundef) local_unnamed_addr #3

declare i32 @insn_latency(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_INSN_LIST_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @dep_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = tail call i32 @dep_cost_1(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local void @increase_insn_priority(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.common_sched_info_def, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !133
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @h_i_d, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !106
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %8, i64 0, i32 2, i64 %11, i32 7
  %13 = load i8, ptr %12, align 1, !tbaa !166
  %14 = icmp sgt i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %8, i64 0, i32 2, i64 %11, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !167
  %18 = add nsw i32 %17, %1
  store i32 %18, ptr %16, align 4, !tbaa !167
  br label %20

19:                                               ; preds = %2
  tail call void @sel_add_to_insn_priority(ptr noundef %0, i32 noundef %1) #27
  br label %20

20:                                               ; preds = %7, %15, %19
  ret void
}

declare void @sel_add_to_insn_priority(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @ready_lastpos(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !168
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #27
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !170
  %8 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !171
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load i32, ptr %2, align 8, !tbaa !168
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  ret ptr %16
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @ready_element(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !172 {
  %3 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !168
  %5 = icmp ne i32 %4, 0
  %6 = icmp sgt i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %9, label %8, !prof !173

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !170
  %11 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = sub nsw i32 %12, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %10, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ready_sort(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !168
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #27
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !171
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load i32, ptr %3, align 8, !tbaa !168
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %171, label %20

20:                                               ; preds = %7
  %21 = load i32, ptr %3, align 8, !tbaa !168
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %171

23:                                               ; preds = %20, %161
  %24 = phi i64 [ %167, %161 ], [ 0, %20 ]
  %25 = getelementptr inbounds ptr, ptr %17, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %37, %31 ]
  %33 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !110
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [27 x i32], ptr @setup_insn_reg_pressure_info.death, i64 0, i64 %35
  store i32 0, ptr %36, align 4, !tbaa !110
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, %30
  br i1 %38, label %39, label %31, !llvm.loop !174

39:                                               ; preds = %31, %23
  %40 = load ptr, ptr @h_i_d, align 8
  %41 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !106
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %40, i64 0, i32 2, i64 %43, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  %46 = icmp eq ptr %45, null
  br i1 %46, label %99, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr @sched_regno_cover_class, align 8
  %49 = load ptr, ptr @regno_reg_rtx, align 8
  br label %50

50:                                               ; preds = %47, %95
  %51 = phi ptr [ %45, %47 ], [ %97, %95 ]
  %52 = getelementptr inbounds %struct.reg_use_data, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !175
  %54 = icmp eq ptr %53, %51
  br i1 %54, label %74, label %55

55:                                               ; preds = %50, %70
  %56 = phi ptr [ %72, %70 ], [ %53, %50 ]
  %57 = getelementptr inbounds %struct.reg_use_data, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !177
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -11
  %62 = icmp ult i32 %61, -3
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !106
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %40, i64 0, i32 2, i64 %66, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !178
  %69 = icmp eq i32 %68, -3
  br i1 %69, label %70, label %95

70:                                               ; preds = %63, %55
  %71 = getelementptr inbounds %struct.reg_use_data, ptr %56, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !175
  %73 = icmp eq ptr %72, %51
  br i1 %73, label %74, label %55, !llvm.loop !179

74:                                               ; preds = %70, %50
  %75 = load i32, ptr %51, align 8, !tbaa !180
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %48, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !110
  %79 = icmp slt i32 %75, 53
  %80 = zext i32 %78 to i64
  br i1 %79, label %90, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds ptr, ptr %49, i64 %76
  %83 = load ptr, ptr %82, align 8, !tbaa !95
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %80, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !110
  br label %90

90:                                               ; preds = %74, %81
  %91 = phi i32 [ %89, %81 ], [ 1, %74 ]
  %92 = getelementptr inbounds [27 x i32], ptr @setup_insn_reg_pressure_info.death, i64 0, i64 %80
  %93 = load i32, ptr %92, align 4, !tbaa !110
  %94 = add nsw i32 %93, %91
  store i32 %94, ptr %92, align 4, !tbaa !110
  br label %95

95:                                               ; preds = %63, %90
  %96 = getelementptr inbounds %struct.reg_use_data, ptr %51, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !95
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %50, !llvm.loop !181

99:                                               ; preds = %95, %39
  %100 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %40, i64 0, i32 2, i64 %43, i32 13
  %101 = load ptr, ptr %100, align 8, !tbaa !182
  %102 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %40, i64 0, i32 2, i64 %43, i32 14
  %103 = load ptr, ptr %102, align 8, !tbaa !183
  %104 = icmp ne ptr %101, null
  %105 = icmp ne ptr %103, null
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %108, label %107

107:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1149, ptr noundef nonnull @.str.3) #27
  br label %108

108:                                              ; preds = %107, %99
  %109 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %161

111:                                              ; preds = %108, %142
  %112 = phi i64 [ %157, %142 ], [ 0, %108 ]
  %113 = phi i32 [ %156, %142 ], [ 0, %108 ]
  %114 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %112
  %115 = load i32, ptr %114, align 4, !tbaa !110
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !110
  %119 = icmp sgt i32 %118, -1
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1153, ptr noundef nonnull @.str.3) #27
  br label %121

121:                                              ; preds = %120, %111
  %122 = getelementptr inbounds %struct.reg_pressure_data, ptr %101, i64 %112
  %123 = load i32, ptr %122, align 4
  %124 = lshr i32 %123, 8
  %125 = and i32 %124, 255
  %126 = getelementptr inbounds [27 x i32], ptr @setup_insn_reg_pressure_info.death, i64 0, i64 %116
  %127 = load i32, ptr %126, align 4, !tbaa !110
  %128 = getelementptr inbounds i32, ptr %103, i64 %112
  %129 = load i32, ptr %128, align 4, !tbaa !110
  %130 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %116
  %131 = load i32, ptr %130, align 4, !tbaa !110
  %132 = sub nsw i32 %129, %131
  %133 = tail call i32 @llvm.smax.i32(i32 %132, i32 0)
  %134 = add i32 %129, %125
  %135 = add i32 %127, %131
  %136 = sub i32 %134, %135
  %137 = tail call i32 @llvm.smax.i32(i32 %136, i32 0)
  %138 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %116
  %139 = load i16, ptr %138, align 2, !tbaa !184
  %140 = icmp sgt i16 %139, -1
  br i1 %140, label %142, label %141

141:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1159, ptr noundef nonnull @.str.3) #27
  br label %142

142:                                              ; preds = %141, %121
  %143 = sext i16 %139 to i64
  %144 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !110
  %146 = sub nsw i32 %137, %133
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %147, i64 %116
  %149 = load i16, ptr %148, align 4, !tbaa !184
  %150 = sext i16 %149 to i32
  %151 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %147, i64 %116, i64 1
  %152 = load i16, ptr %151, align 2, !tbaa !184
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %153, %150
  %155 = mul nsw i32 %154, %146
  %156 = add nsw i32 %155, %113
  %157 = add nuw nsw i64 %112, 1
  %158 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %157, %159
  br i1 %160, label %111, label %161, !llvm.loop !185

161:                                              ; preds = %142, %108
  %162 = phi i32 [ 0, %108 ], [ %156, %142 ]
  %163 = load ptr, ptr @h_i_d, align 8
  %164 = load i32, ptr %41, align 8, !tbaa !106
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %163, i64 0, i32 2, i64 %165, i32 17
  store i32 %162, ptr %166, align 8, !tbaa !186
  %167 = add nuw nsw i64 %24, 1
  %168 = load i32, ptr %3, align 8, !tbaa !168
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %23, label %171, !llvm.loop !187

171:                                              ; preds = %161, %20, %7
  %172 = load i32, ptr %3, align 8, !tbaa !168
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %175 = getelementptr inbounds ptr, ptr %16, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !95
  store ptr %176, ptr %2, align 8, !tbaa !95
  %177 = call i32 @rank_for_schedule(ptr noundef nonnull %17, ptr noundef nonnull %2)
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load ptr, ptr %17, align 8, !tbaa !95
  store ptr %180, ptr %175, align 8, !tbaa !95
  br label %181, !llvm.loop !188

181:                                              ; preds = %179, %174
  %182 = phi i64 [ 0, %179 ], [ 1, %174 ]
  %183 = getelementptr inbounds ptr, ptr %17, i64 %182
  store ptr %176, ptr %183, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %188

184:                                              ; preds = %171
  %185 = icmp sgt i32 %172, 2
  br i1 %185, label %186, label %188

186:                                              ; preds = %184
  %187 = zext nneg i32 %172 to i64
  tail call void @spec_qsort(ptr noundef nonnull %17, i64 noundef %187, i64 noundef 8, ptr noundef nonnull @rank_for_schedule) #27
  br label %188

188:                                              ; preds = %184, %186, %181
  ret void
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @rank_for_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !94 {
  %3 = load ptr, ptr %1, align 8, !tbaa !95
  %4 = load ptr, ptr %0, align 8, !tbaa !95
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !110
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 7
  br i1 %14, label %15, label %237

15:                                               ; preds = %11, %7
  %16 = load i32, ptr %4, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %237, label %19

19:                                               ; preds = %15, %2
  %20 = load i32, ptr @flag_sched_group_heuristic, align 4, !tbaa !110
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 8
  %24 = lshr i32 %23, 28
  %25 = and i32 %24, 1
  %26 = load i32, ptr %4, align 8
  %27 = lshr i32 %26, 28
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = icmp eq i32 %28, 0
  %32 = select i1 %31, i32 -1, i32 1
  br label %237

33:                                               ; preds = %22, %19
  %34 = load ptr, ptr @h_i_d, align 8
  %35 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !106
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %34, i64 0, i32 2, i64 %37, i32 7
  %39 = load i8, ptr %38, align 1, !tbaa !166
  %40 = icmp sgt i8 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !106
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %34, i64 0, i32 2, i64 %44, i32 7
  %46 = load i8, ptr %45, align 1, !tbaa !166
  %47 = icmp sgt i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41, %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1196, ptr noundef nonnull @.str.3) #27
  br label %49

49:                                               ; preds = %41, %48
  %50 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr @h_i_d, align 8
  %54 = load i32, ptr %35, align 8, !tbaa !106
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %53, i64 0, i32 2, i64 %55, i32 17
  %57 = load i32, ptr %56, align 8, !tbaa !186
  %58 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %53, i64 0, i32 2, i64 %55, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !189
  %60 = load i32, ptr @clock_var, align 4, !tbaa !110
  %61 = icmp sgt i32 %59, %60
  %62 = sub nsw i32 %59, %60
  %63 = select i1 %61, i32 %62, i32 0
  %64 = add nsw i32 %63, %57
  %65 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !106
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %53, i64 0, i32 2, i64 %67, i32 17
  %69 = load i32, ptr %68, align 8, !tbaa !186
  %70 = sub i32 %64, %69
  %71 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %53, i64 0, i32 2, i64 %67, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !189
  %73 = icmp sgt i32 %72, %60
  %74 = sub i32 %60, %72
  %75 = select i1 %73, i32 %74, i32 0
  %76 = add i32 %70, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %237

78:                                               ; preds = %52, %49
  %79 = phi i32 [ undef, %49 ], [ %76, %52 ]
  br i1 %51, label %104, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr @h_i_d, align 8
  %82 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !106
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %81, i64 0, i32 2, i64 %84, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !189
  %87 = load i32, ptr @clock_var, align 4, !tbaa !110
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = load i32, ptr %35, align 8, !tbaa !106
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %81, i64 0, i32 2, i64 %91, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !189
  %94 = icmp sgt i32 %93, %87
  br i1 %94, label %95, label %104

95:                                               ; preds = %89, %80
  %96 = load i32, ptr %35, align 8, !tbaa !106
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %81, i64 0, i32 2, i64 %97, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !189
  %100 = icmp sgt i32 %99, %87
  br i1 %100, label %101, label %237

101:                                              ; preds = %95
  %102 = sub nsw i32 %99, %86
  %103 = select i1 %88, i32 %102, i32 1
  br label %237

104:                                              ; preds = %89, %78
  %105 = load ptr, ptr @h_i_d, align 8
  %106 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %105, i64 0, i32 2, i64 %108, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !167
  %111 = load i32, ptr %35, align 8, !tbaa !106
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %105, i64 0, i32 2, i64 %112, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !167
  %115 = sub nsw i32 %110, %114
  %116 = load i32, ptr @flag_sched_critical_path_heuristic, align 4, !tbaa !110
  %117 = icmp ne i32 %116, 0
  %118 = icmp ne i32 %115, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %237, label %120

120:                                              ; preds = %104
  %121 = load i32, ptr @flag_sched_spec_insn_heuristic, align 4, !tbaa !110
  %122 = icmp ne i32 %121, 0
  %123 = load ptr, ptr @spec_info, align 8
  %124 = icmp ne ptr %123, null
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %150

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %105, i64 0, i32 2, i64 %112, i32 8
  %128 = load i32, ptr %127, align 8, !tbaa !190
  %129 = and i32 %128, 16777215
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = tail call i32 @ds_weak(i32 noundef %129) #27
  br label %133

133:                                              ; preds = %126, %131
  %134 = phi i32 [ %132, %131 ], [ 63, %126 ]
  %135 = load ptr, ptr @h_i_d, align 8
  %136 = load i32, ptr %106, align 8, !tbaa !106
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %135, i64 0, i32 2, i64 %137, i32 8
  %139 = load i32, ptr %138, align 8, !tbaa !190
  %140 = and i32 %139, 16777215
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %133
  %143 = tail call i32 @ds_weak(i32 noundef %140) #27
  br label %144

144:                                              ; preds = %133, %142
  %145 = phi i32 [ %143, %142 ], [ 63, %133 ]
  %146 = sub nsw i32 %145, %134
  %147 = add i32 %146, 7
  %148 = icmp ult i32 %147, 15
  %149 = select i1 %148, i32 %79, i32 %146
  br i1 %148, label %150, label %237

150:                                              ; preds = %144, %120
  %151 = phi i32 [ %149, %144 ], [ %79, %120 ]
  %152 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %153 = getelementptr inbounds %struct.haifa_sched_info, ptr %152, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !191
  %155 = tail call i32 %154(ptr noundef %3, ptr noundef %4) #27
  %156 = load i32, ptr @flag_sched_rank_heuristic, align 4, !tbaa !110
  %157 = icmp ne i32 %156, 0
  %158 = icmp ne i32 %155, 0
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %237, label %160

160:                                              ; preds = %150
  %161 = load i32, ptr @flag_sched_last_insn_heuristic, align 4, !tbaa !110
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %183, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 65535
  %167 = icmp eq i32 %166, 7
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %170 = getelementptr inbounds %struct.haifa_sched_info, ptr %169, i64 0, i32 8
  %171 = load ptr, ptr %170, align 8, !tbaa !193
  %172 = icmp eq ptr %164, %171
  br i1 %172, label %183, label %173

173:                                              ; preds = %168, %173
  %174 = phi ptr [ %176, %173 ], [ %164, %168 ]
  %175 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !106
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 65535
  %179 = add nsw i32 %178, -8
  %180 = icmp ult i32 %179, 3
  %181 = icmp eq ptr %176, %171
  %182 = or i1 %181, %180
  br i1 %182, label %183, label %173, !llvm.loop !194

183:                                              ; preds = %173, %163, %168, %160
  %184 = phi ptr [ %164, %168 ], [ %164, %163 ], [ undef, %160 ], [ %176, %173 ]
  br i1 %162, label %218, label %185

185:                                              ; preds = %183
  %186 = load i32, ptr %184, align 8
  %187 = and i32 %186, 65535
  %188 = add nsw i32 %187, -11
  %189 = icmp ult i32 %188, -3
  br i1 %189, label %218, label %190

190:                                              ; preds = %185
  %191 = tail call ptr @sd_find_dep_between(ptr noundef nonnull %184, ptr noundef %3, i8 noundef zeroext 1) #27
  %192 = icmp eq ptr %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %190
  %194 = tail call i32 @dep_cost_1(ptr noundef nonnull %191, i32 noundef 0)
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %201, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct._dep, ptr %191, i64 0, i32 2
  %198 = load i32, ptr %197, align 8, !tbaa !146
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 -1, i32 -2
  br label %201

201:                                              ; preds = %196, %190, %193
  %202 = phi i32 [ -3, %193 ], [ -3, %190 ], [ %200, %196 ]
  %203 = tail call ptr @sd_find_dep_between(ptr noundef nonnull %184, ptr noundef %4, i8 noundef zeroext 1) #27
  %204 = icmp eq ptr %203, null
  br i1 %204, label %213, label %205

205:                                              ; preds = %201
  %206 = tail call i32 @dep_cost_1(ptr noundef nonnull %203, i32 noundef 0)
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %213, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct._dep, ptr %203, i64 0, i32 2
  %210 = load i32, ptr %209, align 8, !tbaa !146
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %211, i32 1, i32 2
  br label %213

213:                                              ; preds = %208, %201, %205
  %214 = phi i32 [ 3, %205 ], [ 3, %201 ], [ %212, %208 ]
  %215 = add nsw i32 %214, %202
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 %151, i32 %215
  br i1 %216, label %218, label %237

218:                                              ; preds = %213, %185, %183
  %219 = tail call fastcc i32 @dep_list_size(ptr noundef %4)
  %220 = tail call fastcc i32 @dep_list_size(ptr noundef %3)
  %221 = sub nsw i32 %219, %220
  %222 = load i32, ptr @flag_sched_dep_count_heuristic, align 4, !tbaa !110
  %223 = icmp ne i32 %222, 0
  %224 = icmp ne i32 %221, 0
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %237, label %226

226:                                              ; preds = %218
  %227 = load ptr, ptr @sched_luids, align 8
  %228 = load i32, ptr %35, align 8, !tbaa !106
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.VEC_int_base, ptr %227, i64 0, i32 2, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !110
  %232 = load i32, ptr %106, align 8, !tbaa !106
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.VEC_int_base, ptr %227, i64 0, i32 2, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !110
  %236 = sub nsw i32 %231, %235
  br label %237

237:                                              ; preds = %144, %104, %11, %101, %218, %150, %95, %15, %52, %213, %226, %30
  %238 = phi i32 [ %32, %30 ], [ %236, %226 ], [ %217, %213 ], [ %76, %52 ], [ 1, %15 ], [ -1, %95 ], [ %155, %150 ], [ %221, %218 ], [ %103, %101 ], [ -1, %11 ], [ %115, %104 ], [ %149, %144 ]
  ret i32 %238
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @advance_state(ptr noundef %0) local_unnamed_addr #11 !prof !195 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 15), align 8, !tbaa !196
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !197

4:                                                ; preds = %1
  tail call void %2() #27
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 12), align 8, !tbaa !198
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !197

8:                                                ; preds = %5
  %9 = tail call ptr %6() #27
  %10 = tail call i32 @state_transition(ptr noundef %0, ptr noundef %9) #27
  br label %11

11:                                               ; preds = %8, %5
  %12 = tail call i32 @state_transition(ptr noundef %0, ptr noundef null) #27
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 14), align 8, !tbaa !199
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !197

15:                                               ; preds = %11
  %16 = tail call ptr %13() #27
  %17 = tail call i32 @state_transition(ptr noundef %0, ptr noundef %16) #27
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 16), align 8, !tbaa !200
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !197

21:                                               ; preds = %18
  tail call void %19() #27
  br label %22

22:                                               ; preds = %21, %18
  ret void
}

declare i32 @state_transition(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @sched_setup_bb_reg_pressure_info(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !94 {
  %3 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1650, ptr noundef nonnull @.str.3) #27
  br label %6

6:                                                ; preds = %2, %5
  %7 = load i32, ptr @current_nr_blocks, align 4, !tbaa !110
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %9, %30
  %15 = phi ptr [ %32, %30 ], [ %12, %9 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !201
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %15, align 8
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -7
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  tail call fastcc void @setup_ref_regs(ptr noundef %29)
  br label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %14, !llvm.loop !203

34:                                               ; preds = %30, %14, %9, %6
  %35 = tail call ptr @df_get_live_in(ptr noundef %0) #27
  %36 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %46, %40 ]
  %42 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !110
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %44
  store i32 0, ptr %45, align 4, !tbaa !110
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %39
  br i1 %47, label %48, label %40, !llvm.loop !204

48:                                               ; preds = %40, %34
  %49 = load ptr, ptr @curr_reg_live, align 8, !tbaa !95
  tail call void @bitmap_clear(ptr noundef %49) #27
  %50 = load ptr, ptr %35, align 8, !tbaa !205
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr @bitmap_zero_bits, ptr %50
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !207
  %55 = shl i32 %54, 7
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !209
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = or disjoint i32 %55, %59
  br label %61

61:                                               ; preds = %132, %48
  %62 = phi i64 [ %57, %48 ], [ %133, %132 ]
  %63 = phi i32 [ 0, %48 ], [ %118, %132 ]
  %64 = phi i32 [ %60, %48 ], [ %134, %132 ]
  %65 = phi ptr [ %52, %48 ], [ %120, %132 ]
  %66 = icmp eq i64 %62, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %95, %61
  %68 = phi i64 [ %62, %61 ], [ %100, %95 ]
  %69 = phi i32 [ %63, %61 ], [ %96, %95 ]
  %70 = phi i32 [ %64, %61 ], [ %97, %95 ]
  %71 = phi ptr [ %65, %61 ], [ %88, %95 ]
  %72 = and i64 %68, 1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %67, %74
  %75 = phi i32 [ %78, %74 ], [ %70, %67 ]
  %76 = phi i64 [ %77, %74 ], [ %68, %67 ]
  %77 = lshr exact i64 %76, 1
  %78 = add i32 %75, 1
  %79 = and i64 %76, 2
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %74, label %116, !llvm.loop !210

81:                                               ; preds = %61
  %82 = add i32 %64, 63
  %83 = and i32 %82, -64
  %84 = add i32 %63, 1
  br label %85

85:                                               ; preds = %112, %81
  %86 = phi i64 [ %62, %81 ], [ %107, %112 ]
  %87 = phi i32 [ %83, %81 ], [ %115, %112 ]
  %88 = phi ptr [ %65, %81 ], [ %110, %112 ]
  %89 = phi i32 [ %84, %81 ], [ 0, %112 ]
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %106, label %91

91:                                               ; preds = %85
  %92 = add i32 %87, 128
  %93 = shl i32 %89, 6
  %94 = sub i32 %92, %93
  br label %95

95:                                               ; preds = %91, %102
  %96 = phi i32 [ %104, %102 ], [ %89, %91 ]
  %97 = phi i32 [ %103, %102 ], [ %87, %91 ]
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds %struct.bitmap_element_def, ptr %88, i64 0, i32 3, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !209
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %67

102:                                              ; preds = %95
  %103 = add i32 %97, 64
  %104 = add i32 %96, 1
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %95, !llvm.loop !211

106:                                              ; preds = %102, %85
  %107 = phi i64 [ %86, %85 ], [ %100, %102 ]
  %108 = phi i32 [ %87, %85 ], [ %94, %102 ]
  %109 = phi i32 [ %89, %85 ], [ 2, %102 ]
  %110 = load ptr, ptr %88, align 8, !tbaa !212
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %110, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !207
  %115 = shl i32 %114, 7
  br label %85, !llvm.loop !213

116:                                              ; preds = %106, %74, %67
  %117 = phi i64 [ %68, %67 ], [ %77, %74 ], [ %107, %106 ]
  %118 = phi i32 [ %69, %67 ], [ %69, %74 ], [ %109, %106 ]
  %119 = phi i32 [ %70, %67 ], [ %78, %74 ], [ %108, %106 ]
  %120 = phi ptr [ %71, %67 ], [ %71, %74 ], [ %110, %106 ]
  %121 = phi i1 [ false, %67 ], [ false, %74 ], [ true, %106 ]
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = icmp eq ptr %0, null
  br label %135

124:                                              ; preds = %116
  %125 = load i32, ptr @current_nr_blocks, align 4, !tbaa !110
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr @region_ref_regs, align 8, !tbaa !95
  %129 = tail call i32 @bitmap_bit_p(ptr noundef %128, i32 noundef %119) #27
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127, %124
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %119, i8 noundef zeroext 1)
  br label %132

132:                                              ; preds = %131, %127
  %133 = lshr i64 %117, 1
  %134 = add i32 %119, 1
  br label %61, !llvm.loop !214

135:                                              ; preds = %122, %164
  %136 = phi i32 [ %165, %164 ], [ 0, %122 ]
  br i1 %123, label %137, label %138

137:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 687, ptr noundef nonnull @.str.3) #27
  br label %138

138:                                              ; preds = %137, %135
  %139 = load ptr, ptr %0, align 8, !tbaa !95
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %139, align 8, !tbaa !215
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi i32 [ %142, %141 ], [ 0, %138 ]
  %145 = icmp eq i32 %144, %136
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = zext i32 %136 to i64
  %148 = getelementptr inbounds %struct.VEC_edge_base, ptr %139, i64 0, i32 2, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !95
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi ptr [ %149, %146 ], [ null, %143 ]
  br i1 %145, label %177, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.edge_def, ptr %151, i64 0, i32 7
  %154 = load i32, ptr %153, align 8, !tbaa !217
  %155 = and i32 %154, 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  br i1 %140, label %160, label %158

158:                                              ; preds = %157
  %159 = load i32, ptr %139, align 8, !tbaa !215
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi i32 [ %159, %158 ], [ 0, %157 ]
  %162 = icmp ult i32 %136, %161
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %164

164:                                              ; preds = %163, %160
  %165 = add i32 %136, 1
  br label %135, !llvm.loop !219

166:                                              ; preds = %152, %173
  %167 = phi i32 [ %176, %173 ], [ 0, %152 ]
  %168 = phi i32 [ %174, %173 ], [ 0, %152 ]
  %169 = tail call ptr @df_get_live_in(ptr noundef nonnull %0) #27
  %170 = tail call i32 @bitmap_bit_p(ptr noundef %169, i32 noundef %167) #27
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %167, i8 noundef zeroext 1)
  br label %173

173:                                              ; preds = %166, %172
  %174 = add nuw nsw i32 %168, 1
  %175 = icmp eq i32 %168, 0
  %176 = select i1 %175, i32 1, i32 -1
  br i1 %175, label %166, label %177, !llvm.loop !220

177:                                              ; preds = %150, %173
  tail call fastcc void @setup_insn_max_reg_pressure(ptr noundef %1, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @setup_insn_max_reg_pressure(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !94 {
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %15, %7 ]
  %9 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !110
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !110
  %14 = getelementptr inbounds [27 x i32], ptr @saved_reg_pressure, i64 0, i64 %11
  store i32 %13, ptr %14, align 4, !tbaa !110
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %7, !llvm.loop !221

17:                                               ; preds = %7, %2
  %18 = load ptr, ptr @saved_reg_live, align 8, !tbaa !95
  %19 = load ptr, ptr @curr_reg_live, align 8, !tbaa !95
  tail call void @bitmap_copy(ptr noundef %18, ptr noundef %19) #27
  %20 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = zext nneg i32 %20 to i64
  br label %31

24:                                               ; preds = %31, %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = icmp eq ptr %26, null
  br i1 %27, label %106, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %30 = icmp ne i8 %1, 0
  br label %41

31:                                               ; preds = %22, %31
  %32 = phi i64 [ 0, %22 ], [ %39, %31 ]
  %33 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !110
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !110
  %38 = getelementptr inbounds [27 x i32], ptr @setup_insn_max_reg_pressure.max_reg_pressure, i64 0, i64 %35
  store i32 %37, ptr %38, align 4, !tbaa !110
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %23
  br i1 %40, label %24, label %31, !llvm.loop !222

41:                                               ; preds = %28, %102
  %42 = phi ptr [ %26, %28 ], [ %104, %102 ]
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !106
  %46 = load ptr, ptr %29, align 8, !tbaa !106
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %41
  %49 = load i32, ptr %42, align 8
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -11
  %52 = icmp ult i32 %51, -3
  br i1 %52, label %102, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53, %73
  %57 = phi i64 [ %75, %73 ], [ 0, %53 ]
  %58 = phi i8 [ %74, %73 ], [ 1, %53 ]
  %59 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %57
  %60 = load i32, ptr %59, align 4, !tbaa !110
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [27 x i32], ptr @setup_insn_max_reg_pressure.max_reg_pressure, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !110
  %64 = load ptr, ptr @h_i_d, align 8
  %65 = load i32, ptr %43, align 8, !tbaa !106
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %64, i64 0, i32 2, i64 %66, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !183
  %69 = getelementptr inbounds i32, ptr %68, i64 %57
  %70 = load i32, ptr %69, align 4, !tbaa !110
  %71 = icmp eq i32 %70, %63
  br i1 %71, label %73, label %72

72:                                               ; preds = %56
  store i32 %63, ptr %69, align 4, !tbaa !110
  br label %73

73:                                               ; preds = %56, %72
  %74 = phi i8 [ 0, %72 ], [ %58, %56 ]
  %75 = add nuw nsw i64 %57, 1
  %76 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %56, label %79, !llvm.loop !223

79:                                               ; preds = %73, %53
  %80 = phi i8 [ 1, %53 ], [ %74, %73 ]
  %81 = icmp ne i8 %80, 0
  %82 = select i1 %30, i1 %81, i1 false
  br i1 %82, label %106, label %83

83:                                               ; preds = %79
  tail call fastcc void @update_register_pressure(ptr noundef nonnull %42)
  %84 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = zext nneg i32 %84 to i64
  br label %88

88:                                               ; preds = %86, %99
  %89 = phi i64 [ 0, %86 ], [ %100, %99 ]
  %90 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !110
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [27 x i32], ptr @setup_insn_max_reg_pressure.max_reg_pressure, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !110
  %95 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %92
  %96 = load i32, ptr %95, align 4, !tbaa !110
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 %96, ptr %93, align 4, !tbaa !110
  br label %99

99:                                               ; preds = %88, %98
  %100 = add nuw nsw i64 %89, 1
  %101 = icmp eq i64 %100, %87
  br i1 %101, label %102, label %88, !llvm.loop !224

102:                                              ; preds = %99, %83, %48
  %103 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !106
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %41, !llvm.loop !225

106:                                              ; preds = %41, %79, %102, %24
  %107 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = zext nneg i32 %107 to i64
  br label %111

111:                                              ; preds = %109, %111
  %112 = phi i64 [ 0, %109 ], [ %119, %111 ]
  %113 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !110
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [27 x i32], ptr @saved_reg_pressure, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !110
  %118 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %115
  store i32 %117, ptr %118, align 4, !tbaa !110
  %119 = add nuw nsw i64 %112, 1
  %120 = icmp eq i64 %119, %110
  br i1 %120, label %121, label %111, !llvm.loop !226

121:                                              ; preds = %111, %106
  %122 = load ptr, ptr @curr_reg_live, align 8, !tbaa !95
  %123 = load ptr, ptr @saved_reg_live, align 8, !tbaa !95
  tail call void @bitmap_copy(ptr noundef %122, ptr noundef %123) #27
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @concat_note_lists(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #12 !prof !227 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4, !prof !228

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %10, %7 ], [ %0, %4 ]
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !229

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %13, align 8, !tbaa !106
  %14 = load ptr, ptr %1, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %8, ptr %15, align 8, !tbaa !106
  br label %16

16:                                               ; preds = %4, %12
  store ptr %0, ptr %1, align 8, !tbaa !95
  br label %17

17:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_notes(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #11 !prof !230 {
  store ptr null, ptr @note_list, align 8, !tbaa !95
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %9, !prof !231

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %46

9:                                                ; preds = %4, %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %46, label %13, !prof !232

13:                                               ; preds = %9, %44
  %14 = phi ptr [ %16, %44 ], [ %0, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %44, !prof !233

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %22 = load i32, ptr %21, align 8, !tbaa !106
  switch i32 %22, label %27 [
    i32 10, label %44
    i32 6, label %23
  ], !prof !234

23:                                               ; preds = %20
  %24 = icmp eq ptr %14, %1
  br i1 %24, label %27, label %25, !prof !235

25:                                               ; preds = %23
  tail call void @remove_insn(ptr noundef nonnull %14) #27
  %26 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 6) #27
  tail call void @add_reg_note(ptr noundef %16, i32 noundef 26, ptr noundef %26) #27
  br label %34

27:                                               ; preds = %23, %20
  tail call void @remove_insn(ptr noundef nonnull %14) #27
  %28 = load ptr, ptr @note_list, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !106
  store ptr null, ptr %15, align 8, !tbaa !106
  %30 = icmp eq ptr %28, null
  br i1 %30, label %33, label %31, !prof !236

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %14, ptr %32, align 8, !tbaa !106
  br label %33

33:                                               ; preds = %31, %27
  store ptr %14, ptr @note_list, align 8, !tbaa !95
  br label %34

34:                                               ; preds = %33, %25
  %35 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %36 = getelementptr inbounds %struct.common_sched_info_def, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !133
  %38 = icmp ne i32 %37, 4
  %39 = icmp eq ptr %14, %1
  %40 = and i1 %39, %38
  %41 = icmp eq ptr %14, %0
  %42 = or i1 %41, %40
  br i1 %42, label %43, label %44, !prof !237

43:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1887, ptr noundef nonnull @.str.3) #27
  br label %44

44:                                               ; preds = %34, %43, %20, %13
  %45 = icmp eq ptr %16, %11
  br i1 %45, label %46, label %13, !prof !238, !llvm.loop !239

46:                                               ; preds = %44, %9, %4
  ret void
}

declare void @remove_insn(ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_ebb_head_tail(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #13 !prof !240 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = load ptr, ptr %6, align 8, !tbaa !241
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !201
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = load ptr, ptr %11, align 8, !tbaa !241
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !201
  %15 = load i32, ptr %7, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %21, !prof !242

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi ptr [ %20, %18 ], [ %7, %4 ]
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %35, label %24, !prof !243

24:                                               ; preds = %21, %31
  %25 = phi ptr [ %33, %31 ], [ %22, %21 ]
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %35 [
    i16 13, label %31
    i16 7, label %28
  ], !prof !244

28:                                               ; preds = %24
  %29 = and i32 %26, 67108864
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24, %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = icmp eq ptr %33, %9
  br i1 %34, label %35, label %24, !prof !245, !llvm.loop !246

35:                                               ; preds = %31, %24, %28, %21
  %36 = phi ptr [ %22, %21 ], [ %33, %31 ], [ %25, %24 ], [ %25, %28 ]
  store ptr %36, ptr %2, align 8, !tbaa !95
  %37 = icmp eq ptr %0, %1
  br i1 %37, label %45, label %38, !prof !247

38:                                               ; preds = %35
  %39 = load i32, ptr %12, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 12
  br i1 %41, label %42, label %45, !prof !248

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !106
  br label %45

45:                                               ; preds = %35, %38, %42
  %46 = phi ptr [ %44, %42 ], [ %12, %38 ], [ %36, %35 ]
  %47 = icmp eq ptr %46, %14
  br i1 %47, label %59, label %48, !prof !243

48:                                               ; preds = %45, %55
  %49 = phi ptr [ %57, %55 ], [ %14, %45 ]
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %59 [
    i16 13, label %55
    i16 7, label %52
  ], !prof !249

52:                                               ; preds = %48
  %53 = and i32 %50, 67108864
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48, %52
  %56 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !106
  %58 = icmp eq ptr %46, %57
  br i1 %58, label %59, label %48, !prof !250, !llvm.loop !251

59:                                               ; preds = %55, %48, %52, %45
  %60 = phi ptr [ %14, %45 ], [ %57, %55 ], [ %49, %48 ], [ %49, %52 ]
  store ptr %60, ptr %3, align 8, !tbaa !95
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @no_real_insns_p(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !252 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %17, label %6, !prof !253

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %17 [
    i16 13, label %13
    i16 12, label %13
    i16 7, label %10
  ], !prof !254

10:                                               ; preds = %6
  %11 = and i32 %8, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6, %6, %10
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %6, !prof !255, !llvm.loop !256

17:                                               ; preds = %6, %13, %10, %2
  %18 = phi i32 [ 1, %2 ], [ 0, %6 ], [ 1, %13 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @restore_other_notes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !257 {
  %3 = load ptr, ptr @note_list, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5, !prof !258

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7, !prof !259

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  br label %33

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = load ptr, ptr %12, align 8, !tbaa !241
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 12
  br i1 %16, label %17, label %20, !prof !260

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi ptr [ %19, %17 ], [ %13, %10 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 13
  br i1 %24, label %25, label %29, !prof !261

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %27 = load i32, ptr %26, align 8, !tbaa !106
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %30, label %29, !prof !261

29:                                               ; preds = %25, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5132, ptr noundef nonnull @.str.3) #27
  br label %30

30:                                               ; preds = %25, %29
  %31 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  br label %33

33:                                               ; preds = %30, %7
  %34 = phi ptr [ %0, %7 ], [ %32, %30 ]
  %35 = phi ptr [ %9, %7 ], [ %1, %30 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39, !prof !262

39:                                               ; preds = %33, %39
  %40 = phi ptr [ %44, %39 ], [ %37, %33 ]
  %41 = phi ptr [ %40, %39 ], [ %3, %33 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  store ptr %35, ptr %42, align 8, !tbaa !106
  %43 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !106
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %39, !prof !263, !llvm.loop !264

46:                                               ; preds = %39, %33
  %47 = phi ptr [ %3, %33 ], [ %40, %39 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  store ptr %35, ptr %49, align 8, !tbaa !106
  %50 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  store ptr %51, ptr %48, align 8, !tbaa !106
  %52 = load ptr, ptr %50, align 8, !tbaa !106
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %47, ptr %53, align 8, !tbaa !106
  %54 = load ptr, ptr @note_list, align 8, !tbaa !95
  store ptr %54, ptr %50, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %34, ptr %55, align 8, !tbaa !106
  %56 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !106
  %58 = icmp eq ptr %57, %35
  br i1 %58, label %63, label %59, !prof !259

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !106
  %62 = getelementptr inbounds %struct.rtl_bb_info, ptr %61, i64 0, i32 1
  store ptr %54, ptr %62, align 8, !tbaa !201
  br label %63

63:                                               ; preds = %46, %59, %2
  %64 = phi ptr [ %0, %2 ], [ %47, %59 ], [ %47, %46 ]
  ret ptr %64
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @bb_note(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !265 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %11, !prof !260

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ %4, %1 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 13
  br i1 %15, label %16, label %20, !prof !261

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %18 = load i32, ptr %17, align 8, !tbaa !106
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %21, label %20, !prof !261

20:                                               ; preds = %16, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5132, ptr noundef nonnull @.str.3) #27
  br label %21

21:                                               ; preds = %16, %20
  ret ptr %12
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @reemit_notes(ptr noundef %0) local_unnamed_addr #11 !prof !266 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5, !prof !267

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %21, %18 ], [ %3, %1 ]
  %7 = phi ptr [ %19, %18 ], [ %0, %1 ]
  %8 = load i32, ptr %6, align 8
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 1703936
  br i1 %10, label %11, label %18, !prof !268

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !106
  %16 = trunc i64 %15 to i32
  %17 = tail call ptr @emit_note_before(i32 noundef %16, ptr noundef %7) #27
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %6) #27
  br label %18

18:                                               ; preds = %5, %11
  %19 = phi ptr [ %17, %11 ], [ %7, %5 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !prof !269, !llvm.loop !270

23:                                               ; preds = %18, %1
  ret void
}

declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @max_issue(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 !prof !94 {
  %5 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !168
  %7 = load i32, ptr @dfa_lookahead, align 4, !tbaa !110
  %8 = icmp slt i32 %7, 1
  %9 = icmp slt i32 %1, 0
  %10 = or i1 %9, %8
  %11 = icmp slt i32 %6, %1
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2458, ptr noundef nonnull @.str.3) #27
  br label %14

14:                                               ; preds = %4, %13
  %15 = load i32, ptr @cached_first_cycle_multipass_dfa_lookahead, align 4, !tbaa !110
  %16 = load i32, ptr @dfa_lookahead, align 4, !tbaa !110
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  store i32 %16, ptr @cached_first_cycle_multipass_dfa_lookahead, align 4, !tbaa !110
  store i32 100, ptr @max_lookahead_tries, align 4, !tbaa !110
  %19 = load i32, ptr @issue_rate, align 4, !tbaa !110
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %18 ]
  %23 = phi i32 [ %24, %21 ], [ 100, %18 ]
  %24 = mul nsw i32 %23, %16
  %25 = add nuw nsw i32 %22, 1
  %26 = icmp eq i32 %25, %19
  br i1 %26, label %27, label %21, !llvm.loop !271

27:                                               ; preds = %21
  store i32 %24, ptr @max_lookahead_tries, align 4, !tbaa !110
  br label %28

28:                                               ; preds = %18, %27, %14
  %29 = icmp sgt i32 %6, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %28
  %31 = load i32, ptr @issue_rate, align 4, !tbaa !110
  %32 = load i32, ptr @cycle_issued_insns, align 4, !tbaa !110
  %33 = sub nsw i32 %31, %32
  %34 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %35 = zext nneg i32 %6 to i64
  br label %36

36:                                               ; preds = %30, %48
  %37 = phi i64 [ 0, %30 ], [ %51, %48 ]
  %38 = phi i32 [ %33, %30 ], [ %50, %48 ]
  %39 = phi i32 [ 0, %30 ], [ %49, %48 ]
  %40 = getelementptr inbounds i8, ptr %34, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !106
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = icmp sgt i32 %38, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = add nsw i32 %38, -1
  %47 = add nsw i32 %39, 1
  br label %48

48:                                               ; preds = %36, %45
  %49 = phi i32 [ %39, %36 ], [ %47, %45 ]
  %50 = phi i32 [ %38, %36 ], [ %46, %45 ]
  %51 = add nuw nsw i64 %37, 1
  %52 = icmp eq i64 %51, %35
  br i1 %52, label %53, label %36, !llvm.loop !272

53:                                               ; preds = %48, %43, %28
  %54 = phi i32 [ 0, %28 ], [ %49, %48 ], [ %39, %43 ]
  %55 = load ptr, ptr @choice_stack, align 8, !tbaa !95
  %56 = getelementptr inbounds %struct.choice_entry, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !273
  %58 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %2, i64 %58, i1 false)
  %59 = load i32, ptr @dfa_lookahead, align 4, !tbaa !110
  %60 = getelementptr inbounds %struct.choice_entry, ptr %55, i64 0, i32 1
  store i32 %59, ptr %60, align 4, !tbaa !275
  %61 = getelementptr inbounds %struct.choice_entry, ptr %55, i64 0, i32 2
  store i32 0, ptr %61, align 8, !tbaa !276
  %62 = icmp sgt i32 %6, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %65 = zext nneg i32 %6 to i64
  br label %71

66:                                               ; preds = %71, %53
  %67 = phi i32 [ 0, %53 ], [ %78, %71 ]
  %68 = icmp eq i32 %1, 0
  %69 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 2
  %70 = sext i32 %1 to i64
  br label %81

71:                                               ; preds = %63, %71
  %72 = phi i64 [ 0, %63 ], [ %79, %71 ]
  %73 = phi i32 [ 0, %63 ], [ %78, %71 ]
  %74 = getelementptr inbounds i8, ptr %64, i64 %72
  %75 = load i8, ptr %74, align 1, !tbaa !106
  %76 = icmp eq i8 %75, 0
  %77 = zext i1 %76 to i32
  %78 = add nuw nsw i32 %73, %77
  %79 = add nuw nsw i64 %72, 1
  %80 = icmp eq i64 %79, %65
  br i1 %80, label %66, label %71, !llvm.loop !277

81:                                               ; preds = %66, %209
  %82 = phi i32 [ %210, %209 ], [ 0, %66 ]
  %83 = phi i32 [ %215, %209 ], [ 0, %66 ]
  %84 = phi i32 [ %212, %209 ], [ 0, %66 ]
  %85 = phi ptr [ %213, %209 ], [ %55, %66 ]
  %86 = phi i32 [ %214, %209 ], [ undef, %66 ]
  %87 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !275
  %89 = icmp ne i32 %88, 0
  %90 = icmp slt i32 %83, %6
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %147, label %92

92:                                               ; preds = %81
  %93 = icmp sgt i32 %83, %6
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2517, ptr noundef nonnull @.str.3) #27
  br label %95

95:                                               ; preds = %92, %94
  %96 = load ptr, ptr @choice_stack, align 8, !tbaa !95
  %97 = icmp eq ptr %85, %96
  br i1 %97, label %216, label %98

98:                                               ; preds = %95
  %99 = sext i32 %82 to i64
  %100 = ptrtoint ptr %85 to i64
  %101 = ptrtoint ptr %96 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 24
  %104 = icmp sgt i64 %103, %99
  br i1 %104, label %105, label %136

105:                                              ; preds = %98
  br i1 %68, label %119, label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr @ready_try, align 8, !tbaa !95
  br label %108

108:                                              ; preds = %106, %108
  %109 = phi i64 [ %70, %106 ], [ %110, %108 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds i8, ptr %107, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !106
  %113 = icmp eq i8 %112, 0
  %114 = and i64 %110, 4294967295
  %115 = icmp ne i64 %114, 0
  %116 = and i1 %115, %113
  br i1 %116, label %108, label %117, !llvm.loop !278

117:                                              ; preds = %108
  %118 = trunc i64 %110 to i32
  br label %119

119:                                              ; preds = %117, %105
  %120 = phi i32 [ %86, %105 ], [ %118, %117 ]
  br i1 %68, label %127, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %123 = sext i32 %120 to i64
  %124 = getelementptr inbounds i8, ptr %122, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !106
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %121, %119
  %128 = trunc i64 %103 to i32
  %129 = getelementptr inbounds %struct.choice_entry, ptr %96, i64 1
  %130 = load i32, ptr %129, align 8, !tbaa !279
  store i32 %130, ptr %3, align 4, !tbaa !110
  %131 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !276
  %133 = icmp eq i32 %132, %54
  %134 = icmp eq i32 %67, %128
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %216, label %136

136:                                              ; preds = %121, %127, %98
  %137 = phi i32 [ %82, %98 ], [ %128, %127 ], [ %82, %121 ]
  %138 = phi i32 [ %86, %98 ], [ %120, %127 ], [ %120, %121 ]
  %139 = load i32, ptr %85, align 8, !tbaa !279
  %140 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  store i8 0, ptr %142, align 1, !tbaa !106
  %143 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 -1
  %144 = getelementptr %struct.choice_entry, ptr %85, i64 -1, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !273
  %146 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %145, i64 %146, i1 false)
  br label %209

147:                                              ; preds = %81
  %148 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %149 = sext i32 %83 to i64
  %150 = getelementptr inbounds i8, ptr %148, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !106
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %209

153:                                              ; preds = %147
  %154 = add nsw i32 %84, 1
  %155 = load i32, ptr @max_lookahead_tries, align 4, !tbaa !110
  %156 = icmp slt i32 %84, %155
  br i1 %156, label %157, label %216

157:                                              ; preds = %153
  %158 = load i32, ptr %5, align 8, !tbaa !168
  %159 = icmp ne i32 %158, 0
  %160 = icmp sgt i32 %158, %83
  %161 = and i1 %159, %160
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %163

163:                                              ; preds = %157, %162
  %164 = load ptr, ptr %0, align 8, !tbaa !170
  %165 = load i32, ptr %69, align 4, !tbaa !171
  %166 = sub nsw i32 %165, %83
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %164, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !95
  %170 = tail call i32 @state_transition(ptr noundef %2, ptr noundef %169) #27
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %209

172:                                              ; preds = %163
  %173 = tail call i32 @state_dead_lock_p(ptr noundef %2) #27
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load i32, ptr %169, align 8
  %177 = and i32 %176, 268435456
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %175
  %180 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %181 = getelementptr inbounds %struct.haifa_sched_info, ptr %180, i64 0, i32 7
  %182 = load ptr, ptr %181, align 8, !tbaa !280
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = tail call zeroext i8 %182(ptr noundef nonnull %169) #27
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184, %179
  %188 = load i32, ptr %87, align 4, !tbaa !275
  %189 = add nsw i32 %188, -1
  br label %190

190:                                              ; preds = %184, %175, %172, %187
  %191 = phi i32 [ %189, %187 ], [ 0, %172 ], [ 0, %175 ], [ 0, %184 ]
  store i32 %191, ptr %87, align 4, !tbaa !275
  %192 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 0, i32 2
  %193 = load i32, ptr %192, align 8, !tbaa !276
  %194 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !273
  %196 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  %197 = tail call i32 @bcmp(ptr %195, ptr %2, i64 %196)
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = add nsw i32 %193, %199
  %201 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 1
  %202 = load i32, ptr @dfa_lookahead, align 4, !tbaa !110
  %203 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 1, i32 1
  store i32 %202, ptr %203, align 4, !tbaa !275
  store i32 %83, ptr %201, align 8, !tbaa !279
  %204 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 1, i32 2
  store i32 %200, ptr %204, align 8, !tbaa !276
  %205 = getelementptr inbounds %struct.choice_entry, ptr %85, i64 1, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !273
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %206, ptr align 1 %2, i64 %196, i1 false)
  %207 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %208 = getelementptr inbounds i8, ptr %207, i64 %149
  store i8 1, ptr %208, align 1, !tbaa !106
  br label %209

209:                                              ; preds = %147, %190, %163, %136
  %210 = phi i32 [ %137, %136 ], [ %82, %147 ], [ %82, %190 ], [ %82, %163 ]
  %211 = phi i32 [ %139, %136 ], [ %83, %147 ], [ -1, %190 ], [ %83, %163 ]
  %212 = phi i32 [ %84, %136 ], [ %84, %147 ], [ %154, %190 ], [ %154, %163 ]
  %213 = phi ptr [ %143, %136 ], [ %85, %147 ], [ %201, %190 ], [ %85, %163 ]
  %214 = phi i32 [ %138, %136 ], [ %86, %147 ], [ %200, %190 ], [ %86, %163 ]
  %215 = add nsw i32 %211, 1
  br label %81, !llvm.loop !281

216:                                              ; preds = %153, %127, %95
  %217 = phi i32 [ %82, %95 ], [ %128, %127 ], [ %82, %153 ]
  %218 = load ptr, ptr @choice_stack, align 8, !tbaa !95
  %219 = getelementptr inbounds %struct.choice_entry, ptr %218, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !273
  %221 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %220, i64 %221, i1 false)
  ret i32 %217
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare i32 @state_dead_lock_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @schedule_block(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = alloca %struct.sched_scan_info_def, align 8
  %3 = alloca %struct.bitmap_head_def, align 8
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._sd_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._dep, align 8
  %10 = alloca %struct._dep, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  %13 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct.haifa_sched_info, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !193
  %16 = getelementptr inbounds %struct.haifa_sched_info, ptr %13, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !282
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, ptr %19, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2780, ptr noundef nonnull @.str.3) #27
  br label %29

29:                                               ; preds = %23, %1, %28
  store i1 false, ptr @haifa_recovery_bb_recently_added_p, align 1
  %30 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !95
  tail call fastcc void @dump_new_block_header(i32 noundef 0, ptr noundef %33, ptr noundef %19, ptr noundef %21)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load ptr, ptr @curr_state, align 8, !tbaa !95
  tail call void @state_reset(ptr noundef %35) #27
  %36 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  %38 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  %39 = alloca i8, i64 %38, align 16
  %40 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !285
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %44 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  tail call void %40(ptr noundef %43, i32 noundef %44, i32 noundef %36) #27
  br label %45

45:                                               ; preds = %42, %34
  store ptr %15, ptr @last_scheduled_insn, align 8, !tbaa !95
  %46 = load i32, ptr %15, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %56 [
    i16 13, label %51
    i16 7, label %48
  ]

48:                                               ; preds = %45
  %49 = and i32 %46, 67108864
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %48
  %52 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !106
  %54 = load ptr, ptr %0, align 8, !tbaa !95
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %48, %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2806, ptr noundef nonnull @.str.3) #27
  br label %57

57:                                               ; preds = %51, %56
  store i32 0, ptr @q_ptr, align 4, !tbaa !110
  store i32 0, ptr @q_size, align 4, !tbaa !110
  %58 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 3
  %62 = alloca i8, i64 %61, align 16
  store ptr %62, ptr @insn_queue, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %62, i8 0, i64 %61, i1 false)
  store i32 -1, ptr @clock_var, align 4, !tbaa !110
  %63 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %64 = load ptr, ptr %63, align 8, !tbaa !286
  call void %64() #27
  %65 = load i32, ptr @reload_completed, align 4, !tbaa !110
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %129

67:                                               ; preds = %57
  %68 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %69 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  %70 = sub nsw i32 %68, %69
  %71 = load ptr, ptr @compiler_params, align 8, !tbaa !95
  %72 = getelementptr inbounds %struct.param_info, ptr %71, i64 96, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !287
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %129

75:                                               ; preds = %67
  call void @ready_sort(ptr noundef nonnull @ready)
  %76 = load ptr, ptr @compiler_params, align 8, !tbaa !95
  %77 = getelementptr inbounds %struct.param_info, ptr %76, i64 96, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !287
  %79 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  %80 = add nsw i32 %79, %78
  %81 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %75, %98
  %84 = phi i32 [ %100, %98 ], [ %81, %75 ]
  %85 = phi i32 [ %99, %98 ], [ %80, %75 ]
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %88

88:                                               ; preds = %83, %87
  %89 = load ptr, ptr @ready, align 8, !tbaa !170
  %90 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %91 = sub nsw i32 %90, %85
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %89, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !95
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 268435456
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %88
  %99 = add nsw i32 %85, 1
  %100 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %83, label %102, !llvm.loop !289

102:                                              ; preds = %98, %88, %75
  %103 = phi i32 [ %80, %75 ], [ %99, %98 ], [ %85, %88 ]
  %104 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %108 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.4, i32 noundef %108)
  %110 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.5, i32 noundef %103)
  br label %112

112:                                              ; preds = %106, %102
  %113 = call zeroext i8 @dbg_cnt(i32 noundef 29) #27
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %117 = call ptr @next_nonnote_insn(ptr noundef %116) #27
  br label %118

118:                                              ; preds = %112, %115
  %119 = phi ptr [ %117, %115 ], [ null, %112 ]
  %120 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %121 = icmp slt i32 %103, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118, %126
  %123 = call fastcc ptr @ready_remove(i32 noundef %103)
  %124 = icmp eq ptr %123, %119
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  call fastcc void @queue_insn(ptr noundef %123, i32 noundef 1)
  br label %126

126:                                              ; preds = %125, %122
  %127 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %128 = icmp slt i32 %103, %127
  br i1 %128, label %122, label %129, !llvm.loop !290

129:                                              ; preds = %126, %118, %67, %57
  %130 = load ptr, ptr @bb_header, align 8, !tbaa !95
  %131 = icmp eq ptr %130, null
  br i1 %131, label %189, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %0, align 8, !tbaa !95
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !291
  %136 = load ptr, ptr @cfun, align 8, !tbaa !95
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !293
  %139 = getelementptr inbounds %struct.control_flow_graph, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !295
  %141 = icmp eq ptr %135, %140
  br i1 %141, label %187, label %142

142:                                              ; preds = %132, %172
  %143 = phi ptr [ %180, %172 ], [ %135, %132 ]
  %144 = load ptr, ptr @bb_header, align 8, !tbaa !95
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !297
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %144, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !95
  %150 = icmp eq ptr %149, null
  br i1 %150, label %187, label %151

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1, i32 0, i32 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !106
  %154 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !106
  %156 = load i32, ptr %149, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 12
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1, i32 0, i32 0, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !106
  br label %162

162:                                              ; preds = %159, %151
  %163 = phi ptr [ %161, %159 ], [ %149, %151 ]
  %164 = load i32, ptr %163, align 8
  %165 = and i32 %164, 65535
  %166 = icmp eq i32 %165, 13
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 1
  %169 = load i32, ptr %168, align 8, !tbaa !106
  %170 = icmp eq i32 %169, 10
  br i1 %170, label %172, label %171

171:                                              ; preds = %167, %162
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4941, ptr noundef nonnull @.str.3) #27
  br label %172

172:                                              ; preds = %171, %167
  %173 = load ptr, ptr @bb_header, align 8, !tbaa !95
  %174 = load i32, ptr %145, align 8, !tbaa !297
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds ptr, ptr %173, i64 %175
  store ptr null, ptr %176, align 8, !tbaa !95
  store ptr %149, ptr %154, align 8, !tbaa !106
  %177 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %155, ptr %177, align 8, !tbaa !106
  %178 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %163, ptr %178, align 8, !tbaa !106
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !291
  %181 = load ptr, ptr @cfun, align 8, !tbaa !95
  %182 = getelementptr inbounds %struct.function, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !293
  %184 = getelementptr inbounds %struct.control_flow_graph, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !295
  %186 = icmp eq ptr %180, %185
  br i1 %186, label %187, label %142, !llvm.loop !298

187:                                              ; preds = %172, %142, %132
  %188 = load ptr, ptr @bb_header, align 8, !tbaa !95
  call void @free(ptr noundef %188)
  store ptr null, ptr @bb_header, align 8, !tbaa !95
  br label %189

189:                                              ; preds = %129, %187
  store i32 -1, ptr @last_clock_var, align 4, !tbaa !110
  store i32 1, ptr %12, align 4, !tbaa !110
  %190 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %191 = getelementptr inbounds %struct.haifa_sched_info, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !299
  %193 = call i32 %192() #27
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %1413, label %195

195:                                              ; preds = %189
  %196 = icmp slt i32 %58, 1
  br label %197

197:                                              ; preds = %352, %195
  %198 = phi i32 [ 0, %195 ], [ %353, %352 ]
  %199 = load i32, ptr @clock_var, align 4, !tbaa !110
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr @clock_var, align 4, !tbaa !110
  call fastcc void @advance_one_cycle()
  %201 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %202 = add nsw i32 %201, 1
  %203 = and i32 %202, %58
  store i32 %203, ptr @q_ptr, align 4, !tbaa !110
  %204 = call zeroext i8 @dbg_cnt(i32 noundef 29) #27
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %197
  %207 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %208 = call ptr @next_nonnote_insn(ptr noundef %207) #27
  %209 = icmp eq ptr %208, null
  br i1 %209, label %218, label %210

210:                                              ; preds = %206, %215
  %211 = phi ptr [ %216, %215 ], [ %208, %206 ]
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 7
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = call ptr @next_nonnote_insn(ptr noundef nonnull %211) #27
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %210, !llvm.loop !300

218:                                              ; preds = %215, %210, %206, %197
  %219 = phi ptr [ null, %197 ], [ null, %206 ], [ %211, %210 ], [ null, %215 ]
  %220 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %221 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %220, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !106
  %225 = icmp eq ptr %224, null
  br i1 %225, label %275, label %226

226:                                              ; preds = %218, %271
  %227 = phi ptr [ %273, %271 ], [ %224, %218 ]
  %228 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !106
  %230 = load i32, ptr @q_size, align 4, !tbaa !110
  %231 = add nsw i32 %230, -1
  store i32 %231, ptr @q_size, align 4, !tbaa !110
  %232 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %234, label %241

234:                                              ; preds = %226
  %235 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %236 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %237 = getelementptr inbounds %struct.haifa_sched_info, ptr %236, i64 0, i32 5
  %238 = load ptr, ptr %237, align 8, !tbaa !301
  %239 = call ptr %238(ptr noundef %229, i32 noundef 0) #27
  %240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %235, ptr noundef nonnull @.str.27, ptr noundef %239)
  br label %241

241:                                              ; preds = %234, %226
  %242 = load i32, ptr @reload_completed, align 4, !tbaa !110
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %265

244:                                              ; preds = %241
  %245 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %246 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  %247 = sub nsw i32 %245, %246
  %248 = load ptr, ptr @compiler_params, align 8, !tbaa !95
  %249 = getelementptr inbounds %struct.param_info, ptr %248, i64 96, i32 1
  %250 = load i32, ptr %249, align 8, !tbaa !287
  %251 = icmp sgt i32 %247, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %244
  %253 = load i32, ptr %229, align 8
  %254 = and i32 %253, 268435456
  %255 = icmp ne i32 %254, 0
  %256 = icmp eq ptr %229, %219
  %257 = select i1 %255, i1 true, i1 %256
  br i1 %257, label %265, label %258

258:                                              ; preds = %252
  %259 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %263 = call i64 @fwrite(ptr nonnull @.str.28, i64 28, i64 1, ptr %262)
  br label %264

264:                                              ; preds = %261, %258
  call fastcc void @queue_insn(ptr noundef nonnull %229, i32 noundef 1)
  br label %271

265:                                              ; preds = %252, %244, %241
  call fastcc void @ready_add(ptr noundef %229, i8 noundef zeroext 0)
  %266 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %267 = icmp sgt i32 %266, 1
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %270 = call i64 @fwrite(ptr nonnull @.str.29, i64 31, i64 1, ptr %269)
  br label %271

271:                                              ; preds = %268, %265, %264
  %272 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !106
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %226, !llvm.loop !302

275:                                              ; preds = %271, %218
  %276 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %277 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds ptr, ptr %276, i64 %278
  call void @free_INSN_LIST_list(ptr noundef %279) #27
  %280 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %337

282:                                              ; preds = %275
  br i1 %196, label %330, label %283

283:                                              ; preds = %282, %325
  %284 = phi i32 [ %326, %325 ], [ 1, %282 ]
  %285 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %286 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %287 = add nsw i32 %286, %284
  %288 = and i32 %287, %58
  %289 = zext nneg i32 %288 to i64
  %290 = getelementptr inbounds ptr, ptr %285, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !95
  %292 = icmp eq ptr %291, null
  br i1 %292, label %325, label %293

293:                                              ; preds = %283, %314
  %294 = phi ptr [ %316, %314 ], [ %291, %283 ]
  %295 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !106
  %297 = load i32, ptr @q_size, align 4, !tbaa !110
  %298 = add nsw i32 %297, -1
  store i32 %298, ptr @q_size, align 4, !tbaa !110
  %299 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %300 = icmp sgt i32 %299, 1
  br i1 %300, label %301, label %308

301:                                              ; preds = %293
  %302 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %303 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %304 = getelementptr inbounds %struct.haifa_sched_info, ptr %303, i64 0, i32 5
  %305 = load ptr, ptr %304, align 8, !tbaa !301
  %306 = call ptr %305(ptr noundef %296, i32 noundef 0) #27
  %307 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef nonnull @.str.27, ptr noundef %306)
  br label %308

308:                                              ; preds = %301, %293
  call fastcc void @ready_add(ptr noundef %296, i8 noundef zeroext 0)
  %309 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.30, i32 noundef %284)
  br label %314

314:                                              ; preds = %311, %308
  %315 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1, i32 0, i32 0, i64 1
  %316 = load ptr, ptr %315, align 8, !tbaa !106
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %293, !llvm.loop !303

318:                                              ; preds = %314
  %319 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %320 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %321 = add nsw i32 %320, %284
  %322 = and i32 %321, %58
  %323 = zext nneg i32 %322 to i64
  %324 = getelementptr inbounds ptr, ptr %319, i64 %323
  call void @free_INSN_LIST_list(ptr noundef %324) #27
  call fastcc void @advance_one_cycle()
  br label %330

325:                                              ; preds = %283
  call fastcc void @advance_one_cycle()
  %326 = add nuw i32 %284, 1
  %327 = icmp eq i32 %284, %58
  br i1 %327, label %328, label %283, !llvm.loop !304

328:                                              ; preds = %325
  %329 = add i32 %58, 1
  br label %330

330:                                              ; preds = %328, %282, %318
  %331 = phi i32 [ %284, %318 ], [ 1, %282 ], [ %329, %328 ]
  %332 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %333 = add nsw i32 %332, %331
  %334 = and i32 %333, %58
  store i32 %334, ptr @q_ptr, align 4, !tbaa !110
  %335 = load i32, ptr @clock_var, align 4, !tbaa !110
  %336 = add nsw i32 %335, %331
  store i32 %336, ptr @clock_var, align 4, !tbaa !110
  br label %337

337:                                              ; preds = %275, %330
  %338 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2893, ptr noundef nonnull @.str.3) #27
  br label %341

341:                                              ; preds = %337, %340
  %342 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %343 = icmp sgt i32 %342, 1
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %346 = call i64 @fwrite(ptr nonnull @.str.6, i64 38, i64 1, ptr %345)
  call fastcc void @debug_ready_list()
  br label %347

347:                                              ; preds = %344, %341
  %348 = load i32, ptr @clock_var, align 4, !tbaa !110
  %349 = sub i32 %199, %348
  %350 = add i32 %349, %198
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %347, %446
  %353 = phi i32 [ %350, %347 ], [ %447, %446 ]
  br label %197, !llvm.loop !305

354:                                              ; preds = %347
  %355 = load i32, ptr %12, align 4, !tbaa !110
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %354
  call void @ready_sort(ptr noundef nonnull @ready)
  %358 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %359 = icmp sgt i32 %358, 1
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %362 = call i64 @fwrite(ptr nonnull @.str.7, i64 34, i64 1, ptr %361)
  call fastcc void @debug_ready_list()
  br label %363

363:                                              ; preds = %357, %360, %354
  %364 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %453, label %366

366:                                              ; preds = %363
  %367 = icmp sgt i32 %364, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %366
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %369

369:                                              ; preds = %366, %368
  %370 = load ptr, ptr @ready, align 8, !tbaa !170
  %371 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds ptr, ptr %370, i64 %372
  %374 = load ptr, ptr %373, align 8, !tbaa !95
  %375 = load i32, ptr %374, align 8
  %376 = and i32 %375, 65535
  %377 = icmp eq i32 %376, 7
  br i1 %377, label %378, label %453

378:                                              ; preds = %369
  %379 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %380 = call zeroext i8 @control_flow_insn_p(ptr noundef %379) #27
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %400, label %382

382:                                              ; preds = %378
  %383 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %384 = getelementptr inbounds %struct.haifa_sched_info, ptr %383, i64 0, i32 16
  %385 = load ptr, ptr %384, align 8, !tbaa !306
  %386 = load ptr, ptr %0, align 8, !tbaa !95
  %387 = call ptr %385(ptr noundef %386, ptr noundef null) #27
  store ptr %387, ptr %0, align 8, !tbaa !95
  %388 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %397, label %390

390:                                              ; preds = %382
  %391 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %392 = call ptr @next_real_insn(ptr noundef %391) #27
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %395

394:                                              ; preds = %390
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2930, ptr noundef nonnull @.str.3) #27
  br label %395

395:                                              ; preds = %390, %394
  %396 = load ptr, ptr %0, align 8, !tbaa !95
  call fastcc void @dump_new_block_header(i32 noundef 1, ptr noundef %396, ptr noundef %392, ptr noundef %21)
  br label %397

397:                                              ; preds = %395, %382
  %398 = load ptr, ptr %0, align 8, !tbaa !95
  %399 = call ptr @bb_note(ptr noundef %398)
  store ptr %399, ptr @last_scheduled_insn, align 8, !tbaa !95
  br label %400

400:                                              ; preds = %397, %378
  %401 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %442, label %403

403:                                              ; preds = %400, %439
  %404 = phi i32 [ %440, %439 ], [ %401, %400 ]
  %405 = phi i32 [ %432, %439 ], [ %350, %400 ]
  %406 = icmp sgt i32 %404, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %408

408:                                              ; preds = %403, %407
  %409 = load ptr, ptr @ready, align 8, !tbaa !170
  %410 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds ptr, ptr %409, i64 %411
  %413 = load ptr, ptr %412, align 8, !tbaa !95
  %414 = load i32, ptr %413, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 7
  br i1 %416, label %417, label %442

417:                                              ; preds = %408
  %418 = call fastcc ptr @ready_remove_first()
  %419 = load i32, ptr %418, align 8
  %420 = and i32 %419, 65535
  %421 = icmp eq i32 %420, 7
  br i1 %421, label %423, label %422

422:                                              ; preds = %417
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2940, ptr noundef nonnull @.str.3) #27
  br label %423

423:                                              ; preds = %417, %422
  %424 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %425 = getelementptr inbounds %struct.haifa_sched_info, ptr %424, i64 0, i32 15
  %426 = load ptr, ptr %425, align 8, !tbaa !307
  %427 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  call void %426(ptr noundef nonnull %418, ptr noundef %427) #27
  %428 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %429 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %430 = getelementptr inbounds %struct.haifa_sched_info, ptr %429, i64 0, i32 9
  %431 = load ptr, ptr %430, align 8, !tbaa !282
  call fastcc void @move_insn(ptr noundef nonnull %418, ptr noundef %428, ptr noundef %431)
  store ptr %418, ptr @last_scheduled_insn, align 8, !tbaa !95
  %432 = call fastcc i32 @schedule_insn(ptr noundef nonnull %418), !range !308
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %423
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2947, ptr noundef nonnull @.str.3) #27
  br label %435

435:                                              ; preds = %423, %434
  %436 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  call void @ready_sort(ptr noundef nonnull @ready)
  br label %439

439:                                              ; preds = %438, %435
  %440 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %403, !llvm.loop !309

442:                                              ; preds = %408, %439, %400
  %443 = phi i32 [ %350, %400 ], [ %405, %408 ], [ %432, %439 ]
  %444 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %453

446:                                              ; preds = %1407, %442
  %447 = phi i32 [ %443, %442 ], [ %1409, %1407 ]
  %448 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %449 = getelementptr inbounds %struct.haifa_sched_info, ptr %448, i64 0, i32 2
  %450 = load ptr, ptr %449, align 8, !tbaa !299
  %451 = call i32 %450() #27
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %1413, label %352

453:                                              ; preds = %442, %369, %363
  %454 = phi i32 [ %443, %442 ], [ %350, %369 ], [ %350, %363 ]
  %455 = load i32, ptr %12, align 4, !tbaa !110
  %456 = icmp ne i32 %455, 0
  %457 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8
  %458 = icmp ne ptr %457, null
  %459 = select i1 %456, i1 %458, i1 false
  br i1 %459, label %460, label %494

460:                                              ; preds = %453
  %461 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %475, label %463

463:                                              ; preds = %460
  %464 = icmp sgt i32 %461, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %463
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %466

466:                                              ; preds = %463, %465
  %467 = load ptr, ptr @ready, align 8, !tbaa !170
  %468 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds ptr, ptr %467, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !95
  %472 = load i32, ptr %471, align 8
  %473 = and i32 %472, 268435456
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %494

475:                                              ; preds = %466, %460
  %476 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8, !tbaa !310
  %477 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %478 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %479 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %482, label %481

481:                                              ; preds = %475
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #27
  br label %482

482:                                              ; preds = %475, %481
  %483 = load ptr, ptr @ready, align 8, !tbaa !170
  %484 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds ptr, ptr %483, i64 %485
  %487 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %488 = sext i32 %487 to i64
  %489 = sub nsw i64 0, %488
  %490 = getelementptr inbounds ptr, ptr %486, i64 %489
  %491 = getelementptr inbounds ptr, ptr %490, i64 1
  %492 = load i32, ptr @clock_var, align 4, !tbaa !110
  %493 = call i32 %476(ptr noundef %477, i32 noundef %478, ptr noundef nonnull %491, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %492) #27
  br label %496

494:                                              ; preds = %466, %453
  %495 = load i32, ptr @issue_rate, align 4, !tbaa !110
  br label %496

496:                                              ; preds = %494, %482
  %497 = phi i32 [ %493, %482 ], [ %495, %494 ]
  store i32 0, ptr @cycle_issued_insns, align 4, !tbaa !110
  br label %498

498:                                              ; preds = %1407, %496
  %499 = phi i32 [ %454, %496 ], [ %1409, %1407 ]
  %500 = phi i32 [ %497, %496 ], [ %1410, %1407 ]
  %501 = phi i32 [ 1, %496 ], [ %1411, %1407 ]
  %502 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %503 = icmp sgt i32 %502, 1
  br i1 %503, label %504, label %540

504:                                              ; preds = %498
  %505 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %506 = load i32, ptr @clock_var, align 4, !tbaa !110
  %507 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %505, ptr noundef nonnull @.str.8, i32 noundef %506)
  call fastcc void @debug_ready_list()
  %508 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %540, label %510

510:                                              ; preds = %504
  %511 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %512 = call i64 @fwrite(ptr nonnull @.str.39, i64 3, i64 1, ptr %511)
  %513 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %514 = icmp sgt i32 %513, 0
  br i1 %514, label %515, label %537

515:                                              ; preds = %510, %524
  %516 = phi i64 [ %533, %524 ], [ 0, %510 ]
  %517 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !110
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !110
  %522 = icmp sgt i32 %521, -1
  br i1 %522, label %524, label %523

523:                                              ; preds = %515
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 787, ptr noundef nonnull @.str.3) #27
  br label %524

524:                                              ; preds = %523, %515
  %525 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %526 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %519
  %527 = load ptr, ptr %526, align 8, !tbaa !95
  %528 = load i32, ptr %520, align 4, !tbaa !110
  %529 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %519
  %530 = load i32, ptr %529, align 4, !tbaa !110
  %531 = sub nsw i32 %528, %530
  %532 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %525, ptr noundef nonnull @.str.40, ptr noundef %527, i32 noundef %528, i32 noundef %531)
  %533 = add nuw nsw i64 %516, 1
  %534 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %535 = sext i32 %534 to i64
  %536 = icmp slt i64 %533, %535
  br i1 %536, label %515, label %537, !llvm.loop !311

537:                                              ; preds = %524, %510
  %538 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %539 = call i32 @fputc(i32 10, ptr %538)
  br label %540

540:                                              ; preds = %504, %537, %498
  %541 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %542 = icmp eq i32 %541, 0
  %543 = icmp ne i32 %500, 0
  %544 = select i1 %542, i1 %543, i1 false
  %545 = load i32, ptr @reload_completed, align 4
  %546 = icmp ne i32 %545, 0
  %547 = select i1 %544, i1 %546, i1 false
  br i1 %547, label %548, label %560

548:                                              ; preds = %540
  %549 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %550 = icmp sgt i32 %549, 5
  br i1 %550, label %551, label %554

551:                                              ; preds = %548
  %552 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %553 = call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %552)
  br label %554

554:                                              ; preds = %551, %548
  %555 = load ptr, ptr @curr_state, align 8, !tbaa !95
  %556 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %39, ptr align 1 %555, i64 %556, i1 false)
  %557 = call fastcc i32 @early_queue_to_ready(ptr noundef nonnull %39)
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %554
  call void @ready_sort(ptr noundef nonnull @ready)
  br label %560

560:                                              ; preds = %554, %559, %540
  %561 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %562 = icmp ne i32 %561, 0
  %563 = select i1 %562, i1 %543, i1 false
  br i1 %563, label %564, label %1407

564:                                              ; preds = %560
  %565 = load ptr, ptr @curr_state, align 8, !tbaa !95
  %566 = call i32 @state_dead_lock_p(ptr noundef %565) #27
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %1407

568:                                              ; preds = %564
  %569 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %570 = getelementptr inbounds %struct.haifa_sched_info, ptr %569, i64 0, i32 2
  %571 = load ptr, ptr %570, align 8, !tbaa !299
  %572 = call i32 %571() #27
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %1407, label %574

574:                                              ; preds = %568
  %575 = load i32, ptr %12, align 4, !tbaa !110
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %868, label %577

577:                                              ; preds = %574
  %578 = call zeroext i8 @dbg_cnt(i32 noundef 29) #27
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %580, label %591

580:                                              ; preds = %577
  %581 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %582 = call ptr @next_nonnote_insn(ptr noundef %581) #27
  %583 = load ptr, ptr @h_i_d, align 8
  %584 = getelementptr inbounds %struct.rtx_def, ptr %582, i64 0, i32 1
  %585 = load i32, ptr %584, align 8, !tbaa !106
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %583, i64 0, i32 2, i64 %586, i32 4
  %588 = load i32, ptr %587, align 8, !tbaa !178
  %589 = icmp eq i32 %588, -1
  br i1 %589, label %590, label %856

590:                                              ; preds = %580
  call fastcc void @ready_remove_insn(ptr noundef %582)
  br label %856

591:                                              ; preds = %577
  %592 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 17), align 8, !tbaa !312
  %593 = icmp eq ptr %592, null
  br i1 %593, label %596, label %594

594:                                              ; preds = %591
  %595 = call i32 %592() #27
  br label %596

596:                                              ; preds = %594, %591
  %597 = phi i32 [ %595, %594 ], [ 0, %591 ]
  %598 = icmp slt i32 %597, 1
  br i1 %598, label %625, label %599

599:                                              ; preds = %596
  %600 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %601 = icmp sgt i32 %600, 0
  br i1 %601, label %603, label %602

602:                                              ; preds = %599
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %603

603:                                              ; preds = %602, %599
  %604 = load ptr, ptr @ready, align 8, !tbaa !170
  %605 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds ptr, ptr %604, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !95
  %609 = load i32, ptr %608, align 8
  %610 = and i32 %609, 268435456
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %625

612:                                              ; preds = %603
  %613 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %612
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %616

616:                                              ; preds = %615, %612
  %617 = load ptr, ptr @ready, align 8, !tbaa !170
  %618 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds ptr, ptr %617, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !95
  %622 = load i32, ptr %621, align 8
  %623 = and i32 %622, 65535
  %624 = icmp eq i32 %623, 7
  br i1 %624, label %625, label %627

625:                                              ; preds = %616, %603, %596
  %626 = call fastcc ptr @ready_remove_first()
  br label %856

627:                                              ; preds = %616
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  store i32 0, ptr %11, align 4, !tbaa !110
  %628 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %629 = icmp sgt i32 %628, 0
  br i1 %629, label %631, label %630

630:                                              ; preds = %627
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %631

631:                                              ; preds = %630, %627
  %632 = load ptr, ptr @ready, align 8, !tbaa !170
  %633 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds ptr, ptr %632, i64 %634
  %636 = load ptr, ptr %635, align 8, !tbaa !95
  %637 = getelementptr inbounds %struct.rtx_def, ptr %636, i64 0, i32 1
  %638 = getelementptr inbounds %struct.rtx_def, ptr %636, i64 1, i32 1
  %639 = load i32, ptr %638, align 8, !tbaa !106
  %640 = icmp slt i32 %639, 0
  br i1 %640, label %641, label %643

641:                                              ; preds = %631
  %642 = call fastcc ptr @ready_remove_first()
  br label %853

643:                                              ; preds = %631
  %644 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %645 = icmp eq ptr %644, null
  br i1 %645, label %704, label %646

646:                                              ; preds = %643
  %647 = getelementptr inbounds %struct.spec_info_def, ptr %644, i64 0, i32 4
  %648 = load i32, ptr %647, align 8, !tbaa !313
  %649 = and i32 %648, 6
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %704, label %651

651:                                              ; preds = %646
  %652 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %653 = icmp sgt i32 %652, 0
  br i1 %653, label %654, label %704

654:                                              ; preds = %651, %697
  %655 = phi i32 [ %699, %697 ], [ 1, %651 ]
  %656 = phi i32 [ %698, %697 ], [ 1, %651 ]
  %657 = phi i32 [ %701, %697 ], [ 0, %651 ]
  %658 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %659 = icmp sgt i32 %658, %657
  br i1 %659, label %661, label %660

660:                                              ; preds = %654
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %661

661:                                              ; preds = %660, %654
  %662 = load ptr, ptr @ready, align 8, !tbaa !170
  %663 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %664 = sub nsw i32 %663, %657
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds ptr, ptr %662, i64 %665
  %667 = load ptr, ptr %666, align 8, !tbaa !95
  %668 = load ptr, ptr @h_i_d, align 8
  %669 = getelementptr inbounds %struct.rtx_def, ptr %667, i64 0, i32 1
  %670 = load i32, ptr %669, align 8, !tbaa !106
  %671 = zext i32 %670 to i64
  %672 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %668, i64 0, i32 2, i64 %671, i32 8
  %673 = load i32, ptr %672, align 8, !tbaa !190
  %674 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %675 = getelementptr inbounds %struct.spec_info_def, ptr %674, i64 0, i32 4
  %676 = load i32, ptr %675, align 8, !tbaa !313
  %677 = and i32 %676, 2
  %678 = icmp ne i32 %677, 0
  %679 = and i32 %673, 4095
  %680 = icmp eq i32 %679, 0
  %681 = select i1 %678, i1 %680, i1 false
  br i1 %681, label %682, label %687

682:                                              ; preds = %661
  %683 = and i32 %676, 4
  %684 = icmp ne i32 %683, 0
  %685 = icmp ne i32 %655, 0
  %686 = select i1 %684, i1 %685, i1 false
  br i1 %686, label %687, label %697

687:                                              ; preds = %682, %661
  %688 = phi i32 [ 0, %682 ], [ %656, %661 ]
  %689 = and i32 %676, 4
  %690 = icmp ne i32 %689, 0
  %691 = and i32 %673, 16773120
  %692 = icmp eq i32 %691, 0
  %693 = select i1 %690, i1 %692, i1 false
  br i1 %693, label %694, label %697

694:                                              ; preds = %687
  %695 = icmp ne i32 %688, 0
  %696 = select i1 %678, i1 %695, i1 false
  br label %697

697:                                              ; preds = %682, %694, %687
  %698 = phi i32 [ %688, %687 ], [ %688, %694 ], [ 0, %682 ]
  %699 = phi i32 [ %655, %687 ], [ 0, %694 ], [ %655, %682 ]
  %700 = phi i1 [ true, %687 ], [ %696, %694 ], [ false, %682 ]
  %701 = add nuw nsw i32 %657, 1
  %702 = icmp slt i32 %701, %652
  %703 = select i1 %700, i1 %702, i1 false
  br i1 %703, label %654, label %704, !llvm.loop !315

704:                                              ; preds = %697, %651, %646, %643
  %705 = phi i32 [ 1, %646 ], [ 1, %643 ], [ 1, %651 ], [ %698, %697 ]
  %706 = phi i32 [ 1, %646 ], [ 1, %643 ], [ 1, %651 ], [ %699, %697 ]
  %707 = load ptr, ptr @h_i_d, align 8
  %708 = load i32, ptr %637, align 8, !tbaa !106
  %709 = zext i32 %708 to i64
  %710 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %707, i64 0, i32 2, i64 %709, i32 8
  %711 = load i32, ptr %710, align 8, !tbaa !190
  %712 = and i32 %711, 16777215
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %731, label %714

714:                                              ; preds = %704
  %715 = icmp ne i32 %705, 0
  %716 = and i32 %711, 4095
  %717 = icmp eq i32 %716, 0
  %718 = or i1 %715, %717
  br i1 %718, label %719, label %730

719:                                              ; preds = %714
  %720 = icmp ne i32 %706, 0
  %721 = and i32 %711, 16773120
  %722 = icmp eq i32 %721, 0
  %723 = or i1 %720, %722
  br i1 %723, label %724, label %730

724:                                              ; preds = %719
  %725 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 31), align 8, !tbaa !316
  %726 = icmp eq ptr %725, null
  br i1 %726, label %731, label %727

727:                                              ; preds = %724
  %728 = call zeroext i8 %725(ptr noundef %636) #27
  %729 = icmp eq i8 %728, 0
  br i1 %729, label %730, label %731

730:                                              ; preds = %727, %719, %714
  call fastcc void @change_queue_index(ptr noundef %636, i32 noundef 1)
  br label %853

731:                                              ; preds = %727, %724, %704
  %732 = load ptr, ptr @ready_try, align 8, !tbaa !95
  store i8 0, ptr %732, align 1, !tbaa !106
  %733 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %734 = icmp sgt i32 %733, 1
  br i1 %734, label %735, label %738

735:                                              ; preds = %731
  %736 = icmp eq i32 %705, 0
  %737 = icmp ne i32 %706, 0
  br label %741

738:                                              ; preds = %770, %731
  %739 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %740 = icmp sgt i32 %739, 1
  br i1 %740, label %779, label %812

741:                                              ; preds = %735, %770
  %742 = phi i64 [ 1, %735 ], [ %775, %770 ]
  %743 = load ptr, ptr @ready, align 8, !tbaa !170
  %744 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %745 = trunc i64 %742 to i32
  %746 = sub nsw i32 %744, %745
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds ptr, ptr %743, i64 %747
  %749 = load ptr, ptr %748, align 8, !tbaa !95
  br i1 %736, label %750, label %760

750:                                              ; preds = %741
  %751 = load ptr, ptr @h_i_d, align 8
  %752 = getelementptr inbounds %struct.rtx_def, ptr %749, i64 0, i32 1
  %753 = load i32, ptr %752, align 8, !tbaa !106
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %751, i64 0, i32 2, i64 %754, i32 8
  %756 = load i32, ptr %755, align 8, !tbaa !190
  %757 = and i32 %756, 4095
  %758 = icmp ne i32 %757, 0
  %759 = select i1 %758, i1 true, i1 %737
  br i1 %759, label %770, label %761

760:                                              ; preds = %741
  br i1 %737, label %770, label %761

761:                                              ; preds = %750, %760
  %762 = load ptr, ptr @h_i_d, align 8
  %763 = getelementptr inbounds %struct.rtx_def, ptr %749, i64 0, i32 1
  %764 = load i32, ptr %763, align 8, !tbaa !106
  %765 = zext i32 %764 to i64
  %766 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %762, i64 0, i32 2, i64 %765, i32 8
  %767 = load i32, ptr %766, align 8, !tbaa !190
  %768 = and i32 %767, 16773120
  %769 = icmp ne i32 %768, 0
  br label %770

770:                                              ; preds = %750, %761, %760
  %771 = phi i1 [ %758, %750 ], [ false, %760 ], [ %769, %761 ]
  %772 = zext i1 %771 to i8
  %773 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %774 = getelementptr inbounds i8, ptr %773, i64 %742
  store i8 %772, ptr %774, align 1, !tbaa !106
  %775 = add nuw nsw i64 %742, 1
  %776 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %777 = sext i32 %776 to i64
  %778 = icmp slt i64 %775, %777
  br i1 %778, label %741, label %738, !llvm.loop !317

779:                                              ; preds = %738, %807
  %780 = phi i64 [ %808, %807 ], [ 1, %738 ]
  %781 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %782 = getelementptr inbounds i8, ptr %781, i64 %780
  %783 = load i8, ptr %782, align 1, !tbaa !106
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %785, label %807

785:                                              ; preds = %779
  %786 = load ptr, ptr @ready, align 8, !tbaa !170
  %787 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %788 = trunc i64 %780 to i32
  %789 = sub nsw i32 %787, %788
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds ptr, ptr %786, i64 %790
  %792 = load ptr, ptr %791, align 8, !tbaa !95
  %793 = getelementptr inbounds %struct.rtx_def, ptr %792, i64 1, i32 1
  %794 = load i32, ptr %793, align 8, !tbaa !106
  %795 = icmp slt i32 %794, 0
  br i1 %795, label %802, label %796

796:                                              ; preds = %785
  %797 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 18), align 8, !tbaa !318
  %798 = icmp eq ptr %797, null
  br i1 %798, label %802, label %799

799:                                              ; preds = %796
  %800 = call i32 %797(ptr noundef %792) #27
  %801 = icmp eq i32 %800, 0
  br label %802

802:                                              ; preds = %799, %796, %785
  %803 = phi i1 [ true, %785 ], [ false, %796 ], [ %801, %799 ]
  %804 = zext i1 %803 to i8
  %805 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %806 = getelementptr inbounds i8, ptr %805, i64 %780
  store i8 %804, ptr %806, align 1, !tbaa !106
  br label %807

807:                                              ; preds = %802, %779
  %808 = add nuw nsw i64 %780, 1
  %809 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %810 = sext i32 %809 to i64
  %811 = icmp slt i64 %808, %810
  br i1 %811, label %779, label %812, !llvm.loop !319

812:                                              ; preds = %807, %738
  %813 = load ptr, ptr @curr_state, align 8, !tbaa !95
  %814 = call i32 @max_issue(ptr noundef nonnull @ready, i32 noundef 1, ptr noundef %813, ptr noundef nonnull %11)
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %816, label %827

816:                                              ; preds = %812
  %817 = call fastcc ptr @ready_remove_first()
  %818 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %819 = icmp sgt i32 %818, 3
  br i1 %819, label %820, label %853

820:                                              ; preds = %816
  %821 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %822 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %823 = getelementptr inbounds %struct.haifa_sched_info, ptr %822, i64 0, i32 5
  %824 = load ptr, ptr %823, align 8, !tbaa !301
  %825 = call ptr %824(ptr noundef %817, i32 noundef 0) #27
  %826 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %821, ptr noundef nonnull @.str.44, ptr noundef %825)
  br label %853

827:                                              ; preds = %812
  %828 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %829 = icmp sgt i32 %828, 3
  br i1 %829, label %830, label %850

830:                                              ; preds = %827
  %831 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %832 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %833 = getelementptr inbounds %struct.haifa_sched_info, ptr %832, i64 0, i32 5
  %834 = load ptr, ptr %833, align 8, !tbaa !301
  %835 = load i32, ptr %11, align 4, !tbaa !110
  %836 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %837 = icmp ne i32 %836, 0
  %838 = icmp sgt i32 %836, %835
  %839 = and i1 %837, %838
  br i1 %839, label %841, label %840

840:                                              ; preds = %830
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %841

841:                                              ; preds = %840, %830
  %842 = load ptr, ptr @ready, align 8, !tbaa !170
  %843 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %844 = sub nsw i32 %843, %835
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds ptr, ptr %842, i64 %845
  %847 = load ptr, ptr %846, align 8, !tbaa !95
  %848 = call ptr %834(ptr noundef %847, i32 noundef 0) #27
  %849 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %831, ptr noundef nonnull @.str.45, ptr noundef %848)
  br label %850

850:                                              ; preds = %841, %827
  %851 = load i32, ptr %11, align 4, !tbaa !110
  %852 = call fastcc ptr @ready_remove(i32 noundef %851)
  br label %853

853:                                              ; preds = %850, %820, %816, %730, %641
  %854 = phi ptr [ %642, %641 ], [ %817, %820 ], [ %817, %816 ], [ %852, %850 ], [ null, %730 ]
  %855 = phi i32 [ 0, %641 ], [ 0, %820 ], [ 0, %816 ], [ 0, %850 ], [ 1, %730 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  br label %856

856:                                              ; preds = %580, %590, %625, %853
  %857 = phi ptr [ %582, %590 ], [ null, %580 ], [ %626, %625 ], [ %854, %853 ]
  %858 = phi i32 [ 0, %590 ], [ -1, %580 ], [ 0, %625 ], [ %855, %853 ]
  %859 = icmp slt i32 %858, 0
  br i1 %859, label %865, label %860

860:                                              ; preds = %856
  %861 = icmp eq i32 %858, 0
  br i1 %861, label %862, label %865, !llvm.loop !320

862:                                              ; preds = %860
  %863 = icmp eq ptr %857, null
  br i1 %863, label %864, label %865

864:                                              ; preds = %862
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3020, ptr noundef nonnull @.str.3) #27
  br label %865

865:                                              ; preds = %864, %862, %860, %856
  %866 = phi i1 [ false, %856 ], [ false, %860 ], [ true, %862 ], [ true, %864 ]
  %867 = phi i32 [ 13, %856 ], [ 14, %860 ], [ 0, %862 ], [ 0, %864 ]
  br i1 %866, label %870, label %1407

868:                                              ; preds = %574
  %869 = call fastcc ptr @ready_remove_first()
  br label %870

870:                                              ; preds = %865, %868
  %871 = phi ptr [ %869, %868 ], [ %857, %865 ]
  %872 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %873 = icmp eq i8 %872, 0
  br i1 %873, label %884, label %874

874:                                              ; preds = %870
  %875 = load ptr, ptr @h_i_d, align 8
  %876 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1
  %877 = load i32, ptr %876, align 8, !tbaa !106
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %875, i64 0, i32 2, i64 %878, i32 2
  %880 = load i32, ptr %879, align 8, !tbaa !189
  %881 = load i32, ptr @clock_var, align 4, !tbaa !110
  %882 = icmp sgt i32 %880, %881
  br i1 %882, label %883, label %884

883:                                              ; preds = %874
  call fastcc void @ready_add(ptr noundef %871, i8 noundef zeroext 1)
  br label %1407

884:                                              ; preds = %874, %870
  %885 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !321
  %886 = icmp eq ptr %885, null
  br i1 %886, label %895, label %887

887:                                              ; preds = %884
  %888 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %889 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %890 = load i32, ptr @last_clock_var, align 4, !tbaa !110
  %891 = load i32, ptr @clock_var, align 4, !tbaa !110
  %892 = call i32 %885(ptr noundef %888, i32 noundef %889, ptr noundef %871, i32 noundef %890, i32 noundef %891, ptr noundef nonnull %12) #27
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %895, label %894

894:                                              ; preds = %887
  call fastcc void @ready_add(ptr noundef %871, i8 noundef zeroext 1)
  br label %1407

895:                                              ; preds = %887, %884
  store i32 1, ptr %12, align 4, !tbaa !110
  %896 = load ptr, ptr @curr_state, align 8, !tbaa !95
  %897 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %39, ptr align 1 %896, i64 %897, i1 false)
  %898 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 1, i32 1
  %899 = load i32, ptr %898, align 8, !tbaa !106
  %900 = icmp slt i32 %899, 0
  br i1 %900, label %901, label %905

901:                                              ; preds = %895
  %902 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 1
  %903 = load ptr, ptr %902, align 8, !tbaa !106
  %904 = call i32 @recog(ptr noundef %903, ptr noundef %871, ptr noundef null) #27
  store i32 %904, ptr %898, align 8, !tbaa !106
  br label %905

905:                                              ; preds = %895, %901
  %906 = load i32, ptr %898, align 8, !tbaa !106
  %907 = icmp slt i32 %906, 0
  br i1 %907, label %908, label %922

908:                                              ; preds = %905
  %909 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 1
  %910 = load ptr, ptr %909, align 8, !tbaa !106
  %911 = load i32, ptr %910, align 8
  %912 = and i32 %911, 65535
  %913 = icmp eq i32 %912, 16
  br i1 %913, label %917, label %914

914:                                              ; preds = %908
  %915 = call i32 @asm_noperands(ptr noundef nonnull %910) #27
  %916 = icmp sgt i32 %915, -1
  br label %917

917:                                              ; preds = %914, %908
  %918 = phi i1 [ true, %908 ], [ %916, %914 ]
  %919 = icmp eq i32 %501, 0
  %920 = select i1 %919, i1 %918, i1 false
  %921 = zext i1 %920 to i32
  br label %930

922:                                              ; preds = %905
  %923 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %924 = icmp eq i8 %923, 0
  br i1 %924, label %925, label %930

925:                                              ; preds = %922
  %926 = call i32 @state_transition(ptr noundef nonnull %39, ptr noundef %871) #27
  %927 = icmp slt i32 %926, 0
  br i1 %927, label %930, label %928

928:                                              ; preds = %925
  %929 = call i32 @llvm.umax.i32(i32 %926, i32 1)
  br label %930

930:                                              ; preds = %925, %922, %917, %928
  %931 = phi i32 [ %929, %928 ], [ %921, %917 ], [ 0, %922 ], [ 0, %925 ]
  %932 = phi i1 [ false, %928 ], [ %918, %917 ], [ false, %922 ], [ false, %925 ]
  %933 = icmp sgt i32 %931, 0
  br i1 %933, label %934, label %940

934:                                              ; preds = %930
  call fastcc void @queue_insn(ptr noundef %871, i32 noundef %931)
  %935 = load i32, ptr %871, align 8
  %936 = and i32 %935, 268435456
  %937 = icmp eq i32 %936, 0
  %938 = select i1 %937, i32 14, i32 13
  %939 = select i1 %937, i32 %499, i32 %931
  br label %1407, !llvm.loop !320

940:                                              ; preds = %930
  %941 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %942 = getelementptr inbounds %struct.haifa_sched_info, ptr %941, i64 0, i32 1
  %943 = load ptr, ptr %942, align 8, !tbaa !322
  %944 = icmp eq ptr %943, null
  br i1 %944, label %957, label %945

945:                                              ; preds = %940
  %946 = call i32 %943(ptr noundef %871) #27
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %948, label %957

948:                                              ; preds = %945
  %949 = load ptr, ptr @h_i_d, align 8
  %950 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1
  %951 = load i32, ptr %950, align 8, !tbaa !106
  %952 = zext i32 %951 to i64
  %953 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %949, i64 0, i32 2, i64 %952, i32 8
  %954 = load i32, ptr %953, align 8, !tbaa !190
  %955 = and i32 %954, -150994944
  %956 = or disjoint i32 %955, 134217728
  store i32 %956, ptr %953, align 8, !tbaa !190
  br label %1407, !llvm.loop !320

957:                                              ; preds = %945, %940
  %958 = load ptr, ptr @h_i_d, align 8
  %959 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1
  %960 = load i32, ptr %959, align 8, !tbaa !106
  %961 = zext i32 %960 to i64
  %962 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %958, i64 0, i32 2, i64 %961, i32 8
  %963 = load i32, ptr %962, align 8, !tbaa !190
  %964 = and i32 %963, 16777215
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %1209, label %966

966:                                              ; preds = %957
  %967 = and i32 %963, 258111
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %992, label %969

969:                                              ; preds = %966
  %970 = and i32 %963, 63
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %975, label %972

972:                                              ; preds = %969
  %973 = load i32, ptr @nr_begin_data, align 4, !tbaa !110
  %974 = add nsw i32 %973, 1
  store i32 %974, ptr @nr_begin_data, align 4, !tbaa !110
  br label %975

975:                                              ; preds = %972, %969
  %976 = load i32, ptr %959, align 8, !tbaa !106
  %977 = zext i32 %976 to i64
  %978 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %958, i64 0, i32 2, i64 %977, i32 8
  %979 = load i32, ptr %978, align 8, !tbaa !190
  %980 = and i32 %979, 258048
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %985, label %982

982:                                              ; preds = %975
  %983 = load i32, ptr @nr_begin_control, align 4, !tbaa !110
  %984 = add nsw i32 %983, 1
  store i32 %984, ptr @nr_begin_control, align 4, !tbaa !110
  br label %985

985:                                              ; preds = %982, %975
  call fastcc void @create_check_block_twin(ptr noundef %871, i8 noundef zeroext 0)
  %986 = load ptr, ptr @h_i_d, align 8
  %987 = load i32, ptr %959, align 8, !tbaa !106
  %988 = zext i32 %987 to i64
  %989 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %986, i64 0, i32 2, i64 %988, i32 8
  %990 = load i32, ptr %989, align 8, !tbaa !190
  %991 = and i32 %990, -258112
  store i32 %991, ptr %989, align 8, !tbaa !190
  br label %992

992:                                              ; preds = %985, %966
  %993 = load ptr, ptr @h_i_d, align 8
  %994 = load i32, ptr %959, align 8, !tbaa !106
  %995 = zext i32 %994 to i64
  %996 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %993, i64 0, i32 2, i64 %995, i32 8
  %997 = load i32, ptr %996, align 8, !tbaa !190
  %998 = and i32 %997, 16519104
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1209, label %1000

1000:                                             ; preds = %992
  %1001 = getelementptr inbounds i8, ptr %6, i64 8
  %1002 = getelementptr inbounds i8, ptr %6, i64 16
  %1003 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  %1004 = load i32, ptr %959, align 8, !tbaa !106
  %1005 = zext i32 %1004 to i64
  %1006 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %993, i64 0, i32 2, i64 %1005, i32 8
  %1007 = load i32, ptr %1006, align 8, !tbaa !190
  %1008 = and i32 %1007, -16519105
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1011, label %1010

1010:                                             ; preds = %1000
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4091, ptr noundef nonnull @.str.3) #27
  br label %1011

1011:                                             ; preds = %1010, %1000
  %1012 = and i32 %1007, 4032
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1017, label %1014

1014:                                             ; preds = %1011
  %1015 = load i32, ptr @nr_be_in_data, align 4, !tbaa !110
  %1016 = add nsw i32 %1015, 1
  store i32 %1016, ptr @nr_be_in_data, align 4, !tbaa !110
  br label %1017

1017:                                             ; preds = %1014, %1011
  %1018 = and i32 %1007, 16515072
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1023, label %1020

1020:                                             ; preds = %1017
  %1021 = load i32, ptr @nr_be_in_control, align 4, !tbaa !110
  %1022 = add nsw i32 %1021, 1
  store i32 %1022, ptr @nr_be_in_control, align 4, !tbaa !110
  br label %1023

1023:                                             ; preds = %1020, %1017
  %1024 = load ptr, ptr @h_i_d, align 8
  %1025 = load i32, ptr %959, align 8, !tbaa !106
  %1026 = zext i32 %1025 to i64
  %1027 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1024, i64 0, i32 2, i64 %1026, i32 8
  %1028 = load i32, ptr %1027, align 8, !tbaa !190
  %1029 = and i32 %1028, -16519105
  store i32 %1029, ptr %1027, align 8, !tbaa !190
  %1030 = load ptr, ptr @h_i_d, align 8
  %1031 = load i32, ptr %959, align 8, !tbaa !106
  %1032 = zext i32 %1031 to i64
  %1033 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1030, i64 0, i32 2, i64 %1032, i32 8
  %1034 = load i32, ptr %1033, align 8, !tbaa !190
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1037, label %1036

1036:                                             ; preds = %1023
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4099, ptr noundef nonnull @.str.3) #27
  br label %1037

1037:                                             ; preds = %1036, %1023
  %1038 = load ptr, ptr @h_i_d, align 8
  %1039 = load i32, ptr %959, align 8, !tbaa !106
  %1040 = zext i32 %1039 to i64
  %1041 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1038, i64 0, i32 2, i64 %1040, i32 9
  %1042 = load i32, ptr %1041, align 4, !tbaa !323
  %1043 = or i32 %1042, %1007
  store i32 %1043, ptr %1041, align 4, !tbaa !323
  store i32 2, ptr %6, align 8, !tbaa.struct !324
  store ptr %871, ptr %1001, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %1002, align 8, !tbaa.struct !326
  store i8 0, ptr %1003, align 8, !tbaa.struct !327
  %1044 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %1045 = icmp eq i8 %1044, 0
  br i1 %1045, label %1069, label %1046

1046:                                             ; preds = %1037, %1066
  %1047 = load ptr, ptr %7, align 8, !tbaa !95
  %1048 = load ptr, ptr %1047, align 8, !tbaa !141
  %1049 = load ptr, ptr @h_i_d, align 8
  %1050 = getelementptr inbounds %struct.rtx_def, ptr %1048, i64 0, i32 1
  %1051 = load i32, ptr %1050, align 8, !tbaa !106
  %1052 = zext i32 %1051 to i64
  %1053 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1049, i64 0, i32 2, i64 %1052, i32 11
  %1054 = load ptr, ptr %1053, align 8, !tbaa !328
  %1055 = load ptr, ptr @cfun, align 8, !tbaa !95
  %1056 = getelementptr inbounds %struct.function, ptr %1055, i64 0, i32 1
  %1057 = load ptr, ptr %1056, align 8, !tbaa !293
  %1058 = getelementptr inbounds %struct.control_flow_graph, ptr %1057, i64 0, i32 1
  %1059 = load ptr, ptr %1058, align 8, !tbaa !295
  %1060 = icmp eq ptr %1054, %1059
  br i1 %1060, label %1061, label %1062

1061:                                             ; preds = %1046
  call fastcc void @create_check_block_twin(ptr noundef %1048, i8 noundef zeroext 1)
  store i32 2, ptr %6, align 8, !tbaa.struct !324
  store ptr %871, ptr %1001, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %1002, align 8, !tbaa.struct !326
  store i8 0, ptr %1003, align 8, !tbaa.struct !327
  br label %1066

1062:                                             ; preds = %1046
  %1063 = load ptr, ptr %1002, align 8, !tbaa !329
  %1064 = load ptr, ptr %1063, align 8, !tbaa !95
  %1065 = getelementptr inbounds %struct._dep_link, ptr %1064, i64 0, i32 1
  store ptr %1065, ptr %1002, align 8, !tbaa !329
  br label %1066

1066:                                             ; preds = %1062, %1061
  %1067 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %1068 = icmp eq i8 %1067, 0
  br i1 %1068, label %1069, label %1046, !llvm.loop !331

1069:                                             ; preds = %1066, %1037
  store ptr null, ptr %8, align 8, !tbaa !95
  call fastcc void @clear_priorities(ptr noundef %871, ptr noundef nonnull %8)
  %1070 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 1
  br label %1071

1071:                                             ; preds = %1177, %1069
  %1072 = phi ptr [ null, %1069 ], [ %1178, %1177 ]
  store i32 2, ptr %6, align 8, !tbaa.struct !324
  store ptr %871, ptr %1001, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %1002, align 8, !tbaa.struct !326
  store i8 0, ptr %1003, align 8, !tbaa.struct !327
  %1073 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %1074 = icmp eq i8 %1073, 0
  br i1 %1074, label %1177, label %1075

1075:                                             ; preds = %1071
  %1076 = load ptr, ptr %7, align 8, !tbaa !95
  %1077 = getelementptr inbounds %struct._dep, ptr %1076, i64 0, i32 3
  %1078 = load i32, ptr %1077, align 4, !tbaa !332
  %1079 = and i32 %1078, 16519104
  %1080 = icmp ne i32 %1079, 0
  %1081 = and i32 %1078, 117698623
  %1082 = icmp eq i32 %1081, 16777216
  %1083 = and i1 %1082, %1080
  br i1 %1083, label %1085, label %1084

1084:                                             ; preds = %1075
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4137, ptr noundef nonnull @.str.3) #27
  br label %1085

1085:                                             ; preds = %1084, %1075
  %1086 = load ptr, ptr %1076, align 8, !tbaa !141
  %1087 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %1088 = getelementptr inbounds %struct.common_sched_info_def, ptr %1087, i64 0, i32 4
  %1089 = load i32, ptr %1088, align 8, !tbaa !133
  %1090 = icmp eq i32 %1089, 4
  br i1 %1090, label %1091, label %1094

1091:                                             ; preds = %1085
  %1092 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %1086) #27
  %1093 = icmp eq i8 %1092, 0
  br i1 %1093, label %1102, label %1114

1094:                                             ; preds = %1085
  %1095 = load ptr, ptr @h_i_d, align 8
  %1096 = getelementptr inbounds %struct.rtx_def, ptr %1086, i64 0, i32 1
  %1097 = load i32, ptr %1096, align 8, !tbaa !106
  %1098 = zext i32 %1097 to i64
  %1099 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1095, i64 0, i32 2, i64 %1098, i32 11
  %1100 = load ptr, ptr %1099, align 8, !tbaa !328
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1102, label %1114

1102:                                             ; preds = %1094, %1091
  %1103 = load ptr, ptr @h_i_d, align 8
  %1104 = getelementptr inbounds %struct.rtx_def, ptr %1086, i64 0, i32 1
  %1105 = load i32, ptr %1104, align 8, !tbaa !106
  %1106 = zext i32 %1105 to i64
  %1107 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1103, i64 0, i32 2, i64 %1106, i32 12
  %1108 = load ptr, ptr %1107, align 8, !tbaa !333
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1110, label %1114

1110:                                             ; preds = %1102
  %1111 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1103, i64 0, i32 2, i64 %1106, i32 4
  %1112 = load i32, ptr %1111, align 8, !tbaa !178
  %1113 = icmp eq i32 %1112, -2
  br i1 %1113, label %1115, label %1114

1114:                                             ; preds = %1110, %1102, %1094, %1091
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4142, ptr noundef nonnull @.str.3) #27
  br label %1115

1115:                                             ; preds = %1114, %1110
  %1116 = getelementptr inbounds %struct.rtx_def, ptr %1086, i64 0, i32 1, i32 0, i32 1
  %1117 = load ptr, ptr %1116, align 8, !tbaa !106
  %1118 = load ptr, ptr %1070, align 8, !tbaa !106
  %1119 = call ptr @copy_insn(ptr noundef %1118) #27
  %1120 = getelementptr inbounds %struct.basic_block_def, ptr %1117, i64 0, i32 7
  %1121 = load ptr, ptr %1120, align 8, !tbaa !106
  %1122 = getelementptr inbounds %struct.rtl_bb_info, ptr %1121, i64 0, i32 1
  %1123 = load ptr, ptr %1122, align 8, !tbaa !201
  %1124 = call ptr @emit_insn_before(ptr noundef %1119, ptr noundef %1123) #27
  call fastcc void @haifa_init_insn(ptr noundef %1124)
  call void @sd_copy_back_deps(ptr noundef %1124, ptr noundef %871, i8 noundef zeroext 1) #27
  %1125 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1138, label %1127

1127:                                             ; preds = %1115
  %1128 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %1129 = getelementptr inbounds %struct.spec_info_def, ptr %1128, i64 0, i32 1
  %1130 = load ptr, ptr %1129, align 8, !tbaa !334
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1138, label %1132

1132:                                             ; preds = %1127
  %1133 = getelementptr inbounds %struct.rtx_def, ptr %1124, i64 0, i32 1
  %1134 = load i32, ptr %1133, align 8, !tbaa !106
  %1135 = getelementptr inbounds %struct.basic_block_def, ptr %1117, i64 0, i32 9
  %1136 = load i32, ptr %1135, align 8, !tbaa !297
  %1137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1130, ptr noundef nonnull @.str.51, i32 noundef %1134, i32 noundef %1136)
  br label %1138

1138:                                             ; preds = %1132, %1127, %1115
  %1139 = call ptr @alloc_INSN_LIST(ptr noundef %1124, ptr noundef %1072) #27
  store i32 2, ptr %6, align 8, !tbaa.struct !324
  store ptr %871, ptr %1001, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %1002, align 8, !tbaa.struct !326
  store i8 0, ptr %1003, align 8, !tbaa.struct !327
  %1140 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %1141 = icmp eq i8 %1140, 0
  br i1 %1141, label %1160, label %1142

1142:                                             ; preds = %1138, %1154
  %1143 = load ptr, ptr %7, align 8, !tbaa !95
  %1144 = load ptr, ptr %1143, align 8, !tbaa !141
  %1145 = getelementptr inbounds %struct._dep, ptr %1143, i64 0, i32 2
  %1146 = load i32, ptr %1145, align 8, !tbaa !146
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1149, label %1148

1148:                                             ; preds = %1142
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4165, ptr noundef nonnull @.str.3) #27
  br label %1149

1149:                                             ; preds = %1148, %1142
  %1150 = getelementptr inbounds %struct.rtx_def, ptr %1144, i64 0, i32 1, i32 0, i32 1
  %1151 = load ptr, ptr %1150, align 8, !tbaa !106
  %1152 = icmp eq ptr %1151, %1117
  br i1 %1152, label %1153, label %1154

1153:                                             ; preds = %1149
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #27
  call void @init_dep(ptr noundef nonnull %9, ptr noundef %1144, ptr noundef %1124, i32 noundef 0) #27
  call void @sd_add_dep(ptr noundef nonnull %9, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #27
  br label %1154

1154:                                             ; preds = %1153, %1149
  %1155 = load ptr, ptr %1002, align 8, !tbaa !329
  %1156 = load ptr, ptr %1155, align 8, !tbaa !95
  %1157 = getelementptr inbounds %struct._dep_link, ptr %1156, i64 0, i32 1
  store ptr %1157, ptr %1002, align 8, !tbaa !329
  %1158 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %1159 = icmp eq i8 %1158, 0
  br i1 %1159, label %1160, label %1142, !llvm.loop !335

1160:                                             ; preds = %1154, %1138
  call fastcc void @process_insn_forw_deps_be_in_spec(ptr noundef %871, ptr noundef %1124, i32 noundef %1007)
  store i32 2, ptr %6, align 8, !tbaa.struct !324
  store ptr %871, ptr %1001, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %1002, align 8, !tbaa.struct !326
  store i8 0, ptr %1003, align 8, !tbaa.struct !327
  %1161 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %1162 = icmp eq i8 %1161, 0
  br i1 %1162, label %1177, label %1163

1163:                                             ; preds = %1160, %1174
  %1164 = load ptr, ptr %7, align 8, !tbaa !95
  %1165 = load ptr, ptr %1164, align 8, !tbaa !141
  %1166 = getelementptr inbounds %struct.rtx_def, ptr %1165, i64 0, i32 1, i32 0, i32 1
  %1167 = load ptr, ptr %1166, align 8, !tbaa !106
  %1168 = icmp eq ptr %1167, %1117
  br i1 %1168, label %1169, label %1170

1169:                                             ; preds = %1163
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %6) #27
  br label %1174

1170:                                             ; preds = %1163
  %1171 = load ptr, ptr %1002, align 8, !tbaa !329
  %1172 = load ptr, ptr %1171, align 8, !tbaa !95
  %1173 = getelementptr inbounds %struct._dep_link, ptr %1172, i64 0, i32 1
  store ptr %1173, ptr %1002, align 8, !tbaa !329
  br label %1174

1174:                                             ; preds = %1170, %1169
  %1175 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %1176 = icmp eq i8 %1175, 0
  br i1 %1176, label %1177, label %1163, !llvm.loop !336

1177:                                             ; preds = %1174, %1160, %1071
  %1178 = phi ptr [ %1072, %1071 ], [ %1139, %1160 ], [ %1139, %1174 ]
  br i1 %1074, label %1179, label %1071

1179:                                             ; preds = %1177
  %1180 = icmp eq ptr %1178, null
  br i1 %1180, label %1188, label %1181

1181:                                             ; preds = %1179, %1181
  %1182 = phi ptr [ %1186, %1181 ], [ %1178, %1179 ]
  %1183 = getelementptr inbounds %struct.rtx_def, ptr %1182, i64 0, i32 1
  %1184 = load ptr, ptr %1183, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #27
  call void @init_dep(ptr noundef nonnull %10, ptr noundef %871, ptr noundef %1184, i32 noundef 11) #27
  call void @sd_add_dep(ptr noundef nonnull %10, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #27
  %1185 = getelementptr inbounds %struct.rtx_def, ptr %1182, i64 0, i32 1, i32 0, i32 0, i64 1
  %1186 = load ptr, ptr %1185, align 8, !tbaa !106
  call void @free_INSN_LIST_node(ptr noundef nonnull %1182) #27
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1188, label %1181, !llvm.loop !337

1188:                                             ; preds = %1181, %1179
  %1189 = load ptr, ptr %8, align 8, !tbaa !95
  %1190 = icmp eq ptr %1189, null
  br label %1191

1191:                                             ; preds = %1203, %1188
  %1192 = phi i64 [ %1205, %1203 ], [ 0, %1188 ]
  br i1 %1190, label %1200, label %1193

1193:                                             ; preds = %1191
  %1194 = load i32, ptr %1189, align 8, !tbaa !338
  %1195 = zext i32 %1194 to i64
  %1196 = icmp ult i64 %1192, %1195
  br i1 %1196, label %1197, label %1200

1197:                                             ; preds = %1193
  %1198 = getelementptr inbounds %struct.VEC_rtx_base, ptr %1189, i64 0, i32 2, i64 %1192
  %1199 = load ptr, ptr %1198, align 8, !tbaa !95
  br label %1200

1200:                                             ; preds = %1197, %1193, %1191
  %1201 = phi ptr [ %1199, %1197 ], [ null, %1193 ], [ null, %1191 ]
  %1202 = phi i1 [ false, %1197 ], [ true, %1193 ], [ true, %1191 ]
  br i1 %1202, label %1206, label %1203

1203:                                             ; preds = %1200
  %1204 = call fastcc i32 @priority(ptr noundef %1201)
  %1205 = add nuw i64 %1192, 1
  br label %1191, !llvm.loop !340

1206:                                             ; preds = %1200
  br i1 %1190, label %1208, label %1207

1207:                                             ; preds = %1206
  call void @free(ptr noundef %1189)
  br label %1208

1208:                                             ; preds = %1207, %1206
  store ptr null, ptr %8, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %1209

1209:                                             ; preds = %1208, %992, %957
  %1210 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1211 = call zeroext i8 @control_flow_insn_p(ptr noundef %1210) #27
  %1212 = icmp eq i8 %1211, 0
  br i1 %1212, label %1213, label %1220

1213:                                             ; preds = %1209
  %1214 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1215 = getelementptr inbounds %struct.haifa_sched_info, ptr %1214, i64 0, i32 16
  %1216 = load ptr, ptr %1215, align 8, !tbaa !306
  %1217 = load ptr, ptr %0, align 8, !tbaa !95
  %1218 = call ptr %1216(ptr noundef %1217, ptr noundef %871) #27
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1238, label %1220

1220:                                             ; preds = %1213, %1209
  %1221 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1222 = getelementptr inbounds %struct.haifa_sched_info, ptr %1221, i64 0, i32 16
  %1223 = load ptr, ptr %1222, align 8, !tbaa !306
  %1224 = load ptr, ptr %0, align 8, !tbaa !95
  %1225 = call ptr %1223(ptr noundef %1224, ptr noundef null) #27
  store ptr %1225, ptr %0, align 8, !tbaa !95
  %1226 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1235, label %1228

1228:                                             ; preds = %1220
  %1229 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1230 = call ptr @next_real_insn(ptr noundef %1229) #27
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1232, label %1233

1232:                                             ; preds = %1228
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3122, ptr noundef nonnull @.str.3) #27
  br label %1233

1233:                                             ; preds = %1228, %1232
  %1234 = load ptr, ptr %0, align 8, !tbaa !95
  call fastcc void @dump_new_block_header(i32 noundef 1, ptr noundef %1234, ptr noundef %1230, ptr noundef %21)
  br label %1235

1235:                                             ; preds = %1233, %1220
  %1236 = load ptr, ptr %0, align 8, !tbaa !95
  %1237 = call ptr @bb_note(ptr noundef %1236)
  store ptr %1237, ptr @last_scheduled_insn, align 8, !tbaa !95
  br label %1238

1238:                                             ; preds = %1235, %1213
  %1239 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1240 = getelementptr inbounds %struct.haifa_sched_info, ptr %1239, i64 0, i32 15
  %1241 = load ptr, ptr %1240, align 8, !tbaa !307
  %1242 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  call void %1241(ptr noundef %871, ptr noundef %1242) #27
  %1243 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1244 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1245 = getelementptr inbounds %struct.haifa_sched_info, ptr %1244, i64 0, i32 9
  %1246 = load ptr, ptr %1245, align 8, !tbaa !282
  call fastcc void @move_insn(ptr noundef %871, ptr noundef %1243, ptr noundef %1246)
  call void @reemit_notes(ptr noundef %871)
  store ptr %871, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1247 = load ptr, ptr @curr_state, align 8, !tbaa !95
  %1248 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  %1249 = call i32 @bcmp(ptr %1247, ptr nonnull %39, i64 %1248)
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1254, label %1251

1251:                                             ; preds = %1238
  %1252 = load i32, ptr @cycle_issued_insns, align 4, !tbaa !110
  %1253 = add nsw i32 %1252, 1
  store i32 %1253, ptr @cycle_issued_insns, align 4, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1247, ptr nonnull align 16 %39, i64 %1248, i1 false)
  br label %1254

1254:                                             ; preds = %1251, %1238
  %1255 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !341
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1261, label %1257

1257:                                             ; preds = %1254
  %1258 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %1259 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1260 = call i32 %1255(ptr noundef %1258, i32 noundef %1259, ptr noundef %871, i32 noundef %500) #27
  br label %1269

1261:                                             ; preds = %1254
  %1262 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 1
  %1263 = load ptr, ptr %1262, align 8, !tbaa !106
  %1264 = load i32, ptr %1263, align 8
  %1265 = and i32 %1264, 65534
  %1266 = icmp ne i32 %1265, 24
  %1267 = sext i1 %1266 to i32
  %1268 = add nsw i32 %500, %1267
  br label %1269

1269:                                             ; preds = %1261, %1257
  %1270 = phi i32 [ %1260, %1257 ], [ %1268, %1261 ]
  %1271 = call fastcc i32 @schedule_insn(ptr noundef %871), !range !308
  %1272 = icmp eq i32 %1271, 0
  %1273 = select i1 %1272, i1 %932, i1 false
  %1274 = select i1 %1273, i32 1, i32 %1271
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1276, label %1407

1276:                                             ; preds = %1269
  %1277 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1278 = icmp sgt i32 %1277, 0
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1276
  call void @ready_sort(ptr noundef nonnull @ready)
  br label %1280

1280:                                             ; preds = %1279, %1276
  %1281 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1365, label %1283

1283:                                             ; preds = %1280
  %1284 = icmp sgt i32 %1281, 0
  br i1 %1284, label %1286, label %1285

1285:                                             ; preds = %1283
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %1286

1286:                                             ; preds = %1283, %1285
  %1287 = load ptr, ptr @ready, align 8, !tbaa !170
  %1288 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds ptr, ptr %1287, i64 %1289
  %1291 = load ptr, ptr %1290, align 8, !tbaa !95
  %1292 = load i32, ptr %1291, align 8
  %1293 = and i32 %1292, 65535
  %1294 = icmp eq i32 %1293, 7
  br i1 %1294, label %1295, label %1365

1295:                                             ; preds = %1286
  %1296 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1297 = getelementptr inbounds %struct.haifa_sched_info, ptr %1296, i64 0, i32 2
  %1298 = load ptr, ptr %1297, align 8, !tbaa !299
  %1299 = call i32 %1298() #27
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1365, label %1301

1301:                                             ; preds = %1295
  %1302 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1303 = call zeroext i8 @control_flow_insn_p(ptr noundef %1302) #27
  %1304 = icmp eq i8 %1303, 0
  br i1 %1304, label %1323, label %1305

1305:                                             ; preds = %1301
  %1306 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1307 = getelementptr inbounds %struct.haifa_sched_info, ptr %1306, i64 0, i32 16
  %1308 = load ptr, ptr %1307, align 8, !tbaa !306
  %1309 = load ptr, ptr %0, align 8, !tbaa !95
  %1310 = call ptr %1308(ptr noundef %1309, ptr noundef null) #27
  store ptr %1310, ptr %0, align 8, !tbaa !95
  %1311 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1320, label %1313

1313:                                             ; preds = %1305
  %1314 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1315 = call ptr @next_real_insn(ptr noundef %1314) #27
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1317, label %1318

1317:                                             ; preds = %1313
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3183, ptr noundef nonnull @.str.3) #27
  br label %1318

1318:                                             ; preds = %1313, %1317
  %1319 = load ptr, ptr %0, align 8, !tbaa !95
  call fastcc void @dump_new_block_header(i32 noundef 1, ptr noundef %1319, ptr noundef %1315, ptr noundef %21)
  br label %1320

1320:                                             ; preds = %1318, %1305
  %1321 = load ptr, ptr %0, align 8, !tbaa !95
  %1322 = call ptr @bb_note(ptr noundef %1321)
  store ptr %1322, ptr @last_scheduled_insn, align 8, !tbaa !95
  br label %1323

1323:                                             ; preds = %1320, %1301
  %1324 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1365, label %1326

1326:                                             ; preds = %1323, %1362
  %1327 = phi i32 [ %1363, %1362 ], [ %1324, %1323 ]
  %1328 = phi i32 [ %1355, %1362 ], [ 0, %1323 ]
  %1329 = icmp sgt i32 %1327, 0
  br i1 %1329, label %1331, label %1330

1330:                                             ; preds = %1326
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %1331

1331:                                             ; preds = %1326, %1330
  %1332 = load ptr, ptr @ready, align 8, !tbaa !170
  %1333 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %1334 = sext i32 %1333 to i64
  %1335 = getelementptr inbounds ptr, ptr %1332, i64 %1334
  %1336 = load ptr, ptr %1335, align 8, !tbaa !95
  %1337 = load i32, ptr %1336, align 8
  %1338 = and i32 %1337, 65535
  %1339 = icmp eq i32 %1338, 7
  br i1 %1339, label %1340, label %1365

1340:                                             ; preds = %1331
  %1341 = call fastcc ptr @ready_remove_first()
  %1342 = load i32, ptr %1341, align 8
  %1343 = and i32 %1342, 65535
  %1344 = icmp eq i32 %1343, 7
  br i1 %1344, label %1346, label %1345

1345:                                             ; preds = %1340
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3193, ptr noundef nonnull @.str.3) #27
  br label %1346

1346:                                             ; preds = %1340, %1345
  %1347 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1348 = getelementptr inbounds %struct.haifa_sched_info, ptr %1347, i64 0, i32 15
  %1349 = load ptr, ptr %1348, align 8, !tbaa !307
  %1350 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  call void %1349(ptr noundef nonnull %1341, ptr noundef %1350) #27
  %1351 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1352 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1353 = getelementptr inbounds %struct.haifa_sched_info, ptr %1352, i64 0, i32 9
  %1354 = load ptr, ptr %1353, align 8, !tbaa !282
  call fastcc void @move_insn(ptr noundef nonnull %1341, ptr noundef %1351, ptr noundef %1354)
  %1355 = call fastcc i32 @schedule_insn(ptr noundef nonnull %1341), !range !308
  store ptr %1341, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1358, label %1357

1357:                                             ; preds = %1346
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3200, ptr noundef nonnull @.str.3) #27
  br label %1358

1358:                                             ; preds = %1346, %1357
  %1359 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1360 = icmp sgt i32 %1359, 0
  br i1 %1360, label %1361, label %1362

1361:                                             ; preds = %1358
  call void @ready_sort(ptr noundef nonnull @ready)
  br label %1362

1362:                                             ; preds = %1361, %1358
  %1363 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1365, label %1326, !llvm.loop !342

1365:                                             ; preds = %1362, %1331, %1323, %1295, %1286, %1280
  %1366 = phi i32 [ 0, %1295 ], [ 0, %1286 ], [ 0, %1280 ], [ 0, %1323 ], [ %1328, %1331 ], [ %1355, %1362 ]
  %1367 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !343
  %1368 = icmp eq ptr %1367, null
  br i1 %1368, label %1407, label %1369

1369:                                             ; preds = %1365
  %1370 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1384, label %1372

1372:                                             ; preds = %1369
  %1373 = icmp sgt i32 %1370, 0
  br i1 %1373, label %1375, label %1374

1374:                                             ; preds = %1372
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %1375

1375:                                             ; preds = %1372, %1374
  %1376 = load ptr, ptr @ready, align 8, !tbaa !170
  %1377 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds ptr, ptr %1376, i64 %1378
  %1380 = load ptr, ptr %1379, align 8, !tbaa !95
  %1381 = load i32, ptr %1380, align 8
  %1382 = and i32 %1381, 268435456
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1384, label %1407

1384:                                             ; preds = %1375, %1369
  %1385 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !343
  %1386 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %1387 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1388 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %1403, label %1390

1390:                                             ; preds = %1384
  %1391 = icmp sgt i32 %1388, 0
  br i1 %1391, label %1393, label %1392

1392:                                             ; preds = %1390
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #27
  br label %1393

1393:                                             ; preds = %1390, %1392
  %1394 = load ptr, ptr @ready, align 8, !tbaa !170
  %1395 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %1396 = sext i32 %1395 to i64
  %1397 = getelementptr inbounds ptr, ptr %1394, i64 %1396
  %1398 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1399 = sext i32 %1398 to i64
  %1400 = sub nsw i64 0, %1399
  %1401 = getelementptr inbounds ptr, ptr %1397, i64 %1400
  %1402 = getelementptr inbounds ptr, ptr %1401, i64 1
  br label %1403

1403:                                             ; preds = %1384, %1393
  %1404 = phi ptr [ %1402, %1393 ], [ null, %1384 ]
  %1405 = load i32, ptr @clock_var, align 4, !tbaa !110
  %1406 = call i32 %1385(ptr noundef %1386, i32 noundef %1387, ptr noundef %1404, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %1405) #27
  br label %1407

1407:                                             ; preds = %560, %1365, %1375, %1403, %1269, %934, %564, %568, %865, %948, %894, %883
  %1408 = phi i32 [ 13, %883 ], [ 13, %894 ], [ 14, %948 ], [ %867, %865 ], [ 13, %568 ], [ 13, %564 ], [ %938, %934 ], [ 13, %1269 ], [ 0, %1403 ], [ 0, %1375 ], [ 0, %1365 ], [ 13, %560 ]
  %1409 = phi i32 [ 1, %883 ], [ %499, %894 ], [ %499, %948 ], [ %499, %865 ], [ %499, %568 ], [ %499, %564 ], [ %939, %934 ], [ %1274, %1269 ], [ %1366, %1403 ], [ %1366, %1375 ], [ %1366, %1365 ], [ %499, %560 ]
  %1410 = phi i32 [ %500, %883 ], [ %500, %894 ], [ %500, %948 ], [ %500, %865 ], [ %500, %568 ], [ %500, %564 ], [ %500, %934 ], [ %1270, %1269 ], [ %1406, %1403 ], [ %1270, %1375 ], [ %1270, %1365 ], [ %500, %560 ]
  %1411 = phi i32 [ %501, %883 ], [ %501, %894 ], [ %501, %948 ], [ %501, %865 ], [ %501, %568 ], [ %501, %564 ], [ %501, %934 ], [ %501, %1269 ], [ 0, %1403 ], [ 0, %1375 ], [ 0, %1365 ], [ %501, %560 ]
  %1412 = icmp eq i32 %1408, 13
  br i1 %1412, label %446, label %498, !llvm.loop !305

1413:                                             ; preds = %446, %189
  %1414 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1419, label %1416

1416:                                             ; preds = %1413
  %1417 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %1418 = call i64 @fwrite(ptr nonnull @.str.10, i64 24, i64 1, ptr %1417)
  call fastcc void @debug_ready_list()
  br label %1419

1419:                                             ; preds = %1416, %1413
  %1420 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1421 = getelementptr inbounds %struct.haifa_sched_info, ptr %1420, i64 0, i32 12
  %1422 = load i8, ptr %1421, align 8
  %1423 = and i8 %1422, 1
  %1424 = icmp eq i8 %1423, 0
  br i1 %1424, label %1435, label %1425

1425:                                             ; preds = %1419
  %1426 = load i32, ptr @q_size, align 4, !tbaa !110
  %1427 = icmp ne i32 %1426, 0
  %1428 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8
  %1429 = icmp ne i32 %1428, 0
  %1430 = select i1 %1427, i1 true, i1 %1429
  %1431 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4
  %1432 = icmp ne i32 %1431, 0
  %1433 = select i1 %1430, i1 true, i1 %1432
  br i1 %1433, label %1434, label %1500

1434:                                             ; preds = %1425
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3229, ptr noundef nonnull @.str.3) #27
  br label %1500

1435:                                             ; preds = %1419
  %1436 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1437 = icmp sgt i32 %1436, 0
  br i1 %1437, label %1438, label %1464

1438:                                             ; preds = %1435, %1444
  %1439 = phi i32 [ %1440, %1444 ], [ %1436, %1435 ]
  %1440 = add nsw i32 %1439, -1
  %1441 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %1442 = icmp slt i32 %1441, %1439
  br i1 %1442, label %1443, label %1444

1443:                                             ; preds = %1438
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #27
  br label %1444

1444:                                             ; preds = %1438, %1443
  %1445 = load ptr, ptr @ready, align 8, !tbaa !170
  %1446 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %1447 = sub nsw i32 %1446, %1440
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds ptr, ptr %1445, i64 %1448
  %1450 = load ptr, ptr %1449, align 8, !tbaa !95
  %1451 = load ptr, ptr @h_i_d, align 8
  %1452 = getelementptr inbounds %struct.rtx_def, ptr %1450, i64 0, i32 1
  %1453 = load i32, ptr %1452, align 8, !tbaa !106
  %1454 = zext i32 %1453 to i64
  %1455 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1451, i64 0, i32 2, i64 %1454, i32 4
  store i32 -2, ptr %1455, align 8, !tbaa !178
  %1456 = load ptr, ptr @h_i_d, align 8
  %1457 = load i32, ptr %1452, align 8, !tbaa !106
  %1458 = zext i32 %1457 to i64
  %1459 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1456, i64 0, i32 2, i64 %1458, i32 8
  %1460 = load i32, ptr %1459, align 8, !tbaa !190
  %1461 = and i32 %1460, -150994944
  %1462 = or disjoint i32 %1461, 134217728
  store i32 %1462, ptr %1459, align 8, !tbaa !190
  %1463 = icmp sgt i32 %1439, 1
  br i1 %1463, label %1438, label %1464, !llvm.loop !344

1464:                                             ; preds = %1444, %1435
  %1465 = load i32, ptr @q_size, align 4, !tbaa !110
  %1466 = icmp eq i32 %1465, 0
  %1467 = icmp slt i32 %58, 0
  %1468 = select i1 %1466, i1 true, i1 %1467
  br i1 %1468, label %1500, label %1469

1469:                                             ; preds = %1464
  %1470 = add i32 %58, 1
  %1471 = zext i32 %1470 to i64
  br label %1472

1472:                                             ; preds = %1469, %1497
  %1473 = phi i64 [ 0, %1469 ], [ %1498, %1497 ]
  %1474 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %1475 = getelementptr inbounds ptr, ptr %1474, i64 %1473
  %1476 = load ptr, ptr %1475, align 8, !tbaa !106
  %1477 = icmp eq ptr %1476, null
  br i1 %1477, label %1497, label %1478

1478:                                             ; preds = %1472, %1478
  %1479 = phi ptr [ %1495, %1478 ], [ %1476, %1472 ]
  %1480 = getelementptr inbounds %struct.rtx_def, ptr %1479, i64 0, i32 1
  %1481 = load ptr, ptr %1480, align 8, !tbaa !106
  %1482 = load ptr, ptr @h_i_d, align 8
  %1483 = getelementptr inbounds %struct.rtx_def, ptr %1481, i64 0, i32 1
  %1484 = load i32, ptr %1483, align 8, !tbaa !106
  %1485 = zext i32 %1484 to i64
  %1486 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1482, i64 0, i32 2, i64 %1485, i32 4
  store i32 -2, ptr %1486, align 8, !tbaa !178
  %1487 = load ptr, ptr @h_i_d, align 8
  %1488 = load i32, ptr %1483, align 8, !tbaa !106
  %1489 = zext i32 %1488 to i64
  %1490 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1487, i64 0, i32 2, i64 %1489, i32 8
  %1491 = load i32, ptr %1490, align 8, !tbaa !190
  %1492 = and i32 %1491, -150994944
  %1493 = or disjoint i32 %1492, 134217728
  store i32 %1493, ptr %1490, align 8, !tbaa !190
  %1494 = getelementptr inbounds %struct.rtx_def, ptr %1479, i64 0, i32 1, i32 0, i32 0, i64 1
  %1495 = load ptr, ptr %1494, align 8, !tbaa !106
  %1496 = icmp eq ptr %1495, null
  br i1 %1496, label %1497, label %1478, !llvm.loop !345

1497:                                             ; preds = %1478, %1472
  call void @free_INSN_LIST_list(ptr noundef nonnull %1475) #27
  %1498 = add nuw nsw i64 %1473, 1
  %1499 = icmp eq i64 %1498, %1471
  br i1 %1499, label %1500, label %1472, !llvm.loop !346

1500:                                             ; preds = %1497, %1464, %1434, %1425
  %1501 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1502 = icmp eq i32 %1501, 0
  br i1 %1502, label %1507, label %1503

1503:                                             ; preds = %1500
  %1504 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %1505 = load i32, ptr @clock_var, align 4, !tbaa !110
  %1506 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1504, ptr noundef nonnull @.str.11, i32 noundef %1505)
  br label %1507

1507:                                             ; preds = %1503, %1500
  %1508 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1509 = getelementptr inbounds %struct.haifa_sched_info, ptr %1508, i64 0, i32 12
  %1510 = load i8, ptr %1509, align 8
  %1511 = and i8 %1510, 1
  %1512 = icmp eq i8 %1511, 0
  %1513 = load i1, ptr @haifa_recovery_bb_recently_added_p, align 1
  %1514 = select i1 %1512, i1 true, i1 %1513
  br i1 %1514, label %1515, label %1620

1515:                                             ; preds = %1507
  %1516 = load ptr, ptr %18, align 8, !tbaa !106
  %1517 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %1518 = load i32, ptr @clock_var, align 4, !tbaa !110
  %1519 = add nsw i32 %1518, 1
  %1520 = getelementptr inbounds %struct.bitmap_head_def, ptr %3, i64 0, i32 3
  store ptr null, ptr %1520, align 8, !tbaa !347
  %1521 = getelementptr inbounds %struct.rtx_def, ptr %1517, i64 0, i32 1, i32 0, i32 0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %1522 = load ptr, ptr %1521, align 8, !tbaa !106
  %1523 = icmp eq ptr %1516, %1522
  br i1 %1523, label %1619, label %1524

1524:                                             ; preds = %1515
  %1525 = sub nsw i32 0, %58
  %1526 = getelementptr inbounds i8, ptr %4, i64 8
  %1527 = getelementptr inbounds i8, ptr %4, i64 16
  %1528 = getelementptr inbounds i8, ptr %4, i64 24
  br label %1529

1529:                                             ; preds = %1524, %1615
  %1530 = phi ptr [ %1516, %1524 ], [ %1617, %1615 ]
  %1531 = load i32, ptr %1530, align 8
  %1532 = and i32 %1531, 65535
  %1533 = add nsw i32 %1532, -7
  %1534 = icmp ult i32 %1533, 4
  br i1 %1534, label %1535, label %1615

1535:                                             ; preds = %1529
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %1536 = load ptr, ptr @h_i_d, align 8
  %1537 = getelementptr inbounds %struct.rtx_def, ptr %1530, i64 0, i32 1
  %1538 = load i32, ptr %1537, align 8, !tbaa !106
  %1539 = zext i32 %1538 to i64
  %1540 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1536, i64 0, i32 2, i64 %1539, i32 2
  %1541 = load i32, ptr %1540, align 8, !tbaa !189
  %1542 = icmp slt i32 %1541, %1525
  br i1 %1542, label %1543, label %1544

1543:                                             ; preds = %1535
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3605, ptr noundef nonnull @.str.3) #27
  br label %1544

1544:                                             ; preds = %1543, %1535
  %1545 = load ptr, ptr @sched_luids, align 8
  %1546 = load i32, ptr %1537, align 8, !tbaa !106
  %1547 = zext i32 %1546 to i64
  %1548 = getelementptr inbounds %struct.VEC_int_base, ptr %1545, i64 0, i32 2, i64 %1547
  %1549 = load i32, ptr %1548, align 4, !tbaa !110
  %1550 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %1549) #27
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1552, label %1565

1552:                                             ; preds = %1544
  %1553 = load ptr, ptr @sched_luids, align 8
  %1554 = load i32, ptr %1537, align 8, !tbaa !106
  %1555 = zext i32 %1554 to i64
  %1556 = getelementptr inbounds %struct.VEC_int_base, ptr %1553, i64 0, i32 2, i64 %1555
  %1557 = load i32, ptr %1556, align 4, !tbaa !110
  %1558 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %1557) #27
  %1559 = sub nsw i32 %1541, %1519
  %1560 = call i32 @llvm.smax.i32(i32 %1559, i32 %1525)
  %1561 = load ptr, ptr @h_i_d, align 8
  %1562 = load i32, ptr %1537, align 8, !tbaa !106
  %1563 = zext i32 %1562 to i64
  %1564 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1561, i64 0, i32 2, i64 %1563, i32 2
  store i32 %1560, ptr %1564, align 8, !tbaa !189
  br label %1565

1565:                                             ; preds = %1552, %1544
  store i32 16, ptr %4, align 8, !tbaa.struct !324
  store ptr %1530, ptr %1526, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %1527, align 8, !tbaa.struct !326
  store i8 0, ptr %1528, align 8, !tbaa.struct !327
  %1566 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %1567 = icmp eq i8 %1566, 0
  br i1 %1567, label %1614, label %1568

1568:                                             ; preds = %1565, %1608
  %1569 = load ptr, ptr %5, align 8, !tbaa !95
  %1570 = getelementptr inbounds %struct._dep, ptr %1569, i64 0, i32 1
  %1571 = load ptr, ptr %1570, align 8, !tbaa !143
  %1572 = load ptr, ptr @h_i_d, align 8
  %1573 = getelementptr inbounds %struct.rtx_def, ptr %1571, i64 0, i32 1
  %1574 = load i32, ptr %1573, align 8, !tbaa !106
  %1575 = zext i32 %1574 to i64
  %1576 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1572, i64 0, i32 2, i64 %1575, i32 2
  %1577 = load i32, ptr %1576, align 8, !tbaa !189
  %1578 = xor i32 %1577, %58
  %1579 = icmp eq i32 %1578, -1
  br i1 %1579, label %1608, label %1580

1580:                                             ; preds = %1568
  %1581 = load ptr, ptr @sched_luids, align 8
  %1582 = getelementptr inbounds %struct.VEC_int_base, ptr %1581, i64 0, i32 2, i64 %1575
  %1583 = load i32, ptr %1582, align 4, !tbaa !110
  %1584 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %1583) #27
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1586, label %1608

1586:                                             ; preds = %1580
  %1587 = load ptr, ptr @sched_luids, align 8
  %1588 = load i32, ptr %1573, align 8, !tbaa !106
  %1589 = zext i32 %1588 to i64
  %1590 = getelementptr inbounds %struct.VEC_int_base, ptr %1587, i64 0, i32 2, i64 %1589
  %1591 = load i32, ptr %1590, align 4, !tbaa !110
  %1592 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %1591) #27
  %1593 = sub nsw i32 %1577, %1519
  %1594 = call i32 @llvm.smax.i32(i32 %1593, i32 %1525)
  %1595 = load ptr, ptr @h_i_d, align 8
  %1596 = load i32, ptr %1573, align 8, !tbaa !106
  %1597 = zext i32 %1596 to i64
  %1598 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1595, i64 0, i32 2, i64 %1597, i32 3
  %1599 = load i32, ptr %1598, align 4, !tbaa !348
  %1600 = icmp sgt i32 %1594, %1599
  br i1 %1600, label %1601, label %1602

1601:                                             ; preds = %1586
  store i32 %1594, ptr %1598, align 4, !tbaa !348
  br label %1602

1602:                                             ; preds = %1601, %1586
  %1603 = phi i32 [ %1594, %1601 ], [ %1599, %1586 ]
  %1604 = load ptr, ptr @h_i_d, align 8
  %1605 = load i32, ptr %1573, align 8, !tbaa !106
  %1606 = zext i32 %1605 to i64
  %1607 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %1604, i64 0, i32 2, i64 %1606, i32 2
  store i32 %1603, ptr %1607, align 8, !tbaa !189
  br label %1608

1608:                                             ; preds = %1602, %1580, %1568
  %1609 = load ptr, ptr %1527, align 8, !tbaa !329
  %1610 = load ptr, ptr %1609, align 8, !tbaa !95
  %1611 = getelementptr inbounds %struct._dep_link, ptr %1610, i64 0, i32 1
  store ptr %1611, ptr %1527, align 8, !tbaa !329
  %1612 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %1613 = icmp eq i8 %1612, 0
  br i1 %1613, label %1614, label %1568, !llvm.loop !349

1614:                                             ; preds = %1608, %1565
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %1615

1615:                                             ; preds = %1614, %1529
  %1616 = getelementptr inbounds %struct.rtx_def, ptr %1530, i64 0, i32 1, i32 0, i32 0, i64 2
  %1617 = load ptr, ptr %1616, align 8, !tbaa !106
  %1618 = icmp eq ptr %1617, %1522
  br i1 %1618, label %1619, label %1529, !llvm.loop !350

1619:                                             ; preds = %1615, %1515
  call void @bitmap_clear(ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %1620

1620:                                             ; preds = %1507, %1619
  %1621 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 5), align 8, !tbaa !351
  %1622 = icmp eq ptr %1621, null
  br i1 %1622, label %1631, label %1623

1623:                                             ; preds = %1620
  %1624 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %1625 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  call void %1621(ptr noundef %1624, i32 noundef %1625) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.sched_init_luids.ssi, i64 32, i1 false)
  store ptr %2, ptr @sched_scan_info, align 8, !tbaa !95
  %1626 = getelementptr inbounds %struct.sched_scan_info_def, ptr %2, i64 0, i32 2
  %1627 = load ptr, ptr %1626, align 8, !tbaa !352
  %1628 = icmp eq ptr %1627, null
  br i1 %1628, label %1630, label %1629

1629:                                             ; preds = %1623
  call void %1627() #27
  br label %1630

1630:                                             ; preds = %1623, %1629
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  br label %1631

1631:                                             ; preds = %1630, %1620
  %1632 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1641, label %1634

1634:                                             ; preds = %1631
  %1635 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %1636 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %1637 = load i32, ptr %1636, align 8, !tbaa !106
  %1638 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %1639 = load i32, ptr %1638, align 8, !tbaa !106
  %1640 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1635, ptr noundef nonnull @.str.12, i32 noundef %1637, i32 noundef %1639)
  br label %1641

1641:                                             ; preds = %1634, %1631
  %1642 = load ptr, ptr %18, align 8, !tbaa !106
  %1643 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %1644 = call ptr @restore_other_notes(ptr noundef %1642, ptr noundef null)
  %1645 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %1646 = getelementptr inbounds %struct.haifa_sched_info, ptr %1645, i64 0, i32 10
  store ptr %1644, ptr %1646, align 8, !tbaa !354
  %1647 = getelementptr inbounds %struct.haifa_sched_info, ptr %1645, i64 0, i32 11
  store ptr %1643, ptr %1647, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_new_block_header(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #16 !prof !94 {
  %5 = icmp eq i32 %0, 0
  %6 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %7 = select i1 %5, ptr @.str.55, ptr @.str.56
  %8 = tail call i64 @fwrite(ptr nonnull %7, i64 60, i64 1, ptr %6)
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !297
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !106
  %16 = load i32, ptr @reload_completed, align 4, !tbaa !110
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @.str.59, ptr @.str.58
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.57, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %18)
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %21 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 60, i64 1, ptr %20)
  %22 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %23 = tail call i32 @fputc(i32 10, ptr %22)
  ret void
}

declare void @state_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @ready_remove(i32 noundef %0) unnamed_addr #9 !prof !94 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @ready_remove_first()
  br label %47

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %7 = icmp ne i32 %6, 0
  %8 = icmp sgt i32 %6, %0
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1473, ptr noundef nonnull @.str.3) #27
  br label %11

11:                                               ; preds = %5, %10
  %12 = load ptr, ptr @ready, align 8, !tbaa !170
  %13 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %14 = sub nsw i32 %13, %0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %19 = add i32 %18, -1
  store i32 %19, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %20 = load i32, ptr %17, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  br label %26

26:                                               ; preds = %23, %11
  %27 = icmp sgt i32 %19, %0
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = sext i32 %0 to i64
  %30 = sext i32 %13 to i64
  %31 = sext i32 %19 to i64
  br label %32

32:                                               ; preds = %28, %32
  %33 = phi i64 [ %29, %28 ], [ %39, %32 ]
  %34 = load ptr, ptr @ready, align 8, !tbaa !170
  %35 = sub nsw i64 %30, %33
  %36 = getelementptr ptr, ptr %34, i64 %35
  %37 = getelementptr ptr, ptr %36, i64 -1
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  store ptr %38, ptr %36, align 8, !tbaa !95
  %39 = add nsw i64 %33, 1
  %40 = icmp eq i64 %39, %31
  br i1 %40, label %41, label %32, !llvm.loop !356

41:                                               ; preds = %32, %26
  %42 = load ptr, ptr @h_i_d, align 8
  %43 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !106
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %42, i64 0, i32 2, i64 %45, i32 4
  store i32 -2, ptr %46, align 8, !tbaa !178
  br label %47

47:                                               ; preds = %41, %3
  %48 = phi ptr [ %4, %3 ], [ %17, %41 ]
  ret ptr %48
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @queue_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !94 {
  %3 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %4 = add nsw i32 %3, %1
  %5 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %6 = and i32 %4, %5
  %7 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = tail call ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %10) #27
  %12 = icmp slt i32 %5, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1346, ptr noundef nonnull @.str.3) #27
  br label %14

14:                                               ; preds = %2, %13
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1347, ptr noundef nonnull @.str.3) #27
  br label %19

19:                                               ; preds = %14, %18
  %20 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %21 = getelementptr inbounds ptr, ptr %20, i64 %8
  store ptr %11, ptr %21, align 8, !tbaa !95
  %22 = load i32, ptr @q_size, align 4, !tbaa !110
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @q_size, align 4, !tbaa !110
  %24 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %28 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.haifa_sched_info, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !301
  %31 = tail call ptr %30(ptr noundef nonnull %0, i32 noundef 0) #27
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.24, ptr noundef %31)
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.25, i32 noundef %1)
  br label %35

35:                                               ; preds = %26, %19
  %36 = load ptr, ptr @h_i_d, align 8
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !106
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %36, i64 0, i32 2, i64 %39, i32 4
  store i32 %6, ptr %40, align 8, !tbaa !178
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @advance_one_cycle() unnamed_addr #9 !prof !94 {
  %1 = load ptr, ptr @curr_state, align 8, !tbaa !95
  tail call void @advance_state(ptr noundef %1)
  %2 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %3 = icmp sgt i32 %2, 5
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %6 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 21, i64 1, ptr %5)
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @debug_ready_list() unnamed_addr #9 !prof !94 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %71, label %3

3:                                                ; preds = %0
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #27
  br label %6

6:                                                ; preds = %3, %5
  %7 = load ptr, ptr @ready, align 8, !tbaa !170
  %8 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %12 = sext i32 %11 to i64
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = icmp sgt i32 %11, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %6, %66
  %18 = phi i64 [ %67, %66 ], [ 0, %6 ]
  %19 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %20 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.haifa_sched_info, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !301
  %23 = getelementptr inbounds ptr, ptr %15, i64 %18
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = tail call ptr %22(ptr noundef %24, i32 noundef 0) #27
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = load ptr, ptr %23, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !106
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.VEC_int_base, ptr %26, i64 0, i32 2, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !110
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.31, ptr noundef %25, i32 noundef %32)
  %34 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %17
  %37 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %38 = load ptr, ptr @h_i_d, align 8
  %39 = load ptr, ptr %23, align 8, !tbaa !95
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !106
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %38, i64 0, i32 2, i64 %42, i32 17
  %44 = load i32, ptr %43, align 8, !tbaa !186
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.32, i32 noundef %44)
  br label %46

46:                                               ; preds = %36, %17
  %47 = load ptr, ptr @h_i_d, align 8
  %48 = load ptr, ptr %23, align 8, !tbaa !95
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !106
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %47, i64 0, i32 2, i64 %51, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !189
  %54 = load i32, ptr @clock_var, align 4, !tbaa !110
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %58 = sub nsw i32 %53, %54
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.33, i32 noundef %58)
  br label %60

60:                                               ; preds = %56, %46
  %61 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %65 = tail call i32 @fputc(i32 41, ptr %64)
  br label %66

66:                                               ; preds = %60, %63
  %67 = add nuw nsw i64 %18, 1
  %68 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %17, label %71, !llvm.loop !357

71:                                               ; preds = %66, %6, %0
  %72 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %73 = tail call i32 @fputc(i32 10, ptr %72)
  ret void
}

declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @ready_remove_first() unnamed_addr #9 !prof !94 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1430, ptr noundef nonnull @.str.3) #27
  br label %4

4:                                                ; preds = %0, %3
  %5 = load ptr, ptr @ready, align 8, !tbaa !170
  %6 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  br label %19

19:                                               ; preds = %16, %4
  %20 = icmp eq i32 %12, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  br label %24

24:                                               ; preds = %21, %19
  %25 = load ptr, ptr @h_i_d, align 8
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !106
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %25, i64 0, i32 2, i64 %28, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !178
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1439, ptr noundef nonnull @.str.3) #27
  br label %33

33:                                               ; preds = %24, %32
  %34 = load ptr, ptr @h_i_d, align 8
  %35 = load i32, ptr %26, align 8, !tbaa !106
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %34, i64 0, i32 2, i64 %36, i32 4
  store i32 -2, ptr %37, align 8, !tbaa !178
  ret ptr %10
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @move_insn(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #9 !prof !94 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %246, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = load ptr, ptr %13, align 8, !tbaa !241
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2298, ptr noundef nonnull @.str.3) #27
  br label %17

17:                                               ; preds = %9, %16
  %18 = load ptr, ptr %12, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !201
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %0) #27
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.common_sched_info_def, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !133
  switch i32 %28, label %47 [
    i32 1, label %29
    i32 2, label %48
  ]

29:                                               ; preds = %25
  %30 = load ptr, ptr @h_i_d, align 8
  %31 = load i32, ptr %5, align 8, !tbaa !106
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %30, i64 0, i32 2, i64 %32, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !328
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @cfun, align 8, !tbaa !95
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !293
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !295
  %42 = icmp ne ptr %34, %41
  %43 = icmp eq i32 %28, 2
  %44 = or i1 %43, %42
  br i1 %44, label %48, label %47

45:                                               ; preds = %29
  %46 = icmp eq i32 %28, 2
  br i1 %46, label %48, label %47

47:                                               ; preds = %36, %25, %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2311, ptr noundef nonnull @.str.3) #27
  br label %48

48:                                               ; preds = %25, %22, %36, %45, %47
  %49 = load ptr, ptr %6, align 8, !tbaa !106
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !106
  %52 = icmp eq ptr %51, %11
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2313, ptr noundef nonnull @.str.3) #27
  br label %54

54:                                               ; preds = %48, %53
  %55 = load ptr, ptr %6, align 8, !tbaa !106
  %56 = load ptr, ptr %12, align 8, !tbaa !106
  %57 = getelementptr inbounds %struct.rtl_bb_info, ptr %56, i64 0, i32 1
  store ptr %55, ptr %57, align 8, !tbaa !201
  br label %58

58:                                               ; preds = %54, %17
  %59 = phi i1 [ %24, %54 ], [ true, %17 ]
  %60 = load ptr, ptr %12, align 8, !tbaa !106
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !201
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2318, ptr noundef nonnull @.str.3) #27
  br label %65

65:                                               ; preds = %58, %64
  br i1 %59, label %101, label %66

66:                                               ; preds = %65
  %67 = icmp eq ptr %2, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2323, ptr noundef nonnull @.str.3) #27
  br label %69

69:                                               ; preds = %66, %68
  br label %70

70:                                               ; preds = %69, %77
  %71 = phi ptr [ %73, %77 ], [ %0, %69 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !106
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %79 = load i32, ptr %78, align 8, !tbaa !106
  %80 = icmp eq i32 %79, 10
  %81 = icmp eq ptr %73, %2
  %82 = or i1 %81, %80
  br i1 %82, label %83, label %70, !llvm.loop !358

83:                                               ; preds = %77, %70
  %84 = icmp ne ptr %73, %2
  %85 = add nsw i32 %75, -11
  %86 = icmp ult i32 %85, 2
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 2
  %90 = load ptr, ptr %89, align 8, !tbaa !106
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi ptr [ %90, %88 ], [ %73, %83 ]
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 13
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 1
  %98 = load i32, ptr %97, align 8, !tbaa !106
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2334, ptr noundef nonnull @.str.3) #27
  br label %101

101:                                              ; preds = %65, %100, %96
  %102 = phi ptr [ %92, %96 ], [ %92, %100 ], [ %0, %65 ]
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !106
  %105 = load ptr, ptr %6, align 8, !tbaa !106
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %104, ptr %106, align 8, !tbaa !106
  %107 = load ptr, ptr %6, align 8, !tbaa !106
  %108 = load ptr, ptr %103, align 8, !tbaa !106
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %107, ptr %109, align 8, !tbaa !106
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %111 = load ptr, ptr %110, align 8, !tbaa !106
  store ptr %111, ptr %103, align 8, !tbaa !106
  %112 = load ptr, ptr %110, align 8, !tbaa !106
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %102, ptr %113, align 8, !tbaa !106
  store ptr %0, ptr %110, align 8, !tbaa !106
  store ptr %1, ptr %6, align 8, !tbaa !106
  %114 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !106
  br i1 %59, label %239, label %116

116:                                              ; preds = %101
  %117 = load ptr, ptr %10, align 8, !tbaa !106
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !291
  %120 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %121 = getelementptr inbounds %struct.common_sched_info_def, ptr %120, i64 0, i32 4
  %122 = load i32, ptr %121, align 8, !tbaa !133
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %139, label %124

124:                                              ; preds = %116
  %125 = load ptr, ptr @h_i_d, align 8
  %126 = load i32, ptr %5, align 8, !tbaa !106
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %125, i64 0, i32 2, i64 %127, i32 11
  %129 = load ptr, ptr %128, align 8, !tbaa !328
  %130 = icmp eq ptr %129, null
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr @cfun, align 8, !tbaa !95
  %133 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !293
  %135 = getelementptr inbounds %struct.control_flow_graph, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !295
  %137 = icmp eq ptr %129, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %131, %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4969, ptr noundef nonnull @.str.3) #27
  br label %139

139:                                              ; preds = %138, %131, %116
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !106
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !201
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 13
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 1
  %149 = load i32, ptr %148, align 8, !tbaa !106
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %155, label %151

151:                                              ; preds = %147, %139
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !106
  %154 = getelementptr inbounds %struct.rtl_bb_info, ptr %153, i64 0, i32 1
  store ptr %143, ptr %154, align 8, !tbaa !201
  br label %155

155:                                              ; preds = %151, %147
  %156 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !106
  %158 = getelementptr inbounds %struct.rtl_bb_info, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !201
  %160 = load ptr, ptr %6, align 8, !tbaa !106
  %161 = icmp eq ptr %159, %160
  %162 = load ptr, ptr %140, align 8, !tbaa !106
  br i1 %161, label %163, label %167

163:                                              ; preds = %155
  %164 = load ptr, ptr %162, align 8, !tbaa !241
  %165 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1, i32 0, i32 0, i64 2
  %166 = load ptr, ptr %165, align 8, !tbaa !106
  br label %167

167:                                              ; preds = %155, %163
  %168 = phi ptr [ %166, %163 ], [ %159, %155 ]
  %169 = getelementptr inbounds %struct.rtl_bb_info, ptr %162, i64 0, i32 1
  store ptr %168, ptr %169, align 8, !tbaa !201
  %170 = load ptr, ptr %6, align 8, !tbaa !106
  %171 = load ptr, ptr %156, align 8, !tbaa !106
  %172 = getelementptr inbounds %struct.rtl_bb_info, ptr %171, i64 0, i32 1
  store ptr %170, ptr %172, align 8, !tbaa !201
  tail call void @update_bb_for_insn(ptr noundef %119) #27
  %173 = load ptr, ptr %10, align 8, !tbaa !106
  %174 = icmp eq ptr %173, %115
  br i1 %174, label %233, label %175

175:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %176 = load ptr, ptr %6, align 8, !tbaa !106
  %177 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !106
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !291
  tail call void @update_bb_for_insn(ptr noundef %173) #27
  %181 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %182 = getelementptr inbounds %struct.common_sched_info_def, ptr %181, i64 0, i32 4
  %183 = load i32, ptr %182, align 8, !tbaa !133
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %0) #27
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %195, label %220

188:                                              ; preds = %175
  %189 = load ptr, ptr @h_i_d, align 8
  %190 = load i32, ptr %5, align 8, !tbaa !106
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %189, i64 0, i32 2, i64 %191, i32 11
  %193 = load ptr, ptr %192, align 8, !tbaa !328
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %220

195:                                              ; preds = %188, %185
  %196 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %197 = getelementptr inbounds %struct.common_sched_info_def, ptr %196, i64 0, i32 4
  %198 = load i32, ptr %197, align 8, !tbaa !133
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !106
  %203 = getelementptr inbounds %struct.rtl_bb_info, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !201
  %205 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %204) #27
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %219, label %220

207:                                              ; preds = %195
  %208 = load ptr, ptr @h_i_d, align 8
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 7
  %210 = load ptr, ptr %209, align 8, !tbaa !106
  %211 = getelementptr inbounds %struct.rtl_bb_info, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !201
  %213 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %214 = load i32, ptr %213, align 8, !tbaa !106
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %208, i64 0, i32 2, i64 %215, i32 11
  %217 = load ptr, ptr %216, align 8, !tbaa !328
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %207, %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5003, ptr noundef nonnull @.str.3) #27
  br label %220

220:                                              ; preds = %185, %188, %200, %207, %219
  tail call void @unlink_block(ptr noundef %180) #27
  tail call void @link_block(ptr noundef %180, ptr noundef %178) #27
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !359
  store ptr %222, ptr %4, align 8, !tbaa !95
  store ptr null, ptr %221, align 8, !tbaa !359
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 1
  tail call fastcc void @move_succs(ptr noundef nonnull %223, ptr noundef %178)
  %224 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 1
  tail call fastcc void @move_succs(ptr noundef nonnull %224, ptr noundef %173)
  call fastcc void @move_succs(ptr noundef nonnull %4, ptr noundef %180)
  tail call void @df_mark_solutions_dirty() #27
  %225 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %226 = load ptr, ptr %225, align 8, !tbaa !360
  %227 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %228 = load i32, ptr %227, align 8, !tbaa !297
  %229 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 9
  %230 = load i32, ptr %229, align 8, !tbaa !297
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 9
  %232 = load i32, ptr %231, align 8, !tbaa !297
  tail call void %226(i32 noundef %228, i32 noundef %230, i32 noundef %232) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %233

233:                                              ; preds = %220, %167
  %234 = load ptr, ptr %156, align 8, !tbaa !106
  %235 = getelementptr inbounds %struct.rtl_bb_info, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !201
  %237 = icmp eq ptr %236, %1
  br i1 %237, label %239, label %238

238:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2357, ptr noundef nonnull @.str.3) #27
  br label %239

239:                                              ; preds = %238, %233, %101
  tail call void @df_insn_change_bb(ptr noundef %0, ptr noundef %115) #27
  %240 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 7
  %241 = load ptr, ptr %240, align 8, !tbaa !106
  %242 = getelementptr inbounds %struct.rtl_bb_info, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !201
  %244 = icmp eq ptr %243, %1
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  store ptr %0, ptr %242, align 8, !tbaa !201
  br label %246

246:                                              ; preds = %239, %245, %3
  %247 = load i32, ptr %0, align 8
  %248 = and i32 %247, -268435457
  store i32 %248, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @schedule_insn(ptr noundef %0) unnamed_addr #9 !prof !94 {
  %2 = alloca %struct._dep, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_head_def, align 8
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [27 x i32], align 16
  %8 = alloca %struct._sd_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  %11 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %10) #27
  call void @print_insn(ptr noundef nonnull %10, ptr noundef %0, i32 noundef 0) #27
  %14 = getelementptr inbounds [2048 x i8], ptr %10, i64 0, i64 40
  store i8 0, ptr %14, align 8, !tbaa !106
  %15 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %16 = load i32, ptr @clock_var, align 4, !tbaa !110
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %16, ptr noundef nonnull %10)
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !106
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = call i32 @recog(ptr noundef %23, ptr noundef %0, ptr noundef null) #27
  store i32 %24, ptr %18, align 8, !tbaa !106
  br label %25

25:                                               ; preds = %13, %21
  %26 = load i32, ptr %18, align 8, !tbaa !106
  %27 = icmp slt i32 %26, 0
  %28 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  br i1 %27, label %29, label %31

29:                                               ; preds = %25
  %30 = call i64 @fwrite(ptr nonnull @.str.36, i64 7, i64 1, ptr %28)
  br label %32

31:                                               ; preds = %25
  call void @print_reservation(ptr noundef %28, ptr noundef %0) #27
  br label %32

32:                                               ; preds = %31, %29
  %33 = load ptr, ptr @h_i_d, align 8
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !106
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %33, i64 0, i32 2, i64 %36, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  %39 = icmp eq ptr %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %42 = call i32 @fputc(i32 noundef 58, ptr noundef %41)
  %43 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40, %45
  %46 = phi i64 [ %59, %45 ], [ 0, %40 ]
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %48 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %46
  %49 = load i32, ptr %48, align 4, !tbaa !110
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  %53 = getelementptr inbounds %struct.reg_pressure_data, ptr %38, i64 %46
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = ashr i32 %54, 24
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.37, ptr noundef %52, i32 noundef %56, i32 noundef %57)
  %59 = add nuw nsw i64 %46, 1
  %60 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %45, label %63, !llvm.loop !361

63:                                               ; preds = %45, %40, %32
  %64 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %65 = call i32 @fputc(i32 noundef 10, ptr noundef %64)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %10) #27
  br label %66

66:                                               ; preds = %63, %1
  %67 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %115, label %69

69:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %7) #27
  %70 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = zext nneg i32 %70 to i64
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ 0, %72 ], [ %82, %74 ]
  %76 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !110
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !110
  %81 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 %75
  store i32 %80, ptr %81, align 4, !tbaa !110
  %82 = add nuw nsw i64 %75, 1
  %83 = icmp eq i64 %82, %73
  br i1 %83, label %84, label %74, !llvm.loop !362

84:                                               ; preds = %74, %69
  call fastcc void @update_register_pressure(ptr noundef %0)
  %85 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !110
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = zext nneg i32 %85 to i64
  %89 = zext nneg i32 %85 to i64
  %90 = load i32, ptr @ira_reg_class_cover, align 16, !tbaa !110
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !110
  %94 = load i32, ptr %7, align 16, !tbaa !110
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %87, %100
  %97 = phi i64 [ %98, %100 ], [ 0, %87 ]
  %98 = add nuw nsw i64 %97, 1
  %99 = icmp eq i64 %98, %89
  br i1 %99, label %114, label %100, !llvm.loop !363

100:                                              ; preds = %96
  %101 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %98
  %102 = load i32, ptr %101, align 4, !tbaa !110
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !110
  %106 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 %98
  %107 = load i32, ptr %106, align 4, !tbaa !110
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %96, label %109, !llvm.loop !363

109:                                              ; preds = %100
  %110 = icmp ult i64 %98, %88
  br label %111

111:                                              ; preds = %109, %87
  %112 = phi i1 [ %110, %109 ], [ %86, %87 ]
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  call fastcc void @setup_insn_max_reg_pressure(ptr noundef %0, i8 noundef zeroext 1)
  br label %114

114:                                              ; preds = %96, %84, %111, %113
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %7) #27
  br label %115

115:                                              ; preds = %114, %66
  %116 = call zeroext i8 @sd_lists_empty_p(ptr noundef %0, i32 noundef 3) #27
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1699, ptr noundef nonnull @.str.3) #27
  br label %119

119:                                              ; preds = %115, %118
  %120 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !110
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %156, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %0, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 7
  br i1 %125, label %156, label %126

126:                                              ; preds = %122
  store i32 3, ptr %8, align 8, !tbaa.struct !324
  %127 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %0, ptr %127, align 8, !tbaa.struct !325
  %128 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr @sd_iterator_start.null_link, ptr %128, align 8, !tbaa.struct !326
  %129 = getelementptr inbounds i8, ptr %8, i64 24
  store i8 0, ptr %129, align 8, !tbaa.struct !327
  %130 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %8, ptr noundef nonnull %9)
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %126, %147
  %133 = load ptr, ptr %9, align 8, !tbaa !95
  %134 = load ptr, ptr %133, align 8, !tbaa !141
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 7
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1708, ptr noundef nonnull @.str.3) #27
  br label %139

139:                                              ; preds = %132, %138
  %140 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %141 = icmp sgt i32 %140, 5
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %144 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !106
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.38, i32 noundef %145)
  br label %147

147:                                              ; preds = %142, %139
  %148 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !95
  %149 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %148) #27
  %150 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !106
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %149, ptr %152, align 8, !tbaa !106
  %153 = call zeroext i8 @df_insn_rescan(ptr noundef nonnull %134) #27
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %8) #27
  %154 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %8, ptr noundef nonnull %9)
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %132, !llvm.loop !364

156:                                              ; preds = %147, %126, %122, %119
  %157 = load ptr, ptr @h_i_d, align 8
  %158 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %159 = load i32, ptr %158, align 8, !tbaa !106
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %157, i64 0, i32 2, i64 %160, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !178
  %163 = icmp eq i32 %162, -2
  br i1 %163, label %165, label %164

164:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1734, ptr noundef nonnull @.str.3) #27
  br label %165

165:                                              ; preds = %156, %164
  %166 = load ptr, ptr @h_i_d, align 8
  %167 = load i32, ptr %158, align 8, !tbaa !106
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %166, i64 0, i32 2, i64 %168, i32 4
  store i32 -3, ptr %169, align 8, !tbaa !178
  %170 = load ptr, ptr @h_i_d, align 8
  %171 = load i32, ptr %158, align 8, !tbaa !106
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %170, i64 0, i32 2, i64 %172, i32 2
  %174 = load i32, ptr %173, align 8, !tbaa !189
  %175 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %176 = sub nsw i32 0, %175
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1737, ptr noundef nonnull @.str.3) #27
  br label %179

179:                                              ; preds = %165, %178
  %180 = load ptr, ptr @h_i_d, align 8
  %181 = load i32, ptr %158, align 8, !tbaa !106
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %180, i64 0, i32 2, i64 %182, i32 2
  %184 = load i32, ptr %183, align 8, !tbaa !189
  %185 = load i32, ptr @clock_var, align 4, !tbaa !110
  %186 = icmp sle i32 %184, %185
  %187 = load i32, ptr @flag_sched_stalled_insns, align 4
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1741, ptr noundef nonnull @.str.3) #27
  br label %191

191:                                              ; preds = %190, %179
  %192 = load i32, ptr @clock_var, align 4, !tbaa !110
  %193 = load ptr, ptr @h_i_d, align 8
  %194 = load i32, ptr %158, align 8, !tbaa !106
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %193, i64 0, i32 2, i64 %195, i32 2
  store i32 %192, ptr %196, align 8, !tbaa !189
  store i32 4, ptr %8, align 8, !tbaa.struct !324
  %197 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %0, ptr %197, align 8, !tbaa.struct !325
  %198 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr @sd_iterator_start.null_link, ptr %198, align 8, !tbaa.struct !326
  %199 = getelementptr inbounds i8, ptr %8, i64 24
  store i8 0, ptr %199, align 8, !tbaa.struct !327
  %200 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %8, ptr noundef nonnull %9)
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %375, label %202

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.bitmap_head_def, ptr %4, i64 0, i32 3
  %204 = getelementptr inbounds i8, ptr %5, i64 8
  %205 = getelementptr inbounds i8, ptr %5, i64 16
  %206 = getelementptr inbounds i8, ptr %5, i64 24
  br label %207

207:                                              ; preds = %202, %371
  %208 = phi i32 [ 0, %202 ], [ %372, %371 ]
  %209 = load ptr, ptr %9, align 8, !tbaa !95
  %210 = getelementptr inbounds %struct._dep, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !143
  call void @sd_resolve_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %8) #27
  %212 = load i32, ptr %0, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 7
  br i1 %214, label %215, label %219

215:                                              ; preds = %207
  %216 = load i32, ptr %211, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 7
  br i1 %218, label %219, label %371, !llvm.loop !365

219:                                              ; preds = %215, %207
  %220 = load ptr, ptr @h_i_d, align 8
  %221 = load i32, ptr %158, align 8, !tbaa !106
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %220, i64 0, i32 2, i64 %222, i32 11
  %224 = load ptr, ptr %223, align 8, !tbaa !328
  %225 = icmp eq ptr %224, null
  br i1 %225, label %233, label %226

226:                                              ; preds = %219
  %227 = load ptr, ptr @cfun, align 8, !tbaa !95
  %228 = getelementptr inbounds %struct.function, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !293
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !295
  %232 = icmp eq ptr %224, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %226, %219
  %234 = call i32 @try_ready(ptr noundef %211)
  %235 = icmp sgt i32 %234, -1
  br i1 %235, label %236, label %371

236:                                              ; preds = %233
  %237 = load i32, ptr %211, align 8
  %238 = and i32 %237, 268435456
  %239 = icmp eq i32 %238, 0
  %240 = call i32 @llvm.smax.i32(i32 %208, i32 %234)
  %241 = select i1 %239, i32 %208, i32 %240
  br label %371

242:                                              ; preds = %226
  %243 = call zeroext i8 @sd_lists_empty_p(ptr noundef nonnull %0, i32 noundef 4) #27
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1779, ptr noundef nonnull @.str.3) #27
  br label %246

246:                                              ; preds = %242, %245
  %247 = load ptr, ptr @h_i_d, align 8
  %248 = load i32, ptr %158, align 8, !tbaa !106
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %247, i64 0, i32 2, i64 %249, i32 11
  %251 = load ptr, ptr %250, align 8, !tbaa !328
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  store ptr null, ptr %3, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  store ptr null, ptr %203, align 8, !tbaa !347
  %252 = getelementptr inbounds %struct.basic_block_def, ptr %251, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %253 = load ptr, ptr %252, align 8, !tbaa !106
  %254 = load ptr, ptr %253, align 8, !tbaa !241
  %255 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1, i32 0, i32 0, i64 2
  %256 = load ptr, ptr %255, align 8, !tbaa !106
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 13
  br i1 %259, label %260, label %264

260:                                              ; preds = %246
  %261 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 1
  %262 = load i32, ptr %261, align 8, !tbaa !106
  %263 = icmp eq i32 %262, 10
  br i1 %263, label %265, label %264

264:                                              ; preds = %260, %246
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4732, ptr noundef nonnull @.str.3) #27
  br label %265

265:                                              ; preds = %264, %260
  %266 = load ptr, ptr %252, align 8, !tbaa !106
  %267 = getelementptr inbounds %struct.rtl_bb_info, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !201
  %269 = load i32, ptr %268, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 9
  br i1 %271, label %273, label %272

272:                                              ; preds = %265
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4734, ptr noundef nonnull @.str.3) #27
  br label %273

273:                                              ; preds = %272, %265
  %274 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1, i32 0, i32 0, i64 1
  %275 = load ptr, ptr %274, align 8, !tbaa !106
  br label %276

276:                                              ; preds = %318, %273
  %277 = phi ptr [ %275, %273 ], [ %320, %318 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  store i32 4, ptr %5, align 8, !tbaa.struct !324
  store ptr %277, ptr %204, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %205, align 8, !tbaa.struct !326
  store i8 0, ptr %206, align 8, !tbaa.struct !327
  %278 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %318, label %280

280:                                              ; preds = %276, %315
  %281 = load ptr, ptr %6, align 8, !tbaa !95
  %282 = getelementptr inbounds %struct._dep, ptr %281, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !143
  %284 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1
  %285 = getelementptr inbounds %struct.rtx_def, ptr %283, i64 0, i32 1, i32 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !106
  %287 = icmp eq ptr %286, %251
  br i1 %287, label %305, label %288

288:                                              ; preds = %280
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %5) #27
  %289 = load ptr, ptr @sched_luids, align 8
  %290 = load i32, ptr %284, align 8, !tbaa !106
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.VEC_int_base, ptr %289, i64 0, i32 2, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !110
  %294 = call i32 @bitmap_bit_p(ptr noundef nonnull %4, i32 noundef %293) #27
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %315

296:                                              ; preds = %288
  %297 = load ptr, ptr %3, align 8, !tbaa !95
  %298 = call ptr @alloc_INSN_LIST(ptr noundef %283, ptr noundef %297) #27
  store ptr %298, ptr %3, align 8, !tbaa !95
  %299 = load ptr, ptr @sched_luids, align 8
  %300 = load i32, ptr %284, align 8, !tbaa !106
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.VEC_int_base, ptr %299, i64 0, i32 2, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !110
  %304 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %4, i32 noundef %303) #27
  br label %315

305:                                              ; preds = %280
  %306 = getelementptr inbounds %struct._dep, ptr %281, i64 0, i32 3
  %307 = load i32, ptr %306, align 4, !tbaa !332
  %308 = and i32 %307, 117440512
  %309 = icmp eq i32 %308, 16777216
  br i1 %309, label %311, label %310

310:                                              ; preds = %305
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4759, ptr noundef nonnull @.str.3) #27
  br label %311

311:                                              ; preds = %310, %305
  %312 = load ptr, ptr %205, align 8, !tbaa !329
  %313 = load ptr, ptr %312, align 8, !tbaa !95
  %314 = getelementptr inbounds %struct._dep_link, ptr %313, i64 0, i32 1
  store ptr %314, ptr %205, align 8, !tbaa !329
  br label %315

315:                                              ; preds = %311, %296, %288
  %316 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %280, !llvm.loop !366

318:                                              ; preds = %315, %276
  %319 = getelementptr inbounds %struct.rtx_def, ptr %277, i64 0, i32 1, i32 0, i32 0, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  %321 = icmp eq ptr %320, %256
  br i1 %321, label %322, label %276, !llvm.loop !367

322:                                              ; preds = %318
  call void @bitmap_clear(ptr noundef nonnull %4) #27
  %323 = load ptr, ptr %3, align 8, !tbaa !106
  %324 = icmp eq ptr %323, null
  br i1 %324, label %333, label %325

325:                                              ; preds = %322, %325
  %326 = phi ptr [ %331, %325 ], [ %323, %322 ]
  %327 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !106
  %329 = call i32 @try_ready(ptr noundef %328)
  %330 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !106
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %325, !llvm.loop !368

333:                                              ; preds = %325, %322
  call void @free_INSN_LIST_list(ptr noundef nonnull %3) #27
  %334 = load ptr, ptr %252, align 8, !tbaa !106
  %335 = load ptr, ptr %334, align 8, !tbaa !241
  %336 = getelementptr inbounds %struct.rtl_bb_info, ptr %334, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !201
  %338 = load i32, ptr %335, align 8
  %339 = and i32 %338, 65535
  %340 = icmp eq i32 %339, 12
  br i1 %340, label %342, label %341

341:                                              ; preds = %333
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4780, ptr noundef nonnull @.str.3) #27
  br label %342

342:                                              ; preds = %341, %333
  %343 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1, i32 0, i32 0, i64 2
  %344 = load ptr, ptr %343, align 8, !tbaa !106
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 65535
  %347 = icmp eq i32 %346, 13
  br i1 %347, label %348, label %352

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 1
  %350 = load i32, ptr %349, align 8, !tbaa !106
  %351 = icmp eq i32 %350, 10
  br i1 %351, label %353, label %352

352:                                              ; preds = %348, %342
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4783, ptr noundef nonnull @.str.3) #27
  br label %353

353:                                              ; preds = %352, %348
  %354 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1, i32 0, i32 0, i64 2
  %355 = load ptr, ptr %354, align 8, !tbaa !106
  %356 = icmp eq ptr %355, %337
  br i1 %356, label %366, label %357

357:                                              ; preds = %353, %362
  %358 = phi ptr [ %364, %362 ], [ %355, %353 ]
  %359 = call fastcc i32 @dep_list_size(ptr noundef %358)
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #27
  call void @init_dep(ptr noundef nonnull %2, ptr noundef %358, ptr noundef %337, i32 noundef 12) #27
  call void @sd_add_dep(ptr noundef nonnull %2, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #27
  br label %362

362:                                              ; preds = %361, %357
  %363 = getelementptr inbounds %struct.rtx_def, ptr %358, i64 0, i32 1, i32 0, i32 0, i64 2
  %364 = load ptr, ptr %363, align 8, !tbaa !106
  %365 = icmp eq ptr %364, %337
  br i1 %365, label %366, label %357, !llvm.loop !369

366:                                              ; preds = %362, %353
  %367 = call zeroext i8 @sd_lists_empty_p(ptr noundef %337, i32 noundef 3) #27
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %366
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5119, ptr noundef nonnull @.str.3) #27
  br label %370

370:                                              ; preds = %366, %369
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %371

371:                                              ; preds = %233, %236, %370, %215
  %372 = phi i32 [ %208, %215 ], [ %208, %370 ], [ %241, %236 ], [ %208, %233 ]
  %373 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %8, ptr noundef nonnull %9)
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %207

375:                                              ; preds = %371, %191
  %376 = phi i32 [ 0, %191 ], [ %372, %371 ]
  %377 = load i32, ptr @issue_rate, align 4, !tbaa !110
  %378 = icmp sgt i32 %377, 1
  br i1 %378, label %379, label %401

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %381 = load ptr, ptr %380, align 8, !tbaa !106
  %382 = load i32, ptr %381, align 8
  %383 = and i32 %382, 65534
  %384 = icmp eq i32 %383, 24
  br i1 %384, label %401, label %385

385:                                              ; preds = %379
  %386 = load i32, ptr %0, align 8
  %387 = and i32 %386, 65535
  %388 = icmp eq i32 %387, 7
  br i1 %388, label %401, label %389

389:                                              ; preds = %385
  %390 = load i32, ptr @reload_completed, align 4, !tbaa !110
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %399, label %392

392:                                              ; preds = %389
  %393 = load i32, ptr @clock_var, align 4, !tbaa !110
  %394 = load i32, ptr @last_clock_var, align 4, !tbaa !110
  %395 = icmp sgt i32 %393, %394
  %396 = select i1 %395, i32 1179648, i32 0
  %397 = and i32 %386, -16711681
  %398 = or disjoint i32 %396, %397
  store i32 %398, ptr %0, align 8
  br label %399

399:                                              ; preds = %392, %389
  %400 = load i32, ptr @clock_var, align 4, !tbaa !110
  store i32 %400, ptr @last_clock_var, align 4, !tbaa !110
  br label %401

401:                                              ; preds = %379, %399, %385, %375
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  ret i32 %376
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @early_queue_to_ready(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !94 {
  %2 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  %3 = alloca i8, i64 %2, align 16
  %4 = load i32, ptr @flag_sched_stalled_insns, align 4, !tbaa !110
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %153, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %153, label %9

9:                                                ; preds = %6, %149
  %10 = phi i32 [ %150, %149 ], [ 0, %6 ]
  %11 = phi i32 [ %151, %149 ], [ 0, %6 ]
  %12 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %13 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %14 = add nsw i32 %13, %11
  %15 = and i32 %14, %7
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %12, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %149, label %20

20:                                               ; preds = %9
  %21 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %22 = icmp sgt i32 %21, 6
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.41, i32 noundef %13, i32 noundef %11)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %143
  %28 = phi i32 [ %145, %143 ], [ %10, %26 ]
  %29 = phi ptr [ %147, %143 ], [ null, %26 ]
  %30 = phi ptr [ %33, %143 ], [ %18, %26 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !106
  %34 = load ptr, ptr %31, align 8, !tbaa !106
  %35 = icmp ne ptr %34, null
  %36 = load i32, ptr @sched_verbose, align 4
  %37 = icmp sgt i32 %36, 6
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %41 = call i32 @print_rtl_single(ptr noundef %40, ptr noundef nonnull %34) #27
  br label %42

42:                                               ; preds = %39, %27
  %43 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %0, i64 %43, i1 false)
  %44 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !106
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !106
  %50 = call i32 @recog(ptr noundef %49, ptr noundef %34, ptr noundef null) #27
  store i32 %50, ptr %44, align 8, !tbaa !106
  br label %51

51:                                               ; preds = %42, %47
  %52 = load i32, ptr %44, align 8, !tbaa !106
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i32 @state_transition(ptr noundef nonnull %3, ptr noundef %34) #27
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi i32 [ %55, %54 ], [ 0, %51 ]
  %58 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %59 = icmp sgt i32 %58, 5
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.42, i32 noundef %57)
  br label %63

63:                                               ; preds = %60, %56
  %64 = icmp slt i32 %57, 0
  br i1 %64, label %65, label %143

65:                                               ; preds = %63
  %66 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 20), align 8, !tbaa !370
  %67 = icmp eq ptr %66, null
  %68 = load i32, ptr @flag_sched_stalled_insns_dep, align 4
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %115, label %71

71:                                               ; preds = %65, %108
  %72 = phi i32 [ %112, %108 ], [ %68, %65 ]
  %73 = phi ptr [ %111, %108 ], [ @last_scheduled_insn, %65 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !106
  %75 = icmp eq ptr %74, null
  br i1 %75, label %108, label %76

76:                                               ; preds = %71, %104
  %77 = phi ptr [ %106, %104 ], [ %74, %71 ]
  %78 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %79 = getelementptr inbounds %struct.haifa_sched_info, ptr %78, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !193
  %81 = icmp eq ptr %77, %80
  br i1 %81, label %101, label %82

82:                                               ; preds = %76
  %83 = load i32, ptr %77, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 13
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = call ptr @sd_find_dep_between(ptr noundef nonnull %77, ptr noundef %34, i8 noundef zeroext 1) #27
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = call i32 @dep_cost_1(ptr noundef nonnull %87, i32 noundef 0)
  %91 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 20), align 8, !tbaa !370
  %92 = load i32, ptr @flag_sched_stalled_insns_dep, align 4, !tbaa !110
  %93 = sub nsw i32 %92, %72
  %94 = call zeroext i8 %91(ptr noundef nonnull %87, i32 noundef %90, i32 noundef %93) #27
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89, %86, %82
  %97 = load i32, ptr %77, align 8
  %98 = and i32 %97, 16711680
  %99 = icmp eq i32 %98, 1179648
  %100 = select i1 %99, i32 5, i32 0
  br label %101

101:                                              ; preds = %96, %89, %76
  %102 = phi ptr [ null, %76 ], [ %77, %89 ], [ %77, %96 ]
  %103 = phi i32 [ 5, %76 ], [ 1, %89 ], [ %100, %96 ]
  switch i32 %103, label %115 [
    i32 0, label %104
    i32 5, label %108
  ]

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !106
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %76, !llvm.loop !371

108:                                              ; preds = %104, %101, %71
  %109 = phi ptr [ null, %71 ], [ null, %104 ], [ %102, %101 ]
  %110 = icmp eq ptr %109, null
  %111 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = add nsw i32 %72, -1
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %110, i1 true, i1 %113
  br i1 %114, label %115, label %71, !llvm.loop !372

115:                                              ; preds = %108, %101, %65
  %116 = phi i1 [ true, %65 ], [ false, %101 ], [ true, %108 ]
  %117 = phi i8 [ 1, %65 ], [ 0, %101 ], [ 1, %108 ]
  br i1 %116, label %118, label %143

118:                                              ; preds = %115
  %119 = load i32, ptr @q_size, align 4, !tbaa !110
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr @q_size, align 4, !tbaa !110
  call fastcc void @ready_add(ptr noundef %34, i8 noundef zeroext 0)
  %121 = icmp eq ptr %29, null
  %122 = load ptr, ptr @insn_queue, align 8
  %123 = load i32, ptr @q_ptr, align 4
  %124 = add nsw i32 %123, %11
  %125 = and i32 %124, %7
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %122, i64 %126
  %128 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = select i1 %121, ptr %127, ptr %128
  store ptr %33, ptr %129, align 8, !tbaa !106
  call void @free_INSN_LIST_node(ptr noundef nonnull %30) #27
  %130 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %139

132:                                              ; preds = %118
  %133 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %134 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %135 = getelementptr inbounds %struct.haifa_sched_info, ptr %134, i64 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !301
  %137 = call ptr %136(ptr noundef %34, i32 noundef 0) #27
  %138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.43, ptr noundef %137)
  br label %139

139:                                              ; preds = %132, %118
  %140 = add nsw i32 %28, 1
  %141 = load i32, ptr @flag_sched_stalled_insns, align 4, !tbaa !110
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %153, label %143

143:                                              ; preds = %115, %139, %63
  %144 = phi i8 [ 1, %139 ], [ %117, %115 ], [ 0, %63 ]
  %145 = phi i32 [ %140, %139 ], [ %28, %115 ], [ %28, %63 ]
  %146 = icmp eq i8 %144, 0
  %147 = select i1 %146, ptr %30, ptr %29
  %148 = icmp eq ptr %33, null
  br i1 %148, label %149, label %27, !llvm.loop !373

149:                                              ; preds = %143, %9
  %150 = phi i32 [ %10, %9 ], [ %145, %143 ]
  %151 = add nuw i32 %11, 1
  %152 = icmp eq i32 %11, %7
  br i1 %152, label %153, label %9, !llvm.loop !374

153:                                              ; preds = %149, %139, %6, %1
  %154 = phi i32 [ 0, %1 ], [ 0, %6 ], [ %140, %139 ], [ %150, %149 ]
  ret i32 %154
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ready_add(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !94 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  br i1 %3, label %5, label %36

5:                                                ; preds = %2
  %6 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = load ptr, ptr @ready, align 8, !tbaa !170
  %10 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = sext i32 %6 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = icmp sgt i32 %6, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #27
  br label %18

18:                                               ; preds = %8, %17
  %19 = load ptr, ptr @ready, align 8, !tbaa !170
  %20 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = shl nsw i64 %24, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %15, ptr nonnull align 8 %27, i64 %28, i1 false)
  %29 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  br label %31

31:                                               ; preds = %18, %5
  %32 = load ptr, ptr @ready, align 8, !tbaa !170
  %33 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %34 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %35 = sub nsw i32 %33, %34
  br label %71

36:                                               ; preds = %2
  %37 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %38 = add nsw i32 %37, -1
  %39 = icmp eq i32 %4, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @ready, align 8, !tbaa !170
  %45 = sext i32 %37 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = sext i32 %41 to i64
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = getelementptr inbounds ptr, ptr %49, i64 -1
  %51 = icmp sgt i32 %41, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #27
  br label %53

53:                                               ; preds = %43, %52
  %54 = load ptr, ptr @ready, align 8, !tbaa !170
  %55 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 0, %59
  %61 = getelementptr inbounds ptr, ptr %57, i64 %60
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = shl nsw i64 %59, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %50, ptr nonnull align 8 %62, i64 %63, i1 false)
  br label %64

64:                                               ; preds = %53, %40
  %65 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %66 = add nsw i32 %65, -2
  store i32 %66, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  br label %67

67:                                               ; preds = %64, %36
  %68 = load ptr, ptr @ready, align 8, !tbaa !170
  %69 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  br label %71

71:                                               ; preds = %67, %31
  %72 = phi i32 [ %70, %67 ], [ %35, %31 ]
  %73 = phi ptr [ %68, %67 ], [ %32, %31 ]
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  store ptr %0, ptr %75, align 8, !tbaa !95
  %76 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !284
  br label %84

84:                                               ; preds = %81, %71
  %85 = load ptr, ptr @h_i_d, align 8
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !106
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %85, i64 0, i32 2, i64 %88, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !178
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1418, ptr noundef nonnull @.str.3) #27
  br label %93

93:                                               ; preds = %84, %92
  %94 = load ptr, ptr @h_i_d, align 8
  %95 = load i32, ptr %86, align 8, !tbaa !106
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %94, i64 0, i32 2, i64 %96, i32 4
  store i32 -1, ptr %97, align 8, !tbaa !178
  ret void
}

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_init_luids(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #11 !prof !375 {
  %5 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @__const.sched_init_luids.ssi, i64 32, i1 false)
  store ptr %5, ptr @sched_scan_info, align 8, !tbaa !95
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %39, !prof !376

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !377
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !378

12:                                               ; preds = %9
  call void %10() #27, !prof !379
  br label %13

13:                                               ; preds = %12, %9
  br i1 %6, label %14, label %32, !prof !380

14:                                               ; preds = %13, %30
  %15 = phi i32 [ %31, %30 ], [ 0, %13 ]
  %16 = load i32, ptr %0, align 8, !tbaa !381
  %17 = icmp ugt i32 %16, %15
  br i1 %17, label %18, label %22, !prof !383

18:                                               ; preds = %14
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi ptr [ %21, %18 ], [ null, %14 ]
  br i1 %17, label %24, label %32, !prof !383

24:                                               ; preds = %22
  %25 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.sched_scan_info_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !384
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !385

29:                                               ; preds = %24
  call void %27(ptr noundef %23) #27, !prof !386
  br label %30

30:                                               ; preds = %29, %24
  %31 = add i32 %15, 1
  br label %14, !llvm.loop !387

32:                                               ; preds = %22, %13
  br i1 %7, label %33, label %39, !prof !388

33:                                               ; preds = %32
  %34 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.sched_scan_info_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !384
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call void %36(ptr noundef nonnull %1) #27
  br label %39

39:                                               ; preds = %38, %33, %32, %4
  %40 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.sched_scan_info_def, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !352
  %43 = icmp eq ptr %42, null
  br i1 %43, label %139, label %44, !prof !389

44:                                               ; preds = %39
  %45 = icmp eq ptr %42, @luids_extend_insn
  br i1 %45, label %46, label %80, !prof !390

46:                                               ; preds = %44
  %47 = call i32 @get_max_uid() #27
  %48 = add nsw i32 %47, 1
  %49 = load ptr, ptr @sched_luids, align 8, !tbaa !95
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !391

51:                                               ; preds = %46
  %52 = load i32, ptr %49, align 4, !tbaa !392
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %52, %51 ], [ 0, %46 ]
  br i1 %50, label %57, label %55, !prof !391

55:                                               ; preds = %53
  %56 = load i32, ptr %49, align 4, !tbaa !392
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %56, %55 ], [ 0, %53 ]
  %59 = sub nsw i32 %48, %58
  br i1 %50, label %66, label %60, !prof !391

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_int_base, ptr %49, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !394
  %63 = load i32, ptr %49, align 4, !tbaa !392
  %64 = sub i32 %62, %63
  %65 = icmp uge i32 %64, %59
  br label %68

66:                                               ; preds = %57
  %67 = icmp eq i32 %58, %48
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i1 [ %65, %60 ], [ %67, %66 ]
  br i1 %69, label %72, label %70, !prof !395

70:                                               ; preds = %68
  %71 = call ptr @vec_heap_o_reserve_exact(ptr noundef %49, i32 noundef %59, i64 noundef 8, i64 noundef 4) #27
  store ptr %71, ptr @sched_luids, align 8, !tbaa !95
  br label %72

72:                                               ; preds = %70, %68
  %73 = load ptr, ptr @sched_luids, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %48, ptr %73, align 4, !tbaa !392
  %74 = getelementptr inbounds %struct.VEC_int_base, ptr %73, i64 0, i32 2
  %75 = sext i32 %54 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  %77 = sub nsw i32 %48, %54
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %76, i8 0, i64 %79, i1 false), !prof !397
  br label %139

80:                                               ; preds = %44
  %81 = icmp eq ptr %42, @extend_h_i_d
  br i1 %81, label %82, label %138, !prof !398

82:                                               ; preds = %80
  %83 = call i32 @get_max_uid() #27
  %84 = add nsw i32 %83, 1
  %85 = load ptr, ptr @h_i_d, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !399

87:                                               ; preds = %82
  %88 = load i32, ptr %85, align 8, !tbaa !400
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi i32 [ %88, %87 ], [ 0, %82 ]
  %91 = sub i32 %84, %90
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %139, !prof !399

93:                                               ; preds = %89
  br i1 %86, label %100, label %94, !prof !402

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %85, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !403
  %97 = load i32, ptr %85, align 8, !tbaa !400
  %98 = sub i32 %96, %97
  %99 = icmp ult i32 %98, %91
  br i1 %99, label %100, label %139, !prof !402

100:                                              ; preds = %94, %93
  %101 = call i32 @get_max_uid() #27
  %102 = mul nsw i32 %101, 3
  %103 = sdiv i32 %102, 2
  %104 = load ptr, ptr @h_i_d, align 8, !tbaa !95
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106, !prof !402

106:                                              ; preds = %100
  %107 = load i32, ptr %104, align 8, !tbaa !400
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi i32 [ %107, %106 ], [ 0, %100 ]
  br i1 %105, label %112, label %110, !prof !402

110:                                              ; preds = %108
  %111 = load i32, ptr %104, align 8, !tbaa !400
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %111, %110 ], [ 0, %108 ]
  %114 = sub nsw i32 %103, %113
  br i1 %105, label %121, label %115, !prof !402

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %104, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !403
  %118 = load i32, ptr %104, align 8, !tbaa !400
  %119 = sub i32 %117, %118
  %120 = icmp uge i32 %119, %114
  br label %123

121:                                              ; preds = %112
  %122 = icmp eq i32 %113, %103
  br label %123

123:                                              ; preds = %121, %115
  %124 = phi i1 [ %120, %115 ], [ %122, %121 ]
  br i1 %124, label %127, label %125, !prof !404

125:                                              ; preds = %123
  %126 = call ptr @vec_heap_o_reserve_exact(ptr noundef %104, i32 noundef %114, i64 noundef 8, i64 noundef 96) #27
  store ptr %126, ptr @h_i_d, align 8, !tbaa !95
  br label %127

127:                                              ; preds = %125, %123
  %128 = load ptr, ptr @h_i_d, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %103, ptr %128, align 8, !tbaa !400
  %129 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %128, i64 0, i32 2
  %130 = sext i32 %109 to i64
  %131 = getelementptr inbounds %struct._haifa_insn_data, ptr %129, i64 %130
  %132 = sub nsw i32 %103, %109
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 96
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %131, i8 0, i64 %134, i1 false), !prof !405
  %135 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !406
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137, !prof !402

137:                                              ; preds = %127
  call void %135() #27
  br label %139

138:                                              ; preds = %80
  call void %42() #27, !prof !407
  br label %139

139:                                              ; preds = %138, %137, %127, %94, %89, %72, %39
  br i1 %6, label %140, label %175, !prof !376

140:                                              ; preds = %139, %173
  %141 = phi i32 [ %174, %173 ], [ 0, %139 ]
  %142 = load i32, ptr %0, align 8, !tbaa !381
  %143 = icmp ugt i32 %142, %141
  br i1 %143, label %144, label %148, !prof !383

144:                                              ; preds = %140
  %145 = zext i32 %141 to i64
  %146 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !95
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi ptr [ %147, %144 ], [ null, %140 ]
  br i1 %143, label %150, label %175, !prof !383

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !106
  %153 = load ptr, ptr %152, align 8, !tbaa !106
  %154 = icmp eq ptr %153, null
  br i1 %154, label %173, label %155, !prof !253

155:                                              ; preds = %150, %169
  %156 = phi ptr [ %171, %169 ], [ %153, %150 ]
  %157 = load ptr, ptr %151, align 8, !tbaa !106
  %158 = getelementptr inbounds %struct.rtl_bb_info, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !201
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !106
  %162 = icmp eq ptr %156, %161
  br i1 %162, label %173, label %163, !prof !408

163:                                              ; preds = %155
  %164 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %165 = getelementptr inbounds %struct.sched_scan_info_def, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !409
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168, !prof !410

168:                                              ; preds = %163
  call void %166(ptr noundef nonnull %156) #27, !prof !411
  br label %169

169:                                              ; preds = %168, %163
  %170 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1, i32 0, i32 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !106
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %155, !prof !412, !llvm.loop !413

173:                                              ; preds = %169, %155, %150
  %174 = add i32 %141, 1
  br label %140, !llvm.loop !414

175:                                              ; preds = %148, %139
  br i1 %7, label %176, label %199, !prof !415

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %178 = load ptr, ptr %177, align 8, !tbaa !106
  %179 = load ptr, ptr %178, align 8, !tbaa !106
  %180 = icmp eq ptr %179, null
  br i1 %180, label %199, label %181

181:                                              ; preds = %176, %195
  %182 = phi ptr [ %197, %195 ], [ %179, %176 ]
  %183 = load ptr, ptr %177, align 8, !tbaa !106
  %184 = getelementptr inbounds %struct.rtl_bb_info, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !201
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 2
  %187 = load ptr, ptr %186, align 8, !tbaa !106
  %188 = icmp eq ptr %182, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %181
  %190 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %191 = getelementptr inbounds %struct.sched_scan_info_def, ptr %190, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !409
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  call void %192(ptr noundef nonnull %182) #27
  br label %195

195:                                              ; preds = %194, %189
  %196 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 2
  %197 = load ptr, ptr %196, align 8, !tbaa !106
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %181, !llvm.loop !413

199:                                              ; preds = %195, %181, %176, %175
  %200 = icmp eq ptr %2, null
  br i1 %200, label %219, label %201, !prof !416

201:                                              ; preds = %199, %217
  %202 = phi i32 [ %218, %217 ], [ 0, %199 ]
  %203 = load i32, ptr %2, align 8, !tbaa !338
  %204 = icmp ugt i32 %203, %202
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = zext i32 %202 to i64
  %207 = getelementptr inbounds %struct.VEC_rtx_base, ptr %2, i64 0, i32 2, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !95
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi ptr [ %208, %205 ], [ null, %201 ]
  br i1 %204, label %211, label %219

211:                                              ; preds = %209
  %212 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %213 = getelementptr inbounds %struct.sched_scan_info_def, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !409
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  call void %214(ptr noundef %210) #27
  br label %217

217:                                              ; preds = %216, %211
  %218 = add i32 %202, 1
  br label %201, !llvm.loop !417

219:                                              ; preds = %209, %199
  %220 = icmp eq ptr %3, null
  br i1 %220, label %252, label %221, !prof !418

221:                                              ; preds = %219
  %222 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %223 = getelementptr inbounds %struct.sched_scan_info_def, ptr %222, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !409
  %225 = icmp eq ptr %224, null
  br i1 %225, label %252, label %226, !prof !419

226:                                              ; preds = %221
  %227 = icmp eq ptr %224, @luids_init_insn
  br i1 %227, label %228, label %251, !prof !420

228:                                              ; preds = %226
  %229 = load i32, ptr %3, align 8
  %230 = and i32 %229, 65535
  %231 = add nsw i32 %230, -7
  %232 = icmp ult i32 %231, 4
  br i1 %232, label %238, label %233, !prof !421

233:                                              ; preds = %228
  %234 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %235 = getelementptr inbounds %struct.common_sched_info_def, ptr %234, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !422
  %237 = call i32 %236(ptr noundef nonnull %3) #27, !prof !423
  br label %238

238:                                              ; preds = %233, %228
  %239 = phi i32 [ %237, %233 ], [ 1, %228 ]
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %241, label %244, !prof !421

241:                                              ; preds = %238
  %242 = load i32, ptr @sched_max_luid, align 4, !tbaa !110
  %243 = add nsw i32 %242, %239
  store i32 %243, ptr @sched_max_luid, align 4, !tbaa !110
  br label %244

244:                                              ; preds = %241, %238
  %245 = phi i32 [ %242, %241 ], [ -1, %238 ]
  %246 = load ptr, ptr @sched_luids, align 8
  %247 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !106
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.VEC_int_base, ptr %246, i64 0, i32 2, i64 %249
  store i32 %245, ptr %250, align 4, !tbaa !110
  br label %252

251:                                              ; preds = %226
  call void %224(ptr noundef nonnull %3) #27
  br label %252

252:                                              ; preds = %219, %221, %244, %251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @set_priorities(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 !prof !230 {
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !424
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %16, !prof !425

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -11
  %11 = icmp ult i32 %10, -4
  %12 = and i32 %8, 67174399
  %13 = icmp eq i32 %12, 7
  %14 = or i1 %13, %11
  br i1 %14, label %15, label %16, !prof !426

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3309, ptr noundef nonnull @.str.3) #27
  br label %16

16:                                               ; preds = %7, %15, %2
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !106
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %52, label %20, !prof !232

20:                                               ; preds = %16, %46
  %21 = phi ptr [ %50, %46 ], [ %1, %16 ]
  %22 = phi i32 [ %48, %46 ], [ %5, %16 ]
  %23 = phi i32 [ %47, %46 ], [ 0, %16 ]
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %46, !prof !427

28:                                               ; preds = %20
  %29 = add nsw i32 %23, 1
  %30 = tail call fastcc i32 @priority(ptr noundef nonnull %21)
  %31 = load ptr, ptr @h_i_d, align 8
  %32 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !106
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %31, i64 0, i32 2, i64 %34, i32 7
  %36 = load i8, ptr %35, align 1, !tbaa !166
  %37 = icmp sgt i8 %36, 0
  br i1 %37, label %39, label %38, !prof !427

38:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3322, ptr noundef nonnull @.str.3) #27
  br label %39

39:                                               ; preds = %28, %38
  %40 = load ptr, ptr @h_i_d, align 8
  %41 = load i32, ptr %32, align 8, !tbaa !106
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %40, i64 0, i32 2, i64 %42, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !167
  %45 = tail call i32 @llvm.smax.i32(i32 %22, i32 %44)
  br label %46

46:                                               ; preds = %39, %20
  %47 = phi i32 [ %23, %20 ], [ %29, %39 ]
  %48 = phi i32 [ %22, %20 ], [ %45, %39 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !106
  %51 = icmp eq ptr %50, %18
  br i1 %51, label %52, label %20, !prof !428, !llvm.loop !429

52:                                               ; preds = %46, %16
  %53 = phi i32 [ 0, %16 ], [ %47, %46 ]
  %54 = phi i32 [ %5, %16 ], [ %48, %46 ]
  %55 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %56 = getelementptr inbounds %struct.haifa_sched_info, ptr %55, i64 0, i32 13
  store i32 %54, ptr %56, align 4, !tbaa !424
  ret i32 %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @priority(ptr noundef %0) unnamed_addr #11 !prof !430 !PGOFuncName !431 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._dep, align 8
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %414, !prof !432

11:                                               ; preds = %1
  %12 = load ptr, ptr @h_i_d, align 8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !106
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %12, i64 0, i32 2, i64 %15, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !178
  %18 = icmp eq i32 %17, -3
  br i1 %18, label %19, label %20, !prof !433

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1010, ptr noundef nonnull @.str.3) #27
  br label %20

20:                                               ; preds = %11, %19
  %21 = load ptr, ptr @h_i_d, align 8
  %22 = load i32, ptr %13, align 8, !tbaa !106
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %21, i64 0, i32 2, i64 %23, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !166
  %26 = icmp sgt i8 %25, 0
  br i1 %26, label %408, label %27, !prof !434

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %28 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !110
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32, !prof !427

30:                                               ; preds = %27
  %31 = tail call i32 @sd_lists_size(ptr noundef %0, i32 noundef 4) #27
  br label %71

32:                                               ; preds = %27
  store i32 4, ptr %2, align 8, !tbaa.struct !324
  %33 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %0, ptr %33, align 8, !tbaa.struct !325
  %34 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr @sd_iterator_start.null_link, ptr %34, align 8, !tbaa.struct !326
  %35 = getelementptr inbounds i8, ptr %2, i64 24
  store i8 0, ptr %35, align 8, !tbaa.struct !327
  %36 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %32, %56
  %39 = phi i32 [ %58, %56 ], [ 0, %32 ]
  %40 = phi i32 [ %57, %56 ], [ 0, %32 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !95
  %42 = getelementptr inbounds %struct._dep, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !143
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 7
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = add nsw i32 %40, 1
  br label %56

49:                                               ; preds = %38
  %50 = load ptr, ptr %41, align 8, !tbaa !141
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp ne i32 %52, 7
  %54 = zext i1 %53 to i32
  %55 = add nsw i32 %39, %54
  br label %56

56:                                               ; preds = %49, %47
  %57 = phi i32 [ %48, %47 ], [ %40, %49 ]
  %58 = phi i32 [ %39, %47 ], [ %55, %49 ]
  %59 = load ptr, ptr %34, align 8, !tbaa !329
  %60 = load ptr, ptr %59, align 8, !tbaa !95
  %61 = getelementptr inbounds %struct._dep_link, ptr %60, i64 0, i32 1
  store ptr %61, ptr %34, align 8, !tbaa !329
  %62 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %38, !llvm.loop !435

64:                                               ; preds = %56, %32
  %65 = phi i32 [ 0, %32 ], [ %57, %56 ]
  %66 = phi i32 [ 0, %32 ], [ %58, %56 ]
  %67 = add nsw i32 %66, %65
  %68 = call i32 @sd_lists_size(ptr noundef %0, i32 noundef 4) #27
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 997, ptr noundef nonnull @.str.3) #27
  br label %71

71:                                               ; preds = %30, %64, %70
  %72 = phi i32 [ %31, %30 ], [ %66, %64 ], [ %66, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  %73 = icmp eq i32 %72, 0
  %74 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %75 = getelementptr inbounds %struct.common_sched_info_def, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !133
  %77 = icmp eq i32 %76, 4
  br i1 %73, label %78, label %125, !prof !436

78:                                               ; preds = %71
  br i1 %77, label %79, label %93, !prof !135

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !106
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87, !prof !136

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !106
  %86 = call i32 @recog(ptr noundef %85, ptr noundef %0, ptr noundef null) #27
  store i32 %86, ptr %80, align 8, !tbaa !106
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, ptr %80, align 8, !tbaa !106
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %341, label %90, !prof !137

90:                                               ; preds = %87
  %91 = call i32 @insn_default_latency(ptr noundef %0) #27
  %92 = call i32 @llvm.smax.i32(i32 %91, i32 0)
  br label %341

93:                                               ; preds = %78
  %94 = load ptr, ptr @h_i_d, align 8
  %95 = load i32, ptr %13, align 8, !tbaa !106
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %94, i64 0, i32 2, i64 %96, i32 5
  %98 = load i16, ptr %97, align 4, !tbaa !138
  %99 = sext i16 %98 to i32
  %100 = icmp slt i16 %98, 0
  br i1 %100, label %101, label %341

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !106
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !106
  %108 = call i32 @recog(ptr noundef %107, ptr noundef %0, ptr noundef null) #27
  store i32 %108, ptr %102, align 8, !tbaa !106
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, ptr %102, align 8, !tbaa !106
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load ptr, ptr @h_i_d, align 8
  %114 = load i32, ptr %13, align 8, !tbaa !106
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %113, i64 0, i32 2, i64 %115, i32 5
  store i16 0, ptr %116, align 4, !tbaa !138
  br label %341

117:                                              ; preds = %109
  %118 = call i32 @insn_default_latency(ptr noundef %0) #27
  %119 = call i32 @llvm.smax.i32(i32 %118, i32 0)
  %120 = trunc i32 %119 to i16
  %121 = load ptr, ptr @h_i_d, align 8
  %122 = load i32, ptr %13, align 8, !tbaa !106
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %121, i64 0, i32 2, i64 %123, i32 5
  store i16 %120, ptr %124, align 4, !tbaa !138
  br label %341

125:                                              ; preds = %71
  br i1 %77, label %132, label %126, !prof !437

126:                                              ; preds = %125
  %127 = load ptr, ptr @h_i_d, align 8
  %128 = load i32, ptr %13, align 8, !tbaa !106
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %127, i64 0, i32 2, i64 %129, i32 11
  %131 = load ptr, ptr %130, align 8, !tbaa !328
  br label %132

132:                                              ; preds = %125, %126
  %133 = phi ptr [ %131, %126 ], [ null, %125 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135, !prof !437

135:                                              ; preds = %132
  %136 = load ptr, ptr @cfun, align 8, !tbaa !95
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !293
  %139 = getelementptr inbounds %struct.control_flow_graph, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !295
  %141 = icmp eq ptr %133, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135, %132
  %143 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %153

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !106
  %147 = load ptr, ptr %146, align 8, !tbaa !241
  %148 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1, i32 0, i32 0, i64 2
  %149 = getelementptr inbounds %struct.rtl_bb_info, ptr %146, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !201
  %151 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !106
  br label %153

153:                                              ; preds = %144, %142
  %154 = phi ptr [ %0, %142 ], [ %152, %144 ]
  %155 = phi ptr [ %143, %142 ], [ %148, %144 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !106
  %157 = getelementptr inbounds i8, ptr %4, i64 8
  %158 = getelementptr inbounds i8, ptr %4, i64 16
  %159 = getelementptr inbounds i8, ptr %4, i64 24
  br label %160

160:                                              ; preds = %336, %153
  %161 = phi ptr [ %154, %153 ], [ %339, %336 ]
  %162 = phi i32 [ -1, %153 ], [ %337, %336 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i32 4, ptr %4, align 8, !tbaa.struct !324
  store ptr %161, ptr %157, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %158, align 8, !tbaa.struct !326
  store i8 0, ptr %159, align 8, !tbaa.struct !327
  %163 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %336, label %165, !prof !438

165:                                              ; preds = %160
  %166 = icmp eq ptr %161, %0
  br label %167

167:                                              ; preds = %165, %329
  %168 = phi i32 [ %162, %165 ], [ %330, %329 ]
  %169 = load ptr, ptr %5, align 8, !tbaa !95
  %170 = getelementptr inbounds %struct._dep, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !143
  %172 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !106
  %174 = icmp eq ptr %173, %133
  br i1 %174, label %329, label %175, !prof !439

175:                                              ; preds = %167
  %176 = load i32, ptr %171, align 8
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 7
  br i1 %178, label %329, label %179, !prof !439

179:                                              ; preds = %175
  %180 = load ptr, ptr %169, align 8, !tbaa !141
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 7
  br i1 %183, label %329, label %184, !prof !439

184:                                              ; preds = %179
  %185 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %186 = getelementptr inbounds %struct.haifa_sched_info, ptr %185, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !440
  %188 = call i32 %187(ptr noundef nonnull %171, ptr noundef nonnull %180) #27, !prof !441
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %329, label %190, !prof !442

190:                                              ; preds = %184
  %191 = load ptr, ptr @sched_deps_info, align 8, !tbaa !95
  %192 = getelementptr inbounds %struct.sched_deps_info_def, ptr %191, i64 0, i32 12
  %193 = load i8, ptr %192, align 8
  %194 = and i8 %193, 4
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %207, label %196, !prof !443

196:                                              ; preds = %190
  %197 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %198 = getelementptr inbounds %struct.spec_info_def, ptr %197, i64 0, i32 4
  %199 = load i32, ptr %198, align 8, !tbaa !313
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct._dep, ptr %169, i64 0, i32 3
  %204 = load i32, ptr %203, align 4, !tbaa !332
  %205 = and i32 %204, 16777215
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %329

207:                                              ; preds = %202, %196, %190
  br i1 %166, label %208, label %322, !prof !443

208:                                              ; preds = %207
  %209 = load ptr, ptr %169, align 8, !tbaa !141
  %210 = load ptr, ptr %170, align 8, !tbaa !143
  %211 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 1, i32 1
  %212 = load i32, ptr %211, align 8, !tbaa !106
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218, !prof !144

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !106
  %217 = call i32 @recog(ptr noundef %216, ptr noundef %210, ptr noundef null) #27
  store i32 %217, ptr %211, align 8, !tbaa !106
  br label %218

218:                                              ; preds = %214, %208
  %219 = load i32, ptr %211, align 8, !tbaa !106
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %229, !prof !144

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 1, i32 1
  %223 = load i32, ptr %222, align 8, !tbaa !106
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %324, !prof !145

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !106
  %228 = call i32 @recog(ptr noundef %227, ptr noundef %209, ptr noundef null) #27
  store i32 %228, ptr %222, align 8, !tbaa !106
  br label %324

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct._dep, ptr %169, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !146
  %232 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %233 = getelementptr inbounds %struct.common_sched_info_def, ptr %232, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !133
  %235 = icmp eq i32 %234, 4
  br i1 %235, label %236, label %250, !prof !135

236:                                              ; preds = %229
  %237 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 1, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !106
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %244, !prof !136

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !106
  %243 = call i32 @recog(ptr noundef %242, ptr noundef %209, ptr noundef null) #27
  store i32 %243, ptr %237, align 8, !tbaa !106
  br label %244

244:                                              ; preds = %240, %236
  %245 = load i32, ptr %237, align 8, !tbaa !106
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %283, label %247, !prof !137

247:                                              ; preds = %244
  %248 = call i32 @insn_default_latency(ptr noundef %209) #27
  %249 = call i32 @llvm.smax.i32(i32 %248, i32 0)
  br label %283

250:                                              ; preds = %229
  %251 = load ptr, ptr @h_i_d, align 8
  %252 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !106
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %251, i64 0, i32 2, i64 %254, i32 5
  %256 = load i16, ptr %255, align 4, !tbaa !138
  %257 = sext i16 %256 to i32
  %258 = icmp slt i16 %256, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 1, i32 1
  %261 = load i32, ptr %260, align 8, !tbaa !106
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 1
  %265 = load ptr, ptr %264, align 8, !tbaa !106
  %266 = call i32 @recog(ptr noundef %265, ptr noundef %209, ptr noundef null) #27
  store i32 %266, ptr %260, align 8, !tbaa !106
  br label %267

267:                                              ; preds = %263, %259
  %268 = load i32, ptr %260, align 8, !tbaa !106
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load ptr, ptr @h_i_d, align 8
  %272 = load i32, ptr %252, align 8, !tbaa !106
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %271, i64 0, i32 2, i64 %273, i32 5
  store i16 0, ptr %274, align 4, !tbaa !138
  br label %283

275:                                              ; preds = %267
  %276 = call i32 @insn_default_latency(ptr noundef %209) #27
  %277 = call i32 @llvm.smax.i32(i32 %276, i32 0)
  %278 = trunc i32 %277 to i16
  %279 = load ptr, ptr @h_i_d, align 8
  %280 = load i32, ptr %252, align 8, !tbaa !106
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %279, i64 0, i32 2, i64 %281, i32 5
  store i16 %278, ptr %282, align 4, !tbaa !138
  br label %283

283:                                              ; preds = %275, %270, %250, %247, %244
  %284 = phi i32 [ %249, %247 ], [ 0, %270 ], [ 0, %244 ], [ %277, %275 ], [ %257, %250 ]
  %285 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 1, i32 1
  %286 = load i32, ptr %285, align 8, !tbaa !106
  %287 = icmp sgt i32 %286, -1
  br i1 %287, label %288, label %299, !prof !147

288:                                              ; preds = %283
  switch i32 %231, label %294 [
    i32 12, label %299
    i32 11, label %289
  ], !prof !148

289:                                              ; preds = %288
  %290 = call i32 @insn_default_latency(ptr noundef %209) #27
  %291 = call i32 @insn_default_latency(ptr noundef %210) #27
  %292 = sub nsw i32 %290, %291
  %293 = call i32 @llvm.smax.i32(i32 %292, i32 1)
  br label %299

294:                                              ; preds = %288
  %295 = call i32 @bypass_p(ptr noundef %209) #27
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297, !prof !149

297:                                              ; preds = %294
  %298 = call i32 @insn_latency(ptr noundef %209, ptr noundef %210) #27
  br label %299

299:                                              ; preds = %297, %294, %289, %288, %283
  %300 = phi i32 [ %293, %289 ], [ %298, %297 ], [ %284, %294 ], [ %284, %283 ], [ 0, %288 ]
  %301 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 21), align 8, !tbaa !150
  %302 = icmp eq ptr %301, null
  br i1 %302, label %305, label %303, !prof !162

303:                                              ; preds = %299
  %304 = call i32 %301(ptr noundef %210, i32 noundef %231, ptr noundef %209, i32 noundef %300, i32 noundef 0) #27
  br label %319

305:                                              ; preds = %299
  %306 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1), align 8, !tbaa !163
  %307 = icmp eq ptr %306, null
  br i1 %307, label %319, label %308, !prof !164

308:                                              ; preds = %305
  %309 = call ptr @alloc_INSN_LIST(ptr noundef null, ptr noundef null) #27
  %310 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %309, ptr %310, align 8, !tbaa !106
  %311 = load i32, ptr %230, align 8, !tbaa !146
  %312 = load i32, ptr %309, align 8
  %313 = shl i32 %311, 16
  %314 = and i32 %313, 16711680
  %315 = and i32 %312, -16711681
  %316 = or disjoint i32 %315, %314
  store i32 %316, ptr %309, align 8
  %317 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1), align 8, !tbaa !163
  %318 = call i32 %317(ptr noundef %210, ptr noundef nonnull %309, ptr noundef %209, i32 noundef %300) #27, !prof !444
  call void @free_INSN_LIST_node(ptr noundef nonnull %309) #27
  br label %319

319:                                              ; preds = %308, %305, %303
  %320 = phi i32 [ %304, %303 ], [ %318, %308 ], [ %300, %305 ]
  %321 = call i32 @llvm.smax.i32(i32 %320, i32 0)
  br label %324

322:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  call void @init_dep(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %171, i32 noundef 12) #27
  %323 = call i32 @dep_cost_1(ptr noundef nonnull %6, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  br label %324

324:                                              ; preds = %319, %225, %221, %322
  %325 = phi i32 [ %323, %322 ], [ %321, %319 ], [ 0, %221 ], [ 0, %225 ]
  %326 = call fastcc i32 @priority(ptr noundef nonnull %171)
  %327 = add nsw i32 %326, %325
  %328 = call i32 @llvm.smax.i32(i32 %327, i32 %168)
  br label %329

329:                                              ; preds = %202, %184, %179, %175, %324, %167
  %330 = phi i32 [ %168, %167 ], [ %328, %324 ], [ %168, %175 ], [ %168, %179 ], [ %168, %184 ], [ %168, %202 ]
  %331 = load ptr, ptr %158, align 8, !tbaa !329
  %332 = load ptr, ptr %331, align 8, !tbaa !95
  %333 = getelementptr inbounds %struct._dep_link, ptr %332, i64 0, i32 1
  store ptr %333, ptr %158, align 8, !tbaa !329
  %334 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %167, !prof !445, !llvm.loop !446

336:                                              ; preds = %329, %160
  %337 = phi i32 [ %162, %160 ], [ %330, %329 ]
  %338 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1, i32 0, i32 0, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  %340 = icmp eq ptr %339, %156
  br i1 %340, label %341, label %160, !prof !437, !llvm.loop !447

341:                                              ; preds = %336, %117, %112, %93, %90, %87
  %342 = phi i32 [ %92, %90 ], [ 0, %112 ], [ 0, %87 ], [ %119, %117 ], [ %99, %93 ], [ %337, %336 ]
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %398, !prof !448

344:                                              ; preds = %341
  %345 = icmp eq i32 %342, -1
  br i1 %345, label %347, label %346, !prof !449

346:                                              ; preds = %344
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1090, ptr noundef nonnull @.str.3) #27
  br label %347

347:                                              ; preds = %344, %346
  %348 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %349 = getelementptr inbounds %struct.common_sched_info_def, ptr %348, i64 0, i32 4
  %350 = load i32, ptr %349, align 8, !tbaa !133
  %351 = icmp eq i32 %350, 4
  br i1 %351, label %352, label %366, !prof !135

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %354 = load i32, ptr %353, align 8, !tbaa !106
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %360, !prof !136

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !106
  %359 = call i32 @recog(ptr noundef %358, ptr noundef %0, ptr noundef null) #27
  store i32 %359, ptr %353, align 8, !tbaa !106
  br label %360

360:                                              ; preds = %356, %352
  %361 = load i32, ptr %353, align 8, !tbaa !106
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %398, label %363, !prof !137

363:                                              ; preds = %360
  %364 = call i32 @insn_default_latency(ptr noundef %0) #27
  %365 = call i32 @llvm.smax.i32(i32 %364, i32 0)
  br label %398

366:                                              ; preds = %347
  %367 = load ptr, ptr @h_i_d, align 8
  %368 = load i32, ptr %13, align 8, !tbaa !106
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %367, i64 0, i32 2, i64 %369, i32 5
  %371 = load i16, ptr %370, align 4, !tbaa !138
  %372 = sext i16 %371 to i32
  %373 = icmp slt i16 %371, 0
  br i1 %373, label %374, label %398

374:                                              ; preds = %366
  %375 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %376 = load i32, ptr %375, align 8, !tbaa !106
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %380 = load ptr, ptr %379, align 8, !tbaa !106
  %381 = call i32 @recog(ptr noundef %380, ptr noundef %0, ptr noundef null) #27
  store i32 %381, ptr %375, align 8, !tbaa !106
  br label %382

382:                                              ; preds = %378, %374
  %383 = load i32, ptr %375, align 8, !tbaa !106
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %382
  %386 = load ptr, ptr @h_i_d, align 8
  %387 = load i32, ptr %13, align 8, !tbaa !106
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %386, i64 0, i32 2, i64 %388, i32 5
  store i16 0, ptr %389, align 4, !tbaa !138
  br label %398

390:                                              ; preds = %382
  %391 = call i32 @insn_default_latency(ptr noundef %0) #27
  %392 = call i32 @llvm.smax.i32(i32 %391, i32 0)
  %393 = trunc i32 %392 to i16
  %394 = load ptr, ptr @h_i_d, align 8
  %395 = load i32, ptr %13, align 8, !tbaa !106
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %394, i64 0, i32 2, i64 %396, i32 5
  store i16 %393, ptr %397, align 4, !tbaa !138
  br label %398

398:                                              ; preds = %390, %385, %366, %363, %360, %341
  %399 = phi i32 [ %342, %341 ], [ %365, %363 ], [ 0, %385 ], [ 0, %360 ], [ %392, %390 ], [ %372, %366 ]
  %400 = load ptr, ptr @h_i_d, align 8
  %401 = load i32, ptr %13, align 8, !tbaa !106
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %400, i64 0, i32 2, i64 %402, i32 1
  store i32 %399, ptr %403, align 4, !tbaa !167
  %404 = load ptr, ptr @h_i_d, align 8
  %405 = load i32, ptr %13, align 8, !tbaa !106
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %404, i64 0, i32 2, i64 %406, i32 7
  store i8 1, ptr %407, align 1, !tbaa !166
  br label %408

408:                                              ; preds = %398, %20
  %409 = load ptr, ptr @h_i_d, align 8
  %410 = load i32, ptr %13, align 8, !tbaa !106
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %409, i64 0, i32 2, i64 %411, i32 1
  %413 = load i32, ptr %412, align 4, !tbaa !167
  br label %414

414:                                              ; preds = %1, %408
  %415 = phi i32 [ %413, %408 ], [ 0, %1 ]
  ret i32 %415
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @setup_sched_dump() local_unnamed_addr #18 !prof !450 {
  %1 = load i32, ptr @sched_verbose_param, align 4, !tbaa !110
  store i32 %1, ptr @sched_verbose, align 4, !tbaa !110
  %2 = icmp eq i32 %1, 0
  %3 = load ptr, ptr @dump_file, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false, !prof !402
  %6 = select i1 %5, i32 1, i32 %1, !prof !404
  store i32 %6, ptr @sched_verbose, align 4
  %7 = icmp slt i32 %1, 10
  %8 = select i1 %7, i1 %4, i1 false, !prof !402
  %9 = load ptr, ptr @stderr, align 8
  %10 = select i1 %8, ptr %3, ptr %9, !prof !404
  store ptr %10, ptr @sched_dump, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sched_init() local_unnamed_addr #19 !prof !450 {
  %1 = load i32, ptr @flag_sched_pressure, align 4, !tbaa !110
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !402
  br i1 %5, label %13, label %6, !prof !402

6:                                                ; preds = %0
  %7 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.common_sched_info_def, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !133
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i8
  store i8 %11, ptr @sched_pressure_p, align 1, !tbaa !106
  br i1 %10, label %12, label %14

12:                                               ; preds = %6
  tail call void @ira_setup_eliminable_regset() #27
  br label %14

13:                                               ; preds = %0
  store i8 0, ptr @sched_pressure_p, align 1, !tbaa !106
  br label %14

14:                                               ; preds = %13, %12, %6
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 32), align 8, !tbaa !451
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17, !prof !402

17:                                               ; preds = %14
  store ptr @spec_info_var, ptr @spec_info, align 8, !tbaa !95
  tail call void %15(ptr noundef nonnull @spec_info_var) #27
  %18 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %19 = load i32, ptr %18, align 8, !tbaa !452
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !95
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 84, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !287
  %25 = mul nsw i32 %24, 62
  %26 = sdiv i32 %25, 100
  %27 = getelementptr inbounds %struct.spec_info_def, ptr %18, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !453
  %28 = mul nsw i32 %24, 100
  %29 = getelementptr inbounds %struct.spec_info_def, ptr %18, i64 0, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !454
  br label %32

30:                                               ; preds = %17
  store ptr null, ptr @spec_info, align 8, !tbaa !95
  br label %32

31:                                               ; preds = %14
  store ptr null, ptr @spec_info, align 8, !tbaa !95
  br label %32

32:                                               ; preds = %21, %30, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 2), align 8, !tbaa !455
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !404

35:                                               ; preds = %32
  %36 = tail call i32 %33() #27, !prof !456
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i32 [ %36, %35 ], [ 1, %32 ]
  store i32 %38, ptr @issue_rate, align 4, !tbaa !110
  %39 = load i32, ptr @cached_issue_rate, align 4, !tbaa !110
  %40 = icmp eq i32 %39, %38
  br i1 %40, label %42, label %41, !prof !457

41:                                               ; preds = %37
  store i32 %38, ptr @cached_issue_rate, align 4, !tbaa !110
  store i32 0, ptr @cached_first_cycle_multipass_dfa_lookahead, align 4, !tbaa !110
  br label %42

42:                                               ; preds = %41, %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 17), align 8, !tbaa !312
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !404

45:                                               ; preds = %42
  %46 = tail call i32 %43() #27, !prof !458
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %42 ]
  store i32 %48, ptr @dfa_lookahead, align 4, !tbaa !110
  %49 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 11), align 8, !tbaa !459
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !402

51:                                               ; preds = %47
  tail call void %49() #27
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 13), align 8, !tbaa !460
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !402

55:                                               ; preds = %52
  tail call void %53() #27
  br label %56

56:                                               ; preds = %55, %52
  tail call void @dfa_start() #27
  %57 = tail call i32 @state_size() #27
  %58 = sext i32 %57 to i64
  store i64 %58, ptr @dfa_state_size, align 8, !tbaa !209
  tail call void @init_alias_analysis() #27
  %59 = tail call i32 @df_set_flags(i32 noundef 1) #27
  tail call void @df_note_add_problem() #27
  %60 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %61 = getelementptr inbounds %struct.common_sched_info_def, ptr %60, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !133
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %65, !prof !404

64:                                               ; preds = %56
  tail call void @df_rd_add_problem() #27
  tail call void @df_chain_add_problem(i32 noundef 3) #27
  br label %65

65:                                               ; preds = %64, %56
  tail call void @df_analyze() #27
  %66 = load i32, ptr @reload_completed, align 4, !tbaa !110
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !404

68:                                               ; preds = %65
  %69 = tail call i32 @df_clear_flags(i32 noundef 1) #27
  br label %70

70:                                               ; preds = %68, %65
  tail call void @regstat_compute_calls_crossed() #27
  %71 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 6), align 8, !tbaa !461
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73, !prof !402

73:                                               ; preds = %70
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %75 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %76 = tail call i32 @get_max_uid() #27
  %77 = add nsw i32 %76, 1
  tail call void %71(ptr noundef %74, i32 noundef %75, i32 noundef %77) #27
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %115, label %81, !prof !402

81:                                               ; preds = %78
  %82 = tail call i32 @max_reg_num() #27
  %83 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %84 = icmp eq i32 %83, 0
  %85 = load ptr, ptr @sched_dump, align 8
  %86 = select i1 %84, ptr null, ptr %85
  tail call void @ira_set_pseudo_classes(ptr noundef %86) #27
  %87 = sext i32 %82 to i64
  %88 = shl nsw i64 %87, 2
  %89 = tail call ptr @xmalloc(i64 noundef %88) #27
  store ptr %89, ptr @sched_regno_cover_class, align 8, !tbaa !95
  %90 = icmp sgt i32 %82, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %81
  %92 = zext nneg i32 %82 to i64
  br label %93

93:                                               ; preds = %91, %105
  %94 = phi i64 [ 0, %91 ], [ %109, %105 ]
  %95 = icmp ult i64 %94, 53
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %94
  %98 = load i32, ptr %97, align 4, !tbaa !110
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !110
  br label %105

102:                                              ; preds = %93
  %103 = trunc i64 %94 to i32
  %104 = tail call i32 @reg_cover_class(i32 noundef %103) #27
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi i32 [ %101, %96 ], [ %104, %102 ]
  %107 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !95
  %108 = getelementptr inbounds i32, ptr %107, i64 %94
  store i32 %106, ptr %108, align 4, !tbaa !110
  %109 = add nuw nsw i64 %94, 1
  %110 = icmp eq i64 %109, %92
  br i1 %110, label %111, label %93, !llvm.loop !462

111:                                              ; preds = %105, %81
  %112 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #27
  store ptr %112, ptr @curr_reg_live, align 8, !tbaa !95
  %113 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #27
  store ptr %113, ptr @saved_reg_live, align 8, !tbaa !95
  %114 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #27
  store ptr %114, ptr @region_ref_regs, align 8, !tbaa !95
  br label %115

115:                                              ; preds = %111, %78
  %116 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  %117 = tail call ptr @xmalloc(i64 noundef %116) #27
  store ptr %117, ptr @curr_state, align 8, !tbaa !95
  ret void
}

declare void @ira_setup_eliminable_regset() local_unnamed_addr #3

declare void @dfa_start() local_unnamed_addr #3

declare i32 @state_size() local_unnamed_addr #3

declare void @init_alias_analysis() local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_note_add_problem() local_unnamed_addr #3

declare void @df_rd_add_problem() local_unnamed_addr #3

declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #3

declare void @regstat_compute_calls_crossed() local_unnamed_addr #3

declare i32 @get_max_uid() local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @reg_cover_class(i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @haifa_sched_init() local_unnamed_addr #9 !prof !94 {
  %1 = alloca %struct.sched_scan_info_def, align 8
  %2 = alloca %struct.sched_scan_info_def, align 8
  %3 = load i32, ptr @sched_verbose_param, align 4, !tbaa !110
  store i32 %3, ptr @sched_verbose, align 4, !tbaa !110
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr @dump_file, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  %8 = select i1 %7, i32 1, i32 %3
  store i32 %8, ptr @sched_verbose, align 4
  %9 = icmp slt i32 %3, 10
  %10 = select i1 %9, i1 %6, i1 false
  %11 = load ptr, ptr @stderr, align 8
  %12 = select i1 %10, ptr %5, ptr %11
  store ptr %12, ptr @sched_dump, align 8, !tbaa !95
  tail call void @sched_init()
  %13 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %0
  %16 = load ptr, ptr @sched_deps_info, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.sched_deps_info_def, ptr %16, i64 0, i32 12
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 6
  store i8 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %15, %0
  %21 = load ptr, ptr @cfun, align 8, !tbaa !95
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !293
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !463
  %26 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %25) #27
  tail call fastcc void @sched_extend_bb()
  %27 = load ptr, ptr @cfun, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !293
  %30 = load ptr, ptr %29, align 8, !tbaa !464
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !291
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !295
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %53, label %36

36:                                               ; preds = %20
  %37 = load i32, ptr %26, align 8, !tbaa !381
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i32 [ %37, %36 ], [ %41, %38 ]
  %40 = phi ptr [ %32, %36 ], [ %45, %38 ]
  %41 = add i32 %39, 1
  %42 = zext i32 %39 to i64
  %43 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %26, i64 0, i32 2, i64 %42
  store ptr %40, ptr %43, align 8, !tbaa !95
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !291
  %46 = load ptr, ptr @cfun, align 8, !tbaa !95
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !293
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !295
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %38, !llvm.loop !465

52:                                               ; preds = %38
  store i32 %41, ptr %26, align 8, !tbaa !381
  br label %53

53:                                               ; preds = %52, %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.sched_init_luids.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %2, ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  call void @sched_deps_init(i8 noundef zeroext 1) #27
  %54 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !406
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void %54() #27
  br label %57

57:                                               ; preds = %53, %56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @__const.haifa_init_h_i_d.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %1, ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #27
  %58 = icmp eq ptr %26, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  call void @free(ptr noundef %26)
  br label %60

60:                                               ; preds = %57, %59
  store ptr @haifa_init_only_bb, ptr @sched_init_only_bb, align 8, !tbaa !95
  store ptr @sched_split_block_1, ptr @sched_split_block, align 8, !tbaa !95
  store ptr @sched_create_empty_bb_1, ptr @sched_create_empty_bb, align 8, !tbaa !95
  store i8 0, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !106
  store i32 0, ptr @nr_be_in_control, align 4, !tbaa !110
  store i32 0, ptr @nr_be_in_data, align 4, !tbaa !110
  store i32 0, ptr @nr_begin_control, align 4, !tbaa !110
  store i32 0, ptr @nr_begin_data, align 4, !tbaa !110
  store ptr null, ptr @before_recovery, align 8, !tbaa !95
  store ptr null, ptr @after_recovery, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sched_init_bbs() local_unnamed_addr #19 !prof !450 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !95
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !295
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !466
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !201
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !404

15:                                               ; preds = %0
  %16 = load i32, ptr %11, align 8
  %17 = and i32 %16, 65534
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %36, label %19, !prof !404

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %36, label %23, !prof !402

23:                                               ; preds = %19, %0
  %24 = tail call ptr @emit_note_after(i32 noundef 0, ptr noundef %11) #27
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !106
  %26 = load ptr, ptr @cfun, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !293
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !295
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !466
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  store ptr %11, ptr %35, align 8, !tbaa !201
  br label %36

36:                                               ; preds = %15, %19, %23
  ret void
}

declare void @sched_deps_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_extend_target() local_unnamed_addr #11 !prof !467 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !406
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !468

3:                                                ; preds = %0
  tail call void %1() #27
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @haifa_init_h_i_d(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #11 !prof !469 {
  %5 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @__const.haifa_init_h_i_d.ssi, i64 32, i1 false)
  store ptr %5, ptr @sched_scan_info, align 8, !tbaa !95
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %39, !prof !376

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !377
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !378

12:                                               ; preds = %9
  call void %10() #27, !prof !470
  br label %13

13:                                               ; preds = %12, %9
  br i1 %6, label %14, label %32, !prof !380

14:                                               ; preds = %13, %30
  %15 = phi i32 [ %31, %30 ], [ 0, %13 ]
  %16 = load i32, ptr %0, align 8, !tbaa !381
  %17 = icmp ugt i32 %16, %15
  br i1 %17, label %18, label %22, !prof !383

18:                                               ; preds = %14
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi ptr [ %21, %18 ], [ null, %14 ]
  br i1 %17, label %24, label %32, !prof !383

24:                                               ; preds = %22
  %25 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.sched_scan_info_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !384
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !385

29:                                               ; preds = %24
  call void %27(ptr noundef %23) #27, !prof !471
  br label %30

30:                                               ; preds = %29, %24
  %31 = add i32 %15, 1
  br label %14, !llvm.loop !387

32:                                               ; preds = %22, %13
  br i1 %7, label %33, label %39, !prof !388

33:                                               ; preds = %32
  %34 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.sched_scan_info_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !384
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call void %36(ptr noundef nonnull %1) #27
  br label %39

39:                                               ; preds = %38, %33, %32, %4
  %40 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.sched_scan_info_def, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !352
  %43 = icmp eq ptr %42, null
  br i1 %43, label %139, label %44, !prof !389

44:                                               ; preds = %39
  %45 = icmp eq ptr %42, @luids_extend_insn
  br i1 %45, label %46, label %80, !prof !390

46:                                               ; preds = %44
  %47 = call i32 @get_max_uid() #27
  %48 = add nsw i32 %47, 1
  %49 = load ptr, ptr @sched_luids, align 8, !tbaa !95
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !391

51:                                               ; preds = %46
  %52 = load i32, ptr %49, align 4, !tbaa !392
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %52, %51 ], [ 0, %46 ]
  br i1 %50, label %57, label %55, !prof !391

55:                                               ; preds = %53
  %56 = load i32, ptr %49, align 4, !tbaa !392
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %56, %55 ], [ 0, %53 ]
  %59 = sub nsw i32 %48, %58
  br i1 %50, label %66, label %60, !prof !391

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_int_base, ptr %49, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !394
  %63 = load i32, ptr %49, align 4, !tbaa !392
  %64 = sub i32 %62, %63
  %65 = icmp uge i32 %64, %59
  br label %68

66:                                               ; preds = %57
  %67 = icmp eq i32 %58, %48
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i1 [ %65, %60 ], [ %67, %66 ]
  br i1 %69, label %72, label %70, !prof !395

70:                                               ; preds = %68
  %71 = call ptr @vec_heap_o_reserve_exact(ptr noundef %49, i32 noundef %59, i64 noundef 8, i64 noundef 4) #27
  store ptr %71, ptr @sched_luids, align 8, !tbaa !95
  br label %72

72:                                               ; preds = %70, %68
  %73 = load ptr, ptr @sched_luids, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %48, ptr %73, align 4, !tbaa !392
  %74 = getelementptr inbounds %struct.VEC_int_base, ptr %73, i64 0, i32 2
  %75 = sext i32 %54 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  %77 = sub nsw i32 %48, %54
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %76, i8 0, i64 %79, i1 false), !prof !472
  br label %139

80:                                               ; preds = %44
  %81 = icmp eq ptr %42, @extend_h_i_d
  br i1 %81, label %82, label %138, !prof !398

82:                                               ; preds = %80
  %83 = call i32 @get_max_uid() #27
  %84 = add nsw i32 %83, 1
  %85 = load ptr, ptr @h_i_d, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !399

87:                                               ; preds = %82
  %88 = load i32, ptr %85, align 8, !tbaa !400
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi i32 [ %88, %87 ], [ 0, %82 ]
  %91 = sub i32 %84, %90
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %139, !prof !399

93:                                               ; preds = %89
  br i1 %86, label %100, label %94, !prof !402

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %85, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !403
  %97 = load i32, ptr %85, align 8, !tbaa !400
  %98 = sub i32 %96, %97
  %99 = icmp ult i32 %98, %91
  br i1 %99, label %100, label %139, !prof !402

100:                                              ; preds = %94, %93
  %101 = call i32 @get_max_uid() #27
  %102 = mul nsw i32 %101, 3
  %103 = sdiv i32 %102, 2
  %104 = load ptr, ptr @h_i_d, align 8, !tbaa !95
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106, !prof !402

106:                                              ; preds = %100
  %107 = load i32, ptr %104, align 8, !tbaa !400
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi i32 [ %107, %106 ], [ 0, %100 ]
  br i1 %105, label %112, label %110, !prof !402

110:                                              ; preds = %108
  %111 = load i32, ptr %104, align 8, !tbaa !400
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %111, %110 ], [ 0, %108 ]
  %114 = sub nsw i32 %103, %113
  br i1 %105, label %121, label %115, !prof !402

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %104, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !403
  %118 = load i32, ptr %104, align 8, !tbaa !400
  %119 = sub i32 %117, %118
  %120 = icmp uge i32 %119, %114
  br label %123

121:                                              ; preds = %112
  %122 = icmp eq i32 %113, %103
  br label %123

123:                                              ; preds = %121, %115
  %124 = phi i1 [ %120, %115 ], [ %122, %121 ]
  br i1 %124, label %127, label %125, !prof !404

125:                                              ; preds = %123
  %126 = call ptr @vec_heap_o_reserve_exact(ptr noundef %104, i32 noundef %114, i64 noundef 8, i64 noundef 96) #27
  store ptr %126, ptr @h_i_d, align 8, !tbaa !95
  br label %127

127:                                              ; preds = %125, %123
  %128 = load ptr, ptr @h_i_d, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %103, ptr %128, align 8, !tbaa !400
  %129 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %128, i64 0, i32 2
  %130 = sext i32 %109 to i64
  %131 = getelementptr inbounds %struct._haifa_insn_data, ptr %129, i64 %130
  %132 = sub nsw i32 %103, %109
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 96
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %131, i8 0, i64 %134, i1 false), !prof !473
  %135 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !406
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137, !prof !402

137:                                              ; preds = %127
  call void %135() #27
  br label %139

138:                                              ; preds = %80
  call void %42() #27, !prof !474
  br label %139

139:                                              ; preds = %138, %137, %127, %94, %89, %72, %39
  br i1 %6, label %140, label %175, !prof !376

140:                                              ; preds = %139, %173
  %141 = phi i32 [ %174, %173 ], [ 0, %139 ]
  %142 = load i32, ptr %0, align 8, !tbaa !381
  %143 = icmp ugt i32 %142, %141
  br i1 %143, label %144, label %148, !prof !383

144:                                              ; preds = %140
  %145 = zext i32 %141 to i64
  %146 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !95
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi ptr [ %147, %144 ], [ null, %140 ]
  br i1 %143, label %150, label %175, !prof !383

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !106
  %153 = load ptr, ptr %152, align 8, !tbaa !106
  %154 = icmp eq ptr %153, null
  br i1 %154, label %173, label %155, !prof !253

155:                                              ; preds = %150, %169
  %156 = phi ptr [ %171, %169 ], [ %153, %150 ]
  %157 = load ptr, ptr %151, align 8, !tbaa !106
  %158 = getelementptr inbounds %struct.rtl_bb_info, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !201
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !106
  %162 = icmp eq ptr %156, %161
  br i1 %162, label %173, label %163, !prof !408

163:                                              ; preds = %155
  %164 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %165 = getelementptr inbounds %struct.sched_scan_info_def, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !409
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168, !prof !410

168:                                              ; preds = %163
  call void %166(ptr noundef nonnull %156) #27, !prof !475
  br label %169

169:                                              ; preds = %168, %163
  %170 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1, i32 0, i32 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !106
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %155, !prof !412, !llvm.loop !413

173:                                              ; preds = %169, %155, %150
  %174 = add i32 %141, 1
  br label %140, !llvm.loop !414

175:                                              ; preds = %148, %139
  br i1 %7, label %176, label %199, !prof !415

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %178 = load ptr, ptr %177, align 8, !tbaa !106
  %179 = load ptr, ptr %178, align 8, !tbaa !106
  %180 = icmp eq ptr %179, null
  br i1 %180, label %199, label %181

181:                                              ; preds = %176, %195
  %182 = phi ptr [ %197, %195 ], [ %179, %176 ]
  %183 = load ptr, ptr %177, align 8, !tbaa !106
  %184 = getelementptr inbounds %struct.rtl_bb_info, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !201
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 2
  %187 = load ptr, ptr %186, align 8, !tbaa !106
  %188 = icmp eq ptr %182, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %181
  %190 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %191 = getelementptr inbounds %struct.sched_scan_info_def, ptr %190, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !409
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  call void %192(ptr noundef nonnull %182) #27
  br label %195

195:                                              ; preds = %194, %189
  %196 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 2
  %197 = load ptr, ptr %196, align 8, !tbaa !106
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %181, !llvm.loop !413

199:                                              ; preds = %195, %181, %176, %175
  %200 = icmp eq ptr %2, null
  br i1 %200, label %219, label %201, !prof !416

201:                                              ; preds = %199, %217
  %202 = phi i32 [ %218, %217 ], [ 0, %199 ]
  %203 = load i32, ptr %2, align 8, !tbaa !338
  %204 = icmp ugt i32 %203, %202
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = zext i32 %202 to i64
  %207 = getelementptr inbounds %struct.VEC_rtx_base, ptr %2, i64 0, i32 2, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !95
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi ptr [ %208, %205 ], [ null, %201 ]
  br i1 %204, label %211, label %219

211:                                              ; preds = %209
  %212 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %213 = getelementptr inbounds %struct.sched_scan_info_def, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !409
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  call void %214(ptr noundef %210) #27
  br label %217

217:                                              ; preds = %216, %211
  %218 = add i32 %202, 1
  br label %201, !llvm.loop !417

219:                                              ; preds = %209, %199
  %220 = icmp eq ptr %3, null
  br i1 %220, label %252, label %221, !prof !418

221:                                              ; preds = %219
  %222 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %223 = getelementptr inbounds %struct.sched_scan_info_def, ptr %222, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !409
  %225 = icmp eq ptr %224, null
  br i1 %225, label %252, label %226, !prof !419

226:                                              ; preds = %221
  %227 = icmp eq ptr %224, @luids_init_insn
  br i1 %227, label %228, label %251, !prof !420

228:                                              ; preds = %226
  %229 = load i32, ptr %3, align 8
  %230 = and i32 %229, 65535
  %231 = add nsw i32 %230, -7
  %232 = icmp ult i32 %231, 4
  br i1 %232, label %238, label %233, !prof !421

233:                                              ; preds = %228
  %234 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %235 = getelementptr inbounds %struct.common_sched_info_def, ptr %234, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !422
  %237 = call i32 %236(ptr noundef nonnull %3) #27, !prof !476
  br label %238

238:                                              ; preds = %233, %228
  %239 = phi i32 [ %237, %233 ], [ 1, %228 ]
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %241, label %244, !prof !421

241:                                              ; preds = %238
  %242 = load i32, ptr @sched_max_luid, align 4, !tbaa !110
  %243 = add nsw i32 %242, %239
  store i32 %243, ptr @sched_max_luid, align 4, !tbaa !110
  br label %244

244:                                              ; preds = %241, %238
  %245 = phi i32 [ %242, %241 ], [ -1, %238 ]
  %246 = load ptr, ptr @sched_luids, align 8
  %247 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !106
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.VEC_int_base, ptr %246, i64 0, i32 2, i64 %249
  store i32 %245, ptr %250, align 4, !tbaa !110
  br label %252

251:                                              ; preds = %226
  call void %224(ptr noundef nonnull %3) #27
  br label %252

252:                                              ; preds = %219, %221, %244, %251
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @haifa_init_only_bb(ptr noundef %0, ptr noundef %1) #9 !prof !94 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5515, ptr noundef nonnull @.str.3) #27
  br label %5

5:                                                ; preds = %2, %4
  tail call fastcc void @sched_extend_bb()
  %6 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.common_sched_info_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !477
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void %8(ptr noundef %0, ptr noundef %1) #27
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @sched_split_block_1(ptr noundef %0, ptr noundef %1) #9 !prof !94 {
  %3 = tail call ptr @split_block(ptr noundef %0, ptr noundef %1) #27
  %4 = load ptr, ptr %3, align 8, !tbaa !478
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5531, ptr noundef nonnull @.str.3) #27
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !479
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @sched_create_empty_bb_1(ptr noundef %0) #9 !prof !94 {
  %2 = tail call ptr @create_empty_bb(ptr noundef %0) #27
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local void @haifa_sched_finish() local_unnamed_addr #9 !prof !94 {
  store ptr null, ptr @sched_create_empty_bb, align 8, !tbaa !95
  store ptr null, ptr @sched_split_block, align 8, !tbaa !95
  store ptr null, ptr @sched_init_only_bb, align 8, !tbaa !95
  %1 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %2 = icmp eq ptr %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.spec_info_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !334
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @reload_completed, align 4, !tbaa !110
  %9 = icmp eq i32 %8, 0
  %10 = tail call ptr @current_function_name() #27
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef %10)
  %12 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.spec_info_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !334
  %15 = select i1 %9, i32 98, i32 97
  %16 = load i32, ptr @nr_begin_data, align 4, !tbaa !110
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %16)
  %18 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct.spec_info_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !334
  %21 = load i32, ptr @nr_be_in_data, align 4, !tbaa !110
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %15, i32 noundef %21)
  %23 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %24 = getelementptr inbounds %struct.spec_info_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !334
  %26 = load i32, ptr @nr_begin_control, align 4, !tbaa !110
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef %15, i32 noundef %26)
  %28 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.spec_info_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !334
  %31 = load i32, ptr @nr_be_in_control, align 4, !tbaa !110
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.17, i32 noundef %15, i32 noundef %31)
  br label %33

33:                                               ; preds = %7, %3, %0
  tail call void @sched_deps_finish() #27
  %34 = load ptr, ptr @sched_luids, align 8, !tbaa !95
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @free(ptr noundef %34)
  br label %37

37:                                               ; preds = %33, %36
  store ptr null, ptr @sched_luids, align 8, !tbaa !95
  store i32 1, ptr @sched_max_luid, align 4, !tbaa !110
  store ptr null, ptr @current_sched_info, align 8, !tbaa !95
  tail call void @sched_finish()
  ret void
}

declare ptr @current_function_name() local_unnamed_addr #3

declare void @sched_deps_finish() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn uwtable
define dso_local void @sched_finish_luids() local_unnamed_addr #20 !prof !469 {
  %1 = load ptr, ptr @sched_luids, align 8, !tbaa !95
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !480

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  br label %4

4:                                                ; preds = %0, %3
  store ptr null, ptr @sched_luids, align 8, !tbaa !95
  store i32 1, ptr @sched_max_luid, align 4, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @sched_finish() local_unnamed_addr #19 !prof !450 {
  br label %1

1:                                                ; preds = %28, %0
  %2 = phi i64 [ %29, %28 ], [ 0, %0 ]
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !481

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !400
  %7 = zext i32 %6 to i64
  %8 = icmp uge i64 %2, %7
  %9 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %3, i64 0, i32 2, i64 %2
  %10 = select i1 %8, ptr null, ptr %9, !prof !482
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = phi i1 [ true, %1 ], [ %8, %5 ]
  br i1 %13, label %30, label %14, !prof !482

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._haifa_insn_data, ptr %12, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !483

18:                                               ; preds = %14
  tail call void @free(ptr noundef %16)
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct._haifa_insn_data, ptr %12, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !484
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !485

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.reg_use_data, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !486
  tail call void @free(ptr noundef %24)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !prof !485, !llvm.loop !487

28:                                               ; preds = %23, %19
  %29 = add nuw i64 %2, 1
  br label %1, !llvm.loop !488

30:                                               ; preds = %11
  br i1 %4, label %32, label %31, !prof !404

31:                                               ; preds = %30
  tail call void @free(ptr noundef %3)
  br label %32

32:                                               ; preds = %30, %31
  store ptr null, ptr @h_i_d, align 8, !tbaa !95
  %33 = load i8, ptr @sched_pressure_p, align 1, !tbaa !106
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35, !prof !402

35:                                               ; preds = %32
  %36 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !95
  tail call void @free(ptr noundef %36)
  %37 = load ptr, ptr @region_ref_regs, align 8, !tbaa !95
  tail call void @bitmap_obstack_free(ptr noundef %37) #27
  store ptr null, ptr @region_ref_regs, align 8, !tbaa !95
  %38 = load ptr, ptr @saved_reg_live, align 8, !tbaa !95
  tail call void @bitmap_obstack_free(ptr noundef %38) #27
  store ptr null, ptr @saved_reg_live, align 8, !tbaa !95
  %39 = load ptr, ptr @curr_reg_live, align 8, !tbaa !95
  tail call void @bitmap_obstack_free(ptr noundef %39) #27
  store ptr null, ptr @curr_reg_live, align 8, !tbaa !95
  br label %40

40:                                               ; preds = %35, %32
  %41 = load ptr, ptr @curr_state, align 8, !tbaa !95
  tail call void @free(ptr noundef %41)
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 7), align 8, !tbaa !489
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !402

44:                                               ; preds = %40
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %46 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  tail call void %42(ptr noundef %45, i32 noundef %46) #27
  br label %47

47:                                               ; preds = %44, %40
  tail call void @end_alias_analysis() #27
  tail call void @regstat_free_calls_crossed() #27
  tail call void @dfa_finish() #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @haifa_finish_h_i_d() local_unnamed_addr #19 !prof !94 {
  br label %1

1:                                                ; preds = %28, %0
  %2 = phi i64 [ %29, %28 ], [ 0, %0 ]
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !481

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !400
  %7 = zext i32 %6 to i64
  %8 = icmp uge i64 %2, %7
  %9 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %3, i64 0, i32 2, i64 %2
  %10 = select i1 %8, ptr null, ptr %9, !prof !482
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = phi i1 [ true, %1 ], [ %8, %5 ]
  br i1 %13, label %30, label %14, !prof !482

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._haifa_insn_data, ptr %12, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !182
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !483

18:                                               ; preds = %14
  tail call void @free(ptr noundef %16)
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct._haifa_insn_data, ptr %12, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !484
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !485

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.reg_use_data, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !486
  tail call void @free(ptr noundef %24)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !prof !485, !llvm.loop !487

28:                                               ; preds = %23, %19
  %29 = add nuw i64 %2, 1
  br label %1, !llvm.loop !488

30:                                               ; preds = %11
  br i1 %4, label %32, label %31, !prof !404

31:                                               ; preds = %30
  tail call void @free(ptr noundef %3)
  br label %32

32:                                               ; preds = %30, %31
  store ptr null, ptr @h_i_d, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #21

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @end_alias_analysis() local_unnamed_addr #3

declare void @regstat_free_calls_crossed() local_unnamed_addr #3

declare void @dfa_finish() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @try_ready(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr @h_i_d, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !106
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %7, i64 0, i32 2, i64 %10, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !110
  %13 = and i32 %12, -150994944
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i32 %12, 0
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3669, ptr noundef nonnull @.str.3) #27
  br label %18

18:                                               ; preds = %1, %17
  %19 = tail call zeroext i8 @sd_lists_empty_p(ptr noundef %0, i32 noundef 3) #27
  %20 = icmp eq i8 %19, 0
  %21 = load i32, ptr %11, align 4, !tbaa !110
  br i1 %20, label %31, label %22

22:                                               ; preds = %18
  %23 = and i32 %21, -134217729
  store i32 %23, ptr %11, align 4, !tbaa !110
  %24 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %25 = getelementptr inbounds %struct.haifa_sched_info, ptr %24, i64 0, i32 17
  %26 = load i32, ptr %25, align 8, !tbaa !490
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %84, label %29

29:                                               ; preds = %22
  %30 = and i32 %21, -150994944
  store i32 %30, ptr %11, align 4, !tbaa !110
  br label %84

31:                                               ; preds = %18
  %32 = and i32 %21, -150994944
  store i32 %32, ptr %11, align 4, !tbaa !110
  %33 = tail call zeroext i8 @sd_lists_empty_p(ptr noundef %0, i32 noundef 1) #27
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i32 3, ptr %4, align 8, !tbaa.struct !324
  %36 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %0, ptr %36, align 8, !tbaa.struct !325
  %37 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr @sd_iterator_start.null_link, ptr %37, align 8, !tbaa.struct !326
  %38 = getelementptr inbounds i8, ptr %4, i64 24
  store i8 0, ptr %38, align 8, !tbaa.struct !327
  %39 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %35, %62
  %42 = phi i8 [ %63, %62 ], [ 1, %35 ]
  %43 = load ptr, ptr %5, align 8, !tbaa !95
  %44 = getelementptr inbounds %struct._dep, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !332
  %46 = and i32 %45, 16777215
  %47 = load ptr, ptr %43, align 8, !tbaa !141
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, ptr %0, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 7
  br i1 %54, label %55, label %62

55:                                               ; preds = %51, %41
  %56 = icmp eq i8 %42, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, ptr %11, align 4, !tbaa !110
  %59 = call i32 @ds_merge(i32 noundef %58, i32 noundef %46) #27
  br label %60

60:                                               ; preds = %55, %57
  %61 = phi i32 [ %59, %57 ], [ %46, %55 ]
  store i32 %61, ptr %11, align 4, !tbaa !110
  br label %62

62:                                               ; preds = %51, %60
  %63 = phi i8 [ 0, %60 ], [ %42, %51 ]
  %64 = load ptr, ptr %37, align 8, !tbaa !329
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = getelementptr inbounds %struct._dep_link, ptr %65, i64 0, i32 1
  store ptr %66, ptr %37, align 8, !tbaa !329
  %67 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %41, !llvm.loop !491

69:                                               ; preds = %62, %35
  %70 = load i32, ptr %11, align 4, !tbaa !110
  %71 = call i32 @ds_weak(i32 noundef %70) #27
  %72 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %73 = getelementptr inbounds %struct.spec_info_def, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !453
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, ptr %11, align 4, !tbaa !110
  %78 = and i32 %77, -150994944
  %79 = or disjoint i32 %78, 134217728
  store i32 %79, ptr %11, align 4, !tbaa !110
  br label %80

80:                                               ; preds = %76, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %84

81:                                               ; preds = %31
  %82 = load i32, ptr %11, align 4, !tbaa !110
  %83 = or i32 %82, 134217728
  store i32 %83, ptr %11, align 4, !tbaa !110
  br label %84

84:                                               ; preds = %80, %81, %22, %29
  %85 = load i32, ptr %11, align 4, !tbaa !110
  %86 = and i32 %85, 134217728
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = icmp eq i32 %85, %12
  br i1 %89, label %90, label %97

90:                                               ; preds = %88
  %91 = load ptr, ptr @h_i_d, align 8
  %92 = load i32, ptr %8, align 8, !tbaa !106
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %91, i64 0, i32 2, i64 %93, i32 4
  %95 = load i32, ptr %94, align 8, !tbaa !178
  %96 = icmp eq i32 %95, -2
  br i1 %96, label %105, label %97

97:                                               ; preds = %90, %88
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3725, ptr noundef nonnull @.str.3) #27
  br label %105

98:                                               ; preds = %84
  %99 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %100 = getelementptr inbounds %struct.haifa_sched_info, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !492
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = call i32 %101(ptr noundef %0, i32 noundef %85) #27
  store i32 %104, ptr %11, align 4, !tbaa !110
  br label %105

105:                                              ; preds = %98, %103, %97, %90
  %106 = load i32, ptr %11, align 4, !tbaa !110
  %107 = and i32 %106, 16777215
  %108 = icmp eq i32 %107, 0
  %109 = icmp eq i32 %106, %12
  %110 = or i1 %109, %108
  br i1 %110, label %198, label %111

111:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %112 = load i32, ptr %11, align 4, !tbaa !110
  %113 = and i32 %112, 16777215
  %114 = icmp ne i32 %113, 0
  %115 = icmp ult i32 %112, 16777216
  %116 = and i1 %115, %114
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3747, ptr noundef nonnull @.str.3) #27
  br label %118

118:                                              ; preds = %111, %117
  %119 = load i32, ptr %11, align 4, !tbaa !110
  %120 = load ptr, ptr @sched_deps_info, align 8, !tbaa !95
  %121 = getelementptr inbounds %struct.sched_deps_info_def, ptr %120, i64 0, i32 12
  %122 = load i8, ptr %121, align 8
  %123 = and i8 %122, 4
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %127 = getelementptr inbounds %struct.common_sched_info_def, ptr %126, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !133
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %0) #27
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %141, label %140

133:                                              ; preds = %125
  %134 = load ptr, ptr @h_i_d, align 8
  %135 = load i32, ptr %8, align 8, !tbaa !106
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %134, i64 0, i32 2, i64 %136, i32 11
  %138 = load ptr, ptr %137, align 8, !tbaa !328
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %133, %130, %118
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4836, ptr noundef nonnull @.str.3) #27
  br label %141

141:                                              ; preds = %133, %140, %130
  %142 = load ptr, ptr @h_d_i_d, align 8
  %143 = load ptr, ptr @sched_luids, align 8
  %144 = load i32, ptr %8, align 8, !tbaa !106
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.VEC_int_base, ptr %143, i64 0, i32 2, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !110
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %142, i64 0, i32 2, i64 %148, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !493
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %141
  %153 = load i32, ptr %0, align 8
  %154 = and i32 %153, 268435456
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 @sched_speculate_insn(ptr noundef nonnull %0, i32 noundef %119, ptr noundef nonnull %6)
  br label %158

158:                                              ; preds = %141, %152, %156
  %159 = phi i32 [ %157, %156 ], [ -1, %152 ], [ -1, %141 ]
  switch i32 %159, label %196 [
    i32 -1, label %160
    i32 0, label %164
    i32 1, label %174
  ]

160:                                              ; preds = %158
  %161 = load i32, ptr %11, align 4, !tbaa !110
  %162 = and i32 %161, -150994944
  %163 = or disjoint i32 %162, 134217728
  store i32 %163, ptr %11, align 4, !tbaa !110
  br label %197

164:                                              ; preds = %158
  %165 = load ptr, ptr @h_i_d, align 8
  %166 = load i32, ptr %8, align 8, !tbaa !106
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %165, i64 0, i32 2, i64 %167, i32 12
  %169 = load ptr, ptr %168, align 8, !tbaa !333
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %197

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !106
  store ptr %173, ptr %168, align 8, !tbaa !333
  br label %197

174:                                              ; preds = %158
  %175 = load ptr, ptr @h_i_d, align 8
  %176 = load i32, ptr %8, align 8, !tbaa !106
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %175, i64 0, i32 2, i64 %177, i32 12
  %179 = load ptr, ptr %178, align 8, !tbaa !333
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !106
  store ptr %183, ptr %178, align 8, !tbaa !333
  br label %184

184:                                              ; preds = %181, %174
  %185 = load ptr, ptr %6, align 8, !tbaa !95
  call void @sched_change_pattern(ptr noundef %0, ptr noundef %185)
  %186 = load ptr, ptr @h_i_d, align 8
  %187 = load i32, ptr %8, align 8, !tbaa !106
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %186, i64 0, i32 2, i64 %188, i32 5
  store i16 -1, ptr %189, align 4, !tbaa !138
  %190 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %191 = xor i32 %190, -1
  %192 = load ptr, ptr @h_i_d, align 8
  %193 = load i32, ptr %8, align 8, !tbaa !106
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %192, i64 0, i32 2, i64 %194, i32 2
  store i32 %191, ptr %195, align 8, !tbaa !189
  br label %197

196:                                              ; preds = %158
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3777, ptr noundef nonnull @.str.3) #27
  br label %197

197:                                              ; preds = %164, %171, %196, %184, %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  br label %198

198:                                              ; preds = %197, %105
  %199 = load ptr, ptr @h_i_d, align 8
  %200 = load i32, ptr %8, align 8, !tbaa !106
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %199, i64 0, i32 2, i64 %201, i32 12
  %203 = load ptr, ptr %202, align 8, !tbaa !333
  %204 = icmp eq ptr %203, null
  br i1 %204, label %217, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %199, i64 0, i32 2, i64 %201, i32 11
  %207 = load ptr, ptr %206, align 8, !tbaa !328
  %208 = icmp eq ptr %207, null
  br i1 %208, label %217, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr @cfun, align 8, !tbaa !95
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !293
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !295
  %215 = icmp eq ptr %207, %214
  br i1 %215, label %217, label %216

216:                                              ; preds = %209
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3786, ptr noundef nonnull @.str.3) #27
  br label %217

217:                                              ; preds = %198, %205, %209, %216
  %218 = load i32, ptr %11, align 4, !tbaa !110
  %219 = and i32 %218, 134217728
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %383

221:                                              ; preds = %217
  %222 = and i32 %218, 258111
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %263

224:                                              ; preds = %221
  %225 = load ptr, ptr @h_i_d, align 8
  %226 = load i32, ptr %8, align 8, !tbaa !106
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %225, i64 0, i32 2, i64 %227, i32 12
  %229 = load ptr, ptr %228, align 8, !tbaa !333
  %230 = icmp eq ptr %229, null
  br i1 %230, label %263, label %231

231:                                              ; preds = %224
  %232 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %233 = getelementptr inbounds %struct.common_sched_info_def, ptr %232, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !133
  %235 = icmp eq i32 %234, 4
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %0) #27
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %243, label %263

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %225, i64 0, i32 2, i64 %227, i32 11
  %241 = load ptr, ptr %240, align 8, !tbaa !328
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %263

243:                                              ; preds = %239, %236
  %244 = load ptr, ptr @h_i_d, align 8
  %245 = load i32, ptr %8, align 8, !tbaa !106
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %244, i64 0, i32 2, i64 %246, i32 12
  %248 = load ptr, ptr %247, align 8, !tbaa !333
  call void @sched_change_pattern(ptr noundef %0, ptr noundef %248)
  %249 = load ptr, ptr @h_i_d, align 8
  %250 = load i32, ptr %8, align 8, !tbaa !106
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %249, i64 0, i32 2, i64 %251, i32 5
  store i16 -1, ptr %252, align 4, !tbaa !138
  %253 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %254 = xor i32 %253, -1
  %255 = load ptr, ptr @h_i_d, align 8
  %256 = load i32, ptr %8, align 8, !tbaa !106
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %255, i64 0, i32 2, i64 %257, i32 2
  store i32 %254, ptr %258, align 8, !tbaa !189
  %259 = load ptr, ptr @h_i_d, align 8
  %260 = load i32, ptr %8, align 8, !tbaa !106
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %259, i64 0, i32 2, i64 %261, i32 12
  store ptr null, ptr %262, align 8, !tbaa !333
  br label %263

263:                                              ; preds = %221, %224, %236, %239, %243
  %264 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %265 = icmp sgt i32 %264, 1
  br i1 %265, label %266, label %308

266:                                              ; preds = %263
  %267 = load ptr, ptr @h_i_d, align 8
  %268 = load i32, ptr %8, align 8, !tbaa !106
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %267, i64 0, i32 2, i64 %269, i32 8
  %271 = load i32, ptr %270, align 8, !tbaa !190
  %272 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %273 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %274 = getelementptr inbounds %struct.haifa_sched_info, ptr %273, i64 0, i32 5
  %275 = load ptr, ptr %274, align 8, !tbaa !301
  %276 = call ptr %275(ptr noundef %0, i32 noundef 0) #27
  %277 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.18, ptr noundef %276)
  %278 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %279 = icmp eq ptr %278, null
  br i1 %279, label %305, label %280

280:                                              ; preds = %266
  %281 = getelementptr inbounds %struct.spec_info_def, ptr %278, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !334
  %283 = icmp eq ptr %282, null
  br i1 %283, label %305, label %284

284:                                              ; preds = %280
  %285 = and i32 %271, 63
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = call i64 @fwrite(ptr nonnull @.str.19, i64 12, i64 1, ptr nonnull %282)
  br label %289

289:                                              ; preds = %287, %284
  %290 = and i32 %271, 258048
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %294 = getelementptr inbounds %struct.spec_info_def, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !334
  %296 = call i64 @fwrite(ptr nonnull @.str.20, i64 15, i64 1, ptr %295)
  br label %297

297:                                              ; preds = %292, %289
  %298 = and i32 %271, 16515072
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %302 = getelementptr inbounds %struct.spec_info_def, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !334
  %304 = call i64 @fwrite(ptr nonnull @.str.21, i64 18, i64 1, ptr %303)
  br label %305

305:                                              ; preds = %297, %300, %280, %266
  %306 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %307 = call i32 @fputc(i32 10, ptr %306)
  br label %308

308:                                              ; preds = %305, %263
  %309 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 1), align 8, !tbaa !495
  %310 = icmp eq ptr %309, null
  br i1 %310, label %322, label %311

311:                                              ; preds = %308
  %312 = load ptr, ptr @h_i_d, align 8
  %313 = load i32, ptr %8, align 8, !tbaa !106
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %312, i64 0, i32 2, i64 %314, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !167
  %317 = call i32 %309(ptr noundef %0, i32 noundef %316) #27
  %318 = load ptr, ptr @h_i_d, align 8
  %319 = load i32, ptr %8, align 8, !tbaa !106
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %318, i64 0, i32 2, i64 %320, i32 1
  store i32 %317, ptr %321, align 4, !tbaa !167
  br label %322

322:                                              ; preds = %308, %311
  %323 = call zeroext i8 @sd_lists_empty_p(ptr noundef %0, i32 noundef 8) #27
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %370

325:                                              ; preds = %322
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %326 = load ptr, ptr @h_i_d, align 8
  %327 = load i32, ptr %8, align 8, !tbaa !106
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %326, i64 0, i32 2, i64 %328, i32 2
  %330 = load i32, ptr %329, align 8, !tbaa !189
  %331 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %332 = xor i32 %331, %330
  %333 = icmp eq i32 %332, -1
  store i32 8, ptr %2, align 8, !tbaa.struct !324
  %334 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %0, ptr %334, align 8, !tbaa.struct !325
  %335 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr @sd_iterator_start.null_link, ptr %335, align 8, !tbaa.struct !326
  %336 = getelementptr inbounds i8, ptr %2, i64 24
  store i8 0, ptr %336, align 8, !tbaa.struct !327
  %337 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %368, label %339

339:                                              ; preds = %325
  %340 = sub nsw i32 0, %331
  br label %341

341:                                              ; preds = %339, %362
  %342 = phi i32 [ %330, %339 ], [ %361, %362 ]
  %343 = load ptr, ptr %3, align 8, !tbaa !95
  %344 = load ptr, ptr %343, align 8, !tbaa !141
  %345 = load ptr, ptr @h_i_d, align 8
  %346 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1
  %347 = load i32, ptr %346, align 8, !tbaa !106
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %345, i64 0, i32 2, i64 %348, i32 2
  %350 = load i32, ptr %349, align 8, !tbaa !189
  %351 = icmp slt i32 %350, %340
  br i1 %351, label %352, label %353

352:                                              ; preds = %341
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3856, ptr noundef nonnull @.str.3) #27
  br label %353

353:                                              ; preds = %352, %341
  %354 = load ptr, ptr @h_i_d, align 8
  %355 = load i32, ptr %346, align 8, !tbaa !106
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %354, i64 0, i32 2, i64 %356, i32 2
  %358 = load i32, ptr %357, align 8, !tbaa !189
  %359 = call i32 @dep_cost_1(ptr noundef nonnull %343, i32 noundef 0)
  %360 = add nsw i32 %359, %358
  %361 = call i32 @llvm.smax.i32(i32 %360, i32 %342)
  br i1 %333, label %362, label %368

362:                                              ; preds = %353
  %363 = load ptr, ptr %335, align 8, !tbaa !329
  %364 = load ptr, ptr %363, align 8, !tbaa !95
  %365 = getelementptr inbounds %struct._dep_link, ptr %364, i64 0, i32 1
  store ptr %365, ptr %335, align 8, !tbaa !329
  %366 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %341, !llvm.loop !496

368:                                              ; preds = %362, %353, %325
  %369 = phi i32 [ %330, %325 ], [ %361, %353 ], [ %361, %362 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  br label %370

370:                                              ; preds = %322, %368
  %371 = phi i32 [ %369, %368 ], [ -1, %322 ]
  %372 = load ptr, ptr @h_i_d, align 8
  %373 = load i32, ptr %8, align 8, !tbaa !106
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %372, i64 0, i32 2, i64 %374, i32 2
  store i32 %371, ptr %375, align 8, !tbaa !189
  %376 = load i32, ptr @clock_var, align 4, !tbaa !110
  %377 = sub nsw i32 %371, %376
  %378 = icmp slt i32 %377, 1
  %379 = load i8, ptr @sched_pressure_p, align 1
  %380 = icmp ne i8 %379, 0
  %381 = select i1 %378, i1 true, i1 %380
  %382 = select i1 %381, i32 -1, i32 %377
  br label %383

383:                                              ; preds = %217, %370
  %384 = phi i32 [ %382, %370 ], [ -2, %217 ]
  %385 = phi i32 [ %382, %370 ], [ -1, %217 ]
  call fastcc void @change_queue_index(ptr noundef %0, i32 noundef %384)
  ret i32 %385
}

declare zeroext i8 @sd_lists_empty_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !prof !497 !PGOFuncName !498 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !329
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !499

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !500
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !502
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14, !prof !503

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !504
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #27
  %18 = load ptr, ptr %3, align 8, !tbaa !95
  store ptr %18, ptr %4, align 8, !tbaa !329
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !505

20:                                               ; preds = %14
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi i8 [ %21, %20 ], [ undef, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br i1 %19, label %24, label %27, !prof !505

24:                                               ; preds = %11, %22, %8
  %25 = phi ptr [ %10, %8 ], [ null, %22 ], [ null, %11 ]
  %26 = phi i8 [ 1, %8 ], [ 0, %22 ], [ 0, %11 ]
  store ptr %25, ptr %1, align 8, !tbaa !95
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i8 [ %23, %22 ], [ %26, %24 ]
  ret i8 %28
}

declare i32 @ds_merge(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ds_weak(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @change_queue_index(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !94 {
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !106
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %3, i64 0, i32 2, i64 %6, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !178
  %9 = icmp sgt i32 %1, -3
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %12 = icmp sge i32 %11, %1
  %13 = icmp ne i32 %1, 0
  %14 = and i1 %13, %12
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3889, ptr noundef nonnull @.str.3) #27
  br label %16

16:                                               ; preds = %10, %15
  %17 = icmp eq i32 %8, -3
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3890, ptr noundef nonnull @.str.3) #27
  br label %19

19:                                               ; preds = %16, %18
  %20 = icmp sgt i32 %1, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load i32, ptr @q_ptr, align 4, !tbaa !110
  %23 = add nsw i32 %22, %1
  %24 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, %8
  br i1 %26, label %82, label %27

27:                                               ; preds = %21, %19
  %28 = icmp slt i32 %1, 0
  %29 = icmp eq i32 %8, %1
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %82, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %8, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call fastcc void @ready_remove_insn(ptr noundef %0)
  br label %59

34:                                               ; preds = %31
  %35 = icmp sgt i32 %8, -1
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = load ptr, ptr @h_i_d, align 8
  %38 = load i32, ptr %4, align 8, !tbaa !106
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %37, i64 0, i32 2, i64 %39, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !178
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1367, ptr noundef nonnull @.str.3) #27
  br label %44

44:                                               ; preds = %36, %43
  %45 = load ptr, ptr @insn_queue, align 8, !tbaa !95
  %46 = load ptr, ptr @h_i_d, align 8
  %47 = load i32, ptr %4, align 8, !tbaa !106
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %46, i64 0, i32 2, i64 %48, i32 4
  %50 = load i32, ptr %49, align 8, !tbaa !178
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %45, i64 %51
  tail call void @remove_free_INSN_LIST_elem(ptr noundef %0, ptr noundef %52) #27
  %53 = load i32, ptr @q_size, align 4, !tbaa !110
  %54 = add nsw i32 %53, -1
  store i32 %54, ptr @q_size, align 4, !tbaa !110
  %55 = load ptr, ptr @h_i_d, align 8
  %56 = load i32, ptr %4, align 8, !tbaa !106
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %55, i64 0, i32 2, i64 %57, i32 4
  store i32 -2, ptr %58, align 8, !tbaa !178
  br label %59

59:                                               ; preds = %34, %44, %33
  %60 = icmp eq i32 %1, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  tail call fastcc void @ready_add(ptr noundef %0, i8 noundef zeroext 0)
  br label %64

62:                                               ; preds = %59
  br i1 %20, label %63, label %64

63:                                               ; preds = %62
  tail call fastcc void @queue_insn(ptr noundef %0, i32 noundef %1)
  br label %64

64:                                               ; preds = %62, %63, %61
  %65 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  %69 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %70 = getelementptr inbounds %struct.haifa_sched_info, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !301
  %72 = tail call ptr %71(ptr noundef %0, i32 noundef 0) #27
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.46, ptr noundef %72)
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !95
  br i1 %60, label %75, label %77

75:                                               ; preds = %67
  %76 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 12, i64 1, ptr %74)
  br label %82

77:                                               ; preds = %67
  br i1 %20, label %78, label %80

78:                                               ; preds = %77
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.48, i32 noundef %1)
  br label %82

80:                                               ; preds = %77
  %81 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 35, i64 1, ptr %74)
  br label %82

82:                                               ; preds = %64, %78, %80, %75, %21, %27
  ret void
}

declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_extend_ready_list(i32 noundef %0) local_unnamed_addr #11 !prof !506 {
  %2 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !110
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5, !prof !507

4:                                                ; preds = %1
  store i32 0, ptr @sched_ready_n_insns, align 4, !tbaa !110
  br label %7

5:                                                ; preds = %1
  %6 = add nsw i32 %2, 1
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i32 [ 0, %4 ], [ %6, %5 ]
  %9 = load i32, ptr @issue_rate, align 4, !tbaa !110
  %10 = add nsw i32 %9, %0
  store i32 %10, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %11 = load ptr, ptr @ready, align 8, !tbaa !170
  %12 = sext i32 %10 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %13) #27
  store ptr %14, ptr @ready, align 8, !tbaa !170
  %15 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !110
  %16 = icmp sgt i32 %15, %0
  br i1 %16, label %17, label %18, !prof !508

17:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3944, ptr noundef nonnull @.str.3) #27
  br label %18

18:                                               ; preds = %7, %17
  %19 = load ptr, ptr @ready_try, align 8, !tbaa !95
  %20 = sext i32 %0 to i64
  %21 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !110
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i32 %21, %0
  br i1 %23, label %24, label %25, !prof !508

24:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4222, ptr noundef nonnull @.str.3) #27
  br label %25

25:                                               ; preds = %18, %24
  %26 = tail call ptr @xrealloc(ptr noundef %19, i64 noundef %20) #27
  %27 = getelementptr inbounds i8, ptr %26, i64 %22
  %28 = sub nsw i64 %20, %22
  tail call void @llvm.memset.p0.i64(ptr align 1 %27, i8 0, i64 %28, i1 false), !prof !509
  store ptr %26, ptr @ready_try, align 8, !tbaa !95
  %29 = load ptr, ptr @choice_stack, align 8, !tbaa !95
  %30 = add nsw i32 %0, 1
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 24
  %33 = tail call ptr @xrealloc(ptr noundef %29, i64 noundef %32) #27
  store ptr %33, ptr @choice_stack, align 8, !tbaa !95
  %34 = icmp sgt i32 %8, %0
  br i1 %34, label %47, label %35, !prof !510

35:                                               ; preds = %25
  %36 = sext i32 %8 to i64
  %37 = add i32 %0, 1
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %36, %35 ], [ %44, %38 ]
  %40 = load i64, ptr @dfa_state_size, align 8, !tbaa !209
  %41 = tail call ptr @xmalloc(i64 noundef %40) #27
  %42 = load ptr, ptr @choice_stack, align 8, !tbaa !95
  %43 = getelementptr inbounds %struct.choice_entry, ptr %42, i64 %39, i32 3
  store ptr %41, ptr %43, align 8, !tbaa !273
  %44 = add nsw i64 %39, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %37, %45
  br i1 %46, label %47, label %38, !prof !511, !llvm.loop !512

47:                                               ; preds = %38, %25
  store i32 %0, ptr @sched_ready_n_insns, align 4, !tbaa !110
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @xrecalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #19 !prof !513 {
  %5 = icmp ult i64 %1, %2
  br i1 %5, label %6, label %7, !prof !514

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4222, ptr noundef nonnull @.str.3) #27
  br label %7

7:                                                ; preds = %4, %6
  %8 = mul i64 %3, %1
  %9 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %8) #27
  %10 = mul i64 %3, %2
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = sub i64 %1, %2
  %13 = mul i64 %12, %3
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false), !prof !515
  ret ptr %9
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_finish_ready_list() local_unnamed_addr #11 !prof !469 {
  %1 = load ptr, ptr @ready, align 8, !tbaa !170
  tail call void @free(ptr noundef %1)
  store ptr null, ptr @ready, align 8, !tbaa !170
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !283
  %2 = load ptr, ptr @ready_try, align 8, !tbaa !95
  tail call void @free(ptr noundef %2)
  store ptr null, ptr @ready_try, align 8, !tbaa !95
  %3 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !110
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %15, label %5, !prof !516

5:                                                ; preds = %0
  %6 = load ptr, ptr @choice_stack, align 8, !tbaa !95
  %7 = add nuw i32 %3, 1
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %13, %9 ]
  %11 = getelementptr inbounds %struct.choice_entry, ptr %6, i64 %10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !273
  tail call void @free(ptr noundef %12)
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %15, label %9, !prof !517, !llvm.loop !518

15:                                               ; preds = %9, %0
  %16 = load ptr, ptr @choice_stack, align 8, !tbaa !95
  tail call void @free(ptr noundef %16)
  store ptr null, ptr @choice_stack, align 8, !tbaa !95
  store i32 -1, ptr @sched_ready_n_insns, align 4, !tbaa !110
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_fallthru_edge(ptr noundef readonly %0) local_unnamed_addr #9 !prof !94 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !291
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !466
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4238, ptr noundef nonnull @.str.3) #27
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !359
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !215
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !519
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8, !tbaa !215
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i32 [ %19, %18 ], [ 0, %14 ]
  %22 = icmp ugt i32 %15, %21
  br i1 %22, label %57, label %23

23:                                               ; preds = %20, %55
  %24 = phi i32 [ %56, %55 ], [ 0, %20 ]
  %25 = load ptr, ptr %9, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 8, !tbaa !215
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = zext i32 %24 to i64
  %34 = getelementptr inbounds %struct.VEC_edge_base, ptr %25, i64 0, i32 2, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  br label %36

36:                                               ; preds = %29, %32
  %37 = phi ptr [ %35, %32 ], [ null, %29 ]
  br i1 %31, label %93, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !217
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !479
  %46 = icmp eq ptr %45, %3
  br i1 %46, label %93, label %90

47:                                               ; preds = %38
  %48 = icmp eq ptr %25, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %25, align 8, !tbaa !215
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %50, %49 ], [ 0, %47 ]
  %53 = icmp ult i32 %24, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %55

55:                                               ; preds = %51, %54
  %56 = add i32 %24, 1
  br label %23, !llvm.loop !520

57:                                               ; preds = %20, %88
  %58 = phi i32 [ %89, %88 ], [ 0, %20 ]
  %59 = load ptr, ptr %3, align 8, !tbaa !95
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %59, align 8, !tbaa !215
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %62, %61 ], [ 0, %57 ]
  %65 = icmp eq i32 %64, %58
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = zext i32 %58 to i64
  %68 = getelementptr inbounds %struct.VEC_edge_base, ptr %59, i64 0, i32 2, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !95
  br label %70

70:                                               ; preds = %63, %66
  %71 = phi ptr [ %69, %66 ], [ null, %63 ]
  br i1 %65, label %93, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !217
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %71, align 8, !tbaa !478
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %93, label %90

80:                                               ; preds = %72
  %81 = icmp eq ptr %59, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = load i32, ptr %59, align 8, !tbaa !215
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %83, %82 ], [ 0, %80 ]
  %86 = icmp ult i32 %58, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %88

88:                                               ; preds = %84, %87
  %89 = add i32 %58, 1
  br label %57, !llvm.loop !521

90:                                               ; preds = %77, %43
  %91 = phi i32 [ 4245, %43 ], [ 4254, %77 ]
  %92 = phi ptr [ %37, %43 ], [ %71, %77 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef %91, ptr noundef nonnull @.str.3) #27
  br label %93

93:                                               ; preds = %36, %70, %90, %77, %43
  %94 = phi ptr [ %37, %43 ], [ %71, %77 ], [ %92, %90 ], [ null, %70 ], [ null, %36 ]
  ret ptr %94
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sched_extend_bb() unnamed_addr #19 !prof !94 !PGOFuncName !522 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !95
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !295
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !466
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !201
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !106
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !404

15:                                               ; preds = %0
  %16 = load i32, ptr %11, align 8
  %17 = and i32 %16, 65534
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %36, label %19, !prof !404

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %36, label %23, !prof !402

23:                                               ; preds = %19, %0
  %24 = tail call ptr @emit_note_after(i32 noundef 0, ptr noundef %11) #27
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !106
  %26 = load ptr, ptr @cfun, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !293
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !295
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !466
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  store ptr %11, ptr %35, align 8, !tbaa !201
  br label %36

36:                                               ; preds = %15, %23, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @sched_create_recovery_block(ptr noundef writeonly %0) local_unnamed_addr #9 !prof !94 {
  store i1 true, ptr @haifa_recovery_bb_recently_added_p, align 1
  store i8 1, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !106
  %2 = load ptr, ptr @cfun, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !293
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !466
  %9 = tail call ptr @find_fallthru_edge(ptr noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %98, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @after_recovery, align 8, !tbaa !95
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %99, label %14

14:                                               ; preds = %11
  store i8 0, ptr @adding_bb_to_current_region_p, align 1, !tbaa !106
  %15 = load ptr, ptr @sched_create_empty_bb, align 8, !tbaa !95
  %16 = tail call ptr %15(ptr noundef %8) #27
  %17 = load ptr, ptr @sched_create_empty_bb, align 8, !tbaa !95
  %18 = tail call ptr %17(ptr noundef %16) #27
  %19 = load ptr, ptr @cfun, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !523
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !524
  %26 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  tail call void @add_bb_to_loop(ptr noundef %16, ptr noundef %27) #27
  %28 = load ptr, ptr @cfun, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !523
  %31 = getelementptr inbounds %struct.loops, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !524
  %33 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  tail call void @add_bb_to_loop(ptr noundef %18, ptr noundef %34) #27
  br label %35

35:                                               ; preds = %23, %14
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !526
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 8
  store i64 %37, ptr %38, align 8, !tbaa !526
  %39 = load i64, ptr %36, align 8, !tbaa !526
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 8
  store i64 %39, ptr %40, align 8, !tbaa !526
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 11
  %42 = load i32, ptr %41, align 8, !tbaa !527
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 11
  store i32 %42, ptr %43, align 8, !tbaa !527
  %44 = load i32, ptr %41, align 8, !tbaa !527
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  store i32 %44, ptr %45, align 8, !tbaa !527
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !528
  %48 = and i32 %47, -97
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !528
  %51 = and i32 %50, 96
  %52 = or disjoint i32 %51, %48
  store i32 %52, ptr %46, align 8, !tbaa !528
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 13
  %54 = load i32, ptr %53, align 8, !tbaa !528
  %55 = and i32 %54, -97
  %56 = load i32, ptr %49, align 8, !tbaa !528
  %57 = and i32 %56, 96
  %58 = or disjoint i32 %57, %55
  store i32 %58, ptr %53, align 8, !tbaa !528
  tail call void @redirect_edge_succ(ptr noundef nonnull %9, ptr noundef %16) #27
  %59 = tail call ptr @make_single_succ_edge(ptr noundef %16, ptr noundef %18, i32 noundef 0) #27
  %60 = load ptr, ptr @cfun, align 8, !tbaa !95
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !293
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !295
  %65 = tail call ptr @make_single_succ_edge(ptr noundef %18, ptr noundef %64, i32 noundef 65) #27
  %66 = tail call ptr @block_label(ptr noundef %18) #27
  %67 = tail call ptr @gen_jump(ptr noundef %66) #27
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !106
  %70 = getelementptr inbounds %struct.rtl_bb_info, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !201
  %72 = tail call ptr @emit_jump_insn_after(ptr noundef %67, ptr noundef %71) #27
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %66, ptr %73, align 8, !tbaa !106
  %74 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !106
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %74, align 8, !tbaa !106
  tail call fastcc void @haifa_init_insn(ptr noundef %72)
  %77 = tail call ptr @emit_barrier_after(ptr noundef %72) #27
  %78 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !95
  tail call void %78(ptr noundef %18, ptr noundef null) #27
  %79 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !95
  tail call void %79(ptr noundef %16, ptr noundef null) #27
  tail call fastcc void @sched_extend_bb()
  store i8 1, ptr @adding_bb_to_current_region_p, align 1, !tbaa !106
  store ptr %16, ptr @before_recovery, align 8, !tbaa !95
  store ptr %18, ptr @after_recovery, align 8, !tbaa !95
  %80 = icmp eq ptr %0, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %35
  store ptr %16, ptr %0, align 8, !tbaa !95
  br label %82

82:                                               ; preds = %81, %35
  %83 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %87 = getelementptr inbounds %struct.spec_info_def, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !334
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !297
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !297
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !297
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.54, i32 noundef %92, i32 noundef %94, i32 noundef %96)
  br label %99

98:                                               ; preds = %1
  store ptr %8, ptr @before_recovery, align 8, !tbaa !95
  br label %99

99:                                               ; preds = %11, %82, %85, %90, %98
  %100 = load ptr, ptr @before_recovery, align 8, !tbaa !95
  %101 = tail call ptr @get_last_bb_insn(ptr noundef %100) #27
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 11
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4382, ptr noundef nonnull @.str.3) #27
  br label %106

106:                                              ; preds = %99, %105
  %107 = tail call ptr @gen_label_rtx() #27
  %108 = tail call ptr @emit_label_after(ptr noundef %107, ptr noundef nonnull %101) #27
  %109 = load ptr, ptr @before_recovery, align 8, !tbaa !95
  %110 = tail call ptr @create_basic_block(ptr noundef %108, ptr noundef %108, ptr noundef %109) #27
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !106
  %113 = getelementptr inbounds %struct.rtl_bb_info, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !201
  %115 = tail call ptr @emit_barrier_after(ptr noundef %114) #27
  %116 = load ptr, ptr @before_recovery, align 8, !tbaa !95
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 13
  %118 = load i32, ptr %117, align 8, !tbaa !528
  %119 = and i32 %118, 96
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 13
  %123 = load i32, ptr %122, align 8, !tbaa !528
  %124 = and i32 %123, -97
  %125 = or disjoint i32 %124, 64
  store i32 %125, ptr %122, align 8, !tbaa !528
  br label %126

126:                                              ; preds = %121, %106
  %127 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %131 = getelementptr inbounds %struct.spec_info_def, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !334
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 9
  %136 = load i32, ptr %135, align 8, !tbaa !297
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %132, ptr noundef nonnull @.str.23, i32 noundef %136)
  br label %138

138:                                              ; preds = %134, %129, %126
  ret ptr %110
}

declare ptr @get_last_bb_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_label_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @sched_create_recovery_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !94 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !528
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !528
  %8 = xor i32 %7, %5
  %9 = and i32 %8, 96
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 8192
  %12 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %11) #27
  %13 = tail call ptr @block_label(ptr noundef %2) #27
  %14 = tail call ptr @gen_jump(ptr noundef %13) #27
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !201
  %19 = tail call ptr @emit_jump_insn_after(ptr noundef %14, ptr noundef %18) #27
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %13, ptr %20, align 8, !tbaa !106
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !106
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !106
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !528
  %26 = load i32, ptr %6, align 8, !tbaa !528
  %27 = xor i32 %26, %25
  %28 = and i32 %27, 96
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %3
  %31 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !110
  %32 = icmp ne i32 %31, 0
  %33 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %34 = icmp ne i8 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @add_reg_note(ptr noundef %19, i32 noundef 29, ptr noundef null) #27
  br label %37

37:                                               ; preds = %3, %30, %36
  %38 = phi i32 [ 8192, %36 ], [ 8192, %30 ], [ 0, %3 ]
  %39 = tail call ptr @make_single_succ_edge(ptr noundef %1, ptr noundef %2, i32 noundef %38) #27
  ret void
}

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @block_label(ptr noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @sched_change_pattern(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !94 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4794, ptr noundef nonnull @.str.3) #27
  br label %7

7:                                                ; preds = %2, %6
  tail call void @dfa_clear_single_insn_cache(ptr noundef %0) #27
  ret void
}

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @dfa_clear_single_insn_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @sched_speculate_insn(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !94 {
  %4 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.haifa_sched_info, ptr %4, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !490
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %1, 16777215
  %10 = icmp eq i32 %9, 0
  %11 = or i1 %10, %8
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %0, i32 noundef %1) #27
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4820, ptr noundef nonnull @.str.3) #27
  br label %16

16:                                               ; preds = %12, %15
  %17 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %18 = load i32, ptr %17, align 8, !tbaa !452
  %19 = and i32 %18, %1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = and i32 %1, 16519104
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %1, 258111
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 28), align 8, !tbaa !529
  %29 = tail call i32 %28(ptr noundef %0, i32 noundef %1, ptr noundef %2) #27
  br label %30

30:                                               ; preds = %21, %16, %27
  %31 = phi i32 [ %29, %27 ], [ -1, %16 ], [ 0, %21 ]
  ret i32 %31
}

declare zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @unlink_bb_notes(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !94 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @cfun, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !293
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !530
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #27
  store ptr %12, ptr @bb_header, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !291
  %15 = load ptr, ptr @cfun, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !293
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !295
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !297
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %12, i64 %24
  store ptr null, ptr %25, align 8, !tbaa !95
  br label %26

26:                                               ; preds = %21, %4
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !291
  br label %29

29:                                               ; preds = %71, %26
  %30 = phi ptr [ %1, %26 ], [ %72, %71 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = load ptr, ptr %32, align 8, !tbaa !241
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  br label %40

40:                                               ; preds = %29, %37
  %41 = phi ptr [ %39, %37 ], [ %33, %29 ]
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %47 = load i32, ptr %46, align 8, !tbaa !106
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4897, ptr noundef nonnull @.str.3) #27
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !106
  %53 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !106
  %55 = icmp ne ptr %52, null
  %56 = icmp ne ptr %54, null
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4901, ptr noundef nonnull @.str.3) #27
  br label %59

59:                                               ; preds = %50, %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %54, ptr %60, align 8, !tbaa !106
  %61 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %52, ptr %61, align 8, !tbaa !106
  %62 = load ptr, ptr @bb_header, align 8, !tbaa !95
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %64 = load i32, ptr %63, align 8, !tbaa !297
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65
  store ptr %33, ptr %66, align 8, !tbaa !95
  %67 = icmp eq ptr %30, %28
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !466
  br label %71

71:                                               ; preds = %59, %68
  %72 = phi ptr [ %70, %68 ], [ %30, %59 ]
  br i1 %67, label %73, label %29

73:                                               ; preds = %71, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_scan(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #11 !prof !531 {
  store ptr %0, ptr @sched_scan_info, align 8, !tbaa !95
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %39, !prof !376

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !377
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !378

12:                                               ; preds = %9
  tail call void %10() #27, !prof !532
  br label %13

13:                                               ; preds = %9, %12
  br i1 %6, label %14, label %32, !prof !380

14:                                               ; preds = %13, %30
  %15 = phi i32 [ %31, %30 ], [ 0, %13 ]
  %16 = load i32, ptr %1, align 8, !tbaa !381
  %17 = icmp ugt i32 %16, %15
  br i1 %17, label %18, label %22, !prof !383

18:                                               ; preds = %14
  %19 = zext i32 %15 to i64
  %20 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  br label %22

22:                                               ; preds = %14, %18
  %23 = phi ptr [ %21, %18 ], [ null, %14 ]
  br i1 %17, label %24, label %32, !prof !383

24:                                               ; preds = %22
  %25 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.sched_scan_info_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !384
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !385

29:                                               ; preds = %24
  tail call void %27(ptr noundef %23) #27, !prof !533
  br label %30

30:                                               ; preds = %24, %29
  %31 = add i32 %15, 1
  br label %14, !llvm.loop !387

32:                                               ; preds = %22, %13
  br i1 %7, label %33, label %39, !prof !388

33:                                               ; preds = %32
  %34 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.sched_scan_info_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !384
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void %36(ptr noundef nonnull %2) #27
  br label %39

39:                                               ; preds = %38, %33, %32, %5
  %40 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.sched_scan_info_def, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !352
  %43 = icmp eq ptr %42, null
  br i1 %43, label %139, label %44, !prof !389

44:                                               ; preds = %39
  %45 = icmp eq ptr %42, @luids_extend_insn
  br i1 %45, label %46, label %80, !prof !390

46:                                               ; preds = %44
  %47 = tail call i32 @get_max_uid() #27
  %48 = add nsw i32 %47, 1
  %49 = load ptr, ptr @sched_luids, align 8, !tbaa !95
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51, !prof !391

51:                                               ; preds = %46
  %52 = load i32, ptr %49, align 4, !tbaa !392
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i32 [ %52, %51 ], [ 0, %46 ]
  br i1 %50, label %57, label %55, !prof !391

55:                                               ; preds = %53
  %56 = load i32, ptr %49, align 4, !tbaa !392
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %56, %55 ], [ 0, %53 ]
  %59 = sub nsw i32 %48, %58
  br i1 %50, label %66, label %60, !prof !391

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.VEC_int_base, ptr %49, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !394
  %63 = load i32, ptr %49, align 4, !tbaa !392
  %64 = sub i32 %62, %63
  %65 = icmp uge i32 %64, %59
  br label %68

66:                                               ; preds = %57
  %67 = icmp eq i32 %58, %48
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i1 [ %65, %60 ], [ %67, %66 ]
  br i1 %69, label %72, label %70, !prof !395

70:                                               ; preds = %68
  %71 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %49, i32 noundef %59, i64 noundef 8, i64 noundef 4) #27
  store ptr %71, ptr @sched_luids, align 8, !tbaa !95
  br label %72

72:                                               ; preds = %68, %70
  %73 = load ptr, ptr @sched_luids, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %48, ptr %73, align 4, !tbaa !392
  %74 = getelementptr inbounds %struct.VEC_int_base, ptr %73, i64 0, i32 2
  %75 = sext i32 %54 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  %77 = sub nsw i32 %48, %54
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %76, i8 0, i64 %79, i1 false), !prof !534
  br label %139

80:                                               ; preds = %44
  %81 = icmp eq ptr %42, @extend_h_i_d
  br i1 %81, label %82, label %138, !prof !398

82:                                               ; preds = %80
  %83 = tail call i32 @get_max_uid() #27
  %84 = add nsw i32 %83, 1
  %85 = load ptr, ptr @h_i_d, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !399

87:                                               ; preds = %82
  %88 = load i32, ptr %85, align 8, !tbaa !400
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi i32 [ %88, %87 ], [ 0, %82 ]
  %91 = sub i32 %84, %90
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %139, !prof !399

93:                                               ; preds = %89
  br i1 %86, label %100, label %94, !prof !402

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %85, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !403
  %97 = load i32, ptr %85, align 8, !tbaa !400
  %98 = sub i32 %96, %97
  %99 = icmp ult i32 %98, %91
  br i1 %99, label %100, label %139, !prof !402

100:                                              ; preds = %94, %93
  %101 = tail call i32 @get_max_uid() #27
  %102 = mul nsw i32 %101, 3
  %103 = sdiv i32 %102, 2
  %104 = load ptr, ptr @h_i_d, align 8, !tbaa !95
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106, !prof !402

106:                                              ; preds = %100
  %107 = load i32, ptr %104, align 8, !tbaa !400
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi i32 [ %107, %106 ], [ 0, %100 ]
  br i1 %105, label %112, label %110, !prof !402

110:                                              ; preds = %108
  %111 = load i32, ptr %104, align 8, !tbaa !400
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %111, %110 ], [ 0, %108 ]
  %114 = sub nsw i32 %103, %113
  br i1 %105, label %121, label %115, !prof !402

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %104, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !403
  %118 = load i32, ptr %104, align 8, !tbaa !400
  %119 = sub i32 %117, %118
  %120 = icmp uge i32 %119, %114
  br label %123

121:                                              ; preds = %112
  %122 = icmp eq i32 %113, %103
  br label %123

123:                                              ; preds = %121, %115
  %124 = phi i1 [ %120, %115 ], [ %122, %121 ]
  br i1 %124, label %127, label %125, !prof !404

125:                                              ; preds = %123
  %126 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %104, i32 noundef %114, i64 noundef 8, i64 noundef 96) #27
  store ptr %126, ptr @h_i_d, align 8, !tbaa !95
  br label %127

127:                                              ; preds = %125, %123
  %128 = load ptr, ptr @h_i_d, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %103, ptr %128, align 8, !tbaa !400
  %129 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %128, i64 0, i32 2
  %130 = sext i32 %109 to i64
  %131 = getelementptr inbounds %struct._haifa_insn_data, ptr %129, i64 %130
  %132 = sub nsw i32 %103, %109
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %133, 96
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %131, i8 0, i64 %134, i1 false), !prof !535
  %135 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !406
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137, !prof !402

137:                                              ; preds = %127
  tail call void %135() #27
  br label %139

138:                                              ; preds = %80
  tail call void %42() #27, !prof !536
  br label %139

139:                                              ; preds = %72, %137, %127, %94, %89, %138, %39
  br i1 %6, label %140, label %175, !prof !376

140:                                              ; preds = %139, %173
  %141 = phi i32 [ %174, %173 ], [ 0, %139 ]
  %142 = load i32, ptr %1, align 8, !tbaa !381
  %143 = icmp ugt i32 %142, %141
  br i1 %143, label %144, label %148, !prof !383

144:                                              ; preds = %140
  %145 = zext i32 %141 to i64
  %146 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1, i64 0, i32 2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !95
  br label %148

148:                                              ; preds = %140, %144
  %149 = phi ptr [ %147, %144 ], [ null, %140 ]
  br i1 %143, label %150, label %175, !prof !383

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %149, i64 0, i32 7
  %152 = load ptr, ptr %151, align 8, !tbaa !106
  %153 = load ptr, ptr %152, align 8, !tbaa !106
  %154 = icmp eq ptr %153, null
  br i1 %154, label %173, label %155, !prof !253

155:                                              ; preds = %150, %169
  %156 = phi ptr [ %171, %169 ], [ %153, %150 ]
  %157 = load ptr, ptr %151, align 8, !tbaa !106
  %158 = getelementptr inbounds %struct.rtl_bb_info, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !201
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1, i32 0, i32 0, i64 2
  %161 = load ptr, ptr %160, align 8, !tbaa !106
  %162 = icmp eq ptr %156, %161
  br i1 %162, label %173, label %163, !prof !408

163:                                              ; preds = %155
  %164 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %165 = getelementptr inbounds %struct.sched_scan_info_def, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !409
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168, !prof !410

168:                                              ; preds = %163
  tail call void %166(ptr noundef nonnull %156) #27, !prof !537
  br label %169

169:                                              ; preds = %168, %163
  %170 = getelementptr inbounds %struct.rtx_def, ptr %156, i64 0, i32 1, i32 0, i32 0, i64 2
  %171 = load ptr, ptr %170, align 8, !tbaa !106
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %155, !prof !412, !llvm.loop !413

173:                                              ; preds = %155, %169, %150
  %174 = add i32 %141, 1
  br label %140, !llvm.loop !414

175:                                              ; preds = %148, %139
  br i1 %7, label %176, label %199, !prof !415

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %178 = load ptr, ptr %177, align 8, !tbaa !106
  %179 = load ptr, ptr %178, align 8, !tbaa !106
  %180 = icmp eq ptr %179, null
  br i1 %180, label %199, label %181

181:                                              ; preds = %176, %195
  %182 = phi ptr [ %197, %195 ], [ %179, %176 ]
  %183 = load ptr, ptr %177, align 8, !tbaa !106
  %184 = getelementptr inbounds %struct.rtl_bb_info, ptr %183, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !201
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 2
  %187 = load ptr, ptr %186, align 8, !tbaa !106
  %188 = icmp eq ptr %182, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %181
  %190 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %191 = getelementptr inbounds %struct.sched_scan_info_def, ptr %190, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !409
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  tail call void %192(ptr noundef nonnull %182) #27
  br label %195

195:                                              ; preds = %194, %189
  %196 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1, i32 0, i32 0, i64 2
  %197 = load ptr, ptr %196, align 8, !tbaa !106
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %181, !llvm.loop !413

199:                                              ; preds = %195, %181, %176, %175
  %200 = icmp eq ptr %3, null
  br i1 %200, label %219, label %201, !prof !416

201:                                              ; preds = %199, %217
  %202 = phi i32 [ %218, %217 ], [ 0, %199 ]
  %203 = load i32, ptr %3, align 8, !tbaa !338
  %204 = icmp ugt i32 %203, %202
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = zext i32 %202 to i64
  %207 = getelementptr inbounds %struct.VEC_rtx_base, ptr %3, i64 0, i32 2, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !95
  br label %209

209:                                              ; preds = %201, %205
  %210 = phi ptr [ %208, %205 ], [ null, %201 ]
  br i1 %204, label %211, label %219

211:                                              ; preds = %209
  %212 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %213 = getelementptr inbounds %struct.sched_scan_info_def, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !409
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %211
  tail call void %214(ptr noundef %210) #27
  br label %217

217:                                              ; preds = %211, %216
  %218 = add i32 %202, 1
  br label %201, !llvm.loop !417

219:                                              ; preds = %209, %199
  %220 = icmp eq ptr %4, null
  br i1 %220, label %252, label %221, !prof !418

221:                                              ; preds = %219
  %222 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %223 = getelementptr inbounds %struct.sched_scan_info_def, ptr %222, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !409
  %225 = icmp eq ptr %224, null
  br i1 %225, label %252, label %226, !prof !419

226:                                              ; preds = %221
  %227 = icmp eq ptr %224, @luids_init_insn
  br i1 %227, label %228, label %251, !prof !420

228:                                              ; preds = %226
  %229 = load i32, ptr %4, align 8
  %230 = and i32 %229, 65535
  %231 = add nsw i32 %230, -7
  %232 = icmp ult i32 %231, 4
  br i1 %232, label %238, label %233, !prof !421

233:                                              ; preds = %228
  %234 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %235 = getelementptr inbounds %struct.common_sched_info_def, ptr %234, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !422
  %237 = tail call i32 %236(ptr noundef nonnull %4) #27, !prof !538
  br label %238

238:                                              ; preds = %233, %228
  %239 = phi i32 [ %237, %233 ], [ 1, %228 ]
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %241, label %244, !prof !421

241:                                              ; preds = %238
  %242 = load i32, ptr @sched_max_luid, align 4, !tbaa !110
  %243 = add nsw i32 %242, %239
  store i32 %243, ptr @sched_max_luid, align 4, !tbaa !110
  br label %244

244:                                              ; preds = %238, %241
  %245 = phi i32 [ %242, %241 ], [ -1, %238 ]
  %246 = load ptr, ptr @sched_luids, align 8
  %247 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !106
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.VEC_int_base, ptr %246, i64 0, i32 2, i64 %249
  store i32 %245, ptr %250, align 4, !tbaa !110
  br label %252

251:                                              ; preds = %226
  tail call void %224(ptr noundef nonnull %4) #27
  br label %252

252:                                              ; preds = %244, %251, %221, %219
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @luids_extend_insn() #11 !prof !94 !PGOFuncName !539 {
  %1 = tail call i32 @get_max_uid() #27
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @sched_luids, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !391

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 4, !tbaa !392
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi i32 [ %6, %5 ], [ 0, %0 ]
  br i1 %4, label %11, label %9, !prof !391

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4, !tbaa !392
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %10, %9 ], [ 0, %7 ]
  %13 = sub nsw i32 %2, %12
  br i1 %4, label %20, label %14, !prof !391

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.VEC_int_base, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !394
  %17 = load i32, ptr %3, align 4, !tbaa !392
  %18 = sub i32 %16, %17
  %19 = icmp uge i32 %18, %13
  br label %22

20:                                               ; preds = %11
  %21 = icmp eq i32 %12, %2
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i1 [ %19, %14 ], [ %21, %20 ]
  br i1 %23, label %26, label %24, !prof !395

24:                                               ; preds = %22
  %25 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %3, i32 noundef %13, i64 noundef 8, i64 noundef 4) #27
  store ptr %25, ptr @sched_luids, align 8, !tbaa !95
  br label %26

26:                                               ; preds = %22, %24
  %27 = load ptr, ptr @sched_luids, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %2, ptr %27, align 4, !tbaa !392
  %28 = getelementptr inbounds %struct.VEC_int_base, ptr %27, i64 0, i32 2
  %29 = sext i32 %8 to i64
  %30 = getelementptr inbounds i32, ptr %28, i64 %29
  %31 = sub nsw i32 %2, %8
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %30, i8 0, i64 %33, i1 false), !prof !540
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @luids_init_insn(ptr noundef %0) #11 !prof !541 !PGOFuncName !542 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %11, label %6, !prof !421

6:                                                ; preds = %1
  %7 = load ptr, ptr @common_sched_info, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.common_sched_info_def, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !422
  %10 = tail call i32 %9(ptr noundef nonnull %0) #27, !prof !543
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi i32 [ %10, %6 ], [ 1, %1 ]
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %17, !prof !421

14:                                               ; preds = %11
  %15 = load i32, ptr @sched_max_luid, align 4, !tbaa !110
  %16 = add nsw i32 %15, %12
  store i32 %16, ptr @sched_max_luid, align 4, !tbaa !110
  br label %17

17:                                               ; preds = %11, %14
  %18 = phi i32 [ %15, %14 ], [ -1, %11 ]
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !106
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_int_base, ptr %19, i64 0, i32 2, i64 %22
  store i32 %18, ptr %23, align 4, !tbaa !110
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @insn_luid(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !prof !94 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !106
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !110
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @extend_h_i_d() #11 !prof !94 !PGOFuncName !544 {
  %1 = tail call i32 @get_max_uid() #27
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !399

5:                                                ; preds = %0
  %6 = load i32, ptr %3, align 8, !tbaa !400
  br label %7

7:                                                ; preds = %0, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %9 = sub i32 %2, %8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %56, !prof !399

11:                                               ; preds = %7
  br i1 %4, label %18, label %12, !prof !402

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !403
  %15 = load i32, ptr %3, align 8, !tbaa !400
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %16, %9
  br i1 %17, label %18, label %56, !prof !402

18:                                               ; preds = %11, %12
  %19 = tail call i32 @get_max_uid() #27
  %20 = mul nsw i32 %19, 3
  %21 = sdiv i32 %20, 2
  %22 = load ptr, ptr @h_i_d, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !402

24:                                               ; preds = %18
  %25 = load i32, ptr %22, align 8, !tbaa !400
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %25, %24 ], [ 0, %18 ]
  br i1 %23, label %30, label %28, !prof !402

28:                                               ; preds = %26
  %29 = load i32, ptr %22, align 8, !tbaa !400
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %29, %28 ], [ 0, %26 ]
  %32 = sub nsw i32 %21, %31
  br i1 %23, label %39, label %33, !prof !402

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %22, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !403
  %36 = load i32, ptr %22, align 8, !tbaa !400
  %37 = sub i32 %35, %36
  %38 = icmp uge i32 %37, %32
  br label %41

39:                                               ; preds = %30
  %40 = icmp eq i32 %31, %21
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi i1 [ %38, %33 ], [ %40, %39 ]
  br i1 %42, label %45, label %43, !prof !404

43:                                               ; preds = %41
  %44 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %22, i32 noundef %32, i64 noundef 8, i64 noundef 96) #27
  store ptr %44, ptr @h_i_d, align 8, !tbaa !95
  br label %45

45:                                               ; preds = %41, %43
  %46 = load ptr, ptr @h_i_d, align 8, !tbaa !95, !nonnull !396, !noundef !396
  store i32 %21, ptr %46, align 8, !tbaa !400
  %47 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %46, i64 0, i32 2
  %48 = sext i32 %27 to i64
  %49 = getelementptr inbounds %struct._haifa_insn_data, ptr %47, i64 %48
  %50 = sub nsw i32 %21, %27
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, 96
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %49, i8 0, i64 %52, i1 false), !prof !545
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !406
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !402

55:                                               ; preds = %45
  tail call void %53() #27
  br label %56

56:                                               ; preds = %55, %45, %12, %7
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @init_h_i_d(ptr nocapture noundef readonly %0) #23 !prof !541 !PGOFuncName !546 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !106
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !110
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %30, !prof !547

9:                                                ; preds = %1
  %10 = load ptr, ptr @h_i_d, align 8
  %11 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %10, i64 0, i32 2, i64 %5, i32 5
  store i16 -1, ptr %11, align 4, !tbaa !138
  %12 = load ptr, ptr @h_i_d, align 8
  %13 = load i32, ptr %3, align 8, !tbaa !106
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %12, i64 0, i32 2, i64 %14, i32 4
  store i32 -2, ptr %15, align 8, !tbaa !178
  %16 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !110
  %17 = xor i32 %16, -1
  %18 = load ptr, ptr @h_i_d, align 8
  %19 = load i32, ptr %3, align 8, !tbaa !106
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %18, i64 0, i32 2, i64 %20, i32 2
  store i32 %17, ptr %21, align 8, !tbaa !189
  %22 = load ptr, ptr @h_i_d, align 8
  %23 = load i32, ptr %3, align 8, !tbaa !106
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %22, i64 0, i32 2, i64 %24, i32 3
  store i32 %17, ptr %25, align 4, !tbaa !348
  %26 = load ptr, ptr @h_i_d, align 8
  %27 = load i32, ptr %3, align 8, !tbaa !106
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %26, i64 0, i32 2, i64 %28, i32 8
  store i32 134217728, ptr %29, align 8, !tbaa !190
  br label %30

30:                                               ; preds = %9, %1
  ret void
}

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @sched_emit_insn(ptr noundef %0) local_unnamed_addr #9 !prof !94 {
  %2 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !95
  %3 = tail call ptr @emit_insn_after(ptr noundef %0, ptr noundef %2) #27
  store ptr %3, ptr @last_scheduled_insn, align 8, !tbaa !95
  tail call fastcc void @haifa_init_insn(ptr noundef %3)
  ret ptr %3
}

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @haifa_init_insn(ptr noundef %0) unnamed_addr #9 !prof !94 {
  %2 = alloca %struct.sched_scan_info_def, align 8
  %3 = alloca %struct.sched_scan_info_def, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5495, ptr noundef nonnull @.str.3) #27
  br label %6

6:                                                ; preds = %1, %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.sched_init_luids.ssi, i64 32, i1 false)
  store ptr %3, ptr @sched_scan_info, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.sched_scan_info_def, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !352
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  call void %8() #27
  br label %11

11:                                               ; preds = %10, %6
  br i1 %4, label %18, label %12

12:                                               ; preds = %11
  %13 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct.sched_scan_info_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !409
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void %15(ptr noundef nonnull %0) #27
  br label %18

18:                                               ; preds = %11, %12, %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !406
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void %19() #27
  br label %22

22:                                               ; preds = %18, %21
  call void @sched_deps_init(i8 noundef zeroext 0) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @__const.haifa_init_h_i_d.ssi, i64 32, i1 false)
  store ptr %2, ptr @sched_scan_info, align 8, !tbaa !95
  %23 = getelementptr inbounds %struct.sched_scan_info_def, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !352
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void %24() #27
  br label %27

27:                                               ; preds = %26, %22
  br i1 %4, label %34, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr @sched_scan_info, align 8, !tbaa !95
  %30 = getelementptr inbounds %struct.sched_scan_info_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !409
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  call void %31(ptr noundef nonnull %0) #27
  br label %34

34:                                               ; preds = %27, %28, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  %35 = load i8, ptr @adding_bb_to_current_region_p, align 1, !tbaa !106
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @sd_init_insn(ptr noundef %0) #27
  call void @extend_dependency_caches(i32 noundef 1, i8 noundef zeroext 0) #27
  br label %38

38:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @may_trap_exp(ptr noundef %0, i32 noundef %1) unnamed_addr #11 !prof !548 !PGOFuncName !549 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %95, label %4, !prof !550

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %1, 0
  %8 = icmp eq i32 %6, 43
  br i1 %7, label %14, label %9, !prof !551

9:                                                ; preds = %4
  br i1 %8, label %10, label %13

10:                                               ; preds = %9
  %11 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %95

13:                                               ; preds = %10, %9
  br label %95

14:                                               ; preds = %4
  br i1 %8, label %15, label %45, !prof !552

15:                                               ; preds = %14
  %16 = and i32 %5, 134217728
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %95, !prof !553

18:                                               ; preds = %15
  %19 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #27
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %95, label %21, !prof !554

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %44 [
    i16 37, label %95
    i16 49, label %26
    i16 50, label %26
    i16 122, label %26
  ], !prof !555

26:                                               ; preds = %21, %21, %21
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !110
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %95, label %35, !prof !556

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !110
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %95, label %44, !prof !557

44:                                               ; preds = %35, %21
  br label %95

45:                                               ; preds = %14
  %46 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #27
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %95, !prof !558

48:                                               ; preds = %45
  %49 = zext nneg i32 %6 to i64
  %50 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !106
  %54 = zext i8 %53 to i64
  br label %55

55:                                               ; preds = %91, %48
  %56 = phi i64 [ %58, %91 ], [ %54, %48 ]
  %57 = phi i32 [ %92, %91 ], [ 0, %48 ]
  %58 = add nsw i64 %56, -1
  %59 = icmp sgt i64 %56, 0
  br i1 %59, label %60, label %95, !prof !559

60:                                               ; preds = %55
  %61 = getelementptr inbounds i8, ptr %51, i64 %58
  %62 = load i8, ptr %61, align 1, !tbaa !106
  switch i8 %62, label %91 [
    i8 101, label %69
    i8 69, label %63
  ], !prof !560

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %65 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %58
  %66 = load ptr, ptr %65, align 8, !tbaa !106
  %67 = load i32, ptr %66, align 8, !tbaa !118
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %81, label %91

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %71 = getelementptr inbounds [1 x %union.rtunion_def], ptr %70, i64 0, i64 %58
  %72 = load ptr, ptr %71, align 8, !tbaa !106
  %73 = tail call fastcc i32 @may_trap_exp(ptr noundef %72, i32 noundef 0), !range !131
  %74 = tail call i32 @llvm.smax.i32(i32 %57, i32 %73)
  br label %91

75:                                               ; preds = %81
  %76 = add nuw nsw i64 %82, 1
  %77 = load ptr, ptr %65, align 8, !tbaa !106
  %78 = load i32, ptr %77, align 8, !tbaa !118
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %91, !llvm.loop !561

81:                                               ; preds = %63, %75
  %82 = phi i64 [ %76, %75 ], [ 0, %63 ]
  %83 = phi ptr [ %77, %75 ], [ %66, %63 ]
  %84 = phi i32 [ %88, %75 ], [ %57, %63 ]
  %85 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %82
  %86 = load ptr, ptr %85, align 8, !tbaa !95
  %87 = tail call fastcc i32 @may_trap_exp(ptr noundef %86, i32 noundef 0), !range !131
  %88 = tail call i32 @llvm.smax.i32(i32 %84, i32 %87)
  %89 = and i32 %88, 2147483646
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %75

91:                                               ; preds = %81, %75, %63, %60, %69
  %92 = phi i32 [ %74, %69 ], [ %57, %60 ], [ %57, %63 ], [ %88, %75 ], [ %88, %81 ]
  %93 = and i32 %92, -2
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %55, !prof !562, !llvm.loop !563

95:                                               ; preds = %91, %55, %21, %45, %26, %35, %18, %15, %10, %2, %44, %13
  %96 = phi i32 [ 0, %13 ], [ 3, %44 ], [ 0, %2 ], [ 5, %10 ], [ 4, %15 ], [ 1, %18 ], [ 2, %35 ], [ 2, %26 ], [ 5, %45 ], [ 2, %21 ], [ %57, %55 ], [ %92, %91 ]
  ret i32 %96
}

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sd_find_dep_between(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @dep_list_size(ptr noundef %0) unnamed_addr #11 !prof !94 !PGOFuncName !564 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !110
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !427

6:                                                ; preds = %1
  %7 = tail call i32 @sd_lists_size(ptr noundef %0, i32 noundef 4) #27
  br label %47

8:                                                ; preds = %1
  store i32 4, ptr %2, align 8, !tbaa.struct !324
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %0, ptr %9, align 8, !tbaa.struct !325
  %10 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr @sd_iterator_start.null_link, ptr %10, align 8, !tbaa.struct !326
  %11 = getelementptr inbounds i8, ptr %2, i64 24
  store i8 0, ptr %11, align 8, !tbaa.struct !327
  %12 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %8, %32
  %15 = phi i32 [ %34, %32 ], [ 0, %8 ]
  %16 = phi i32 [ %33, %32 ], [ 0, %8 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct._dep, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !143
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = add nsw i32 %16, 1
  br label %32

25:                                               ; preds = %14
  %26 = load ptr, ptr %17, align 8, !tbaa !141
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp ne i32 %28, 7
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 %15, %30
  br label %32

32:                                               ; preds = %25, %23
  %33 = phi i32 [ %24, %23 ], [ %16, %25 ]
  %34 = phi i32 [ %15, %23 ], [ %31, %25 ]
  %35 = load ptr, ptr %10, align 8, !tbaa !329
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = getelementptr inbounds %struct._dep_link, ptr %36, i64 0, i32 1
  store ptr %37, ptr %10, align 8, !tbaa !329
  %38 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %14, !llvm.loop !435

40:                                               ; preds = %32, %8
  %41 = phi i32 [ 0, %8 ], [ %33, %32 ]
  %42 = phi i32 [ 0, %8 ], [ %34, %32 ]
  %43 = add nsw i32 %42, %41
  %44 = call i32 @sd_lists_size(ptr noundef %0, i32 noundef 4) #27
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 997, ptr noundef nonnull @.str.3) #27
  br label %47

47:                                               ; preds = %46, %40, %6
  %48 = phi i32 [ %7, %6 ], [ %42, %40 ], [ %42, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  ret i32 %48
}

declare i32 @sd_lists_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @setup_ref_regs(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !94 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = icmp sgt i32 %7, 52
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr @region_ref_regs, align 8, !tbaa !95
  %11 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef %7) #27
  br label %65

12:                                               ; preds = %5
  %13 = sext i32 %7 to i64
  %14 = lshr i32 %2, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !106
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %12
  %21 = zext i8 %18 to i32
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i32 [ %24, %22 ], [ %21, %20 ]
  %24 = add nsw i32 %23, -1
  %25 = load ptr, ptr @region_ref_regs, align 8, !tbaa !95
  %26 = add nsw i32 %24, %7
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %26) #27
  %28 = icmp sgt i32 %23, 1
  br i1 %28, label %22, label %65, !llvm.loop !565

29:                                               ; preds = %1
  %30 = zext nneg i32 %3 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !95
  %33 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %30
  %34 = load i8, ptr %33, align 1, !tbaa !106
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = zext i8 %34 to i64
  br label %39

39:                                               ; preds = %36, %63
  %40 = phi i64 [ %38, %36 ], [ %41, %63 ]
  %41 = add nsw i64 %40, -1
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !106
  switch i8 %43, label %63 [
    i8 101, label %49
    i8 69, label %44
  ]

44:                                               ; preds = %39
  %45 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  %47 = load i32, ptr %46, align 8, !tbaa !118
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %53, label %63

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = getelementptr inbounds [1 x %union.rtunion_def], ptr %50, i64 0, i64 %41
  %52 = load ptr, ptr %51, align 8, !tbaa !106
  tail call fastcc void @setup_ref_regs(ptr noundef %52)
  br label %63

53:                                               ; preds = %44, %53
  %54 = phi i64 [ %58, %53 ], [ 0, %44 ]
  %55 = phi ptr [ %59, %53 ], [ %46, %44 ]
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %55, i64 0, i32 1, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  tail call fastcc void @setup_ref_regs(ptr noundef %57)
  %58 = add nuw nsw i64 %54, 1
  %59 = load ptr, ptr %45, align 8, !tbaa !106
  %60 = load i32, ptr %59, align 8, !tbaa !118
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %53, label %63, !llvm.loop !566

63:                                               ; preds = %53, %44, %39, %49
  %64 = icmp sgt i64 %40, 1
  br i1 %64, label %39, label %65, !llvm.loop !567

65:                                               ; preds = %63, %22, %29, %12, %9
  ret void
}

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @mark_regno_birth_or_death(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !94 {
  %3 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !95
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !110
  %7 = icmp sgt i32 %0, 52
  %8 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %41

9:                                                ; preds = %2
  br i1 %8, label %61, label %10

10:                                               ; preds = %9
  %11 = icmp eq i8 %1, 0
  %12 = load ptr, ptr @curr_reg_live, align 8, !tbaa !95
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %13
  br i1 %11, label %28, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %0) #27
  %17 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !95
  %18 = getelementptr inbounds ptr, ptr %17, i64 %4
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %13, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !110
  %26 = load i32, ptr %14, align 4, !tbaa !110
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %14, align 4, !tbaa !110
  br label %61

28:                                               ; preds = %10
  %29 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %12, i32 noundef %0) #27
  %30 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !95
  %31 = getelementptr inbounds ptr, ptr %30, i64 %4
  %32 = load ptr, ptr %31, align 8, !tbaa !95
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %13, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !110
  %39 = load i32, ptr %14, align 4, !tbaa !110
  %40 = sub nsw i32 %39, %38
  store i32 %40, ptr %14, align 4, !tbaa !110
  br label %61

41:                                               ; preds = %2
  br i1 %8, label %61, label %42

42:                                               ; preds = %41
  %43 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !209
  %44 = zext nneg i32 %0 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %43, %45
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = icmp eq i8 %1, 0
  %50 = load ptr, ptr @curr_reg_live, align 8, !tbaa !95
  %51 = zext i32 %6 to i64
  %52 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %51
  br i1 %49, label %57, label %53

53:                                               ; preds = %48
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %50, i32 noundef %0) #27
  %55 = load i32, ptr %52, align 4, !tbaa !110
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %52, align 4, !tbaa !110
  br label %61

57:                                               ; preds = %48
  %58 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %50, i32 noundef %0) #27
  %59 = load i32, ptr %52, align 4, !tbaa !110
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %52, align 4, !tbaa !110
  br label %61

61:                                               ; preds = %41, %42, %57, %53, %9, %28, %15
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_register_pressure(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !94 {
  %2 = load ptr, ptr @h_i_d, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !106
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %2, i64 0, i32 2, i64 %5, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %1, %44
  %10 = phi ptr [ %46, %44 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.reg_use_data, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !175
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @h_i_d, align 8
  br label %16

16:                                               ; preds = %14, %32
  %17 = phi i1 [ %13, %14 ], [ %35, %32 ]
  %18 = phi ptr [ %12, %14 ], [ %34, %32 ]
  %19 = getelementptr inbounds %struct.reg_use_data, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !177
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -11
  %24 = icmp ult i32 %23, -3
  br i1 %24, label %32, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !106
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %15, i64 0, i32 2, i64 %28, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !178
  %31 = icmp eq i32 %30, -3
  br i1 %31, label %32, label %36

32:                                               ; preds = %25, %16
  %33 = getelementptr inbounds %struct.reg_use_data, ptr %18, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = icmp eq ptr %34, %10
  br i1 %35, label %37, label %16, !llvm.loop !179

36:                                               ; preds = %25
  br i1 %17, label %37, label %44

37:                                               ; preds = %32, %9, %36
  %38 = load ptr, ptr @curr_reg_live, align 8, !tbaa !95
  %39 = load i32, ptr %10, align 8, !tbaa !180
  %40 = tail call i32 @bitmap_bit_p(ptr noundef %38, i32 noundef %39) #27
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %10, align 8, !tbaa !180
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %43, i8 noundef zeroext 0)
  br label %44

44:                                               ; preds = %36, %37, %42
  %45 = getelementptr inbounds %struct.reg_use_data, ptr %10, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %9, !llvm.loop !568

48:                                               ; preds = %44, %1
  %49 = load ptr, ptr @h_i_d, align 8
  %50 = load i32, ptr %3, align 8, !tbaa !106
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %49, i64 0, i32 2, i64 %51, i32 16
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %48, %55
  %56 = phi ptr [ %59, %55 ], [ %53, %48 ]
  %57 = load i32, ptr %56, align 8, !tbaa !569
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %57, i8 noundef zeroext 1)
  %58 = getelementptr inbounds %struct.reg_set_data, ptr %56, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !95
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %55, !llvm.loop !571

61:                                               ; preds = %55, %48
  ret void
}

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_bb_for_insn(ptr noundef) local_unnamed_addr #3

declare void @unlink_block(ptr noundef) local_unnamed_addr #3

declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @move_succs(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !94 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !359
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5029, ptr noundef nonnull @.str.3) #27
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !95
  store ptr %8, ptr %3, align 8, !tbaa !359
  br label %9

9:                                                ; preds = %33, %7
  %10 = phi i32 [ 0, %7 ], [ %34, %33 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !95
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !215
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds %struct.VEC_edge_base, ptr %11, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ]
  br i1 %17, label %35, label %24

24:                                               ; preds = %22
  store ptr %1, ptr %23, align 8, !tbaa !478
  %25 = load ptr, ptr %3, align 8, !tbaa !95
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %25, align 8, !tbaa !215
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %28, %27 ], [ 0, %24 ]
  %31 = icmp ult i32 %10, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 738, ptr noundef nonnull @.str.3) #27
  br label %33

33:                                               ; preds = %29, %32
  %34 = add i32 %10, 1
  br label %9, !llvm.loop !572

35:                                               ; preds = %22
  store ptr null, ptr %0, align 8, !tbaa !95
  ret void
}

declare void @df_mark_solutions_dirty() local_unnamed_addr #3

declare void @print_insn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_reservation(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare void @sd_delete_dep(ptr noundef byval(%struct._sd_iterator) align 8) local_unnamed_addr #3

declare void @sd_resolve_dep(ptr noundef byval(%struct._sd_iterator) align 8) local_unnamed_addr #3

declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sd_add_dep(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ready_remove_insn(ptr noundef readnone %0) unnamed_addr #9 !prof !94 {
  %2 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !168
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %1
  %5 = load ptr, ptr @ready, align 8, !tbaa !170
  %6 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !171
  %7 = sext i32 %6 to i64
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %4, %18
  %10 = phi i64 [ 0, %4 ], [ %19, %18 ]
  %11 = sub nsw i64 %7, %10
  %12 = getelementptr inbounds ptr, ptr %5, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = trunc i64 %10 to i32
  %17 = tail call fastcc ptr @ready_remove(i32 noundef %16)
  br label %22

18:                                               ; preds = %9
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %21, label %9, !llvm.loop !573

21:                                               ; preds = %18, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1496, ptr noundef nonnull @.str.3) #27
  br label %22

22:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @contributes_to_priority_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !94 !PGOFuncName !574 {
  %2 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %36, label %7, !prof !439

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !141
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %36, label %12, !prof !439

12:                                               ; preds = %7
  %13 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct.haifa_sched_info, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !440
  %16 = tail call i32 %15(ptr noundef nonnull %3, ptr noundef nonnull %8) #27, !prof !575
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18, !prof !442

18:                                               ; preds = %12
  %19 = load ptr, ptr @sched_deps_info, align 8, !tbaa !95
  %20 = getelementptr inbounds %struct.sched_deps_info_def, ptr %19, i64 0, i32 12
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24, !prof !443

24:                                               ; preds = %18
  %25 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.spec_info_def, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !313
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !332
  %33 = and i32 %32, 16777215
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24, %18
  br label %36

36:                                               ; preds = %30, %12, %1, %7, %35
  %37 = phi i8 [ 1, %35 ], [ 0, %7 ], [ 0, %1 ], [ 0, %12 ], [ 0, %30 ]
  ret i8 %37
}

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_free_INSN_LIST_elem(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @create_check_block_twin(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !94 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._dep, align 8
  %6 = alloca %struct._sd_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct._dep, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %10 = load ptr, ptr @h_i_d, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !106
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %10, i64 0, i32 2, i64 %13, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !333
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4457, ptr noundef nonnull @.str.3) #27
  br label %18

18:                                               ; preds = %2, %17
  %19 = icmp eq i8 %1, 0
  %20 = load ptr, ptr @h_i_d, align 8
  %21 = load i32, ptr %11, align 8, !tbaa !106
  %22 = zext i32 %21 to i64
  br i1 %19, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %20, i64 0, i32 2, i64 %22, i32 8
  br label %45

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %20, i64 0, i32 2, i64 %22, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !328
  %28 = load ptr, ptr @cfun, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !293
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !295
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %20, i64 0, i32 2, i64 %22, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !190
  %37 = and i32 %36, 16777215
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4464, ptr noundef nonnull @.str.3) #27
  br label %40

40:                                               ; preds = %34, %39
  %41 = load ptr, ptr @h_i_d, align 8
  %42 = load i32, ptr %11, align 8, !tbaa !106
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %41, i64 0, i32 2, i64 %43, i32 10
  br label %45

45:                                               ; preds = %40, %23
  %46 = phi ptr [ %44, %40 ], [ %24, %23 ]
  %47 = load i32, ptr %46, align 8, !tbaa !110
  %48 = and i32 %47, 16777215
  %49 = icmp ne i8 %1, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 29), align 8, !tbaa !576
  %52 = tail call zeroext i8 %51(i32 noundef %48) #27
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %45
  %55 = tail call ptr @sched_create_recovery_block(ptr noundef null)
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !106
  %58 = load ptr, ptr %57, align 8, !tbaa !241
  br label %65

59:                                               ; preds = %50
  %60 = load ptr, ptr @cfun, align 8, !tbaa !95
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !293
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !295
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi ptr [ %58, %54 ], [ null, %59 ]
  %67 = phi ptr [ %55, %54 ], [ %64, %59 ]
  %68 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 30), align 8, !tbaa !577
  %69 = tail call ptr %68(ptr noundef %0, ptr noundef %66, i32 noundef %48) #27
  %70 = load ptr, ptr @cfun, align 8, !tbaa !95
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !293
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !295
  %75 = icmp eq ptr %67, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %65
  %77 = tail call ptr @emit_jump_insn_before(ptr noundef %69, ptr noundef %0) #27
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %66, ptr %78, align 8, !tbaa !106
  %79 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !106
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !106
  br label %84

82:                                               ; preds = %65
  %83 = tail call ptr @emit_insn_before(ptr noundef %69, ptr noundef %0) #27
  br label %84

84:                                               ; preds = %82, %76
  %85 = phi ptr [ %77, %76 ], [ %83, %82 ]
  tail call fastcc void @haifa_init_insn(ptr noundef %85)
  %86 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !110
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4503, ptr noundef nonnull @.str.3) #27
  br label %89

89:                                               ; preds = %84, %88
  %90 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !110
  %91 = add nsw i32 %90, 1
  tail call void @sched_extend_ready_list(i32 noundef %91)
  %92 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %93 = getelementptr inbounds %struct.haifa_sched_info, ptr %92, i64 0, i32 14
  %94 = load ptr, ptr %93, align 8, !tbaa !578
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  tail call void %94(ptr noundef %0, i32 noundef 0) #27
  br label %97

97:                                               ; preds = %96, %89
  %98 = load ptr, ptr @h_i_d, align 8
  %99 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !106
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %98, i64 0, i32 2, i64 %101, i32 11
  store ptr %67, ptr %102, align 8, !tbaa !328
  %103 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %107 = getelementptr inbounds %struct.spec_info_def, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !334
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %112 = getelementptr inbounds %struct.haifa_sched_info, ptr %111, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !301
  %114 = tail call ptr %113(ptr noundef %85, i32 noundef 0) #27
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %108, ptr noundef nonnull @.str.50, ptr noundef %114)
  br label %116

116:                                              ; preds = %110, %105, %97
  %117 = load ptr, ptr @h_i_d, align 8
  %118 = load i32, ptr %11, align 8, !tbaa !106
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %117, i64 0, i32 2, i64 %119, i32 12
  %121 = load ptr, ptr %120, align 8, !tbaa !333
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4515, ptr noundef nonnull @.str.3) #27
  br label %124

124:                                              ; preds = %116, %123
  %125 = load ptr, ptr @cfun, align 8, !tbaa !95
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !293
  %128 = getelementptr inbounds %struct.control_flow_graph, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !295
  %130 = icmp eq ptr %67, %129
  br i1 %130, label %176, label %131

131:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  store i32 8, ptr %6, align 8, !tbaa.struct !324
  %132 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %0, ptr %132, align 8, !tbaa.struct !325
  %133 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr @sd_iterator_start.null_link, ptr %133, align 8, !tbaa.struct !326
  %134 = getelementptr inbounds i8, ptr %6, i64 24
  store i8 0, ptr %134, align 8, !tbaa.struct !327
  %135 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %131, %145
  %138 = load ptr, ptr %7, align 8, !tbaa !95
  %139 = getelementptr inbounds %struct._dep, ptr %138, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !332
  %141 = and i32 %140, 33554432
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  %144 = load ptr, ptr %138, align 8, !tbaa !141
  call void @init_dep(ptr noundef nonnull %8, ptr noundef %144, ptr noundef %85, i32 noundef 0) #27
  call void @sd_add_dep(ptr noundef nonnull %8, i8 noundef zeroext 1) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  br label %145

145:                                              ; preds = %137, %143
  %146 = load ptr, ptr %133, align 8, !tbaa !329
  %147 = load ptr, ptr %146, align 8, !tbaa !95
  %148 = getelementptr inbounds %struct._dep_link, ptr %147, i64 0, i32 1
  store ptr %148, ptr %133, align 8, !tbaa !329
  %149 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %137, !llvm.loop !579

151:                                              ; preds = %145, %131
  %152 = load ptr, ptr @h_i_d, align 8
  %153 = load i32, ptr %11, align 8, !tbaa !106
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %152, i64 0, i32 2, i64 %154, i32 12
  %156 = load ptr, ptr %155, align 8, !tbaa !333
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 7
  %158 = load ptr, ptr %157, align 8, !tbaa !106
  %159 = getelementptr inbounds %struct.rtl_bb_info, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !201
  %161 = call ptr @emit_insn_after(ptr noundef %156, ptr noundef %160) #27
  call fastcc void @haifa_init_insn(ptr noundef %161)
  %162 = load i32, ptr @sched_verbose, align 4, !tbaa !110
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %175, label %164

164:                                              ; preds = %151
  %165 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %166 = getelementptr inbounds %struct.spec_info_def, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !334
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.rtx_def, ptr %161, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !106
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 9
  %173 = load i32, ptr %172, align 8, !tbaa !297
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %167, ptr noundef nonnull @.str.51, i32 noundef %171, i32 noundef %173)
  br label %175

175:                                              ; preds = %169, %164, %151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %193

176:                                              ; preds = %124
  %177 = load ptr, ptr @h_i_d, align 8
  %178 = load i32, ptr %11, align 8, !tbaa !106
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %177, i64 0, i32 2, i64 %179, i32 12
  %181 = load ptr, ptr %180, align 8, !tbaa !333
  %182 = load i32, ptr %99, align 8, !tbaa !106
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %177, i64 0, i32 2, i64 %183, i32 12
  store ptr %181, ptr %184, align 8, !tbaa !333
  %185 = load ptr, ptr @h_d_i_d, align 8
  %186 = load ptr, ptr @sched_luids, align 8
  %187 = load i32, ptr %99, align 8, !tbaa !106
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.VEC_int_base, ptr %186, i64 0, i32 2, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !110
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %185, i64 0, i32 2, i64 %191, i32 1
  store i32 1, ptr %192, align 4, !tbaa !493
  br label %193

193:                                              ; preds = %176, %175
  %194 = phi ptr [ %161, %175 ], [ %85, %176 ]
  call void @sd_copy_back_deps(ptr noundef %194, ptr noundef %0, i8 noundef zeroext 1) #27
  %195 = load ptr, ptr @cfun, align 8, !tbaa !95
  %196 = getelementptr inbounds %struct.function, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !293
  %198 = getelementptr inbounds %struct.control_flow_graph, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !295
  %200 = icmp eq ptr %67, %199
  br i1 %200, label %217, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !106
  %204 = load ptr, ptr @sched_split_block, align 8, !tbaa !95
  %205 = call ptr %204(ptr noundef %203, ptr noundef %85) #27
  call void @sched_create_recovery_edges(ptr noundef %203, ptr noundef %67, ptr noundef %205)
  %206 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !95
  call void %206(ptr noundef %205, ptr noundef %203) #27
  %207 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !95
  %208 = load ptr, ptr @cfun, align 8, !tbaa !95
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !293
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !295
  call void %207(ptr noundef %67, ptr noundef %212) #27
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 7
  %214 = load ptr, ptr %213, align 8, !tbaa !106
  %215 = getelementptr inbounds %struct.rtl_bb_info, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !201
  call fastcc void @haifa_init_insn(ptr noundef %216)
  br label %217

217:                                              ; preds = %201, %193
  store i32 3, ptr %3, align 8, !tbaa.struct !324
  %218 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %0, ptr %218, align 8, !tbaa.struct !325
  %219 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr @sd_iterator_start.null_link, ptr %219, align 8, !tbaa.struct !326
  %220 = getelementptr inbounds i8, ptr %3, i64 24
  store i8 0, ptr %220, align 8, !tbaa.struct !327
  %221 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %253, label %223

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct._dep, ptr %5, i64 0, i32 1
  br label %225

225:                                              ; preds = %223, %247
  %226 = load ptr, ptr %4, align 8, !tbaa !95
  %227 = load ptr, ptr %226, align 8, !tbaa !141
  %228 = getelementptr inbounds %struct._dep, ptr %226, i64 0, i32 3
  %229 = load i32, ptr %228, align 4, !tbaa !332
  %230 = and i32 %229, 258111
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %225
  br i1 %19, label %234, label %233

233:                                              ; preds = %232
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4602, ptr noundef nonnull @.str.3) #27
  br label %234

234:                                              ; preds = %232, %233
  %235 = and i32 %229, -258112
  br label %236

236:                                              ; preds = %234, %225
  %237 = phi i32 [ %235, %234 ], [ %229, %225 ]
  %238 = getelementptr inbounds %struct._dep, ptr %226, i64 0, i32 2
  %239 = load i32, ptr %238, align 8, !tbaa !146
  call void @init_dep_1(ptr noundef nonnull %5, ptr noundef %227, ptr noundef %85, i32 noundef %239, i32 noundef %237) #27
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #27
  %240 = load ptr, ptr @cfun, align 8, !tbaa !95
  %241 = getelementptr inbounds %struct.function, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !293
  %243 = getelementptr inbounds %struct.control_flow_graph, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !295
  %245 = icmp eq ptr %67, %244
  br i1 %245, label %247, label %246

246:                                              ; preds = %236
  store ptr %194, ptr %224, align 8, !tbaa !143
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #27
  br label %247

247:                                              ; preds = %246, %236
  %248 = load ptr, ptr %219, align 8, !tbaa !329
  %249 = load ptr, ptr %248, align 8, !tbaa !95
  %250 = getelementptr inbounds %struct._dep_link, ptr %249, i64 0, i32 1
  store ptr %250, ptr %219, align 8, !tbaa !329
  %251 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %225, !llvm.loop !580

253:                                              ; preds = %247, %217
  store i32 2, ptr %3, align 8, !tbaa.struct !324
  store ptr %0, ptr %218, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %219, align 8, !tbaa.struct !326
  store i8 0, ptr %220, align 8, !tbaa.struct !327
  %254 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %271, label %256

256:                                              ; preds = %253, %268
  %257 = load ptr, ptr %4, align 8, !tbaa !95
  %258 = getelementptr inbounds %struct._dep, ptr %257, i64 0, i32 3
  %259 = load i32, ptr %258, align 4, !tbaa !332
  %260 = and i32 %259, 258111
  %261 = icmp ne i32 %260, 0
  %262 = or i1 %49, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %3) #27
  br label %268

264:                                              ; preds = %256
  %265 = load ptr, ptr %219, align 8, !tbaa !329
  %266 = load ptr, ptr %265, align 8, !tbaa !95
  %267 = getelementptr inbounds %struct._dep_link, ptr %266, i64 0, i32 1
  store ptr %267, ptr %219, align 8, !tbaa !329
  br label %268

268:                                              ; preds = %264, %263
  %269 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %256, !llvm.loop !581

271:                                              ; preds = %268, %253
  %272 = load ptr, ptr @h_i_d, align 8
  %273 = load i32, ptr %11, align 8, !tbaa !106
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %272, i64 0, i32 2, i64 %274, i32 9
  %276 = load i32, ptr %275, align 4, !tbaa !323
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %271
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4635, ptr noundef nonnull @.str.3) #27
  br label %279

279:                                              ; preds = %271, %278
  %280 = load ptr, ptr @h_i_d, align 8
  %281 = load i32, ptr %11, align 8, !tbaa !106
  %282 = zext i32 %281 to i64
  br i1 %19, label %283, label %304

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %280, i64 0, i32 2, i64 %282, i32 8
  %285 = load i32, ptr %284, align 8, !tbaa !190
  %286 = and i32 %285, 258111
  %287 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %280, i64 0, i32 2, i64 %282, i32 9
  store i32 %286, ptr %287, align 4, !tbaa !323
  %288 = load ptr, ptr @h_i_d, align 8
  %289 = load i32, ptr %99, align 8, !tbaa !106
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %288, i64 0, i32 2, i64 %290, i32 10
  store i32 %286, ptr %291, align 8, !tbaa !582
  %292 = and i32 %285, 63
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %283
  %295 = call i32 @get_dep_weak(i32 noundef %285, i32 noundef 63) #27
  %296 = call i32 @set_dep_weak(i32 noundef 0, i32 noundef 4032, i32 noundef %295) #27
  br label %297

297:                                              ; preds = %294, %283
  %298 = phi i32 [ %296, %294 ], [ 0, %283 ]
  %299 = and i32 %285, 258048
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %297
  %302 = call i32 @get_dep_weak(i32 noundef %285, i32 noundef 258048) #27
  %303 = call i32 @set_dep_weak(i32 noundef %298, i32 noundef 16515072, i32 noundef %302) #27
  br label %310

304:                                              ; preds = %279
  %305 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %280, i64 0, i32 2, i64 %282, i32 10
  %306 = load i32, ptr %305, align 8, !tbaa !582
  %307 = load i32, ptr %99, align 8, !tbaa !106
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %280, i64 0, i32 2, i64 %308, i32 10
  store i32 %306, ptr %309, align 8, !tbaa !582
  br label %310

310:                                              ; preds = %297, %301, %304
  %311 = phi i32 [ 0, %304 ], [ %303, %301 ], [ %298, %297 ]
  call fastcc void @process_insn_forw_deps_be_in_spec(ptr noundef %0, ptr noundef %194, i32 noundef %311)
  %312 = load ptr, ptr @cfun, align 8, !tbaa !95
  %313 = getelementptr inbounds %struct.function, ptr %312, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !293
  %315 = getelementptr inbounds %struct.control_flow_graph, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !295
  %317 = icmp eq ptr %67, %316
  br i1 %317, label %351, label %318

318:                                              ; preds = %310
  br i1 %19, label %319, label %320

319:                                              ; preds = %318
  call void @init_dep(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %85, i32 noundef 0) #27
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #27
  call void @init_dep(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %194, i32 noundef 11) #27
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #27
  br label %350

320:                                              ; preds = %318
  %321 = load ptr, ptr @spec_info, align 8, !tbaa !95
  %322 = getelementptr inbounds %struct.spec_info_def, ptr %321, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !334
  %324 = icmp eq ptr %323, null
  br i1 %324, label %331, label %325

325:                                              ; preds = %320
  %326 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %327 = getelementptr inbounds %struct.haifa_sched_info, ptr %326, i64 0, i32 5
  %328 = load ptr, ptr %327, align 8, !tbaa !301
  %329 = call ptr %328(ptr noundef %0, i32 noundef 0) #27
  %330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %323, ptr noundef nonnull @.str.52, ptr noundef %329)
  br label %331

331:                                              ; preds = %325, %320
  store i32 15, ptr %3, align 8, !tbaa.struct !324
  store ptr %0, ptr %218, align 8, !tbaa.struct !325
  store ptr @sd_iterator_start.null_link, ptr %219, align 8, !tbaa.struct !326
  store i8 0, ptr %220, align 8, !tbaa.struct !327
  %332 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331, %334
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %3) #27
  %335 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %334, !llvm.loop !583

337:                                              ; preds = %334, %331
  %338 = load ptr, ptr @h_i_d, align 8
  %339 = load i32, ptr %11, align 8, !tbaa !106
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %338, i64 0, i32 2, i64 %340, i32 4
  %342 = load i32, ptr %341, align 8, !tbaa !178
  %343 = icmp eq i32 %342, -2
  br i1 %343, label %346, label %344

344:                                              ; preds = %337
  %345 = call i32 @try_ready(ptr noundef %85)
  br label %346

346:                                              ; preds = %344, %337
  call void @sd_finish_insn(ptr noundef %0) #27
  call fastcc void @change_queue_index(ptr noundef %0, i32 noundef -2)
  %347 = load ptr, ptr @current_sched_info, align 8, !tbaa !95
  %348 = getelementptr inbounds %struct.haifa_sched_info, ptr %347, i64 0, i32 14
  %349 = load ptr, ptr %348, align 8, !tbaa !578
  call void %349(ptr noundef %0, i32 noundef 1) #27
  call void @remove_insn(ptr noundef %0) #27
  br label %350

350:                                              ; preds = %346, %319
  call void @init_dep(ptr noundef nonnull %5, ptr noundef %85, ptr noundef %194, i32 noundef 12) #27
  br label %352

351:                                              ; preds = %310
  call void @init_dep_1(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %85, i32 noundef 0, i32 noundef 50331648) #27
  br label %352

352:                                              ; preds = %351, %350
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #27
  br i1 %19, label %353, label %374

353:                                              ; preds = %352
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  store ptr null, ptr %9, align 8, !tbaa !95
  call fastcc void @clear_priorities(ptr noundef %194, ptr noundef nonnull %9)
  %354 = load ptr, ptr %9, align 8, !tbaa !95
  %355 = icmp eq ptr %354, null
  br label %356

356:                                              ; preds = %368, %353
  %357 = phi i64 [ %370, %368 ], [ 0, %353 ]
  br i1 %355, label %365, label %358

358:                                              ; preds = %356
  %359 = load i32, ptr %354, align 8, !tbaa !338
  %360 = zext i32 %359 to i64
  %361 = icmp ult i64 %357, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.VEC_rtx_base, ptr %354, i64 0, i32 2, i64 %357
  %364 = load ptr, ptr %363, align 8, !tbaa !95
  br label %365

365:                                              ; preds = %362, %358, %356
  %366 = phi ptr [ %364, %362 ], [ null, %358 ], [ null, %356 ]
  %367 = phi i1 [ false, %362 ], [ true, %358 ], [ true, %356 ]
  br i1 %367, label %371, label %368

368:                                              ; preds = %365
  %369 = call fastcc i32 @priority(ptr noundef %366)
  %370 = add nuw i64 %357, 1
  br label %356, !llvm.loop !340

371:                                              ; preds = %365
  br i1 %355, label %373, label %372

372:                                              ; preds = %371
  call void @free(ptr noundef %354)
  br label %373

373:                                              ; preds = %371, %372
  store ptr null, ptr %9, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  br label %374

374:                                              ; preds = %373, %352
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret void
}

declare ptr @emit_jump_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sd_copy_back_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @init_dep_1(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @set_dep_weak(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_dep_weak(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @process_insn_forw_deps_be_in_spec(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !94 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i32 4, ptr %4, align 8, !tbaa.struct !324
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %0, ptr %7, align 8, !tbaa.struct !325
  %8 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr @sd_iterator_start.null_link, ptr %8, align 8, !tbaa.struct !326
  %9 = getelementptr inbounds i8, ptr %4, i64 24
  store i8 0, ptr %9, align 8, !tbaa.struct !327
  %10 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %3
  %13 = icmp ne i32 %2, 0
  br label %14

14:                                               ; preds = %12, %42
  %15 = load ptr, ptr %5, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct._dep, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !143
  %18 = getelementptr inbounds %struct._dep, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !332
  %20 = and i32 %19, 117440512
  %21 = icmp eq i32 %20, 16777216
  %22 = select i1 %13, i1 %21, i1 false
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = and i32 %19, 16519104
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4026, ptr noundef nonnull @.str.3) #27
  br label %27

27:                                               ; preds = %23, %26
  %28 = and i32 %19, 258111
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = call i32 @ds_weak(i32 noundef %19) #27
  %32 = call i32 @ds_weak(i32 noundef %2) #27
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = and i32 %19, -100921408
  %36 = or i32 %35, %2
  %37 = call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %17, i32 noundef %36) #27
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 %19, i32 %36
  br label %42

40:                                               ; preds = %27
  %41 = or i32 %19, %2
  br label %42

42:                                               ; preds = %40, %34, %30, %14
  %43 = phi i32 [ %39, %34 ], [ %19, %30 ], [ %41, %40 ], [ %19, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  %44 = getelementptr inbounds %struct._dep, ptr %15, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !146
  call void @init_dep_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %17, i32 noundef %45, i32 noundef %43) #27
  call void @sd_add_dep(ptr noundef nonnull %6, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  %46 = load ptr, ptr %8, align 8, !tbaa !329
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = getelementptr inbounds %struct._dep_link, ptr %47, i64 0, i32 1
  store ptr %48, ptr %8, align 8, !tbaa !329
  %49 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %14, !llvm.loop !584

51:                                               ; preds = %42, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @clear_priorities(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !94 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %5, i64 0, i32 2, i64 %8, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !178
  %11 = icmp eq i32 %10, -3
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5061, ptr noundef nonnull @.str.3) #27
  br label %13

13:                                               ; preds = %2, %12
  store i32 3, ptr %3, align 8, !tbaa.struct !324
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %0, ptr %14, align 8, !tbaa.struct !325
  %15 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr @sd_iterator_start.null_link, ptr %15, align 8, !tbaa.struct !326
  %16 = getelementptr inbounds i8, ptr %3, i64 24
  store i8 0, ptr %16, align 8, !tbaa.struct !327
  %17 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %13, %44
  %20 = phi i8 [ %45, %44 ], [ 1, %13 ]
  %21 = load ptr, ptr %4, align 8, !tbaa !95
  %22 = load ptr, ptr %21, align 8, !tbaa !141
  %23 = load ptr, ptr @h_i_d, align 8
  %24 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !106
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %23, i64 0, i32 2, i64 %26, i32 7
  %28 = load i8, ptr %27, align 1, !tbaa !166
  %29 = icmp sgt i8 %28, -1
  br i1 %29, label %30, label %44

30:                                               ; preds = %19
  %31 = load i32, ptr %6, align 8, !tbaa !106
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %23, i64 0, i32 2, i64 %32, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !178
  %35 = icmp eq i32 %34, -3
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = call fastcc zeroext i8 @contributes_to_priority_p(ptr noundef nonnull %21), !range !585
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i8 %20, i8 0
  %40 = load ptr, ptr @h_i_d, align 8
  %41 = load i32, ptr %24, align 8, !tbaa !106
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %40, i64 0, i32 2, i64 %42, i32 7
  store i8 -1, ptr %43, align 1, !tbaa !166
  call fastcc void @clear_priorities(ptr noundef %22, ptr noundef %1)
  br label %44

44:                                               ; preds = %36, %30, %19
  %45 = phi i8 [ %39, %36 ], [ %20, %30 ], [ %20, %19 ]
  %46 = load ptr, ptr %15, align 8, !tbaa !329
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = getelementptr inbounds %struct._dep_link, ptr %47, i64 0, i32 1
  store ptr %48, ptr %15, align 8, !tbaa !329
  %49 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %19, !llvm.loop !586

51:                                               ; preds = %44
  %52 = icmp eq i8 %45, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %13, %51
  %54 = load ptr, ptr %1, align 8, !tbaa !95
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.VEC_rtx_base, ptr %54, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !587
  %59 = load i32, ptr %54, align 8, !tbaa !338
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53, %56
  %62 = call ptr @vec_heap_p_reserve(ptr noundef %54, i32 noundef 1) #27
  store ptr %62, ptr %1, align 8, !tbaa !95
  br label %63

63:                                               ; preds = %56, %61
  %64 = load ptr, ptr %1, align 8, !tbaa !95
  %65 = load i32, ptr %64, align 8, !tbaa !338
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !338
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds %struct.VEC_rtx_base, ptr %64, i64 0, i32 2, i64 %67
  store ptr %0, ptr %68, align 8, !tbaa !95
  br label %69

69:                                               ; preds = %63, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret void
}

declare void @sd_finish_insn(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @sd_init_insn(ptr noundef) local_unnamed_addr #3

declare void @extend_dependency_caches(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nofree nounwind }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!93}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!35 = !{ptr @haifa_classify_insn, ptr @haifa_classify_rtx, i64 736177}
!36 = !{ptr @haifa_classify_rtx, ptr @haifa_classify_rtx, i64 51325}
!37 = !{ptr @haifa_classify_rtx, ptr @may_trap_p, i64 82094}
!38 = !{ptr @haifa_classify_rtx, ptr @may_trap_exp, i64 1191958}
!39 = !{ptr @dep_cost_1, ptr @recog, i64 27038}
!40 = !{ptr @dep_cost_1, ptr @insn_default_latency, i64 2168945}
!41 = !{ptr @dep_cost_1, ptr @bypass_p, i64 620137}
!42 = !{ptr @dep_cost_1, ptr @alloc_INSN_LIST, i64 1618242}
!43 = !{ptr @dep_cost_1, ptr @free_INSN_LIST_node, i64 1618242}
!44 = !{ptr @advance_state, ptr @state_transition, i64 1012564}
!45 = !{ptr @remove_notes, ptr @remove_insn, i64 60100}
!46 = !{ptr @remove_notes, ptr @gen_rtx_CONST_INT, i64 69}
!47 = !{ptr @remove_notes, ptr @add_reg_note, i64 69}
!48 = !{ptr @reemit_notes, ptr @emit_note_before, i64 69}
!49 = !{ptr @reemit_notes, ptr @remove_note, i64 69}
!50 = !{ptr @sched_init_luids, ptr @get_max_uid, i64 168293}
!51 = !{ptr @sched_init_luids, ptr @vec_heap_o_reserve_exact, i64 116537}
!52 = !{ptr @sched_init_luids, ptr @luids_init_insn, i64 316630}
!53 = !{ptr @sched_init_luids, ptr @init_h_i_d, i64 316630}
!54 = !{ptr @set_priorities, ptr @priority, i64 590470}
!55 = !{ptr @priority, ptr @sd_lists_size, i64 590470}
!56 = !{ptr @priority, ptr @recog, i64 11630}
!57 = !{ptr @priority, ptr @insn_default_latency, i64 854026}
!58 = !{ptr @priority, ptr @sd_iterator_cond, i64 1203117}
!59 = !{ptr @priority, ptr @bypass_p, i64 177408}
!60 = !{ptr @priority, ptr @alloc_INSN_LIST, i64 462946}
!61 = !{ptr @priority, ptr @free_INSN_LIST_node, i64 462946}
!62 = !{ptr @priority, ptr @priority, i64 462959}
!63 = !{ptr @sched_init, ptr @dfa_start, i64 38}
!64 = !{ptr @sched_init, ptr @state_size, i64 38}
!65 = !{ptr @sched_init, ptr @init_alias_analysis, i64 38}
!66 = !{ptr @sched_init, ptr @df_set_flags, i64 38}
!67 = !{ptr @sched_init, ptr @df_note_add_problem, i64 38}
!68 = !{ptr @sched_init, ptr @df_analyze, i64 38}
!69 = !{ptr @sched_init, ptr @df_clear_flags, i64 38}
!70 = !{ptr @sched_init, ptr @regstat_compute_calls_crossed, i64 38}
!71 = !{ptr @sched_init, ptr @xmalloc, i64 38}
!72 = !{ptr @haifa_init_h_i_d, ptr @get_max_uid, i64 72549}
!73 = !{ptr @haifa_init_h_i_d, ptr @vec_heap_o_reserve_exact, i64 50238}
!74 = !{ptr @haifa_init_h_i_d, ptr @luids_init_insn, i64 136495}
!75 = !{ptr @haifa_init_h_i_d, ptr @init_h_i_d, i64 136495}
!76 = !{ptr @sched_finish_luids, ptr @free, i64 138099}
!77 = !{ptr @sched_finish, ptr @free, i64 76}
!78 = !{ptr @sched_finish, ptr @end_alias_analysis, i64 38}
!79 = !{ptr @sched_finish, ptr @regstat_free_calls_crossed, i64 38}
!80 = !{ptr @sched_finish, ptr @dfa_finish, i64 38}
!81 = !{ptr @sd_iterator_cond, ptr @sd_next_list, i64 415397}
!82 = !{ptr @sd_iterator_cond, ptr @sd_iterator_cond, i64 415397}
!83 = !{ptr @sched_extend_ready_list, ptr @xrealloc, i64 421143}
!84 = !{ptr @sched_extend_ready_list, ptr @xmalloc, i64 334200}
!85 = !{ptr @xrecalloc, ptr @xrealloc, i64 729}
!86 = !{ptr @sched_finish_ready_list, ptr @free, i64 748497}
!87 = !{ptr @sched_scan, ptr @get_max_uid, i64 217646}
!88 = !{ptr @sched_scan, ptr @vec_heap_o_reserve_exact, i64 150713}
!89 = !{ptr @sched_scan, ptr @luids_init_insn, i64 409485}
!90 = !{ptr @sched_scan, ptr @init_h_i_d, i64 409485}
!91 = !{ptr @may_trap_exp, ptr @may_trap_p, i64 3648902}
!92 = !{ptr @may_trap_exp, ptr @may_trap_exp, i64 2456944}
!93 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!94 = !{!"function_entry_count", i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"any pointer", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !96, i64 8}
!100 = !{!"_IO_FILE", !101, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !96, i64 104, !101, i64 112, !101, i64 116, !102, i64 120, !103, i64 128, !97, i64 130, !97, i64 131, !96, i64 136, !102, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !102, i64 184, !101, i64 192, !97, i64 196}
!101 = !{!"int", !97, i64 0}
!102 = !{!"long", !97, i64 0}
!103 = !{!"short", !97, i64 0}
!104 = !{!100, !96, i64 16}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{!97, !97, i64 0}
!107 = !{!100, !96, i64 40}
!108 = !{!100, !96, i64 48}
!109 = !{!100, !101, i64 0}
!110 = !{!101, !101, i64 0}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !{!"function_entry_count", i64 736177}
!115 = !{!"function_entry_count", i64 787502}
!116 = !{!"haifa-sched.c;haifa_classify_rtx"}
!117 = !{!"branch_weights", i32 25716, i32 761786}
!118 = !{!119, !101, i64 0}
!119 = !{!"rtvec_def", !101, i64 0, !97, i64 8}
!120 = !{!"branch_weights", i32 51325, i32 25609}
!121 = !{!"branch_weights", i32 107, i32 51218}
!122 = distinct !{!122, !112, !113}
!123 = !{!"branch_weights", i32 140373, i32 25394, i32 596019, i32 0, i32 0}
!124 = !{!"branch_weights", i32 0, i32 25394}
!125 = !{!"branch_weights", i32 107, i32 25287}
!126 = !{!"branch_weights", i32 0, i32 107}
!127 = !{!"branch_weights", i32 0, i32 596019}
!128 = !{!"branch_weights", i32 81987, i32 514032}
!129 = !{!"branch_weights", i32 81947, i32 40}
!130 = !{!"branch_weights", i32 40, i32 595979}
!131 = !{i32 0, i32 6}
!132 = !{!"branch_weights", i32 0, i32 595979}
!133 = !{!134, !101, i64 32}
!134 = !{!"common_sched_info_def", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !101, i64 32}
!135 = !{!"branch_weights", i32 2314733, i32 0}
!136 = !{!"branch_weights", i32 38608, i32 2276125}
!137 = !{!"branch_weights", i32 82, i32 2314651}
!138 = !{!139, !103, i64 20}
!139 = !{!"_haifa_insn_data", !101, i64 0, !101, i64 4, !101, i64 8, !101, i64 12, !101, i64 16, !103, i64 20, !101, i64 22, !101, i64 22, !97, i64 23, !101, i64 24, !101, i64 28, !101, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !101, i64 88}
!140 = !{!"function_entry_count", i64 1618289}
!141 = !{!142, !96, i64 0}
!142 = !{!"_dep", !96, i64 0, !96, i64 8, !101, i64 16, !101, i64 20}
!143 = !{!142, !96, i64 8}
!144 = !{!"branch_weights", i32 60, i32 2081188}
!145 = !{!"branch_weights", i32 0, i32 60}
!146 = !{!142, !101, i64 16}
!147 = !{!"branch_weights", i32 2081106, i32 82}
!148 = !{!"branch_weights", i32 797545, i32 929401, i32 354160}
!149 = !{!"branch_weights", i32 797545, i32 0}
!150 = !{!151, !96, i64 536}
!151 = !{!"gcc_target", !152, i64 0, !154, i64 368, !155, i64 664, !101, i64 744, !96, i64 752, !96, i64 760, !96, i64 768, !96, i64 776, !96, i64 784, !96, i64 792, !96, i64 800, !96, i64 808, !96, i64 816, !96, i64 824, !96, i64 832, !96, i64 840, !96, i64 848, !96, i64 856, !96, i64 864, !96, i64 872, !96, i64 880, !96, i64 888, !96, i64 896, !96, i64 904, !96, i64 912, !96, i64 920, !96, i64 928, !96, i64 936, !96, i64 944, !96, i64 952, !96, i64 960, !96, i64 968, !96, i64 976, !96, i64 984, !96, i64 992, !96, i64 1000, !96, i64 1008, !96, i64 1016, !96, i64 1024, !96, i64 1032, !96, i64 1040, !96, i64 1048, !96, i64 1056, !102, i64 1064, !102, i64 1072, !96, i64 1080, !96, i64 1088, !96, i64 1096, !96, i64 1104, !96, i64 1112, !96, i64 1120, !96, i64 1128, !96, i64 1136, !96, i64 1144, !96, i64 1152, !96, i64 1160, !96, i64 1168, !156, i64 1176, !96, i64 1232, !96, i64 1240, !96, i64 1248, !96, i64 1256, !96, i64 1264, !96, i64 1272, !96, i64 1280, !96, i64 1288, !96, i64 1296, !96, i64 1304, !96, i64 1312, !96, i64 1320, !96, i64 1328, !96, i64 1336, !96, i64 1344, !96, i64 1352, !96, i64 1360, !96, i64 1368, !96, i64 1376, !96, i64 1384, !96, i64 1392, !96, i64 1400, !96, i64 1408, !96, i64 1416, !96, i64 1424, !96, i64 1432, !96, i64 1440, !96, i64 1448, !96, i64 1456, !102, i64 1464, !157, i64 1472, !96, i64 1664, !96, i64 1672, !96, i64 1680, !96, i64 1688, !96, i64 1696, !96, i64 1704, !96, i64 1712, !96, i64 1720, !96, i64 1728, !96, i64 1736, !96, i64 1744, !96, i64 1752, !96, i64 1760, !96, i64 1768, !96, i64 1776, !158, i64 1784, !159, i64 1792, !160, i64 1896, !161, i64 1968, !96, i64 2016, !97, i64 2024, !97, i64 2025, !97, i64 2026, !97, i64 2027, !97, i64 2028, !97, i64 2029, !97, i64 2030, !97, i64 2031, !97, i64 2032, !97, i64 2033, !97, i64 2034, !97, i64 2035}
!152 = !{!"asm_out", !96, i64 0, !96, i64 8, !96, i64 16, !153, i64 24, !153, i64 56, !96, i64 88, !96, i64 96, !96, i64 104, !96, i64 112, !96, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !96, i64 184, !96, i64 192, !96, i64 200, !96, i64 208, !96, i64 216, !96, i64 224, !96, i64 232, !96, i64 240, !96, i64 248, !96, i64 256, !96, i64 264, !96, i64 272, !96, i64 280, !96, i64 288, !96, i64 296, !96, i64 304, !96, i64 312, !96, i64 320, !96, i64 328, !96, i64 336, !96, i64 344, !96, i64 352, !96, i64 360}
!153 = !{!"asm_int_op", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!154 = !{!"sched", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !96, i64 104, !96, i64 112, !96, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !96, i64 184, !96, i64 192, !96, i64 200, !96, i64 208, !96, i64 216, !96, i64 224, !96, i64 232, !96, i64 240, !96, i64 248, !96, i64 256, !96, i64 264, !96, i64 272, !96, i64 280, !96, i64 288}
!155 = !{!"vectorize", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72}
!156 = !{!"addr_space", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48}
!157 = !{!"calls", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !96, i64 104, !96, i64 112, !96, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !96, i64 160, !96, i64 168, !96, i64 176, !96, i64 184}
!158 = !{!"c", !96, i64 0}
!159 = !{!"cxx", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96}
!160 = !{!"emutls", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !97, i64 64, !97, i64 65}
!161 = !{!"target_option_hooks", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40}
!162 = !{!"branch_weights", i32 2081188, i32 0}
!163 = !{!151, !96, i64 368}
!164 = !{!"branch_weights", i32 0, i32 2081188}
!165 = !{!"VP", i32 0, i64 1618242, i64 -8892135545110208612, i64 1618242}
!166 = !{!139, !97, i64 23}
!167 = !{!139, !101, i64 4}
!168 = !{!169, !101, i64 16}
!169 = !{!"ready_list", !96, i64 0, !101, i64 8, !101, i64 12, !101, i64 16, !101, i64 20}
!170 = !{!169, !96, i64 0}
!171 = !{!169, !101, i64 12}
!172 = !{!"function_entry_count", i64 820610}
!173 = !{!"branch_weights", i32 820610, i32 0}
!174 = distinct !{!174, !112, !113}
!175 = !{!176, !96, i64 16}
!176 = !{!"reg_use_data", !101, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!177 = !{!176, !96, i64 8}
!178 = !{!139, !101, i64 16}
!179 = distinct !{!179, !112, !113}
!180 = !{!176, !101, i64 0}
!181 = distinct !{!181, !112, !113}
!182 = !{!139, !96, i64 56}
!183 = !{!139, !96, i64 64}
!184 = !{!103, !103, i64 0}
!185 = distinct !{!185, !112, !113}
!186 = !{!139, !101, i64 88}
!187 = distinct !{!187, !112, !113}
!188 = distinct !{!188, !112, !113}
!189 = !{!139, !101, i64 8}
!190 = !{!139, !101, i64 24}
!191 = !{!192, !96, i64 32}
!192 = !{!"haifa_sched_info", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !101, i64 96, !101, i64 100, !96, i64 104, !96, i64 112, !96, i64 120, !101, i64 128}
!193 = !{!192, !96, i64 64}
!194 = distinct !{!194, !112, !113}
!195 = !{!"function_entry_count", i64 1012564}
!196 = !{!151, !96, i64 488}
!197 = !{!"branch_weights", i32 1012564, i32 0}
!198 = !{!151, !96, i64 464}
!199 = !{!151, !96, i64 480}
!200 = !{!151, !96, i64 496}
!201 = !{!202, !96, i64 8}
!202 = !{!"rtl_bb_info", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !101, i64 32}
!203 = distinct !{!203, !112, !113}
!204 = distinct !{!204, !112, !113}
!205 = !{!206, !96, i64 0}
!206 = !{!"bitmap_head_def", !96, i64 0, !96, i64 8, !101, i64 16, !96, i64 24}
!207 = !{!208, !101, i64 16}
!208 = !{!"bitmap_element_def", !96, i64 0, !96, i64 8, !101, i64 16, !97, i64 24}
!209 = !{!102, !102, i64 0}
!210 = distinct !{!210, !112, !113}
!211 = distinct !{!211, !112, !113}
!212 = !{!208, !96, i64 0}
!213 = distinct !{!213, !113}
!214 = distinct !{!214, !112, !113}
!215 = !{!216, !101, i64 0}
!216 = !{!"VEC_edge_base", !101, i64 0, !101, i64 4, !97, i64 8}
!217 = !{!218, !101, i64 48}
!218 = !{!"edge_def", !96, i64 0, !96, i64 8, !97, i64 16, !96, i64 24, !96, i64 32, !101, i64 40, !101, i64 44, !101, i64 48, !101, i64 52, !102, i64 56}
!219 = distinct !{!219, !112, !113}
!220 = distinct !{!220, !113}
!221 = distinct !{!221, !112, !113}
!222 = distinct !{!222, !112, !113}
!223 = distinct !{!223, !112, !113}
!224 = distinct !{!224, !112, !113}
!225 = distinct !{!225, !112, !113}
!226 = distinct !{!226, !112, !113}
!227 = !{!"function_entry_count", i64 5}
!228 = !{!"branch_weights", i32 5, i32 0}
!229 = distinct !{!229, !112, !113}
!230 = !{!"function_entry_count", i64 187028}
!231 = !{!"branch_weights", i32 0, i32 187028}
!232 = !{!"branch_weights", i32 1, i32 187027}
!233 = !{!"branch_weights", i32 247128, i32 590470}
!234 = !{!"branch_weights", i32 60031, i32 187028, i32 69}
!235 = !{!"branch_weights", i32 0, i32 69}
!236 = !{!"branch_weights", i32 26722, i32 33309}
!237 = !{!"branch_weights", i32 0, i32 60100}
!238 = !{!"branch_weights", i32 187027, i32 650571}
!239 = distinct !{!239, !112, !113}
!240 = !{!"function_entry_count", i64 699183}
!241 = !{!202, !96, i64 0}
!242 = !{!"branch_weights", i32 340456, i32 358727}
!243 = !{!"branch_weights", i32 1, i32 135081}
!244 = !{!"branch_weights", i32 564101, i32 699183, i32 0}
!245 = !{!"branch_weights", i32 135081, i32 1128203}
!246 = distinct !{!246, !112, !113}
!247 = !{!"branch_weights", i32 671944, i32 27239}
!248 = !{!"branch_weights", i32 0, i32 27239}
!249 = !{!"branch_weights", i32 564101, i32 0, i32 0}
!250 = !{!"branch_weights", i32 135081, i32 429020}
!251 = distinct !{!251, !112, !113}
!252 = !{!"function_entry_count", i64 325127}
!253 = !{!"branch_weights", i32 0, i32 1}
!254 = !{!"branch_weights", i32 325127, i32 0, i32 0, i32 0}
!255 = !{!"branch_weights", i32 0, i32 325127}
!256 = distinct !{!256, !112, !113}
!257 = !{!"function_entry_count", i64 187023}
!258 = !{!"branch_weights", i32 160301, i32 26722}
!259 = !{!"branch_weights", i32 26722, i32 0}
!260 = !{!"branch_weights", i32 14705996, i32 17057082}
!261 = !{!"branch_weights", i32 31763078, i32 0}
!262 = !{!"branch_weights", i32 1, i32 26721}
!263 = !{!"branch_weights", i32 26721, i32 6588}
!264 = distinct !{!264, !112, !113}
!265 = !{!"function_entry_count", i64 31736356}
!266 = !{!"function_entry_count", i64 591920}
!267 = !{!"branch_weights", i32 79470, i32 512450}
!268 = !{!"branch_weights", i32 69, i32 512381}
!269 = !{!"branch_weights", i32 512450, i32 0}
!270 = distinct !{!270, !112, !113}
!271 = distinct !{!271, !112, !113}
!272 = distinct !{!272, !112, !113}
!273 = !{!274, !96, i64 16}
!274 = !{!"choice_entry", !101, i64 0, !101, i64 4, !101, i64 8, !96, i64 16}
!275 = !{!274, !101, i64 4}
!276 = !{!274, !101, i64 8}
!277 = distinct !{!277, !112, !113}
!278 = distinct !{!278, !112, !113}
!279 = !{!274, !101, i64 0}
!280 = !{!192, !96, i64 56}
!281 = distinct !{!281, !113}
!282 = !{!192, !96, i64 72}
!283 = !{!169, !101, i64 8}
!284 = !{!169, !101, i64 20}
!285 = !{!151, !96, i64 400}
!286 = !{!192, !96, i64 0}
!287 = !{!288, !101, i64 8}
!288 = !{!"param_info", !96, i64 0, !101, i64 8, !97, i64 12, !101, i64 16, !101, i64 20, !96, i64 24}
!289 = distinct !{!289, !112, !113}
!290 = distinct !{!290, !112, !113}
!291 = !{!292, !96, i64 56}
!292 = !{!"basic_block_def", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !97, i64 32, !96, i64 48, !96, i64 56, !97, i64 64, !102, i64 72, !101, i64 80, !101, i64 84, !101, i64 88, !101, i64 92, !101, i64 96}
!293 = !{!294, !96, i64 8}
!294 = !{!"function", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !96, i64 64, !96, i64 72, !96, i64 80, !96, i64 88, !96, i64 96, !101, i64 104, !101, i64 108, !101, i64 112, !101, i64 116, !101, i64 120, !101, i64 124, !96, i64 128, !101, i64 136, !101, i64 137, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 138, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139, !101, i64 139}
!295 = !{!296, !96, i64 8}
!296 = !{!"control_flow_graph", !96, i64 0, !96, i64 8, !96, i64 16, !101, i64 24, !101, i64 28, !101, i64 32, !96, i64 40, !101, i64 48, !97, i64 52, !97, i64 60, !101, i64 68, !101, i64 72}
!297 = !{!292, !101, i64 80}
!298 = distinct !{!298, !112, !113}
!299 = !{!192, !96, i64 16}
!300 = distinct !{!300, !112, !113}
!301 = !{!192, !96, i64 40}
!302 = distinct !{!302, !112, !113}
!303 = distinct !{!303, !112, !113}
!304 = distinct !{!304, !112, !113}
!305 = distinct !{!305, !112, !113}
!306 = !{!192, !96, i64 120}
!307 = !{!192, !96, i64 112}
!308 = !{i32 0, i32 -2147483648}
!309 = distinct !{!309, !112, !113}
!310 = !{!151, !96, i64 432}
!311 = distinct !{!311, !112, !113}
!312 = !{!151, !96, i64 504}
!313 = !{!314, !101, i64 24}
!314 = !{!"spec_info_def", !101, i64 0, !96, i64 8, !101, i64 16, !101, i64 20, !101, i64 24}
!315 = distinct !{!315, !112, !113}
!316 = !{!151, !96, i64 616}
!317 = distinct !{!317, !112, !113}
!318 = !{!151, !96, i64 512}
!319 = distinct !{!319, !112, !113}
!320 = distinct !{!320, !113}
!321 = !{!151, !96, i64 520}
!322 = !{!192, !96, i64 8}
!323 = !{!139, !101, i64 28}
!324 = !{i64 0, i64 4, !110, i64 8, i64 8, !95, i64 16, i64 8, !95, i64 24, i64 1, !106}
!325 = !{i64 0, i64 8, !95, i64 8, i64 8, !95, i64 16, i64 1, !106}
!326 = !{i64 0, i64 8, !95, i64 8, i64 1, !106}
!327 = !{i64 0, i64 1, !106}
!328 = !{!139, !96, i64 40}
!329 = !{!330, !96, i64 16}
!330 = !{!"_sd_iterator", !101, i64 0, !96, i64 8, !96, i64 16, !97, i64 24}
!331 = distinct !{!331, !112, !113}
!332 = !{!142, !101, i64 20}
!333 = !{!139, !96, i64 48}
!334 = !{!314, !96, i64 8}
!335 = distinct !{!335, !112, !113}
!336 = distinct !{!336, !112, !113}
!337 = distinct !{!337, !112, !113}
!338 = !{!339, !101, i64 0}
!339 = !{!"VEC_rtx_base", !101, i64 0, !101, i64 4, !97, i64 8}
!340 = distinct !{!340, !112, !113}
!341 = !{!151, !96, i64 392}
!342 = distinct !{!342, !112, !113}
!343 = !{!151, !96, i64 440}
!344 = distinct !{!344, !112, !113}
!345 = distinct !{!345, !112, !113}
!346 = distinct !{!346, !112, !113}
!347 = !{!206, !96, i64 24}
!348 = !{!139, !101, i64 12}
!349 = distinct !{!349, !112, !113}
!350 = distinct !{!350, !112, !113}
!351 = !{!151, !96, i64 408}
!352 = !{!353, !96, i64 16}
!353 = !{!"sched_scan_info_def", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!354 = !{!192, !96, i64 80}
!355 = !{!192, !96, i64 88}
!356 = distinct !{!356, !112, !113}
!357 = distinct !{!357, !112, !113}
!358 = distinct !{!358, !112, !113}
!359 = !{!292, !96, i64 8}
!360 = !{!134, !96, i64 0}
!361 = distinct !{!361, !112, !113}
!362 = distinct !{!362, !112, !113}
!363 = distinct !{!363, !112, !113}
!364 = distinct !{!364, !112, !113}
!365 = distinct !{!365, !112, !113}
!366 = distinct !{!366, !112, !113}
!367 = distinct !{!367, !112, !113}
!368 = distinct !{!368, !112, !113}
!369 = distinct !{!369, !113}
!370 = !{!151, !96, i64 528}
!371 = distinct !{!371, !112, !113}
!372 = distinct !{!372, !112, !113}
!373 = distinct !{!373, !112, !113}
!374 = distinct !{!374, !112, !113}
!375 = !{!"function_entry_count", i64 320350}
!376 = !{!"branch_weights", i32 690495, i32 182251}
!377 = !{!353, !96, i64 0}
!378 = !{!"branch_weights", i32 552396, i32 138099}
!379 = !{!"VP", i32 0, i64 50690, i64 1415173375185551418, i64 50690}
!380 = !{!"branch_weights", i32 690495, i32 0}
!381 = !{!382, !101, i64 0}
!382 = !{!"VEC_basic_block_base", !101, i64 0, !101, i64 4, !97, i64 8}
!383 = !{!"branch_weights", i32 935135, i32 690495}
!384 = !{!353, !96, i64 8}
!385 = !{!"branch_weights", i32 374056, i32 561079}
!386 = !{!"VP", i32 0, i64 205949, i64 -985788646028493410, i64 68650, i64 -4996844945318153872, i64 68650, i64 3871421097987159383, i64 68648}
!387 = distinct !{!387, !112, !113}
!388 = !{!"branch_weights", i32 0, i32 690495}
!389 = !{!"branch_weights", i32 276198, i32 596548}
!390 = !{!"branch_weights", i32 320350, i32 276198}
!391 = !{!"branch_weights", i32 138099, i32 182251}
!392 = !{!393, !101, i64 0}
!393 = !{!"VEC_int_base", !101, i64 0, !101, i64 4, !97, i64 8}
!394 = !{!393, !101, i64 4}
!395 = !{!"branch_weights", i32 2900, i32 317450}
!396 = !{}
!397 = !{!"VP", i32 1, i64 117587, i64 4, i64 65832, i64 513, i64 50688, i64 0, i64 1064, i64 257, i64 2}
!398 = !{!"branch_weights", i32 138099, i32 138099}
!399 = !{!"branch_weights", i32 38, i32 138061}
!400 = !{!401, !101, i64 0}
!401 = !{!"VEC_haifa_insn_data_def_base", !101, i64 0, !101, i64 4, !97, i64 8}
!402 = !{!"branch_weights", i32 38, i32 0}
!403 = !{!401, !101, i64 4}
!404 = !{!"branch_weights", i32 0, i32 38}
!405 = !{!"VP", i32 1, i64 13, i64 513, i64 13}
!406 = !{!151, !96, i64 544}
!407 = !{!"VP", i32 0, i64 50690, i64 -7959525957487244080, i64 50690}
!408 = !{!"branch_weights", i32 935135, i32 4314505}
!409 = !{!353, !96, i64 24}
!410 = !{!"branch_weights", i32 862612, i32 3451893}
!411 = !{!"VP", i32 0, i64 1267051, i64 -2831594383039922160, i64 317160, i64 6430872681722442847, i64 316630, i64 -855229084529012595, i64 316630}
!412 = !{!"branch_weights", i32 0, i32 5249640}
!413 = distinct !{!413, !112, !113}
!414 = distinct !{!414, !112, !113}
!415 = !{!"branch_weights", i32 0, i32 872746}
!416 = !{!"branch_weights", i32 872746, i32 0}
!417 = distinct !{!417, !112, !113}
!418 = !{!"branch_weights", i32 698103, i32 174643}
!419 = !{!"branch_weights", i32 0, i32 174643}
!420 = !{!"branch_weights", i32 174643, i32 0}
!421 = !{!"branch_weights", i32 765113, i32 272142}
!422 = !{!134, !96, i64 24}
!423 = !{!"VP", i32 0, i64 16818, i64 7696596256591495583, i64 16818}
!424 = !{!192, !101, i64 100}
!425 = !{!"branch_weights", i32 33772, i32 153256}
!426 = !{!"branch_weights", i32 0, i32 1140547984}
!427 = !{!"branch_weights", i32 590470, i32 0}
!428 = !{!"branch_weights", i32 187027, i32 403443}
!429 = distinct !{!429, !112, !113}
!430 = !{!"function_entry_count", i64 1053429}
!431 = !{!"haifa-sched.c;priority"}
!432 = !{!"branch_weights", i32 1053429, i32 0}
!433 = !{!"branch_weights", i32 0, i32 1053429}
!434 = !{!"branch_weights", i32 462959, i32 590470}
!435 = distinct !{!435, !112, !113}
!436 = !{!"branch_weights", i32 175073, i32 415397}
!437 = !{!"branch_weights", i32 415397, i32 0}
!438 = !{!"branch_weights", i32 1, i32 415396}
!439 = !{!"branch_weights", i32 0, i32 787720}
!440 = !{!192, !96, i64 48}
!441 = !{!"VP", i32 0, i64 787720, i64 1825921211736818994, i64 787720}
!442 = !{!"branch_weights", i32 324761, i32 462959}
!443 = !{!"branch_weights", i32 462959, i32 0}
!444 = !{!"VP", i32 0, i64 462945, i64 -8892135545110208612, i64 462945}
!445 = !{!"branch_weights", i32 415396, i32 372324}
!446 = distinct !{!446, !112, !113}
!447 = distinct !{!447, !112, !113}
!448 = !{!"branch_weights", i32 58472, i32 531998}
!449 = !{!"branch_weights", i32 58472, i32 0}
!450 = !{!"function_entry_count", i64 38}
!451 = !{!151, !96, i64 624}
!452 = !{!314, !101, i64 0}
!453 = !{!314, !101, i64 16}
!454 = !{!314, !101, i64 20}
!455 = !{!151, !96, i64 384}
!456 = !{!"VP", i32 0, i64 38, i64 -2405280740778194662, i64 38}
!457 = !{!"branch_weights", i32 37, i32 1}
!458 = !{!"VP", i32 0, i64 38, i64 -8314488630549233294, i64 38}
!459 = !{!151, !96, i64 456}
!460 = !{!151, !96, i64 472}
!461 = !{!151, !96, i64 416}
!462 = distinct !{!462, !112, !113}
!463 = !{!296, !101, i64 24}
!464 = !{!296, !96, i64 0}
!465 = distinct !{!465, !112, !113}
!466 = !{!292, !96, i64 48}
!467 = !{!"function_entry_count", i64 503106}
!468 = !{!"branch_weights", i32 503106, i32 0}
!469 = !{!"function_entry_count", i64 138099}
!470 = !{!"VP", i32 0, i64 21852, i64 1415173375185551418, i64 21852}
!471 = !{!"VP", i32 0, i64 88782, i64 -985788646028493410, i64 29594, i64 -4996844945318153872, i64 29594, i64 3871421097987159383, i64 29593}
!472 = !{!"VP", i32 1, i64 50690, i64 4, i64 28379, i64 513, i64 21850, i64 0, i64 458, i64 257, i64 1}
!473 = !{!"VP", i32 1, i64 6, i64 513, i64 6}
!474 = !{!"VP", i32 0, i64 21852, i64 -7959525957487244080, i64 21852}
!475 = !{!"VP", i32 0, i64 546210, i64 -2831594383039922160, i64 136724, i64 6430872681722442847, i64 136495, i64 -855229084529012595, i64 136495}
!476 = !{!"VP", i32 0, i64 7250, i64 7696596256591495583, i64 7250}
!477 = !{!134, !96, i64 8}
!478 = !{!218, !96, i64 0}
!479 = !{!218, !96, i64 8}
!480 = !{!"branch_weights", i32 0, i32 138099}
!481 = !{!"branch_weights", i32 0, i32 2154298}
!482 = !{!"branch_weights", i32 38, i32 2154260}
!483 = !{!"branch_weights", i32 2154260, i32 0}
!484 = !{!139, !96, i64 72}
!485 = !{!"branch_weights", i32 1, i32 0}
!486 = !{!176, !96, i64 24}
!487 = distinct !{!487, !112, !113}
!488 = distinct !{!488, !112, !113}
!489 = !{!151, !96, i64 424}
!490 = !{!192, !101, i64 128}
!491 = distinct !{!491, !112, !113}
!492 = !{!192, !96, i64 24}
!493 = !{!494, !101, i64 4}
!494 = !{!"_haifa_deps_insn_data", !101, i64 0, !101, i64 4, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32, !96, i64 40, !101, i64 48}
!495 = !{!151, !96, i64 376}
!496 = distinct !{!496, !112, !113}
!497 = !{!"function_entry_count", i64 1618514}
!498 = !{!"haifa-sched.c;sd_iterator_cond"}
!499 = !{!"branch_weights", i32 830794, i32 787720}
!500 = !{!501, !96, i64 0}
!501 = !{!"_dep_link", !96, i64 0, !96, i64 8, !96, i64 16}
!502 = !{!330, !101, i64 0}
!503 = !{!"branch_weights", i32 415397, i32 415397}
!504 = !{!330, !96, i64 8}
!505 = !{!"branch_weights", i32 0, i32 415397}
!506 = !{!"function_entry_count", i64 140381}
!507 = !{!"branch_weights", i32 138099, i32 2282}
!508 = !{!"branch_weights", i32 0, i32 140381}
!509 = !{!"VP", i32 1, i64 140381, i64 1, i64 93253, i64 2, i64 38943, i64 3, i64 7805, i64 4, i64 353}
!510 = !{!"branch_weights", i32 1, i32 140380}
!511 = !{!"branch_weights", i32 140380, i32 193820}
!512 = distinct !{!512, !112, !113}
!513 = !{!"function_entry_count", i64 729}
!514 = !{!"branch_weights", i32 0, i32 729}
!515 = !{!"VP", i32 1, i64 729, i64 513, i64 729}
!516 = !{!"branch_weights", i32 1, i32 138098}
!517 = !{!"branch_weights", i32 138098, i32 196102}
!518 = distinct !{!518, !112, !113}
!519 = !{!292, !96, i64 0}
!520 = distinct !{!520, !112, !113}
!521 = distinct !{!521, !112, !113}
!522 = !{!"haifa-sched.c;sched_extend_bb"}
!523 = !{!294, !96, i64 32}
!524 = !{!525, !96, i64 8}
!525 = !{!"loops", !101, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!526 = !{!292, !102, i64 72}
!527 = !{!292, !101, i64 88}
!528 = !{!292, !101, i64 96}
!529 = !{!151, !96, i64 592}
!530 = !{!296, !101, i64 32}
!531 = !{!"function_entry_count", i64 414297}
!532 = !{!"VP", i32 0, i64 65556, i64 1415173375185551418, i64 65556}
!533 = !{!"VP", i32 0, i64 266346, i64 -985788646028493410, i64 88782, i64 -4996844945318153872, i64 88782, i64 3871421097987159383, i64 88780}
!534 = !{!"VP", i32 1, i64 152071, i64 4, i64 85138, i64 513, i64 65552, i64 0, i64 1376, i64 257, i64 3}
!535 = !{!"VP", i32 1, i64 18, i64 513, i64 18}
!536 = !{!"VP", i32 0, i64 65556, i64 -7959525957487244080, i64 65556}
!537 = !{!"VP", i32 0, i64 1638630, i64 -2831594383039922160, i64 410172, i64 6430872681722442847, i64 409485, i64 -855229084529012595, i64 409485}
!538 = !{!"VP", i32 0, i64 21750, i64 7696596256591495583, i64 21750}
!539 = !{!"haifa-sched.c;luids_extend_insn"}
!540 = !{!"VP", i32 1, i64 0, i64 4, i64 0, i64 513, i64 0, i64 0, i64 0, i64 257, i64 0}
!541 = !{!"function_entry_count", i64 862612}
!542 = !{!"haifa-sched.c;luids_init_insn"}
!543 = !{!"VP", i32 0, i64 226321, i64 7696596256591495583, i64 226321}
!544 = !{!"haifa-sched.c;extend_h_i_d"}
!545 = !{!"VP", i32 1, i64 0, i64 513, i64 0}
!546 = !{!"haifa-sched.c;init_h_i_d"}
!547 = !{!"branch_weights", i32 590470, i32 272142}
!548 = !{!"function_entry_count", i64 3648902}
!549 = !{!"haifa-sched.c;may_trap_exp"}
!550 = !{!"branch_weights", i32 0, i32 3648902}
!551 = !{!"branch_weights", i32 3648902, i32 0}
!552 = !{!"branch_weights", i32 298226, i32 3350676}
!553 = !{!"branch_weights", i32 298226, i32 0}
!554 = !{!"branch_weights", i32 297946, i32 280}
!555 = !{!"branch_weights", i32 0, i32 0, i32 280, i32 0, i32 0}
!556 = !{!"branch_weights", i32 0, i32 280}
!557 = !{!"branch_weights", i32 280, i32 0}
!558 = !{!"branch_weights", i32 3350518, i32 158}
!559 = !{!"branch_weights", i32 5823086, i32 3350518}
!560 = !{!"branch_weights", i32 3366142, i32 2456944, i32 0}
!561 = distinct !{!561, !112, !113}
!562 = !{!"branch_weights", i32 0, i32 5823086}
!563 = distinct !{!563, !112, !113}
!564 = !{!"haifa-sched.c;dep_list_size"}
!565 = distinct !{!565, !112, !113}
!566 = distinct !{!566, !112, !113}
!567 = distinct !{!567, !112, !113}
!568 = distinct !{!568, !112, !113}
!569 = !{!570, !101, i64 0}
!570 = !{!"reg_set_data", !101, i64 0, !96, i64 8, !96, i64 16}
!571 = distinct !{!571, !112, !113}
!572 = distinct !{!572, !112, !113}
!573 = distinct !{!573, !112, !113}
!574 = !{!"haifa-sched.c;contributes_to_priority_p"}
!575 = !{!"VP", i32 0, i64 0, i64 1825921211736818994, i64 0}
!576 = !{!151, !96, i64 600}
!577 = !{!151, !96, i64 608}
!578 = !{!192, !96, i64 104}
!579 = distinct !{!579, !112, !113}
!580 = distinct !{!580, !112, !113}
!581 = distinct !{!581, !112, !113}
!582 = !{!139, !101, i64 32}
!583 = distinct !{!583, !112, !113}
!584 = distinct !{!584, !112, !113}
!585 = !{i8 0, i8 2}
!586 = distinct !{!586, !112, !113}
!587 = !{!339, !101, i64 4}
