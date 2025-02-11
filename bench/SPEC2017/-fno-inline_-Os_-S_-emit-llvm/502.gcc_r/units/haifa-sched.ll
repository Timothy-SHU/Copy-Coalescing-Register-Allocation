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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.reg_use_data = type { i32, ptr, ptr, ptr }
%struct.reg_pressure_data = type { i32 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.choice_entry = type { i32, i32, i32, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct._dep_link = type { ptr, ptr, ptr }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.edge_iterator = type { i32, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.reg_set_data = type { i32, ptr, ptr }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fix_sched_param(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @atoi(ptr nocapture noundef %1) #25
  store i32 %6, ptr @sched_verbose_param, align 4, !tbaa !5
  br label %9

7:                                                ; preds = %2
  %8 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %0) #26
  br label %9

9:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @haifa_luid_for_non_insn(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65534
  %4 = icmp eq i32 %3, 12
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3984, ptr noundef nonnull @.str.3) #26
  br label %6

6:                                                ; preds = %1, %5
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @haifa_classify_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = tail call fastcc i32 @haifa_classify_rtx(ptr noundef %3) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @haifa_classify_rtx(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = load i32, ptr %7, align 8, !tbaa !10
  %9 = zext i32 %8 to i64
  br label %10

10:                                               ; preds = %15, %5
  %11 = phi i64 [ %16, %15 ], [ %9, %5 ]
  %12 = phi i32 [ %21, %15 ], [ 0, %5 ]
  %13 = trunc i64 %11 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %10
  %16 = add nsw i64 %11, -1
  %17 = load ptr, ptr %6, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %17, i64 0, i32 1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = tail call fastcc i32 @haifa_classify_rtx(ptr noundef %19) #25
  %21 = tail call i32 @llvm.smax.i32(i32 %12, i32 %20)
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %57, label %10, !llvm.loop !14

24:                                               ; preds = %1
  %25 = trunc i32 %2 to i16
  switch i16 %25, label %57 [
    i16 25, label %26
    i16 23, label %30
    i16 14, label %43
    i16 29, label %56
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = tail call fastcc i32 @may_trap_exp(ptr noundef %28, i32 noundef 1) #25, !range !16
  br label %57

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = tail call fastcc i32 @may_trap_exp(ptr noundef %32, i32 noundef 1) #25, !range !16
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %57, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = tail call fastcc i32 @may_trap_exp(ptr noundef %37, i32 noundef 0) #25, !range !16
  %39 = icmp ugt i32 %33, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !9
  %42 = tail call fastcc i32 @may_trap_exp(ptr noundef %41, i32 noundef 0) #25, !range !16
  br label %57

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = tail call fastcc i32 @haifa_classify_rtx(ptr noundef %46) #25
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %44, align 8, !tbaa !9
  %51 = tail call fastcc i32 @may_trap_exp(ptr noundef %50, i32 noundef 0) #25, !range !16
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %44, align 8, !tbaa !9
  %55 = tail call fastcc i32 @may_trap_exp(ptr noundef %54, i32 noundef 0) #25, !range !16
  br label %57

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %10, %15, %26, %56, %30, %43, %24, %35, %40, %49, %53
  %58 = phi i32 [ 0, %24 ], [ 5, %56 ], [ 5, %43 ], [ 5, %30 ], [ %29, %26 ], [ %42, %40 ], [ %33, %35 ], [ %55, %53 ], [ %47, %49 ], [ %12, %10 ], [ %21, %15 ]
  ret i32 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_init_region_reg_pressure_info() local_unnamed_addr #0 {
  %1 = load ptr, ptr @region_ref_regs, align 8, !tbaa !12
  tail call void @bitmap_clear(ptr noundef %1) #26
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @insn_cost(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @recog_memoized(ptr noundef %0) #25
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @insn_default_latency(ptr noundef %0) #26
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  br label %35

10:                                               ; preds = %1
  %11 = load ptr, ptr @h_i_d, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %11, i32 noundef %13) #25
  %15 = getelementptr inbounds %struct._haifa_insn_data, ptr %14, i64 0, i32 5
  %16 = load i16, ptr %15, align 4, !tbaa !18
  %17 = zext nneg i16 %16 to i32
  %18 = icmp slt i16 %16, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %10
  %20 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #25
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load ptr, ptr @h_i_d, align 8
  %24 = load i32, ptr %12, align 8, !tbaa !9
  %25 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %23, i32 noundef %24) #25
  %26 = getelementptr inbounds %struct._haifa_insn_data, ptr %25, i64 0, i32 5
  store i16 0, ptr %26, align 4, !tbaa !18
  br label %35

27:                                               ; preds = %19
  %28 = tail call i32 @insn_default_latency(ptr noundef nonnull %0) #26
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0)
  %30 = trunc i32 %29 to i16
  %31 = load ptr, ptr @h_i_d, align 8
  %32 = load i32, ptr %12, align 8, !tbaa !9
  %33 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %31, i32 noundef %32) #25
  %34 = getelementptr inbounds %struct._haifa_insn_data, ptr %33, i64 0, i32 5
  store i16 %30, ptr %34, align 4, !tbaa !18
  br label %35

35:                                               ; preds = %10, %27, %4, %22, %7
  %36 = phi i32 [ %9, %7 ], [ 0, %22 ], [ 0, %4 ], [ %29, %27 ], [ %17, %10 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @sel_sched_p() unnamed_addr #5 {
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.common_sched_info_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !21
  %4 = icmp eq i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #26
  store i32 %8, ptr %2, align 8, !tbaa !9
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @insn_default_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dep_cost_1(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = tail call fastcc i32 @recog_memoized(ptr noundef %5) #25
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @recog_memoized(ptr noundef %3) #25
  br label %51

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = tail call i32 @insn_cost(ptr noundef %3) #25
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !9
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  switch i32 %12, label %23 [
    i32 12, label %28
    i32 11, label %18
  ]

18:                                               ; preds = %17
  %19 = tail call i32 @insn_default_latency(ptr noundef nonnull %3) #26
  %20 = tail call i32 @insn_default_latency(ptr noundef %5) #26
  %21 = sub nsw i32 %19, %20
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 1)
  br label %28

23:                                               ; preds = %17
  %24 = tail call i32 @bypass_p(ptr noundef nonnull %3) #26
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @insn_latency(ptr noundef nonnull %3, ptr noundef %5) #26
  br label %28

28:                                               ; preds = %17, %23, %26, %18, %10
  %29 = phi i32 [ %22, %18 ], [ %27, %26 ], [ %13, %23 ], [ %13, %10 ], [ 0, %17 ]
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 21), align 8, !tbaa !27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %5, i32 noundef %12, ptr noundef nonnull %3, i32 noundef %29, i32 noundef %1) #26
  br label %48

34:                                               ; preds = %28
  %35 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1), align 8, !tbaa !40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @alloc_INSN_LIST(ptr noundef null, ptr noundef null) #26
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %38, ptr %39, align 8, !tbaa !9
  %40 = load i32, ptr %11, align 8, !tbaa !26
  %41 = load i32, ptr %38, align 8
  %42 = shl i32 %40, 16
  %43 = and i32 %42, 16711680
  %44 = and i32 %41, -16711681
  %45 = or disjoint i32 %44, %43
  store i32 %45, ptr %38, align 8
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1), align 8, !tbaa !40
  %47 = tail call i32 %46(ptr noundef %5, ptr noundef nonnull %38, ptr noundef nonnull %3, i32 noundef %29) #26
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %38) #26
  br label %48

48:                                               ; preds = %34, %37, %32
  %49 = phi i32 [ %33, %32 ], [ %47, %37 ], [ %29, %34 ]
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  br label %51

51:                                               ; preds = %48, %8
  %52 = phi i32 [ 0, %8 ], [ %50, %48 ]
  ret i32 %52
}

; Function Attrs: optsize
declare i32 @bypass_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @insn_latency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_INSN_LIST_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dep_cost(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @dep_cost_1(ptr noundef %0, i32 noundef 0) #25
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @increase_insn_priority(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load ptr, ptr @h_i_d, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !9
  %9 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %6, i32 noundef %8) #25
  %10 = getelementptr inbounds %struct._haifa_insn_data, ptr %9, i64 0, i32 7
  %11 = load i8, ptr %10, align 1, !tbaa !41
  %12 = icmp sgt i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %9, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !42
  %16 = add nsw i32 %15, %1
  store i32 %16, ptr %14, align 4, !tbaa !42
  br label %18

17:                                               ; preds = %2
  tail call void @sel_add_to_insn_priority(ptr noundef %0, i32 noundef %1) #26
  br label %18

18:                                               ; preds = %5, %13, %17
  ret void
}

; Function Attrs: optsize
declare void @sel_add_to_insn_priority(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @ready_lastpos(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1379, ptr noundef nonnull @.str.3) #26
  %6 = load i32, ptr %2, align 8, !tbaa !43
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = sext i32 %8 to i64
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  ret ptr %17
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ready_element(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !43
  %5 = icmp ne i32 %4, 0
  %6 = icmp sgt i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1456, ptr noundef nonnull @.str.3) #26
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = sub nsw i32 %12, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %10, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ready_sort(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ready_lastpos(ptr noundef %0) #25
  %3 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !43
  br i1 %4, label %17, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %7, %9
  %10 = phi i64 [ %13, %9 ], [ 0, %7 ]
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  tail call fastcc void @setup_insn_reg_pressure_info(ptr noundef %12) #25
  %13 = add nuw nsw i64 %10, 1
  %14 = load i32, ptr %5, align 8, !tbaa !43
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %9, label %17, !llvm.loop !47

17:                                               ; preds = %9, %1
  %18 = phi i32 [ %6, %1 ], [ %14, %9 ]
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call fastcc void @swap_sort(ptr noundef nonnull %2) #25
  br label %25

21:                                               ; preds = %17
  %22 = icmp sgt i32 %18, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = zext nneg i32 %18 to i64
  tail call void @spec_qsort(ptr noundef nonnull %2, i64 noundef %24, i64 noundef 8, ptr noundef nonnull @rank_for_schedule) #26
  br label %25

25:                                               ; preds = %7, %21, %23, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_insn_reg_pressure_info(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %12, %6 ]
  %8 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [27 x i32], ptr @setup_insn_reg_pressure_info.death, i64 0, i64 %10
  store i32 0, ptr %11, align 4, !tbaa !5
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !llvm.loop !48

14:                                               ; preds = %6, %1
  %15 = load ptr, ptr @h_i_d, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %15, i32 noundef %17) #25
  %19 = getelementptr inbounds %struct._haifa_insn_data, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr @sched_regno_cover_class, align 8
  %24 = load ptr, ptr @regno_reg_rtx, align 8
  br label %25

25:                                               ; preds = %22, %50
  %26 = phi ptr [ %20, %22 ], [ %52, %50 ]
  %27 = tail call fastcc zeroext i8 @dying_use_p(ptr noundef nonnull %26) #25, !range !17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %26, align 8, !tbaa !49
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %23, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = icmp slt i32 %30, 53
  %35 = zext i32 %33 to i64
  br i1 %34, label %45, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds ptr, ptr %24, i64 %31
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %35, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !5
  br label %45

45:                                               ; preds = %29, %36
  %46 = phi i32 [ %44, %36 ], [ 1, %29 ]
  %47 = getelementptr inbounds [27 x i32], ptr @setup_insn_reg_pressure_info.death, i64 0, i64 %35
  %48 = load i32, ptr %47, align 4, !tbaa !5
  %49 = add nsw i32 %48, %46
  store i32 %49, ptr %47, align 4, !tbaa !5
  br label %50

50:                                               ; preds = %45, %25
  %51 = getelementptr inbounds %struct.reg_use_data, ptr %26, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %25, !llvm.loop !51

54:                                               ; preds = %50, %14
  %55 = getelementptr inbounds %struct._haifa_insn_data, ptr %18, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds %struct._haifa_insn_data, ptr %18, i64 0, i32 14
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = icmp ne ptr %56, null
  %60 = icmp ne ptr %58, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1149, ptr noundef nonnull @.str.3) #26
  %63 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  br label %64

64:                                               ; preds = %54, %62
  %65 = phi i32 [ %2, %54 ], [ %63, %62 ]
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %64, %98
  %68 = phi i64 [ %113, %98 ], [ 0, %64 ]
  %69 = phi i32 [ %112, %98 ], [ 0, %64 ]
  %70 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %68
  %71 = load i32, ptr %70, align 4, !tbaa !5
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !5
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1153, ptr noundef nonnull @.str.3) #26
  br label %77

77:                                               ; preds = %67, %76
  %78 = getelementptr inbounds %struct.reg_pressure_data, ptr %56, i64 %68
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %79, 8
  %81 = and i32 %80, 255
  %82 = getelementptr inbounds [27 x i32], ptr @setup_insn_reg_pressure_info.death, i64 0, i64 %72
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = getelementptr inbounds i32, ptr %58, i64 %68
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %72
  %87 = load i32, ptr %86, align 4, !tbaa !5
  %88 = sub nsw i32 %85, %87
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 0)
  %90 = add i32 %85, %81
  %91 = add i32 %83, %87
  %92 = sub i32 %90, %91
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0)
  %94 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %72
  %95 = load i16, ptr %94, align 2, !tbaa !54
  %96 = icmp sgt i16 %95, -1
  br i1 %96, label %98, label %97

97:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1159, ptr noundef nonnull @.str.3) #26
  br label %98

98:                                               ; preds = %77, %97
  %99 = sext i16 %95 to i64
  %100 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !5
  %102 = sub nsw i32 %93, %89
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %103, i64 %72
  %105 = load i16, ptr %104, align 4, !tbaa !54
  %106 = sext i16 %105 to i32
  %107 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %103, i64 %72, i64 1
  %108 = load i16, ptr %107, align 2, !tbaa !54
  %109 = sext i16 %108 to i32
  %110 = add nsw i32 %109, %106
  %111 = mul nsw i32 %110, %102
  %112 = add nsw i32 %111, %69
  %113 = add nuw nsw i64 %68, 1
  %114 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %67, label %117, !llvm.loop !55

117:                                              ; preds = %98, %64
  %118 = phi i32 [ 0, %64 ], [ %112, %98 ]
  %119 = load ptr, ptr @h_i_d, align 8
  %120 = load i32, ptr %16, align 8, !tbaa !9
  %121 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %119, i32 noundef %120) #25
  %122 = getelementptr inbounds %struct._haifa_insn_data, ptr %121, i64 0, i32 17
  store i32 %118, ptr %122, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @swap_sort(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = getelementptr inbounds ptr, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  store ptr %4, ptr %2, align 8, !tbaa !12
  %5 = call i32 @rank_for_schedule(ptr noundef nonnull %0, ptr noundef nonnull %2) #25
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %8, ptr %3, align 8, !tbaa !12
  br label %9, !llvm.loop !57

9:                                                ; preds = %7, %1
  %10 = phi i64 [ 0, %7 ], [ 1, %1 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  store ptr %4, ptr %11, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @rank_for_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !12
  %4 = load ptr, ptr %0, align 8, !tbaa !12
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 7
  %11 = load i32, ptr %4, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 7
  br i1 %10, label %14, label %16

14:                                               ; preds = %7
  %15 = select i1 %13, i32 1, i32 -1
  br label %211

16:                                               ; preds = %7
  br i1 %13, label %211, label %17

17:                                               ; preds = %16, %2
  %18 = load i32, ptr @flag_sched_group_heuristic, align 4, !tbaa !5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %3, align 8
  %22 = lshr i32 %21, 28
  %23 = and i32 %22, 1
  %24 = load i32, ptr %4, align 8
  %25 = lshr i32 %24, 28
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = icmp eq i32 %26, 0
  %30 = select i1 %29, i32 -1, i32 1
  br label %211

31:                                               ; preds = %20, %17
  %32 = load ptr, ptr @h_i_d, align 8
  %33 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !9
  %35 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %32, i32 noundef %34) #25
  %36 = getelementptr inbounds %struct._haifa_insn_data, ptr %35, i64 0, i32 7
  %37 = load i8, ptr %36, align 1, !tbaa !41
  %38 = icmp sgt i8 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !9
  %42 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %32, i32 noundef %41) #25
  %43 = getelementptr inbounds %struct._haifa_insn_data, ptr %42, i64 0, i32 7
  %44 = load i8, ptr %43, align 1, !tbaa !41
  %45 = icmp sgt i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39, %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1196, ptr noundef nonnull @.str.3) #26
  %47 = load ptr, ptr @h_i_d, align 8
  br label %48

48:                                               ; preds = %39, %46
  %49 = phi ptr [ %32, %39 ], [ %47, %46 ]
  %50 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !9
  %55 = load i32, ptr %33, align 8, !tbaa !9
  %56 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %49, i32 noundef %54) #25
  %57 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %49, i32 noundef %55) #25
  br label %89

58:                                               ; preds = %48
  %59 = load i32, ptr %33, align 8, !tbaa !9
  %60 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %49, i32 noundef %59) #25
  %61 = getelementptr inbounds %struct._haifa_insn_data, ptr %60, i64 0, i32 17
  %62 = load i32, ptr %61, align 8, !tbaa !56
  %63 = getelementptr inbounds %struct._haifa_insn_data, ptr %60, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !58
  %65 = load i32, ptr @clock_var, align 4, !tbaa !5
  %66 = icmp sgt i32 %64, %65
  %67 = sub nsw i32 %64, %65
  %68 = select i1 %66, i32 %67, i32 0
  %69 = add nsw i32 %68, %62
  %70 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !9
  %72 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %49, i32 noundef %71) #25
  %73 = getelementptr inbounds %struct._haifa_insn_data, ptr %72, i64 0, i32 17
  %74 = load i32, ptr %73, align 8, !tbaa !56
  %75 = sub i32 %69, %74
  %76 = getelementptr inbounds %struct._haifa_insn_data, ptr %72, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !58
  %78 = icmp sgt i32 %77, %65
  %79 = sub i32 %65, %77
  %80 = select i1 %78, i32 %79, i32 0
  %81 = add i32 %75, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %211

83:                                               ; preds = %58
  br i1 %78, label %85, label %84

84:                                               ; preds = %83
  br i1 %66, label %86, label %89

85:                                               ; preds = %83
  br i1 %66, label %86, label %211

86:                                               ; preds = %84, %85
  %87 = sub nsw i32 %64, %77
  %88 = select i1 %78, i32 %87, i32 1
  br label %211

89:                                               ; preds = %52, %84
  %90 = phi ptr [ %57, %52 ], [ %60, %84 ]
  %91 = phi ptr [ %56, %52 ], [ %72, %84 ]
  %92 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %93 = getelementptr inbounds %struct._haifa_insn_data, ptr %91, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !42
  %95 = getelementptr inbounds %struct._haifa_insn_data, ptr %90, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !42
  %97 = sub nsw i32 %94, %96
  %98 = load i32, ptr @flag_sched_critical_path_heuristic, align 4, !tbaa !5
  %99 = icmp ne i32 %98, 0
  %100 = icmp ne i32 %97, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %211, label %102

102:                                              ; preds = %89
  %103 = load i32, ptr @flag_sched_spec_insn_heuristic, align 4, !tbaa !5
  %104 = icmp ne i32 %103, 0
  %105 = load ptr, ptr @spec_info, align 8
  %106 = icmp ne ptr %105, null
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %132

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct._haifa_insn_data, ptr %90, i64 0, i32 8
  %110 = load i32, ptr %109, align 8, !tbaa !59
  %111 = and i32 %110, 16777215
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = tail call i32 @ds_weak(i32 noundef %111) #26
  %115 = load ptr, ptr @h_i_d, align 8
  %116 = load i32, ptr %92, align 8, !tbaa !9
  %117 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %115, i32 noundef %116) #25
  br label %118

118:                                              ; preds = %108, %113
  %119 = phi ptr [ %91, %108 ], [ %117, %113 ]
  %120 = phi i32 [ 63, %108 ], [ %114, %113 ]
  %121 = getelementptr inbounds %struct._haifa_insn_data, ptr %119, i64 0, i32 8
  %122 = load i32, ptr %121, align 8, !tbaa !59
  %123 = and i32 %122, 16777215
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = tail call i32 @ds_weak(i32 noundef %123) #26
  br label %127

127:                                              ; preds = %118, %125
  %128 = phi i32 [ %126, %125 ], [ 63, %118 ]
  %129 = sub nsw i32 %128, %120
  %130 = add i32 %129, 7
  %131 = icmp ult i32 %130, 15
  br i1 %131, label %132, label %211

132:                                              ; preds = %127, %102
  %133 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %134 = getelementptr inbounds %struct.haifa_sched_info, ptr %133, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !60
  %136 = tail call i32 %135(ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %137 = load i32, ptr @flag_sched_rank_heuristic, align 4, !tbaa !5
  %138 = icmp ne i32 %137, 0
  %139 = icmp ne i32 %136, 0
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %211, label %141

141:                                              ; preds = %132
  %142 = load i32, ptr @flag_sched_last_insn_heuristic, align 4, !tbaa !5
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %196, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %146 = load i32, ptr %145, align 8
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 7
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %151 = getelementptr inbounds %struct.haifa_sched_info, ptr %150, i64 0, i32 8
  %152 = load ptr, ptr %151, align 8, !tbaa !62
  %153 = icmp eq ptr %145, %152
  br i1 %153, label %196, label %154

154:                                              ; preds = %149, %154
  %155 = phi ptr [ %157, %154 ], [ %145, %149 ]
  %156 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !9
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = add nsw i32 %159, -8
  %161 = icmp ult i32 %160, 3
  %162 = icmp eq ptr %157, %152
  %163 = or i1 %162, %161
  br i1 %163, label %164, label %154, !llvm.loop !63

164:                                              ; preds = %154, %144
  %165 = phi i32 [ %147, %144 ], [ %159, %154 ]
  %166 = phi ptr [ %145, %144 ], [ %157, %154 ]
  %167 = add nsw i32 %165, -11
  %168 = icmp ult i32 %167, -3
  br i1 %168, label %196, label %169

169:                                              ; preds = %164
  %170 = tail call ptr @sd_find_dep_between(ptr noundef nonnull %166, ptr noundef %3, i8 noundef zeroext 1) #26
  %171 = icmp eq ptr %170, null
  br i1 %171, label %180, label %172

172:                                              ; preds = %169
  %173 = tail call i32 @dep_cost(ptr noundef nonnull %170) #25
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct._dep, ptr %170, i64 0, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !26
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 -1, i32 -2
  br label %180

180:                                              ; preds = %175, %169, %172
  %181 = phi i32 [ -3, %172 ], [ -3, %169 ], [ %179, %175 ]
  %182 = tail call ptr @sd_find_dep_between(ptr noundef nonnull %166, ptr noundef %4, i8 noundef zeroext 1) #26
  %183 = icmp eq ptr %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = tail call i32 @dep_cost(ptr noundef nonnull %182) #25
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %192, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct._dep, ptr %182, i64 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !26
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 1, i32 2
  br label %192

192:                                              ; preds = %187, %180, %184
  %193 = phi i32 [ 3, %184 ], [ 3, %180 ], [ %191, %187 ]
  %194 = add nsw i32 %193, %181
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %149, %141, %164, %192
  %197 = tail call fastcc i32 @dep_list_size(ptr noundef %4) #25
  %198 = tail call fastcc i32 @dep_list_size(ptr noundef %3) #25
  %199 = sub nsw i32 %197, %198
  %200 = load i32, ptr @flag_sched_dep_count_heuristic, align 4, !tbaa !5
  %201 = icmp ne i32 %200, 0
  %202 = icmp ne i32 %199, 0
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %211, label %204

204:                                              ; preds = %196
  %205 = load ptr, ptr @sched_luids, align 8
  %206 = load i32, ptr %33, align 8, !tbaa !9
  %207 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %205, i32 noundef %206) #25
  %208 = load i32, ptr %92, align 8, !tbaa !9
  %209 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %205, i32 noundef %208) #25
  %210 = sub nsw i32 %207, %209
  br label %211

211:                                              ; preds = %14, %86, %196, %132, %89, %85, %16, %58, %127, %192, %204, %28
  %212 = phi i32 [ %30, %28 ], [ %210, %204 ], [ %194, %192 ], [ %129, %127 ], [ %81, %58 ], [ 1, %16 ], [ -1, %85 ], [ %97, %89 ], [ %136, %132 ], [ %199, %196 ], [ %88, %86 ], [ %15, %14 ]
  ret i32 %212
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @advance_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 15), align 8, !tbaa !64
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void %2() #26
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 12), align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call ptr %6() #26
  %10 = tail call i32 @state_transition(ptr noundef %0, ptr noundef %9) #26
  br label %11

11:                                               ; preds = %8, %5
  %12 = tail call i32 @state_transition(ptr noundef %0, ptr noundef null) #26
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 14), align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr %13() #26
  %17 = tail call i32 @state_transition(ptr noundef %0, ptr noundef %16) #26
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 16), align 8, !tbaa !67
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void %19() #26
  br label %22

22:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: optsize
declare i32 @state_transition(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_setup_bb_reg_pressure_info(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1650, ptr noundef nonnull @.str.3) #26
  br label %6

6:                                                ; preds = %2, %5
  tail call fastcc void @initiate_bb_reg_pressure_info(ptr noundef %0) #25
  tail call fastcc void @setup_insn_max_reg_pressure(ptr noundef %1, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_bb_reg_pressure_info(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @current_nr_blocks, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %29

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %4, %25
  %10 = phi ptr [ %27, %25 ], [ %7, %4 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %10, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  tail call fastcc void @setup_ref_regs(ptr noundef %24) #25
  br label %25

25:                                               ; preds = %17, %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9, !llvm.loop !70

29:                                               ; preds = %25, %9, %4, %1
  %30 = tail call ptr @df_get_live_in(ptr noundef %0) #26
  tail call fastcc void @initiate_reg_pressure_info(ptr noundef %30) #25
  %31 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %0) #25, !range !17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29, %40
  %34 = phi i1 [ false, %40 ], [ true, %29 ]
  %35 = phi i32 [ 1, %40 ], [ 0, %29 ]
  %36 = tail call ptr @df_get_live_in(ptr noundef %0) #26
  %37 = tail call i32 @bitmap_bit_p(ptr noundef %36, i32 noundef %35) #26
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %35, i8 noundef zeroext 1) #25
  br label %40

40:                                               ; preds = %39, %33
  br i1 %34, label %33, label %41

41:                                               ; preds = %40, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_insn_max_reg_pressure(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  tail call fastcc void @save_reg_pressure() #25
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %14

7:                                                ; preds = %14, %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %13 = icmp ne i8 %1, 0
  br label %24

14:                                               ; preds = %5, %14
  %15 = phi i64 [ 0, %5 ], [ %22, %14 ]
  %16 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds [27 x i32], ptr @setup_insn_max_reg_pressure.max_reg_pressure, i64 0, i64 %18
  store i32 %20, ptr %21, align 4, !tbaa !5
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, %6
  br i1 %23, label %7, label %14, !llvm.loop !71

24:                                               ; preds = %11, %91
  %25 = phi i32 [ %3, %11 ], [ %92, %91 ]
  %26 = phi ptr [ %9, %11 ], [ %94, %91 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = load ptr, ptr %12, align 8, !tbaa !9
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %24
  %33 = load i32, ptr %26, align 8
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -11
  %36 = icmp ult i32 %35, -3
  br i1 %36, label %91, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %25, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %37
  %40 = load ptr, ptr @h_i_d, align 8
  br label %41

41:                                               ; preds = %39, %61
  %42 = phi i32 [ %25, %39 ], [ %62, %61 ]
  %43 = phi ptr [ %40, %39 ], [ %63, %61 ]
  %44 = phi i64 [ 0, %39 ], [ %65, %61 ]
  %45 = phi i8 [ 1, %39 ], [ %64, %61 ]
  %46 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %44
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [27 x i32], ptr @setup_insn_max_reg_pressure.max_reg_pressure, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = load i32, ptr %27, align 8, !tbaa !9
  %52 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %43, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_insn_data, ptr %52, i64 0, i32 14
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = getelementptr inbounds i32, ptr %54, i64 %44
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %57 = icmp eq i32 %56, %50
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  store i32 %50, ptr %55, align 4, !tbaa !5
  %59 = load ptr, ptr @h_i_d, align 8
  %60 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  br label %61

61:                                               ; preds = %41, %58
  %62 = phi i32 [ %60, %58 ], [ %42, %41 ]
  %63 = phi ptr [ %59, %58 ], [ %43, %41 ]
  %64 = phi i8 [ 0, %58 ], [ %45, %41 ]
  %65 = add nuw nsw i64 %44, 1
  %66 = sext i32 %62 to i64
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %41, label %68, !llvm.loop !72

68:                                               ; preds = %61, %37
  %69 = phi i8 [ 1, %37 ], [ %64, %61 ]
  %70 = icmp ne i8 %69, 0
  %71 = select i1 %13, i1 %70, i1 false
  br i1 %71, label %96, label %72

72:                                               ; preds = %68
  tail call fastcc void @update_register_pressure(ptr noundef nonnull %26) #25
  %73 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = zext nneg i32 %73 to i64
  br label %77

77:                                               ; preds = %75, %88
  %78 = phi i64 [ 0, %75 ], [ %89, %88 ]
  %79 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !5
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [27 x i32], ptr @setup_insn_max_reg_pressure.max_reg_pressure, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !5
  %84 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %81
  %85 = load i32, ptr %84, align 4, !tbaa !5
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 %85, ptr %82, align 4, !tbaa !5
  br label %88

88:                                               ; preds = %77, %87
  %89 = add nuw nsw i64 %78, 1
  %90 = icmp eq i64 %89, %76
  br i1 %90, label %91, label %77, !llvm.loop !73

91:                                               ; preds = %88, %72, %32
  %92 = phi i32 [ %73, %72 ], [ %25, %32 ], [ %73, %88 ]
  %93 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %24, !llvm.loop !74

96:                                               ; preds = %24, %68, %91, %7
  tail call fastcc void @restore_reg_pressure() #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @concat_note_lists(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %10, %7 ], [ %0, %4 ]
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !75

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %13, align 8, !tbaa !9
  %14 = load ptr, ptr %1, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %8, ptr %15, align 8, !tbaa !9
  br label %16

16:                                               ; preds = %4, %12
  store ptr %0, ptr %1, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_notes(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  store ptr null, ptr @note_list, align 8, !tbaa !12
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %44

9:                                                ; preds = %4, %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %44, label %13

13:                                               ; preds = %9, %42
  %14 = phi ptr [ %16, %42 ], [ %0, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %22 = load i32, ptr %21, align 8, !tbaa !9
  switch i32 %22, label %27 [
    i32 10, label %42
    i32 6, label %23
  ]

23:                                               ; preds = %20
  %24 = icmp eq ptr %14, %1
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  tail call void @remove_insn(ptr noundef nonnull %14) #26
  %26 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 6) #26
  tail call void @add_reg_note(ptr noundef %16, i32 noundef 26, ptr noundef %26) #26
  br label %34

27:                                               ; preds = %23, %20
  tail call void @remove_insn(ptr noundef nonnull %14) #26
  %28 = load ptr, ptr @note_list, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %28, ptr %29, align 8, !tbaa !9
  store ptr null, ptr %15, align 8, !tbaa !9
  %30 = icmp eq ptr %28, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %14, ptr %32, align 8, !tbaa !9
  br label %33

33:                                               ; preds = %31, %27
  store ptr %14, ptr @note_list, align 8, !tbaa !12
  br label %34

34:                                               ; preds = %33, %25
  %35 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %36 = icmp eq i8 %35, 0
  %37 = icmp eq ptr %14, %1
  %38 = and i1 %37, %36
  %39 = icmp eq ptr %14, %0
  %40 = or i1 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1887, ptr noundef nonnull @.str.3) #26
  br label %42

42:                                               ; preds = %34, %41, %20, %13
  %43 = icmp eq ptr %16, %11
  br i1 %43, label %44, label %13, !llvm.loop !76

44:                                               ; preds = %42, %9, %4
  ret void
}

; Function Attrs: optsize
declare void @remove_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_ebb_head_tail(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = load i32, ptr %7, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi ptr [ %20, %18 ], [ %7, %4 ]
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %35, label %24

24:                                               ; preds = %21, %31
  %25 = phi ptr [ %33, %31 ], [ %22, %21 ]
  %26 = load i32, ptr %25, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %35 [
    i16 13, label %31
    i16 7, label %28
  ]

28:                                               ; preds = %24
  %29 = and i32 %26, 67108864
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24, %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = icmp eq ptr %33, %9
  br i1 %34, label %35, label %24, !llvm.loop !78

35:                                               ; preds = %31, %28, %24, %21
  %36 = phi ptr [ %9, %21 ], [ %25, %24 ], [ %25, %28 ], [ %9, %31 ]
  store ptr %36, ptr %2, align 8, !tbaa !12
  %37 = icmp eq ptr %0, %1
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %12, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 12
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  br label %45

45:                                               ; preds = %35, %38, %42
  %46 = phi ptr [ %44, %42 ], [ %12, %38 ], [ %36, %35 ]
  %47 = icmp eq ptr %46, %14
  br i1 %47, label %59, label %48

48:                                               ; preds = %45, %55
  %49 = phi ptr [ %57, %55 ], [ %14, %45 ]
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %59 [
    i16 13, label %55
    i16 7, label %52
  ]

52:                                               ; preds = %48
  %53 = and i32 %50, 67108864
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48, %52
  %56 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = icmp eq ptr %46, %57
  br i1 %58, label %59, label %48, !llvm.loop !79

59:                                               ; preds = %55, %52, %48, %45
  %60 = phi ptr [ %14, %45 ], [ %49, %48 ], [ %49, %52 ], [ %46, %55 ]
  store ptr %60, ptr %3, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @no_real_insns_p(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %17 [
    i16 13, label %13
    i16 12, label %13
    i16 7, label %10
  ]

10:                                               ; preds = %6
  %11 = and i32 %8, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6, %6, %10
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %6, !llvm.loop !80

17:                                               ; preds = %6, %10, %13, %2
  %18 = phi i32 [ 1, %2 ], [ 1, %13 ], [ 0, %10 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @restore_other_notes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @note_list, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %14

10:                                               ; preds = %5
  %11 = tail call ptr @bb_note(ptr noundef %1) #25
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %0, %7 ], [ %13, %10 ]
  %16 = phi ptr [ %9, %7 ], [ %1, %10 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %22 = phi ptr [ %21, %20 ], [ %3, %14 ]
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 1
  store ptr %16, ptr %23, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !81

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %3, %14 ], [ %21, %20 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 1
  store ptr %16, ptr %30, align 8, !tbaa !9
  %31 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  store ptr %32, ptr %29, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %28, ptr %33, align 8, !tbaa !9
  %34 = load ptr, ptr @note_list, align 8, !tbaa !12
  store ptr %34, ptr %31, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %15, ptr %35, align 8, !tbaa !9
  %36 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq ptr %37, %16
  br i1 %38, label %43, label %39

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  store ptr %34, ptr %42, align 8, !tbaa !68
  br label %43

43:                                               ; preds = %27, %39, %2
  %44 = phi ptr [ %0, %2 ], [ %28, %39 ], [ %28, %27 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @bb_note(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ %5, %1 ]
  %14 = phi ptr [ %10, %8 ], [ %4, %1 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %19 = load i32, ptr %18, align 8, !tbaa !9
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5132, ptr noundef nonnull @.str.3) #26
  br label %22

22:                                               ; preds = %17, %21
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reemit_notes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %21, %18 ], [ %3, %1 ]
  %7 = phi ptr [ %19, %18 ], [ %0, %1 ]
  %8 = load i32, ptr %6, align 8
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 1703936
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !9
  %16 = trunc i64 %15 to i32
  %17 = tail call ptr @emit_note_before(i32 noundef %16, ptr noundef %7) #26
  tail call void @remove_note(ptr noundef %0, ptr noundef nonnull %6) #26
  br label %18

18:                                               ; preds = %5, %11
  %19 = phi ptr [ %17, %11 ], [ %7, %5 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !llvm.loop !82

23:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: optsize
declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @max_issue(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ready_list, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = load i32, ptr @dfa_lookahead, align 4, !tbaa !5
  %8 = icmp slt i32 %7, 1
  %9 = icmp slt i32 %1, 0
  %10 = or i1 %9, %8
  %11 = icmp slt i32 %6, %1
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2458, ptr noundef nonnull @.str.3) #26
  %14 = load i32, ptr @dfa_lookahead, align 4, !tbaa !5
  br label %15

15:                                               ; preds = %4, %13
  %16 = phi i32 [ %7, %4 ], [ %14, %13 ]
  %17 = load i32, ptr @cached_first_cycle_multipass_dfa_lookahead, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %16
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  store i32 %16, ptr @cached_first_cycle_multipass_dfa_lookahead, align 4, !tbaa !5
  store i32 100, ptr @max_lookahead_tries, align 4, !tbaa !5
  %20 = load i32, ptr @issue_rate, align 4, !tbaa !5
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = add nuw i32 %20, 3
  %24 = and i32 %23, -4
  %25 = add nsw i32 %20, -1
  %26 = insertelement <4 x i32> poison, i32 %25, i64 0
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> zeroinitializer
  %28 = insertelement <4 x i32> poison, i32 %16, i64 0
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %30

30:                                               ; preds = %30, %22
  %31 = phi i32 [ 0, %22 ], [ %34, %30 ]
  %32 = phi <4 x i32> [ <i32 100, i32 1, i32 1, i32 1>, %22 ], [ %33, %30 ]
  %33 = mul <4 x i32> %32, %29
  %34 = add i32 %31, 4
  %35 = icmp eq i32 %34, %24
  br i1 %35, label %36, label %30, !llvm.loop !83

36:                                               ; preds = %30
  %37 = insertelement <4 x i32> poison, i32 %31, i64 0
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer
  %39 = or disjoint <4 x i32> %38, <i32 0, i32 1, i32 2, i32 3>
  %40 = icmp ugt <4 x i32> %39, %27
  %41 = select <4 x i1> %40, <4 x i32> %32, <4 x i32> %33
  %42 = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %41)
  store i32 %42, ptr @max_lookahead_tries, align 4, !tbaa !5
  br label %43

43:                                               ; preds = %19, %36, %15
  %44 = icmp sgt i32 %6, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %43
  %46 = load i32, ptr @issue_rate, align 4, !tbaa !5
  %47 = load i32, ptr @cycle_issued_insns, align 4, !tbaa !5
  %48 = sub nsw i32 %46, %47
  %49 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %50 = zext nneg i32 %6 to i64
  br label %51

51:                                               ; preds = %45, %63
  %52 = phi i64 [ 0, %45 ], [ %66, %63 ]
  %53 = phi i32 [ %48, %45 ], [ %65, %63 ]
  %54 = phi i32 [ 0, %45 ], [ %64, %63 ]
  %55 = getelementptr inbounds i8, ptr %49, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = icmp sgt i32 %53, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %58
  %61 = add nsw i32 %53, -1
  %62 = add nsw i32 %54, 1
  br label %63

63:                                               ; preds = %51, %60
  %64 = phi i32 [ %54, %51 ], [ %62, %60 ]
  %65 = phi i32 [ %53, %51 ], [ %61, %60 ]
  %66 = add nuw nsw i64 %52, 1
  %67 = icmp eq i64 %66, %50
  br i1 %67, label %68, label %51, !llvm.loop !86

68:                                               ; preds = %63, %58, %43
  %69 = phi i32 [ 0, %43 ], [ %54, %58 ], [ %64, %63 ]
  %70 = load ptr, ptr @choice_stack, align 8, !tbaa !12
  %71 = getelementptr inbounds %struct.choice_entry, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !87
  %73 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %2, i64 %73, i1 false)
  %74 = load i32, ptr @dfa_lookahead, align 4, !tbaa !5
  %75 = getelementptr inbounds %struct.choice_entry, ptr %70, i64 0, i32 1
  store i32 %74, ptr %75, align 4, !tbaa !90
  %76 = getelementptr inbounds %struct.choice_entry, ptr %70, i64 0, i32 2
  store i32 0, ptr %76, align 8, !tbaa !91
  br i1 %44, label %77, label %80

77:                                               ; preds = %68
  %78 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %79 = zext nneg i32 %6 to i64
  br label %84

80:                                               ; preds = %84, %68
  %81 = phi i32 [ 0, %68 ], [ %91, %84 ]
  %82 = icmp eq i32 %1, 0
  %83 = sext i32 %1 to i64
  br label %94

84:                                               ; preds = %77, %84
  %85 = phi i64 [ 0, %77 ], [ %92, %84 ]
  %86 = phi i32 [ 0, %77 ], [ %91, %84 ]
  %87 = getelementptr inbounds i8, ptr %78, i64 %85
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = icmp eq i8 %88, 0
  %90 = zext i1 %89 to i32
  %91 = add nuw nsw i32 %86, %90
  %92 = add nuw nsw i64 %85, 1
  %93 = icmp eq i64 %92, %79
  br i1 %93, label %80, label %84, !llvm.loop !92

94:                                               ; preds = %80, %198
  %95 = phi i32 [ %205, %198 ], [ %74, %80 ]
  %96 = phi i32 [ %199, %198 ], [ 0, %80 ]
  %97 = phi i32 [ %203, %198 ], [ 0, %80 ]
  %98 = phi i32 [ %201, %198 ], [ 0, %80 ]
  %99 = phi ptr [ %202, %198 ], [ %70, %80 ]
  %100 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 0, i32 1
  %101 = icmp ne i32 %95, 0
  %102 = icmp slt i32 %97, %6
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %154, label %104

104:                                              ; preds = %94
  %105 = icmp sgt i32 %97, %6
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2517, ptr noundef nonnull @.str.3) #26
  br label %107

107:                                              ; preds = %104, %106
  %108 = load ptr, ptr @choice_stack, align 8, !tbaa !12
  %109 = icmp eq ptr %99, %108
  br i1 %109, label %206, label %110

110:                                              ; preds = %107
  %111 = sext i32 %96 to i64
  %112 = ptrtoint ptr %99 to i64
  %113 = ptrtoint ptr %108 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 24
  %116 = icmp sgt i64 %115, %111
  br i1 %116, label %117, label %144

117:                                              ; preds = %110
  br i1 %82, label %135, label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr @ready_try, align 8, !tbaa !12
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi i64 [ %83, %118 ], [ %122, %120 ]
  %122 = add nsw i64 %121, -1
  %123 = getelementptr inbounds i8, ptr %119, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !9
  %125 = icmp eq i8 %124, 0
  %126 = and i64 %122, 4294967295
  %127 = icmp ne i64 %126, 0
  %128 = and i1 %127, %125
  br i1 %128, label %120, label %129, !llvm.loop !93

129:                                              ; preds = %120
  %130 = shl i64 %122, 32
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds i8, ptr %119, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !9
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %117, %129
  %136 = trunc i64 %115 to i32
  %137 = getelementptr inbounds %struct.choice_entry, ptr %108, i64 1
  %138 = load i32, ptr %137, align 8, !tbaa !94
  store i32 %138, ptr %3, align 4, !tbaa !5
  %139 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 0, i32 2
  %140 = load i32, ptr %139, align 8, !tbaa !91
  %141 = icmp eq i32 %140, %69
  %142 = icmp eq i32 %81, %136
  %143 = select i1 %141, i1 true, i1 %142
  br i1 %143, label %206, label %144

144:                                              ; preds = %135, %129, %110
  %145 = phi i32 [ %96, %129 ], [ %96, %110 ], [ %136, %135 ]
  %146 = load i32, ptr %99, align 8, !tbaa !94
  %147 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  store i8 0, ptr %149, align 1, !tbaa !9
  %150 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 -1
  %151 = getelementptr %struct.choice_entry, ptr %99, i64 -1, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !87
  %153 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %152, i64 %153, i1 false)
  br label %198

154:                                              ; preds = %94
  %155 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %156 = sext i32 %97 to i64
  %157 = getelementptr inbounds i8, ptr %155, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %198

160:                                              ; preds = %154
  %161 = add nsw i32 %98, 1
  %162 = load i32, ptr @max_lookahead_tries, align 4, !tbaa !5
  %163 = icmp slt i32 %98, %162
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr @choice_stack, align 8, !tbaa !12
  br label %206

166:                                              ; preds = %160
  %167 = tail call ptr @ready_element(ptr noundef %0, i32 noundef %97) #25
  %168 = tail call i32 @state_transition(ptr noundef %2, ptr noundef %167) #26
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %166
  %171 = tail call i32 @state_dead_lock_p(ptr noundef %2) #26
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = tail call fastcc zeroext i8 @insn_finishes_cycle_p(ptr noundef %167) #25, !range !17
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, ptr %100, align 4, !tbaa !90
  %178 = add nsw i32 %177, -1
  br label %179

179:                                              ; preds = %170, %173, %176
  %180 = phi i32 [ %178, %176 ], [ 0, %173 ], [ 0, %170 ]
  store i32 %180, ptr %100, align 4, !tbaa !90
  %181 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !91
  %183 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !87
  %185 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  %186 = tail call i32 @bcmp(ptr %184, ptr %2, i64 %185)
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = add nsw i32 %182, %188
  %190 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 1
  %191 = load i32, ptr @dfa_lookahead, align 4, !tbaa !5
  %192 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 1, i32 1
  store i32 %191, ptr %192, align 4, !tbaa !90
  store i32 %97, ptr %190, align 8, !tbaa !94
  %193 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 1, i32 2
  store i32 %189, ptr %193, align 8, !tbaa !91
  %194 = getelementptr inbounds %struct.choice_entry, ptr %99, i64 1, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !87
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %195, ptr align 1 %2, i64 %185, i1 false)
  %196 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %197 = getelementptr inbounds i8, ptr %196, i64 %156
  store i8 1, ptr %197, align 1, !tbaa !9
  br label %198

198:                                              ; preds = %154, %179, %166, %144
  %199 = phi i32 [ %145, %144 ], [ %96, %154 ], [ %96, %179 ], [ %96, %166 ]
  %200 = phi i32 [ %146, %144 ], [ %97, %154 ], [ -1, %179 ], [ %97, %166 ]
  %201 = phi i32 [ %98, %144 ], [ %98, %154 ], [ %161, %179 ], [ %161, %166 ]
  %202 = phi ptr [ %150, %144 ], [ %99, %154 ], [ %190, %179 ], [ %99, %166 ]
  %203 = add nsw i32 %200, 1
  %204 = getelementptr inbounds %struct.choice_entry, ptr %202, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !90
  br label %94

206:                                              ; preds = %135, %107, %164
  %207 = phi ptr [ %165, %164 ], [ %108, %107 ], [ %108, %135 ]
  %208 = phi i32 [ %96, %164 ], [ %136, %135 ], [ %96, %107 ]
  %209 = getelementptr inbounds %struct.choice_entry, ptr %207, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !87
  %211 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %210, i64 %211, i1 false)
  ret i32 %208
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare i32 @state_dead_lock_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @insn_finishes_cycle_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 268435456
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.haifa_sched_info, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i8 %8(ptr noundef nonnull %0) #26
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %5
  br label %14

14:                                               ; preds = %10, %1, %13
  %15 = phi i8 [ 0, %13 ], [ 1, %1 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @schedule_block(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  %4 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.haifa_sched_info, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.haifa_sched_info, ptr %4, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, ptr %10, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2780, ptr noundef nonnull @.str.3) #26
  br label %20

20:                                               ; preds = %14, %1, %19
  store i1 false, ptr @haifa_recovery_bb_recently_added_p, align 1
  %21 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !12
  tail call fastcc void @dump_new_block_header(i32 noundef 0, ptr noundef %24, ptr noundef %10, ptr noundef %12) #25
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @curr_state, align 8, !tbaa !12
  tail call void @state_reset(ptr noundef %26) #26
  %27 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  %29 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  %30 = alloca i8, i64 %29, align 16
  %31 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 4), align 8, !tbaa !99
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %35 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  tail call void %31(ptr noundef %34, i32 noundef %35, i32 noundef %27) #26
  br label %36

36:                                               ; preds = %33, %25
  store ptr %6, ptr @last_scheduled_insn, align 8, !tbaa !12
  %37 = load i32, ptr %6, align 8
  %38 = trunc i32 %37 to i16
  switch i16 %38, label %47 [
    i16 13, label %42
    i16 7, label %39
  ]

39:                                               ; preds = %36
  %40 = and i32 %37, 67108864
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %39
  %43 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = load ptr, ptr %0, align 8, !tbaa !12
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %36, %42, %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2806, ptr noundef nonnull @.str.3) #26
  br label %48

48:                                               ; preds = %42, %47
  store i32 0, ptr @q_ptr, align 4, !tbaa !5
  store i32 0, ptr @q_size, align 4, !tbaa !5
  %49 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %50 = add i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 3
  %53 = alloca i8, i64 %52, align 16
  store ptr %53, ptr @insn_queue, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %53, i8 0, i64 %52, i1 false)
  store i32 -1, ptr @clock_var, align 4, !tbaa !5
  %54 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %55 = load ptr, ptr %54, align 8, !tbaa !100
  call void %55() #26
  %56 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %48
  %59 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %60 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  %61 = sub nsw i32 %59, %60
  %62 = load ptr, ptr @compiler_params, align 8, !tbaa !12
  %63 = getelementptr inbounds %struct.param_info, ptr %62, i64 96, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !101
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %58
  call void @ready_sort(ptr noundef nonnull @ready) #25
  %67 = load ptr, ptr @compiler_params, align 8, !tbaa !12
  %68 = getelementptr inbounds %struct.param_info, ptr %67, i64 96, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !101
  %70 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  %71 = add nsw i32 %70, %69
  %72 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66, %80
  %75 = phi i32 [ %81, %80 ], [ %71, %66 ]
  %76 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %75) #25
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 268435456
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = add nsw i32 %75, 1
  %82 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %74, label %84, !llvm.loop !103

84:                                               ; preds = %80, %74, %66
  %85 = phi i32 [ %71, %66 ], [ %75, %74 ], [ %81, %80 ]
  %86 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %90 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.4, i32 noundef %90) #25
  %92 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.5, i32 noundef %85) #25
  br label %94

94:                                               ; preds = %88, %84
  %95 = call zeroext i8 @dbg_cnt(i32 noundef 29) #26
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %99 = call ptr @next_nonnote_insn(ptr noundef %98) #26
  br label %100

100:                                              ; preds = %94, %97
  %101 = phi ptr [ %99, %97 ], [ null, %94 ]
  %102 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %103 = icmp slt i32 %85, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100, %108
  %105 = call fastcc ptr @ready_remove(i32 noundef %85) #25
  %106 = icmp eq ptr %105, %101
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call fastcc void @queue_insn(ptr noundef %105, i32 noundef 1) #25
  br label %108

108:                                              ; preds = %107, %104
  %109 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %110 = icmp slt i32 %85, %109
  br i1 %110, label %104, label %111, !llvm.loop !104

111:                                              ; preds = %108, %100, %58, %48
  %112 = load ptr, ptr %0, align 8, !tbaa !12
  call fastcc void @restore_bb_notes(ptr noundef %112) #25
  store i32 -1, ptr @last_clock_var, align 4, !tbaa !5
  store i32 1, ptr %2, align 4, !tbaa !5
  %113 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %114 = getelementptr inbounds %struct.haifa_sched_info, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !105
  %116 = call i32 %115() #26
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %592, label %118

118:                                              ; preds = %111, %222
  %119 = phi i32 [ %223, %222 ], [ 0, %111 ]
  %120 = load i32, ptr @clock_var, align 4, !tbaa !5
  br label %121

121:                                              ; preds = %118, %134
  %122 = phi i32 [ %135, %134 ], [ %120, %118 ]
  %123 = phi i32 [ %137, %134 ], [ %119, %118 ]
  %124 = add nsw i32 %122, 1
  store i32 %124, ptr @clock_var, align 4, !tbaa !5
  call fastcc void @advance_one_cycle() #25
  call fastcc void @queue_to_ready() #25
  %125 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2893, ptr noundef nonnull @.str.3) #26
  br label %128

128:                                              ; preds = %121, %127
  %129 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %133 = call i64 @fwrite(ptr nonnull @.str.6, i64 38, i64 1, ptr %132)
  call fastcc void @debug_ready_list() #25
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, ptr @clock_var, align 4, !tbaa !5
  %136 = sub i32 %122, %135
  %137 = add i32 %136, %123
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %121, label %139, !llvm.loop !106

139:                                              ; preds = %134
  %140 = load i32, ptr %2, align 4, !tbaa !5
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  call void @ready_sort(ptr noundef nonnull @ready) #25
  %143 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %147 = call i64 @fwrite(ptr nonnull @.str.7, i64 34, i64 1, ptr %146)
  call fastcc void @debug_ready_list() #25
  br label %148

148:                                              ; preds = %142, %145, %139
  %149 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %229, label %151

151:                                              ; preds = %148
  %152 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 7
  br i1 %155, label %156, label %229

156:                                              ; preds = %151
  %157 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %158 = call zeroext i8 @control_flow_insn_p(ptr noundef %157) #26
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %179, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %162 = getelementptr inbounds %struct.haifa_sched_info, ptr %161, i64 0, i32 16
  %163 = load ptr, ptr %162, align 8, !tbaa !107
  %164 = load ptr, ptr %0, align 8, !tbaa !12
  %165 = call ptr %163(ptr noundef %164, ptr noundef null) #26
  store ptr %165, ptr %0, align 8, !tbaa !12
  %166 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %160
  %169 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %170 = call ptr @next_real_insn(ptr noundef %169) #26
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2930, ptr noundef nonnull @.str.3) #26
  br label %173

173:                                              ; preds = %168, %172
  %174 = load ptr, ptr %0, align 8, !tbaa !12
  call fastcc void @dump_new_block_header(i32 noundef 1, ptr noundef %174, ptr noundef %170, ptr noundef %12) #25
  %175 = load ptr, ptr %0, align 8, !tbaa !12
  br label %176

176:                                              ; preds = %173, %160
  %177 = phi ptr [ %175, %173 ], [ %165, %160 ]
  %178 = call ptr @bb_note(ptr noundef %177) #25
  store ptr %178, ptr @last_scheduled_insn, align 8, !tbaa !12
  br label %179

179:                                              ; preds = %176, %156
  %180 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %222, label %182

182:                                              ; preds = %179
  %183 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 7
  br i1 %186, label %192, label %218

187:                                              ; preds = %215
  %188 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 7
  br i1 %191, label %192, label %218, !llvm.loop !108

192:                                              ; preds = %182, %187
  %193 = call fastcc ptr @ready_remove_first() #25
  %194 = load i32, ptr %193, align 8
  %195 = and i32 %194, 65535
  %196 = icmp eq i32 %195, 7
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2940, ptr noundef nonnull @.str.3) #26
  br label %198

198:                                              ; preds = %192, %197
  %199 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %200 = getelementptr inbounds %struct.haifa_sched_info, ptr %199, i64 0, i32 15
  %201 = load ptr, ptr %200, align 8, !tbaa !109
  %202 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  call void %201(ptr noundef nonnull %193, ptr noundef %202) #26
  %203 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %204 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %205 = getelementptr inbounds %struct.haifa_sched_info, ptr %204, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !96
  call fastcc void @move_insn(ptr noundef nonnull %193, ptr noundef %203, ptr noundef %206) #25
  store ptr %193, ptr @last_scheduled_insn, align 8, !tbaa !12
  %207 = call fastcc i32 @schedule_insn(ptr noundef nonnull %193) #25, !range !110
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2947, ptr noundef nonnull @.str.3) #26
  br label %210

210:                                              ; preds = %198, %209
  %211 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  call void @ready_sort(ptr noundef nonnull @ready) #25
  %214 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %215

215:                                              ; preds = %213, %210
  %216 = phi i32 [ %214, %213 ], [ %211, %210 ]
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %222, label %187, !llvm.loop !108

218:                                              ; preds = %187, %182
  %219 = phi i32 [ %137, %182 ], [ %207, %187 ]
  %220 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %215, %179, %586, %218
  %223 = phi i32 [ %219, %218 ], [ %587, %586 ], [ %137, %179 ], [ %207, %215 ]
  %224 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %225 = getelementptr inbounds %struct.haifa_sched_info, ptr %224, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !105
  %227 = call i32 %226() #26
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %592, label %118, !llvm.loop !111

229:                                              ; preds = %218, %151, %148
  %230 = phi i32 [ %219, %218 ], [ %137, %151 ], [ %137, %148 ]
  %231 = load i32, ptr %2, align 4, !tbaa !5
  %232 = icmp ne i32 %231, 0
  %233 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8
  %234 = icmp ne ptr %233, null
  %235 = select i1 %232, i1 %234, i1 false
  br i1 %235, label %236, label %253

236:                                              ; preds = %229
  %237 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %236
  %240 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %241 = load i32, ptr %240, align 8
  %242 = and i32 %241, 268435456
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %239
  %245 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 8), align 8, !tbaa !112
  br label %246

246:                                              ; preds = %244, %236
  %247 = phi ptr [ %245, %244 ], [ %233, %236 ]
  %248 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %249 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %250 = call ptr @ready_lastpos(ptr noundef nonnull @ready) #25
  %251 = load i32, ptr @clock_var, align 4, !tbaa !5
  %252 = call i32 %247(ptr noundef %248, i32 noundef %249, ptr noundef nonnull %250, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %251) #26
  br label %255

253:                                              ; preds = %239, %229
  %254 = load i32, ptr @issue_rate, align 4, !tbaa !5
  br label %255

255:                                              ; preds = %253, %246
  %256 = phi i32 [ %252, %246 ], [ %254, %253 ]
  store i32 0, ptr @cycle_issued_insns, align 4, !tbaa !5
  br label %257

257:                                              ; preds = %588, %255
  %258 = phi i32 [ %230, %255 ], [ %589, %588 ]
  %259 = phi i32 [ %256, %255 ], [ %590, %588 ]
  %260 = phi i32 [ 1, %255 ], [ %591, %588 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %261 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %262 = icmp sgt i32 %261, 1
  br i1 %262, label %263, label %270

263:                                              ; preds = %257
  %264 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %265 = load i32, ptr @clock_var, align 4, !tbaa !5
  %266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %264, ptr noundef nonnull @.str.8, i32 noundef %265) #25
  call fastcc void @debug_ready_list() #25
  %267 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %263
  call fastcc void @print_curr_reg_pressure() #25
  br label %270

270:                                              ; preds = %263, %269, %257
  %271 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %272 = icmp eq i32 %271, 0
  %273 = icmp ne i32 %259, 0
  %274 = select i1 %272, i1 %273, i1 false
  %275 = load i32, ptr @reload_completed, align 4
  %276 = icmp ne i32 %275, 0
  %277 = select i1 %274, i1 %276, i1 false
  br i1 %277, label %278, label %290

278:                                              ; preds = %270
  %279 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %280 = icmp sgt i32 %279, 5
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %283 = call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = load ptr, ptr @curr_state, align 8, !tbaa !12
  %286 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %30, ptr align 1 %285, i64 %286, i1 false)
  %287 = call fastcc i32 @early_queue_to_ready(ptr noundef nonnull %30) #25
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %284
  call void @ready_sort(ptr noundef nonnull @ready) #25
  br label %290

290:                                              ; preds = %284, %289, %270
  %291 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %292 = icmp ne i32 %291, 0
  %293 = select i1 %292, i1 %273, i1 false
  br i1 %293, label %294, label %586

294:                                              ; preds = %290
  %295 = load ptr, ptr @curr_state, align 8, !tbaa !12
  %296 = call i32 @state_dead_lock_p(ptr noundef %295) #26
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %586

298:                                              ; preds = %294
  %299 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %300 = getelementptr inbounds %struct.haifa_sched_info, ptr %299, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !105
  %302 = call i32 %301() #26
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %586, label %304

304:                                              ; preds = %298
  %305 = load i32, ptr %2, align 4, !tbaa !5
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %316, label %307

307:                                              ; preds = %304
  store ptr null, ptr %3, align 8, !tbaa !12
  %308 = call fastcc i32 @choose_ready(ptr noundef nonnull %3) #25
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %586, label %310

310:                                              ; preds = %307
  %311 = icmp eq i32 %308, 0
  br i1 %311, label %312, label %588

312:                                              ; preds = %310
  %313 = load ptr, ptr %3, align 8, !tbaa !12
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3020, ptr noundef nonnull @.str.3) #26
  br label %318

316:                                              ; preds = %304
  %317 = call fastcc ptr @ready_remove_first() #25
  store ptr %317, ptr %3, align 8, !tbaa !12
  br label %318

318:                                              ; preds = %315, %312, %316
  %319 = phi ptr [ null, %315 ], [ %313, %312 ], [ %317, %316 ]
  %320 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %332, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr @h_i_d, align 8
  %324 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %325 = load i32, ptr %324, align 8, !tbaa !9
  %326 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %323, i32 noundef %325) #25
  %327 = getelementptr inbounds %struct._haifa_insn_data, ptr %326, i64 0, i32 2
  %328 = load i32, ptr %327, align 8, !tbaa !58
  %329 = load i32, ptr @clock_var, align 4, !tbaa !5
  %330 = icmp sgt i32 %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %322
  call fastcc void @ready_add(ptr noundef nonnull %319, i8 noundef zeroext 1) #25
  br label %586

332:                                              ; preds = %322, %318
  %333 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 19), align 8, !tbaa !113
  %334 = icmp eq ptr %333, null
  br i1 %334, label %343, label %335

335:                                              ; preds = %332
  %336 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %337 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %338 = load i32, ptr @last_clock_var, align 4, !tbaa !5
  %339 = load i32, ptr @clock_var, align 4, !tbaa !5
  %340 = call i32 %333(ptr noundef %336, i32 noundef %337, ptr noundef %319, i32 noundef %338, i32 noundef %339, ptr noundef nonnull %2) #26
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %335
  call fastcc void @ready_add(ptr noundef %319, i8 noundef zeroext 1) #25
  br label %586

343:                                              ; preds = %335, %332
  store i32 1, ptr %2, align 4, !tbaa !5
  %344 = load ptr, ptr @curr_state, align 8, !tbaa !12
  %345 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %30, ptr align 1 %344, i64 %345, i1 false)
  %346 = call fastcc i32 @recog_memoized(ptr noundef %319) #25
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !9
  %351 = load i32, ptr %350, align 8
  %352 = and i32 %351, 65535
  %353 = icmp eq i32 %352, 16
  br i1 %353, label %357, label %354

354:                                              ; preds = %348
  %355 = call i32 @asm_noperands(ptr noundef nonnull %350) #26
  %356 = icmp sgt i32 %355, -1
  br label %357

357:                                              ; preds = %354, %348
  %358 = phi i1 [ true, %348 ], [ %356, %354 ]
  %359 = icmp eq i32 %260, 0
  %360 = select i1 %359, i1 %358, i1 false
  br i1 %360, label %369, label %374

361:                                              ; preds = %343
  %362 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %361
  %365 = call i32 @state_transition(ptr noundef nonnull %30, ptr noundef %319) #26
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %374, label %367

367:                                              ; preds = %364
  %368 = call i32 @llvm.umax.i32(i32 %365, i32 1)
  br label %369

369:                                              ; preds = %357, %367
  %370 = phi i32 [ %368, %367 ], [ 1, %357 ]
  call fastcc void @queue_insn(ptr noundef %319, i32 noundef %370) #25
  %371 = load i32, ptr %319, align 8
  %372 = and i32 %371, 268435456
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %588, label %586

374:                                              ; preds = %357, %361, %364
  %375 = phi i1 [ false, %364 ], [ false, %361 ], [ %358, %357 ]
  %376 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %377 = getelementptr inbounds %struct.haifa_sched_info, ptr %376, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !114
  %379 = icmp eq ptr %378, null
  br i1 %379, label %392, label %380

380:                                              ; preds = %374
  %381 = call i32 %378(ptr noundef %319) #26
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %392

383:                                              ; preds = %380
  %384 = load ptr, ptr @h_i_d, align 8
  %385 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %386 = load i32, ptr %385, align 8, !tbaa !9
  %387 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %384, i32 noundef %386) #25
  %388 = getelementptr inbounds %struct._haifa_insn_data, ptr %387, i64 0, i32 8
  %389 = load i32, ptr %388, align 8, !tbaa !59
  %390 = and i32 %389, -150994944
  %391 = or disjoint i32 %390, 134217728
  store i32 %391, ptr %388, align 8, !tbaa !59
  br label %588

392:                                              ; preds = %380, %374
  %393 = load ptr, ptr @h_i_d, align 8
  %394 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %395 = load i32, ptr %394, align 8, !tbaa !9
  %396 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %393, i32 noundef %395) #25
  %397 = getelementptr inbounds %struct._haifa_insn_data, ptr %396, i64 0, i32 8
  %398 = load i32, ptr %397, align 8, !tbaa !59
  %399 = and i32 %398, 16777215
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %402, label %401

401:                                              ; preds = %392
  call fastcc void @generate_recovery_code(ptr noundef nonnull %319) #25
  br label %402

402:                                              ; preds = %401, %392
  %403 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %404 = call zeroext i8 @control_flow_insn_p(ptr noundef %403) #26
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %415

406:                                              ; preds = %402
  %407 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %408 = getelementptr inbounds %struct.haifa_sched_info, ptr %407, i64 0, i32 16
  %409 = load ptr, ptr %408, align 8, !tbaa !107
  %410 = load ptr, ptr %0, align 8, !tbaa !12
  %411 = call ptr %409(ptr noundef %410, ptr noundef nonnull %319) #26
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %415

413:                                              ; preds = %406
  %414 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  br label %434

415:                                              ; preds = %406, %402
  %416 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %417 = getelementptr inbounds %struct.haifa_sched_info, ptr %416, i64 0, i32 16
  %418 = load ptr, ptr %417, align 8, !tbaa !107
  %419 = load ptr, ptr %0, align 8, !tbaa !12
  %420 = call ptr %418(ptr noundef %419, ptr noundef null) #26
  store ptr %420, ptr %0, align 8, !tbaa !12
  %421 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %431, label %423

423:                                              ; preds = %415
  %424 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %425 = call ptr @next_real_insn(ptr noundef %424) #26
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %428

427:                                              ; preds = %423
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3122, ptr noundef nonnull @.str.3) #26
  br label %428

428:                                              ; preds = %423, %427
  %429 = load ptr, ptr %0, align 8, !tbaa !12
  call fastcc void @dump_new_block_header(i32 noundef 1, ptr noundef %429, ptr noundef %425, ptr noundef %12) #25
  %430 = load ptr, ptr %0, align 8, !tbaa !12
  br label %431

431:                                              ; preds = %428, %415
  %432 = phi ptr [ %430, %428 ], [ %420, %415 ]
  %433 = call ptr @bb_note(ptr noundef %432) #25
  store ptr %433, ptr @last_scheduled_insn, align 8, !tbaa !12
  br label %434

434:                                              ; preds = %413, %431
  %435 = phi ptr [ %414, %413 ], [ %433, %431 ]
  %436 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %437 = getelementptr inbounds %struct.haifa_sched_info, ptr %436, i64 0, i32 15
  %438 = load ptr, ptr %437, align 8, !tbaa !109
  call void %438(ptr noundef nonnull %319, ptr noundef %435) #26
  %439 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %440 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %441 = getelementptr inbounds %struct.haifa_sched_info, ptr %440, i64 0, i32 9
  %442 = load ptr, ptr %441, align 8, !tbaa !96
  call fastcc void @move_insn(ptr noundef nonnull %319, ptr noundef %439, ptr noundef %442) #25
  call void @reemit_notes(ptr noundef nonnull %319) #25
  store ptr %319, ptr @last_scheduled_insn, align 8, !tbaa !12
  %443 = load ptr, ptr @curr_state, align 8, !tbaa !12
  %444 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  %445 = call i32 @bcmp(ptr %443, ptr nonnull %30, i64 %444)
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %450, label %447

447:                                              ; preds = %434
  %448 = load i32, ptr @cycle_issued_insns, align 4, !tbaa !5
  %449 = add nsw i32 %448, 1
  store i32 %449, ptr @cycle_issued_insns, align 4, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %443, ptr nonnull align 16 %30, i64 %444, i1 false)
  br label %450

450:                                              ; preds = %447, %434
  %451 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !115
  %452 = icmp eq ptr %451, null
  br i1 %452, label %457, label %453

453:                                              ; preds = %450
  %454 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %455 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %456 = call i32 %451(ptr noundef %454, i32 noundef %455, ptr noundef nonnull %319, i32 noundef %259) #26
  br label %465

457:                                              ; preds = %450
  %458 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 1
  %459 = load ptr, ptr %458, align 8, !tbaa !9
  %460 = load i32, ptr %459, align 8
  %461 = and i32 %460, 65534
  %462 = icmp ne i32 %461, 24
  %463 = sext i1 %462 to i32
  %464 = add nsw i32 %259, %463
  br label %465

465:                                              ; preds = %457, %453
  %466 = phi i32 [ %456, %453 ], [ %464, %457 ]
  %467 = call fastcc i32 @schedule_insn(ptr noundef nonnull %319) #25, !range !110
  %468 = icmp eq i32 %467, 0
  %469 = select i1 %468, i1 %375, i1 false
  %470 = select i1 %469, i32 1, i32 %467
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %586

472:                                              ; preds = %465
  %473 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %477

475:                                              ; preds = %472
  call void @ready_sort(ptr noundef nonnull @ready) #25
  %476 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %477

477:                                              ; preds = %475, %472
  %478 = phi i32 [ %476, %475 ], [ %473, %472 ]
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %556, label %480

480:                                              ; preds = %477
  %481 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %482 = load i32, ptr %481, align 8
  %483 = and i32 %482, 65535
  %484 = icmp eq i32 %483, 7
  br i1 %484, label %485, label %556

485:                                              ; preds = %480
  %486 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %487 = getelementptr inbounds %struct.haifa_sched_info, ptr %486, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !105
  %489 = call i32 %488() #26
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %556, label %491

491:                                              ; preds = %485
  %492 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %493 = call zeroext i8 @control_flow_insn_p(ptr noundef %492) #26
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %514, label %495

495:                                              ; preds = %491
  %496 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %497 = getelementptr inbounds %struct.haifa_sched_info, ptr %496, i64 0, i32 16
  %498 = load ptr, ptr %497, align 8, !tbaa !107
  %499 = load ptr, ptr %0, align 8, !tbaa !12
  %500 = call ptr %498(ptr noundef %499, ptr noundef null) #26
  store ptr %500, ptr %0, align 8, !tbaa !12
  %501 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %511, label %503

503:                                              ; preds = %495
  %504 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %505 = call ptr @next_real_insn(ptr noundef %504) #26
  %506 = icmp eq ptr %505, null
  br i1 %506, label %507, label %508

507:                                              ; preds = %503
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3183, ptr noundef nonnull @.str.3) #26
  br label %508

508:                                              ; preds = %503, %507
  %509 = load ptr, ptr %0, align 8, !tbaa !12
  call fastcc void @dump_new_block_header(i32 noundef 1, ptr noundef %509, ptr noundef %505, ptr noundef %12) #25
  %510 = load ptr, ptr %0, align 8, !tbaa !12
  br label %511

511:                                              ; preds = %508, %495
  %512 = phi ptr [ %510, %508 ], [ %500, %495 ]
  %513 = call ptr @bb_note(ptr noundef %512) #25
  store ptr %513, ptr @last_scheduled_insn, align 8, !tbaa !12
  br label %514

514:                                              ; preds = %511, %491
  %515 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %553, label %517

517:                                              ; preds = %514
  %518 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %519 = load i32, ptr %518, align 8
  %520 = and i32 %519, 65535
  %521 = icmp eq i32 %520, 7
  br i1 %521, label %527, label %553

522:                                              ; preds = %550
  %523 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %524 = load i32, ptr %523, align 8
  %525 = and i32 %524, 65535
  %526 = icmp eq i32 %525, 7
  br i1 %526, label %527, label %553, !llvm.loop !116

527:                                              ; preds = %517, %522
  %528 = call fastcc ptr @ready_remove_first() #25
  %529 = load i32, ptr %528, align 8
  %530 = and i32 %529, 65535
  %531 = icmp eq i32 %530, 7
  br i1 %531, label %533, label %532

532:                                              ; preds = %527
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3193, ptr noundef nonnull @.str.3) #26
  br label %533

533:                                              ; preds = %527, %532
  %534 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %535 = getelementptr inbounds %struct.haifa_sched_info, ptr %534, i64 0, i32 15
  %536 = load ptr, ptr %535, align 8, !tbaa !109
  %537 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  call void %536(ptr noundef nonnull %528, ptr noundef %537) #26
  %538 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %539 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %540 = getelementptr inbounds %struct.haifa_sched_info, ptr %539, i64 0, i32 9
  %541 = load ptr, ptr %540, align 8, !tbaa !96
  call fastcc void @move_insn(ptr noundef nonnull %528, ptr noundef %538, ptr noundef %541) #25
  %542 = call fastcc i32 @schedule_insn(ptr noundef nonnull %528) #25, !range !110
  store ptr %528, ptr @last_scheduled_insn, align 8, !tbaa !12
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %545, label %544

544:                                              ; preds = %533
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3200, ptr noundef nonnull @.str.3) #26
  br label %545

545:                                              ; preds = %533, %544
  %546 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %547 = icmp sgt i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %545
  call void @ready_sort(ptr noundef nonnull @ready) #25
  %549 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %550

550:                                              ; preds = %548, %545
  %551 = phi i32 [ %549, %548 ], [ %546, %545 ]
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %522, !llvm.loop !116

553:                                              ; preds = %550, %522, %517, %514
  %554 = phi ptr [ %319, %514 ], [ %319, %517 ], [ %528, %522 ], [ %528, %550 ]
  %555 = phi i32 [ 0, %514 ], [ 0, %517 ], [ %542, %522 ], [ %542, %550 ]
  store ptr %554, ptr %3, align 8, !tbaa !12
  br label %556

556:                                              ; preds = %553, %485, %480, %477
  %557 = phi i32 [ 0, %485 ], [ 0, %480 ], [ 0, %477 ], [ %555, %553 ]
  %558 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !117
  %559 = icmp eq ptr %558, null
  br i1 %559, label %588, label %560

560:                                              ; preds = %556
  %561 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %560
  %564 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %565 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  br label %579

566:                                              ; preds = %560
  %567 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %568 = load i32, ptr %567, align 8
  %569 = and i32 %568, 268435456
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %588

571:                                              ; preds = %566
  %572 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %573 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 9), align 8, !tbaa !117
  %574 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %575 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %576 = icmp eq i32 %572, 0
  br i1 %576, label %579, label %577

577:                                              ; preds = %571
  %578 = call ptr @ready_lastpos(ptr noundef nonnull @ready) #25
  br label %579

579:                                              ; preds = %563, %571, %577
  %580 = phi i32 [ %575, %577 ], [ %575, %571 ], [ %565, %563 ]
  %581 = phi ptr [ %574, %577 ], [ %574, %571 ], [ %564, %563 ]
  %582 = phi ptr [ %573, %577 ], [ %573, %571 ], [ %558, %563 ]
  %583 = phi ptr [ %578, %577 ], [ null, %571 ], [ null, %563 ]
  %584 = load i32, ptr @clock_var, align 4, !tbaa !5
  %585 = call i32 %582(ptr noundef %581, i32 noundef %580, ptr noundef %583, ptr noundef nonnull getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), i32 noundef %584) #26
  br label %588

586:                                              ; preds = %298, %294, %290, %369, %465, %307, %331, %342
  %587 = phi i32 [ %258, %342 ], [ 1, %331 ], [ %258, %298 ], [ %258, %294 ], [ %258, %290 ], [ %370, %369 ], [ %470, %465 ], [ %258, %307 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %222

588:                                              ; preds = %369, %310, %556, %566, %579, %383
  %589 = phi i32 [ %258, %383 ], [ %557, %579 ], [ %557, %566 ], [ %557, %556 ], [ %258, %310 ], [ %258, %369 ]
  %590 = phi i32 [ %259, %383 ], [ %585, %579 ], [ %466, %566 ], [ %466, %556 ], [ %259, %310 ], [ %259, %369 ]
  %591 = phi i32 [ %260, %383 ], [ 0, %579 ], [ 0, %566 ], [ 0, %556 ], [ %260, %310 ], [ %260, %369 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %257

592:                                              ; preds = %222, %111
  %593 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %598, label %595

595:                                              ; preds = %592
  %596 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %597 = call i64 @fwrite(ptr nonnull @.str.10, i64 24, i64 1, ptr %596)
  call fastcc void @debug_ready_list() #25
  br label %598

598:                                              ; preds = %595, %592
  %599 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %600 = getelementptr inbounds %struct.haifa_sched_info, ptr %599, i64 0, i32 12
  %601 = load i8, ptr %600, align 8
  %602 = and i8 %601, 1
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %614, label %604

604:                                              ; preds = %598
  %605 = load i32, ptr @q_size, align 4, !tbaa !5
  %606 = icmp ne i32 %605, 0
  %607 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8
  %608 = icmp ne i32 %607, 0
  %609 = select i1 %606, i1 true, i1 %608
  %610 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4
  %611 = icmp ne i32 %610, 0
  %612 = select i1 %609, i1 true, i1 %611
  br i1 %612, label %613, label %668

613:                                              ; preds = %604
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3229, ptr noundef nonnull @.str.3) #26
  br label %668

614:                                              ; preds = %598
  %615 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %616 = icmp sgt i32 %615, 0
  br i1 %616, label %617, label %633

617:                                              ; preds = %614, %617
  %618 = phi i32 [ %619, %617 ], [ %615, %614 ]
  %619 = add nsw i32 %618, -1
  %620 = call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %619) #25
  %621 = load ptr, ptr @h_i_d, align 8
  %622 = getelementptr inbounds %struct.rtx_def, ptr %620, i64 0, i32 1
  %623 = load i32, ptr %622, align 8, !tbaa !9
  %624 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %621, i32 noundef %623) #25
  %625 = getelementptr inbounds %struct._haifa_insn_data, ptr %624, i64 0, i32 4
  store i32 -2, ptr %625, align 8, !tbaa !118
  %626 = load i32, ptr %622, align 8, !tbaa !9
  %627 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %621, i32 noundef %626) #25
  %628 = getelementptr inbounds %struct._haifa_insn_data, ptr %627, i64 0, i32 8
  %629 = load i32, ptr %628, align 8, !tbaa !59
  %630 = and i32 %629, -150994944
  %631 = or disjoint i32 %630, 134217728
  store i32 %631, ptr %628, align 8, !tbaa !59
  %632 = icmp ugt i32 %618, 1
  br i1 %632, label %617, label %633, !llvm.loop !119

633:                                              ; preds = %617, %614
  %634 = load i32, ptr @q_size, align 4, !tbaa !5
  %635 = icmp eq i32 %634, 0
  %636 = icmp slt i32 %49, 0
  %637 = select i1 %635, i1 true, i1 %636
  br i1 %637, label %668, label %638

638:                                              ; preds = %633
  %639 = zext i32 %50 to i64
  br label %640

640:                                              ; preds = %638, %665
  %641 = phi i64 [ 0, %638 ], [ %666, %665 ]
  %642 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %643 = getelementptr inbounds ptr, ptr %642, i64 %641
  %644 = load ptr, ptr %643, align 8, !tbaa !9
  %645 = icmp eq ptr %644, null
  br i1 %645, label %665, label %646

646:                                              ; preds = %640
  %647 = load ptr, ptr @h_i_d, align 8
  br label %648

648:                                              ; preds = %646, %648
  %649 = phi ptr [ %644, %646 ], [ %663, %648 ]
  %650 = getelementptr inbounds %struct.rtx_def, ptr %649, i64 0, i32 1
  %651 = load ptr, ptr %650, align 8, !tbaa !9
  %652 = getelementptr inbounds %struct.rtx_def, ptr %651, i64 0, i32 1
  %653 = load i32, ptr %652, align 8, !tbaa !9
  %654 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %647, i32 noundef %653) #25
  %655 = getelementptr inbounds %struct._haifa_insn_data, ptr %654, i64 0, i32 4
  store i32 -2, ptr %655, align 8, !tbaa !118
  %656 = load i32, ptr %652, align 8, !tbaa !9
  %657 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %647, i32 noundef %656) #25
  %658 = getelementptr inbounds %struct._haifa_insn_data, ptr %657, i64 0, i32 8
  %659 = load i32, ptr %658, align 8, !tbaa !59
  %660 = and i32 %659, -150994944
  %661 = or disjoint i32 %660, 134217728
  store i32 %661, ptr %658, align 8, !tbaa !59
  %662 = getelementptr inbounds %struct.rtx_def, ptr %649, i64 0, i32 1, i32 0, i32 0, i64 1
  %663 = load ptr, ptr %662, align 8, !tbaa !9
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %648, !llvm.loop !120

665:                                              ; preds = %648, %640
  call void @free_INSN_LIST_list(ptr noundef nonnull %643) #26
  %666 = add nuw nsw i64 %641, 1
  %667 = icmp eq i64 %666, %639
  br i1 %667, label %668, label %640, !llvm.loop !121

668:                                              ; preds = %665, %613, %604, %633
  %669 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %675, label %671

671:                                              ; preds = %668
  %672 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %673 = load i32, ptr @clock_var, align 4, !tbaa !5
  %674 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %672, ptr noundef nonnull @.str.11, i32 noundef %673) #25
  br label %675

675:                                              ; preds = %671, %668
  %676 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %677 = getelementptr inbounds %struct.haifa_sched_info, ptr %676, i64 0, i32 12
  %678 = load i8, ptr %677, align 8
  %679 = and i8 %678, 1
  %680 = icmp eq i8 %679, 0
  %681 = load i1, ptr @haifa_recovery_bb_recently_added_p, align 1
  %682 = select i1 %680, i1 true, i1 %681
  br i1 %682, label %683, label %686

683:                                              ; preds = %675
  %684 = load ptr, ptr %9, align 8, !tbaa !9
  %685 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  call fastcc void @fix_inter_tick(ptr noundef %684, ptr noundef %685) #25
  br label %686

686:                                              ; preds = %675, %683
  %687 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 5), align 8, !tbaa !122
  %688 = icmp eq ptr %687, null
  %689 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  br i1 %688, label %693, label %690

690:                                              ; preds = %686
  %691 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  call void %687(ptr noundef %691, i32 noundef %689) #26
  call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #25
  %692 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  br label %693

693:                                              ; preds = %690, %686
  %694 = phi i32 [ %692, %690 ], [ %689, %686 ]
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %703, label %696

696:                                              ; preds = %693
  %697 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %698 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %699 = load i32, ptr %698, align 8, !tbaa !9
  %700 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %701 = load i32, ptr %700, align 8, !tbaa !9
  %702 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %697, ptr noundef nonnull @.str.12, i32 noundef %699, i32 noundef %701) #25
  br label %703

703:                                              ; preds = %696, %693
  %704 = load ptr, ptr %9, align 8, !tbaa !9
  %705 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %706 = call ptr @restore_other_notes(ptr noundef %704, ptr noundef null) #25
  %707 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %708 = getelementptr inbounds %struct.haifa_sched_info, ptr %707, i64 0, i32 10
  store ptr %706, ptr %708, align 8, !tbaa !123
  %709 = getelementptr inbounds %struct.haifa_sched_info, ptr %707, i64 0, i32 11
  store ptr %705, ptr %709, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_new_block_header(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #11 {
  %5 = icmp eq i32 %0, 0
  %6 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %7 = select i1 %5, ptr @.str.55, ptr @.str.56
  %8 = tail call i64 @fwrite(ptr nonnull %7, i64 60, i64 1, ptr %6)
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !125
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !9
  %16 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @.str.59, ptr @.str.58
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.57, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %18) #25
  %20 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %21 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 60, i64 1, ptr %20)
  %22 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %23 = tail call i32 @fputc(i32 10, ptr %22)
  ret void
}

; Function Attrs: optsize
declare void @state_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ready_remove(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @ready_remove_first() #25
  br label %48

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %7 = icmp ne i32 %6, 0
  %8 = icmp sgt i32 %6, %0
  %9 = and i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1473, ptr noundef nonnull @.str.3) #26
  %11 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi i32 [ %6, %5 ], [ %11, %10 ]
  %14 = load ptr, ptr @ready, align 8, !tbaa !45
  %15 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  %16 = sub nsw i32 %15, %0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = add i32 %13, -1
  store i32 %20, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 7
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  br label %27

27:                                               ; preds = %24, %12
  %28 = icmp sgt i32 %20, %0
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = sext i32 %0 to i64
  %31 = sext i32 %15 to i64
  %32 = sext i32 %20 to i64
  br label %33

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %30, %29 ], [ %40, %33 ]
  %35 = load ptr, ptr @ready, align 8, !tbaa !45
  %36 = sub nsw i64 %31, %34
  %37 = getelementptr ptr, ptr %35, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 -1
  %39 = load ptr, ptr %38, align 8, !tbaa !12
  store ptr %39, ptr %37, align 8, !tbaa !12
  %40 = add nsw i64 %34, 1
  %41 = icmp eq i64 %40, %32
  br i1 %41, label %42, label %33, !llvm.loop !127

42:                                               ; preds = %33, %27
  %43 = load ptr, ptr @h_i_d, align 8
  %44 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !9
  %46 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %43, i32 noundef %45) #25
  %47 = getelementptr inbounds %struct._haifa_insn_data, ptr %46, i64 0, i32 4
  store i32 -2, ptr %47, align 8, !tbaa !118
  br label %48

48:                                               ; preds = %42, %3
  %49 = phi ptr [ %4, %3 ], [ %19, %42 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @queue_insn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %4 = add nsw i32 %3, %1
  %5 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %6 = and i32 %4, %5
  %7 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = tail call ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %10) #26
  %12 = icmp slt i32 %5, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1346, ptr noundef nonnull @.str.3) #26
  br label %14

14:                                               ; preds = %2, %13
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1347, ptr noundef nonnull @.str.3) #26
  br label %19

19:                                               ; preds = %14, %18
  %20 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %21 = getelementptr inbounds ptr, ptr %20, i64 %8
  store ptr %11, ptr %21, align 8, !tbaa !12
  %22 = load i32, ptr @q_size, align 4, !tbaa !5
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @q_size, align 4, !tbaa !5
  %24 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %28 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.haifa_sched_info, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !128
  %31 = tail call ptr %30(ptr noundef nonnull %0, i32 noundef 0) #26
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.24, ptr noundef %31) #25
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.25, i32 noundef %1) #25
  br label %35

35:                                               ; preds = %26, %19
  %36 = load ptr, ptr @h_i_d, align 8
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !9
  %39 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %36, i32 noundef %38) #25
  %40 = getelementptr inbounds %struct._haifa_insn_data, ptr %39, i64 0, i32 4
  store i32 %6, ptr %40, align 8, !tbaa !118
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_bb_notes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @bb_header, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = load ptr, ptr @cfun, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %61, label %13

13:                                               ; preds = %4, %47
  %14 = phi ptr [ %49, %47 ], [ %2, %4 ]
  %15 = phi ptr [ %54, %47 ], [ %6, %4 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !125
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %14, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = load i32, ptr %20, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = load i32, ptr %32, align 8
  br label %34

34:                                               ; preds = %22, %30
  %35 = phi i32 [ %33, %30 ], [ %27, %22 ]
  %36 = phi ptr [ %32, %30 ], [ %20, %22 ]
  %37 = and i32 %35, 65535
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 1
  %41 = load i32, ptr %40, align 8, !tbaa !9
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %47, label %43

43:                                               ; preds = %39, %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4941, ptr noundef nonnull @.str.3) #26
  %44 = load ptr, ptr @bb_header, align 8, !tbaa !12
  %45 = load i32, ptr %16, align 8, !tbaa !125
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %39, %43
  %48 = phi i64 [ %18, %39 ], [ %46, %43 ]
  %49 = phi ptr [ %14, %39 ], [ %44, %43 ]
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  store ptr null, ptr %50, align 8, !tbaa !12
  store ptr %20, ptr %25, align 8, !tbaa !9
  %51 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %26, ptr %51, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %36, ptr %52, align 8, !tbaa !9
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !129
  %55 = load ptr, ptr @cfun, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !132
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %61, label %13, !llvm.loop !134

61:                                               ; preds = %13, %47, %4
  %62 = phi ptr [ %2, %4 ], [ %14, %13 ], [ %49, %47 ]
  tail call void @free(ptr noundef nonnull %62) #25
  store ptr null, ptr @bb_header, align 8, !tbaa !12
  br label %63

63:                                               ; preds = %1, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @advance_one_cycle() unnamed_addr #0 {
  %1 = load ptr, ptr @curr_state, align 8, !tbaa !12
  tail call void @advance_state(ptr noundef %1) #25
  %2 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %3 = icmp sgt i32 %2, 5
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %6 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 21, i64 1, ptr %5)
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @queue_to_ready() unnamed_addr #0 {
  %1 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %2 = add nsw i32 %1, 1
  %3 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %4 = and i32 %2, %3
  store i32 %4, ptr @q_ptr, align 4, !tbaa !5
  %5 = tail call zeroext i8 @dbg_cnt(i32 noundef 29) #26
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %9 = tail call ptr @next_nonnote_insn(ptr noundef %8) #26
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7, %16
  %12 = phi ptr [ %17, %16 ], [ %9, %7 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %12) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !135

19:                                               ; preds = %16, %11, %7, %0
  %20 = phi ptr [ null, %0 ], [ null, %7 ], [ null, %16 ], [ %12, %11 ]
  %21 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %22 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %80, label %27

27:                                               ; preds = %19, %72
  %28 = phi ptr [ %74, %72 ], [ %25, %19 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = load i32, ptr @q_size, align 4, !tbaa !5
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr @q_size, align 4, !tbaa !5
  %33 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %37 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.haifa_sched_info, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !128
  %40 = tail call ptr %39(ptr noundef %30, i32 noundef 0) #26
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.27, ptr noundef %40) #25
  br label %42

42:                                               ; preds = %35, %27
  %43 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %47 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  %48 = sub nsw i32 %46, %47
  %49 = load ptr, ptr @compiler_params, align 8, !tbaa !12
  %50 = getelementptr inbounds %struct.param_info, ptr %49, i64 96, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !101
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load i32, ptr %30, align 8
  %55 = and i32 %54, 268435456
  %56 = icmp ne i32 %55, 0
  %57 = icmp eq ptr %30, %20
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %64 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 28, i64 1, ptr %63)
  br label %65

65:                                               ; preds = %62, %59
  tail call fastcc void @queue_insn(ptr noundef nonnull %30, i32 noundef 1) #25
  br label %72

66:                                               ; preds = %53, %45, %42
  tail call fastcc void @ready_add(ptr noundef %30, i8 noundef zeroext 0) #25
  %67 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %71 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 31, i64 1, ptr %70)
  br label %72

72:                                               ; preds = %65, %69, %66
  %73 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %27, !llvm.loop !136

76:                                               ; preds = %72
  %77 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %78 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %79 = sext i32 %78 to i64
  br label %80

80:                                               ; preds = %76, %19
  %81 = phi i64 [ %79, %76 ], [ %23, %19 ]
  %82 = phi ptr [ %77, %76 ], [ %21, %19 ]
  %83 = getelementptr inbounds ptr, ptr %82, i64 %81
  tail call void @free_INSN_LIST_list(ptr noundef %83) #26
  %84 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %146

86:                                               ; preds = %80
  %87 = icmp slt i32 %3, 1
  br i1 %87, label %139, label %88

88:                                               ; preds = %86
  %89 = add nuw i32 %3, 1
  br label %90

90:                                               ; preds = %88, %136
  %91 = phi i32 [ %137, %136 ], [ 1, %88 ]
  %92 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %93 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %94 = add nsw i32 %93, %91
  %95 = and i32 %94, %3
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %92, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !12
  %99 = icmp eq ptr %98, null
  br i1 %99, label %136, label %100

100:                                              ; preds = %90
  %101 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  br label %102

102:                                              ; preds = %100, %124
  %103 = phi i32 [ %101, %100 ], [ %125, %124 ]
  %104 = phi ptr [ %98, %100 ], [ %127, %124 ]
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !9
  %107 = load i32, ptr @q_size, align 4, !tbaa !5
  %108 = add nsw i32 %107, -1
  store i32 %108, ptr @q_size, align 4, !tbaa !5
  %109 = icmp sgt i32 %103, 1
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %112 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %113 = getelementptr inbounds %struct.haifa_sched_info, ptr %112, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !128
  %115 = tail call ptr %114(ptr noundef %106, i32 noundef 0) #26
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.27, ptr noundef %115) #25
  br label %117

117:                                              ; preds = %110, %102
  tail call fastcc void @ready_add(ptr noundef %106, i8 noundef zeroext 0) #25
  %118 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.30, i32 noundef %91) #25
  %123 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  br label %124

124:                                              ; preds = %117, %120
  %125 = phi i32 [ %118, %117 ], [ %123, %120 ]
  %126 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !9
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %102, !llvm.loop !137

129:                                              ; preds = %124
  %130 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %131 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %132 = add nsw i32 %131, %91
  %133 = and i32 %132, %3
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %130, i64 %134
  tail call void @free_INSN_LIST_list(ptr noundef %135) #26
  tail call fastcc void @advance_one_cycle() #25
  br label %139

136:                                              ; preds = %90
  tail call fastcc void @advance_one_cycle() #25
  %137 = add nuw i32 %91, 1
  %138 = icmp eq i32 %91, %3
  br i1 %138, label %139, label %90, !llvm.loop !138

139:                                              ; preds = %136, %86, %129
  %140 = phi i32 [ %91, %129 ], [ 1, %86 ], [ %89, %136 ]
  %141 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %142 = add nsw i32 %141, %140
  %143 = and i32 %142, %3
  store i32 %143, ptr @q_ptr, align 4, !tbaa !5
  %144 = load i32, ptr @clock_var, align 4, !tbaa !5
  %145 = add nsw i32 %144, %140
  store i32 %145, ptr @clock_var, align 4, !tbaa !5
  br label %146

146:                                              ; preds = %139, %80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_ready_list() unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %59, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #25
  %5 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %3, %54
  %8 = phi i64 [ %55, %54 ], [ 0, %3 ]
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %10 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = getelementptr inbounds ptr, ptr %4, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = tail call ptr %12(ptr noundef %14, i32 noundef 0) #26
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = load ptr, ptr %13, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !9
  %20 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %19) #25
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.31, ptr noundef %15, i32 noundef %20) #25
  %22 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %7
  %25 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %26 = load ptr, ptr @h_i_d, align 8
  %27 = load ptr, ptr %13, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !9
  %30 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %26, i32 noundef %29) #25
  %31 = getelementptr inbounds %struct._haifa_insn_data, ptr %30, i64 0, i32 17
  %32 = load i32, ptr %31, align 8, !tbaa !56
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.32, i32 noundef %32) #25
  br label %34

34:                                               ; preds = %24, %7
  %35 = load ptr, ptr @h_i_d, align 8
  %36 = load ptr, ptr %13, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !9
  %39 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %35, i32 noundef %38) #25
  %40 = getelementptr inbounds %struct._haifa_insn_data, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = load i32, ptr @clock_var, align 4, !tbaa !5
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %46 = sub nsw i32 %41, %42
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.33, i32 noundef %46) #25
  br label %48

48:                                               ; preds = %44, %34
  %49 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %53 = tail call i32 @fputc(i32 41, ptr %52)
  br label %54

54:                                               ; preds = %48, %51
  %55 = add nuw nsw i64 %8, 1
  %56 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %7, label %59, !llvm.loop !139

59:                                               ; preds = %54, %3, %0
  %60 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %61 = tail call i32 @fputc(i32 10, ptr %60)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ready_remove_first() unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1430, ptr noundef nonnull @.str.3) #26
  %4 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %1, %0 ], [ %4, %3 ]
  %7 = load ptr, ptr @ready, align 8, !tbaa !45
  %8 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = add nsw i32 %6, -1
  store i32 %13, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %14 = load i32, ptr %12, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  br label %20

20:                                               ; preds = %17, %5
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  br label %25

25:                                               ; preds = %22, %20
  %26 = load ptr, ptr @h_i_d, align 8
  %27 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !9
  %29 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %26, i32 noundef %28) #25
  %30 = getelementptr inbounds %struct._haifa_insn_data, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !118
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1439, ptr noundef nonnull @.str.3) #26
  %34 = load ptr, ptr @h_i_d, align 8
  %35 = load i32, ptr %27, align 8, !tbaa !9
  %36 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %34, i32 noundef %35) #25
  br label %37

37:                                               ; preds = %25, %33
  %38 = phi ptr [ %29, %25 ], [ %36, %33 ]
  %39 = getelementptr inbounds %struct._haifa_insn_data, ptr %38, i64 0, i32 4
  store i32 -2, ptr %39, align 8, !tbaa !118
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_insn(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %131, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2298, ptr noundef nonnull @.str.3) #26
  %16 = load ptr, ptr %11, align 8, !tbaa !9
  br label %17

17:                                               ; preds = %8, %15
  %18 = phi ptr [ %12, %8 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %0) #26
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.common_sched_info_def, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !21
  switch i32 %28, label %43 [
    i32 1, label %29
    i32 2, label %44
  ]

29:                                               ; preds = %25
  %30 = load ptr, ptr @h_i_d, align 8
  %31 = load i32, ptr %4, align 8, !tbaa !9
  %32 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %30, i32 noundef %31) #25
  %33 = getelementptr inbounds %struct._haifa_insn_data, ptr %32, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !140
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @cfun, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !130
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = icmp eq ptr %34, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25, %29, %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2311, ptr noundef nonnull @.str.3) #26
  br label %44

44:                                               ; preds = %25, %22, %36, %43
  %45 = load ptr, ptr %5, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = icmp eq ptr %47, %10
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2313, ptr noundef nonnull @.str.3) #26
  %50 = load ptr, ptr %5, align 8, !tbaa !9
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %45, %44 ], [ %50, %49 ]
  %53 = load ptr, ptr %11, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !68
  %55 = load ptr, ptr %11, align 8, !tbaa !9
  %56 = getelementptr inbounds %struct.rtl_bb_info, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !68
  br label %58

58:                                               ; preds = %51, %17
  %59 = phi ptr [ %57, %51 ], [ %20, %17 ]
  %60 = phi i1 [ %24, %51 ], [ true, %17 ]
  %61 = icmp eq ptr %59, %1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2318, ptr noundef nonnull @.str.3) #26
  br label %63

63:                                               ; preds = %58, %62
  br i1 %60, label %100, label %64

64:                                               ; preds = %63
  %65 = icmp eq ptr %2, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2323, ptr noundef nonnull @.str.3) #26
  br label %67

67:                                               ; preds = %64, %66
  br label %68

68:                                               ; preds = %67, %75
  %69 = phi ptr [ %71, %75 ], [ %0, %67 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !9
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 1
  %77 = load i32, ptr %76, align 8, !tbaa !9
  %78 = icmp eq i32 %77, 10
  %79 = icmp eq ptr %71, %2
  %80 = or i1 %79, %78
  br i1 %80, label %90, label %68, !llvm.loop !141

81:                                               ; preds = %68
  %82 = icmp ne ptr %71, %2
  %83 = add nsw i32 %73, -11
  %84 = icmp ult i32 %83, 2
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  %88 = load ptr, ptr %87, align 8, !tbaa !9
  %89 = load i32, ptr %88, align 8
  br label %90

90:                                               ; preds = %75, %86, %81
  %91 = phi i32 [ %89, %86 ], [ %72, %81 ], [ %72, %75 ]
  %92 = phi ptr [ %88, %86 ], [ %71, %81 ], [ %71, %75 ]
  %93 = and i32 %91, 65535
  %94 = icmp eq i32 %93, 13
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 1
  %97 = load i32, ptr %96, align 8, !tbaa !9
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2334, ptr noundef nonnull @.str.3) #26
  br label %100

100:                                              ; preds = %63, %99, %95
  %101 = phi ptr [ %92, %95 ], [ %92, %99 ], [ %0, %63 ]
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  %104 = load ptr, ptr %5, align 8, !tbaa !9
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %103, ptr %105, align 8, !tbaa !9
  %106 = load ptr, ptr %5, align 8, !tbaa !9
  %107 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %106, ptr %107, align 8, !tbaa !9
  %108 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !9
  store ptr %109, ptr %102, align 8, !tbaa !9
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %101, ptr %110, align 8, !tbaa !9
  store ptr %0, ptr %108, align 8, !tbaa !9
  store ptr %1, ptr %5, align 8, !tbaa !9
  %111 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !9
  br i1 %60, label %124, label %113

113:                                              ; preds = %100
  tail call fastcc void @fix_jump_move(ptr noundef nonnull %0) #25
  %114 = load ptr, ptr %9, align 8, !tbaa !9
  %115 = icmp eq ptr %114, %112
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call fastcc void @move_block_after_check(ptr noundef nonnull %0) #25
  br label %117

117:                                              ; preds = %116, %113
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !9
  %120 = getelementptr inbounds %struct.rtl_bb_info, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !68
  %122 = icmp eq ptr %121, %1
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2357, ptr noundef nonnull @.str.3) #26
  br label %124

124:                                              ; preds = %123, %117, %100
  tail call void @df_insn_change_bb(ptr noundef nonnull %0, ptr noundef %112) #26
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !9
  %127 = getelementptr inbounds %struct.rtl_bb_info, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !68
  %129 = icmp eq ptr %128, %1
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store ptr %0, ptr %127, align 8, !tbaa !68
  br label %131

131:                                              ; preds = %124, %130, %3
  %132 = load i32, ptr %0, align 8
  %133 = and i32 %132, -268435457
  store i32 %133, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @schedule_insn(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #27
  call void @print_insn(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0) #26
  %8 = getelementptr inbounds [2048 x i8], ptr %4, i64 0, i64 40
  store i8 0, ptr %8, align 8, !tbaa !9
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %10 = load i32, ptr @clock_var, align 4, !tbaa !5
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef %10, ptr noundef nonnull %4) #25
  %12 = call fastcc i32 @recog_memoized(ptr noundef %0) #25
  %13 = icmp slt i32 %12, 0
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  br i1 %13, label %15, label %17

15:                                               ; preds = %7
  %16 = call i64 @fwrite(ptr nonnull @.str.36, i64 7, i64 1, ptr %14)
  br label %18

17:                                               ; preds = %7
  call void @print_reservation(ptr noundef %14, ptr noundef %0) #26
  br label %18

18:                                               ; preds = %17, %15
  %19 = load ptr, ptr @h_i_d, align 8
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !9
  %22 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %19, i32 noundef %21) #25
  %23 = getelementptr inbounds %struct._haifa_insn_data, ptr %22, i64 0, i32 13
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %28 = call i32 @fputc(i32 noundef 58, ptr noundef %27) #25
  %29 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %45, %31 ], [ 0, %26 ]
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %34 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct.reg_pressure_data, ptr %24, i64 %32
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = ashr i32 %40, 24
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef %38, i32 noundef %42, i32 noundef %43) #25
  %45 = add nuw nsw i64 %32, 1
  %46 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %31, label %49, !llvm.loop !142

49:                                               ; preds = %31, %26, %18
  %50 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %51 = call i32 @fputc(i32 noundef 10, ptr noundef %50) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #27
  br label %52

52:                                               ; preds = %49, %1
  %53 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call fastcc void @update_reg_and_insn_max_reg_pressure(ptr noundef %0) #25
  br label %56

56:                                               ; preds = %55, %52
  %57 = call zeroext i8 @sd_lists_empty_p(ptr noundef %0, i32 noundef 3) #26
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1699, ptr noundef nonnull @.str.3) #26
  br label %60

60:                                               ; preds = %56, %59
  %61 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 7
  br i1 %66, label %94, label %67

67:                                               ; preds = %63
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef nonnull %0, i32 noundef 3) #25
  %68 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %67, %85
  %71 = load ptr, ptr %3, align 8, !tbaa !12
  %72 = load ptr, ptr %71, align 8, !tbaa !23
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 7
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1708, ptr noundef nonnull @.str.3) #26
  br label %77

77:                                               ; preds = %70, %76
  %78 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %79 = icmp sgt i32 %78, 5
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %82 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !9
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.38, i32 noundef %83) #25
  br label %85

85:                                               ; preds = %80, %77
  %86 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %87 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %86) #26
  %88 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !9
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %87, ptr %90, align 8, !tbaa !9
  %91 = call zeroext i8 @df_insn_rescan(ptr noundef nonnull %72) #26
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %2) #26
  %92 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %70, !llvm.loop !143

94:                                               ; preds = %85, %67, %63, %60
  %95 = load ptr, ptr @h_i_d, align 8
  %96 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !9
  %98 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %95, i32 noundef %97) #25
  %99 = getelementptr inbounds %struct._haifa_insn_data, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !118
  %101 = icmp eq i32 %100, -2
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1734, ptr noundef nonnull @.str.3) #26
  %103 = load ptr, ptr @h_i_d, align 8
  %104 = load i32, ptr %96, align 8, !tbaa !9
  %105 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %103, i32 noundef %104) #25
  br label %106

106:                                              ; preds = %94, %102
  %107 = phi ptr [ %98, %94 ], [ %105, %102 ]
  %108 = phi ptr [ %95, %94 ], [ %103, %102 ]
  %109 = getelementptr inbounds %struct._haifa_insn_data, ptr %107, i64 0, i32 4
  store i32 -3, ptr %109, align 8, !tbaa !118
  %110 = load i32, ptr %96, align 8, !tbaa !9
  %111 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %108, i32 noundef %110) #25
  %112 = getelementptr inbounds %struct._haifa_insn_data, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !58
  %114 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %115 = sub nsw i32 0, %114
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1737, ptr noundef nonnull @.str.3) #26
  %118 = load ptr, ptr @h_i_d, align 8
  %119 = load i32, ptr %96, align 8, !tbaa !9
  %120 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %118, i32 noundef %119) #25
  br label %121

121:                                              ; preds = %106, %117
  %122 = phi ptr [ %111, %106 ], [ %120, %117 ]
  %123 = getelementptr inbounds %struct._haifa_insn_data, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !58
  %125 = load i32, ptr @clock_var, align 4, !tbaa !5
  %126 = icmp sle i32 %124, %125
  %127 = load i32, ptr @flag_sched_stalled_insns, align 4
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %121
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1741, ptr noundef nonnull @.str.3) #26
  %131 = load i32, ptr @clock_var, align 4, !tbaa !5
  %132 = load ptr, ptr @h_i_d, align 8
  %133 = load i32, ptr %96, align 8, !tbaa !9
  %134 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %132, i32 noundef %133) #25
  br label %135

135:                                              ; preds = %130, %121
  %136 = phi ptr [ %134, %130 ], [ %122, %121 ]
  %137 = phi i32 [ %131, %130 ], [ %125, %121 ]
  %138 = getelementptr inbounds %struct._haifa_insn_data, ptr %136, i64 0, i32 2
  store i32 %137, ptr %138, align 8, !tbaa !58
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef nonnull %0, i32 noundef 4) #25
  %139 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %190, label %141

141:                                              ; preds = %135, %186
  %142 = phi i32 [ %187, %186 ], [ 0, %135 ]
  %143 = load ptr, ptr %3, align 8, !tbaa !12
  %144 = getelementptr inbounds %struct._dep, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !25
  call void @sd_resolve_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %2) #26
  %146 = load i32, ptr %0, align 8
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 7
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load i32, ptr %145, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 7
  br i1 %152, label %153, label %186, !llvm.loop !144

153:                                              ; preds = %149, %141
  %154 = load ptr, ptr @h_i_d, align 8
  %155 = load i32, ptr %96, align 8, !tbaa !9
  %156 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %154, i32 noundef %155) #25
  %157 = getelementptr inbounds %struct._haifa_insn_data, ptr %156, i64 0, i32 11
  %158 = load ptr, ptr %157, align 8, !tbaa !140
  %159 = icmp eq ptr %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = load ptr, ptr @cfun, align 8, !tbaa !12
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !130
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !132
  %166 = icmp eq ptr %158, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %160, %153
  %168 = call i32 @try_ready(ptr noundef %145) #25
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load i32, ptr %145, align 8
  %172 = and i32 %171, 268435456
  %173 = icmp eq i32 %172, 0
  %174 = call i32 @llvm.smax.i32(i32 %142, i32 %168)
  %175 = select i1 %173, i32 %142, i32 %174
  br label %186

176:                                              ; preds = %160
  %177 = call zeroext i8 @sd_lists_empty_p(ptr noundef nonnull %0, i32 noundef 4) #26
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1779, ptr noundef nonnull @.str.3) #26
  br label %180

180:                                              ; preds = %176, %179
  %181 = load ptr, ptr @h_i_d, align 8
  %182 = load i32, ptr %96, align 8, !tbaa !9
  %183 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %181, i32 noundef %182) #25
  %184 = getelementptr inbounds %struct._haifa_insn_data, ptr %183, i64 0, i32 11
  %185 = load ptr, ptr %184, align 8, !tbaa !140
  call fastcc void @fix_recovery_deps(ptr noundef %185) #25
  br label %186

186:                                              ; preds = %170, %180, %167, %149
  %187 = phi i32 [ %142, %149 ], [ %142, %180 ], [ %142, %167 ], [ %175, %170 ]
  %188 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %141

190:                                              ; preds = %186, %135
  %191 = phi i32 [ 0, %135 ], [ %187, %186 ]
  %192 = load i32, ptr @issue_rate, align 4, !tbaa !5
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %215

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !9
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65534
  %199 = icmp eq i32 %198, 24
  br i1 %199, label %215, label %200

200:                                              ; preds = %194
  %201 = load i32, ptr %0, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 7
  br i1 %203, label %215, label %204

204:                                              ; preds = %200
  %205 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %206 = icmp eq i32 %205, 0
  %207 = load i32, ptr @clock_var, align 4, !tbaa !5
  br i1 %206, label %214, label %208

208:                                              ; preds = %204
  %209 = load i32, ptr @last_clock_var, align 4, !tbaa !5
  %210 = icmp sgt i32 %207, %209
  %211 = select i1 %210, i32 1179648, i32 0
  %212 = and i32 %201, -16711681
  %213 = or disjoint i32 %211, %212
  store i32 %213, ptr %0, align 8
  br label %214

214:                                              ; preds = %208, %204
  store i32 %207, ptr @last_clock_var, align 4, !tbaa !5
  br label %215

215:                                              ; preds = %194, %214, %200, %190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  ret i32 %191
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_curr_reg_pressure() unnamed_addr #0 {
  %1 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %2 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 3, i64 1, ptr %1)
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %0, %15
  %6 = phi i64 [ %24, %15 ], [ 0, %0 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 787, ptr noundef nonnull @.str.3) #26
  %14 = load i32, ptr %10, align 4, !tbaa !5
  br label %15

15:                                               ; preds = %5, %13
  %16 = phi i32 [ %11, %5 ], [ %14, %13 ]
  %17 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %18 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %9
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %22 = sub nsw i32 %16, %21
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.40, ptr noundef %19, i32 noundef %16, i32 noundef %22) #25
  %24 = add nuw nsw i64 %6, 1
  %25 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %5, label %28, !llvm.loop !145

28:                                               ; preds = %15, %0
  %29 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %30 = tail call i32 @fputc(i32 10, ptr %29)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @early_queue_to_ready(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  %3 = alloca i8, i64 %2, align 16
  %4 = load i32, ptr @flag_sched_stalled_insns, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %93, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %93, label %9

9:                                                ; preds = %6, %89
  %10 = phi i32 [ %90, %89 ], [ 0, %6 ]
  %11 = phi i32 [ %91, %89 ], [ 0, %6 ]
  %12 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %13 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %14 = add nsw i32 %13, %11
  %15 = and i32 %14, %7
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %12, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %89, label %20

20:                                               ; preds = %9
  %21 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %22 = icmp sgt i32 %21, 6
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.41, i32 noundef %13, i32 noundef %11) #25
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %85
  %28 = phi i32 [ %86, %85 ], [ %10, %26 ]
  %29 = phi ptr [ %87, %85 ], [ null, %26 ]
  %30 = phi ptr [ %33, %85 ], [ %18, %26 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = load ptr, ptr %31, align 8, !tbaa !9
  %35 = icmp ne ptr %34, null
  %36 = load i32, ptr @sched_verbose, align 4
  %37 = icmp sgt i32 %36, 6
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %41 = call i32 @print_rtl_single(ptr noundef %40, ptr noundef nonnull %34) #26
  br label %42

42:                                               ; preds = %39, %27
  %43 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %0, i64 %43, i1 false)
  %44 = call fastcc i32 @recog_memoized(ptr noundef %34) #25
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = call i32 @state_transition(ptr noundef nonnull %3, ptr noundef %34) #26
  br label %48

48:                                               ; preds = %42, %46
  %49 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %50 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %51 = icmp sgt i32 %50, 5
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.42, i32 noundef %49) #25
  br label %55

55:                                               ; preds = %52, %48
  %56 = icmp slt i32 %49, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %55
  %58 = call fastcc zeroext i8 @ok_for_early_queue_removal(ptr noundef %34) #25
  switch i8 %58, label %85 [
    i8 1, label %59
    i8 0, label %84
  ]

59:                                               ; preds = %57
  %60 = load i32, ptr @q_size, align 4, !tbaa !5
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr @q_size, align 4, !tbaa !5
  call fastcc void @ready_add(ptr noundef %34, i8 noundef zeroext 0) #25
  %62 = icmp eq ptr %29, null
  %63 = load ptr, ptr @insn_queue, align 8
  %64 = load i32, ptr @q_ptr, align 4
  %65 = add nsw i32 %64, %11
  %66 = and i32 %65, %7
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %63, i64 %67
  %69 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = select i1 %62, ptr %68, ptr %69
  store ptr %33, ptr %70, align 8, !tbaa !9
  call void @free_INSN_LIST_node(ptr noundef nonnull %30) #26
  %71 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %59
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %75 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %76 = getelementptr inbounds %struct.haifa_sched_info, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !128
  %78 = call ptr %77(ptr noundef %34, i32 noundef 0) #26
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.43, ptr noundef %78) #25
  br label %80

80:                                               ; preds = %73, %59
  %81 = add nsw i32 %28, 1
  %82 = load i32, ptr @flag_sched_stalled_insns, align 4, !tbaa !5
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %93, label %85

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %57, %80, %55, %84
  %86 = phi i32 [ %28, %84 ], [ %28, %55 ], [ %81, %80 ], [ %28, %57 ]
  %87 = phi ptr [ %30, %84 ], [ %30, %55 ], [ %29, %80 ], [ %29, %57 ]
  %88 = icmp eq ptr %33, null
  br i1 %88, label %89, label %27, !llvm.loop !146

89:                                               ; preds = %85, %9
  %90 = phi i32 [ %10, %9 ], [ %86, %85 ]
  %91 = add nuw i32 %11, 1
  %92 = icmp eq i32 %11, %7
  br i1 %92, label %93, label %9, !llvm.loop !147

93:                                               ; preds = %89, %80, %6, %1
  %94 = phi i32 [ 0, %1 ], [ 0, %6 ], [ %81, %80 ], [ %90, %89 ]
  ret i32 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @choose_ready(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call zeroext i8 @dbg_cnt(i32 noundef 29) #26
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %7 = tail call ptr @next_nonnote_insn(ptr noundef %6) #26
  %8 = load ptr, ptr @h_i_d, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !9
  %11 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %8, i32 noundef %10) #25
  %12 = getelementptr inbounds %struct._haifa_insn_data, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !118
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %228

15:                                               ; preds = %5
  tail call fastcc void @ready_remove_insn(ptr noundef nonnull %7) #25
  store ptr %7, ptr %0, align 8, !tbaa !12
  br label %228

16:                                               ; preds = %1
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 17), align 8, !tbaa !148
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = tail call i32 %17() #26
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 268435456
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %34

32:                                               ; preds = %16, %27, %22, %19
  %33 = tail call fastcc ptr @ready_remove_first() #25
  store ptr %33, ptr %0, align 8, !tbaa !12
  br label %228

34:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  store i32 0, ptr %2, align 4, !tbaa !5
  %35 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef 0) #25
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 1, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = tail call fastcc ptr @ready_remove_first() #25
  store ptr %41, ptr %0, align 8, !tbaa !12
  br label %226

42:                                               ; preds = %34
  %43 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %94, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.spec_info_def, ptr %43, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !149
  %48 = and i32 %47, 6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %94, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %50, %86
  %54 = phi i32 [ %87, %86 ], [ 1, %50 ]
  %55 = phi i32 [ %78, %86 ], [ 1, %50 ]
  %56 = phi i32 [ %88, %86 ], [ 0, %50 ]
  %57 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %56) #25
  %58 = load ptr, ptr @h_i_d, align 8
  %59 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !9
  %61 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %58, i32 noundef %60) #25
  %62 = getelementptr inbounds %struct._haifa_insn_data, ptr %61, i64 0, i32 8
  %63 = load i32, ptr %62, align 8, !tbaa !59
  %64 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %65 = getelementptr inbounds %struct.spec_info_def, ptr %64, i64 0, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !149
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  %69 = and i32 %63, 4095
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  %72 = and i32 %66, 4
  br i1 %71, label %73, label %77

73:                                               ; preds = %53
  %74 = icmp ne i32 %72, 0
  %75 = icmp ne i32 %54, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %90

77:                                               ; preds = %53, %73
  %78 = phi i32 [ 0, %73 ], [ %55, %53 ]
  %79 = icmp ne i32 %72, 0
  %80 = and i32 %63, 16773120
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = icmp ne i32 %78, 0
  %85 = select i1 %68, i1 %84, i1 false
  br i1 %85, label %86, label %90

86:                                               ; preds = %83, %77
  %87 = phi i32 [ %54, %77 ], [ 0, %83 ]
  %88 = add nuw nsw i32 %56, 1
  %89 = icmp eq i32 %88, %51
  br i1 %89, label %90, label %53, !llvm.loop !151

90:                                               ; preds = %73, %83, %86
  %91 = phi i32 [ 0, %73 ], [ %78, %83 ], [ %78, %86 ]
  %92 = phi i32 [ %54, %73 ], [ 0, %83 ], [ %87, %86 ]
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %90, %50, %45, %42
  %95 = phi i32 [ 1, %45 ], [ 1, %42 ], [ 1, %50 ], [ %91, %90 ]
  %96 = phi i1 [ true, %45 ], [ true, %42 ], [ true, %50 ], [ %93, %90 ]
  %97 = load ptr, ptr @h_i_d, align 8
  %98 = load i32, ptr %36, align 8, !tbaa !9
  %99 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %97, i32 noundef %98) #25
  %100 = getelementptr inbounds %struct._haifa_insn_data, ptr %99, i64 0, i32 8
  %101 = load i32, ptr %100, align 8, !tbaa !59
  %102 = and i32 %101, 16777215
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %94
  %105 = icmp ne i32 %95, 0
  %106 = and i32 %101, 4095
  %107 = icmp eq i32 %106, 0
  %108 = or i1 %105, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = and i32 %101, 16773120
  %111 = icmp eq i32 %110, 0
  %112 = or i1 %96, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 31), align 8, !tbaa !152
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = tail call zeroext i8 %114(ptr noundef nonnull %35) #26
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109, %104, %116
  tail call fastcc void @change_queue_index(ptr noundef nonnull %35, i32 noundef 1) #25
  br label %226

120:                                              ; preds = %116, %113, %94
  %121 = load ptr, ptr @ready_try, align 8, !tbaa !12
  store i8 0, ptr %121, align 1, !tbaa !9
  %122 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %197

124:                                              ; preds = %120
  %125 = icmp eq i32 %95, 0
  br label %130

126:                                              ; preds = %156
  %127 = icmp sgt i32 %162, 1
  br i1 %127, label %128, label %197

128:                                              ; preds = %126
  %129 = load ptr, ptr @ready_try, align 8, !tbaa !12
  br label %165

130:                                              ; preds = %124, %156
  %131 = phi i64 [ 1, %124 ], [ %161, %156 ]
  %132 = trunc i64 %131 to i32
  %133 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %132) #25
  br i1 %125, label %134, label %144

134:                                              ; preds = %130
  %135 = load ptr, ptr @h_i_d, align 8
  %136 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !9
  %138 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %135, i32 noundef %137) #25
  %139 = getelementptr inbounds %struct._haifa_insn_data, ptr %138, i64 0, i32 8
  %140 = load i32, ptr %139, align 8, !tbaa !59
  %141 = and i32 %140, 4095
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, i1 true, i1 %96
  br i1 %143, label %156, label %150

144:                                              ; preds = %130
  br i1 %96, label %156, label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr @h_i_d, align 8
  %147 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !9
  %149 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %146, i32 noundef %148) #25
  br label %150

150:                                              ; preds = %145, %134
  %151 = phi ptr [ %149, %145 ], [ %138, %134 ]
  %152 = getelementptr inbounds %struct._haifa_insn_data, ptr %151, i64 0, i32 8
  %153 = load i32, ptr %152, align 8, !tbaa !59
  %154 = and i32 %153, 16773120
  %155 = icmp ne i32 %154, 0
  br label %156

156:                                              ; preds = %134, %144, %150
  %157 = phi i1 [ %142, %134 ], [ false, %144 ], [ %155, %150 ]
  %158 = zext i1 %157 to i8
  %159 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %160 = getelementptr inbounds i8, ptr %159, i64 %131
  store i8 %158, ptr %160, align 1, !tbaa !9
  %161 = add nuw nsw i64 %131, 1
  %162 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %130, label %126, !llvm.loop !153

165:                                              ; preds = %128, %191
  %166 = phi i32 [ %162, %128 ], [ %192, %191 ]
  %167 = phi ptr [ %129, %128 ], [ %193, %191 ]
  %168 = phi i64 [ 1, %128 ], [ %194, %191 ]
  %169 = getelementptr inbounds i8, ptr %167, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !9
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %191

172:                                              ; preds = %165
  %173 = trunc i64 %168 to i32
  %174 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %173) #25
  %175 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 1, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !9
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 18), align 8, !tbaa !154
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = tail call i32 %179(ptr noundef nonnull %174) #26
  %183 = icmp eq i32 %182, 0
  br label %184

184:                                              ; preds = %178, %181, %172
  %185 = phi i1 [ true, %172 ], [ false, %178 ], [ %183, %181 ]
  %186 = zext i1 %185 to i8
  %187 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %188 = getelementptr inbounds i8, ptr %187, i64 %168
  store i8 %186, ptr %188, align 1, !tbaa !9
  %189 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %190 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %191

191:                                              ; preds = %165, %184
  %192 = phi i32 [ %166, %165 ], [ %190, %184 ]
  %193 = phi ptr [ %167, %165 ], [ %189, %184 ]
  %194 = add nuw nsw i64 %168, 1
  %195 = sext i32 %192 to i64
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %165, label %197, !llvm.loop !155

197:                                              ; preds = %191, %120, %126
  %198 = load ptr, ptr @curr_state, align 8, !tbaa !12
  %199 = call i32 @max_issue(ptr noundef nonnull @ready, i32 noundef 1, ptr noundef %198, ptr noundef nonnull %2) #25
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = tail call fastcc ptr @ready_remove_first() #25
  store ptr %202, ptr %0, align 8, !tbaa !12
  %203 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %204 = icmp sgt i32 %203, 3
  br i1 %204, label %205, label %226

205:                                              ; preds = %201
  %206 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %207 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %208 = getelementptr inbounds %struct.haifa_sched_info, ptr %207, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !128
  %210 = tail call ptr %209(ptr noundef %202, i32 noundef 0) #26
  %211 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.44, ptr noundef %210) #25
  br label %226

212:                                              ; preds = %197
  %213 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %214 = icmp sgt i32 %213, 3
  %215 = load i32, ptr %2, align 4, !tbaa !5
  br i1 %214, label %216, label %224

216:                                              ; preds = %212
  %217 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %218 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %219 = getelementptr inbounds %struct.haifa_sched_info, ptr %218, i64 0, i32 5
  %220 = load ptr, ptr %219, align 8, !tbaa !128
  %221 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %215) #25
  %222 = tail call ptr %220(ptr noundef %221, i32 noundef 0) #26
  %223 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.45, ptr noundef %222) #25
  br label %224

224:                                              ; preds = %216, %212
  %225 = tail call fastcc ptr @ready_remove(i32 noundef %215) #25
  store ptr %225, ptr %0, align 8, !tbaa !12
  br label %226

226:                                              ; preds = %201, %205, %224, %119, %40
  %227 = phi i32 [ 0, %40 ], [ 0, %224 ], [ 1, %119 ], [ 0, %205 ], [ 0, %201 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  br label %228

228:                                              ; preds = %15, %5, %226, %32
  %229 = phi i32 [ 0, %32 ], [ %227, %226 ], [ 0, %15 ], [ -1, %5 ]
  ret i32 %229
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ready_add(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  br i1 %3, label %5, label %28

5:                                                ; preds = %2
  %6 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load ptr, ptr @ready, align 8, !tbaa !45
  %10 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = sext i32 %4 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #25
  %17 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %15, ptr nonnull align 8 %16, i64 %19, i1 false)
  %20 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  %22 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %23

23:                                               ; preds = %8, %5
  %24 = phi i32 [ %22, %8 ], [ %6, %5 ]
  %25 = phi i32 [ %21, %8 ], [ %4, %5 ]
  %26 = load ptr, ptr @ready, align 8, !tbaa !45
  %27 = sub nsw i32 %25, %24
  br label %58

28:                                               ; preds = %2
  %29 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %30 = add nsw i32 %29, -1
  %31 = icmp eq i32 %4, %30
  %32 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br i1 %31, label %33, label %53

33:                                               ; preds = %28
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr @ready, align 8, !tbaa !45
  %37 = sext i32 %29 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = sext i32 %32 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = getelementptr inbounds ptr, ptr %41, i64 -1
  %43 = tail call ptr @ready_lastpos(ptr noundef nonnull @ready) #25
  %44 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull align 8 %43, i64 %46, i1 false)
  %47 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %48 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  br label %49

49:                                               ; preds = %35, %33
  %50 = phi i32 [ %48, %35 ], [ 0, %33 ]
  %51 = phi i32 [ %47, %35 ], [ %29, %33 ]
  %52 = add nsw i32 %51, -2
  br label %53

53:                                               ; preds = %49, %28
  %54 = phi i32 [ %50, %49 ], [ %32, %28 ]
  %55 = phi i32 [ %52, %49 ], [ %4, %28 ]
  %56 = load ptr, ptr @ready, align 8, !tbaa !45
  %57 = add nsw i32 %55, 1
  store i32 %57, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 2), align 4, !tbaa !46
  br label %58

58:                                               ; preds = %53, %23
  %59 = phi i32 [ %57, %53 ], [ %27, %23 ]
  %60 = phi ptr [ %56, %53 ], [ %26, %23 ]
  %61 = phi i32 [ %54, %53 ], [ %24, %23 ]
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  store ptr %0, ptr %63, align 8, !tbaa !12
  %64 = add nsw i32 %61, 1
  store i32 %64, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %65 = load i32, ptr %0, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 4), align 4, !tbaa !98
  br label %71

71:                                               ; preds = %68, %58
  %72 = load ptr, ptr @h_i_d, align 8
  %73 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !9
  %75 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %72, i32 noundef %74) #25
  %76 = getelementptr inbounds %struct._haifa_insn_data, ptr %75, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !118
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1418, ptr noundef nonnull @.str.3) #26
  %80 = load ptr, ptr @h_i_d, align 8
  %81 = load i32, ptr %73, align 8, !tbaa !9
  %82 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %80, i32 noundef %81) #25
  br label %83

83:                                               ; preds = %71, %79
  %84 = phi ptr [ %75, %71 ], [ %82, %79 ]
  %85 = getelementptr inbounds %struct._haifa_insn_data, ptr %84, i64 0, i32 4
  store i32 -1, ptr %85, align 8, !tbaa !118
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @generate_recovery_code(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_i_d, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %2, i32 noundef %4) #25
  %6 = getelementptr inbounds %struct._haifa_insn_data, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = and i32 %7, 258111
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  tail call fastcc void @begin_speculative_block(ptr noundef nonnull %0) #25
  %11 = load ptr, ptr @h_i_d, align 8
  %12 = load i32, ptr %3, align 8, !tbaa !9
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %11, i32 noundef %12) #25
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi ptr [ %13, %10 ], [ %5, %1 ]
  %16 = getelementptr inbounds %struct._haifa_insn_data, ptr %15, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = and i32 %17, 16519104
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call fastcc void @add_to_speculative_block(ptr noundef nonnull %0) #25
  br label %21

21:                                               ; preds = %20, %14
  ret void
}

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_inter_tick(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_head_def, align 8
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._sd_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %7 = load i32, ptr @clock_var, align 4, !tbaa !5
  %8 = add nsw i32 %7, 1
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %3) #25
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %96, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr @max_insn_queue_index, align 4
  %14 = sub nsw i32 0, %13
  br label %15

15:                                               ; preds = %12, %92
  %16 = phi ptr [ %0, %12 ], [ %94, %92 ]
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -7
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %21, label %92

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %22 = load ptr, ptr @h_i_d, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !9
  %25 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %22, i32 noundef %24) #25
  %26 = getelementptr inbounds %struct._haifa_insn_data, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = icmp slt i32 %27, %14
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3605, ptr noundef nonnull @.str.3) #26
  %30 = load i32, ptr %23, align 8, !tbaa !9
  br label %31

31:                                               ; preds = %21, %29
  %32 = phi i32 [ %24, %21 ], [ %30, %29 ]
  %33 = load ptr, ptr @sched_luids, align 8
  %34 = call fastcc i32 @VEC_int_base_index(ptr noundef %33, i32 noundef %32) #25
  %35 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %34) #26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load ptr, ptr @sched_luids, align 8
  %39 = load i32, ptr %23, align 8, !tbaa !9
  %40 = call fastcc i32 @VEC_int_base_index(ptr noundef %38, i32 noundef %39) #25
  %41 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %40) #26
  %42 = sub nsw i32 %27, %8
  %43 = call i32 @llvm.smax.i32(i32 %42, i32 %14)
  %44 = load ptr, ptr @h_i_d, align 8
  %45 = load i32, ptr %23, align 8, !tbaa !9
  %46 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %44, i32 noundef %45) #25
  %47 = getelementptr inbounds %struct._haifa_insn_data, ptr %46, i64 0, i32 2
  store i32 %43, ptr %47, align 8, !tbaa !58
  br label %48

48:                                               ; preds = %37, %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %6, ptr noundef nonnull %16, i32 noundef 16) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  %49 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %91, label %51

51:                                               ; preds = %48, %88
  %52 = load ptr, ptr %5, align 8, !tbaa !12
  %53 = getelementptr inbounds %struct._dep, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !25
  %55 = load ptr, ptr @h_i_d, align 8
  %56 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !9
  %58 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %55, i32 noundef %57) #25
  %59 = getelementptr inbounds %struct._haifa_insn_data, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !58
  %61 = xor i32 %60, %13
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %88, label %63

63:                                               ; preds = %51
  %64 = load ptr, ptr @sched_luids, align 8
  %65 = call fastcc i32 @VEC_int_base_index(ptr noundef %64, i32 noundef %57) #25
  %66 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %65) #26
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load ptr, ptr @sched_luids, align 8
  %70 = load i32, ptr %56, align 8, !tbaa !9
  %71 = call fastcc i32 @VEC_int_base_index(ptr noundef %69, i32 noundef %70) #25
  %72 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %71) #26
  %73 = sub nsw i32 %60, %8
  %74 = call i32 @llvm.smax.i32(i32 %73, i32 %14)
  %75 = load ptr, ptr @h_i_d, align 8
  %76 = load i32, ptr %56, align 8, !tbaa !9
  %77 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %75, i32 noundef %76) #25
  %78 = getelementptr inbounds %struct._haifa_insn_data, ptr %77, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !157
  %80 = icmp sgt i32 %74, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %68
  store i32 %74, ptr %78, align 4, !tbaa !157
  %82 = load i32, ptr %56, align 8, !tbaa !9
  %83 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %75, i32 noundef %82) #25
  br label %84

84:                                               ; preds = %68, %81
  %85 = phi ptr [ %77, %68 ], [ %83, %81 ]
  %86 = phi i32 [ %79, %68 ], [ %74, %81 ]
  %87 = getelementptr inbounds %struct._haifa_insn_data, ptr %85, i64 0, i32 2
  store i32 %86, ptr %87, align 8, !tbaa !58
  br label %88

88:                                               ; preds = %84, %63, %51
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %89 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %51, !llvm.loop !158

91:                                               ; preds = %88, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %92

92:                                               ; preds = %15, %91
  %93 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !9
  %95 = icmp eq ptr %94, %10
  br i1 %95, label %96, label %15, !llvm.loop !159

96:                                               ; preds = %92, %2
  call void @bitmap_clear(ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_init_luids(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @__const.sched_init_luids.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @set_priorities(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !160
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -11
  %11 = icmp ult i32 %10, -4
  %12 = and i32 %8, 67174399
  %13 = icmp eq i32 %12, 7
  %14 = or i1 %13, %11
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3309, ptr noundef nonnull @.str.3) #26
  br label %16

16:                                               ; preds = %7, %15, %2
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %53, label %20

20:                                               ; preds = %16, %47
  %21 = phi ptr [ %51, %47 ], [ %1, %16 ]
  %22 = phi i32 [ %49, %47 ], [ %5, %16 ]
  %23 = phi i32 [ %48, %47 ], [ 0, %16 ]
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = add nsw i32 %23, 1
  %30 = tail call fastcc i32 @priority(ptr noundef nonnull %21) #25
  %31 = load ptr, ptr @h_i_d, align 8
  %32 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !9
  %34 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %31, i32 noundef %33) #25
  %35 = getelementptr inbounds %struct._haifa_insn_data, ptr %34, i64 0, i32 7
  %36 = load i8, ptr %35, align 1, !tbaa !41
  %37 = icmp sgt i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3322, ptr noundef nonnull @.str.3) #26
  %39 = load ptr, ptr @h_i_d, align 8
  %40 = load i32, ptr %32, align 8, !tbaa !9
  %41 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %39, i32 noundef %40) #25
  br label %42

42:                                               ; preds = %28, %38
  %43 = phi ptr [ %34, %28 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct._haifa_insn_data, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !42
  %46 = tail call i32 @llvm.smax.i32(i32 %22, i32 %45)
  br label %47

47:                                               ; preds = %42, %20
  %48 = phi i32 [ %23, %20 ], [ %29, %42 ]
  %49 = phi i32 [ %22, %20 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !9
  %52 = icmp eq ptr %51, %18
  br i1 %52, label %53, label %20, !llvm.loop !161

53:                                               ; preds = %47, %16
  %54 = phi i32 [ 0, %16 ], [ %48, %47 ]
  %55 = phi i32 [ %5, %16 ], [ %49, %47 ]
  %56 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct.haifa_sched_info, ptr %56, i64 0, i32 13
  store i32 %55, ptr %57, align 4, !tbaa !160
  ret i32 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @priority(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca %struct._dep, align 8
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %127

10:                                               ; preds = %1
  %11 = load ptr, ptr @h_i_d, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !9
  %14 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %11, i32 noundef %13) #25
  %15 = getelementptr inbounds %struct._haifa_insn_data, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !118
  %17 = icmp eq i32 %16, -3
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1010, ptr noundef nonnull @.str.3) #26
  %19 = load ptr, ptr @h_i_d, align 8
  %20 = load i32, ptr %12, align 8, !tbaa !9
  %21 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %19, i32 noundef %20) #25
  br label %22

22:                                               ; preds = %10, %18
  %23 = phi ptr [ %14, %10 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct._haifa_insn_data, ptr %23, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !41
  %26 = icmp sgt i8 %25, 0
  br i1 %26, label %123, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @dep_list_size(ptr noundef nonnull %0) #25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 @insn_cost(ptr noundef nonnull %0) #25
  br label %103

32:                                               ; preds = %27
  %33 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load ptr, ptr @h_i_d, align 8
  %37 = load i32, ptr %12, align 8, !tbaa !9
  %38 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %36, i32 noundef %37) #25
  %39 = getelementptr inbounds %struct._haifa_insn_data, ptr %38, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !140
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @cfun, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !130
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !132
  %48 = icmp eq ptr %40, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %32, %42, %35
  %50 = phi ptr [ %40, %42 ], [ null, %35 ], [ null, %32 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %61

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = load ptr, ptr %54, align 8, !tbaa !77
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = getelementptr inbounds %struct.rtl_bb_info, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !68
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !9
  br label %61

61:                                               ; preds = %52, %49
  %62 = phi ptr [ %50, %49 ], [ %40, %52 ]
  %63 = phi ptr [ %0, %49 ], [ %60, %52 ]
  %64 = phi ptr [ %51, %49 ], [ %56, %52 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  br label %66

66:                                               ; preds = %98, %61
  %67 = phi ptr [ %63, %61 ], [ %101, %98 ]
  %68 = phi i32 [ -1, %61 ], [ %99, %98 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %4, ptr noundef %67, i32 noundef 4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  %69 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %66
  %72 = icmp eq ptr %67, %0
  br label %73

73:                                               ; preds = %71, %94
  %74 = phi i32 [ %68, %71 ], [ %95, %94 ]
  %75 = load ptr, ptr %3, align 8, !tbaa !12
  %76 = getelementptr inbounds %struct._dep, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !25
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = icmp eq ptr %79, %62
  br i1 %80, label %94, label %81

81:                                               ; preds = %73
  %82 = call fastcc zeroext i8 @contributes_to_priority_p(ptr noundef nonnull %75) #25, !range !17
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  br i1 %72, label %85, label %87

85:                                               ; preds = %84
  %86 = call i32 @dep_cost(ptr noundef nonnull %75) #25
  br label %89

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  call void @init_dep(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %77, i32 noundef 12) #26
  %88 = call i32 @dep_cost(ptr noundef nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call fastcc i32 @priority(ptr noundef nonnull %77) #25
  %92 = add nsw i32 %91, %90
  %93 = call i32 @llvm.smax.i32(i32 %92, i32 %74)
  br label %94

94:                                               ; preds = %89, %81, %73
  %95 = phi i32 [ %74, %73 ], [ %93, %89 ], [ %74, %81 ]
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %96 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %73, !llvm.loop !162

98:                                               ; preds = %94, %66
  %99 = phi i32 [ %68, %66 ], [ %95, %94 ]
  %100 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  %102 = icmp eq ptr %101, %65
  br i1 %102, label %103, label %66, !llvm.loop !163

103:                                              ; preds = %98, %30
  %104 = phi i32 [ %31, %30 ], [ %99, %98 ]
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = icmp eq i32 %104, -1
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1090, ptr noundef nonnull @.str.3) #26
  br label %109

109:                                              ; preds = %106, %108
  %110 = call i32 @insn_cost(ptr noundef nonnull %0) #25
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi i32 [ %110, %109 ], [ %104, %103 ]
  %113 = load ptr, ptr @h_i_d, align 8
  %114 = load i32, ptr %12, align 8, !tbaa !9
  %115 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %113, i32 noundef %114) #25
  %116 = getelementptr inbounds %struct._haifa_insn_data, ptr %115, i64 0, i32 1
  store i32 %112, ptr %116, align 4, !tbaa !42
  %117 = load ptr, ptr @h_i_d, align 8
  %118 = load i32, ptr %12, align 8, !tbaa !9
  %119 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %117, i32 noundef %118) #25
  %120 = getelementptr inbounds %struct._haifa_insn_data, ptr %119, i64 0, i32 7
  store i8 1, ptr %120, align 1, !tbaa !41
  %121 = load i32, ptr %12, align 8, !tbaa !9
  %122 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %117, i32 noundef %121) #25
  br label %123

123:                                              ; preds = %111, %22
  %124 = phi ptr [ %122, %111 ], [ %23, %22 ]
  %125 = getelementptr inbounds %struct._haifa_insn_data, ptr %124, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !42
  br label %127

127:                                              ; preds = %1, %123
  %128 = phi i32 [ %126, %123 ], [ 0, %1 ]
  ret i32 %128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @setup_sched_dump() local_unnamed_addr #14 {
  %1 = load i32, ptr @sched_verbose_param, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  %3 = load ptr, ptr @dump_file, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  %6 = select i1 %5, i32 1, i32 %1
  store i32 %6, ptr @sched_verbose, align 4
  %7 = icmp slt i32 %1, 10
  %8 = select i1 %7, i1 %4, i1 false
  %9 = load ptr, ptr @stderr, align 8
  %10 = select i1 %8, ptr %3, ptr %9
  store ptr %10, ptr @sched_dump, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_init() local_unnamed_addr #0 {
  %1 = load i32, ptr @flag_sched_pressure, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @reload_completed, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.common_sched_info_def, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !21
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i8
  store i8 %11, ptr @sched_pressure_p, align 1, !tbaa !9
  br i1 %10, label %12, label %14

12:                                               ; preds = %6
  tail call void @ira_setup_eliminable_regset() #26
  br label %14

13:                                               ; preds = %0
  store i8 0, ptr @sched_pressure_p, align 1, !tbaa !9
  br label %14

14:                                               ; preds = %13, %12, %6
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 32), align 8, !tbaa !164
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  store ptr @spec_info_var, ptr @spec_info, align 8, !tbaa !12
  tail call void %15(ptr noundef nonnull @spec_info_var) #26
  %18 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %19 = load i32, ptr %18, align 8, !tbaa !165
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 84, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !101
  %25 = mul nsw i32 %24, 62
  %26 = sdiv i32 %25, 100
  %27 = getelementptr inbounds %struct.spec_info_def, ptr %18, i64 0, i32 2
  store i32 %26, ptr %27, align 8, !tbaa !166
  %28 = mul nsw i32 %24, 100
  %29 = getelementptr inbounds %struct.spec_info_def, ptr %18, i64 0, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !167
  br label %32

30:                                               ; preds = %17
  store ptr null, ptr @spec_info, align 8, !tbaa !12
  br label %32

31:                                               ; preds = %14
  store ptr null, ptr @spec_info, align 8, !tbaa !12
  br label %32

32:                                               ; preds = %21, %30, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 2), align 8, !tbaa !168
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i32 %33() #26
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i32 [ %36, %35 ], [ 1, %32 ]
  store i32 %38, ptr @issue_rate, align 4, !tbaa !5
  %39 = load i32, ptr @cached_issue_rate, align 4, !tbaa !5
  %40 = icmp eq i32 %39, %38
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 %38, ptr @cached_issue_rate, align 4, !tbaa !5
  store i32 0, ptr @cached_first_cycle_multipass_dfa_lookahead, align 4, !tbaa !5
  br label %42

42:                                               ; preds = %41, %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 17), align 8, !tbaa !148
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 %43() #26
  br label %47

47:                                               ; preds = %42, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %42 ]
  store i32 %48, ptr @dfa_lookahead, align 4, !tbaa !5
  %49 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 11), align 8, !tbaa !169
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void %49() #26
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 13), align 8, !tbaa !170
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void %53() #26
  br label %56

56:                                               ; preds = %55, %52
  tail call void @dfa_start() #26
  %57 = tail call i32 @state_size() #26
  %58 = sext i32 %57 to i64
  store i64 %58, ptr @dfa_state_size, align 8, !tbaa !89
  tail call void @init_alias_analysis() #26
  %59 = tail call i32 @df_set_flags(i32 noundef 1) #26
  tail call void @df_note_add_problem() #26
  %60 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %61 = getelementptr inbounds %struct.common_sched_info_def, ptr %60, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !21
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  tail call void @df_rd_add_problem() #26
  tail call void @df_chain_add_problem(i32 noundef 3) #26
  br label %65

65:                                               ; preds = %64, %56
  tail call void @df_analyze() #26
  %66 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @df_clear_flags(i32 noundef 1) #26
  br label %70

70:                                               ; preds = %68, %65
  tail call void @regstat_compute_calls_crossed() #26
  %71 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 6), align 8, !tbaa !171
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %75 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %76 = tail call i32 @get_max_uid() #26
  %77 = add nsw i32 %76, 1
  tail call void %71(ptr noundef %74, i32 noundef %75, i32 noundef %77) #26
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %117, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @max_reg_num() #26
  %83 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %84 = icmp eq i32 %83, 0
  %85 = load ptr, ptr @sched_dump, align 8
  %86 = select i1 %84, ptr null, ptr %85
  tail call void @ira_set_pseudo_classes(ptr noundef %86) #26
  %87 = sext i32 %82 to i64
  %88 = shl nsw i64 %87, 2
  %89 = tail call ptr @xmalloc(i64 noundef %88) #26
  store ptr %89, ptr @sched_regno_cover_class, align 8, !tbaa !12
  %90 = icmp sgt i32 %82, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %81
  %92 = zext nneg i32 %82 to i64
  br label %93

93:                                               ; preds = %91, %107
  %94 = phi ptr [ %89, %91 ], [ %108, %107 ]
  %95 = phi i64 [ 0, %91 ], [ %111, %107 ]
  %96 = icmp ult i64 %95, 53
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %95
  %99 = load i32, ptr %98, align 4, !tbaa !5
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !5
  br label %107

103:                                              ; preds = %93
  %104 = trunc i64 %95 to i32
  %105 = tail call i32 @reg_cover_class(i32 noundef %104) #26
  %106 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !12
  br label %107

107:                                              ; preds = %103, %97
  %108 = phi ptr [ %94, %97 ], [ %106, %103 ]
  %109 = phi i32 [ %102, %97 ], [ %105, %103 ]
  %110 = getelementptr inbounds i32, ptr %108, i64 %95
  store i32 %109, ptr %110, align 4, !tbaa !5
  %111 = add nuw nsw i64 %95, 1
  %112 = icmp eq i64 %111, %92
  br i1 %112, label %113, label %93, !llvm.loop !172

113:                                              ; preds = %107, %81
  %114 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  store ptr %114, ptr @curr_reg_live, align 8, !tbaa !12
  %115 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  store ptr %115, ptr @saved_reg_live, align 8, !tbaa !12
  %116 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #26
  store ptr %116, ptr @region_ref_regs, align 8, !tbaa !12
  br label %117

117:                                              ; preds = %113, %78
  %118 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  %119 = tail call ptr @xmalloc(i64 noundef %118) #26
  store ptr %119, ptr @curr_state, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @ira_setup_eliminable_regset() local_unnamed_addr #3

; Function Attrs: optsize
declare void @dfa_start() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @state_size() local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_rd_add_problem() local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @regstat_compute_calls_crossed() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_cover_class(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_sched_init() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  tail call void @setup_sched_dump() #25
  tail call void @sched_init() #25
  %2 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @sched_deps_info, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.sched_deps_info_def, ptr %5, i64 0, i32 12
  %7 = load i8, ptr %6, align 8
  %8 = or i8 %7, 6
  store i8 %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %4, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #27
  %10 = load ptr, ptr @cfun, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !173
  %15 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %14) #25
  store ptr %15, ptr %1, align 8, !tbaa !12
  tail call void @sched_init_bbs() #25
  %16 = load ptr, ptr @cfun, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %9, %25
  %26 = phi ptr [ %28, %25 ], [ %21, %9 ]
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %15, ptr noundef %26) #25
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = load ptr, ptr @cfun, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !130
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !132
  %34 = icmp eq ptr %28, %33
  br i1 %34, label %35, label %25, !llvm.loop !175

35:                                               ; preds = %25, %9
  tail call void @sched_init_luids(ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #25
  tail call void @sched_deps_init(i8 noundef zeroext 1) #26
  tail call void @sched_extend_target() #25
  tail call void @haifa_init_h_i_d(ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #25
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #27
  store ptr @haifa_init_only_bb, ptr @sched_init_only_bb, align 8, !tbaa !12
  store ptr @sched_split_block_1, ptr @sched_split_block, align 8, !tbaa !12
  store ptr @sched_create_empty_bb_1, ptr @sched_create_empty_bb, align 8, !tbaa !12
  store i8 0, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !9
  store i32 0, ptr @nr_be_in_control, align 4, !tbaa !5
  store i32 0, ptr @nr_be_in_data, align 4, !tbaa !5
  store i32 0, ptr @nr_begin_control, align 4, !tbaa !5
  store i32 0, ptr @nr_begin_data, align 4, !tbaa !5
  store ptr null, ptr @before_recovery, align 8, !tbaa !12
  store ptr null, ptr @after_recovery, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #26
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_init_bbs() local_unnamed_addr #0 {
  tail call fastcc void @sched_extend_bb() #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = load i32, ptr %0, align 8, !tbaa !176
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !176
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @sched_deps_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_extend_target() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 22), align 8, !tbaa !178
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #26
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_init_h_i_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.sched_scan_info_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @__const.haifa_init_h_i_d.ssi, i64 32, i1 false)
  call void @sched_scan(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #25
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_init_only_bb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5515, ptr noundef nonnull @.str.3) #26
  br label %5

5:                                                ; preds = %2, %4
  tail call void @sched_init_bbs() #25
  %6 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.common_sched_info_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !179
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void %8(ptr noundef %0, ptr noundef %1) #26
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sched_split_block_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @split_block(ptr noundef %0, ptr noundef %1) #26
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5531, ptr noundef nonnull @.str.3) #26
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sched_create_empty_bb_1(ptr noundef %0) #0 {
  %2 = tail call ptr @create_empty_bb(ptr noundef %0) #26
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_sched_finish() local_unnamed_addr #0 {
  store ptr null, ptr @sched_create_empty_bb, align 8, !tbaa !12
  store ptr null, ptr @sched_split_block, align 8, !tbaa !12
  store ptr null, ptr @sched_init_only_bb, align 8, !tbaa !12
  %1 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.spec_info_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @reload_completed, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  %10 = tail call ptr @current_function_name() #26
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef %10) #25
  %12 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.spec_info_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !183
  %15 = select i1 %9, i32 98, i32 97
  %16 = load i32, ptr @nr_begin_data, align 4, !tbaa !5
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %16) #25
  %18 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.spec_info_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !183
  %21 = load i32, ptr @nr_be_in_data, align 4, !tbaa !5
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.15, i32 noundef %15, i32 noundef %21) #25
  %23 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.spec_info_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !183
  %26 = load i32, ptr @nr_begin_control, align 4, !tbaa !5
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef %15, i32 noundef %26) #25
  %28 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.spec_info_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !183
  %31 = load i32, ptr @nr_be_in_control, align 4, !tbaa !5
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.17, i32 noundef %15, i32 noundef %31) #25
  br label %33

33:                                               ; preds = %7, %3, %0
  tail call void @sched_deps_finish() #26
  tail call void @sched_finish_luids() #25
  store ptr null, ptr @current_sched_info, align 8, !tbaa !12
  tail call void @sched_finish() #25
  ret void
}

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #3

; Function Attrs: optsize
declare void @sched_deps_finish() local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @sched_finish_luids() local_unnamed_addr #16 {
  tail call fastcc void @VEC_int_heap_free() #25
  store i32 1, ptr @sched_max_luid, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_finish() local_unnamed_addr #0 {
  tail call void @haifa_finish_h_i_d() #25
  %1 = load i8, ptr @sched_pressure_p, align 1, !tbaa !9
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !12
  tail call void @free(ptr noundef %4) #25
  %5 = load ptr, ptr @region_ref_regs, align 8, !tbaa !12
  tail call void @bitmap_obstack_free(ptr noundef %5) #26
  store ptr null, ptr @region_ref_regs, align 8, !tbaa !12
  %6 = load ptr, ptr @saved_reg_live, align 8, !tbaa !12
  tail call void @bitmap_obstack_free(ptr noundef %6) #26
  store ptr null, ptr @saved_reg_live, align 8, !tbaa !12
  %7 = load ptr, ptr @curr_reg_live, align 8, !tbaa !12
  tail call void @bitmap_obstack_free(ptr noundef %7) #26
  store ptr null, ptr @curr_reg_live, align 8, !tbaa !12
  br label %8

8:                                                ; preds = %3, %0
  %9 = load ptr, ptr @curr_state, align 8, !tbaa !12
  tail call void @free(ptr noundef %9) #25
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 7), align 8, !tbaa !184
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %14 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  tail call void %10(ptr noundef %13, i32 noundef %14) #26
  br label %15

15:                                               ; preds = %12, %8
  tail call void @end_alias_analysis() #26
  tail call void @regstat_free_calls_crossed() #26
  tail call void @dfa_finish() #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_finish_h_i_d() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #27
  %2 = load ptr, ptr @h_i_d, align 8
  %3 = call fastcc i32 @VEC_haifa_insn_data_def_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #25, !range !185
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %0, %21
  %6 = phi i32 [ %22, %21 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct._haifa_insn_data, ptr %7, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %9) #25
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct._haifa_insn_data, ptr %7, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !186
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.reg_use_data, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !187
  tail call void @free(ptr noundef nonnull %17) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !188

21:                                               ; preds = %16, %12
  %22 = add nuw nsw i32 %6, 1
  %23 = load ptr, ptr @h_i_d, align 8
  %24 = call fastcc i32 @VEC_haifa_insn_data_def_base_iterate(ptr noundef %23, i32 noundef %22, ptr noundef nonnull %1) #25, !range !185
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %5, !llvm.loop !189

26:                                               ; preds = %21, %0
  tail call fastcc void @VEC_haifa_insn_data_def_heap_free() #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #27
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #3

; Function Attrs: optsize
declare void @regstat_free_calls_crossed() local_unnamed_addr #3

; Function Attrs: optsize
declare void @dfa_finish() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @try_ready(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = and i32 %10, -150994944
  %12 = icmp ne i32 %11, 0
  %13 = icmp eq i32 %10, 0
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3669, ptr noundef nonnull @.str.3) #26
  br label %16

16:                                               ; preds = %1, %15
  %17 = tail call zeroext i8 @sd_lists_empty_p(ptr noundef nonnull %0, i32 noundef 3) #26
  %18 = icmp eq i8 %17, 0
  %19 = load i32, ptr %9, align 4, !tbaa !5
  br i1 %18, label %29, label %20

20:                                               ; preds = %16
  %21 = and i32 %19, -134217729
  store i32 %21, ptr %9, align 4, !tbaa !5
  %22 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %23 = getelementptr inbounds %struct.haifa_sched_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !190
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %20
  %28 = and i32 %19, -150994944
  store i32 %28, ptr %9, align 4, !tbaa !5
  br label %77

29:                                               ; preds = %16
  %30 = and i32 %19, -150994944
  store i32 %30, ptr %9, align 4, !tbaa !5
  %31 = tail call zeroext i8 @sd_lists_empty_p(ptr noundef nonnull %0, i32 noundef 1) #26
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef nonnull %0, i32 noundef 3) #25
  %34 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %33, %57
  %37 = phi i8 [ %58, %57 ], [ 1, %33 ]
  %38 = load ptr, ptr %3, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct._dep, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !191
  %41 = and i32 %40, 16777215
  %42 = load ptr, ptr %38, align 8, !tbaa !23
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, ptr %0, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %36
  %51 = icmp eq i8 %37, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, ptr %9, align 4, !tbaa !5
  %54 = call i32 @ds_merge(i32 noundef %53, i32 noundef %41) #26
  br label %55

55:                                               ; preds = %50, %52
  %56 = phi i32 [ %54, %52 ], [ %41, %50 ]
  store i32 %56, ptr %9, align 4, !tbaa !5
  br label %57

57:                                               ; preds = %46, %55
  %58 = phi i8 [ 0, %55 ], [ %37, %46 ]
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %59 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %36, !llvm.loop !192

61:                                               ; preds = %57, %33
  %62 = load i32, ptr %9, align 4, !tbaa !5
  %63 = call i32 @ds_weak(i32 noundef %62) #26
  %64 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %65 = getelementptr inbounds %struct.spec_info_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !166
  %67 = icmp slt i32 %63, %66
  %68 = load i32, ptr %9, align 4, !tbaa !5
  br i1 %67, label %69, label %72

69:                                               ; preds = %61
  %70 = and i32 %68, -150994944
  %71 = or disjoint i32 %70, 134217728
  store i32 %71, ptr %9, align 4, !tbaa !5
  br label %72

72:                                               ; preds = %69, %61
  %73 = phi i32 [ %71, %69 ], [ %68, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  br label %77

74:                                               ; preds = %29
  %75 = load i32, ptr %9, align 4, !tbaa !5
  %76 = or i32 %75, 134217728
  store i32 %76, ptr %9, align 4, !tbaa !5
  br label %77

77:                                               ; preds = %72, %74, %20, %27
  %78 = phi i32 [ %73, %72 ], [ %76, %74 ], [ %21, %20 ], [ %28, %27 ]
  %79 = and i32 %78, 134217728
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = icmp eq i32 %78, %10
  br i1 %82, label %83, label %90

83:                                               ; preds = %81
  %84 = load ptr, ptr @h_i_d, align 8
  %85 = load i32, ptr %6, align 8, !tbaa !9
  %86 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %84, i32 noundef %85) #25
  %87 = getelementptr inbounds %struct._haifa_insn_data, ptr %86, i64 0, i32 4
  %88 = load i32, ptr %87, align 8, !tbaa !118
  %89 = icmp eq i32 %88, -2
  br i1 %89, label %140, label %90

90:                                               ; preds = %83, %81
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3725, ptr noundef nonnull @.str.3) #26
  %91 = load i32, ptr %9, align 4, !tbaa !5
  br label %99

92:                                               ; preds = %77
  %93 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %94 = getelementptr inbounds %struct.haifa_sched_info, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !193
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = call i32 %95(ptr noundef %0, i32 noundef %78) #26
  store i32 %98, ptr %9, align 4, !tbaa !5
  br label %99

99:                                               ; preds = %92, %90, %97
  %100 = phi i32 [ %98, %97 ], [ %91, %90 ], [ %78, %92 ]
  %101 = and i32 %100, 16777215
  %102 = icmp eq i32 %101, 0
  %103 = icmp eq i32 %100, %10
  %104 = or i1 %103, %102
  br i1 %104, label %140, label %105

105:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %106 = icmp ult i32 %100, 16777216
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3747, ptr noundef nonnull @.str.3) #26
  %108 = load i32, ptr %9, align 4, !tbaa !5
  br label %109

109:                                              ; preds = %105, %107
  %110 = phi i32 [ %100, %105 ], [ %108, %107 ]
  %111 = call fastcc i32 @haifa_speculate_insn(ptr noundef %0, i32 noundef %110, ptr noundef nonnull %4) #25
  switch i32 %111, label %138 [
    i32 -1, label %112
    i32 0, label %116
    i32 1, label %126
  ]

112:                                              ; preds = %109
  %113 = load i32, ptr %9, align 4, !tbaa !5
  %114 = and i32 %113, -150994944
  %115 = or disjoint i32 %114, 134217728
  store i32 %115, ptr %9, align 4, !tbaa !5
  br label %139

116:                                              ; preds = %109
  %117 = load ptr, ptr @h_i_d, align 8
  %118 = load i32, ptr %6, align 8, !tbaa !9
  %119 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %117, i32 noundef %118) #25
  %120 = getelementptr inbounds %struct._haifa_insn_data, ptr %119, i64 0, i32 12
  %121 = load ptr, ptr %120, align 8, !tbaa !194
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !9
  store ptr %125, ptr %120, align 8, !tbaa !194
  br label %139

126:                                              ; preds = %109
  %127 = load ptr, ptr @h_i_d, align 8
  %128 = load i32, ptr %6, align 8, !tbaa !9
  %129 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %127, i32 noundef %128) #25
  %130 = getelementptr inbounds %struct._haifa_insn_data, ptr %129, i64 0, i32 12
  %131 = load ptr, ptr %130, align 8, !tbaa !194
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !9
  store ptr %135, ptr %130, align 8, !tbaa !194
  br label %136

136:                                              ; preds = %133, %126
  %137 = load ptr, ptr %4, align 8, !tbaa !12
  call fastcc void @haifa_change_pattern(ptr noundef nonnull %0, ptr noundef %137) #25
  br label %139

138:                                              ; preds = %109
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3777, ptr noundef nonnull @.str.3) #26
  br label %139

139:                                              ; preds = %116, %123, %138, %136, %112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %140

140:                                              ; preds = %83, %139, %99
  %141 = load ptr, ptr @h_i_d, align 8
  %142 = load i32, ptr %6, align 8, !tbaa !9
  %143 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %141, i32 noundef %142) #25
  %144 = getelementptr inbounds %struct._haifa_insn_data, ptr %143, i64 0, i32 12
  %145 = load ptr, ptr %144, align 8, !tbaa !194
  %146 = icmp eq ptr %145, null
  br i1 %146, label %159, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct._haifa_insn_data, ptr %143, i64 0, i32 11
  %149 = load ptr, ptr %148, align 8, !tbaa !140
  %150 = icmp eq ptr %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr @cfun, align 8, !tbaa !12
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !130
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !132
  %157 = icmp eq ptr %149, %156
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3786, ptr noundef nonnull @.str.3) #26
  br label %159

159:                                              ; preds = %140, %147, %151, %158
  %160 = load i32, ptr %9, align 4, !tbaa !5
  %161 = and i32 %160, 134217728
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  call fastcc void @change_queue_index(ptr noundef nonnull %0, i32 noundef -2) #25
  br label %243

164:                                              ; preds = %159
  %165 = and i32 %160, 258111
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %196

167:                                              ; preds = %164
  %168 = load ptr, ptr @h_i_d, align 8
  %169 = load i32, ptr %6, align 8, !tbaa !9
  %170 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %168, i32 noundef %169) #25
  %171 = getelementptr inbounds %struct._haifa_insn_data, ptr %170, i64 0, i32 12
  %172 = load ptr, ptr %171, align 8, !tbaa !194
  %173 = icmp eq ptr %172, null
  br i1 %173, label %196, label %174

174:                                              ; preds = %167
  %175 = call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %0) #26
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %177
  %181 = load ptr, ptr @h_i_d, align 8
  %182 = load i32, ptr %6, align 8, !tbaa !9
  %183 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %181, i32 noundef %182) #25
  br label %188

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct._haifa_insn_data, ptr %170, i64 0, i32 11
  %186 = load ptr, ptr %185, align 8, !tbaa !140
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %196

188:                                              ; preds = %180, %184
  %189 = phi ptr [ %183, %180 ], [ %170, %184 ]
  %190 = getelementptr inbounds %struct._haifa_insn_data, ptr %189, i64 0, i32 12
  %191 = load ptr, ptr %190, align 8, !tbaa !194
  call fastcc void @haifa_change_pattern(ptr noundef nonnull %0, ptr noundef %191) #25
  %192 = load ptr, ptr @h_i_d, align 8
  %193 = load i32, ptr %6, align 8, !tbaa !9
  %194 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %192, i32 noundef %193) #25
  %195 = getelementptr inbounds %struct._haifa_insn_data, ptr %194, i64 0, i32 12
  store ptr null, ptr %195, align 8, !tbaa !194
  br label %196

196:                                              ; preds = %164, %167, %177, %184, %188
  %197 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %241

199:                                              ; preds = %196
  %200 = load ptr, ptr @h_i_d, align 8
  %201 = load i32, ptr %6, align 8, !tbaa !9
  %202 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %200, i32 noundef %201) #25
  %203 = getelementptr inbounds %struct._haifa_insn_data, ptr %202, i64 0, i32 8
  %204 = load i32, ptr %203, align 8, !tbaa !59
  %205 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %206 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %207 = getelementptr inbounds %struct.haifa_sched_info, ptr %206, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !128
  %209 = call ptr %208(ptr noundef nonnull %0, i32 noundef 0) #26
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef nonnull @.str.18, ptr noundef %209) #25
  %211 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %212 = icmp eq ptr %211, null
  br i1 %212, label %238, label %213

213:                                              ; preds = %199
  %214 = getelementptr inbounds %struct.spec_info_def, ptr %211, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !183
  %216 = icmp eq ptr %215, null
  br i1 %216, label %238, label %217

217:                                              ; preds = %213
  %218 = and i32 %204, 63
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = call i64 @fwrite(ptr nonnull @.str.19, i64 12, i64 1, ptr nonnull %215)
  br label %222

222:                                              ; preds = %220, %217
  %223 = and i32 %204, 258048
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %227 = getelementptr inbounds %struct.spec_info_def, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !183
  %229 = call i64 @fwrite(ptr nonnull @.str.20, i64 15, i64 1, ptr %228)
  br label %230

230:                                              ; preds = %225, %222
  %231 = and i32 %204, 16515072
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %235 = getelementptr inbounds %struct.spec_info_def, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !183
  %237 = call i64 @fwrite(ptr nonnull @.str.21, i64 18, i64 1, ptr %236)
  br label %238

238:                                              ; preds = %230, %233, %213, %199
  %239 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %240 = call i32 @fputc(i32 10, ptr %239)
  br label %241

241:                                              ; preds = %238, %196
  call fastcc void @adjust_priority(ptr noundef nonnull %0) #25
  %242 = call fastcc i32 @fix_tick_ready(ptr noundef nonnull %0) #25
  br label %243

243:                                              ; preds = %241, %163
  %244 = phi i32 [ -1, %163 ], [ %242, %241 ]
  ret i32 %244
}

; Function Attrs: optsize
declare zeroext i8 @sd_lists_empty_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #18 {
  store i32 %2, ptr %0, align 8, !tbaa !195
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !197
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %5, align 8, !tbaa !198
  %6 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !199
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !200
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  store ptr %10, ptr %1, align 8, !tbaa !12
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !195
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !197
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #26
  %18 = load ptr, ptr %3, align 8, !tbaa !12
  store ptr %18, ptr %4, align 8, !tbaa !198
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %23

21:                                               ; preds = %14
  %22 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %24

23:                                               ; preds = %20, %11
  store ptr null, ptr %1, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %21, %23, %8
  %25 = phi i8 [ 1, %8 ], [ 0, %23 ], [ %22, %21 ]
  ret i8 %25
}

; Function Attrs: optsize
declare i32 @ds_merge(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !198
  ret void
}

; Function Attrs: optsize
declare i32 @ds_weak(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @haifa_speculate_insn(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @sched_deps_info, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4, i64 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %0) #26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %23

15:                                               ; preds = %9
  %16 = load ptr, ptr @h_i_d, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !9
  %19 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %16, i32 noundef %18) #25
  %20 = getelementptr inbounds %struct._haifa_insn_data, ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !140
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %12, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4836, ptr noundef nonnull @.str.3) #26
  br label %24

24:                                               ; preds = %12, %15, %23
  %25 = load ptr, ptr @h_d_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !9
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %26, i32 noundef %28) #25
  %30 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %25, i32 noundef %29) #25
  %31 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !202
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i32 @sched_speculate_insn(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #25
  br label %40

40:                                               ; preds = %24, %34, %38
  %41 = phi i32 [ %39, %38 ], [ -1, %34 ], [ -1, %24 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @haifa_change_pattern(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @sched_change_pattern(ptr noundef %0, ptr noundef %1) #25
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %3, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._haifa_insn_data, ptr %6, i64 0, i32 5
  store i16 -1, ptr %7, align 4, !tbaa !18
  %8 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %9 = xor i32 %8, -1
  %10 = load i32, ptr %4, align 8, !tbaa !9
  %11 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %3, i32 noundef %10) #25
  %12 = getelementptr inbounds %struct._haifa_insn_data, ptr %11, i64 0, i32 2
  store i32 %9, ptr %12, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_queue_index(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %3, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._haifa_insn_data, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = icmp sgt i32 %1, -3
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %12 = icmp sge i32 %11, %1
  %13 = icmp ne i32 %1, 0
  %14 = and i1 %13, %12
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3889, ptr noundef nonnull @.str.3) #26
  br label %16

16:                                               ; preds = %10, %15
  %17 = icmp eq i32 %8, -3
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3890, ptr noundef nonnull @.str.3) #26
  br label %19

19:                                               ; preds = %16, %18
  %20 = icmp sgt i32 %1, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load i32, ptr @q_ptr, align 4, !tbaa !5
  %23 = add nsw i32 %22, %1
  %24 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, %8
  br i1 %26, label %60, label %31

27:                                               ; preds = %19
  %28 = icmp ne i32 %1, 0
  %29 = icmp eq i32 %8, %1
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %60, label %31

31:                                               ; preds = %21, %27
  %32 = icmp eq i32 %8, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call fastcc void @ready_remove_insn(ptr noundef nonnull %0) #25
  br label %37

34:                                               ; preds = %31
  %35 = icmp sgt i32 %8, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call fastcc void @queue_remove(ptr noundef nonnull %0) #25
  br label %37

37:                                               ; preds = %34, %36, %33
  %38 = icmp eq i32 %1, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call fastcc void @ready_add(ptr noundef nonnull %0, i8 noundef zeroext 0) #25
  br label %42

40:                                               ; preds = %37
  br i1 %20, label %41, label %42

41:                                               ; preds = %40
  tail call fastcc void @queue_insn(ptr noundef nonnull %0, i32 noundef %1) #25
  br label %42

42:                                               ; preds = %40, %41, %39
  %43 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %47 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %48 = getelementptr inbounds %struct.haifa_sched_info, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !128
  %50 = tail call ptr %49(ptr noundef nonnull %0, i32 noundef 0) #26
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.46, ptr noundef %50) #25
  %52 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  br i1 %38, label %53, label %55

53:                                               ; preds = %45
  %54 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 12, i64 1, ptr %52)
  br label %60

55:                                               ; preds = %45
  br i1 %20, label %56, label %58

56:                                               ; preds = %55
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.48, i32 noundef %1) #25
  br label %60

58:                                               ; preds = %55
  %59 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 35, i64 1, ptr %52)
  br label %60

60:                                               ; preds = %42, %56, %58, %53, %21, %27
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_priority(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 1), align 8, !tbaa !204
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !42
  %11 = tail call i32 %2(ptr noundef %0, i32 noundef %10) #26
  %12 = load ptr, ptr @h_i_d, align 8
  %13 = load i32, ptr %6, align 8, !tbaa !9
  %14 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %12, i32 noundef %13) #25
  %15 = getelementptr inbounds %struct._haifa_insn_data, ptr %14, i64 0, i32 1
  store i32 %11, ptr %15, align 4, !tbaa !42
  br label %16

16:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @fix_tick_ready(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = tail call zeroext i8 @sd_lists_empty_p(ptr noundef %0, i32 noundef 8) #26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %7 = load ptr, ptr @h_i_d, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !9
  %10 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %7, i32 noundef %9) #25
  %11 = getelementptr inbounds %struct._haifa_insn_data, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %14 = xor i32 %13, %12
  %15 = icmp eq i32 %14, -1
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 8) #25
  %16 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %6
  %19 = sub nsw i32 0, %13
  br label %20

20:                                               ; preds = %18, %42
  %21 = phi i32 [ %12, %18 ], [ %41, %42 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !12
  %23 = load ptr, ptr %22, align 8, !tbaa !23
  %24 = load ptr, ptr @h_i_d, align 8
  %25 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !9
  %27 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %24, i32 noundef %26) #25
  %28 = getelementptr inbounds %struct._haifa_insn_data, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = icmp slt i32 %29, %19
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3856, ptr noundef nonnull @.str.3) #26
  %32 = load ptr, ptr @h_i_d, align 8
  %33 = load i32, ptr %25, align 8, !tbaa !9
  %34 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %32, i32 noundef %33) #25
  br label %35

35:                                               ; preds = %20, %31
  %36 = phi ptr [ %27, %20 ], [ %34, %31 ]
  %37 = getelementptr inbounds %struct._haifa_insn_data, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !58
  %39 = call i32 @dep_cost(ptr noundef nonnull %22) #25
  %40 = add nsw i32 %39, %38
  %41 = call i32 @llvm.smax.i32(i32 %40, i32 %21)
  br i1 %15, label %42, label %45

42:                                               ; preds = %35
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %43 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %20, !llvm.loop !205

45:                                               ; preds = %42, %35, %6
  %46 = phi i32 [ %12, %6 ], [ %41, %35 ], [ %41, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  br label %47

47:                                               ; preds = %1, %45
  %48 = phi i32 [ %46, %45 ], [ -1, %1 ]
  %49 = load ptr, ptr @h_i_d, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !9
  %52 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %49, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_insn_data, ptr %52, i64 0, i32 2
  store i32 %48, ptr %53, align 8, !tbaa !58
  %54 = load i32, ptr @clock_var, align 4, !tbaa !5
  %55 = sub nsw i32 %48, %54
  %56 = icmp slt i32 %55, 1
  %57 = load i8, ptr @sched_pressure_p, align 1
  %58 = icmp ne i8 %57, 0
  %59 = select i1 %56, i1 true, i1 %58
  %60 = select i1 %59, i32 -1, i32 %55
  call fastcc void @change_queue_index(ptr noundef %0, i32 noundef %60) #25
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_extend_ready_list(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !5
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 0, ptr @sched_ready_n_insns, align 4, !tbaa !5
  br label %7

5:                                                ; preds = %1
  %6 = add nuw nsw i32 %2, 1
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i32 [ 0, %4 ], [ %6, %5 ]
  %9 = load i32, ptr @issue_rate, align 4, !tbaa !5
  %10 = add nsw i32 %9, %0
  store i32 %10, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %11 = load ptr, ptr @ready, align 8, !tbaa !45
  %12 = sext i32 %10 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %13) #26
  store ptr %14, ptr @ready, align 8, !tbaa !45
  %15 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !5
  %16 = icmp sgt i32 %15, %0
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3944, ptr noundef nonnull @.str.3) #26
  %18 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %15, %7 ], [ %18, %17 ]
  %21 = load ptr, ptr @ready_try, align 8, !tbaa !12
  %22 = sext i32 %0 to i64
  %23 = sext i32 %20 to i64
  %24 = tail call ptr @xrecalloc(ptr noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef 1) #25
  store ptr %24, ptr @ready_try, align 8, !tbaa !12
  %25 = load ptr, ptr @choice_stack, align 8, !tbaa !12
  %26 = add i32 %0, 1
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 24
  %29 = tail call ptr @xrealloc(ptr noundef %25, i64 noundef %28) #26
  store ptr %29, ptr @choice_stack, align 8, !tbaa !12
  %30 = icmp sgt i32 %8, %0
  br i1 %30, label %42, label %31

31:                                               ; preds = %19
  %32 = sext i32 %8 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ %32, %31 ], [ %39, %33 ]
  %35 = load i64, ptr @dfa_state_size, align 8, !tbaa !89
  %36 = tail call ptr @xmalloc(i64 noundef %35) #26
  %37 = load ptr, ptr @choice_stack, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.choice_entry, ptr %37, i64 %34, i32 3
  store ptr %36, ptr %38, align 8, !tbaa !87
  %39 = add nsw i64 %34, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %26, %40
  br i1 %41, label %42, label %33, !llvm.loop !206

42:                                               ; preds = %33, %19
  store i32 %0, ptr @sched_ready_n_insns, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @xrecalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, %2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4222, ptr noundef nonnull @.str.3) #26
  br label %7

7:                                                ; preds = %4, %6
  %8 = mul i64 %3, %1
  %9 = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %8) #26
  %10 = mul i64 %3, %2
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = sub i64 %1, %2
  %13 = mul i64 %12, %3
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %13, i1 false)
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_finish_ready_list() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ready, align 8, !tbaa !45
  tail call void @free(ptr noundef %1) #25
  store ptr null, ptr @ready, align 8, !tbaa !45
  store i32 0, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 1), align 8, !tbaa !97
  %2 = load ptr, ptr @ready_try, align 8, !tbaa !12
  tail call void @free(ptr noundef %2) #25
  store ptr null, ptr @ready_try, align 8, !tbaa !12
  %3 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !5
  %4 = icmp slt i32 %3, 0
  %5 = load ptr, ptr @choice_stack, align 8, !tbaa !12
  br i1 %4, label %15, label %6

6:                                                ; preds = %0
  %7 = add nuw i32 %3, 1
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %13, %9 ]
  %11 = getelementptr inbounds %struct.choice_entry, ptr %5, i64 %10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !87
  tail call void @free(ptr noundef %12) #25
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %15, label %9, !llvm.loop !207

15:                                               ; preds = %9, %0
  tail call void @free(ptr noundef %5) #25
  store ptr null, ptr @choice_stack, align 8, !tbaa !12
  store i32 -1, ptr @sched_ready_n_insns, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_fallthru_edge(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4238, ptr noundef nonnull @.str.3) #26
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  %13 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %12) #25
  %14 = load ptr, ptr %5, align 8, !tbaa !210
  %15 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %14) #25
  %16 = icmp ugt i32 %13, %15
  store i32 0, ptr %3, align 8
  %17 = getelementptr inbounds i8, ptr %3, i64 8
  br i1 %16, label %37, label %18

18:                                               ; preds = %10
  %19 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #25
  store ptr %19, ptr %17, align 8, !tbaa.struct !211
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %2) #25, !range !17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %18, %32
  %23 = load ptr, ptr %2, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !212
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !182
  %31 = icmp eq ptr %30, %5
  br i1 %31, label %58, label %55

32:                                               ; preds = %22
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %33 = load i32, ptr %3, align 8
  %34 = load ptr, ptr %17, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %2) #25, !range !17
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %58, label %22, !llvm.loop !213

37:                                               ; preds = %10
  %38 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #25
  store ptr %38, ptr %17, align 8, !tbaa.struct !211
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %38, ptr noundef nonnull %2) #25, !range !17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %37, %50
  %42 = load ptr, ptr %2, align 8, !tbaa !12
  %43 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !212
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %42, align 8, !tbaa !180
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %58, label %55

50:                                               ; preds = %41
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %51 = load i32, ptr %3, align 8
  %52 = load ptr, ptr %17, align 8
  %53 = call fastcc zeroext i8 @ei_cond(i32 %51, ptr %52, ptr noundef nonnull %2) #25, !range !17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %41, !llvm.loop !214

55:                                               ; preds = %47, %28
  %56 = phi i32 [ 4245, %28 ], [ 4254, %47 ]
  %57 = phi ptr [ %23, %28 ], [ %42, %47 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef %56, ptr noundef nonnull @.str.3) #26
  br label %58

58:                                               ; preds = %32, %50, %55, %18, %37, %47, %28
  %59 = phi ptr [ %23, %28 ], [ %42, %47 ], [ null, %37 ], [ null, %18 ], [ %57, %55 ], [ null, %50 ], [ null, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret ptr %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #20 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !215
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #25, !range !17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #25
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !12
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #25
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #25
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 738, ptr noundef nonnull @.str.3) #26
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !217
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !217
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_extend_bb() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %0
  %16 = load i32, ptr %11, align 8
  %17 = and i32 %16, 65534
  %18 = icmp eq i32 %17, 12
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %36, label %23

23:                                               ; preds = %19, %0
  %24 = tail call ptr @emit_note_after(i32 noundef 0, ptr noundef nonnull %11) #26
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !9
  %26 = load ptr, ptr @cfun, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !132
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !208
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  store ptr %11, ptr %35, align 8, !tbaa !68
  br label %36

36:                                               ; preds = %15, %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sched_create_recovery_block(ptr noundef %0) local_unnamed_addr #0 {
  store i1 true, ptr @haifa_recovery_bb_recently_added_p, align 1
  store i8 1, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !9
  tail call fastcc void @init_before_recovery(ptr noundef %0) #25
  %2 = load ptr, ptr @before_recovery, align 8, !tbaa !12
  %3 = tail call ptr @get_last_bb_insn(ptr noundef %2) #26
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 11
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4382, ptr noundef nonnull @.str.3) #26
  br label %8

8:                                                ; preds = %1, %7
  %9 = tail call ptr @gen_label_rtx() #26
  %10 = tail call ptr @emit_label_after(ptr noundef %9, ptr noundef nonnull %3) #26
  %11 = load ptr, ptr @before_recovery, align 8, !tbaa !12
  %12 = tail call ptr @create_basic_block(ptr noundef %10, ptr noundef %10, ptr noundef %11) #26
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.rtl_bb_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = tail call ptr @emit_barrier_after(ptr noundef %16) #26
  %18 = load ptr, ptr @before_recovery, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !219
  %21 = and i32 %20, 96
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !219
  %26 = and i32 %25, -97
  %27 = or disjoint i32 %26, 64
  store i32 %27, ptr %24, align 8, !tbaa !219
  br label %28

28:                                               ; preds = %23, %8
  %29 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %33 = getelementptr inbounds %struct.spec_info_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !183
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !125
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.23, i32 noundef %38) #25
  br label %40

40:                                               ; preds = %36, %31, %28
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_before_recovery(ptr noundef writeonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = tail call ptr @find_fallthru_edge(ptr noundef %8) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %94, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @after_recovery, align 8, !tbaa !12
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %95, label %14

14:                                               ; preds = %11
  store i8 0, ptr @adding_bb_to_current_region_p, align 1, !tbaa !9
  %15 = load ptr, ptr @sched_create_empty_bb, align 8, !tbaa !12
  %16 = tail call ptr %15(ptr noundef %8) #26
  %17 = load ptr, ptr @sched_create_empty_bb, align 8, !tbaa !12
  %18 = tail call ptr %17(ptr noundef %16) #26
  %19 = load ptr, ptr @cfun, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !220
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.loops, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !221
  %26 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %25) #25
  tail call void @add_bb_to_loop(ptr noundef %16, ptr noundef %26) #26
  %27 = load ptr, ptr @cfun, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !220
  %30 = getelementptr inbounds %struct.loops, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !221
  %32 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %31) #25
  tail call void @add_bb_to_loop(ptr noundef %18, ptr noundef %32) #26
  br label %33

33:                                               ; preds = %23, %14
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !223
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 8
  store i64 %35, ptr %36, align 8, !tbaa !223
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 8
  store i64 %35, ptr %37, align 8, !tbaa !223
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !224
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 11
  store i32 %39, ptr %40, align 8, !tbaa !224
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  store i32 %39, ptr %41, align 8, !tbaa !224
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !219
  %44 = and i32 %43, -97
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !219
  %47 = and i32 %46, 96
  %48 = or disjoint i32 %47, %44
  store i32 %48, ptr %42, align 8, !tbaa !219
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !219
  %51 = and i32 %50, -97
  %52 = load i32, ptr %45, align 8, !tbaa !219
  %53 = and i32 %52, 96
  %54 = or disjoint i32 %53, %51
  store i32 %54, ptr %49, align 8, !tbaa !219
  tail call void @redirect_edge_succ(ptr noundef nonnull %9, ptr noundef %16) #26
  %55 = tail call ptr @make_single_succ_edge(ptr noundef %16, ptr noundef %18, i32 noundef 0) #26
  %56 = load ptr, ptr @cfun, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !130
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !132
  %61 = tail call ptr @make_single_succ_edge(ptr noundef %18, ptr noundef %60, i32 noundef 65) #26
  %62 = tail call ptr @block_label(ptr noundef %18) #26
  %63 = tail call ptr @gen_jump(ptr noundef %62) #26
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = getelementptr inbounds %struct.rtl_bb_info, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !68
  %68 = tail call ptr @emit_jump_insn_after(ptr noundef %63, ptr noundef %67) #26
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %62, ptr %69, align 8, !tbaa !9
  %70 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !9
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %70, align 8, !tbaa !9
  tail call fastcc void @haifa_init_insn(ptr noundef %68) #25
  %73 = tail call ptr @emit_barrier_after(ptr noundef %68) #26
  %74 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !12
  tail call void %74(ptr noundef %18, ptr noundef null) #26
  %75 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !12
  tail call void %75(ptr noundef %16, ptr noundef null) #26
  tail call fastcc void @sched_extend_bb() #25
  store i8 1, ptr @adding_bb_to_current_region_p, align 1, !tbaa !9
  store ptr %16, ptr @before_recovery, align 8, !tbaa !12
  store ptr %18, ptr @after_recovery, align 8, !tbaa !12
  %76 = icmp eq ptr %0, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %33
  store ptr %16, ptr %0, align 8, !tbaa !12
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %83 = getelementptr inbounds %struct.spec_info_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !183
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !125
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !125
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !125
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %84, ptr noundef nonnull @.str.54, i32 noundef %88, i32 noundef %90, i32 noundef %92) #25
  br label %95

94:                                               ; preds = %1
  store ptr %8, ptr @before_recovery, align 8, !tbaa !12
  br label %95

95:                                               ; preds = %86, %81, %78, %11, %94
  ret void
}

; Function Attrs: optsize
declare ptr @get_last_bb_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_label_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_create_recovery_edges(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !219
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !219
  %8 = xor i32 %7, %5
  %9 = and i32 %8, 96
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 8192
  %12 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %1, i32 noundef %11) #26
  %13 = tail call ptr @block_label(ptr noundef %2) #26
  %14 = tail call ptr @gen_jump(ptr noundef %13) #26
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.rtl_bb_info, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = tail call ptr @emit_jump_insn_after(ptr noundef %14, ptr noundef %18) #26
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %13, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !9
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !219
  %26 = load i32, ptr %6, align 8, !tbaa !219
  %27 = xor i32 %26, %25
  %28 = and i32 %27, 96
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %3
  %31 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !5
  %32 = icmp ne i32 %31, 0
  %33 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %34 = icmp ne i8 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @add_reg_note(ptr noundef nonnull %19, i32 noundef 29, ptr noundef null) #26
  br label %37

37:                                               ; preds = %3, %30, %36
  %38 = phi i32 [ 8192, %36 ], [ 8192, %30 ], [ 0, %3 ]
  %39 = tail call ptr @make_single_succ_edge(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %38) #26
  ret void
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_jump_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_single_succ_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_change_pattern(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 0) #26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4794, ptr noundef nonnull @.str.3) #26
  br label %7

7:                                                ; preds = %2, %6
  tail call void @dfa_clear_single_insn_cache(ptr noundef %0) #26
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dfa_clear_single_insn_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @sched_speculate_insn(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.haifa_sched_info, ptr %4, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !190
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %1, 16777215
  %10 = icmp eq i32 %9, 0
  %11 = or i1 %10, %8
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %0, i32 noundef %1) #26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4820, ptr noundef nonnull @.str.3) #26
  br label %16

16:                                               ; preds = %12, %15
  %17 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %18 = load i32, ptr %17, align 8, !tbaa !165
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
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 28), align 8, !tbaa !225
  %29 = tail call i32 %28(ptr noundef %0, i32 noundef %1, ptr noundef %2) #26
  br label %30

30:                                               ; preds = %21, %16, %27
  %31 = phi i32 [ %29, %27 ], [ -1, %16 ], [ 0, %21 ]
  ret i32 %31
}

; Function Attrs: optsize
declare zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unlink_bb_notes(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @cfun, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !226
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #26
  store ptr %12, ptr @bb_header, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = load ptr, ptr @cfun, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !132
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !125
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %12, i64 %24
  store ptr null, ptr %25, align 8, !tbaa !12
  br label %26

26:                                               ; preds = %21, %4
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  br label %29

29:                                               ; preds = %69, %26
  %30 = phi ptr [ %1, %26 ], [ %71, %69 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = load ptr, ptr %32, align 8, !tbaa !77
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = load i32, ptr %39, align 8
  br label %41

41:                                               ; preds = %29, %37
  %42 = phi i32 [ %40, %37 ], [ %34, %29 ]
  %43 = phi ptr [ %39, %37 ], [ %33, %29 ]
  %44 = and i32 %42, 65535
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1
  %48 = load i32, ptr %47, align 8, !tbaa !9
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4897, ptr noundef nonnull @.str.3) #26
  br label %51

51:                                               ; preds = %46, %50
  %52 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = icmp ne ptr %53, null
  %57 = icmp ne ptr %55, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4901, ptr noundef nonnull @.str.3) #26
  br label %60

60:                                               ; preds = %51, %59
  %61 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %55, ptr %61, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %53, ptr %62, align 8, !tbaa !9
  %63 = load ptr, ptr @bb_header, align 8, !tbaa !12
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !125
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  store ptr %33, ptr %67, align 8, !tbaa !12
  %68 = icmp eq ptr %30, %28
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !208
  br label %29

72:                                               ; preds = %60, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_scan(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr @sched_scan_info, align 8, !tbaa !12
  %9 = icmp ne ptr %1, null
  %10 = icmp ne ptr %2, null
  %11 = or i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call fastcc void @extend_insn() #25
  br label %39

13:                                               ; preds = %5
  tail call fastcc void @extend_bb() #25
  br i1 %9, label %14, label %24

14:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %15 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %6) #25, !range !185
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %20, %17 ], [ 0, %14 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !12
  tail call fastcc void @init_bb(ptr noundef %19) #25
  %20 = add i32 %18, 1
  %21 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef nonnull %1, i32 noundef %20, ptr noundef nonnull %6) #25, !range !185
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %17, !llvm.loop !227

23:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  br label %24

24:                                               ; preds = %23, %13
  br i1 %10, label %25, label %26

25:                                               ; preds = %24
  tail call fastcc void @init_bb(ptr noundef nonnull %2) #25
  br label %26

26:                                               ; preds = %24, %25
  tail call fastcc void @extend_insn() #25
  br i1 %9, label %27, label %37

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %28 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %7) #25, !range !185
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %30
  %31 = phi i32 [ %33, %30 ], [ 0, %27 ]
  %32 = load ptr, ptr %7, align 8, !tbaa !12
  tail call fastcc void @init_insns_in_bb(ptr noundef %32) #25
  %33 = add i32 %31, 1
  %34 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef nonnull %1, i32 noundef %33, ptr noundef nonnull %7) #25, !range !185
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %30, !llvm.loop !228

36:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  br label %37

37:                                               ; preds = %36, %26
  br i1 %10, label %38, label %39

38:                                               ; preds = %37
  tail call fastcc void @init_insns_in_bb(ptr noundef nonnull %2) #25
  br label %39

39:                                               ; preds = %12, %38, %37
  %40 = icmp eq ptr %3, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  %42 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %8) #25, !range !185
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %44
  %45 = phi i32 [ %47, %44 ], [ 0, %41 ]
  %46 = load ptr, ptr %8, align 8, !tbaa !12
  tail call fastcc void @init_insn(ptr noundef %46) #25
  %47 = add i32 %45, 1
  %48 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef nonnull %3, i32 noundef %47, ptr noundef nonnull %8) #25, !range !185
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %44, !llvm.loop !229

50:                                               ; preds = %44, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  br label %51

51:                                               ; preds = %50, %39
  %52 = icmp eq ptr %4, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  tail call fastcc void @init_insn(ptr noundef nonnull %4) #25
  br label %54

54:                                               ; preds = %53, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extend_bb() unnamed_addr #0 {
  %1 = load ptr, ptr @sched_scan_info, align 8, !tbaa !12
  %2 = load ptr, ptr %1, align 8, !tbaa !230
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void %2() #26
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = load i32, ptr %0, align 8, !tbaa !176
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi ptr [ %9, %6 ], [ null, %3 ]
  %12 = phi i32 [ 1, %6 ], [ 0, %3 ]
  store ptr %11, ptr %2, align 8, !tbaa !12
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_scan_info, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.sched_scan_info_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !232
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #26
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extend_insn() unnamed_addr #0 {
  %1 = load ptr, ptr @sched_scan_info, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.sched_scan_info_def, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !233
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void %3() #26
  br label %6

6:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_insns_in_bb(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.rtl_bb_info, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  tail call fastcc void @init_insn(ptr noundef nonnull %7) #25
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !234

18:                                               ; preds = %6, %14, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !235
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !12
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_insn(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_scan_info, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.sched_scan_info_def, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #26
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @luids_extend_insn() #0 {
  %1 = tail call i32 @get_max_uid() #26
  %2 = add nsw i32 %1, 1
  tail call fastcc void @VEC_int_heap_safe_grow_cleared(i32 noundef %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @luids_init_insn(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.common_sched_info_def, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !238
  %10 = tail call i32 %9(ptr noundef nonnull %0) #26
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1, %6
  %13 = phi i32 [ %10, %6 ], [ 1, %1 ]
  %14 = load i32, ptr @sched_max_luid, align 4, !tbaa !5
  %15 = add nsw i32 %14, %13
  store i32 %15, ptr @sched_max_luid, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %6, %12
  %17 = phi i32 [ %14, %12 ], [ -1, %6 ]
  %18 = load ptr, ptr @sched_luids, align 8
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !9
  tail call fastcc void @VEC_int_base_replace(ptr noundef %18, i32 noundef %20, i32 noundef %17) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free() unnamed_addr #16 {
  %1 = load ptr, ptr @sched_luids, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @sched_luids, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @insn_luid(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %4) #25
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #20 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !5
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @extend_h_i_d() #0 {
  %1 = tail call i32 @get_max_uid() #26
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = tail call fastcc i32 @VEC_haifa_insn_data_def_base_length(ptr noundef %3) #25
  %5 = sub i32 %2, %4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = tail call fastcc i32 @VEC_haifa_insn_data_def_base_space(ptr noundef %3, i32 noundef %5) #25, !range !185
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @get_max_uid() #26
  %12 = mul nsw i32 %11, 3
  %13 = sdiv i32 %12, 2
  tail call fastcc void @VEC_haifa_insn_data_def_heap_safe_grow_cleared(i32 noundef %13) #25
  tail call void @sched_extend_target() #25
  br label %14

14:                                               ; preds = %10, %7, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @init_h_i_d(ptr nocapture noundef readonly %0) #21 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %4) #25
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load ptr, ptr @h_i_d, align 8
  %9 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %8, i32 noundef %4) #25
  %10 = getelementptr inbounds %struct._haifa_insn_data, ptr %9, i64 0, i32 5
  store i16 -1, ptr %10, align 4, !tbaa !18
  %11 = load i32, ptr %3, align 8, !tbaa !9
  %12 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %8, i32 noundef %11) #25
  %13 = getelementptr inbounds %struct._haifa_insn_data, ptr %12, i64 0, i32 4
  store i32 -2, ptr %13, align 8, !tbaa !118
  %14 = load i32, ptr @max_insn_queue_index, align 4, !tbaa !5
  %15 = xor i32 %14, -1
  %16 = load i32, ptr %3, align 8, !tbaa !9
  %17 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %8, i32 noundef %16) #25
  %18 = getelementptr inbounds %struct._haifa_insn_data, ptr %17, i64 0, i32 2
  store i32 %15, ptr %18, align 8, !tbaa !58
  %19 = load i32, ptr %3, align 8, !tbaa !9
  %20 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %8, i32 noundef %19) #25
  %21 = getelementptr inbounds %struct._haifa_insn_data, ptr %20, i64 0, i32 3
  store i32 %15, ptr %21, align 4, !tbaa !157
  %22 = load i32, ptr %3, align 8, !tbaa !9
  %23 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %8, i32 noundef %22) #25
  %24 = getelementptr inbounds %struct._haifa_insn_data, ptr %23, i64 0, i32 8
  store i32 134217728, ptr %24, align 8, !tbaa !59
  br label %25

25:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_haifa_insn_data_def_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !239
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !12
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_haifa_insn_data_def_heap_free() unnamed_addr #16 {
  %1 = load ptr, ptr @h_i_d, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @h_i_d, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @sched_emit_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @last_scheduled_insn, align 8, !tbaa !12
  %3 = tail call ptr @emit_insn_after(ptr noundef %0, ptr noundef %2) #26
  store ptr %3, ptr @last_scheduled_insn, align 8, !tbaa !12
  tail call fastcc void @haifa_init_insn(ptr noundef %3) #25
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @haifa_init_insn(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5495, ptr noundef nonnull @.str.3) #26
  br label %4

4:                                                ; preds = %1, %3
  tail call void @sched_init_luids(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %0) #25
  tail call void @sched_extend_target() #25
  tail call void @sched_deps_init(i8 noundef zeroext 0) #26
  tail call void @haifa_init_h_i_d(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %0) #25
  %5 = load i8, ptr @adding_bb_to_current_region_p, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @sd_init_insn(ptr noundef %0) #26
  tail call void @extend_dependency_caches(i32 noundef 1, i8 noundef zeroext 0) #26
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @may_trap_exp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %94, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %1, 0
  %8 = icmp eq i32 %6, 43
  br i1 %7, label %14, label %9

9:                                                ; preds = %4
  br i1 %8, label %10, label %13

10:                                               ; preds = %9
  %11 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %94

13:                                               ; preds = %10, %9
  br label %94

14:                                               ; preds = %4
  br i1 %8, label %15, label %45

15:                                               ; preds = %14
  %16 = and i32 %5, 134217728
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %94

18:                                               ; preds = %15
  %19 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #26
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %94, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %44 [
    i16 37, label %94
    i16 49, label %26
    i16 50, label %26
    i16 122, label %26
  ]

26:                                               ; preds = %21, %21, %21
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %94, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !5
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %94, label %44

44:                                               ; preds = %21, %35
  br label %94

45:                                               ; preds = %14
  %46 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #26
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %45
  %49 = zext nneg i32 %6 to i64
  %50 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !12
  %52 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %53 to i64
  br label %56

56:                                               ; preds = %90, %48
  %57 = phi i64 [ %59, %90 ], [ %55, %48 ]
  %58 = phi i32 [ %91, %90 ], [ 0, %48 ]
  %59 = add nsw i64 %57, -1
  %60 = icmp sgt i64 %57, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %51, i64 %59
  %63 = load i8, ptr %62, align 1, !tbaa !9
  switch i8 %63, label %90 [
    i8 101, label %69
    i8 69, label %64
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %59
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = load i32, ptr %66, align 8, !tbaa !10
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %80, label %90

69:                                               ; preds = %61
  %70 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %59
  %71 = load ptr, ptr %70, align 8, !tbaa !9
  %72 = tail call fastcc i32 @may_trap_exp(ptr noundef %71, i32 noundef 0) #25, !range !16
  %73 = tail call i32 @llvm.smax.i32(i32 %58, i32 %72)
  br label %90

74:                                               ; preds = %80
  %75 = add nuw nsw i64 %81, 1
  %76 = load ptr, ptr %65, align 8, !tbaa !9
  %77 = load i32, ptr %76, align 8, !tbaa !10
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %90, !llvm.loop !241

80:                                               ; preds = %64, %74
  %81 = phi i64 [ %75, %74 ], [ 0, %64 ]
  %82 = phi ptr [ %76, %74 ], [ %66, %64 ]
  %83 = phi i32 [ %87, %74 ], [ %58, %64 ]
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %81
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = tail call fastcc i32 @may_trap_exp(ptr noundef %85, i32 noundef 0) #25, !range !16
  %87 = tail call i32 @llvm.smax.i32(i32 %83, i32 %86)
  %88 = and i32 %87, 2147483646
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %74

90:                                               ; preds = %74, %80, %64, %61, %69
  %91 = phi i32 [ %73, %69 ], [ %58, %61 ], [ %58, %64 ], [ %87, %80 ], [ %87, %74 ]
  %92 = and i32 %91, -2
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %56, !llvm.loop !242

94:                                               ; preds = %90, %56, %45, %26, %35, %21, %18, %15, %10, %2, %44, %13
  %95 = phi i32 [ 0, %13 ], [ 3, %44 ], [ 0, %2 ], [ 5, %10 ], [ 4, %15 ], [ 1, %18 ], [ 2, %21 ], [ 2, %35 ], [ 2, %26 ], [ 5, %45 ], [ %58, %56 ], [ %91, %90 ]
  ret i32 %95
}

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @dying_use_p(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.reg_use_data, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @h_i_d, align 8
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi ptr [ %3, %5 ], [ %24, %22 ]
  %9 = getelementptr inbounds %struct.reg_use_data, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -11
  %14 = icmp ult i32 %13, -3
  br i1 %14, label %22, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %6, i32 noundef %17) #25
  %19 = getelementptr inbounds %struct._haifa_insn_data, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !118
  %21 = icmp eq i32 %20, -3
  br i1 %21, label %22, label %26

22:                                               ; preds = %7, %15
  %23 = getelementptr inbounds %struct.reg_use_data, ptr %8, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !243
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %7, !llvm.loop !245

26:                                               ; preds = %15, %22, %1
  %27 = phi i8 [ 1, %1 ], [ 1, %22 ], [ 0, %15 ]
  ret i8 %27
}

; Function Attrs: optsize
declare ptr @sd_find_dep_between(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dep_list_size(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @sd_lists_size(ptr noundef %0, i32 noundef 4) #26
  br label %41

8:                                                ; preds = %1
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 4) #25
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %8, %29
  %12 = phi i32 [ %31, %29 ], [ 0, %8 ]
  %13 = phi i32 [ %30, %29 ], [ 0, %8 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct._dep, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = add nsw i32 %13, 1
  br label %29

22:                                               ; preds = %11
  %23 = load ptr, ptr %14, align 8, !tbaa !23
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp ne i32 %25, 7
  %27 = zext i1 %26 to i32
  %28 = add nsw i32 %12, %27
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi i32 [ %21, %20 ], [ %13, %22 ]
  %31 = phi i32 [ %12, %20 ], [ %28, %22 ]
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %32 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %11, !llvm.loop !246

34:                                               ; preds = %29, %8
  %35 = phi i32 [ 0, %8 ], [ %30, %29 ]
  %36 = phi i32 [ 0, %8 ], [ %31, %29 ]
  %37 = add nsw i32 %36, %35
  %38 = call i32 @sd_lists_size(ptr noundef %0, i32 noundef 4) #26
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 997, ptr noundef nonnull @.str.3) #26
  br label %41

41:                                               ; preds = %40, %34, %6
  %42 = phi i32 [ %7, %6 ], [ %36, %34 ], [ %36, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  ret i32 %42
}

; Function Attrs: optsize
declare i32 @sd_lists_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_ref_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %7 = icmp sgt i32 %6, 52
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @region_ref_regs, align 8, !tbaa !12
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %6) #26
  br label %63

11:                                               ; preds = %5
  %12 = sext i32 %6 to i64
  %13 = lshr i32 %2, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %12, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %11
  %20 = zext i8 %17 to i32
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i32 [ %23, %21 ], [ %20, %19 ]
  %23 = add nsw i32 %22, -1
  %24 = load ptr, ptr @region_ref_regs, align 8, !tbaa !12
  %25 = add nsw i32 %23, %6
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %25) #26
  %27 = icmp ugt i32 %22, 1
  br i1 %27, label %21, label %63, !llvm.loop !247

28:                                               ; preds = %1
  %29 = zext nneg i32 %3 to i64
  %30 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %29
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = zext i8 %33 to i64
  br label %38

38:                                               ; preds = %35, %61
  %39 = phi i64 [ %37, %35 ], [ %40, %61 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds i8, ptr %31, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !9
  switch i8 %42, label %61 [
    i8 101, label %48
    i8 69, label %43
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds [1 x %union.rtunion_def], ptr %36, i64 0, i64 %40
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = load i32, ptr %45, align 8, !tbaa !10
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %51, label %61

48:                                               ; preds = %38
  %49 = getelementptr inbounds [1 x %union.rtunion_def], ptr %36, i64 0, i64 %40
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  tail call fastcc void @setup_ref_regs(ptr noundef %50) #25
  br label %61

51:                                               ; preds = %43, %51
  %52 = phi i64 [ %56, %51 ], [ 0, %43 ]
  %53 = phi ptr [ %57, %51 ], [ %45, %43 ]
  %54 = getelementptr inbounds %struct.rtvec_def, ptr %53, i64 0, i32 1, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  tail call fastcc void @setup_ref_regs(ptr noundef %55) #25
  %56 = add nuw nsw i64 %52, 1
  %57 = load ptr, ptr %44, align 8, !tbaa !9
  %58 = load i32, ptr %57, align 8, !tbaa !10
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %51, label %61, !llvm.loop !248

61:                                               ; preds = %51, %43, %38, %48
  %62 = icmp sgt i64 %39, 1
  br i1 %62, label %38, label %63, !llvm.loop !249

63:                                               ; preds = %61, %21, %28, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initiate_reg_pressure_info(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  %4 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = zext nneg i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %14, %8 ]
  %10 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %12
  store i32 0, ptr %13, align 4, !tbaa !5
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %8, !llvm.loop !250

16:                                               ; preds = %8, %1
  %17 = load ptr, ptr @curr_reg_live, align 8, !tbaa !12
  tail call void @bitmap_clear(ptr noundef %17) #26
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #25
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #25, !range !17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16, %29
  %21 = load i32, ptr @current_nr_blocks, align 4, !tbaa !5
  %22 = icmp eq i32 %21, 1
  %23 = load i32, ptr %2, align 4, !tbaa !5
  br i1 %22, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @region_ref_regs, align 8, !tbaa !12
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %23) #26
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %20
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %23, i8 noundef zeroext 1) #25
  br label %29

29:                                               ; preds = %24, %28
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #25, !range !17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %20, !llvm.loop !251

32:                                               ; preds = %29, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  ret void
}

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #25
  store i32 0, ptr %3, align 8, !tbaa.struct !252
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !211
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #25, !range !17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !212
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #25
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #25, !range !17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !253

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i8 %20
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_regno_birth_or_death(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !12
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = icmp sgt i32 %0, 52
  %8 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %41

9:                                                ; preds = %2
  br i1 %8, label %61, label %10

10:                                               ; preds = %9
  %11 = icmp eq i8 %1, 0
  %12 = load ptr, ptr @curr_reg_live, align 8, !tbaa !12
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %13
  br i1 %11, label %28, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %0) #26
  %17 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !12
  %18 = getelementptr inbounds ptr, ptr %17, i64 %4
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %13, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !5
  %26 = load i32, ptr %14, align 4, !tbaa !5
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %14, align 4, !tbaa !5
  br label %61

28:                                               ; preds = %10
  %29 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %12, i32 noundef %0) #26
  %30 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !12
  %31 = getelementptr inbounds ptr, ptr %30, i64 %4
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %13, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !5
  %39 = load i32, ptr %14, align 4, !tbaa !5
  %40 = sub nsw i32 %39, %38
  store i32 %40, ptr %14, align 4, !tbaa !5
  br label %61

41:                                               ; preds = %2
  br i1 %8, label %61, label %42

42:                                               ; preds = %41
  %43 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !89
  %44 = zext nneg i32 %0 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %43, %45
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = icmp eq i8 %1, 0
  %50 = load ptr, ptr @curr_reg_live, align 8, !tbaa !12
  %51 = zext i32 %6 to i64
  %52 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %51
  br i1 %49, label %57, label %53

53:                                               ; preds = %48
  %54 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %50, i32 noundef %0) #26
  %55 = load i32, ptr %52, align 4, !tbaa !5
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %52, align 4, !tbaa !5
  br label %61

57:                                               ; preds = %48
  %58 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %50, i32 noundef %0) #26
  %59 = load i32, ptr %52, align 4, !tbaa !5
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %52, align 4, !tbaa !5
  br label %61

61:                                               ; preds = %41, %42, %57, %53, %9, %28, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !9
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #19 {
  %4 = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %4, ptr %0, align 8, !tbaa !256
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !258
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !256
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !259
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !261
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !262
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !262
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !263

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !5
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !5
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !261
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !256
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !261
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !89
  store i64 %35, ptr %3, align 8, !tbaa !262
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !5
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !5
  %40 = load i32, ptr %23, align 8, !tbaa !261
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !261
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !264

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !265
  store ptr %44, ptr %0, align 8, !tbaa !256
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !259
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !5
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !262
  store i32 %16, ptr %1, align 4, !tbaa !5
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !262
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !262
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_reg_pressure() unnamed_addr #0 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %13, %5 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds [27 x i32], ptr @saved_reg_pressure, i64 0, i64 %9
  store i32 %11, ptr %12, align 4, !tbaa !5
  %13 = add nuw nsw i64 %6, 1
  %14 = icmp eq i64 %13, %4
  br i1 %14, label %15, label %5, !llvm.loop !266

15:                                               ; preds = %5, %0
  %16 = load ptr, ptr @saved_reg_live, align 8, !tbaa !12
  %17 = load ptr, ptr @curr_reg_live, align 8, !tbaa !12
  tail call void @bitmap_copy(ptr noundef %16, ptr noundef %17) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_register_pressure(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_i_d, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %2, i32 noundef %4) #25
  %6 = getelementptr inbounds %struct._haifa_insn_data, ptr %5, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %1, %20
  %10 = phi ptr [ %22, %20 ], [ %7, %1 ]
  %11 = tail call fastcc zeroext i8 @dying_use_p(ptr noundef nonnull %10) #25, !range !17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @curr_reg_live, align 8, !tbaa !12
  %15 = load i32, ptr %10, align 8, !tbaa !49
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %14, i32 noundef %15) #26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr %10, align 8, !tbaa !49
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %19, i8 noundef zeroext 0) #25
  br label %20

20:                                               ; preds = %9, %13, %18
  %21 = getelementptr inbounds %struct.reg_use_data, ptr %10, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %9, !llvm.loop !267

24:                                               ; preds = %20
  %25 = load ptr, ptr @h_i_d, align 8
  %26 = load i32, ptr %3, align 8, !tbaa !9
  %27 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %25, i32 noundef %26) #25
  br label %28

28:                                               ; preds = %24, %1
  %29 = phi ptr [ %27, %24 ], [ %5, %1 ]
  %30 = getelementptr inbounds %struct._haifa_insn_data, ptr %29, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %37, %33 ], [ %31, %28 ]
  %35 = load i32, ptr %34, align 8, !tbaa !268
  tail call fastcc void @mark_regno_birth_or_death(i32 noundef %35, i8 noundef zeroext 1) #25
  %36 = getelementptr inbounds %struct.reg_set_data, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33, !llvm.loop !270

39:                                               ; preds = %33, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_reg_pressure() unnamed_addr #0 {
  %1 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %13, %5 ]
  %7 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [27 x i32], ptr @saved_reg_pressure, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %9
  store i32 %11, ptr %12, align 4, !tbaa !5
  %13 = add nuw nsw i64 %6, 1
  %14 = icmp eq i64 %13, %4
  br i1 %14, label %15, label %5, !llvm.loop !271

15:                                               ; preds = %5, %0
  %16 = load ptr, ptr @curr_reg_live, align 8, !tbaa !12
  %17 = load ptr, ptr @saved_reg_live, align 8, !tbaa !12
  tail call void @bitmap_copy(ptr noundef %16, ptr noundef %17) #26
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_jump_move(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.common_sched_info_def, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !21
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %30, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr @h_i_d, align 8
  %17 = load i32, ptr %15, align 8, !tbaa !9
  %18 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %16, i32 noundef %17) #25
  %19 = getelementptr inbounds %struct._haifa_insn_data, ptr %18, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr @cfun, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !132
  %28 = icmp eq ptr %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4969, ptr noundef nonnull @.str.3) #26
  br label %30

30:                                               ; preds = %1, %22, %29
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 13
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %40 = load i32, ptr %39, align 8, !tbaa !9
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %30
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  store ptr %34, ptr %45, align 8, !tbaa !68
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.rtl_bb_info, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !68
  %51 = load ptr, ptr %2, align 8, !tbaa !9
  %52 = icmp eq ptr %50, %51
  %53 = load ptr, ptr %31, align 8, !tbaa !9
  br i1 %52, label %54, label %58

54:                                               ; preds = %46
  %55 = load ptr, ptr %53, align 8, !tbaa !77
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  br label %58

58:                                               ; preds = %46, %54
  %59 = phi ptr [ %57, %54 ], [ %50, %46 ]
  %60 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !68
  %61 = load ptr, ptr %2, align 8, !tbaa !9
  %62 = load ptr, ptr %47, align 8, !tbaa !9
  %63 = getelementptr inbounds %struct.rtl_bb_info, ptr %62, i64 0, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !68
  tail call void @update_bb_for_insn(ptr noundef nonnull %9) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_block_after_check(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  tail call void @update_bb_for_insn(ptr noundef %8) #26
  %11 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %0) #26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %47

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr @h_i_d, align 8
  %19 = load i32, ptr %17, align 8, !tbaa !9
  %20 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %18, i32 noundef %19) #25
  %21 = getelementptr inbounds %struct._haifa_insn_data, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %16, %13
  %25 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.rtl_bb_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %31) #26
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %47

34:                                               ; preds = %24
  %35 = load ptr, ptr @h_i_d, align 8
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !9
  %42 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %35, i32 noundef %41) #25
  %43 = getelementptr inbounds %struct._haifa_insn_data, ptr %42, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !140
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %34, %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5003, ptr noundef nonnull @.str.3) #26
  br label %47

47:                                               ; preds = %13, %16, %27, %34, %46
  tail call void @unlink_block(ptr noundef %10) #26
  tail call void @link_block(ptr noundef %10, ptr noundef %6) #26
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !209
  store ptr %49, ptr %2, align 8, !tbaa !12
  store ptr null, ptr %48, align 8, !tbaa !209
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 1
  tail call fastcc void @move_succs(ptr noundef nonnull %50, ptr noundef %6) #25
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 1
  tail call fastcc void @move_succs(ptr noundef nonnull %51, ptr noundef nonnull %8) #25
  call fastcc void @move_succs(ptr noundef nonnull %2, ptr noundef %10) #25
  tail call void @df_mark_solutions_dirty() #26
  %52 = load ptr, ptr @common_sched_info, align 8, !tbaa !12
  %53 = load ptr, ptr %52, align 8, !tbaa !272
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !125
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !125
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !125
  tail call void %53(i32 noundef %55, i32 noundef %57, i32 noundef %59) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

; Function Attrs: optsize
declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_bb_for_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unlink_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_succs(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5029, ptr noundef nonnull @.str.3) #26
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %10, ptr %5, align 8, !tbaa !209
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #25
  store i32 0, ptr %4, align 8, !tbaa.struct !252
  %12 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !211
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %3) #25, !range !17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9, %15
  %16 = load ptr, ptr %3, align 8, !tbaa !12
  store ptr %1, ptr %16, align 8, !tbaa !180
  call fastcc void @ei_next(ptr noundef nonnull %4) #25
  %17 = load i32, ptr %4, align 8
  %18 = load ptr, ptr %12, align 8
  %19 = call fastcc zeroext i8 @ei_cond(i32 %17, ptr %18, ptr noundef nonnull %3) #25, !range !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %15, !llvm.loop !273

21:                                               ; preds = %15, %9
  store ptr null, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare void @df_mark_solutions_dirty() local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_insn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_reservation(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_reg_and_insn_max_reg_pressure(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [27 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %2) #27
  %3 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %15, %7 ]
  %9 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !5
  %14 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %8
  store i32 %13, ptr %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %7, !llvm.loop !274

17:                                               ; preds = %7, %1
  tail call fastcc void @update_register_pressure(ptr noundef %0) #25
  %18 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !5
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = zext nneg i32 %18 to i64
  br label %25

22:                                               ; preds = %25
  %23 = add nuw nsw i64 %26, 1
  %24 = icmp eq i64 %23, %21
  br i1 %24, label %36, label %25, !llvm.loop !275

25:                                               ; preds = %20, %22
  %26 = phi i64 [ 0, %20 ], [ %23, %22 ]
  %27 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !5
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %26
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %22, label %35

35:                                               ; preds = %25
  tail call fastcc void @setup_insn_max_reg_pressure(ptr noundef %0, i8 noundef zeroext 1) #25
  br label %36

36:                                               ; preds = %22, %17, %35
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %2) #27
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sd_delete_dep(ptr noundef byval(%struct._sd_iterator) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sd_resolve_dep(ptr noundef byval(%struct._sd_iterator) align 8) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_recovery_deps(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.bitmap_head_def, align 8
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._sd_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  store ptr null, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %3) #25
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4732, ptr noundef nonnull @.str.3) #26
  %20 = load ptr, ptr %7, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi ptr [ %8, %15 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.rtl_bb_info, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4734, ptr noundef nonnull @.str.3) #26
  br label %29

29:                                               ; preds = %21, %28
  %30 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  br label %32

32:                                               ; preds = %69, %29
  %33 = phi ptr [ null, %29 ], [ %70, %69 ]
  %34 = phi ptr [ %31, %29 ], [ %72, %69 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %6, ptr noundef %34, i32 noundef 4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  %35 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %32, %65
  %38 = phi ptr [ %66, %65 ], [ %33, %32 ]
  %39 = load ptr, ptr %5, align 8, !tbaa !12
  %40 = getelementptr inbounds %struct._dep, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %58, label %46

46:                                               ; preds = %37
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %4) #26
  %47 = load ptr, ptr @sched_luids, align 8
  %48 = load i32, ptr %42, align 8, !tbaa !9
  %49 = call fastcc i32 @VEC_int_base_index(ptr noundef %47, i32 noundef %48) #25
  %50 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %49) #26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %41, ptr noundef %38) #26
  store ptr %53, ptr %2, align 8, !tbaa !12
  %54 = load ptr, ptr @sched_luids, align 8
  %55 = load i32, ptr %42, align 8, !tbaa !9
  %56 = call fastcc i32 @VEC_int_base_index(ptr noundef %54, i32 noundef %55) #25
  %57 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %56) #26
  br label %65

58:                                               ; preds = %37
  %59 = getelementptr inbounds %struct._dep, ptr %39, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !191
  %61 = and i32 %60, 117440512
  %62 = icmp eq i32 %61, 16777216
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4759, ptr noundef nonnull @.str.3) #26
  br label %64

64:                                               ; preds = %58, %63
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  br label %65

65:                                               ; preds = %46, %52, %64
  %66 = phi ptr [ %38, %46 ], [ %53, %52 ], [ %38, %64 ]
  %67 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %37, !llvm.loop !276

69:                                               ; preds = %65, %32
  %70 = phi ptr [ %33, %32 ], [ %66, %65 ]
  %71 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  %73 = icmp eq ptr %72, %11
  br i1 %73, label %74, label %32, !llvm.loop !277

74:                                               ; preds = %69
  call void @bitmap_clear(ptr noundef nonnull %3) #26
  %75 = icmp eq ptr %70, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %74, %76
  %77 = phi ptr [ %82, %76 ], [ %70, %74 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !9
  %80 = call i32 @try_ready(ptr noundef %79) #25
  %81 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %76, !llvm.loop !278

84:                                               ; preds = %76, %74
  call void @free_INSN_LIST_list(ptr noundef nonnull %2) #26
  %85 = load ptr, ptr %7, align 8, !tbaa !9
  %86 = load ptr, ptr %85, align 8, !tbaa !77
  %87 = getelementptr inbounds %struct.rtl_bb_info, ptr %85, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !68
  %89 = load i32, ptr %86, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 12
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4780, ptr noundef nonnull @.str.3) #26
  br label %93

93:                                               ; preds = %84, %92
  %94 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 2
  %95 = load ptr, ptr %94, align 8, !tbaa !9
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 13
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 1
  %101 = load i32, ptr %100, align 8, !tbaa !9
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %104, label %103

103:                                              ; preds = %99, %93
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4783, ptr noundef nonnull @.str.3) #26
  br label %104

104:                                              ; preds = %99, %103
  call fastcc void @add_jump_dependencies(ptr noundef nonnull %95, ptr noundef %88) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %2, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_jump_dependencies(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._dep, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %12
  %8 = phi ptr [ %14, %12 ], [ %5, %2 ]
  %9 = call fastcc i32 @dep_list_size(ptr noundef %8) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @init_dep(ptr noundef nonnull %3, ptr noundef %8, ptr noundef %1, i32 noundef 12) #26
  call void @sd_add_dep(ptr noundef nonnull %3, i8 noundef zeroext 0) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %7

16:                                               ; preds = %12, %2
  %17 = call zeroext i8 @sd_lists_empty_p(ptr noundef %1, i32 noundef 3) #26
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5119, ptr noundef nonnull @.str.3) #26
  br label %20

20:                                               ; preds = %16, %19
  ret void
}

; Function Attrs: optsize
declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sd_add_dep(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ok_for_early_queue_removal(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 20), align 8, !tbaa !280
  %3 = icmp eq ptr %2, null
  %4 = load i32, ptr @flag_sched_stalled_insns_dep, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %43, label %7

7:                                                ; preds = %1, %40
  %8 = phi i32 [ %41, %40 ], [ %4, %1 ]
  %9 = phi ptr [ %36, %40 ], [ @last_scheduled_insn, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %7, %37
  %13 = phi ptr [ %38, %37 ], [ %10, %7 ]
  %14 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.haifa_sched_info, ptr %14, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %43, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %13, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 13
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @sd_find_dep_between(ptr noundef nonnull %13, ptr noundef %0, i8 noundef zeroext 1) #26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @dep_cost(ptr noundef nonnull %23) #25
  %27 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 20), align 8, !tbaa !280
  %28 = load i32, ptr @flag_sched_stalled_insns_dep, align 4, !tbaa !5
  %29 = sub nsw i32 %28, %8
  %30 = tail call zeroext i8 %27(ptr noundef nonnull %23, i32 noundef %26, i32 noundef %29) #26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %22, %25, %18
  %33 = load i32, ptr %13, align 8
  %34 = and i32 %33, 16711680
  %35 = icmp eq i32 %34, 1179648
  %36 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %35, label %40, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %36, align 8, !tbaa !9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %12, !llvm.loop !281

40:                                               ; preds = %32
  %41 = add nsw i32 %8, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %7, !llvm.loop !282

43:                                               ; preds = %40, %7, %37, %12, %25, %1
  %44 = phi i8 [ 1, %1 ], [ 1, %37 ], [ 1, %12 ], [ 0, %25 ], [ 1, %7 ], [ 1, %40 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ready_remove_insn(ptr noundef readnone %0) unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1, %10
  %5 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %6 = tail call ptr @ready_element(ptr noundef nonnull @ready, i32 noundef %5) #25
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @ready_remove(i32 noundef %5) #25
  br label %15

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %5, 1
  %12 = load i32, ptr getelementptr inbounds (%struct.ready_list, ptr @ready, i64 0, i32 3), align 8, !tbaa !43
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %4, label %14, !llvm.loop !283

14:                                               ; preds = %10, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1496, ptr noundef nonnull @.str.3) #26
  br label %15

15:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @contributes_to_priority_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !23
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.haifa_sched_info, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !284
  %16 = tail call i32 %15(ptr noundef nonnull %3, ptr noundef nonnull %8) #26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @sched_deps_info, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.sched_deps_info_def, ptr %19, i64 0, i32 12
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.spec_info_def, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !149
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !191
  %33 = and i32 %32, 16777215
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24, %18
  br label %36

36:                                               ; preds = %30, %12, %1, %7, %35
  %37 = phi i8 [ 1, %35 ], [ 0, %7 ], [ 0, %1 ], [ 0, %12 ], [ 0, %30 ]
  ret i8 %37
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @queue_remove(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_i_d, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %2, i32 noundef %4) #25
  %6 = getelementptr inbounds %struct._haifa_insn_data, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !118
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1367, ptr noundef nonnull @.str.3) #26
  %10 = load ptr, ptr @h_i_d, align 8
  %11 = load i32, ptr %3, align 8, !tbaa !9
  %12 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %10, i32 noundef %11) #25
  br label %13

13:                                               ; preds = %1, %9
  %14 = phi ptr [ %5, %1 ], [ %12, %9 ]
  %15 = load ptr, ptr @insn_queue, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct._haifa_insn_data, ptr %14, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !118
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  tail call void @remove_free_INSN_LIST_elem(ptr noundef nonnull %0, ptr noundef %19) #26
  %20 = load i32, ptr @q_size, align 4, !tbaa !5
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr @q_size, align 4, !tbaa !5
  %22 = load ptr, ptr @h_i_d, align 8
  %23 = load i32, ptr %3, align 8, !tbaa !9
  %24 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %22, i32 noundef %23) #25
  %25 = getelementptr inbounds %struct._haifa_insn_data, ptr %24, i64 0, i32 4
  store i32 -2, ptr %25, align 8, !tbaa !118
  ret void
}

; Function Attrs: optsize
declare void @remove_free_INSN_LIST_elem(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @begin_speculative_block(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_i_d, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !9
  %5 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %2, i32 noundef %4) #25
  %6 = getelementptr inbounds %struct._haifa_insn_data, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = and i32 %7, 63
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr @nr_begin_data, align 4, !tbaa !5
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @nr_begin_data, align 4, !tbaa !5
  br label %13

13:                                               ; preds = %10, %1
  %14 = and i32 %7, 258048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @nr_begin_control, align 4, !tbaa !5
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @nr_begin_control, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %16, %13
  tail call fastcc void @create_check_block_twin(ptr noundef nonnull %0, i8 noundef zeroext 0) #25
  %20 = load ptr, ptr @h_i_d, align 8
  %21 = load i32, ptr %3, align 8, !tbaa !9
  %22 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %20, i32 noundef %21) #25
  %23 = getelementptr inbounds %struct._haifa_insn_data, ptr %22, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = and i32 %24, -258112
  store i32 %25, ptr %23, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_speculative_block(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._dep, align 8
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %7 = load ptr, ptr @h_i_d, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !9
  %10 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %7, i32 noundef %9) #25
  %11 = getelementptr inbounds %struct._haifa_insn_data, ptr %10, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = and i32 %12, -16519105
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4091, ptr noundef nonnull @.str.3) #26
  br label %16

16:                                               ; preds = %1, %15
  %17 = and i32 %12, 4032
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr @nr_be_in_data, align 4, !tbaa !5
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @nr_be_in_data, align 4, !tbaa !5
  br label %22

22:                                               ; preds = %19, %16
  %23 = and i32 %12, 16515072
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @nr_be_in_control, align 4, !tbaa !5
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr @nr_be_in_control, align 4, !tbaa !5
  br label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr @h_i_d, align 8
  %30 = load i32, ptr %8, align 8, !tbaa !9
  %31 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %29, i32 noundef %30) #25
  %32 = getelementptr inbounds %struct._haifa_insn_data, ptr %31, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = and i32 %33, -16519105
  store i32 %34, ptr %32, align 8, !tbaa !59
  %35 = load i32, ptr %8, align 8, !tbaa !9
  %36 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %29, i32 noundef %35) #25
  %37 = getelementptr inbounds %struct._haifa_insn_data, ptr %36, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !59
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4099, ptr noundef nonnull @.str.3) #26
  %41 = load ptr, ptr @h_i_d, align 8
  %42 = load i32, ptr %8, align 8, !tbaa !9
  %43 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %41, i32 noundef %42) #25
  br label %44

44:                                               ; preds = %28, %40
  %45 = phi ptr [ %36, %28 ], [ %43, %40 ]
  %46 = getelementptr inbounds %struct._haifa_insn_data, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !285
  %48 = or i32 %47, %12
  store i32 %48, ptr %46, align 4, !tbaa !285
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef nonnull %0, i32 noundef 2) #25
  %49 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %44, %68
  %52 = load ptr, ptr %3, align 8, !tbaa !12
  %53 = load ptr, ptr %52, align 8, !tbaa !23
  %54 = load ptr, ptr @h_i_d, align 8
  %55 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !9
  %57 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %54, i32 noundef %56) #25
  %58 = getelementptr inbounds %struct._haifa_insn_data, ptr %57, i64 0, i32 11
  %59 = load ptr, ptr %58, align 8, !tbaa !140
  %60 = load ptr, ptr @cfun, align 8, !tbaa !12
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !130
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !132
  %65 = icmp eq ptr %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  call fastcc void @create_check_block_twin(ptr noundef nonnull %53, i8 noundef zeroext 1) #25
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 2) #25
  br label %68

67:                                               ; preds = %51
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  br label %68

68:                                               ; preds = %67, %66
  %69 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %51, !llvm.loop !286

71:                                               ; preds = %68, %44
  store ptr null, ptr %4, align 8, !tbaa !12
  call fastcc void @clear_priorities(ptr noundef %0, ptr noundef nonnull %4) #25
  %72 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  br label %73

73:                                               ; preds = %173, %71
  %74 = phi ptr [ null, %71 ], [ %141, %173 ]
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 2) #25
  %75 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %174, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %3, align 8, !tbaa !12
  %79 = getelementptr inbounds %struct._dep, ptr %78, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !191
  %81 = and i32 %80, 16519104
  %82 = icmp ne i32 %81, 0
  %83 = and i32 %80, 117698623
  %84 = icmp eq i32 %83, 16777216
  %85 = and i1 %84, %82
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4137, ptr noundef nonnull @.str.3) #26
  br label %87

87:                                               ; preds = %77, %86
  %88 = load ptr, ptr %78, align 8, !tbaa !23
  %89 = call fastcc zeroext i8 @sel_sched_p() #25, !range !17
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %88) #26
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load ptr, ptr @h_i_d, align 8
  %96 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !9
  %98 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %95, i32 noundef %97) #25
  br label %107

99:                                               ; preds = %87
  %100 = load ptr, ptr @h_i_d, align 8
  %101 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !9
  %103 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %100, i32 noundef %102) #25
  %104 = getelementptr inbounds %struct._haifa_insn_data, ptr %103, i64 0, i32 11
  %105 = load ptr, ptr %104, align 8, !tbaa !140
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %94, %99
  %108 = phi ptr [ %98, %94 ], [ %103, %99 ]
  %109 = getelementptr inbounds %struct._haifa_insn_data, ptr %108, i64 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !194
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct._haifa_insn_data, ptr %108, i64 0, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !118
  %115 = icmp eq i32 %114, -2
  br i1 %115, label %117, label %116

116:                                              ; preds = %112, %107, %99, %91
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4142, ptr noundef nonnull @.str.3) #26
  br label %117

117:                                              ; preds = %112, %116
  %118 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !9
  %120 = load ptr, ptr %72, align 8, !tbaa !9
  %121 = call ptr @copy_insn(ptr noundef %120) #26
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !9
  %124 = getelementptr inbounds %struct.rtl_bb_info, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !68
  %126 = call ptr @emit_insn_before(ptr noundef %121, ptr noundef %125) #26
  call fastcc void @haifa_init_insn(ptr noundef %126) #25
  call void @sd_copy_back_deps(ptr noundef %126, ptr noundef %0, i8 noundef zeroext 1) #26
  %127 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %117
  %130 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %131 = getelementptr inbounds %struct.spec_info_def, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !183
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !9
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !125
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %132, ptr noundef nonnull @.str.51, i32 noundef %136, i32 noundef %138) #25
  br label %140

140:                                              ; preds = %134, %129, %117
  %141 = call ptr @alloc_INSN_LIST(ptr noundef %126, ptr noundef %74) #26
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef nonnull %0, i32 noundef 2) #25
  %142 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %140, %156
  %145 = load ptr, ptr %3, align 8, !tbaa !12
  %146 = load ptr, ptr %145, align 8, !tbaa !23
  %147 = getelementptr inbounds %struct._dep, ptr %145, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !26
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4165, ptr noundef nonnull @.str.3) #26
  br label %151

151:                                              ; preds = %144, %150
  %152 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1, i32 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !9
  %154 = icmp eq ptr %153, %119
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  call void @init_dep(ptr noundef nonnull %5, ptr noundef nonnull %146, ptr noundef %126, i32 noundef 0) #26
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  br label %156

156:                                              ; preds = %155, %151
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %157 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %144, !llvm.loop !287

159:                                              ; preds = %156, %140
  call fastcc void @process_insn_forw_deps_be_in_spec(ptr noundef %0, ptr noundef %126, i32 noundef %12) #25
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 2) #25
  %160 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159, %170
  %163 = load ptr, ptr %3, align 8, !tbaa !12
  %164 = load ptr, ptr %163, align 8, !tbaa !23
  %165 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1, i32 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !9
  %167 = icmp eq ptr %166, %119
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %2) #26
  br label %170

169:                                              ; preds = %162
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  br label %170

170:                                              ; preds = %169, %168
  %171 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %162, !llvm.loop !288

173:                                              ; preds = %170, %159
  br i1 %76, label %174, label %73

174:                                              ; preds = %73, %173
  %175 = phi ptr [ %141, %173 ], [ %74, %73 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %174, %177
  %178 = phi ptr [ %182, %177 ], [ %175, %174 ]
  %179 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  call void @init_dep(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %180, i32 noundef 11) #26
  call void @sd_add_dep(ptr noundef nonnull %6, i8 noundef zeroext 0) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  %181 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !9
  call void @free_INSN_LIST_node(ptr noundef nonnull %178) #26
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %177, !llvm.loop !289

184:                                              ; preds = %177, %174
  %185 = load ptr, ptr %4, align 8, !tbaa !12
  call fastcc void @calc_priorities(ptr noundef %185) #25
  call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_check_block_twin(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
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
  %12 = load i32, ptr %11, align 8, !tbaa !9
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %10, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !194
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4457, ptr noundef nonnull @.str.3) #26
  br label %18

18:                                               ; preds = %2, %17
  %19 = icmp ne i8 %1, 0
  %20 = load ptr, ptr @h_i_d, align 8
  %21 = load i32, ptr %11, align 8, !tbaa !9
  %22 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %20, i32 noundef %21) #25
  br i1 %19, label %23, label %46

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct._haifa_insn_data, ptr %22, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  %26 = load ptr, ptr @cfun, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !132
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct._haifa_insn_data, ptr %22, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = and i32 %34, 16777215
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32, %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4464, ptr noundef nonnull @.str.3) #26
  %38 = load ptr, ptr @h_i_d, align 8
  %39 = load i32, ptr %11, align 8, !tbaa !9
  %40 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %38, i32 noundef %39) #25
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi ptr [ %40, %37 ], [ %22, %32 ]
  %43 = getelementptr inbounds %struct._haifa_insn_data, ptr %42, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !5
  %45 = and i32 %44, 16777215
  br label %53

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct._haifa_insn_data, ptr %22, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !5
  %49 = and i32 %48, 16777215
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 29), align 8, !tbaa !290
  %51 = tail call zeroext i8 %50(i32 noundef %49) #26
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %41, %46
  %54 = phi i32 [ %45, %41 ], [ %49, %46 ]
  %55 = tail call ptr @sched_create_recovery_block(ptr noundef null) #25
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  br label %65

59:                                               ; preds = %46
  %60 = load ptr, ptr @cfun, align 8, !tbaa !12
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !130
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !132
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i32 [ %54, %53 ], [ %49, %59 ]
  %67 = phi ptr [ %58, %53 ], [ null, %59 ]
  %68 = phi ptr [ %55, %53 ], [ %64, %59 ]
  %69 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 30), align 8, !tbaa !291
  %70 = tail call ptr %69(ptr noundef nonnull %0, ptr noundef %67, i32 noundef %66) #26
  %71 = load ptr, ptr @cfun, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !130
  %74 = getelementptr inbounds %struct.control_flow_graph, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !132
  %76 = icmp eq ptr %68, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %65
  %78 = tail call ptr @emit_jump_insn_before(ptr noundef %70, ptr noundef nonnull %0) #26
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %67, ptr %79, align 8, !tbaa !9
  %80 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !9
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %80, align 8, !tbaa !9
  br label %85

83:                                               ; preds = %65
  %84 = tail call ptr @emit_insn_before(ptr noundef %70, ptr noundef nonnull %0) #26
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi ptr [ %78, %77 ], [ %84, %83 ]
  tail call fastcc void @haifa_init_insn(ptr noundef %86) #25
  %87 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !5
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4503, ptr noundef nonnull @.str.3) #26
  %90 = load i32, ptr @sched_ready_n_insns, align 4, !tbaa !5
  br label %91

91:                                               ; preds = %85, %89
  %92 = phi i32 [ %87, %85 ], [ %90, %89 ]
  %93 = add nsw i32 %92, 1
  tail call void @sched_extend_ready_list(i32 noundef %93) #25
  %94 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %95 = getelementptr inbounds %struct.haifa_sched_info, ptr %94, i64 0, i32 14
  %96 = load ptr, ptr %95, align 8, !tbaa !292
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  tail call void %96(ptr noundef nonnull %0, i32 noundef 0) #26
  br label %99

99:                                               ; preds = %98, %91
  %100 = load ptr, ptr @h_i_d, align 8
  %101 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !9
  %103 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %100, i32 noundef %102) #25
  %104 = getelementptr inbounds %struct._haifa_insn_data, ptr %103, i64 0, i32 11
  store ptr %68, ptr %104, align 8, !tbaa !140
  %105 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %109 = getelementptr inbounds %struct.spec_info_def, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !183
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %114 = getelementptr inbounds %struct.haifa_sched_info, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !128
  %116 = tail call ptr %115(ptr noundef nonnull %86, i32 noundef 0) #26
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %110, ptr noundef nonnull @.str.50, ptr noundef %116) #25
  %118 = load ptr, ptr @h_i_d, align 8
  br label %119

119:                                              ; preds = %112, %107, %99
  %120 = phi ptr [ %118, %112 ], [ %100, %107 ], [ %100, %99 ]
  %121 = load i32, ptr %11, align 8, !tbaa !9
  %122 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %120, i32 noundef %121) #25
  %123 = getelementptr inbounds %struct._haifa_insn_data, ptr %122, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !194
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4515, ptr noundef nonnull @.str.3) #26
  br label %127

127:                                              ; preds = %119, %126
  %128 = load ptr, ptr @cfun, align 8, !tbaa !12
  %129 = getelementptr inbounds %struct.function, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !130
  %131 = getelementptr inbounds %struct.control_flow_graph, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !132
  %133 = icmp eq ptr %68, %132
  br i1 %133, label %173, label %134

134:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %6, ptr noundef nonnull %0, i32 noundef 8) #25
  %135 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %134, %145
  %138 = load ptr, ptr %7, align 8, !tbaa !12
  %139 = getelementptr inbounds %struct._dep, ptr %138, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !191
  %141 = and i32 %140, 33554432
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  %144 = load ptr, ptr %138, align 8, !tbaa !23
  call void @init_dep(ptr noundef nonnull %8, ptr noundef %144, ptr noundef %86, i32 noundef 0) #26
  call void @sd_add_dep(ptr noundef nonnull %8, i8 noundef zeroext 1) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  br label %145

145:                                              ; preds = %137, %143
  call fastcc void @sd_iterator_next(ptr noundef nonnull %6) #25
  %146 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %137, !llvm.loop !293

148:                                              ; preds = %145, %134
  %149 = load ptr, ptr @h_i_d, align 8
  %150 = load i32, ptr %11, align 8, !tbaa !9
  %151 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %149, i32 noundef %150) #25
  %152 = getelementptr inbounds %struct._haifa_insn_data, ptr %151, i64 0, i32 12
  %153 = load ptr, ptr %152, align 8, !tbaa !194
  %154 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !9
  %156 = getelementptr inbounds %struct.rtl_bb_info, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !68
  %158 = call ptr @emit_insn_after(ptr noundef %153, ptr noundef %157) #26
  call fastcc void @haifa_init_insn(ptr noundef %158) #25
  %159 = load i32, ptr @sched_verbose, align 4, !tbaa !5
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %148
  %162 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %163 = getelementptr inbounds %struct.spec_info_def, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !183
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.rtx_def, ptr %158, i64 0, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !9
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %170 = load i32, ptr %169, align 8, !tbaa !125
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %164, ptr noundef nonnull @.str.51, i32 noundef %168, i32 noundef %170) #25
  br label %172

172:                                              ; preds = %166, %161, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  br label %188

173:                                              ; preds = %127
  %174 = load ptr, ptr @h_i_d, align 8
  %175 = load i32, ptr %11, align 8, !tbaa !9
  %176 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %174, i32 noundef %175) #25
  %177 = getelementptr inbounds %struct._haifa_insn_data, ptr %176, i64 0, i32 12
  %178 = load ptr, ptr %177, align 8, !tbaa !194
  %179 = load i32, ptr %101, align 8, !tbaa !9
  %180 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %174, i32 noundef %179) #25
  %181 = getelementptr inbounds %struct._haifa_insn_data, ptr %180, i64 0, i32 12
  store ptr %178, ptr %181, align 8, !tbaa !194
  %182 = load ptr, ptr @h_d_i_d, align 8
  %183 = load ptr, ptr @sched_luids, align 8
  %184 = load i32, ptr %101, align 8, !tbaa !9
  %185 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %183, i32 noundef %184) #25
  %186 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %182, i32 noundef %185) #25
  %187 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %186, i64 0, i32 1
  store i32 1, ptr %187, align 4, !tbaa !202
  br label %188

188:                                              ; preds = %173, %172
  %189 = phi ptr [ %158, %172 ], [ %86, %173 ]
  call void @sd_copy_back_deps(ptr noundef %189, ptr noundef nonnull %0, i8 noundef zeroext 1) #26
  %190 = load ptr, ptr @cfun, align 8, !tbaa !12
  %191 = getelementptr inbounds %struct.function, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !130
  %193 = getelementptr inbounds %struct.control_flow_graph, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !132
  %195 = icmp eq ptr %68, %194
  br i1 %195, label %212, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !9
  %199 = load ptr, ptr @sched_split_block, align 8, !tbaa !12
  %200 = call ptr %199(ptr noundef %198, ptr noundef %86) #26
  call void @sched_create_recovery_edges(ptr noundef %198, ptr noundef %68, ptr noundef %200) #25
  %201 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !12
  call void %201(ptr noundef %200, ptr noundef %198) #26
  %202 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !12
  %203 = load ptr, ptr @cfun, align 8, !tbaa !12
  %204 = getelementptr inbounds %struct.function, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !130
  %206 = getelementptr inbounds %struct.control_flow_graph, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !132
  call void %202(ptr noundef %68, ptr noundef %207) #26
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !9
  %210 = getelementptr inbounds %struct.rtl_bb_info, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !68
  call fastcc void @haifa_init_insn(ptr noundef %211) #25
  br label %212

212:                                              ; preds = %196, %188
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef nonnull %0, i32 noundef 3) #25
  %213 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %242, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct._dep, ptr %5, i64 0, i32 1
  br label %217

217:                                              ; preds = %215, %239
  %218 = load ptr, ptr %4, align 8, !tbaa !12
  %219 = load ptr, ptr %218, align 8, !tbaa !23
  %220 = getelementptr inbounds %struct._dep, ptr %218, i64 0, i32 3
  %221 = load i32, ptr %220, align 4, !tbaa !191
  %222 = and i32 %221, 258111
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %217
  br i1 %19, label %225, label %226

225:                                              ; preds = %224
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4602, ptr noundef nonnull @.str.3) #26
  br label %226

226:                                              ; preds = %224, %225
  %227 = and i32 %221, -258112
  br label %228

228:                                              ; preds = %226, %217
  %229 = phi i32 [ %227, %226 ], [ %221, %217 ]
  %230 = getelementptr inbounds %struct._dep, ptr %218, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !26
  call void @init_dep_1(ptr noundef nonnull %5, ptr noundef %219, ptr noundef %86, i32 noundef %231, i32 noundef %229) #26
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #26
  %232 = load ptr, ptr @cfun, align 8, !tbaa !12
  %233 = getelementptr inbounds %struct.function, ptr %232, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !130
  %235 = getelementptr inbounds %struct.control_flow_graph, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !132
  %237 = icmp eq ptr %68, %236
  br i1 %237, label %239, label %238

238:                                              ; preds = %228
  store ptr %189, ptr %216, align 8, !tbaa !25
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #26
  br label %239

239:                                              ; preds = %238, %228
  call fastcc void @sd_iterator_next(ptr noundef nonnull %3) #25
  %240 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %242, label %217, !llvm.loop !294

242:                                              ; preds = %239, %212
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef %0, i32 noundef 2) #25
  %243 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %257, label %245

245:                                              ; preds = %242, %254
  %246 = load ptr, ptr %4, align 8, !tbaa !12
  %247 = getelementptr inbounds %struct._dep, ptr %246, i64 0, i32 3
  %248 = load i32, ptr %247, align 4, !tbaa !191
  %249 = and i32 %248, 258111
  %250 = icmp ne i32 %249, 0
  %251 = or i1 %19, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %3) #26
  br label %254

253:                                              ; preds = %245
  call fastcc void @sd_iterator_next(ptr noundef nonnull %3) #25
  br label %254

254:                                              ; preds = %253, %252
  %255 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %245, !llvm.loop !295

257:                                              ; preds = %254, %242
  %258 = load ptr, ptr @h_i_d, align 8
  %259 = load i32, ptr %11, align 8, !tbaa !9
  %260 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %258, i32 noundef %259) #25
  %261 = getelementptr inbounds %struct._haifa_insn_data, ptr %260, i64 0, i32 9
  %262 = load i32, ptr %261, align 4, !tbaa !285
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4635, ptr noundef nonnull @.str.3) #26
  br label %265

265:                                              ; preds = %257, %264
  %266 = load ptr, ptr @h_i_d, align 8
  %267 = load i32, ptr %11, align 8, !tbaa !9
  %268 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %266, i32 noundef %267) #25
  br i1 %19, label %289, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct._haifa_insn_data, ptr %268, i64 0, i32 8
  %271 = load i32, ptr %270, align 8, !tbaa !59
  %272 = and i32 %271, 258111
  %273 = getelementptr inbounds %struct._haifa_insn_data, ptr %268, i64 0, i32 9
  store i32 %272, ptr %273, align 4, !tbaa !285
  %274 = load i32, ptr %101, align 8, !tbaa !9
  %275 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %266, i32 noundef %274) #25
  %276 = getelementptr inbounds %struct._haifa_insn_data, ptr %275, i64 0, i32 10
  store i32 %272, ptr %276, align 8, !tbaa !296
  %277 = and i32 %271, 63
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %269
  %280 = call i32 @get_dep_weak(i32 noundef %271, i32 noundef 63) #26
  %281 = call i32 @set_dep_weak(i32 noundef 0, i32 noundef 4032, i32 noundef %280) #26
  br label %282

282:                                              ; preds = %279, %269
  %283 = phi i32 [ %281, %279 ], [ 0, %269 ]
  %284 = and i32 %271, 258048
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %295, label %286

286:                                              ; preds = %282
  %287 = call i32 @get_dep_weak(i32 noundef %271, i32 noundef 258048) #26
  %288 = call i32 @set_dep_weak(i32 noundef %283, i32 noundef 16515072, i32 noundef %287) #26
  br label %295

289:                                              ; preds = %265
  %290 = getelementptr inbounds %struct._haifa_insn_data, ptr %268, i64 0, i32 10
  %291 = load i32, ptr %290, align 8, !tbaa !296
  %292 = load i32, ptr %101, align 8, !tbaa !9
  %293 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %266, i32 noundef %292) #25
  %294 = getelementptr inbounds %struct._haifa_insn_data, ptr %293, i64 0, i32 10
  store i32 %291, ptr %294, align 8, !tbaa !296
  br label %295

295:                                              ; preds = %282, %286, %289
  %296 = phi i32 [ 0, %289 ], [ %288, %286 ], [ %283, %282 ]
  call fastcc void @process_insn_forw_deps_be_in_spec(ptr noundef nonnull %0, ptr noundef %189, i32 noundef %296) #25
  %297 = load ptr, ptr @cfun, align 8, !tbaa !12
  %298 = getelementptr inbounds %struct.function, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !130
  %300 = getelementptr inbounds %struct.control_flow_graph, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !132
  %302 = icmp eq ptr %68, %301
  br i1 %302, label %333, label %303

303:                                              ; preds = %295
  br i1 %19, label %305, label %304

304:                                              ; preds = %303
  call void @init_dep(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %86, i32 noundef 0) #26
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #26
  call void @init_dep(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %189, i32 noundef 11) #26
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #26
  br label %332

305:                                              ; preds = %303
  %306 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %307 = getelementptr inbounds %struct.spec_info_def, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !183
  %309 = icmp eq ptr %308, null
  br i1 %309, label %316, label %310

310:                                              ; preds = %305
  %311 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %312 = getelementptr inbounds %struct.haifa_sched_info, ptr %311, i64 0, i32 5
  %313 = load ptr, ptr %312, align 8, !tbaa !128
  %314 = call ptr %313(ptr noundef nonnull %0, i32 noundef 0) #26
  %315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %308, ptr noundef nonnull @.str.52, ptr noundef %314) #25
  br label %316

316:                                              ; preds = %310, %305
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef nonnull %0, i32 noundef 15) #25
  %317 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %316, %319
  call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %3) #26
  %320 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %319, !llvm.loop !297

322:                                              ; preds = %319, %316
  %323 = load ptr, ptr @h_i_d, align 8
  %324 = load i32, ptr %11, align 8, !tbaa !9
  %325 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %323, i32 noundef %324) #25
  %326 = getelementptr inbounds %struct._haifa_insn_data, ptr %325, i64 0, i32 4
  %327 = load i32, ptr %326, align 8, !tbaa !118
  %328 = icmp eq i32 %327, -2
  br i1 %328, label %331, label %329

329:                                              ; preds = %322
  %330 = call i32 @try_ready(ptr noundef %86) #25
  br label %331

331:                                              ; preds = %329, %322
  call fastcc void @sched_remove_insn(ptr noundef nonnull %0) #25
  br label %332

332:                                              ; preds = %331, %304
  call void @init_dep(ptr noundef nonnull %5, ptr noundef %86, ptr noundef %189, i32 noundef 12) #26
  br label %334

333:                                              ; preds = %295
  call void @init_dep_1(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %86, i32 noundef 0, i32 noundef 50331648) #26
  br label %334

334:                                              ; preds = %333, %332
  call void @sd_add_dep(ptr noundef nonnull %5, i8 noundef zeroext 0) #26
  br i1 %19, label %337, label %335

335:                                              ; preds = %334
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  store ptr null, ptr %9, align 8, !tbaa !12
  call fastcc void @clear_priorities(ptr noundef %189, ptr noundef nonnull %9) #25
  %336 = load ptr, ptr %9, align 8, !tbaa !12
  call fastcc void @calc_priorities(ptr noundef %336) #25
  call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  br label %337

337:                                              ; preds = %335, %334
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare ptr @emit_jump_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @sd_copy_back_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_dep_1(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @set_dep_weak(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_dep_weak(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_insn_forw_deps_be_in_spec(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %4, ptr noundef %0, i32 noundef 4) #25
  %7 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = icmp ne i32 %2, 0
  br label %11

11:                                               ; preds = %9, %39
  %12 = load ptr, ptr %5, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct._dep, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct._dep, ptr %12, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !191
  %17 = and i32 %16, 117440512
  %18 = icmp eq i32 %17, 16777216
  %19 = select i1 %10, i1 %18, i1 false
  br i1 %19, label %20, label %39

20:                                               ; preds = %11
  %21 = and i32 %16, 16519104
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 4026, ptr noundef nonnull @.str.3) #26
  br label %24

24:                                               ; preds = %20, %23
  %25 = and i32 %16, 258111
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = call i32 @ds_weak(i32 noundef %16) #26
  %29 = call i32 @ds_weak(i32 noundef %2) #26
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = and i32 %16, -100921408
  %33 = or i32 %32, %2
  %34 = call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %14, i32 noundef %33) #26
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 %16, i32 %33
  br label %39

37:                                               ; preds = %24
  %38 = or i32 %16, %2
  br label %39

39:                                               ; preds = %37, %31, %27, %11
  %40 = phi i32 [ %36, %31 ], [ %16, %27 ], [ %38, %37 ], [ %16, %11 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  %41 = getelementptr inbounds %struct._dep, ptr %12, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !26
  call void @init_dep_1(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %14, i32 noundef %42, i32 noundef %40) #26
  call void @sd_add_dep(ptr noundef nonnull %6, i8 noundef zeroext 0) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %43 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %11, !llvm.loop !298

45:                                               ; preds = %39, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_remove_insn(ptr noundef %0) unnamed_addr #0 {
  tail call void @sd_finish_insn(ptr noundef %0) #26
  tail call fastcc void @change_queue_index(ptr noundef %0, i32 noundef -2) #25
  %2 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.haifa_sched_info, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !292
  tail call void %4(ptr noundef %0, i32 noundef 1) #26
  tail call void @remove_insn(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_priorities(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !118
  %11 = icmp eq i32 %10, -3
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 5061, ptr noundef nonnull @.str.3) #26
  br label %13

13:                                               ; preds = %2, %12
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef nonnull %0, i32 noundef 3) #25
  %14 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %13, %41
  %17 = phi i8 [ %42, %41 ], [ 1, %13 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !12
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = load ptr, ptr @h_i_d, align 8
  %21 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !9
  %23 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %20, i32 noundef %22) #25
  %24 = getelementptr inbounds %struct._haifa_insn_data, ptr %23, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !41
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %16
  %28 = load i32, ptr %6, align 8, !tbaa !9
  %29 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %20, i32 noundef %28) #25
  %30 = getelementptr inbounds %struct._haifa_insn_data, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !118
  %32 = icmp eq i32 %31, -3
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = call fastcc zeroext i8 @contributes_to_priority_p(ptr noundef nonnull %18) #25, !range !17
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i8 %17, i8 0
  %37 = load ptr, ptr @h_i_d, align 8
  %38 = load i32, ptr %21, align 8, !tbaa !9
  %39 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %37, i32 noundef %38) #25
  %40 = getelementptr inbounds %struct._haifa_insn_data, ptr %39, i64 0, i32 7
  store i8 -1, ptr %40, align 1, !tbaa !41
  call fastcc void @clear_priorities(ptr noundef nonnull %19, ptr noundef %1) #25
  br label %41

41:                                               ; preds = %33, %27, %16
  %42 = phi i8 [ %36, %33 ], [ %17, %27 ], [ %17, %16 ]
  call fastcc void @sd_iterator_next(ptr noundef nonnull %3) #25
  %43 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %16, !llvm.loop !299

45:                                               ; preds = %41
  %46 = icmp eq i8 %42, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %13, %45
  call fastcc void @VEC_rtx_heap_safe_push(ptr noundef %1, ptr noundef %0) #25
  br label %48

48:                                               ; preds = %47, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_priorities(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #25, !range !185
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !12
  %8 = tail call fastcc i32 @priority(ptr noundef %7) #25
  %9 = add nuw nsw i32 %6, 1
  %10 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %2) #25, !range !185
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !llvm.loop !300

12:                                               ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_heap_free(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #25
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @sd_finish_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_heap_reserve(ptr noundef %0) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #26
  store ptr %6, ptr %0, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = load i32, ptr %0, align 8, !tbaa !235
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !235
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #20 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !301
  %6 = load i32, ptr %0, align 8, !tbaa !235
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
declare ptr @copy_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #25
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #25
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #25
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #25
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 687, ptr noundef nonnull @.str.3) #26
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #20 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0) unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  ret ptr %3
}

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_luids, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %2) #25
  tail call fastcc void @VEC_int_heap_safe_grow(i32 noundef %0) #25
  %4 = load ptr, ptr @sched_luids, align 8, !tbaa !12
  %5 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %4) #25
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #20 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !302
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_luids, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !302
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_int_heap_reserve_exact(i32 noundef %8) #25
  %9 = load ptr, ptr @sched_luids, align 8, !tbaa !12, !nonnull !304, !noundef !304
  store i32 %0, ptr %9, align 4, !tbaa !302
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_int_base_address(ptr noundef readnone %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_luids, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2, i32 noundef %0) #25, !range !185
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #26
  store ptr %6, ptr @sched_luids, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #20 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !305
  %7 = load i32, ptr %0, align 4, !tbaa !302
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
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_replace(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_haifa_insn_data_def_base_length(ptr noundef readonly %0) unnamed_addr #20 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !239
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_haifa_insn_data_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #20 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !306
  %7 = load i32, ptr %0, align 8, !tbaa !239
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
define internal fastcc void @VEC_haifa_insn_data_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_i_d, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_haifa_insn_data_def_base_length(ptr noundef %2) #25
  tail call fastcc void @VEC_haifa_insn_data_def_heap_safe_grow(i32 noundef %0) #25
  %4 = load ptr, ptr @h_i_d, align 8, !tbaa !12
  %5 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_address(ptr noundef %4) #25
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct._haifa_insn_data, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 96
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_haifa_insn_data_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_i_d, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !239
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_haifa_insn_data_def_heap_reserve_exact(i32 noundef %8) #25
  %9 = load ptr, ptr @h_i_d, align 8, !tbaa !12, !nonnull !304, !noundef !304
  store i32 %0, ptr %9, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_haifa_insn_data_def_base_address(ptr noundef readnone %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_haifa_insn_data_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_i_d, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_haifa_insn_data_def_base_space(ptr noundef %2, i32 noundef %0) #25, !range !185
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 96) #26
  store ptr %6, ptr @h_i_d, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @sd_init_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @extend_dependency_caches(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nofree nounwind }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i32 0, i32 6}
!17 = !{i8 0, i8 2}
!18 = !{!19, !20, i64 20}
!19 = !{!"_haifa_insn_data", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !20, i64 20, !6, i64 22, !6, i64 22, !7, i64 23, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !6, i64 88}
!20 = !{!"short", !7, i64 0}
!21 = !{!22, !6, i64 32}
!22 = !{!"common_sched_info_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !6, i64 32}
!23 = !{!24, !13, i64 0}
!24 = !{!"_dep", !13, i64 0, !13, i64 8, !6, i64 16, !6, i64 20}
!25 = !{!24, !13, i64 8}
!26 = !{!24, !6, i64 16}
!27 = !{!28, !13, i64 536}
!28 = !{!"gcc_target", !29, i64 0, !31, i64 368, !32, i64 664, !6, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !33, i64 1064, !33, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !34, i64 1176, !13, i64 1232, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !13, i64 1344, !13, i64 1352, !13, i64 1360, !13, i64 1368, !13, i64 1376, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !13, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !13, i64 1456, !33, i64 1464, !35, i64 1472, !13, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !13, i64 1720, !13, i64 1728, !13, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !13, i64 1768, !13, i64 1776, !36, i64 1784, !37, i64 1792, !38, i64 1896, !39, i64 1968, !13, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!29 = !{!"asm_out", !13, i64 0, !13, i64 8, !13, i64 16, !30, i64 24, !30, i64 56, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360}
!30 = !{!"asm_int_op", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!31 = !{!"sched", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!32 = !{!"vectorize", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!33 = !{!"long", !7, i64 0}
!34 = !{!"addr_space", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!35 = !{!"calls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!36 = !{!"c", !13, i64 0}
!37 = !{!"cxx", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!38 = !{!"emutls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !7, i64 64, !7, i64 65}
!39 = !{!"target_option_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!40 = !{!28, !13, i64 368}
!41 = !{!19, !7, i64 23}
!42 = !{!19, !6, i64 4}
!43 = !{!44, !6, i64 16}
!44 = !{!"ready_list", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!45 = !{!44, !13, i64 0}
!46 = !{!44, !6, i64 12}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = !{!50, !6, i64 0}
!50 = !{!"reg_use_data", !6, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!51 = distinct !{!51, !15}
!52 = !{!19, !13, i64 56}
!53 = !{!19, !13, i64 64}
!54 = !{!20, !20, i64 0}
!55 = distinct !{!55, !15}
!56 = !{!19, !6, i64 88}
!57 = distinct !{!57, !15}
!58 = !{!19, !6, i64 8}
!59 = !{!19, !6, i64 24}
!60 = !{!61, !13, i64 32}
!61 = !{!"haifa_sched_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !6, i64 96, !6, i64 100, !13, i64 104, !13, i64 112, !13, i64 120, !6, i64 128}
!62 = !{!61, !13, i64 64}
!63 = distinct !{!63, !15}
!64 = !{!28, !13, i64 488}
!65 = !{!28, !13, i64 464}
!66 = !{!28, !13, i64 480}
!67 = !{!28, !13, i64 496}
!68 = !{!69, !13, i64 8}
!69 = !{!"rtl_bb_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !6, i64 32}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = !{!69, !13, i64 0}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15, !84, !85}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !15}
!87 = !{!88, !13, i64 16}
!88 = !{!"choice_entry", !6, i64 0, !6, i64 4, !6, i64 8, !13, i64 16}
!89 = !{!33, !33, i64 0}
!90 = !{!88, !6, i64 4}
!91 = !{!88, !6, i64 8}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = !{!88, !6, i64 0}
!95 = !{!61, !13, i64 56}
!96 = !{!61, !13, i64 72}
!97 = !{!44, !6, i64 8}
!98 = !{!44, !6, i64 20}
!99 = !{!28, !13, i64 400}
!100 = !{!61, !13, i64 0}
!101 = !{!102, !6, i64 8}
!102 = !{!"param_info", !13, i64 0, !6, i64 8, !7, i64 12, !6, i64 16, !6, i64 20, !13, i64 24}
!103 = distinct !{!103, !15}
!104 = distinct !{!104, !15}
!105 = !{!61, !13, i64 16}
!106 = distinct !{!106, !15}
!107 = !{!61, !13, i64 120}
!108 = distinct !{!108, !15}
!109 = !{!61, !13, i64 112}
!110 = !{i32 0, i32 -2147483648}
!111 = distinct !{!111, !15}
!112 = !{!28, !13, i64 432}
!113 = !{!28, !13, i64 520}
!114 = !{!61, !13, i64 8}
!115 = !{!28, !13, i64 392}
!116 = distinct !{!116, !15}
!117 = !{!28, !13, i64 440}
!118 = !{!19, !6, i64 16}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = !{!28, !13, i64 408}
!123 = !{!61, !13, i64 80}
!124 = !{!61, !13, i64 88}
!125 = !{!126, !6, i64 80}
!126 = !{!"basic_block_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !13, i64 48, !13, i64 56, !7, i64 64, !33, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!127 = distinct !{!127, !15}
!128 = !{!61, !13, i64 40}
!129 = !{!126, !13, i64 56}
!130 = !{!131, !13, i64 8}
!131 = !{!"function", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !13, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!132 = !{!133, !13, i64 8}
!133 = !{!"control_flow_graph", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!134 = distinct !{!134, !15}
!135 = distinct !{!135, !15}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = distinct !{!139, !15}
!140 = !{!19, !13, i64 40}
!141 = distinct !{!141, !15}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = !{!28, !13, i64 504}
!149 = !{!150, !6, i64 24}
!150 = !{!"spec_info_def", !6, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!151 = distinct !{!151, !15}
!152 = !{!28, !13, i64 616}
!153 = distinct !{!153, !15}
!154 = !{!28, !13, i64 512}
!155 = distinct !{!155, !15}
!156 = !{i64 0, i64 4, !5, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 1, !9}
!157 = !{!19, !6, i64 12}
!158 = distinct !{!158, !15}
!159 = distinct !{!159, !15}
!160 = !{!61, !6, i64 100}
!161 = distinct !{!161, !15}
!162 = distinct !{!162, !15}
!163 = distinct !{!163, !15}
!164 = !{!28, !13, i64 624}
!165 = !{!150, !6, i64 0}
!166 = !{!150, !6, i64 16}
!167 = !{!150, !6, i64 20}
!168 = !{!28, !13, i64 384}
!169 = !{!28, !13, i64 456}
!170 = !{!28, !13, i64 472}
!171 = !{!28, !13, i64 416}
!172 = distinct !{!172, !15}
!173 = !{!133, !6, i64 24}
!174 = !{!133, !13, i64 0}
!175 = distinct !{!175, !15}
!176 = !{!177, !6, i64 0}
!177 = !{!"VEC_basic_block_base", !6, i64 0, !6, i64 4, !7, i64 8}
!178 = !{!28, !13, i64 544}
!179 = !{!22, !13, i64 8}
!180 = !{!181, !13, i64 0}
!181 = !{!"edge_def", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !33, i64 56}
!182 = !{!181, !13, i64 8}
!183 = !{!150, !13, i64 8}
!184 = !{!28, !13, i64 424}
!185 = !{i32 0, i32 2}
!186 = !{!19, !13, i64 72}
!187 = !{!50, !13, i64 24}
!188 = distinct !{!188, !15}
!189 = distinct !{!189, !15}
!190 = !{!61, !6, i64 128}
!191 = !{!24, !6, i64 20}
!192 = distinct !{!192, !15}
!193 = !{!61, !13, i64 24}
!194 = !{!19, !13, i64 48}
!195 = !{!196, !6, i64 0}
!196 = !{!"_sd_iterator", !6, i64 0, !13, i64 8, !13, i64 16, !7, i64 24}
!197 = !{!196, !13, i64 8}
!198 = !{!196, !13, i64 16}
!199 = !{!196, !7, i64 24}
!200 = !{!201, !13, i64 0}
!201 = !{!"_dep_link", !13, i64 0, !13, i64 8, !13, i64 16}
!202 = !{!203, !6, i64 4}
!203 = !{!"_haifa_deps_insn_data", !6, i64 0, !6, i64 4, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !6, i64 48}
!204 = !{!28, !13, i64 376}
!205 = distinct !{!205, !15}
!206 = distinct !{!206, !15}
!207 = distinct !{!207, !15}
!208 = !{!126, !13, i64 48}
!209 = !{!126, !13, i64 8}
!210 = !{!126, !13, i64 0}
!211 = !{i64 0, i64 8, !12}
!212 = !{!181, !6, i64 48}
!213 = distinct !{!213, !15}
!214 = distinct !{!214, !15}
!215 = !{!216, !6, i64 0}
!216 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!217 = !{!218, !6, i64 0}
!218 = !{!"", !6, i64 0, !13, i64 8}
!219 = !{!126, !6, i64 96}
!220 = !{!131, !13, i64 32}
!221 = !{!222, !13, i64 8}
!222 = !{!"loops", !6, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!223 = !{!126, !33, i64 72}
!224 = !{!126, !6, i64 88}
!225 = !{!28, !13, i64 592}
!226 = !{!133, !6, i64 32}
!227 = distinct !{!227, !15}
!228 = distinct !{!228, !15}
!229 = distinct !{!229, !15}
!230 = !{!231, !13, i64 0}
!231 = !{!"sched_scan_info_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!232 = !{!231, !13, i64 8}
!233 = !{!231, !13, i64 16}
!234 = distinct !{!234, !15}
!235 = !{!236, !6, i64 0}
!236 = !{!"VEC_rtx_base", !6, i64 0, !6, i64 4, !7, i64 8}
!237 = !{!231, !13, i64 24}
!238 = !{!22, !13, i64 24}
!239 = !{!240, !6, i64 0}
!240 = !{!"VEC_haifa_insn_data_def_base", !6, i64 0, !6, i64 4, !7, i64 8}
!241 = distinct !{!241, !15}
!242 = distinct !{!242, !15}
!243 = !{!50, !13, i64 16}
!244 = !{!50, !13, i64 8}
!245 = distinct !{!245, !15}
!246 = distinct !{!246, !15}
!247 = distinct !{!247, !15}
!248 = distinct !{!248, !15}
!249 = distinct !{!249, !15}
!250 = distinct !{!250, !15}
!251 = distinct !{!251, !15}
!252 = !{i64 0, i64 4, !5, i64 8, i64 8, !12}
!253 = distinct !{!253, !15}
!254 = !{!255, !13, i64 0}
!255 = !{!"bitmap_head_def", !13, i64 0, !13, i64 8, !6, i64 16, !13, i64 24}
!256 = !{!257, !13, i64 0}
!257 = !{!"", !13, i64 0, !13, i64 8, !6, i64 16, !33, i64 24}
!258 = !{!257, !13, i64 8}
!259 = !{!260, !6, i64 16}
!260 = !{!"bitmap_element_def", !13, i64 0, !13, i64 8, !6, i64 16, !7, i64 24}
!261 = !{!257, !6, i64 16}
!262 = !{!257, !33, i64 24}
!263 = distinct !{!263, !15}
!264 = distinct !{!264, !15}
!265 = !{!260, !13, i64 0}
!266 = distinct !{!266, !15}
!267 = distinct !{!267, !15}
!268 = !{!269, !6, i64 0}
!269 = !{!"reg_set_data", !6, i64 0, !13, i64 8, !13, i64 16}
!270 = distinct !{!270, !15}
!271 = distinct !{!271, !15}
!272 = !{!22, !13, i64 0}
!273 = distinct !{!273, !15}
!274 = distinct !{!274, !15}
!275 = distinct !{!275, !15}
!276 = distinct !{!276, !15}
!277 = distinct !{!277, !15}
!278 = distinct !{!278, !15}
!279 = !{!255, !13, i64 24}
!280 = !{!28, !13, i64 528}
!281 = distinct !{!281, !15}
!282 = distinct !{!282, !15}
!283 = distinct !{!283, !15}
!284 = !{!61, !13, i64 48}
!285 = !{!19, !6, i64 28}
!286 = distinct !{!286, !15}
!287 = distinct !{!287, !15}
!288 = distinct !{!288, !15}
!289 = distinct !{!289, !15}
!290 = !{!28, !13, i64 600}
!291 = !{!28, !13, i64 608}
!292 = !{!61, !13, i64 104}
!293 = distinct !{!293, !15}
!294 = distinct !{!294, !15}
!295 = distinct !{!295, !15}
!296 = !{!19, !6, i64 32}
!297 = distinct !{!297, !15}
!298 = distinct !{!298, !15}
!299 = distinct !{!299, !15}
!300 = distinct !{!300, !15}
!301 = !{!236, !6, i64 4}
!302 = !{!303, !6, i64 0}
!303 = !{!"VEC_int_base", !6, i64 0, !6, i64 4, !7, i64 8}
!304 = !{}
!305 = !{!303, !6, i64 4}
!306 = !{!240, !6, i64 4}
