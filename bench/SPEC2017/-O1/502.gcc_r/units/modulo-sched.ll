; ModuleID = 'modulo-sched.c'
source_filename = "modulo-sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.partial_schedule = type { i32, i32, ptr, i32, i32, ptr }
%struct.ddg_node = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ps_insn = type { ptr, i32, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.ddg = type { ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.node_order_params = type { i32, i32, i32 }
%struct.ddg_edge = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.ddg_all_sccs = type { ptr, i32, ptr }
%struct.ddg_scc = type { ptr, ptr, i32, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.node_sched_params = type { i32, i32, ptr, i32, i32, i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.undo_replace_buff_elem = type { ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"\0A[ROW %d ]: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sms\00", align 1
@pass_sms = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_handle_sms, ptr @rest_of_handle_sms, ptr null, ptr null, i32 0, i32 144, i32 0, i32 0, i32 0, i32 1, i32 132099 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_modulo_sched = external local_unnamed_addr global i32, align 4
@max_regno = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@issue_rate = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"\0A\0ASMS analysis phase\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"===================\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SMS reached max limit... \0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"SMS loop num: %d, file: %s, line: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"SMS not loop_single_full_bb_p\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"modulo-sched.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c" %s %d (file, line)\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"SMS single-bb-loop\0A\00", align 1
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"SMS loop-count \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"SMS trip-count \00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"SMS profile-sum-max \00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"SMS doloop_register_get failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"\0ASMS transformation phase\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"=========================\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"SMS doloop\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"SMS built-ddg %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"SMS num-loads %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"SMS num-stores %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"SMS iis %d %d %d (rec_mii, mii, maxii)\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"SMS failed... \0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"SMS sched-failed (stage-count=%d, loop-count=\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c", trip-count=\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"SMS succeeded %d %d (with ii, sc)\0A\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"SMS Branch (%d) will later be scheduled at cycle %d.\0A\00", align 1
@flag_resched_modulo_sched = external local_unnamed_addr global i32, align 4
@node_sched_params = internal unnamed_addr global ptr null, align 8
@sms_common_sched_info = internal global %struct.common_sched_info_def zeroinitializer, align 8
@haifa_common_sched_info = external local_unnamed_addr constant %struct.common_sched_info_def, align 8
@common_sched_info = external local_unnamed_addr global ptr, align 8
@sms_sched_deps_info = internal global %struct.sched_deps_info_def { ptr @compute_jump_reg_dependencies, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8
@sched_deps_info = external local_unnamed_addr global ptr, align 8
@sms_sched_info = internal global %struct.haifa_sched_info { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sms_print_insn, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, i32 0 }, align 8
@current_sched_info = external local_unnamed_addr global ptr, align 8
@sms_print_insn.tmp = internal global [80 x i8] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"i%4d\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"SMS loop inner or !loop_outer\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"SMS loop many exits \00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"SMS loop many BBs. \00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"\0AOrder params\0A\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"node %d, ASAP: %d, ALAP: %d, HEIGHT: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"SMS final nodes order: \0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Starting with ii=%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [86 x i8] c"\0ATrying to schedule node %d                         INSN = %d  in (%d .. %d) step %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"num_splits=%d\0A\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"\0AProcessing edge: \00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"\0AScheduling %d (%d) in psp_not_empty, checking p %d (%d): \00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"pred st = %d; early_start = %d; latency: %d\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"the node is not scheduled\0A\00", align 1
@.str.53 = private unnamed_addr constant [55 x i8] c"\0AScheduling %d (%d) in a window (%d..%d) with step %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"\0AProcessing edge:\00", align 1
@.str.55 = private unnamed_addr constant [59 x i8] c"\0AScheduling %d (%d) in pss_not_empty, checking s %d (%d): \00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"succ st = %d; late_start = %d; latency = %d\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"end = %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [63 x i8] c"\0AScheduling %d (%d) in psp_pss_not_empty, checking p %d (%d): \00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"pred st = %d; early_start = %d; latency = %d\00", align 1
@.str.60 = private unnamed_addr constant [63 x i8] c"\0AScheduling %d (%d) in psp_pss_not_empty, checking s %d (%d): \00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"\0AEmpty window: start=%d, end=%d, step=%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"\0Amust_precede: \00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"\0Amust_follow: \00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"Scheduled w/o split in %d\0A\00", align 1
@curr_state = external local_unnamed_addr global ptr, align 8
@sched_dump = external local_unnamed_addr global ptr, align 8
@sched_verbose = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [39 x i8] c"Both crit_pred and crit_succ are NULL\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"split_row=%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"min_cycle=%d, max_cycle=%d\0A\00", align 1
@.str.68 = private unnamed_addr constant [57 x i8] c"crr_insn->node=%d, crr_insn->cycle=%d,\09\09   min_cycle=%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Node = %d; INSN = %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c" asap = %d:\0A\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c" time = %d:\0A\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c" nreg_moves = %d:\0A\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c" reg_move = \00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_partial_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %26
  %8 = phi i64 [ 0, %5 ], [ %27, %26 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = trunc i64 %8 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %12)
  %14 = icmp eq ptr %11, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %24, %15 ], [ %11, %7 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.ddg_node, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %21)
  %23 = getelementptr inbounds %struct.ps_insn, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %15, !llvm.loop !62

26:                                               ; preds = %15, %7
  %27 = add nuw nsw i64 %8, 1
  %28 = load i32, ptr %0, align 8, !tbaa !54
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %7, label %31, !llvm.loop !63

31:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_sms() #10 !prof !64 !PGOFuncName !65 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !50
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_modulo_sched, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !66
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_sms() #11 !prof !34 {
  tail call void @cfg_layout_initialize(i32 noundef 0) #20
  tail call fastcc void @sms_schedule()
  %1 = tail call i32 @max_reg_num() #20
  store i32 %1, ptr @max_regno, align 4, !tbaa !50
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = load ptr, ptr %6, align 8, !tbaa !72
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %21, label %11

11:                                               ; preds = %0, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  store ptr %14, ptr %17, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %11, %16
  %19 = load ptr, ptr %13, align 8, !tbaa !72
  %20 = icmp eq ptr %19, %8
  br i1 %20, label %21, label %11, !llvm.loop !75

21:                                               ; preds = %18, %0
  tail call void @free_dominance_info(i32 noundef 1) #20
  tail call void @cfg_layout_finalize() #20
  ret i32 0
}

declare void @cfg_layout_initialize(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @sms_schedule() unnamed_addr #11 !prof !34 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  tail call void @loop_optimizer_init(i32 noundef 9) #20
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !79
  br label %15

15:                                               ; preds = %0, %9, %13
  %16 = phi i32 [ 0, %0 ], [ %14, %13 ], [ 0, %9 ]
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %2691, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 2), align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr @reload_completed, align 4, !tbaa !50
  store i32 1, ptr @reload_completed, align 4, !tbaa !50
  %23 = tail call i32 %19() #20
  store i32 %23, ptr @issue_rate, align 4, !tbaa !50
  store i32 %22, ptr @reload_completed, align 4, !tbaa !50
  br label %25

24:                                               ; preds = %18
  store i32 1, ptr @issue_rate, align 4, !tbaa !50
  br label %25

25:                                               ; preds = %24, %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @sms_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store i32 3, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sms_common_sched_info, i64 0, i32 4), align 8, !tbaa !93
  store ptr @sms_common_sched_info, ptr @common_sched_info, align 8, !tbaa !35
  store ptr @sms_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !35
  store ptr @sms_sched_info, ptr @current_sched_info, align 8, !tbaa !35
  tail call void @haifa_sched_init() #20
  %26 = load ptr, ptr @cfun, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.loops, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 8, !tbaa !79
  br label %36

36:                                               ; preds = %25, %30, %34
  %37 = phi i32 [ 0, %25 ], [ %35, %34 ], [ 0, %30 ]
  %38 = zext i32 %37 to i64
  %39 = tail call ptr @xcalloc(i64 noundef %38, i64 noundef 8) #20
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr nonnull %40)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %45 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load ptr, ptr @cfun, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = icmp eq ptr %49, null
  br i1 %50, label %126, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.loops, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !77
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %53, align 8, !tbaa !79
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i32 [ %56, %55 ], [ 0, %51 ]
  %59 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %58, i64 noundef 8, i64 noundef 4) #20
  %60 = load ptr, ptr @cfun, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = getelementptr inbounds %struct.loops, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !95
  br label %65

65:                                               ; preds = %78, %57
  %66 = phi ptr [ %64, %57 ], [ %79, %78 ]
  %67 = load i32, ptr %66, align 8, !tbaa !96
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, ptr %59, align 4, !tbaa !100
  %71 = add i32 %70, 1
  store i32 %71, ptr %59, align 4, !tbaa !100
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds %struct.VEC_int_base, ptr %59, i64 0, i32 2, i64 %72
  store i32 %67, ptr %73, align 4, !tbaa !50
  br label %74

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.loop, ptr %66, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !102
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %83, %74
  %79 = phi ptr [ %76, %74 ], [ %86, %83 ]
  br label %65, !llvm.loop !103

80:                                               ; preds = %102
  %81 = icmp eq ptr %59, null
  %82 = getelementptr inbounds %struct.loops, ptr %62, i64 0, i32 1
  br label %105

83:                                               ; preds = %74, %102
  %84 = phi ptr [ %103, %102 ], [ %66, %74 ]
  %85 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !104
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %78, !llvm.loop !103

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.loop, ptr %84, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !105
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, ptr %90, align 8, !tbaa !79
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %93, %92 ], [ 0, %88 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = add i32 %95, -1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %90, i64 0, i32 2, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  br label %102

102:                                              ; preds = %97, %94
  %103 = phi ptr [ %101, %97 ], [ null, %94 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %80, label %83, !llvm.loop !106

105:                                              ; preds = %80, %117
  %106 = phi i32 [ %118, %117 ], [ 0, %80 ]
  br i1 %81, label %114, label %107

107:                                              ; preds = %105
  %108 = load i32, ptr %59, align 4, !tbaa !100
  %109 = icmp ugt i32 %108, %106
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = zext i32 %106 to i64
  %112 = getelementptr inbounds %struct.VEC_int_base, ptr %59, i64 0, i32 2, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !50
  br label %114

114:                                              ; preds = %110, %107, %105
  %115 = phi i32 [ %113, %110 ], [ 0, %107 ], [ 0, %105 ]
  %116 = phi i1 [ false, %110 ], [ true, %107 ], [ true, %105 ]
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = add i32 %106, 1
  %119 = load ptr, ptr %82, align 8, !tbaa !77
  %120 = zext i32 %115 to i64
  %121 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %119, i64 0, i32 2, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !35
  %123 = icmp eq ptr %122, null
  br i1 %123, label %105, label %126, !llvm.loop !107

124:                                              ; preds = %114
  br i1 %81, label %126, label %125

125:                                              ; preds = %124
  tail call void @free(ptr noundef %59)
  br label %126

126:                                              ; preds = %117, %124, %125, %46
  %127 = phi i32 [ 0, %46 ], [ %106, %125 ], [ %106, %124 ], [ %118, %117 ]
  %128 = phi ptr [ null, %46 ], [ null, %125 ], [ null, %124 ], [ %59, %117 ]
  %129 = phi ptr [ null, %46 ], [ null, %125 ], [ null, %124 ], [ %122, %117 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %357, label %131

131:                                              ; preds = %126, %352
  %132 = phi ptr [ %324, %352 ], [ null, %126 ]
  %133 = phi i64 [ %323, %352 ], [ 0, %126 ]
  %134 = phi ptr [ %355, %352 ], [ %129, %126 ]
  %135 = phi ptr [ %354, %352 ], [ %128, %126 ]
  %136 = phi i32 [ %353, %352 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %137 = call zeroext i8 @dbg_cnt(i32 noundef 34) #20
  %138 = icmp eq i8 %137, 0
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %140 = icmp eq ptr %139, null
  br i1 %138, label %141, label %144

141:                                              ; preds = %131
  br i1 %140, label %322, label %142

142:                                              ; preds = %141
  %143 = call i64 @fwrite(ptr nonnull @.str.5, i64 26, i64 1, ptr nonnull %139)
  br label %322

144:                                              ; preds = %131
  br i1 %140, label %156, label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !108
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 7
  %149 = load ptr, ptr %148, align 8, !tbaa !46
  %150 = getelementptr inbounds %struct.rtl_bb_info, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !109
  %152 = load i32, ptr %134, align 8, !tbaa !96
  %153 = call ptr @insn_file(ptr noundef %151) #20
  %154 = call i32 @insn_line(ptr noundef %151) #20
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %139, ptr noundef nonnull @.str.6, i32 noundef %152, ptr noundef %153, i32 noundef %154)
  br label %156

156:                                              ; preds = %145, %144
  %157 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 8
  %158 = load ptr, ptr %157, align 8, !tbaa !102
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 7
  %162 = load ptr, ptr %161, align 8, !tbaa !105
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %162, align 8, !tbaa !79
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi i32 [ %165, %164 ], [ 0, %160 ]
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %166
  %170 = add i32 %167, -1
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %162, i64 0, i32 2, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !35
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %166, %169, %156
  %176 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %177 = icmp eq ptr %176, null
  br i1 %177, label %322, label %178

178:                                              ; preds = %175
  %179 = call i64 @fwrite(ptr nonnull @.str.39, i64 30, i64 1, ptr nonnull %176)
  br label %322

180:                                              ; preds = %169
  %181 = call ptr @single_exit(ptr noundef nonnull %134) #20
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %185 = icmp eq ptr %184, null
  br i1 %185, label %322, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !108
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 7
  %190 = load ptr, ptr %189, align 8, !tbaa !46
  %191 = getelementptr inbounds %struct.rtl_bb_info, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !109
  %193 = call i64 @fwrite(ptr nonnull @.str.40, i64 20, i64 1, ptr nonnull %184)
  %194 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %195 = call ptr @insn_file(ptr noundef %192) #20
  %196 = call i32 @insn_line(ptr noundef %192) #20
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.10, ptr noundef %195, i32 noundef %196)
  br label %322

198:                                              ; preds = %180
  %199 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 6
  %200 = load i32, ptr %199, align 4, !tbaa !111
  %201 = icmp ult i32 %200, 3
  br i1 %201, label %202, label %217

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !112
  %205 = load ptr, ptr %204, align 8, !tbaa !113
  %206 = icmp eq ptr %205, null
  br i1 %206, label %217, label %207

207:                                              ; preds = %202
  %208 = load i32, ptr %205, align 8, !tbaa !114
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.basic_block_def, ptr %204, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !116
  %213 = icmp eq ptr %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = load i32, ptr %212, align 8, !tbaa !114
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %235, label %217

217:                                              ; preds = %214, %210, %202, %207, %198
  %218 = call fastcc zeroext i8 @loop_single_full_bb_p(ptr noundef nonnull %134)
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %217
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %222 = icmp eq ptr %221, null
  br i1 %222, label %322, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !108
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %225, i64 0, i32 7
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  %228 = getelementptr inbounds %struct.rtl_bb_info, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !109
  %230 = call i64 @fwrite(ptr nonnull @.str.41, i64 19, i64 1, ptr nonnull %221)
  %231 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %232 = call ptr @insn_file(ptr noundef %229) #20
  %233 = call i32 @insn_line(ptr noundef %229) #20
  %234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull @.str.10, ptr noundef %232, i32 noundef %233)
  br label %322

235:                                              ; preds = %217, %214
  %236 = call fastcc zeroext i8 @loop_single_full_bb_p(ptr noundef nonnull %134)
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %240 = icmp eq ptr %239, null
  br i1 %240, label %322, label %241

241:                                              ; preds = %238
  %242 = call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr nonnull %239)
  br label %322

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.loop, ptr %134, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !108
  call void @get_ebb_head_tail(ptr noundef %245, ptr noundef %245, ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %246 = call ptr @loop_latch_edge(ptr noundef nonnull %134) #20
  %247 = call ptr @single_exit(ptr noundef nonnull %134) #20
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 971, ptr noundef nonnull @.str.9) #20
  br label %250

250:                                              ; preds = %243, %249
  %251 = call ptr @single_exit(ptr noundef nonnull %134) #20
  %252 = getelementptr inbounds %struct.edge_def, ptr %251, i64 0, i32 9
  %253 = load i64, ptr %252, align 8, !tbaa !117
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.edge_def, ptr %246, i64 0, i32 9
  %257 = load i64, ptr %256, align 8, !tbaa !117
  %258 = call ptr @single_exit(ptr noundef nonnull %134) #20
  %259 = getelementptr inbounds %struct.edge_def, ptr %258, i64 0, i32 9
  %260 = load i64, ptr %259, align 8, !tbaa !117
  %261 = sdiv i64 %257, %260
  br label %262

262:                                              ; preds = %255, %250
  %263 = phi i64 [ %261, %255 ], [ %133, %250 ]
  %264 = getelementptr inbounds %struct.edge_def, ptr %246, i64 0, i32 9
  %265 = load i64, ptr %264, align 8, !tbaa !117
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %317, label %267

267:                                              ; preds = %262
  %268 = call ptr @single_exit(ptr noundef nonnull %134) #20
  %269 = getelementptr inbounds %struct.edge_def, ptr %268, i64 0, i32 9
  %270 = load i64, ptr %269, align 8, !tbaa !117
  %271 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %272 = getelementptr inbounds %struct.param_info, ptr %271, i64 41, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !119
  %274 = sext i32 %273 to i64
  %275 = mul nsw i64 %270, %274
  %276 = icmp slt i64 %265, %275
  br i1 %276, label %277, label %317

277:                                              ; preds = %267
  %278 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %279 = icmp eq ptr %278, null
  br i1 %279, label %322, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr %2, align 8, !tbaa !35
  %282 = call ptr @insn_file(ptr noundef %281) #20
  %283 = load ptr, ptr %2, align 8, !tbaa !35
  %284 = call i32 @insn_line(ptr noundef %283) #20
  %285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %278, ptr noundef nonnull @.str.10, ptr noundef %282, i32 noundef %284)
  %286 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %287 = call i64 @fwrite(ptr nonnull @.str.11, i64 19, i64 1, ptr %286)
  %288 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %289 = icmp ne ptr %288, null
  %290 = load i32, ptr @flag_branch_probabilities, align 4
  %291 = icmp ne i32 %290, 0
  %292 = select i1 %289, i1 %291, i1 false
  br i1 %292, label %293, label %322

293:                                              ; preds = %280
  %294 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %295 = call i64 @fwrite(ptr nonnull @.str.12, i64 15, i64 1, ptr %294)
  %296 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %297 = getelementptr inbounds %struct.basic_block_def, ptr %245, i64 0, i32 8
  %298 = load i64, ptr %297, align 8, !tbaa !121
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef nonnull @.str.13, i64 noundef %298)
  %300 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %301 = call i32 @fputc(i32 10, ptr %300)
  %302 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %303 = call i64 @fwrite(ptr nonnull @.str.15, i64 15, i64 1, ptr %302)
  %304 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %304, ptr noundef nonnull @.str.13, i64 noundef %263)
  %306 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %307 = call i32 @fputc(i32 10, ptr %306)
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %309 = call i64 @fwrite(ptr nonnull @.str.16, i64 20, i64 1, ptr %308)
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %311 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %312 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %311, i64 0, i32 4
  %313 = load i64, ptr %312, align 8, !tbaa !122
  %314 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef nonnull @.str.13, i64 noundef %313)
  %315 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %316 = call i32 @fputc(i32 10, ptr %315)
  br label %322

317:                                              ; preds = %267, %262
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %319 = icmp eq ptr %318, null
  br i1 %319, label %322, label %320

320:                                              ; preds = %317
  %321 = call i64 @fwrite(ptr nonnull @.str.17, i64 31, i64 1, ptr nonnull %318)
  br label %322

322:                                              ; preds = %178, %175, %186, %183, %223, %220, %317, %320, %277, %293, %280, %238, %241, %141, %142
  %323 = phi i64 [ %133, %142 ], [ %133, %141 ], [ %133, %241 ], [ %133, %238 ], [ %263, %280 ], [ %263, %293 ], [ %263, %277 ], [ %263, %320 ], [ %263, %317 ], [ %133, %220 ], [ %133, %223 ], [ %133, %183 ], [ %133, %186 ], [ %133, %175 ], [ %133, %178 ]
  %324 = phi ptr [ %132, %142 ], [ %132, %141 ], [ %132, %241 ], [ %132, %238 ], [ %245, %280 ], [ %245, %293 ], [ %245, %277 ], [ %245, %320 ], [ %245, %317 ], [ %132, %220 ], [ %132, %223 ], [ %132, %183 ], [ %132, %186 ], [ %132, %175 ], [ %132, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  br i1 %138, label %357, label %325

325:                                              ; preds = %322
  %326 = icmp eq ptr %135, null
  %327 = load ptr, ptr @cfun, align 8
  %328 = getelementptr inbounds %struct.function, ptr %327, i64 0, i32 4
  br label %329

329:                                              ; preds = %325, %341
  %330 = phi i32 [ %342, %341 ], [ %136, %325 ]
  br i1 %326, label %338, label %331

331:                                              ; preds = %329
  %332 = load i32, ptr %135, align 4, !tbaa !100
  %333 = icmp ugt i32 %332, %330
  br i1 %333, label %334, label %338

334:                                              ; preds = %331
  %335 = zext i32 %330 to i64
  %336 = getelementptr inbounds %struct.VEC_int_base, ptr %135, i64 0, i32 2, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !50
  br label %338

338:                                              ; preds = %334, %331, %329
  %339 = phi i32 [ %337, %334 ], [ 0, %331 ], [ 0, %329 ]
  %340 = phi i1 [ false, %334 ], [ true, %331 ], [ true, %329 ]
  br i1 %340, label %350, label %341

341:                                              ; preds = %338
  %342 = add i32 %330, 1
  %343 = load ptr, ptr %328, align 8, !tbaa !76
  %344 = getelementptr inbounds %struct.loops, ptr %343, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !77
  %346 = zext i32 %339 to i64
  %347 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %345, i64 0, i32 2, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !35
  %349 = icmp eq ptr %348, null
  br i1 %349, label %329, label %352, !llvm.loop !107

350:                                              ; preds = %338
  br i1 %326, label %352, label %351

351:                                              ; preds = %350
  call void @free(ptr noundef %135)
  br label %352

352:                                              ; preds = %341, %350, %351
  %353 = phi i32 [ %330, %351 ], [ %330, %350 ], [ %342, %341 ]
  %354 = phi ptr [ null, %351 ], [ null, %350 ], [ %135, %341 ]
  %355 = phi ptr [ null, %351 ], [ null, %350 ], [ %348, %341 ]
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %131, !llvm.loop !124

357:                                              ; preds = %352, %322, %126
  %358 = phi i64 [ 0, %126 ], [ %323, %322 ], [ %323, %352 ]
  %359 = phi ptr [ null, %126 ], [ %324, %322 ], [ %324, %352 ]
  %360 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %361 = icmp eq ptr %360, null
  br i1 %361, label %366, label %362

362:                                              ; preds = %357
  %363 = call i64 @fwrite(ptr nonnull @.str.24, i64 26, i64 1, ptr nonnull %360)
  %364 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %365 = call i64 @fwrite(ptr nonnull @.str.25, i64 27, i64 1, ptr %364)
  br label %366

366:                                              ; preds = %362, %357
  %367 = load ptr, ptr @cfun, align 8, !tbaa !35
  %368 = getelementptr inbounds %struct.function, ptr %367, i64 0, i32 4
  %369 = load ptr, ptr %368, align 8, !tbaa !76
  %370 = icmp eq ptr %369, null
  br i1 %370, label %446, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds %struct.loops, ptr %369, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !77
  %374 = icmp eq ptr %373, null
  br i1 %374, label %377, label %375

375:                                              ; preds = %371
  %376 = load i32, ptr %373, align 8, !tbaa !79
  br label %377

377:                                              ; preds = %375, %371
  %378 = phi i32 [ %376, %375 ], [ 0, %371 ]
  %379 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %378, i64 noundef 8, i64 noundef 4) #20
  %380 = load ptr, ptr @cfun, align 8, !tbaa !35
  %381 = getelementptr inbounds %struct.function, ptr %380, i64 0, i32 4
  %382 = load ptr, ptr %381, align 8, !tbaa !76
  %383 = getelementptr inbounds %struct.loops, ptr %382, i64 0, i32 3
  %384 = load ptr, ptr %383, align 8, !tbaa !95
  br label %385

385:                                              ; preds = %398, %377
  %386 = phi ptr [ %384, %377 ], [ %399, %398 ]
  %387 = load i32, ptr %386, align 8, !tbaa !96
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %385
  %390 = load i32, ptr %379, align 4, !tbaa !100
  %391 = add i32 %390, 1
  store i32 %391, ptr %379, align 4, !tbaa !100
  %392 = zext i32 %390 to i64
  %393 = getelementptr inbounds %struct.VEC_int_base, ptr %379, i64 0, i32 2, i64 %392
  store i32 %387, ptr %393, align 4, !tbaa !50
  br label %394

394:                                              ; preds = %389, %385
  %395 = getelementptr inbounds %struct.loop, ptr %386, i64 0, i32 8
  %396 = load ptr, ptr %395, align 8, !tbaa !102
  %397 = icmp eq ptr %396, null
  br i1 %397, label %403, label %398

398:                                              ; preds = %403, %394
  %399 = phi ptr [ %396, %394 ], [ %406, %403 ]
  br label %385, !llvm.loop !103

400:                                              ; preds = %422
  %401 = icmp eq ptr %379, null
  %402 = getelementptr inbounds %struct.loops, ptr %382, i64 0, i32 1
  br label %425

403:                                              ; preds = %394, %422
  %404 = phi ptr [ %423, %422 ], [ %386, %394 ]
  %405 = getelementptr inbounds %struct.loop, ptr %404, i64 0, i32 9
  %406 = load ptr, ptr %405, align 8, !tbaa !104
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %398, !llvm.loop !103

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.loop, ptr %404, i64 0, i32 7
  %410 = load ptr, ptr %409, align 8, !tbaa !105
  %411 = icmp eq ptr %410, null
  br i1 %411, label %414, label %412

412:                                              ; preds = %408
  %413 = load i32, ptr %410, align 8, !tbaa !79
  br label %414

414:                                              ; preds = %412, %408
  %415 = phi i32 [ %413, %412 ], [ 0, %408 ]
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %422, label %417

417:                                              ; preds = %414
  %418 = add i32 %415, -1
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %410, i64 0, i32 2, i64 %419
  %421 = load ptr, ptr %420, align 8, !tbaa !35
  br label %422

422:                                              ; preds = %417, %414
  %423 = phi ptr [ %421, %417 ], [ null, %414 ]
  %424 = icmp eq ptr %423, null
  br i1 %424, label %400, label %403, !llvm.loop !106

425:                                              ; preds = %400, %437
  %426 = phi i32 [ %438, %437 ], [ 0, %400 ]
  br i1 %401, label %434, label %427

427:                                              ; preds = %425
  %428 = load i32, ptr %379, align 4, !tbaa !100
  %429 = icmp ugt i32 %428, %426
  br i1 %429, label %430, label %434

430:                                              ; preds = %427
  %431 = zext i32 %426 to i64
  %432 = getelementptr inbounds %struct.VEC_int_base, ptr %379, i64 0, i32 2, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !50
  br label %434

434:                                              ; preds = %430, %427, %425
  %435 = phi i32 [ %433, %430 ], [ 0, %427 ], [ 0, %425 ]
  %436 = phi i1 [ false, %430 ], [ true, %427 ], [ true, %425 ]
  br i1 %436, label %444, label %437

437:                                              ; preds = %434
  %438 = add i32 %426, 1
  %439 = load ptr, ptr %402, align 8, !tbaa !77
  %440 = zext i32 %435 to i64
  %441 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %439, i64 0, i32 2, i64 %440
  %442 = load ptr, ptr %441, align 8, !tbaa !35
  %443 = icmp eq ptr %442, null
  br i1 %443, label %425, label %446, !llvm.loop !107

444:                                              ; preds = %434
  br i1 %401, label %446, label %445

445:                                              ; preds = %444
  call void @free(ptr noundef %379)
  br label %446

446:                                              ; preds = %437, %444, %445, %366
  %447 = phi i32 [ 0, %366 ], [ %426, %445 ], [ %426, %444 ], [ %438, %437 ]
  %448 = phi ptr [ null, %366 ], [ null, %445 ], [ null, %444 ], [ %379, %437 ]
  %449 = phi ptr [ null, %366 ], [ null, %445 ], [ null, %444 ], [ %442, %437 ]
  %450 = icmp eq ptr %449, null
  br i1 %450, label %2690, label %451

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct.basic_block_def, ptr %359, i64 0, i32 8
  br label %453

453:                                              ; preds = %451, %2685
  %454 = phi i64 [ %358, %451 ], [ %2658, %2685 ]
  %455 = phi ptr [ %449, %451 ], [ %2688, %2685 ]
  %456 = phi ptr [ %448, %451 ], [ %2687, %2685 ]
  %457 = phi i32 [ %447, %451 ], [ %2686, %2685 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %458 = load i32, ptr %455, align 8, !tbaa !96
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds ptr, ptr %39, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !35
  %462 = icmp eq ptr %461, null
  br i1 %462, label %2657, label %463

463:                                              ; preds = %453
  %464 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %465 = icmp eq ptr %464, null
  br i1 %465, label %477, label %466

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct.loop, ptr %455, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !108
  %469 = getelementptr inbounds %struct.basic_block_def, ptr %468, i64 0, i32 7
  %470 = load ptr, ptr %469, align 8, !tbaa !46
  %471 = getelementptr inbounds %struct.rtl_bb_info, ptr %470, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !109
  %473 = call ptr @insn_file(ptr noundef %472) #20
  %474 = call i32 @insn_line(ptr noundef %472) #20
  %475 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %464, ptr noundef nonnull @.str.6, i32 noundef %458, ptr noundef %473, i32 noundef %474)
  %476 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_ddg(ptr noundef %476, ptr noundef nonnull %461) #20
  br label %477

477:                                              ; preds = %466, %463
  %478 = getelementptr inbounds %struct.loop, ptr %455, i64 0, i32 2
  %479 = load ptr, ptr %478, align 8, !tbaa !108
  call void @get_ebb_head_tail(ptr noundef %479, ptr noundef %479, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %480 = call ptr @loop_latch_edge(ptr noundef nonnull %455) #20
  %481 = call ptr @single_exit(ptr noundef nonnull %455) #20
  %482 = icmp eq ptr %481, null
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1095, ptr noundef nonnull @.str.9) #20
  br label %484

484:                                              ; preds = %477, %483
  %485 = call ptr @single_exit(ptr noundef nonnull %455) #20
  %486 = getelementptr inbounds %struct.edge_def, ptr %485, i64 0, i32 9
  %487 = load i64, ptr %486, align 8, !tbaa !117
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %496, label %489

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.edge_def, ptr %480, i64 0, i32 9
  %491 = load i64, ptr %490, align 8, !tbaa !117
  %492 = call ptr @single_exit(ptr noundef nonnull %455) #20
  %493 = getelementptr inbounds %struct.edge_def, ptr %492, i64 0, i32 9
  %494 = load i64, ptr %493, align 8, !tbaa !117
  %495 = sdiv i64 %491, %494
  br label %496

496:                                              ; preds = %489, %484
  %497 = phi i64 [ %495, %489 ], [ %454, %484 ]
  %498 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %499 = icmp eq ptr %498, null
  br i1 %499, label %545, label %500

500:                                              ; preds = %496
  %501 = load ptr, ptr %4, align 8, !tbaa !35
  %502 = call ptr @insn_file(ptr noundef %501) #20
  %503 = load ptr, ptr %4, align 8, !tbaa !35
  %504 = call i32 @insn_line(ptr noundef %503) #20
  %505 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %498, ptr noundef nonnull @.str.10, ptr noundef %502, i32 noundef %504)
  %506 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %507 = call i64 @fwrite(ptr nonnull @.str.11, i64 19, i64 1, ptr %506)
  %508 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %509 = icmp ne ptr %508, null
  %510 = load i32, ptr @flag_branch_probabilities, align 4
  %511 = icmp ne i32 %510, 0
  %512 = select i1 %509, i1 %511, i1 false
  br i1 %512, label %513, label %530

513:                                              ; preds = %500
  %514 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %515 = call i64 @fwrite(ptr nonnull @.str.12, i64 15, i64 1, ptr %514)
  %516 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %517 = load i64, ptr %452, align 8, !tbaa !121
  %518 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %516, ptr noundef nonnull @.str.13, i64 noundef %517)
  %519 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %520 = call i32 @fputc(i32 10, ptr %519)
  %521 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %522 = call i64 @fwrite(ptr nonnull @.str.16, i64 20, i64 1, ptr %521)
  %523 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %524 = load ptr, ptr @profile_info, align 8, !tbaa !35
  %525 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %524, i64 0, i32 4
  %526 = load i64, ptr %525, align 8, !tbaa !122
  %527 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %523, ptr noundef nonnull @.str.13, i64 noundef %526)
  %528 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %529 = call i32 @fputc(i32 10, ptr %528)
  br label %530

530:                                              ; preds = %513, %500
  %531 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %532 = call i64 @fwrite(ptr nonnull @.str.26, i64 11, i64 1, ptr %531)
  %533 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %534 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 1
  %535 = load i32, ptr %534, align 8, !tbaa !125
  %536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %533, ptr noundef nonnull @.str.27, i32 noundef %535)
  %537 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %538 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 2
  %539 = load i32, ptr %538, align 4, !tbaa !127
  %540 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %537, ptr noundef nonnull @.str.28, i32 noundef %539)
  %541 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %542 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 3
  %543 = load i32, ptr %542, align 8, !tbaa !128
  %544 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %541, ptr noundef nonnull @.str.29, i32 noundef %543)
  br label %545

545:                                              ; preds = %530, %496
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1133, ptr noundef nonnull @.str.9) #20
  %546 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 1
  %547 = load i32, ptr %546, align 8, !tbaa !125
  %548 = sext i32 %547 to i64
  %549 = shl nsw i64 %548, 2
  %550 = call ptr @xmalloc(i64 noundef %549) #20
  %551 = call ptr @create_ddg_all_sccs(ptr noundef %461) #20
  %552 = load i32, ptr %546, align 8, !tbaa !125
  %553 = sext i32 %552 to i64
  %554 = call ptr @xcalloc(i64 noundef %553, i64 noundef 12) #20
  %555 = icmp sgt i32 %552, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %545
  %557 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  %558 = zext nneg i32 %552 to i64
  br label %565

559:                                              ; preds = %565, %545
  %560 = icmp sgt i32 %552, 0
  br i1 %560, label %561, label %572

561:                                              ; preds = %559
  %562 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  %563 = load ptr, ptr %562, align 8, !tbaa !129
  %564 = zext nneg i32 %552 to i64
  br label %579

565:                                              ; preds = %556, %565
  %566 = phi i64 [ 0, %556 ], [ %570, %565 ]
  %567 = getelementptr inbounds %struct.node_order_params, ptr %554, i64 %566
  %568 = load ptr, ptr %557, align 8, !tbaa !129
  %569 = getelementptr inbounds %struct.ddg_node, ptr %568, i64 %566, i32 7
  store ptr %567, ptr %569, align 8, !tbaa !46
  %570 = add nuw nsw i64 %566, 1
  %571 = icmp eq i64 %570, %558
  br i1 %571, label %559, label %565, !llvm.loop !130

572:                                              ; preds = %607, %559
  %573 = phi i32 [ 0, %559 ], [ %610, %607 ]
  %574 = icmp sgt i32 %552, 0
  br i1 %574, label %575, label %657

575:                                              ; preds = %572
  %576 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  %577 = load ptr, ptr %576, align 8, !tbaa !129
  %578 = zext nneg i32 %552 to i64
  br label %615

579:                                              ; preds = %561, %607
  %580 = phi i64 [ 0, %561 ], [ %611, %607 ]
  %581 = phi i32 [ 0, %561 ], [ %610, %607 ]
  %582 = getelementptr inbounds %struct.ddg_node, ptr %563, i64 %580, i32 7
  %583 = load ptr, ptr %582, align 8, !tbaa !46
  store i32 0, ptr %583, align 4, !tbaa !131
  %584 = getelementptr inbounds %struct.ddg_node, ptr %563, i64 %580, i32 3
  %585 = load ptr, ptr %584, align 8, !tbaa !35
  %586 = icmp eq ptr %585, null
  br i1 %586, label %607, label %587

587:                                              ; preds = %579, %603
  %588 = phi ptr [ %605, %603 ], [ %585, %579 ]
  %589 = getelementptr inbounds %struct.ddg_edge, ptr %588, i64 0, i32 5
  %590 = load i32, ptr %589, align 4, !tbaa !133
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %603

592:                                              ; preds = %587
  %593 = load ptr, ptr %582, align 8, !tbaa !46
  %594 = load i32, ptr %593, align 4, !tbaa !131
  %595 = load ptr, ptr %588, align 8, !tbaa !135
  %596 = getelementptr inbounds %struct.ddg_node, ptr %595, i64 0, i32 7
  %597 = load ptr, ptr %596, align 8, !tbaa !46
  %598 = load i32, ptr %597, align 4, !tbaa !131
  %599 = getelementptr inbounds %struct.ddg_edge, ptr %588, i64 0, i32 4
  %600 = load i32, ptr %599, align 8, !tbaa !136
  %601 = add nsw i32 %600, %598
  %602 = call i32 @llvm.smax.i32(i32 %594, i32 %601)
  store i32 %602, ptr %593, align 4, !tbaa !131
  br label %603

603:                                              ; preds = %592, %587
  %604 = getelementptr inbounds %struct.ddg_edge, ptr %588, i64 0, i32 6
  %605 = load ptr, ptr %604, align 8, !tbaa !35
  %606 = icmp eq ptr %605, null
  br i1 %606, label %607, label %587, !llvm.loop !137

607:                                              ; preds = %603, %579
  %608 = load ptr, ptr %582, align 8, !tbaa !46
  %609 = load i32, ptr %608, align 4, !tbaa !131
  %610 = call i32 @llvm.smax.i32(i32 %581, i32 %609)
  %611 = add nuw nsw i64 %580, 1
  %612 = icmp eq i64 %611, %564
  br i1 %612, label %572, label %579, !llvm.loop !138

613:                                              ; preds = %653, %615
  %614 = icmp sgt i64 %616, 1
  br i1 %614, label %615, label %657, !llvm.loop !139

615:                                              ; preds = %575, %613
  %616 = phi i64 [ %578, %575 ], [ %617, %613 ]
  %617 = add nsw i64 %616, -1
  %618 = getelementptr inbounds %struct.ddg_node, ptr %577, i64 %617, i32 7
  %619 = load ptr, ptr %618, align 8, !tbaa !46
  %620 = getelementptr inbounds %struct.node_order_params, ptr %619, i64 0, i32 1
  store i32 %573, ptr %620, align 4, !tbaa !140
  %621 = load ptr, ptr %618, align 8, !tbaa !46
  %622 = getelementptr inbounds %struct.node_order_params, ptr %621, i64 0, i32 2
  store i32 0, ptr %622, align 4, !tbaa !141
  %623 = getelementptr inbounds %struct.ddg_node, ptr %577, i64 %617, i32 4
  %624 = load ptr, ptr %623, align 8, !tbaa !35
  %625 = icmp eq ptr %624, null
  br i1 %625, label %613, label %626

626:                                              ; preds = %615, %653
  %627 = phi ptr [ %655, %653 ], [ %624, %615 ]
  %628 = getelementptr inbounds %struct.ddg_edge, ptr %627, i64 0, i32 5
  %629 = load i32, ptr %628, align 4, !tbaa !133
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %653

631:                                              ; preds = %626
  %632 = load ptr, ptr %618, align 8, !tbaa !46
  %633 = getelementptr inbounds %struct.node_order_params, ptr %632, i64 0, i32 1
  %634 = load i32, ptr %633, align 4, !tbaa !140
  %635 = getelementptr inbounds %struct.ddg_edge, ptr %627, i64 0, i32 1
  %636 = load ptr, ptr %635, align 8, !tbaa !142
  %637 = getelementptr inbounds %struct.ddg_node, ptr %636, i64 0, i32 7
  %638 = load ptr, ptr %637, align 8, !tbaa !46
  %639 = getelementptr inbounds %struct.node_order_params, ptr %638, i64 0, i32 1
  %640 = load i32, ptr %639, align 4, !tbaa !140
  %641 = getelementptr inbounds %struct.ddg_edge, ptr %627, i64 0, i32 4
  %642 = load i32, ptr %641, align 8, !tbaa !136
  %643 = sub nsw i32 %640, %642
  %644 = call i32 @llvm.smin.i32(i32 %634, i32 %643)
  store i32 %644, ptr %633, align 4, !tbaa !140
  %645 = load ptr, ptr %618, align 8, !tbaa !46
  %646 = getelementptr inbounds %struct.node_order_params, ptr %645, i64 0, i32 2
  %647 = load i32, ptr %646, align 4, !tbaa !141
  %648 = load ptr, ptr %637, align 8, !tbaa !46
  %649 = getelementptr inbounds %struct.node_order_params, ptr %648, i64 0, i32 2
  %650 = load i32, ptr %649, align 4, !tbaa !141
  %651 = add nsw i32 %650, %642
  %652 = call i32 @llvm.smax.i32(i32 %647, i32 %651)
  store i32 %652, ptr %646, align 4, !tbaa !141
  br label %653

653:                                              ; preds = %631, %626
  %654 = getelementptr inbounds %struct.ddg_edge, ptr %627, i64 0, i32 7
  %655 = load ptr, ptr %654, align 8, !tbaa !35
  %656 = icmp eq ptr %655, null
  br i1 %656, label %613, label %626, !llvm.loop !143

657:                                              ; preds = %613, %572
  %658 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %659 = icmp eq ptr %658, null
  br i1 %659, label %681, label %660

660:                                              ; preds = %657
  %661 = call i64 @fwrite(ptr nonnull @.str.42, i64 14, i64 1, ptr nonnull %658)
  %662 = icmp sgt i32 %552, 0
  br i1 %662, label %663, label %681

663:                                              ; preds = %660
  %664 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  %665 = zext nneg i32 %552 to i64
  br label %666

666:                                              ; preds = %663, %666
  %667 = phi i64 [ 0, %663 ], [ %679, %666 ]
  %668 = load ptr, ptr %664, align 8, !tbaa !129
  %669 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %670 = getelementptr inbounds %struct.ddg_node, ptr %668, i64 %667, i32 7
  %671 = load ptr, ptr %670, align 8, !tbaa !46
  %672 = load i32, ptr %671, align 4, !tbaa !131
  %673 = getelementptr inbounds %struct.node_order_params, ptr %671, i64 0, i32 1
  %674 = load i32, ptr %673, align 4, !tbaa !140
  %675 = getelementptr inbounds %struct.node_order_params, ptr %671, i64 0, i32 2
  %676 = load i32, ptr %675, align 4, !tbaa !141
  %677 = trunc i64 %667 to i32
  %678 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %669, ptr noundef nonnull @.str.43, i32 noundef %677, i32 noundef %672, i32 noundef %674, i32 noundef %676)
  %679 = add nuw nsw i64 %667, 1
  %680 = icmp eq i64 %679, %665
  br i1 %680, label %681, label %666, !llvm.loop !144

681:                                              ; preds = %666, %660, %657
  %682 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %683 = icmp eq ptr %682, null
  br i1 %683, label %685, label %684

684:                                              ; preds = %681
  call void @print_sccs(ptr noundef nonnull %682, ptr noundef %551, ptr noundef %461) #20
  br label %685

685:                                              ; preds = %684, %681
  %686 = getelementptr inbounds %struct.ddg_all_sccs, ptr %551, i64 0, i32 2
  %687 = load ptr, ptr %686, align 8, !tbaa !145
  %688 = getelementptr inbounds %struct.ddg, ptr %687, i64 0, i32 1
  %689 = load i32, ptr %688, align 8, !tbaa !125
  %690 = call ptr @sbitmap_alloc(i32 noundef %689) #20
  %691 = call ptr @sbitmap_alloc(i32 noundef %689) #20
  %692 = call ptr @sbitmap_alloc(i32 noundef %689) #20
  %693 = call ptr @sbitmap_alloc(i32 noundef %689) #20
  call void @sbitmap_zero(ptr noundef %690) #20
  call void @sbitmap_ones(ptr noundef %693) #20
  %694 = getelementptr inbounds %struct.ddg_all_sccs, ptr %551, i64 0, i32 1
  %695 = load i32, ptr %694, align 8, !tbaa !147
  %696 = icmp sgt i32 %695, 0
  br i1 %696, label %702, label %697

697:                                              ; preds = %702, %685
  %698 = phi i32 [ 0, %685 ], [ %713, %702 ]
  %699 = getelementptr inbounds %struct.ddg_all_sccs, ptr %551, i64 0, i32 1
  %700 = load i32, ptr %688, align 8, !tbaa !125
  %701 = icmp slt i32 %698, %700
  br i1 %701, label %718, label %723

702:                                              ; preds = %685, %702
  %703 = phi i64 [ %714, %702 ], [ 0, %685 ]
  %704 = phi i32 [ %713, %702 ], [ 0, %685 ]
  %705 = load ptr, ptr %551, align 8, !tbaa !148
  %706 = getelementptr inbounds ptr, ptr %705, i64 %703
  %707 = load ptr, ptr %706, align 8, !tbaa !35
  %708 = load ptr, ptr %707, align 8, !tbaa !149
  %709 = call i32 @find_nodes_on_paths(ptr noundef %691, ptr noundef %687, ptr noundef %690, ptr noundef %708) #20
  %710 = load ptr, ptr %707, align 8, !tbaa !149
  call void @sbitmap_a_or_b(ptr noundef %692, ptr noundef %710, ptr noundef %691) #20
  %711 = load ptr, ptr %707, align 8, !tbaa !149
  %712 = call i32 @find_nodes_on_paths(ptr noundef %691, ptr noundef %687, ptr noundef %711, ptr noundef %690) #20
  call void @sbitmap_a_or_b(ptr noundef %692, ptr noundef %692, ptr noundef %691) #20
  call void @sbitmap_difference(ptr noundef %692, ptr noundef %692, ptr noundef %690) #20
  %713 = call fastcc i32 @order_nodes_in_scc(ptr noundef %687, ptr noundef %690, ptr noundef %692, ptr noundef %550, i32 noundef %704)
  %714 = add nuw nsw i64 %703, 1
  %715 = load i32, ptr %694, align 8, !tbaa !147
  %716 = sext i32 %715 to i64
  %717 = icmp slt i64 %714, %716
  br i1 %717, label %702, label %697, !llvm.loop !151

718:                                              ; preds = %697, %718
  %719 = phi i32 [ %720, %718 ], [ %698, %697 ]
  call void @sbitmap_difference(ptr noundef %692, ptr noundef %693, ptr noundef %690) #20
  %720 = call fastcc i32 @order_nodes_in_scc(ptr noundef %687, ptr noundef %690, ptr noundef %692, ptr noundef %550, i32 noundef %719)
  %721 = load i32, ptr %688, align 8, !tbaa !125
  %722 = icmp slt i32 %720, %721
  br i1 %722, label %718, label %723, !llvm.loop !152

723:                                              ; preds = %718, %697
  %724 = load ptr, ptr %690, align 8, !tbaa !153
  call void @free(ptr noundef %724)
  call void @free(ptr noundef %690)
  %725 = load ptr, ptr %691, align 8, !tbaa !153
  call void @free(ptr noundef %725)
  call void @free(ptr noundef %691)
  %726 = load ptr, ptr %692, align 8, !tbaa !153
  call void @free(ptr noundef %726)
  call void @free(ptr noundef %692)
  %727 = load ptr, ptr %693, align 8, !tbaa !153
  call void @free(ptr noundef %727)
  call void @free(ptr noundef %693)
  %728 = load i32, ptr %699, align 8, !tbaa !147
  %729 = icmp sgt i32 %728, 0
  br i1 %729, label %730, label %735

730:                                              ; preds = %723
  %731 = load ptr, ptr %551, align 8, !tbaa !148
  %732 = load ptr, ptr %731, align 8, !tbaa !35
  %733 = getelementptr inbounds %struct.ddg_scc, ptr %732, i64 0, i32 3
  %734 = load i32, ptr %733, align 4, !tbaa !155
  br label %735

735:                                              ; preds = %730, %723
  %736 = phi i32 [ %734, %730 ], [ 0, %723 ]
  %737 = load i32, ptr %546, align 8, !tbaa !125
  %738 = icmp sgt i32 %737, 0
  br i1 %738, label %739, label %751

739:                                              ; preds = %735
  %740 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  br label %741

741:                                              ; preds = %739, %741
  %742 = phi i64 [ 0, %739 ], [ %747, %741 ]
  %743 = load ptr, ptr %740, align 8, !tbaa !129
  %744 = getelementptr inbounds %struct.ddg_node, ptr %743, i64 %742, i32 7
  %745 = load ptr, ptr %744, align 8, !tbaa !46
  %746 = load i32, ptr %745, align 4, !tbaa !131
  store i32 %746, ptr %744, align 8, !tbaa !46
  %747 = add nuw nsw i64 %742, 1
  %748 = load i32, ptr %546, align 8, !tbaa !125
  %749 = sext i32 %748 to i64
  %750 = icmp slt i64 %747, %749
  br i1 %750, label %741, label %751, !llvm.loop !156

751:                                              ; preds = %741, %735
  call void @free(ptr noundef %554)
  call void @free_ddg_all_sccs(ptr noundef %551) #20
  %752 = load i32, ptr %546, align 8, !tbaa !125
  %753 = call ptr @sbitmap_alloc(i32 noundef %752) #20
  call void @sbitmap_zero(ptr noundef %753) #20
  %754 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %755 = icmp eq ptr %754, null
  br i1 %755, label %758, label %756

756:                                              ; preds = %751
  %757 = call i64 @fwrite(ptr nonnull @.str.44, i64 24, i64 1, ptr nonnull %754)
  br label %758

758:                                              ; preds = %756, %751
  %759 = icmp sgt i32 %752, 0
  br i1 %759, label %760, label %811

760:                                              ; preds = %758
  %761 = zext nneg i32 %752 to i64
  br label %762

762:                                              ; preds = %760, %800
  %763 = phi i64 [ 0, %760 ], [ %809, %800 ]
  %764 = getelementptr inbounds i32, ptr %550, i64 %763
  %765 = load i32, ptr %764, align 4, !tbaa !50
  %766 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %767 = icmp eq ptr %766, null
  br i1 %767, label %770, label %768

768:                                              ; preds = %762
  %769 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %766, ptr noundef nonnull @.str.45, i32 noundef %765)
  br label %770

770:                                              ; preds = %768, %762
  %771 = icmp ult i32 %765, %752
  br i1 %771, label %772, label %782

772:                                              ; preds = %770
  %773 = lshr i32 %765, 6
  %774 = zext nneg i32 %773 to i64
  %775 = getelementptr inbounds %struct.simple_bitmap_def, ptr %753, i64 0, i32 3, i64 %774
  %776 = load i64, ptr %775, align 8, !tbaa !157
  %777 = and i32 %765, 63
  %778 = zext nneg i32 %777 to i64
  %779 = shl nuw i64 1, %778
  %780 = and i64 %776, %779
  %781 = icmp eq i64 %780, 0
  br i1 %781, label %783, label %782

782:                                              ; preds = %772, %770
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2079, ptr noundef nonnull @.str.9) #20
  br label %783

783:                                              ; preds = %782, %772
  %784 = load ptr, ptr %753, align 8, !tbaa !153
  %785 = icmp eq ptr %784, null
  br i1 %785, label %800, label %786

786:                                              ; preds = %783
  %787 = lshr i32 %765, 6
  %788 = zext nneg i32 %787 to i64
  %789 = getelementptr inbounds %struct.simple_bitmap_def, ptr %753, i64 0, i32 3, i64 %788
  %790 = load i64, ptr %789, align 8, !tbaa !157
  %791 = and i32 %765, 63
  %792 = zext nneg i32 %791 to i64
  %793 = shl nuw i64 1, %792
  %794 = and i64 %790, %793
  %795 = icmp eq i64 %794, 0
  br i1 %795, label %796, label %800

796:                                              ; preds = %786
  %797 = getelementptr inbounds i8, ptr %784, i64 %788
  %798 = load i8, ptr %797, align 1, !tbaa !46
  %799 = add i8 %798, 1
  store i8 %799, ptr %797, align 1, !tbaa !46
  br label %800

800:                                              ; preds = %796, %786, %783
  %801 = and i32 %765, 63
  %802 = zext nneg i32 %801 to i64
  %803 = shl nuw i64 1, %802
  %804 = lshr i32 %765, 6
  %805 = zext nneg i32 %804 to i64
  %806 = getelementptr inbounds %struct.simple_bitmap_def, ptr %753, i64 0, i32 3, i64 %805
  %807 = load i64, ptr %806, align 8, !tbaa !157
  %808 = or i64 %807, %803
  store i64 %808, ptr %806, align 8, !tbaa !157
  %809 = add nuw nsw i64 %763, 1
  %810 = icmp eq i64 %809, %761
  br i1 %810, label %811, label %762, !llvm.loop !158

811:                                              ; preds = %800, %758
  %812 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %813 = icmp eq ptr %812, null
  br i1 %813, label %816, label %814

814:                                              ; preds = %811
  %815 = call i32 @fputc(i32 10, ptr nonnull %812)
  br label %816

816:                                              ; preds = %811, %814
  %817 = load ptr, ptr %753, align 8, !tbaa !153
  call void @free(ptr noundef %817)
  call void @free(ptr noundef %753)
  %818 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 36), align 8, !tbaa !159
  %819 = icmp eq ptr %818, null
  br i1 %819, label %822, label %820

820:                                              ; preds = %816
  %821 = call i32 %818(ptr noundef %461) #20
  br label %829

822:                                              ; preds = %816
  %823 = load i32, ptr %546, align 8, !tbaa !125
  %824 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 4
  %825 = load i32, ptr %824, align 4, !tbaa !160
  %826 = sub nsw i32 %823, %825
  %827 = load i32, ptr @issue_rate, align 4, !tbaa !50
  %828 = sdiv i32 %826, %827
  br label %829

829:                                              ; preds = %820, %822
  %830 = phi i32 [ %821, %820 ], [ %828, %822 ]
  %831 = icmp sgt i32 %830, %736
  br i1 %831, label %832, label %844

832:                                              ; preds = %829
  %833 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 36), align 8, !tbaa !159
  %834 = icmp eq ptr %833, null
  br i1 %834, label %837, label %835

835:                                              ; preds = %832
  %836 = call i32 %833(ptr noundef %461) #20
  br label %844

837:                                              ; preds = %832
  %838 = load i32, ptr %546, align 8, !tbaa !125
  %839 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 4
  %840 = load i32, ptr %839, align 4, !tbaa !160
  %841 = sub nsw i32 %838, %840
  %842 = load i32, ptr @issue_rate, align 4, !tbaa !50
  %843 = sdiv i32 %841, %842
  br label %844

844:                                              ; preds = %837, %835, %829
  %845 = phi i32 [ %736, %829 ], [ %836, %835 ], [ %843, %837 ]
  %846 = shl nsw i32 %845, 1
  %847 = call i32 @llvm.smax.i32(i32 %573, i32 %846)
  %848 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %849 = icmp eq ptr %848, null
  br i1 %849, label %852, label %850

850:                                              ; preds = %844
  %851 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %848, ptr noundef nonnull @.str.31, i32 noundef %736, i32 noundef %845, i32 noundef %847)
  br label %852

852:                                              ; preds = %850, %844
  %853 = load i32, ptr %546, align 8, !tbaa !125
  %854 = sext i32 %853 to i64
  %855 = call ptr @xcalloc(i64 noundef %854, i64 noundef 32) #20
  store ptr %855, ptr @node_sched_params, align 8, !tbaa !35
  %856 = load i32, ptr %546, align 8, !tbaa !125
  %857 = icmp sgt i32 %856, 0
  br i1 %857, label %858, label %870

858:                                              ; preds = %852
  %859 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  br label %860

860:                                              ; preds = %858, %860
  %861 = phi i64 [ 0, %858 ], [ %866, %860 ]
  %862 = load ptr, ptr %859, align 8, !tbaa !129
  %863 = getelementptr inbounds %struct.ddg_node, ptr %862, i64 %861, i32 7
  %864 = load i32, ptr %863, align 8, !tbaa !46
  %865 = getelementptr inbounds %struct.node_sched_params, ptr %855, i64 %861
  store i32 %864, ptr %865, align 8, !tbaa !161
  store ptr %865, ptr %863, align 8, !tbaa !46
  %866 = add nuw nsw i64 %861, 1
  %867 = load i32, ptr %546, align 8, !tbaa !125
  %868 = sext i32 %867 to i64
  %869 = icmp slt i64 %866, %868
  br i1 %869, label %860, label %870, !llvm.loop !163

870:                                              ; preds = %860, %852
  %871 = phi i32 [ %856, %852 ], [ %867, %860 ]
  %872 = call ptr @sbitmap_alloc(i32 noundef %871) #20
  %873 = call ptr @sbitmap_alloc(i32 noundef %871) #20
  %874 = call ptr @sbitmap_alloc(i32 noundef %871) #20
  %875 = call ptr @sbitmap_alloc(i32 noundef %871) #20
  %876 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %877 = getelementptr inbounds %struct.param_info, ptr %876, i64 40, i32 1
  %878 = load i32, ptr %877, align 8, !tbaa !119
  %879 = call ptr @xmalloc(i64 noundef 32) #20
  %880 = sext i32 %845 to i64
  %881 = call ptr @xcalloc(i64 noundef %880, i64 noundef 8) #20
  %882 = getelementptr inbounds %struct.partial_schedule, ptr %879, i64 0, i32 2
  store ptr %881, ptr %882, align 8, !tbaa !56
  store i32 %845, ptr %879, align 8, !tbaa !54
  %883 = getelementptr inbounds %struct.partial_schedule, ptr %879, i64 0, i32 1
  store i32 %878, ptr %883, align 4, !tbaa !164
  %884 = getelementptr inbounds %struct.partial_schedule, ptr %879, i64 0, i32 3
  store i32 2147483647, ptr %884, align 8, !tbaa !165
  %885 = getelementptr inbounds %struct.partial_schedule, ptr %879, i64 0, i32 4
  store i32 -2147483648, ptr %885, align 4, !tbaa !166
  %886 = getelementptr inbounds %struct.partial_schedule, ptr %879, i64 0, i32 5
  store ptr %461, ptr %886, align 8, !tbaa !167
  call void @sbitmap_ones(ptr noundef %875) #20
  call void @sbitmap_zero(ptr noundef %872) #20
  %887 = icmp slt i32 %845, %847
  br i1 %887, label %888, label %2044

888:                                              ; preds = %870
  %889 = icmp sgt i32 %871, 0
  %890 = icmp ne ptr %873, null
  %891 = icmp ne ptr %874, null
  %892 = and i1 %890, %891
  br label %893

893:                                              ; preds = %888, %2037
  %894 = phi i32 [ %845, %888 ], [ %2040, %2037 ]
  %895 = phi i32 [ 0, %888 ], [ %2038, %2037 ]
  %896 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %897 = icmp eq ptr %896, null
  br i1 %897, label %900, label %898

898:                                              ; preds = %893
  %899 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %896, ptr noundef nonnull @.str.46, i32 noundef %894)
  br label %900

900:                                              ; preds = %898, %893
  call void @sbitmap_zero(ptr noundef %872) #20
  br i1 %889, label %901, label %2037

901:                                              ; preds = %900, %2028
  %902 = phi i32 [ %2032, %2028 ], [ %894, %900 ]
  %903 = phi i32 [ %2034, %2028 ], [ 0, %900 ]
  %904 = phi i32 [ %2030, %2028 ], [ 0, %900 ]
  %905 = phi i32 [ %2029, %2028 ], [ %895, %900 ]
  %906 = sext i32 %903 to i64
  %907 = getelementptr inbounds i32, ptr %550, i64 %906
  %908 = load i32, ptr %907, align 4, !tbaa !50
  %909 = load ptr, ptr %886, align 8, !tbaa !167
  %910 = getelementptr inbounds %struct.ddg, ptr %909, i64 0, i32 5
  %911 = load ptr, ptr %910, align 8, !tbaa !129
  %912 = sext i32 %908 to i64
  %913 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912
  %914 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 1
  %915 = load ptr, ptr %914, align 8, !tbaa !59
  %916 = load i32, ptr %915, align 8
  %917 = and i32 %916, 65535
  %918 = add nsw i32 %917, -7
  %919 = icmp ult i32 %918, 4
  br i1 %919, label %920, label %921

920:                                              ; preds = %901
  switch i32 %917, label %975 [
    i32 7, label %921
    i32 9, label %948
  ]

921:                                              ; preds = %920, %901
  %922 = load ptr, ptr %875, align 8, !tbaa !153
  %923 = icmp eq ptr %922, null
  br i1 %923, label %938, label %924

924:                                              ; preds = %921
  %925 = lshr i32 %908, 6
  %926 = zext nneg i32 %925 to i64
  %927 = getelementptr inbounds %struct.simple_bitmap_def, ptr %875, i64 0, i32 3, i64 %926
  %928 = load i64, ptr %927, align 8, !tbaa !157
  %929 = and i32 %908, 63
  %930 = zext nneg i32 %929 to i64
  %931 = shl nuw i64 1, %930
  %932 = and i64 %928, %931
  %933 = icmp eq i64 %932, 0
  br i1 %933, label %938, label %934

934:                                              ; preds = %924
  %935 = getelementptr inbounds i8, ptr %922, i64 %926
  %936 = load i8, ptr %935, align 1, !tbaa !46
  %937 = add i8 %936, -1
  store i8 %937, ptr %935, align 1, !tbaa !46
  br label %938

938:                                              ; preds = %934, %924, %921
  %939 = and i32 %908, 63
  %940 = zext nneg i32 %939 to i64
  %941 = shl nuw i64 1, %940
  %942 = xor i64 %941, -1
  %943 = lshr i32 %908, 6
  %944 = zext nneg i32 %943 to i64
  %945 = getelementptr inbounds %struct.simple_bitmap_def, ptr %875, i64 0, i32 3, i64 %944
  %946 = load i64, ptr %945, align 8, !tbaa !157
  %947 = and i64 %946, %942
  store i64 %947, ptr %945, align 8, !tbaa !157
  br label %2028

948:                                              ; preds = %920
  %949 = load ptr, ptr %875, align 8, !tbaa !153
  %950 = icmp eq ptr %949, null
  br i1 %950, label %965, label %951

951:                                              ; preds = %948
  %952 = lshr i32 %908, 6
  %953 = zext nneg i32 %952 to i64
  %954 = getelementptr inbounds %struct.simple_bitmap_def, ptr %875, i64 0, i32 3, i64 %953
  %955 = load i64, ptr %954, align 8, !tbaa !157
  %956 = and i32 %908, 63
  %957 = zext nneg i32 %956 to i64
  %958 = shl nuw i64 1, %957
  %959 = and i64 %955, %958
  %960 = icmp eq i64 %959, 0
  br i1 %960, label %965, label %961

961:                                              ; preds = %951
  %962 = getelementptr inbounds i8, ptr %949, i64 %953
  %963 = load i8, ptr %962, align 1, !tbaa !46
  %964 = add i8 %963, -1
  store i8 %964, ptr %962, align 1, !tbaa !46
  br label %965

965:                                              ; preds = %961, %951, %948
  %966 = and i32 %908, 63
  %967 = zext nneg i32 %966 to i64
  %968 = shl nuw i64 1, %967
  %969 = xor i64 %968, -1
  %970 = lshr i32 %908, 6
  %971 = zext nneg i32 %970 to i64
  %972 = getelementptr inbounds %struct.simple_bitmap_def, ptr %875, i64 0, i32 3, i64 %971
  %973 = load i64, ptr %972, align 8, !tbaa !157
  %974 = and i64 %973, %969
  store i64 %974, ptr %972, align 8, !tbaa !157
  br label %2028

975:                                              ; preds = %920
  %976 = lshr i32 %908, 6
  %977 = zext nneg i32 %976 to i64
  %978 = getelementptr inbounds %struct.simple_bitmap_def, ptr %872, i64 0, i32 3, i64 %977
  %979 = load i64, ptr %978, align 8, !tbaa !157
  %980 = and i32 %908, 63
  %981 = zext nneg i32 %980 to i64
  %982 = shl nuw i64 1, %981
  %983 = and i64 %979, %982
  %984 = icmp eq i64 %983, 0
  br i1 %984, label %985, label %2028

985:                                              ; preds = %975
  %986 = getelementptr inbounds %struct.ddg, ptr %909, i64 0, i32 1
  %987 = load i32, ptr %986, align 8, !tbaa !125
  %988 = call ptr @sbitmap_alloc(i32 noundef %987) #20
  %989 = load ptr, ptr %886, align 8, !tbaa !167
  %990 = getelementptr inbounds %struct.ddg, ptr %989, i64 0, i32 1
  %991 = load i32, ptr %990, align 8, !tbaa !125
  %992 = call ptr @sbitmap_alloc(i32 noundef %991) #20
  %993 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 6
  %994 = load ptr, ptr %993, align 8, !tbaa !168
  %995 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 5
  %996 = load ptr, ptr %995, align 8, !tbaa !169
  call void @sbitmap_zero(ptr noundef %988) #20
  call void @sbitmap_zero(ptr noundef %992) #20
  %997 = call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %988, ptr noundef %994, ptr noundef %872) #20
  %998 = call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %992, ptr noundef %996, ptr noundef %872) #20
  %999 = icmp eq i8 %997, 0
  %1000 = icmp ne i8 %998, 0
  %1001 = select i1 %999, i1 true, i1 %1000
  br i1 %1001, label %1091, label %1002

1002:                                             ; preds = %985
  %1003 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 3
  %1004 = load ptr, ptr %1003, align 8, !tbaa !35
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1078, label %1006

1006:                                             ; preds = %1002
  %1007 = add i32 %902, -1
  br label %1008

1008:                                             ; preds = %1006, %1072
  %1009 = phi ptr [ %1004, %1006 ], [ %1076, %1072 ]
  %1010 = phi i32 [ 2147483647, %1006 ], [ %1074, %1072 ]
  %1011 = phi i32 [ -2147483648, %1006 ], [ %1073, %1072 ]
  %1012 = load ptr, ptr %1009, align 8, !tbaa !135
  %1013 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1029, label %1015

1015:                                             ; preds = %1008
  %1016 = call i64 @fwrite(ptr nonnull @.str.49, i64 18, i64 1, ptr nonnull %1013)
  %1017 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_ddg_edge(ptr noundef %1017, ptr noundef nonnull %1009) #20
  %1018 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1019 = load i32, ptr %913, align 8, !tbaa !170
  %1020 = load ptr, ptr %914, align 8, !tbaa !59
  %1021 = getelementptr inbounds %struct.rtx_def, ptr %1020, i64 0, i32 1
  %1022 = load i32, ptr %1021, align 8, !tbaa !46
  %1023 = load i32, ptr %1012, align 8, !tbaa !170
  %1024 = getelementptr inbounds %struct.ddg_node, ptr %1012, i64 0, i32 1
  %1025 = load ptr, ptr %1024, align 8, !tbaa !59
  %1026 = getelementptr inbounds %struct.rtx_def, ptr %1025, i64 0, i32 1
  %1027 = load i32, ptr %1026, align 8, !tbaa !46
  %1028 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1018, ptr noundef nonnull @.str.50, i32 noundef %1019, i32 noundef %1022, i32 noundef %1023, i32 noundef %1027)
  br label %1029

1029:                                             ; preds = %1015, %1008
  %1030 = load i32, ptr %1012, align 8, !tbaa !170
  %1031 = lshr i32 %1030, 6
  %1032 = zext nneg i32 %1031 to i64
  %1033 = getelementptr inbounds %struct.simple_bitmap_def, ptr %872, i64 0, i32 3, i64 %1032
  %1034 = load i64, ptr %1033, align 8, !tbaa !157
  %1035 = and i32 %1030, 63
  %1036 = zext nneg i32 %1035 to i64
  %1037 = shl nuw i64 1, %1036
  %1038 = and i64 %1037, %1034
  %1039 = icmp eq i64 %1038, 0
  br i1 %1039, label %1067, label %1040

1040:                                             ; preds = %1029
  %1041 = getelementptr inbounds %struct.ddg_node, ptr %1012, i64 0, i32 7
  %1042 = load ptr, ptr %1041, align 8, !tbaa !46
  %1043 = getelementptr inbounds %struct.node_sched_params, ptr %1042, i64 0, i32 1
  %1044 = load i32, ptr %1043, align 4, !tbaa !171
  %1045 = getelementptr inbounds %struct.ddg_edge, ptr %1009, i64 0, i32 4
  %1046 = load i32, ptr %1045, align 8, !tbaa !136
  %1047 = add nsw i32 %1046, %1044
  %1048 = getelementptr inbounds %struct.ddg_edge, ptr %1009, i64 0, i32 5
  %1049 = load i32, ptr %1048, align 4, !tbaa !133
  %1050 = mul nsw i32 %1049, %902
  %1051 = sub i32 %1047, %1050
  %1052 = call i32 @llvm.smax.i32(i32 %1011, i32 %1051)
  %1053 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1057, label %1055

1055:                                             ; preds = %1040
  %1056 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1053, ptr noundef nonnull @.str.51, i32 noundef %1044, i32 noundef %1052, i32 noundef %1046)
  br label %1057

1057:                                             ; preds = %1055, %1040
  %1058 = getelementptr inbounds %struct.ddg_edge, ptr %1009, i64 0, i32 3
  %1059 = load i32, ptr %1058, align 4, !tbaa !172
  %1060 = icmp eq i32 %1059, 2
  br i1 %1060, label %1061, label %1072

1061:                                             ; preds = %1057
  %1062 = load ptr, ptr %1041, align 8, !tbaa !46
  %1063 = getelementptr inbounds %struct.node_sched_params, ptr %1062, i64 0, i32 1
  %1064 = load i32, ptr %1063, align 4, !tbaa !171
  %1065 = add i32 %1007, %1064
  %1066 = call i32 @llvm.smin.i32(i32 %1010, i32 %1065)
  br label %1072

1067:                                             ; preds = %1029
  %1068 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1069 = icmp eq ptr %1068, null
  br i1 %1069, label %1072, label %1070

1070:                                             ; preds = %1067
  %1071 = call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %1068)
  br label %1072

1072:                                             ; preds = %1070, %1067, %1061, %1057
  %1073 = phi i32 [ %1011, %1070 ], [ %1011, %1067 ], [ %1052, %1061 ], [ %1052, %1057 ]
  %1074 = phi i32 [ %1010, %1070 ], [ %1010, %1067 ], [ %1066, %1061 ], [ %1010, %1057 ]
  %1075 = getelementptr inbounds %struct.ddg_edge, ptr %1009, i64 0, i32 6
  %1076 = load ptr, ptr %1075, align 8, !tbaa !35
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1078, label %1008, !llvm.loop !173

1078:                                             ; preds = %1072, %1002
  %1079 = phi i32 [ -2147483648, %1002 ], [ %1073, %1072 ]
  %1080 = phi i32 [ 2147483647, %1002 ], [ %1074, %1072 ]
  %1081 = add nsw i32 %1079, %902
  %1082 = call i32 @llvm.smin.i32(i32 %1080, i32 %1081)
  %1083 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1393, label %1085

1085:                                             ; preds = %1078
  %1086 = load i32, ptr %913, align 8, !tbaa !170
  %1087 = load ptr, ptr %914, align 8, !tbaa !59
  %1088 = getelementptr inbounds %struct.rtx_def, ptr %1087, i64 0, i32 1
  %1089 = load i32, ptr %1088, align 8, !tbaa !46
  %1090 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1083, ptr noundef nonnull @.str.53, i32 noundef %1086, i32 noundef %1089, i32 noundef %1079, i32 noundef %1082, i32 noundef 1)
  br label %1393

1091:                                             ; preds = %985
  %1092 = select i1 %999, i1 %1000, i1 false
  br i1 %1092, label %1093, label %1188

1093:                                             ; preds = %1091
  %1094 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 4
  %1095 = load ptr, ptr %1094, align 8, !tbaa !35
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1175, label %1097

1097:                                             ; preds = %1093, %1169
  %1098 = phi ptr [ %1173, %1169 ], [ %1095, %1093 ]
  %1099 = phi i32 [ %1171, %1169 ], [ -2147483648, %1093 ]
  %1100 = phi i32 [ %1170, %1169 ], [ 2147483647, %1093 ]
  %1101 = getelementptr inbounds %struct.ddg_edge, ptr %1098, i64 0, i32 1
  %1102 = load ptr, ptr %1101, align 8, !tbaa !142
  %1103 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1119, label %1105

1105:                                             ; preds = %1097
  %1106 = call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr nonnull %1103)
  %1107 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_ddg_edge(ptr noundef %1107, ptr noundef nonnull %1098) #20
  %1108 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1109 = load i32, ptr %913, align 8, !tbaa !170
  %1110 = load ptr, ptr %914, align 8, !tbaa !59
  %1111 = getelementptr inbounds %struct.rtx_def, ptr %1110, i64 0, i32 1
  %1112 = load i32, ptr %1111, align 8, !tbaa !46
  %1113 = load i32, ptr %1102, align 8, !tbaa !170
  %1114 = getelementptr inbounds %struct.ddg_node, ptr %1102, i64 0, i32 1
  %1115 = load ptr, ptr %1114, align 8, !tbaa !59
  %1116 = getelementptr inbounds %struct.rtx_def, ptr %1115, i64 0, i32 1
  %1117 = load i32, ptr %1116, align 8, !tbaa !46
  %1118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1108, ptr noundef nonnull @.str.55, i32 noundef %1109, i32 noundef %1112, i32 noundef %1113, i32 noundef %1117)
  br label %1119

1119:                                             ; preds = %1105, %1097
  %1120 = load i32, ptr %1102, align 8, !tbaa !170
  %1121 = lshr i32 %1120, 6
  %1122 = zext nneg i32 %1121 to i64
  %1123 = getelementptr inbounds %struct.simple_bitmap_def, ptr %872, i64 0, i32 3, i64 %1122
  %1124 = load i64, ptr %1123, align 8, !tbaa !157
  %1125 = and i32 %1120, 63
  %1126 = zext nneg i32 %1125 to i64
  %1127 = shl nuw i64 1, %1126
  %1128 = and i64 %1127, %1124
  %1129 = icmp eq i64 %1128, 0
  br i1 %1129, label %1164, label %1130

1130:                                             ; preds = %1119
  %1131 = getelementptr inbounds %struct.ddg_node, ptr %1102, i64 0, i32 7
  %1132 = load ptr, ptr %1131, align 8, !tbaa !46
  %1133 = getelementptr inbounds %struct.node_sched_params, ptr %1132, i64 0, i32 1
  %1134 = load i32, ptr %1133, align 4, !tbaa !171
  %1135 = getelementptr inbounds %struct.ddg_edge, ptr %1098, i64 0, i32 4
  %1136 = load i32, ptr %1135, align 8, !tbaa !136
  %1137 = sub i32 %1134, %1136
  %1138 = getelementptr inbounds %struct.ddg_edge, ptr %1098, i64 0, i32 5
  %1139 = load i32, ptr %1138, align 4, !tbaa !133
  %1140 = mul nsw i32 %1139, %902
  %1141 = add nsw i32 %1137, %1140
  %1142 = call i32 @llvm.smin.i32(i32 %1100, i32 %1141)
  %1143 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1144 = icmp eq ptr %1143, null
  br i1 %1144, label %1147, label %1145

1145:                                             ; preds = %1130
  %1146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1143, ptr noundef nonnull @.str.56, i32 noundef %1134, i32 noundef %1142, i32 noundef %1136)
  br label %1147

1147:                                             ; preds = %1145, %1130
  %1148 = getelementptr inbounds %struct.ddg_edge, ptr %1098, i64 0, i32 3
  %1149 = load i32, ptr %1148, align 4, !tbaa !172
  %1150 = icmp eq i32 %1149, 2
  br i1 %1150, label %1151, label %1158

1151:                                             ; preds = %1147
  %1152 = load ptr, ptr %1131, align 8, !tbaa !46
  %1153 = getelementptr inbounds %struct.node_sched_params, ptr %1152, i64 0, i32 1
  %1154 = load i32, ptr %1153, align 4, !tbaa !171
  %1155 = sub i32 %1154, %902
  %1156 = add i32 %1155, 1
  %1157 = call i32 @llvm.smax.i32(i32 %1099, i32 %1156)
  br label %1158

1158:                                             ; preds = %1151, %1147
  %1159 = phi i32 [ %1157, %1151 ], [ %1099, %1147 ]
  %1160 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1169, label %1162

1162:                                             ; preds = %1158
  %1163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1160, ptr noundef nonnull @.str.57, i32 noundef %1159)
  br label %1169

1164:                                             ; preds = %1119
  %1165 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1166 = icmp eq ptr %1165, null
  br i1 %1166, label %1169, label %1167

1167:                                             ; preds = %1164
  %1168 = call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %1165)
  br label %1169

1169:                                             ; preds = %1167, %1164, %1162, %1158
  %1170 = phi i32 [ %1100, %1167 ], [ %1100, %1164 ], [ %1142, %1162 ], [ %1142, %1158 ]
  %1171 = phi i32 [ %1099, %1167 ], [ %1099, %1164 ], [ %1159, %1162 ], [ %1159, %1158 ]
  %1172 = getelementptr inbounds %struct.ddg_edge, ptr %1098, i64 0, i32 7
  %1173 = load ptr, ptr %1172, align 8, !tbaa !35
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1175, label %1097, !llvm.loop !174

1175:                                             ; preds = %1169, %1093
  %1176 = phi i32 [ 2147483647, %1093 ], [ %1170, %1169 ]
  %1177 = phi i32 [ -2147483648, %1093 ], [ %1171, %1169 ]
  %1178 = sub nsw i32 %1176, %902
  %1179 = call i32 @llvm.smax.i32(i32 %1177, i32 %1178)
  %1180 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1181 = icmp eq ptr %1180, null
  br i1 %1181, label %1393, label %1182

1182:                                             ; preds = %1175
  %1183 = load i32, ptr %913, align 8, !tbaa !170
  %1184 = load ptr, ptr %914, align 8, !tbaa !59
  %1185 = getelementptr inbounds %struct.rtx_def, ptr %1184, i64 0, i32 1
  %1186 = load i32, ptr %1185, align 8, !tbaa !46
  %1187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1180, ptr noundef nonnull @.str.53, i32 noundef %1183, i32 noundef %1186, i32 noundef %1176, i32 noundef %1179, i32 noundef -1)
  br label %1393

1188:                                             ; preds = %1091
  %1189 = icmp ne i8 %997, 0
  %1190 = select i1 %1189, i1 %1000, i1 false
  br i1 %1190, label %1191, label %1388

1191:                                             ; preds = %1188
  %1192 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 3
  %1193 = load ptr, ptr %1192, align 8, !tbaa !35
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1280, label %1195

1195:                                             ; preds = %1191
  %1196 = add i32 %902, -1
  br label %1197

1197:                                             ; preds = %1195, %1273
  %1198 = phi ptr [ %1193, %1195 ], [ %1278, %1273 ]
  %1199 = phi i32 [ 2147483647, %1195 ], [ %1276, %1273 ]
  %1200 = phi i32 [ 0, %1195 ], [ %1275, %1273 ]
  %1201 = phi i32 [ -2147483648, %1195 ], [ %1274, %1273 ]
  %1202 = load ptr, ptr %1198, align 8, !tbaa !135
  %1203 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1219, label %1205

1205:                                             ; preds = %1197
  %1206 = call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr nonnull %1203)
  %1207 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_ddg_edge(ptr noundef %1207, ptr noundef nonnull %1198) #20
  %1208 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1209 = load i32, ptr %913, align 8, !tbaa !170
  %1210 = load ptr, ptr %914, align 8, !tbaa !59
  %1211 = getelementptr inbounds %struct.rtx_def, ptr %1210, i64 0, i32 1
  %1212 = load i32, ptr %1211, align 8, !tbaa !46
  %1213 = load i32, ptr %1202, align 8, !tbaa !170
  %1214 = getelementptr inbounds %struct.ddg_node, ptr %1202, i64 0, i32 1
  %1215 = load ptr, ptr %1214, align 8, !tbaa !59
  %1216 = getelementptr inbounds %struct.rtx_def, ptr %1215, i64 0, i32 1
  %1217 = load i32, ptr %1216, align 8, !tbaa !46
  %1218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1208, ptr noundef nonnull @.str.58, i32 noundef %1209, i32 noundef %1212, i32 noundef %1213, i32 noundef %1217)
  br label %1219

1219:                                             ; preds = %1205, %1197
  %1220 = load i32, ptr %1202, align 8, !tbaa !170
  %1221 = lshr i32 %1220, 6
  %1222 = zext nneg i32 %1221 to i64
  %1223 = getelementptr inbounds %struct.simple_bitmap_def, ptr %872, i64 0, i32 3, i64 %1222
  %1224 = load i64, ptr %1223, align 8, !tbaa !157
  %1225 = and i32 %1220, 63
  %1226 = zext nneg i32 %1225 to i64
  %1227 = shl nuw i64 1, %1226
  %1228 = and i64 %1227, %1224
  %1229 = icmp eq i64 %1228, 0
  br i1 %1229, label %1268, label %1230

1230:                                             ; preds = %1219
  %1231 = getelementptr inbounds %struct.ddg_node, ptr %1202, i64 0, i32 7
  %1232 = load ptr, ptr %1231, align 8, !tbaa !46
  %1233 = getelementptr inbounds %struct.node_sched_params, ptr %1232, i64 0, i32 1
  %1234 = load i32, ptr %1233, align 4, !tbaa !171
  %1235 = getelementptr inbounds %struct.ddg_edge, ptr %1198, i64 0, i32 4
  %1236 = load i32, ptr %1235, align 8, !tbaa !136
  %1237 = add nsw i32 %1236, %1234
  %1238 = getelementptr inbounds %struct.ddg_edge, ptr %1198, i64 0, i32 5
  %1239 = load i32, ptr %1238, align 4, !tbaa !133
  %1240 = mul nsw i32 %1239, %902
  %1241 = sub i32 %1237, %1240
  %1242 = call i32 @llvm.smax.i32(i32 %1201, i32 %1241)
  %1243 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1244 = icmp eq ptr %1243, null
  br i1 %1244, label %1247, label %1245

1245:                                             ; preds = %1230
  %1246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1243, ptr noundef nonnull @.str.59, i32 noundef %1234, i32 noundef %1242, i32 noundef %1236)
  br label %1247

1247:                                             ; preds = %1245, %1230
  %1248 = getelementptr inbounds %struct.ddg_edge, ptr %1198, i64 0, i32 2
  %1249 = load i32, ptr %1248, align 8, !tbaa !175
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1251, label %1257

1251:                                             ; preds = %1247
  %1252 = getelementptr inbounds %struct.ddg_edge, ptr %1198, i64 0, i32 3
  %1253 = load i32, ptr %1252, align 4, !tbaa !172
  %1254 = icmp eq i32 %1253, 1
  %1255 = zext i1 %1254 to i32
  %1256 = add nsw i32 %1200, %1255
  br label %1257

1257:                                             ; preds = %1251, %1247
  %1258 = phi i32 [ %1200, %1247 ], [ %1256, %1251 ]
  %1259 = getelementptr inbounds %struct.ddg_edge, ptr %1198, i64 0, i32 3
  %1260 = load i32, ptr %1259, align 4, !tbaa !172
  %1261 = icmp eq i32 %1260, 2
  br i1 %1261, label %1262, label %1273

1262:                                             ; preds = %1257
  %1263 = load ptr, ptr %1231, align 8, !tbaa !46
  %1264 = getelementptr inbounds %struct.node_sched_params, ptr %1263, i64 0, i32 1
  %1265 = load i32, ptr %1264, align 4, !tbaa !171
  %1266 = add i32 %1196, %1265
  %1267 = call i32 @llvm.smin.i32(i32 %1199, i32 %1266)
  br label %1273

1268:                                             ; preds = %1219
  %1269 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1273, label %1271

1271:                                             ; preds = %1268
  %1272 = call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %1269)
  br label %1273

1273:                                             ; preds = %1271, %1268, %1262, %1257
  %1274 = phi i32 [ %1201, %1271 ], [ %1201, %1268 ], [ %1242, %1262 ], [ %1242, %1257 ]
  %1275 = phi i32 [ %1200, %1271 ], [ %1200, %1268 ], [ %1258, %1262 ], [ %1258, %1257 ]
  %1276 = phi i32 [ %1199, %1271 ], [ %1199, %1268 ], [ %1267, %1262 ], [ %1199, %1257 ]
  %1277 = getelementptr inbounds %struct.ddg_edge, ptr %1198, i64 0, i32 6
  %1278 = load ptr, ptr %1277, align 8, !tbaa !35
  %1279 = icmp eq ptr %1278, null
  br i1 %1279, label %1280, label %1197, !llvm.loop !176

1280:                                             ; preds = %1273, %1191
  %1281 = phi i32 [ -2147483648, %1191 ], [ %1274, %1273 ]
  %1282 = phi i32 [ 0, %1191 ], [ %1275, %1273 ]
  %1283 = phi i32 [ 2147483647, %1191 ], [ %1276, %1273 ]
  %1284 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 4
  %1285 = load ptr, ptr %1284, align 8, !tbaa !35
  %1286 = icmp eq ptr %1285, null
  br i1 %1286, label %1372, label %1287

1287:                                             ; preds = %1280, %1365
  %1288 = phi ptr [ %1370, %1365 ], [ %1285, %1280 ]
  %1289 = phi i32 [ %1368, %1365 ], [ -2147483648, %1280 ]
  %1290 = phi i32 [ %1367, %1365 ], [ 0, %1280 ]
  %1291 = phi i32 [ %1366, %1365 ], [ 2147483647, %1280 ]
  %1292 = getelementptr inbounds %struct.ddg_edge, ptr %1288, i64 0, i32 1
  %1293 = load ptr, ptr %1292, align 8, !tbaa !142
  %1294 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1310, label %1296

1296:                                             ; preds = %1287
  %1297 = call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr nonnull %1294)
  %1298 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_ddg_edge(ptr noundef %1298, ptr noundef nonnull %1288) #20
  %1299 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1300 = load i32, ptr %913, align 8, !tbaa !170
  %1301 = load ptr, ptr %914, align 8, !tbaa !59
  %1302 = getelementptr inbounds %struct.rtx_def, ptr %1301, i64 0, i32 1
  %1303 = load i32, ptr %1302, align 8, !tbaa !46
  %1304 = load i32, ptr %1293, align 8, !tbaa !170
  %1305 = getelementptr inbounds %struct.ddg_node, ptr %1293, i64 0, i32 1
  %1306 = load ptr, ptr %1305, align 8, !tbaa !59
  %1307 = getelementptr inbounds %struct.rtx_def, ptr %1306, i64 0, i32 1
  %1308 = load i32, ptr %1307, align 8, !tbaa !46
  %1309 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1299, ptr noundef nonnull @.str.60, i32 noundef %1300, i32 noundef %1303, i32 noundef %1304, i32 noundef %1308)
  br label %1310

1310:                                             ; preds = %1296, %1287
  %1311 = load i32, ptr %1293, align 8, !tbaa !170
  %1312 = lshr i32 %1311, 6
  %1313 = zext nneg i32 %1312 to i64
  %1314 = getelementptr inbounds %struct.simple_bitmap_def, ptr %872, i64 0, i32 3, i64 %1313
  %1315 = load i64, ptr %1314, align 8, !tbaa !157
  %1316 = and i32 %1311, 63
  %1317 = zext nneg i32 %1316 to i64
  %1318 = shl nuw i64 1, %1317
  %1319 = and i64 %1318, %1315
  %1320 = icmp eq i64 %1319, 0
  br i1 %1320, label %1360, label %1321

1321:                                             ; preds = %1310
  %1322 = getelementptr inbounds %struct.ddg_node, ptr %1293, i64 0, i32 7
  %1323 = load ptr, ptr %1322, align 8, !tbaa !46
  %1324 = getelementptr inbounds %struct.node_sched_params, ptr %1323, i64 0, i32 1
  %1325 = load i32, ptr %1324, align 4, !tbaa !171
  %1326 = getelementptr inbounds %struct.ddg_edge, ptr %1288, i64 0, i32 4
  %1327 = load i32, ptr %1326, align 8, !tbaa !136
  %1328 = sub i32 %1325, %1327
  %1329 = getelementptr inbounds %struct.ddg_edge, ptr %1288, i64 0, i32 5
  %1330 = load i32, ptr %1329, align 4, !tbaa !133
  %1331 = mul nsw i32 %1330, %902
  %1332 = add nsw i32 %1328, %1331
  %1333 = call i32 @llvm.smin.i32(i32 %1291, i32 %1332)
  %1334 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1335 = icmp eq ptr %1334, null
  br i1 %1335, label %1338, label %1336

1336:                                             ; preds = %1321
  %1337 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1334, ptr noundef nonnull @.str.56, i32 noundef %1325, i32 noundef %1333, i32 noundef %1327)
  br label %1338

1338:                                             ; preds = %1336, %1321
  %1339 = getelementptr inbounds %struct.ddg_edge, ptr %1288, i64 0, i32 2
  %1340 = load i32, ptr %1339, align 8, !tbaa !175
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1342, label %1348

1342:                                             ; preds = %1338
  %1343 = getelementptr inbounds %struct.ddg_edge, ptr %1288, i64 0, i32 3
  %1344 = load i32, ptr %1343, align 4, !tbaa !172
  %1345 = icmp eq i32 %1344, 1
  %1346 = zext i1 %1345 to i32
  %1347 = add nsw i32 %1290, %1346
  br label %1348

1348:                                             ; preds = %1342, %1338
  %1349 = phi i32 [ %1290, %1338 ], [ %1347, %1342 ]
  %1350 = getelementptr inbounds %struct.ddg_edge, ptr %1288, i64 0, i32 3
  %1351 = load i32, ptr %1350, align 4, !tbaa !172
  %1352 = icmp eq i32 %1351, 2
  br i1 %1352, label %1353, label %1365

1353:                                             ; preds = %1348
  %1354 = load ptr, ptr %1322, align 8, !tbaa !46
  %1355 = getelementptr inbounds %struct.node_sched_params, ptr %1354, i64 0, i32 1
  %1356 = load i32, ptr %1355, align 4, !tbaa !171
  %1357 = sub i32 %1356, %902
  %1358 = add i32 %1357, 1
  %1359 = call i32 @llvm.smax.i32(i32 %1289, i32 %1358)
  br label %1365

1360:                                             ; preds = %1310
  %1361 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1362 = icmp eq ptr %1361, null
  br i1 %1362, label %1365, label %1363

1363:                                             ; preds = %1360
  %1364 = call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %1361)
  br label %1365

1365:                                             ; preds = %1363, %1360, %1353, %1348
  %1366 = phi i32 [ %1291, %1363 ], [ %1291, %1360 ], [ %1333, %1353 ], [ %1333, %1348 ]
  %1367 = phi i32 [ %1290, %1363 ], [ %1290, %1360 ], [ %1349, %1353 ], [ %1349, %1348 ]
  %1368 = phi i32 [ %1289, %1363 ], [ %1289, %1360 ], [ %1359, %1353 ], [ %1289, %1348 ]
  %1369 = getelementptr inbounds %struct.ddg_edge, ptr %1288, i64 0, i32 7
  %1370 = load ptr, ptr %1369, align 8, !tbaa !35
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1372, label %1287, !llvm.loop !177

1372:                                             ; preds = %1365, %1280
  %1373 = phi i32 [ 2147483647, %1280 ], [ %1366, %1365 ]
  %1374 = phi i32 [ 0, %1280 ], [ %1367, %1365 ]
  %1375 = phi i32 [ -2147483648, %1280 ], [ %1368, %1365 ]
  %1376 = call i32 @llvm.smax.i32(i32 %1375, i32 %1281)
  %1377 = add nsw i32 %1281, %902
  %1378 = add nsw i32 %1373, 1
  %1379 = icmp sgt i32 %1377, %1373
  %1380 = select i1 %1379, i32 %1378, i32 %1377
  %1381 = call i32 @llvm.smin.i32(i32 %1283, i32 %1380)
  %1382 = icmp slt i32 %1374, %1282
  %1383 = add nsw i32 %1381, -1
  %1384 = add nsw i32 %1376, -1
  %1385 = select i1 %1382, i32 %1381, i32 %1384
  %1386 = select i1 %1382, i32 1, i32 -1
  %1387 = select i1 %1382, i32 %1376, i32 %1383
  br label %1393

1388:                                             ; preds = %1188
  %1389 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 7
  %1390 = load ptr, ptr %1389, align 8, !tbaa !46
  %1391 = load i32, ptr %1390, align 8, !tbaa !161
  %1392 = add nsw i32 %1391, %902
  br label %1393

1393:                                             ; preds = %1388, %1372, %1182, %1175, %1085, %1078
  %1394 = phi i32 [ %1385, %1372 ], [ %1392, %1388 ], [ %1082, %1085 ], [ %1082, %1078 ], [ %1179, %1182 ], [ %1179, %1175 ]
  %1395 = phi i32 [ %1386, %1372 ], [ 1, %1388 ], [ 1, %1085 ], [ 1, %1078 ], [ -1, %1182 ], [ -1, %1175 ]
  %1396 = phi i32 [ %1387, %1372 ], [ %1391, %1388 ], [ %1079, %1085 ], [ %1079, %1078 ], [ %1176, %1182 ], [ %1176, %1175 ]
  %1397 = load ptr, ptr %988, align 8, !tbaa !153
  call void @free(ptr noundef %1397)
  call void @free(ptr noundef %988)
  %1398 = load ptr, ptr %992, align 8, !tbaa !153
  call void @free(ptr noundef %1398)
  call void @free(ptr noundef %992)
  %1399 = icmp sge i32 %1396, %1394
  %1400 = icmp eq i32 %1395, 1
  %1401 = and i1 %1400, %1399
  br i1 %1401, label %1406, label %1402

1402:                                             ; preds = %1393
  %1403 = icmp sle i32 %1396, %1394
  %1404 = icmp eq i32 %1395, -1
  %1405 = and i1 %1404, %1403
  br i1 %1405, label %1406, label %1411

1406:                                             ; preds = %1402, %1393
  %1407 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1408 = icmp eq ptr %1407, null
  br i1 %1408, label %1845, label %1409

1409:                                             ; preds = %1406
  %1410 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1407, ptr noundef nonnull @.str.61, i32 noundef %1396, i32 noundef %1394, i32 noundef %1395)
  br label %1845

1411:                                             ; preds = %1402
  %1412 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1413 = icmp eq ptr %1412, null
  br i1 %1413, label %1422, label %1414

1414:                                             ; preds = %1411
  %1415 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  %1416 = load ptr, ptr %1415, align 8, !tbaa !129
  %1417 = getelementptr inbounds %struct.ddg_node, ptr %1416, i64 %912, i32 1
  %1418 = load ptr, ptr %1417, align 8, !tbaa !59
  %1419 = getelementptr inbounds %struct.rtx_def, ptr %1418, i64 0, i32 1
  %1420 = load i32, ptr %1419, align 8, !tbaa !46
  %1421 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1412, ptr noundef nonnull @.str.47, i32 noundef %908, i32 noundef %1420, i32 noundef %1396, i32 noundef %1394, i32 noundef %1395)
  br label %1422

1422:                                             ; preds = %1414, %1411
  %1423 = icmp sgt i32 %1395, 0
  %1424 = icmp slt i32 %1396, %1394
  %1425 = and i1 %1423, %1424
  br i1 %1425, label %1431, label %1426

1426:                                             ; preds = %1422
  %1427 = icmp slt i32 %1395, 0
  %1428 = icmp sgt i32 %1396, %1394
  %1429 = and i1 %1427, %1428
  br i1 %1429, label %1431, label %1430

1430:                                             ; preds = %1426
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1783, ptr noundef nonnull @.str.9) #20
  br label %1431

1431:                                             ; preds = %1430, %1426, %1422
  br i1 %892, label %1433, label %1432

1432:                                             ; preds = %1431
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1618, ptr noundef nonnull @.str.9) #20
  br label %1433

1433:                                             ; preds = %1432, %1431
  %1434 = sub nsw i32 %1394, %1395
  %1435 = select i1 %1400, i32 %1396, i32 %1434
  %1436 = select i1 %1400, i32 %1434, i32 %1396
  call void @sbitmap_zero(ptr noundef %873) #20
  call void @sbitmap_zero(ptr noundef %874) #20
  %1437 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1438 = icmp eq ptr %1437, null
  br i1 %1438, label %1441, label %1439

1439:                                             ; preds = %1433
  %1440 = call i64 @fwrite(ptr nonnull @.str.62, i64 15, i64 1, ptr nonnull %1437)
  br label %1441

1441:                                             ; preds = %1439, %1433
  %1442 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 3
  %1443 = load ptr, ptr %1442, align 8, !tbaa !35
  %1444 = icmp eq ptr %1443, null
  br i1 %1444, label %1505, label %1445

1445:                                             ; preds = %1441, %1501
  %1446 = phi ptr [ %1503, %1501 ], [ %1443, %1441 ]
  %1447 = load ptr, ptr %1446, align 8, !tbaa !135
  %1448 = load i32, ptr %1447, align 8, !tbaa !170
  %1449 = lshr i32 %1448, 6
  %1450 = zext nneg i32 %1449 to i64
  %1451 = getelementptr inbounds %struct.simple_bitmap_def, ptr %872, i64 0, i32 3, i64 %1450
  %1452 = load i64, ptr %1451, align 8, !tbaa !157
  %1453 = and i32 %1448, 63
  %1454 = zext nneg i32 %1453 to i64
  %1455 = shl nuw i64 1, %1454
  %1456 = and i64 %1455, %1452
  %1457 = icmp eq i64 %1456, 0
  br i1 %1457, label %1501, label %1458

1458:                                             ; preds = %1445
  %1459 = getelementptr inbounds %struct.ddg_node, ptr %1447, i64 0, i32 7
  %1460 = load ptr, ptr %1459, align 8, !tbaa !46
  %1461 = getelementptr inbounds %struct.node_sched_params, ptr %1460, i64 0, i32 1
  %1462 = load i32, ptr %1461, align 4, !tbaa !171
  %1463 = getelementptr inbounds %struct.ddg_edge, ptr %1446, i64 0, i32 5
  %1464 = load i32, ptr %1463, align 4, !tbaa !133
  %1465 = mul nsw i32 %1464, %902
  %1466 = sub nsw i32 %1462, %1465
  %1467 = icmp eq i32 %1466, %1435
  br i1 %1467, label %1468, label %1501

1468:                                             ; preds = %1458
  %1469 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1470 = icmp eq ptr %1469, null
  br i1 %1470, label %1473, label %1471

1471:                                             ; preds = %1468
  %1472 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1469, ptr noundef nonnull @.str.45, i32 noundef %1448)
  br label %1473

1473:                                             ; preds = %1471, %1468
  %1474 = load ptr, ptr %1446, align 8, !tbaa !135
  %1475 = load i32, ptr %1474, align 8, !tbaa !170
  %1476 = load ptr, ptr %873, align 8, !tbaa !153
  %1477 = icmp eq ptr %1476, null
  br i1 %1477, label %1492, label %1478

1478:                                             ; preds = %1473
  %1479 = lshr i32 %1475, 6
  %1480 = zext nneg i32 %1479 to i64
  %1481 = getelementptr inbounds %struct.simple_bitmap_def, ptr %873, i64 0, i32 3, i64 %1480
  %1482 = load i64, ptr %1481, align 8, !tbaa !157
  %1483 = and i32 %1475, 63
  %1484 = zext nneg i32 %1483 to i64
  %1485 = shl nuw i64 1, %1484
  %1486 = and i64 %1482, %1485
  %1487 = icmp eq i64 %1486, 0
  br i1 %1487, label %1488, label %1492

1488:                                             ; preds = %1478
  %1489 = getelementptr inbounds i8, ptr %1476, i64 %1480
  %1490 = load i8, ptr %1489, align 1, !tbaa !46
  %1491 = add i8 %1490, 1
  store i8 %1491, ptr %1489, align 1, !tbaa !46
  br label %1492

1492:                                             ; preds = %1488, %1478, %1473
  %1493 = and i32 %1475, 63
  %1494 = zext nneg i32 %1493 to i64
  %1495 = shl nuw i64 1, %1494
  %1496 = lshr i32 %1475, 6
  %1497 = zext nneg i32 %1496 to i64
  %1498 = getelementptr inbounds %struct.simple_bitmap_def, ptr %873, i64 0, i32 3, i64 %1497
  %1499 = load i64, ptr %1498, align 8, !tbaa !157
  %1500 = or i64 %1499, %1495
  store i64 %1500, ptr %1498, align 8, !tbaa !157
  br label %1501

1501:                                             ; preds = %1492, %1458, %1445
  %1502 = getelementptr inbounds %struct.ddg_edge, ptr %1446, i64 0, i32 6
  %1503 = load ptr, ptr %1502, align 8, !tbaa !35
  %1504 = icmp eq ptr %1503, null
  br i1 %1504, label %1505, label %1445, !llvm.loop !178

1505:                                             ; preds = %1501, %1441
  %1506 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1507 = icmp eq ptr %1506, null
  br i1 %1507, label %1510, label %1508

1508:                                             ; preds = %1505
  %1509 = call i64 @fwrite(ptr nonnull @.str.63, i64 14, i64 1, ptr nonnull %1506)
  br label %1510

1510:                                             ; preds = %1508, %1505
  %1511 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 4
  %1512 = load ptr, ptr %1511, align 8, !tbaa !35
  %1513 = icmp eq ptr %1512, null
  br i1 %1513, label %1575, label %1514

1514:                                             ; preds = %1510, %1571
  %1515 = phi ptr [ %1573, %1571 ], [ %1512, %1510 ]
  %1516 = getelementptr inbounds %struct.ddg_edge, ptr %1515, i64 0, i32 1
  %1517 = load ptr, ptr %1516, align 8, !tbaa !142
  %1518 = load i32, ptr %1517, align 8, !tbaa !170
  %1519 = lshr i32 %1518, 6
  %1520 = zext nneg i32 %1519 to i64
  %1521 = getelementptr inbounds %struct.simple_bitmap_def, ptr %872, i64 0, i32 3, i64 %1520
  %1522 = load i64, ptr %1521, align 8, !tbaa !157
  %1523 = and i32 %1518, 63
  %1524 = zext nneg i32 %1523 to i64
  %1525 = shl nuw i64 1, %1524
  %1526 = and i64 %1525, %1522
  %1527 = icmp eq i64 %1526, 0
  br i1 %1527, label %1571, label %1528

1528:                                             ; preds = %1514
  %1529 = getelementptr inbounds %struct.ddg_node, ptr %1517, i64 0, i32 7
  %1530 = load ptr, ptr %1529, align 8, !tbaa !46
  %1531 = getelementptr inbounds %struct.node_sched_params, ptr %1530, i64 0, i32 1
  %1532 = load i32, ptr %1531, align 4, !tbaa !171
  %1533 = getelementptr inbounds %struct.ddg_edge, ptr %1515, i64 0, i32 5
  %1534 = load i32, ptr %1533, align 4, !tbaa !133
  %1535 = mul nsw i32 %1534, %902
  %1536 = add nsw i32 %1535, %1532
  %1537 = icmp eq i32 %1536, %1436
  br i1 %1537, label %1538, label %1571

1538:                                             ; preds = %1528
  %1539 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1540 = icmp eq ptr %1539, null
  br i1 %1540, label %1543, label %1541

1541:                                             ; preds = %1538
  %1542 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1539, ptr noundef nonnull @.str.45, i32 noundef %1518)
  br label %1543

1543:                                             ; preds = %1541, %1538
  %1544 = load ptr, ptr %1516, align 8, !tbaa !142
  %1545 = load i32, ptr %1544, align 8, !tbaa !170
  %1546 = load ptr, ptr %874, align 8, !tbaa !153
  %1547 = icmp eq ptr %1546, null
  br i1 %1547, label %1562, label %1548

1548:                                             ; preds = %1543
  %1549 = lshr i32 %1545, 6
  %1550 = zext nneg i32 %1549 to i64
  %1551 = getelementptr inbounds %struct.simple_bitmap_def, ptr %874, i64 0, i32 3, i64 %1550
  %1552 = load i64, ptr %1551, align 8, !tbaa !157
  %1553 = and i32 %1545, 63
  %1554 = zext nneg i32 %1553 to i64
  %1555 = shl nuw i64 1, %1554
  %1556 = and i64 %1552, %1555
  %1557 = icmp eq i64 %1556, 0
  br i1 %1557, label %1558, label %1562

1558:                                             ; preds = %1548
  %1559 = getelementptr inbounds i8, ptr %1546, i64 %1550
  %1560 = load i8, ptr %1559, align 1, !tbaa !46
  %1561 = add i8 %1560, 1
  store i8 %1561, ptr %1559, align 1, !tbaa !46
  br label %1562

1562:                                             ; preds = %1558, %1548, %1543
  %1563 = and i32 %1545, 63
  %1564 = zext nneg i32 %1563 to i64
  %1565 = shl nuw i64 1, %1564
  %1566 = lshr i32 %1545, 6
  %1567 = zext nneg i32 %1566 to i64
  %1568 = getelementptr inbounds %struct.simple_bitmap_def, ptr %874, i64 0, i32 3, i64 %1567
  %1569 = load i64, ptr %1568, align 8, !tbaa !157
  %1570 = or i64 %1569, %1565
  store i64 %1570, ptr %1568, align 8, !tbaa !157
  br label %1571

1571:                                             ; preds = %1562, %1528, %1514
  %1572 = getelementptr inbounds %struct.ddg_edge, ptr %1515, i64 0, i32 7
  %1573 = load ptr, ptr %1572, align 8, !tbaa !35
  %1574 = icmp eq ptr %1573, null
  br i1 %1574, label %1575, label %1514, !llvm.loop !179

1575:                                             ; preds = %1571, %1510
  %1576 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1577 = icmp eq ptr %1576, null
  br i1 %1577, label %1580, label %1578

1578:                                             ; preds = %1575
  %1579 = call i32 @fputc(i32 10, ptr nonnull %1576)
  br label %1580

1580:                                             ; preds = %1578, %1575
  %1581 = icmp eq i32 %1396, %1394
  br i1 %1581, label %1842, label %1582

1582:                                             ; preds = %1580
  %1583 = select i1 %1400, ptr null, ptr %874
  %1584 = getelementptr inbounds %struct.ddg_node, ptr %911, i64 %912, i32 7
  br label %1585

1585:                                             ; preds = %1835, %1582
  %1586 = phi i32 [ %1396, %1582 ], [ %1839, %1835 ]
  %1587 = phi i32 [ %905, %1582 ], [ %1836, %1835 ]
  %1588 = icmp eq i32 %1586, %1396
  %1589 = and i1 %1400, %1588
  %1590 = select i1 %1589, ptr %873, ptr null
  %1591 = select i1 %1588, ptr %1583, ptr null
  %1592 = icmp eq i32 %1586, %1434
  %1593 = select i1 %1400, ptr %1590, ptr %873
  %1594 = select i1 %1592, ptr %1593, ptr %1590
  %1595 = and i1 %1400, %1592
  %1596 = select i1 %1595, ptr %874, ptr %1591
  call fastcc void @verify_partial_schedule(ptr noundef %879, ptr noundef %872)
  %1597 = load i32, ptr %879, align 8, !tbaa !54
  %1598 = srem i32 %1586, %1597
  %1599 = icmp slt i32 %1598, 0
  %1600 = select i1 %1599, i32 %1597, i32 0
  %1601 = add nsw i32 %1600, %1598
  %1602 = load ptr, ptr %882, align 8, !tbaa !56
  %1603 = sext i32 %1601 to i64
  %1604 = getelementptr inbounds ptr, ptr %1602, i64 %1603
  %1605 = load ptr, ptr %1604, align 8, !tbaa !35
  %1606 = icmp eq ptr %1605, null
  br i1 %1606, label %1617, label %1607

1607:                                             ; preds = %1585
  %1608 = getelementptr inbounds %struct.ps_insn, ptr %1605, i64 0, i32 4
  %1609 = load i32, ptr %1608, align 8, !tbaa !180
  %1610 = load i32, ptr @issue_rate, align 4, !tbaa !50
  %1611 = icmp slt i32 %1609, %1610
  br i1 %1611, label %1612, label %1699

1612:                                             ; preds = %1607
  br i1 %1606, label %1617, label %1613

1613:                                             ; preds = %1612
  %1614 = getelementptr inbounds %struct.ps_insn, ptr %1605, i64 0, i32 4
  %1615 = load i32, ptr %1614, align 8, !tbaa !180
  %1616 = add nsw i32 %1615, 1
  br label %1617

1617:                                             ; preds = %1585, %1613, %1612
  %1618 = phi i32 [ %1616, %1613 ], [ 1, %1612 ], [ 1, %1585 ]
  %1619 = call ptr @xmalloc(i64 noundef 40) #20
  store ptr %913, ptr %1619, align 8, !tbaa !57
  %1620 = getelementptr inbounds %struct.ps_insn, ptr %1619, i64 0, i32 2
  %1621 = getelementptr inbounds %struct.ps_insn, ptr %1619, i64 0, i32 3
  %1622 = getelementptr inbounds %struct.ps_insn, ptr %1619, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1620, i8 0, i64 16, i1 false)
  store i32 %1618, ptr %1622, align 8, !tbaa !180
  %1623 = getelementptr inbounds %struct.ps_insn, ptr %1619, i64 0, i32 1
  store i32 %1586, ptr %1623, align 8, !tbaa !181
  %1624 = load i32, ptr %879, align 8, !tbaa !54
  %1625 = srem i32 %1586, %1624
  %1626 = icmp slt i32 %1625, 0
  %1627 = select i1 %1626, i32 %1624, i32 0
  %1628 = add nsw i32 %1627, %1625
  %1629 = load ptr, ptr %882, align 8, !tbaa !56
  %1630 = sext i32 %1628 to i64
  %1631 = getelementptr inbounds ptr, ptr %1629, i64 %1630
  %1632 = load ptr, ptr %1631, align 8, !tbaa !35
  %1633 = icmp eq ptr %1632, null
  br i1 %1633, label %1678, label %1634

1634:                                             ; preds = %1617
  %1635 = icmp eq ptr %1596, null
  %1636 = icmp eq ptr %1594, null
  br label %1637

1637:                                             ; preds = %1634, %1673
  %1638 = phi i1 [ %1633, %1634 ], [ %1677, %1673 ]
  %1639 = phi ptr [ %1632, %1634 ], [ %1676, %1673 ]
  %1640 = phi ptr [ null, %1634 ], [ %1674, %1673 ]
  %1641 = phi ptr [ null, %1634 ], [ %1658, %1673 ]
  br i1 %1635, label %1657, label %1642

1642:                                             ; preds = %1637
  %1643 = load ptr, ptr %1639, align 8, !tbaa !57
  %1644 = load i32, ptr %1643, align 8, !tbaa !170
  %1645 = lshr i32 %1644, 6
  %1646 = zext nneg i32 %1645 to i64
  %1647 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1596, i64 0, i32 3, i64 %1646
  %1648 = load i64, ptr %1647, align 8, !tbaa !157
  %1649 = and i32 %1644, 63
  %1650 = zext nneg i32 %1649 to i64
  %1651 = shl nuw i64 1, %1650
  %1652 = and i64 %1651, %1648
  %1653 = icmp eq i64 %1652, 0
  %1654 = icmp ne ptr %1641, null
  %1655 = select i1 %1653, i1 true, i1 %1654
  %1656 = select i1 %1655, ptr %1641, ptr %1639
  br label %1657

1657:                                             ; preds = %1642, %1637
  %1658 = phi ptr [ %1641, %1637 ], [ %1656, %1642 ]
  br i1 %1636, label %1673, label %1659

1659:                                             ; preds = %1657
  %1660 = load ptr, ptr %1639, align 8, !tbaa !57
  %1661 = load i32, ptr %1660, align 8, !tbaa !170
  %1662 = lshr i32 %1661, 6
  %1663 = zext nneg i32 %1662 to i64
  %1664 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1594, i64 0, i32 3, i64 %1663
  %1665 = load i64, ptr %1664, align 8, !tbaa !157
  %1666 = and i32 %1661, 63
  %1667 = zext nneg i32 %1666 to i64
  %1668 = shl nuw i64 1, %1667
  %1669 = and i64 %1668, %1665
  %1670 = icmp eq i64 %1669, 0
  br i1 %1670, label %1673, label %1671

1671:                                             ; preds = %1659
  %1672 = icmp eq ptr %1658, null
  br i1 %1672, label %1673, label %1696

1673:                                             ; preds = %1671, %1659, %1657
  %1674 = phi ptr [ %1640, %1659 ], [ %1640, %1657 ], [ %1639, %1671 ]
  %1675 = getelementptr inbounds %struct.ps_insn, ptr %1639, i64 0, i32 2
  %1676 = load ptr, ptr %1675, align 8, !tbaa !35
  %1677 = icmp eq ptr %1676, null
  br i1 %1677, label %1678, label %1637, !llvm.loop !182

1678:                                             ; preds = %1673, %1617
  %1679 = phi ptr [ null, %1617 ], [ %1674, %1673 ]
  %1680 = phi i1 [ %1633, %1617 ], [ %1677, %1673 ]
  %1681 = icmp eq ptr %1679, null
  br i1 %1681, label %1682, label %1687

1682:                                             ; preds = %1678
  %1683 = load ptr, ptr %1631, align 8, !tbaa !35
  store ptr %1683, ptr %1620, align 8, !tbaa !61
  store ptr null, ptr %1621, align 8, !tbaa !183
  %1684 = icmp eq ptr %1683, null
  br i1 %1684, label %1694, label %1685

1685:                                             ; preds = %1682
  %1686 = getelementptr inbounds %struct.ps_insn, ptr %1683, i64 0, i32 3
  store ptr %1619, ptr %1686, align 8, !tbaa !183
  br label %1694

1687:                                             ; preds = %1678
  %1688 = getelementptr inbounds %struct.ps_insn, ptr %1679, i64 0, i32 2
  %1689 = load ptr, ptr %1688, align 8, !tbaa !61
  store ptr %1689, ptr %1620, align 8, !tbaa !61
  store ptr %1619, ptr %1688, align 8, !tbaa !61
  store ptr %1679, ptr %1621, align 8, !tbaa !183
  %1690 = load ptr, ptr %1620, align 8, !tbaa !61
  %1691 = icmp eq ptr %1690, null
  br i1 %1691, label %1696, label %1692

1692:                                             ; preds = %1687
  %1693 = getelementptr inbounds %struct.ps_insn, ptr %1690, i64 0, i32 3
  br label %1694

1694:                                             ; preds = %1682, %1685, %1692
  %1695 = phi ptr [ %1693, %1692 ], [ %1631, %1685 ], [ %1631, %1682 ]
  store ptr %1619, ptr %1695, align 8, !tbaa !35
  br label %1696

1696:                                             ; preds = %1671, %1694, %1687
  %1697 = phi i1 [ %1680, %1687 ], [ %1680, %1694 ], [ %1638, %1671 ]
  br i1 %1697, label %1699, label %1698

1698:                                             ; preds = %1696
  call void @free(ptr noundef %1619)
  br label %1699

1699:                                             ; preds = %1698, %1696, %1607
  %1700 = phi ptr [ null, %1698 ], [ null, %1607 ], [ %1619, %1696 ]
  %1701 = icmp eq ptr %1700, null
  br i1 %1701, label %1835, label %1702

1702:                                             ; preds = %1699
  %1703 = call fastcc i32 @ps_has_conflicts(ptr noundef nonnull %879, i32 noundef %1586, i32 noundef %1586)
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1705, label %1714

1705:                                             ; preds = %1702
  %1706 = load i32, ptr %883, align 4, !tbaa !164
  %1707 = icmp sgt i32 %1706, 0
  br i1 %1707, label %1708, label %1714

1708:                                             ; preds = %1705
  %1709 = sub nsw i32 %1586, %1706
  %1710 = add nsw i32 %1706, %1586
  %1711 = call fastcc i32 @ps_has_conflicts(ptr noundef nonnull %879, i32 noundef %1709, i32 noundef %1710)
  %1712 = icmp ne i32 %1711, 0
  %1713 = zext i1 %1712 to i32
  br label %1714

1714:                                             ; preds = %1708, %1705, %1702
  %1715 = phi i32 [ 1, %1702 ], [ 0, %1705 ], [ %1713, %1708 ]
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1811, label %1717

1717:                                             ; preds = %1714
  %1718 = getelementptr inbounds %struct.ps_insn, ptr %1700, i64 0, i32 1
  %1719 = getelementptr inbounds %struct.ps_insn, ptr %1700, i64 0, i32 2
  %1720 = icmp eq ptr %1596, null
  %1721 = getelementptr inbounds %struct.ps_insn, ptr %1700, i64 0, i32 3
  %1722 = load i32, ptr %1718, align 8, !tbaa !181
  %1723 = load i32, ptr %879, align 8, !tbaa !54
  %1724 = srem i32 %1722, %1723
  %1725 = icmp slt i32 %1724, 0
  %1726 = select i1 %1725, i32 %1723, i32 0
  %1727 = add nsw i32 %1726, %1724
  %1728 = load ptr, ptr %1719, align 8, !tbaa !61
  %1729 = icmp eq ptr %1728, null
  br i1 %1729, label %1785, label %1730

1730:                                             ; preds = %1717, %1776
  %1731 = phi ptr [ %1783, %1776 ], [ %1728, %1717 ]
  %1732 = phi i32 [ %1782, %1776 ], [ %1727, %1717 ]
  br i1 %1720, label %1745, label %1733

1733:                                             ; preds = %1730
  %1734 = load ptr, ptr %1731, align 8, !tbaa !57
  %1735 = load i32, ptr %1734, align 8, !tbaa !170
  %1736 = lshr i32 %1735, 6
  %1737 = zext nneg i32 %1736 to i64
  %1738 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1596, i64 0, i32 3, i64 %1737
  %1739 = load i64, ptr %1738, align 8, !tbaa !157
  %1740 = and i32 %1735, 63
  %1741 = zext nneg i32 %1740 to i64
  %1742 = shl nuw i64 1, %1741
  %1743 = and i64 %1742, %1739
  %1744 = icmp eq i64 %1743, 0
  br i1 %1744, label %1745, label %1785

1745:                                             ; preds = %1733, %1730
  %1746 = load ptr, ptr %1721, align 8, !tbaa !183
  %1747 = load ptr, ptr %882, align 8, !tbaa !56
  %1748 = sext i32 %1732 to i64
  %1749 = getelementptr inbounds ptr, ptr %1747, i64 %1748
  %1750 = load ptr, ptr %1749, align 8, !tbaa !35
  %1751 = icmp eq ptr %1750, %1700
  br i1 %1751, label %1752, label %1753

1752:                                             ; preds = %1745
  store ptr %1731, ptr %1749, align 8, !tbaa !35
  br label %1753

1753:                                             ; preds = %1752, %1745
  %1754 = getelementptr inbounds %struct.ps_insn, ptr %1731, i64 0, i32 2
  %1755 = load ptr, ptr %1754, align 8, !tbaa !61
  store ptr %1755, ptr %1719, align 8, !tbaa !61
  %1756 = load ptr, ptr %1754, align 8, !tbaa !61
  %1757 = icmp eq ptr %1756, null
  br i1 %1757, label %1760, label %1758

1758:                                             ; preds = %1753
  %1759 = getelementptr inbounds %struct.ps_insn, ptr %1756, i64 0, i32 3
  store ptr %1700, ptr %1759, align 8, !tbaa !183
  br label %1760

1760:                                             ; preds = %1758, %1753
  store ptr %1700, ptr %1754, align 8, !tbaa !61
  store ptr %1731, ptr %1721, align 8, !tbaa !183
  %1761 = getelementptr inbounds %struct.ps_insn, ptr %1731, i64 0, i32 3
  store ptr %1746, ptr %1761, align 8, !tbaa !183
  %1762 = icmp eq ptr %1746, null
  br i1 %1762, label %1765, label %1763

1763:                                             ; preds = %1760
  %1764 = getelementptr inbounds %struct.ps_insn, ptr %1746, i64 0, i32 2
  store ptr %1731, ptr %1764, align 8, !tbaa !61
  br label %1765

1765:                                             ; preds = %1763, %1760
  %1766 = call fastcc i32 @ps_has_conflicts(ptr noundef nonnull %879, i32 noundef %1586, i32 noundef %1586)
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %1768, label %1776

1768:                                             ; preds = %1765
  %1769 = load i32, ptr %883, align 4, !tbaa !164
  %1770 = icmp sgt i32 %1769, 0
  br i1 %1770, label %1771, label %1811

1771:                                             ; preds = %1768
  %1772 = sub nsw i32 %1586, %1769
  %1773 = add nsw i32 %1769, %1586
  %1774 = call fastcc i32 @ps_has_conflicts(ptr noundef nonnull %879, i32 noundef %1772, i32 noundef %1773)
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1811, label %1776

1776:                                             ; preds = %1771, %1765
  %1777 = load i32, ptr %1718, align 8, !tbaa !181
  %1778 = load i32, ptr %879, align 8, !tbaa !54
  %1779 = srem i32 %1777, %1778
  %1780 = icmp slt i32 %1779, 0
  %1781 = select i1 %1780, i32 %1778, i32 0
  %1782 = add nsw i32 %1781, %1779
  %1783 = load ptr, ptr %1719, align 8, !tbaa !61
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %1785, label %1730, !llvm.loop !184

1785:                                             ; preds = %1776, %1733, %1717
  %1786 = phi i32 [ %1727, %1717 ], [ %1782, %1776 ], [ %1732, %1733 ]
  %1787 = phi ptr [ %1728, %1717 ], [ %1783, %1776 ], [ %1731, %1733 ]
  %1788 = getelementptr inbounds %struct.ps_insn, ptr %1700, i64 0, i32 3
  %1789 = load ptr, ptr %1788, align 8, !tbaa !183
  %1790 = icmp eq ptr %1789, null
  br i1 %1790, label %1791, label %1802

1791:                                             ; preds = %1785
  %1792 = load ptr, ptr %882, align 8, !tbaa !56
  %1793 = sext i32 %1786 to i64
  %1794 = getelementptr inbounds ptr, ptr %1792, i64 %1793
  %1795 = load ptr, ptr %1794, align 8, !tbaa !35
  %1796 = icmp eq ptr %1795, %1700
  br i1 %1796, label %1797, label %1835

1797:                                             ; preds = %1791
  store ptr %1787, ptr %1794, align 8, !tbaa !35
  %1798 = load ptr, ptr %882, align 8, !tbaa !56
  %1799 = getelementptr inbounds ptr, ptr %1798, i64 %1793
  %1800 = load ptr, ptr %1799, align 8, !tbaa !35
  %1801 = icmp eq ptr %1800, null
  br i1 %1801, label %1810, label %1806

1802:                                             ; preds = %1785
  %1803 = getelementptr inbounds %struct.ps_insn, ptr %1789, i64 0, i32 2
  store ptr %1787, ptr %1803, align 8, !tbaa !61
  %1804 = load ptr, ptr %1719, align 8, !tbaa !61
  %1805 = icmp eq ptr %1804, null
  br i1 %1805, label %1810, label %1806

1806:                                             ; preds = %1802, %1797
  %1807 = phi ptr [ %1800, %1797 ], [ %1804, %1802 ]
  %1808 = phi ptr [ null, %1797 ], [ %1789, %1802 ]
  %1809 = getelementptr inbounds %struct.ps_insn, ptr %1807, i64 0, i32 3
  store ptr %1808, ptr %1809, align 8, !tbaa !183
  br label %1810

1810:                                             ; preds = %1806, %1802, %1797
  call void @free(ptr noundef %1700)
  br label %1835

1811:                                             ; preds = %1771, %1768, %1714
  %1812 = load i32, ptr %884, align 8, !tbaa !165
  %1813 = call i32 @llvm.smin.i32(i32 %1812, i32 %1586)
  store i32 %1813, ptr %884, align 8, !tbaa !165
  %1814 = load i32, ptr %885, align 4, !tbaa !166
  %1815 = call i32 @llvm.smax.i32(i32 %1814, i32 %1586)
  store i32 %1815, ptr %885, align 4, !tbaa !166
  %1816 = load ptr, ptr %1584, align 8, !tbaa !46
  %1817 = getelementptr inbounds %struct.node_sched_params, ptr %1816, i64 0, i32 1
  store i32 %1586, ptr %1817, align 4, !tbaa !171
  %1818 = load ptr, ptr %872, align 8, !tbaa !153
  %1819 = icmp eq ptr %1818, null
  br i1 %1819, label %1828, label %1820

1820:                                             ; preds = %1811
  %1821 = load i64, ptr %978, align 8, !tbaa !157
  %1822 = and i64 %1821, %982
  %1823 = icmp eq i64 %1822, 0
  br i1 %1823, label %1824, label %1828

1824:                                             ; preds = %1820
  %1825 = getelementptr inbounds i8, ptr %1818, i64 %977
  %1826 = load i8, ptr %1825, align 1, !tbaa !46
  %1827 = add i8 %1826, 1
  store i8 %1827, ptr %1825, align 1, !tbaa !46
  br label %1828

1828:                                             ; preds = %1824, %1820, %1811
  %1829 = load i64, ptr %978, align 8, !tbaa !157
  %1830 = or i64 %1829, %982
  store i64 %1830, ptr %978, align 8, !tbaa !157
  %1831 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1832 = icmp eq ptr %1831, null
  br i1 %1832, label %1835, label %1833

1833:                                             ; preds = %1828
  %1834 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1831, ptr noundef nonnull @.str.64, i32 noundef %1586)
  br label %1835

1835:                                             ; preds = %1833, %1828, %1810, %1791, %1699
  %1836 = phi i32 [ 0, %1828 ], [ 0, %1833 ], [ %1587, %1810 ], [ %1587, %1791 ], [ %1587, %1699 ]
  %1837 = phi i1 [ true, %1828 ], [ true, %1833 ], [ false, %1810 ], [ false, %1791 ], [ false, %1699 ]
  %1838 = phi i32 [ 1, %1828 ], [ 1, %1833 ], [ 0, %1810 ], [ 0, %1791 ], [ 0, %1699 ]
  %1839 = add nsw i32 %1586, %1395
  %1840 = icmp eq i32 %1839, %1394
  %1841 = select i1 %1837, i1 true, i1 %1840
  br i1 %1841, label %1842, label %1585, !llvm.loop !185

1842:                                             ; preds = %1835, %1580
  %1843 = phi i32 [ %905, %1580 ], [ %1836, %1835 ]
  %1844 = phi i32 [ 0, %1580 ], [ %1838, %1835 ]
  call fastcc void @verify_partial_schedule(ptr noundef %879, ptr noundef %872)
  br label %1845

1845:                                             ; preds = %1409, %1406, %1842
  %1846 = phi i32 [ %1843, %1842 ], [ %905, %1406 ], [ %905, %1409 ]
  %1847 = phi i32 [ %1844, %1842 ], [ 0, %1406 ], [ 0, %1409 ]
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1849, label %2028

1849:                                             ; preds = %1845
  %1850 = add nsw i32 %902, 1
  %1851 = icmp eq i32 %902, %847
  br i1 %1851, label %2028, label %1852

1852:                                             ; preds = %1849
  %1853 = icmp sgt i32 %1846, 9
  br i1 %1853, label %1854, label %1891

1854:                                             ; preds = %1852
  %1855 = icmp eq ptr %879, null
  call fastcc void @verify_partial_schedule(ptr noundef %879, ptr noundef %872)
  br i1 %1855, label %1890, label %1856

1856:                                             ; preds = %1854
  %1857 = load i32, ptr %879, align 8, !tbaa !54
  %1858 = icmp sgt i32 %1857, 0
  br i1 %1858, label %1859, label %1882

1859:                                             ; preds = %1856, %1875
  %1860 = phi i64 [ %1878, %1875 ], [ 0, %1856 ]
  %1861 = load ptr, ptr %882, align 8, !tbaa !56
  %1862 = getelementptr inbounds ptr, ptr %1861, i64 %1860
  %1863 = load ptr, ptr %1862, align 8, !tbaa !35
  %1864 = icmp eq ptr %1863, null
  br i1 %1864, label %1875, label %1865

1865:                                             ; preds = %1859, %1865
  %1866 = phi ptr [ %1873, %1865 ], [ %1863, %1859 ]
  %1867 = getelementptr inbounds %struct.ps_insn, ptr %1866, i64 0, i32 2
  %1868 = load ptr, ptr %1867, align 8, !tbaa !61
  call void @free(ptr noundef %1866)
  %1869 = load ptr, ptr %882, align 8, !tbaa !56
  %1870 = getelementptr inbounds ptr, ptr %1869, i64 %1860
  store ptr %1868, ptr %1870, align 8, !tbaa !35
  %1871 = load ptr, ptr %882, align 8, !tbaa !56
  %1872 = getelementptr inbounds ptr, ptr %1871, i64 %1860
  %1873 = load ptr, ptr %1872, align 8, !tbaa !35
  %1874 = icmp eq ptr %1873, null
  br i1 %1874, label %1875, label %1865, !llvm.loop !186

1875:                                             ; preds = %1865, %1859
  %1876 = phi ptr [ %1861, %1859 ], [ %1871, %1865 ]
  %1877 = getelementptr inbounds ptr, ptr %1876, i64 %1860
  store ptr null, ptr %1877, align 8, !tbaa !35
  %1878 = add nuw nsw i64 %1860, 1
  %1879 = load i32, ptr %879, align 8, !tbaa !54
  %1880 = sext i32 %1879 to i64
  %1881 = icmp slt i64 %1878, %1880
  br i1 %1881, label %1859, label %1882, !llvm.loop !187

1882:                                             ; preds = %1875, %1856
  %1883 = phi i32 [ %1857, %1856 ], [ %1879, %1875 ]
  %1884 = icmp eq i32 %1883, %1850
  br i1 %1884, label %1890, label %1885

1885:                                             ; preds = %1882
  %1886 = load ptr, ptr %882, align 8, !tbaa !56
  %1887 = sext i32 %1850 to i64
  %1888 = shl nsw i64 %1887, 3
  %1889 = call ptr @xrealloc(ptr noundef %1886, i64 noundef %1888) #20
  store ptr %1889, ptr %882, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr align 8 %1889, i8 0, i64 %1888, i1 false)
  store i32 %1850, ptr %879, align 8, !tbaa !54
  store i32 2147483647, ptr %884, align 8, !tbaa !165
  store i32 -2147483648, ptr %885, align 4, !tbaa !166
  br label %1890

1890:                                             ; preds = %1885, %1882, %1854
  call fastcc void @verify_partial_schedule(ptr noundef %879, ptr noundef %872)
  br label %2028

1891:                                             ; preds = %1852
  %1892 = add nsw i32 %1846, 1
  %1893 = load i32, ptr %879, align 8, !tbaa !54
  %1894 = add nsw i32 %1394, 1
  %1895 = add nsw i32 %1394, -1
  %1896 = select i1 %1400, i32 %1895, i32 %1396
  %1897 = select i1 %1400, i32 %1396, i32 %1894
  %1898 = call fastcc i32 @compute_split_row(ptr noundef %872, i32 noundef %1897, i32 noundef %1896, i32 noundef %1893, ptr noundef %913)
  %1899 = load i32, ptr %879, align 8, !tbaa !54
  %1900 = add nsw i32 %1899, 1
  call fastcc void @verify_partial_schedule(ptr noundef nonnull %879, ptr noundef %872)
  %1901 = load i32, ptr %884, align 8, !tbaa !165
  %1902 = sub nsw i32 %1898, %1901
  %1903 = srem i32 %1902, %1899
  %1904 = icmp slt i32 %1903, 0
  %1905 = select i1 %1904, i32 %1899, i32 0
  %1906 = add i32 %1905, %1903
  %1907 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1908 = icmp eq ptr %1907, null
  br i1 %1908, label %1911, label %1909

1909:                                             ; preds = %1891
  %1910 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1907, ptr noundef nonnull @.str.66, i32 noundef %1906)
  br label %1911

1911:                                             ; preds = %1909, %1891
  call fastcc void @normalize_sched_times(ptr noundef nonnull %879)
  %1912 = load i32, ptr %884, align 8, !tbaa !165
  call fastcc void @rotate_partial_schedule(ptr noundef nonnull %879, i32 noundef %1912)
  %1913 = sext i32 %1900 to i64
  %1914 = call ptr @xcalloc(i64 noundef %1913, i64 noundef 8) #20
  %1915 = icmp sgt i32 %1906, 0
  br i1 %1915, label %1916, label %1950

1916:                                             ; preds = %1911
  %1917 = zext nneg i32 %1906 to i64
  br label %1918

1918:                                             ; preds = %1916, %1947
  %1919 = phi i64 [ 0, %1916 ], [ %1948, %1947 ]
  %1920 = load ptr, ptr %882, align 8, !tbaa !56
  %1921 = getelementptr inbounds ptr, ptr %1920, i64 %1919
  %1922 = load ptr, ptr %1921, align 8, !tbaa !35
  %1923 = getelementptr inbounds ptr, ptr %1914, i64 %1919
  store ptr %1922, ptr %1923, align 8, !tbaa !35
  %1924 = load ptr, ptr %882, align 8, !tbaa !56
  %1925 = getelementptr inbounds ptr, ptr %1924, i64 %1919
  store ptr null, ptr %1925, align 8, !tbaa !35
  %1926 = load ptr, ptr %1923, align 8, !tbaa !35
  %1927 = icmp eq ptr %1926, null
  br i1 %1927, label %1947, label %1928

1928:                                             ; preds = %1918, %1928
  %1929 = phi ptr [ %1945, %1928 ], [ %1926, %1918 ]
  %1930 = load ptr, ptr %1929, align 8, !tbaa !57
  %1931 = getelementptr inbounds %struct.ddg_node, ptr %1930, i64 0, i32 7
  %1932 = load ptr, ptr %1931, align 8, !tbaa !46
  %1933 = getelementptr inbounds %struct.node_sched_params, ptr %1932, i64 0, i32 1
  %1934 = load i32, ptr %1933, align 4, !tbaa !171
  %1935 = sdiv i32 %1934, %1899
  %1936 = add nsw i32 %1935, %1934
  store i32 %1936, ptr %1933, align 4, !tbaa !171
  %1937 = getelementptr inbounds %struct.ps_insn, ptr %1929, i64 0, i32 1
  store i32 %1936, ptr %1937, align 8, !tbaa !181
  %1938 = srem i32 %1936, %1900
  %1939 = load ptr, ptr %1931, align 8, !tbaa !46
  %1940 = getelementptr inbounds %struct.node_sched_params, ptr %1939, i64 0, i32 4
  store i32 %1938, ptr %1940, align 4, !tbaa !188
  %1941 = sdiv i32 %1936, %1900
  %1942 = load ptr, ptr %1931, align 8, !tbaa !46
  %1943 = getelementptr inbounds %struct.node_sched_params, ptr %1942, i64 0, i32 5
  store i32 %1941, ptr %1943, align 8, !tbaa !189
  %1944 = getelementptr inbounds %struct.ps_insn, ptr %1929, i64 0, i32 2
  %1945 = load ptr, ptr %1944, align 8, !tbaa !35
  %1946 = icmp eq ptr %1945, null
  br i1 %1946, label %1947, label %1928, !llvm.loop !190

1947:                                             ; preds = %1928, %1918
  %1948 = add nuw nsw i64 %1919, 1
  %1949 = icmp eq i64 %1948, %1917
  br i1 %1949, label %1950, label %1918, !llvm.loop !191

1950:                                             ; preds = %1947, %1911
  %1951 = sext i32 %1906 to i64
  %1952 = getelementptr inbounds ptr, ptr %1914, i64 %1951
  store ptr null, ptr %1952, align 8, !tbaa !35
  %1953 = icmp slt i32 %1906, %1899
  br i1 %1953, label %1954, label %1990

1954:                                             ; preds = %1950
  %1955 = sext i32 %1906 to i64
  %1956 = sext i32 %1899 to i64
  br label %1959

1957:                                             ; preds = %1970, %1959
  %1958 = icmp slt i64 %1964, %1956
  br i1 %1958, label %1959, label %1990, !llvm.loop !192

1959:                                             ; preds = %1954, %1957
  %1960 = phi i64 [ %1955, %1954 ], [ %1964, %1957 ]
  %1961 = load ptr, ptr %882, align 8, !tbaa !56
  %1962 = getelementptr inbounds ptr, ptr %1961, i64 %1960
  %1963 = load ptr, ptr %1962, align 8, !tbaa !35
  %1964 = add nsw i64 %1960, 1
  %1965 = getelementptr inbounds ptr, ptr %1914, i64 %1964
  store ptr %1963, ptr %1965, align 8, !tbaa !35
  %1966 = load ptr, ptr %882, align 8, !tbaa !56
  %1967 = getelementptr inbounds ptr, ptr %1966, i64 %1960
  store ptr null, ptr %1967, align 8, !tbaa !35
  %1968 = load ptr, ptr %1965, align 8, !tbaa !35
  %1969 = icmp eq ptr %1968, null
  br i1 %1969, label %1957, label %1970

1970:                                             ; preds = %1959, %1970
  %1971 = phi ptr [ %1988, %1970 ], [ %1968, %1959 ]
  %1972 = load ptr, ptr %1971, align 8, !tbaa !57
  %1973 = getelementptr inbounds %struct.ddg_node, ptr %1972, i64 0, i32 7
  %1974 = load ptr, ptr %1973, align 8, !tbaa !46
  %1975 = getelementptr inbounds %struct.node_sched_params, ptr %1974, i64 0, i32 1
  %1976 = load i32, ptr %1975, align 4, !tbaa !171
  %1977 = sdiv i32 %1976, %1899
  %1978 = add i32 %1976, 1
  %1979 = add i32 %1978, %1977
  store i32 %1979, ptr %1975, align 4, !tbaa !171
  %1980 = getelementptr inbounds %struct.ps_insn, ptr %1971, i64 0, i32 1
  store i32 %1979, ptr %1980, align 8, !tbaa !181
  %1981 = srem i32 %1979, %1900
  %1982 = load ptr, ptr %1973, align 8, !tbaa !46
  %1983 = getelementptr inbounds %struct.node_sched_params, ptr %1982, i64 0, i32 4
  store i32 %1981, ptr %1983, align 4, !tbaa !188
  %1984 = sdiv i32 %1979, %1900
  %1985 = load ptr, ptr %1973, align 8, !tbaa !46
  %1986 = getelementptr inbounds %struct.node_sched_params, ptr %1985, i64 0, i32 5
  store i32 %1984, ptr %1986, align 8, !tbaa !189
  %1987 = getelementptr inbounds %struct.ps_insn, ptr %1971, i64 0, i32 2
  %1988 = load ptr, ptr %1987, align 8, !tbaa !35
  %1989 = icmp eq ptr %1988, null
  br i1 %1989, label %1957, label %1970, !llvm.loop !193

1990:                                             ; preds = %1957, %1950
  %1991 = load i32, ptr %884, align 8, !tbaa !165
  %1992 = sdiv i32 %1991, %1899
  %1993 = add nsw i32 %1992, %1991
  %1994 = srem i32 %1991, %1899
  %1995 = icmp slt i32 %1994, 0
  %1996 = select i1 %1995, i32 %1899, i32 0
  %1997 = add nsw i32 %1996, %1994
  %1998 = icmp sge i32 %1997, %1906
  %1999 = zext i1 %1998 to i32
  %2000 = add nsw i32 %1993, %1999
  store i32 %2000, ptr %884, align 8, !tbaa !165
  %2001 = load i32, ptr %885, align 4, !tbaa !166
  %2002 = sdiv i32 %2001, %1899
  %2003 = add nsw i32 %2002, %2001
  %2004 = srem i32 %2001, %1899
  %2005 = icmp slt i32 %2004, 0
  %2006 = select i1 %2005, i32 %1899, i32 0
  %2007 = add nsw i32 %2006, %2004
  %2008 = icmp sge i32 %2007, %1906
  %2009 = zext i1 %2008 to i32
  %2010 = add nsw i32 %2003, %2009
  store i32 %2010, ptr %885, align 4, !tbaa !166
  %2011 = load ptr, ptr %882, align 8, !tbaa !56
  call void @free(ptr noundef %2011)
  store ptr %1914, ptr %882, align 8, !tbaa !56
  store i32 %1900, ptr %879, align 8, !tbaa !54
  %2012 = load i32, ptr %884, align 8, !tbaa !165
  %2013 = icmp sgt i32 %2012, -1
  br i1 %2013, label %2015, label %2014

2014:                                             ; preds = %1990
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1945, ptr noundef nonnull @.str.9) #20
  br label %2015

2015:                                             ; preds = %2014, %1990
  call fastcc void @verify_partial_schedule(ptr noundef nonnull %879, ptr noundef %872)
  %2016 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2022, label %2018

2018:                                             ; preds = %2015
  %2019 = load i32, ptr %884, align 8, !tbaa !165
  %2020 = load i32, ptr %885, align 4, !tbaa !166
  %2021 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2016, ptr noundef nonnull @.str.67, i32 noundef %2019, i32 noundef %2020)
  br label %2022

2022:                                             ; preds = %2018, %2015
  %2023 = add nsw i32 %903, -1
  %2024 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2025 = icmp eq ptr %2024, null
  br i1 %2025, label %2028, label %2026

2026:                                             ; preds = %2022
  %2027 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2024, ptr noundef nonnull @.str.48, i32 noundef %1892)
  br label %2028

2028:                                             ; preds = %1849, %1890, %2022, %2026, %1845, %975, %965, %938
  %2029 = phi i32 [ %1846, %1845 ], [ %905, %975 ], [ %905, %965 ], [ %905, %938 ], [ %1846, %1849 ], [ 0, %1890 ], [ %1892, %2022 ], [ %1892, %2026 ]
  %2030 = phi i32 [ %904, %1845 ], [ %904, %975 ], [ %904, %965 ], [ %904, %938 ], [ %904, %1849 ], [ 1, %1890 ], [ %904, %2022 ], [ %904, %2026 ]
  %2031 = phi i32 [ %903, %1845 ], [ %903, %975 ], [ %903, %965 ], [ %903, %938 ], [ %903, %1849 ], [ %903, %1890 ], [ %2023, %2022 ], [ %2023, %2026 ]
  %2032 = phi i32 [ %902, %1845 ], [ %902, %975 ], [ %902, %965 ], [ %902, %938 ], [ %1850, %1849 ], [ %1850, %1890 ], [ %1850, %2022 ], [ %1850, %2026 ]
  %2033 = phi i1 [ true, %1845 ], [ true, %975 ], [ true, %965 ], [ true, %938 ], [ false, %1849 ], [ false, %1890 ], [ true, %2022 ], [ true, %2026 ]
  %2034 = add nsw i32 %2031, 1
  %2035 = icmp slt i32 %2034, %871
  %2036 = select i1 %2033, i1 %2035, i1 false
  br i1 %2036, label %901, label %2037, !llvm.loop !194

2037:                                             ; preds = %2028, %900
  %2038 = phi i32 [ %895, %900 ], [ %2029, %2028 ]
  %2039 = phi i32 [ 0, %900 ], [ %2030, %2028 ]
  %2040 = phi i32 [ %894, %900 ], [ %2032, %2028 ]
  %2041 = icmp ne i32 %2039, 0
  %2042 = icmp slt i32 %2040, %847
  %2043 = select i1 %2041, i1 %2042, i1 false
  br i1 %2043, label %893, label %2044, !llvm.loop !195

2044:                                             ; preds = %2037, %870
  %2045 = phi i1 [ %887, %870 ], [ %2042, %2037 ]
  br i1 %2045, label %2047, label %2046

2046:                                             ; preds = %2044
  call fastcc void @free_partial_schedule(ptr noundef %879)
  br label %2051

2047:                                             ; preds = %2044
  %2048 = call i32 @sbitmap_equal(ptr noundef %875, ptr noundef %872) #20
  %2049 = icmp eq i32 %2048, 0
  br i1 %2049, label %2050, label %2051

2050:                                             ; preds = %2047
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1864, ptr noundef nonnull @.str.9) #20
  br label %2051

2051:                                             ; preds = %2046, %2047, %2050
  %2052 = phi ptr [ null, %2046 ], [ %879, %2047 ], [ %879, %2050 ]
  %2053 = load ptr, ptr %872, align 8, !tbaa !153
  call void @free(ptr noundef %2053)
  call void @free(ptr noundef %872)
  %2054 = load ptr, ptr %873, align 8, !tbaa !153
  call void @free(ptr noundef %2054)
  call void @free(ptr noundef %873)
  %2055 = load ptr, ptr %874, align 8, !tbaa !153
  call void @free(ptr noundef %2055)
  call void @free(ptr noundef %874)
  %2056 = load ptr, ptr %875, align 8, !tbaa !153
  call void @free(ptr noundef %2056)
  call void @free(ptr noundef %875)
  %2057 = icmp eq ptr %2052, null
  br i1 %2057, label %2069, label %2058

2058:                                             ; preds = %2051
  %2059 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 4
  %2060 = load i32, ptr %2059, align 4, !tbaa !166
  %2061 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 3
  %2062 = load i32, ptr %2061, align 8, !tbaa !165
  %2063 = sub i32 %2060, %2062
  %2064 = load i32, ptr %2052, align 8, !tbaa !54
  %2065 = add i32 %2063, %2064
  %2066 = sdiv i32 %2065, %2064
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2068, label %2069

2068:                                             ; preds = %2058
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1162, ptr noundef nonnull @.str.9) #20
  br label %2069

2069:                                             ; preds = %2068, %2058, %2051
  %2070 = phi i32 [ %2066, %2058 ], [ 0, %2068 ], [ 0, %2051 ]
  %2071 = icmp ult i32 %2070, 2
  br i1 %2071, label %2078, label %2072

2072:                                             ; preds = %2069
  %2073 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %2074 = icmp eq i32 %2073, 0
  %2075 = zext i32 %2070 to i64
  %2076 = icmp sgt i64 %497, %2075
  %2077 = select i1 %2074, i1 true, i1 %2076
  br i1 %2077, label %2093, label %2078

2078:                                             ; preds = %2072, %2069
  %2079 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2080 = icmp eq ptr %2079, null
  br i1 %2080, label %2657, label %2081

2081:                                             ; preds = %2078
  %2082 = call i64 @fwrite(ptr nonnull @.str.32, i64 15, i64 1, ptr nonnull %2079)
  %2083 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2084 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2083, ptr noundef nonnull @.str.33, i32 noundef %2070)
  %2085 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2086 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2085, ptr noundef nonnull @.str.13, i64 noundef 0)
  %2087 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2088 = call i64 @fwrite(ptr nonnull @.str.34, i64 13, i64 1, ptr %2087)
  %2089 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2090 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2089, ptr noundef nonnull @.str.13, i64 noundef %497)
  %2091 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2092 = call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %2091)
  br label %2657

2093:                                             ; preds = %2072
  %2094 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2095 = icmp eq ptr %2094, null
  br i1 %2095, label %2108, label %2096

2096:                                             ; preds = %2093
  %2097 = load i32, ptr %2052, align 8, !tbaa !54
  %2098 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2094, ptr noundef nonnull @.str.36, i32 noundef %2097, i32 noundef %2070)
  %2099 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_partial_schedule(ptr noundef nonnull %2052, ptr noundef %2099)
  %2100 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2101 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 6
  %2102 = load ptr, ptr %2101, align 8, !tbaa !196
  %2103 = load i32, ptr %2102, align 8, !tbaa !170
  %2104 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 3
  %2105 = load i32, ptr %2104, align 8, !tbaa !165
  %2106 = add nsw i32 %2105, -1
  %2107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2100, ptr noundef nonnull @.str.37, i32 noundef %2103, i32 noundef %2106)
  br label %2108

2108:                                             ; preds = %2096, %2093
  call fastcc void @normalize_sched_times(ptr noundef %2052)
  %2109 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 3
  %2110 = load i32, ptr %2109, align 8, !tbaa !165
  call fastcc void @rotate_partial_schedule(ptr noundef %2052, i32 noundef %2110)
  %2111 = load i32, ptr %2052, align 8, !tbaa !54
  %2112 = icmp sgt i32 %2111, 0
  br i1 %2112, label %2113, label %2136

2113:                                             ; preds = %2108
  %2114 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 2
  %2115 = load ptr, ptr %2114, align 8, !tbaa !56
  %2116 = zext nneg i32 %2111 to i64
  br label %2117

2117:                                             ; preds = %2113, %2133
  %2118 = phi i64 [ 0, %2113 ], [ %2134, %2133 ]
  %2119 = getelementptr inbounds ptr, ptr %2115, i64 %2118
  %2120 = load ptr, ptr %2119, align 8, !tbaa !35
  %2121 = icmp eq ptr %2120, null
  br i1 %2121, label %2133, label %2122

2122:                                             ; preds = %2117, %2122
  %2123 = phi ptr [ %2131, %2122 ], [ %2120, %2117 ]
  %2124 = phi i32 [ %2125, %2122 ], [ 0, %2117 ]
  %2125 = add nuw nsw i32 %2124, 1
  %2126 = load ptr, ptr %2123, align 8, !tbaa !57
  %2127 = getelementptr inbounds %struct.ddg_node, ptr %2126, i64 0, i32 7
  %2128 = load ptr, ptr %2127, align 8, !tbaa !46
  %2129 = getelementptr inbounds %struct.node_sched_params, ptr %2128, i64 0, i32 6
  store i32 %2124, ptr %2129, align 4, !tbaa !197
  %2130 = getelementptr inbounds %struct.ps_insn, ptr %2123, i64 0, i32 2
  %2131 = load ptr, ptr %2130, align 8, !tbaa !35
  %2132 = icmp eq ptr %2131, null
  br i1 %2132, label %2133, label %2122, !llvm.loop !198

2133:                                             ; preds = %2122, %2117
  %2134 = add nuw nsw i64 %2118, 1
  %2135 = icmp eq i64 %2134, %2116
  br i1 %2135, label %2136, label %2117, !llvm.loop !199

2136:                                             ; preds = %2133, %2108
  %2137 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2138 = getelementptr inbounds %struct.function, ptr %2137, i64 0, i32 1
  %2139 = load ptr, ptr %2138, align 8, !tbaa !67
  %2140 = getelementptr inbounds %struct.control_flow_graph, ptr %2139, i64 0, i32 1
  %2141 = load ptr, ptr %2140, align 8, !tbaa !71
  %2142 = icmp eq ptr %2141, null
  br label %2143

2143:                                             ; preds = %2186, %2136
  %2144 = phi i32 [ 0, %2136 ], [ %2187, %2186 ]
  br i1 %2142, label %2145, label %2146

2145:                                             ; preds = %2143
  call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 687, ptr noundef nonnull @.str.9) #20
  br label %2146

2146:                                             ; preds = %2145, %2143
  %2147 = load ptr, ptr %2141, align 8, !tbaa !35
  %2148 = icmp eq ptr %2147, null
  br i1 %2148, label %2151, label %2149

2149:                                             ; preds = %2146
  %2150 = load i32, ptr %2147, align 8, !tbaa !114
  br label %2151

2151:                                             ; preds = %2149, %2146
  %2152 = phi i32 [ %2150, %2149 ], [ 0, %2146 ]
  %2153 = icmp eq i32 %2152, %2144
  br i1 %2153, label %2158, label %2154

2154:                                             ; preds = %2151
  %2155 = zext i32 %2144 to i64
  %2156 = getelementptr inbounds %struct.VEC_edge_base, ptr %2147, i64 0, i32 2, i64 %2155
  %2157 = load ptr, ptr %2156, align 8, !tbaa !35
  br label %2158

2158:                                             ; preds = %2154, %2151
  %2159 = phi ptr [ %2157, %2154 ], [ null, %2151 ]
  br i1 %2153, label %2188, label %2160

2160:                                             ; preds = %2158
  %2161 = getelementptr inbounds %struct.edge_def, ptr %2159, i64 0, i32 7
  %2162 = load i32, ptr %2161, align 8, !tbaa !200
  %2163 = and i32 %2162, 1
  %2164 = icmp eq i32 %2163, 0
  br i1 %2164, label %2177, label %2165

2165:                                             ; preds = %2160
  %2166 = load ptr, ptr %2159, align 8, !tbaa !201
  %2167 = getelementptr inbounds %struct.basic_block_def, ptr %2166, i64 0, i32 1
  %2168 = load ptr, ptr %2167, align 8, !tbaa !116
  %2169 = icmp eq ptr %2168, null
  br i1 %2169, label %2172, label %2170

2170:                                             ; preds = %2165
  %2171 = load i32, ptr %2168, align 8, !tbaa !114
  br label %2172

2172:                                             ; preds = %2170, %2165
  %2173 = phi i32 [ %2171, %2170 ], [ 0, %2165 ]
  %2174 = icmp ugt i32 %2173, 1
  br i1 %2174, label %2175, label %2177

2175:                                             ; preds = %2172
  %2176 = call ptr @split_edge(ptr noundef nonnull %2159) #20
  br label %2177

2177:                                             ; preds = %2175, %2172, %2160
  %2178 = load ptr, ptr %2141, align 8, !tbaa !35
  %2179 = icmp eq ptr %2178, null
  br i1 %2179, label %2182, label %2180

2180:                                             ; preds = %2177
  %2181 = load i32, ptr %2178, align 8, !tbaa !114
  br label %2182

2182:                                             ; preds = %2180, %2177
  %2183 = phi i32 [ %2181, %2180 ], [ 0, %2177 ]
  %2184 = icmp ult i32 %2144, %2183
  br i1 %2184, label %2186, label %2185

2185:                                             ; preds = %2182
  call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 738, ptr noundef nonnull @.str.9) #20
  br label %2186

2186:                                             ; preds = %2185, %2182
  %2187 = add i32 %2144, 1
  br label %2143, !llvm.loop !202

2188:                                             ; preds = %2158
  %2189 = getelementptr inbounds %struct.loop, ptr %455, i64 0, i32 3
  %2190 = load ptr, ptr %2189, align 8, !tbaa !112
  %2191 = load ptr, ptr %478, align 8, !tbaa !108
  %2192 = icmp eq ptr %2190, %2191
  br i1 %2192, label %2200, label %2193

2193:                                             ; preds = %2188
  %2194 = getelementptr inbounds %struct.basic_block_def, ptr %2190, i64 0, i32 1
  %2195 = load ptr, ptr %2194, align 8, !tbaa !116
  %2196 = icmp eq ptr %2195, null
  br i1 %2196, label %2234, label %2197

2197:                                             ; preds = %2193
  %2198 = load i32, ptr %2195, align 8, !tbaa !114
  %2199 = icmp ugt i32 %2198, 1
  br i1 %2199, label %2200, label %2234

2200:                                             ; preds = %2197, %2188
  %2201 = icmp eq ptr %2191, null
  br label %2202

2202:                                             ; preds = %2230, %2200
  %2203 = phi i32 [ 0, %2200 ], [ %2231, %2230 ]
  br i1 %2201, label %2204, label %2205

2204:                                             ; preds = %2202
  call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 687, ptr noundef nonnull @.str.9) #20
  br label %2205

2205:                                             ; preds = %2204, %2202
  %2206 = load ptr, ptr %2191, align 8, !tbaa !35
  %2207 = icmp eq ptr %2206, null
  br i1 %2207, label %2210, label %2208

2208:                                             ; preds = %2205
  %2209 = load i32, ptr %2206, align 8, !tbaa !114
  br label %2210

2210:                                             ; preds = %2208, %2205
  %2211 = phi i32 [ %2209, %2208 ], [ 0, %2205 ]
  %2212 = icmp eq i32 %2211, %2203
  br i1 %2212, label %2217, label %2213

2213:                                             ; preds = %2210
  %2214 = zext i32 %2203 to i64
  %2215 = getelementptr inbounds %struct.VEC_edge_base, ptr %2206, i64 0, i32 2, i64 %2214
  %2216 = load ptr, ptr %2215, align 8, !tbaa !35
  br label %2217

2217:                                             ; preds = %2213, %2210
  %2218 = phi ptr [ %2216, %2213 ], [ null, %2210 ]
  br i1 %2212, label %2232, label %2219

2219:                                             ; preds = %2217
  %2220 = load ptr, ptr %2218, align 8, !tbaa !201
  %2221 = load ptr, ptr %2189, align 8, !tbaa !112
  %2222 = icmp eq ptr %2220, %2221
  br i1 %2222, label %2232, label %2223

2223:                                             ; preds = %2219
  br i1 %2207, label %2226, label %2224

2224:                                             ; preds = %2223
  %2225 = load i32, ptr %2206, align 8, !tbaa !114
  br label %2226

2226:                                             ; preds = %2224, %2223
  %2227 = phi i32 [ %2225, %2224 ], [ 0, %2223 ]
  %2228 = icmp ult i32 %2203, %2227
  br i1 %2228, label %2230, label %2229

2229:                                             ; preds = %2226
  call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 738, ptr noundef nonnull @.str.9) #20
  br label %2230

2230:                                             ; preds = %2229, %2226
  %2231 = add i32 %2203, 1
  br label %2202, !llvm.loop !203

2232:                                             ; preds = %2219, %2217
  %2233 = call ptr @split_edge(ptr noundef %2218) #20
  br label %2234

2234:                                             ; preds = %2193, %2197, %2232
  %2235 = load i32, ptr %2052, align 8, !tbaa !54
  %2236 = icmp sgt i32 %2235, 0
  br i1 %2236, label %2237, label %2268

2237:                                             ; preds = %2234
  %2238 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 6
  %2239 = load ptr, ptr %2238, align 8, !tbaa !196
  %2240 = getelementptr inbounds %struct.ddg_node, ptr %2239, i64 0, i32 2
  %2241 = load ptr, ptr %2240, align 8, !tbaa !204
  %2242 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 2
  %2243 = getelementptr inbounds %struct.rtx_def, ptr %2241, i64 0, i32 1, i32 0, i32 0, i64 1
  %2244 = zext nneg i32 %2235 to i64
  br label %2245

2245:                                             ; preds = %2237, %2265
  %2246 = phi i64 [ 0, %2237 ], [ %2266, %2265 ]
  %2247 = load ptr, ptr %2242, align 8, !tbaa !56
  %2248 = getelementptr inbounds ptr, ptr %2247, i64 %2246
  %2249 = load ptr, ptr %2248, align 8, !tbaa !35
  %2250 = icmp eq ptr %2249, null
  br i1 %2250, label %2265, label %2251

2251:                                             ; preds = %2245, %2261
  %2252 = phi ptr [ %2263, %2261 ], [ %2249, %2245 ]
  %2253 = load ptr, ptr %2243, align 8, !tbaa !46
  %2254 = load ptr, ptr %2252, align 8, !tbaa !57
  %2255 = getelementptr inbounds %struct.ddg_node, ptr %2254, i64 0, i32 1
  %2256 = load ptr, ptr %2255, align 8, !tbaa !59
  %2257 = icmp eq ptr %2253, %2256
  br i1 %2257, label %2261, label %2258

2258:                                             ; preds = %2251
  %2259 = getelementptr inbounds %struct.ddg_node, ptr %2254, i64 0, i32 2
  %2260 = load ptr, ptr %2259, align 8, !tbaa !204
  call void @reorder_insns_nobb(ptr noundef %2260, ptr noundef %2256, ptr noundef %2253) #20
  br label %2261

2261:                                             ; preds = %2258, %2251
  %2262 = getelementptr inbounds %struct.ps_insn, ptr %2252, i64 0, i32 2
  %2263 = load ptr, ptr %2262, align 8, !tbaa !35
  %2264 = icmp eq ptr %2263, null
  br i1 %2264, label %2265, label %2251, !llvm.loop !205

2265:                                             ; preds = %2261, %2245
  %2266 = add nuw nsw i64 %2246, 1
  %2267 = icmp eq i64 %2266, %2244
  br i1 %2267, label %2268, label %2245, !llvm.loop !206

2268:                                             ; preds = %2265, %2234
  %2269 = load i32, ptr @flag_resched_modulo_sched, align 4, !tbaa !50
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2271, label %2276

2271:                                             ; preds = %2268
  %2272 = load ptr, ptr %461, align 8, !tbaa !207
  %2273 = getelementptr inbounds %struct.basic_block_def, ptr %2272, i64 0, i32 13
  %2274 = load i32, ptr %2273, align 8, !tbaa !208
  %2275 = or i32 %2274, 16
  store i32 %2275, ptr %2273, align 8, !tbaa !208
  br label %2276

2276:                                             ; preds = %2271, %2268
  %2277 = load ptr, ptr %461, align 8, !tbaa !207
  call void @df_set_bb_dirty(ptr noundef %2277) #20
  %2278 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 5
  %2279 = load ptr, ptr %2278, align 8, !tbaa !167
  %2280 = load i32, ptr %2052, align 8, !tbaa !54
  %2281 = getelementptr inbounds %struct.ddg, ptr %2279, i64 0, i32 1
  %2282 = load i32, ptr %2281, align 8, !tbaa !125
  %2283 = icmp sgt i32 %2282, 0
  br i1 %2283, label %2284, label %2557

2284:                                             ; preds = %2276
  %2285 = getelementptr inbounds %struct.ddg, ptr %2279, i64 0, i32 5
  br label %2286

2286:                                             ; preds = %2284, %2551
  %2287 = phi i64 [ 0, %2284 ], [ %2553, %2551 ]
  %2288 = phi i32 [ %2282, %2284 ], [ %2554, %2551 ]
  %2289 = phi ptr [ null, %2284 ], [ %2552, %2551 ]
  %2290 = load ptr, ptr %2285, align 8, !tbaa !129
  %2291 = getelementptr inbounds %struct.ddg_node, ptr %2290, i64 %2287, i32 4
  %2292 = load ptr, ptr %2291, align 8, !tbaa !35
  %2293 = icmp eq ptr %2292, null
  br i1 %2293, label %2342, label %2294

2294:                                             ; preds = %2286, %2337
  %2295 = phi ptr [ %2340, %2337 ], [ %2292, %2286 ]
  %2296 = phi i32 [ %2338, %2337 ], [ 0, %2286 ]
  %2297 = getelementptr inbounds %struct.ddg_edge, ptr %2295, i64 0, i32 2
  %2298 = load i32, ptr %2297, align 8, !tbaa !175
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2300, label %2337

2300:                                             ; preds = %2294
  %2301 = getelementptr inbounds %struct.ddg_edge, ptr %2295, i64 0, i32 1
  %2302 = load ptr, ptr %2301, align 8, !tbaa !142
  %2303 = load ptr, ptr %2295, align 8, !tbaa !135
  %2304 = icmp eq ptr %2302, %2303
  br i1 %2304, label %2337, label %2305

2305:                                             ; preds = %2300
  %2306 = getelementptr inbounds %struct.ddg_node, ptr %2302, i64 0, i32 7
  %2307 = load ptr, ptr %2306, align 8, !tbaa !46
  %2308 = getelementptr inbounds %struct.node_sched_params, ptr %2307, i64 0, i32 1
  %2309 = load i32, ptr %2308, align 4, !tbaa !171
  %2310 = getelementptr inbounds %struct.ddg_node, ptr %2303, i64 0, i32 7
  %2311 = load ptr, ptr %2310, align 8, !tbaa !46
  %2312 = getelementptr inbounds %struct.node_sched_params, ptr %2311, i64 0, i32 1
  %2313 = load i32, ptr %2312, align 4, !tbaa !171
  %2314 = sub i32 %2309, %2313
  %2315 = getelementptr inbounds %struct.ddg_edge, ptr %2295, i64 0, i32 5
  %2316 = load i32, ptr %2315, align 4, !tbaa !133
  %2317 = icmp eq i32 %2316, 1
  %2318 = select i1 %2317, i32 %2280, i32 0
  %2319 = add nsw i32 %2314, %2318
  %2320 = sdiv i32 %2319, %2280
  %2321 = getelementptr inbounds %struct.node_sched_params, ptr %2307, i64 0, i32 4
  %2322 = load i32, ptr %2321, align 4, !tbaa !188
  %2323 = getelementptr inbounds %struct.node_sched_params, ptr %2311, i64 0, i32 4
  %2324 = load i32, ptr %2323, align 4, !tbaa !188
  %2325 = icmp eq i32 %2322, %2324
  br i1 %2325, label %2326, label %2334

2326:                                             ; preds = %2305
  %2327 = getelementptr inbounds %struct.node_sched_params, ptr %2307, i64 0, i32 6
  %2328 = load i32, ptr %2327, align 4, !tbaa !197
  %2329 = getelementptr inbounds %struct.node_sched_params, ptr %2311, i64 0, i32 6
  %2330 = load i32, ptr %2329, align 4, !tbaa !197
  %2331 = icmp slt i32 %2328, %2330
  %2332 = sext i1 %2331 to i32
  %2333 = add nsw i32 %2320, %2332
  br label %2334

2334:                                             ; preds = %2326, %2305
  %2335 = phi i32 [ %2320, %2305 ], [ %2333, %2326 ]
  %2336 = call i32 @llvm.smax.i32(i32 %2296, i32 %2335)
  br label %2337

2337:                                             ; preds = %2334, %2300, %2294
  %2338 = phi i32 [ %2336, %2334 ], [ %2296, %2300 ], [ %2296, %2294 ]
  %2339 = getelementptr inbounds %struct.ddg_edge, ptr %2295, i64 0, i32 7
  %2340 = load ptr, ptr %2339, align 8, !tbaa !35
  %2341 = icmp eq ptr %2340, null
  br i1 %2341, label %2342, label %2294, !llvm.loop !209

2342:                                             ; preds = %2337, %2286
  %2343 = phi i32 [ 0, %2286 ], [ %2338, %2337 ]
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2551, label %2345

2345:                                             ; preds = %2342
  %2346 = call ptr @sbitmap_vector_alloc(i32 noundef %2343, i32 noundef %2288) #20
  call void @sbitmap_vector_zero(ptr noundef %2346, i32 noundef %2343) #20
  %2347 = getelementptr ptr, ptr %2346, i64 -1
  %2348 = load ptr, ptr %2291, align 8, !tbaa !35
  %2349 = icmp eq ptr %2348, null
  br i1 %2349, label %2426, label %2350

2350:                                             ; preds = %2345, %2422
  %2351 = phi ptr [ %2424, %2422 ], [ %2348, %2345 ]
  %2352 = getelementptr inbounds %struct.ddg_edge, ptr %2351, i64 0, i32 2
  %2353 = load i32, ptr %2352, align 8, !tbaa !175
  %2354 = icmp eq i32 %2353, 0
  br i1 %2354, label %2355, label %2422

2355:                                             ; preds = %2350
  %2356 = getelementptr inbounds %struct.ddg_edge, ptr %2351, i64 0, i32 1
  %2357 = load ptr, ptr %2356, align 8, !tbaa !142
  %2358 = load ptr, ptr %2351, align 8, !tbaa !135
  %2359 = icmp eq ptr %2357, %2358
  br i1 %2359, label %2422, label %2360

2360:                                             ; preds = %2355
  %2361 = getelementptr inbounds %struct.ddg_node, ptr %2357, i64 0, i32 7
  %2362 = load ptr, ptr %2361, align 8, !tbaa !46
  %2363 = getelementptr inbounds %struct.node_sched_params, ptr %2362, i64 0, i32 1
  %2364 = load i32, ptr %2363, align 4, !tbaa !171
  %2365 = getelementptr inbounds %struct.ddg_node, ptr %2358, i64 0, i32 7
  %2366 = load ptr, ptr %2365, align 8, !tbaa !46
  %2367 = getelementptr inbounds %struct.node_sched_params, ptr %2366, i64 0, i32 1
  %2368 = load i32, ptr %2367, align 4, !tbaa !171
  %2369 = sub i32 %2364, %2368
  %2370 = getelementptr inbounds %struct.ddg_edge, ptr %2351, i64 0, i32 5
  %2371 = load i32, ptr %2370, align 4, !tbaa !133
  %2372 = icmp eq i32 %2371, 1
  %2373 = select i1 %2372, i32 %2280, i32 0
  %2374 = add nsw i32 %2369, %2373
  %2375 = sdiv i32 %2374, %2280
  %2376 = getelementptr inbounds %struct.node_sched_params, ptr %2362, i64 0, i32 4
  %2377 = load i32, ptr %2376, align 4, !tbaa !188
  %2378 = getelementptr inbounds %struct.node_sched_params, ptr %2366, i64 0, i32 4
  %2379 = load i32, ptr %2378, align 4, !tbaa !188
  %2380 = icmp eq i32 %2377, %2379
  br i1 %2380, label %2381, label %2389

2381:                                             ; preds = %2360
  %2382 = getelementptr inbounds %struct.node_sched_params, ptr %2362, i64 0, i32 6
  %2383 = load i32, ptr %2382, align 4, !tbaa !197
  %2384 = getelementptr inbounds %struct.node_sched_params, ptr %2366, i64 0, i32 6
  %2385 = load i32, ptr %2384, align 4, !tbaa !197
  %2386 = icmp slt i32 %2383, %2385
  %2387 = sext i1 %2386 to i32
  %2388 = add nsw i32 %2375, %2387
  br label %2389

2389:                                             ; preds = %2381, %2360
  %2390 = phi i32 [ %2375, %2360 ], [ %2388, %2381 ]
  %2391 = icmp eq i32 %2390, 0
  br i1 %2391, label %2422, label %2392

2392:                                             ; preds = %2389
  %2393 = sext i32 %2390 to i64
  %2394 = getelementptr ptr, ptr %2347, i64 %2393
  %2395 = load ptr, ptr %2394, align 8, !tbaa !35
  %2396 = load i32, ptr %2357, align 8, !tbaa !170
  %2397 = load ptr, ptr %2395, align 8, !tbaa !153
  %2398 = icmp eq ptr %2397, null
  br i1 %2398, label %2413, label %2399

2399:                                             ; preds = %2392
  %2400 = lshr i32 %2396, 6
  %2401 = zext nneg i32 %2400 to i64
  %2402 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2395, i64 0, i32 3, i64 %2401
  %2403 = load i64, ptr %2402, align 8, !tbaa !157
  %2404 = and i32 %2396, 63
  %2405 = zext nneg i32 %2404 to i64
  %2406 = shl nuw i64 1, %2405
  %2407 = and i64 %2403, %2406
  %2408 = icmp eq i64 %2407, 0
  br i1 %2408, label %2409, label %2413

2409:                                             ; preds = %2399
  %2410 = getelementptr inbounds i8, ptr %2397, i64 %2401
  %2411 = load i8, ptr %2410, align 1, !tbaa !46
  %2412 = add i8 %2411, 1
  store i8 %2412, ptr %2410, align 1, !tbaa !46
  br label %2413

2413:                                             ; preds = %2409, %2399, %2392
  %2414 = and i32 %2396, 63
  %2415 = zext nneg i32 %2414 to i64
  %2416 = shl nuw i64 1, %2415
  %2417 = lshr i32 %2396, 6
  %2418 = zext nneg i32 %2417 to i64
  %2419 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2395, i64 0, i32 3, i64 %2418
  %2420 = load i64, ptr %2419, align 8, !tbaa !157
  %2421 = or i64 %2420, %2416
  store i64 %2421, ptr %2419, align 8, !tbaa !157
  br label %2422

2422:                                             ; preds = %2413, %2389, %2355, %2350
  %2423 = getelementptr inbounds %struct.ddg_edge, ptr %2351, i64 0, i32 7
  %2424 = load ptr, ptr %2423, align 8, !tbaa !35
  %2425 = icmp eq ptr %2424, null
  br i1 %2425, label %2426, label %2350, !llvm.loop !210

2426:                                             ; preds = %2422, %2345
  %2427 = getelementptr inbounds %struct.ddg_node, ptr %2290, i64 %2287, i32 7
  %2428 = load ptr, ptr %2427, align 8, !tbaa !46
  %2429 = getelementptr inbounds %struct.node_sched_params, ptr %2428, i64 0, i32 3
  store i32 %2343, ptr %2429, align 8, !tbaa !211
  %2430 = getelementptr inbounds %struct.ddg_node, ptr %2290, i64 %2287, i32 1
  %2431 = load ptr, ptr %2430, align 8, !tbaa !59
  %2432 = load i32, ptr %2431, align 8
  %2433 = and i32 %2432, 65535
  %2434 = add nsw i32 %2433, -7
  %2435 = icmp ult i32 %2434, 3
  br i1 %2435, label %2438, label %2436

2436:                                             ; preds = %2426
  %2437 = icmp eq i32 %2433, 10
  call void @llvm.assume(i1 %2437)
  br label %2438

2438:                                             ; preds = %2436, %2426
  %2439 = getelementptr inbounds %struct.rtx_def, ptr %2431, i64 1
  %2440 = load ptr, ptr %2439, align 8, !tbaa !46
  %2441 = load i32, ptr %2440, align 8
  %2442 = and i32 %2441, 65535
  %2443 = icmp eq i32 %2442, 23
  br i1 %2443, label %2446, label %2444

2444:                                             ; preds = %2438
  %2445 = call ptr @single_set_2(ptr noundef nonnull %2431, ptr noundef nonnull %2440) #20
  br label %2446

2446:                                             ; preds = %2444, %2438
  %2447 = phi ptr [ %2445, %2444 ], [ %2440, %2438 ]
  %2448 = getelementptr inbounds %struct.rtx_def, ptr %2447, i64 0, i32 1
  %2449 = load ptr, ptr %2448, align 8, !tbaa !46
  %2450 = call ptr @copy_rtx(ptr noundef %2449) #20
  %2451 = icmp sgt i32 %2343, 0
  br i1 %2451, label %2452, label %2549

2452:                                             ; preds = %2446
  %2453 = getelementptr inbounds %struct.ddg_node, ptr %2290, i64 %2287, i32 2
  %2454 = load ptr, ptr %2453, align 8, !tbaa !204
  %2455 = zext nneg i32 %2343 to i64
  br label %2456

2456:                                             ; preds = %2452, %2546
  %2457 = phi i64 [ 0, %2452 ], [ %2547, %2546 ]
  %2458 = phi ptr [ %2289, %2452 ], [ %2487, %2546 ]
  %2459 = phi ptr [ %2450, %2452 ], [ %2464, %2546 ]
  %2460 = phi ptr [ %2454, %2452 ], [ %2465, %2546 ]
  %2461 = load i32, ptr %2459, align 8
  %2462 = lshr i32 %2461, 16
  %2463 = and i32 %2462, 255
  %2464 = call ptr @gen_reg_rtx(i32 noundef %2463) #20
  %2465 = call ptr @gen_move_insn(ptr noundef %2464, ptr noundef nonnull %2459) #20
  call void @add_insn_before(ptr noundef %2465, ptr noundef %2460, ptr noundef null) #20
  %2466 = load ptr, ptr %2427, align 8, !tbaa !46
  %2467 = getelementptr inbounds %struct.node_sched_params, ptr %2466, i64 0, i32 2
  %2468 = load ptr, ptr %2467, align 8, !tbaa !212
  %2469 = icmp eq ptr %2468, null
  br i1 %2469, label %2470, label %2471

2470:                                             ; preds = %2456
  store ptr %2465, ptr %2467, align 8, !tbaa !212
  br label %2471

2471:                                             ; preds = %2470, %2456
  %2472 = getelementptr inbounds ptr, ptr %2346, i64 %2457
  %2473 = load ptr, ptr %2472, align 8, !tbaa !35
  %2474 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2473, i64 0, i32 2
  %2475 = load i32, ptr %2474, align 4, !tbaa !213
  %2476 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2473, i64 0, i32 3
  %2477 = icmp eq i32 %2475, 0
  br i1 %2477, label %2480, label %2478

2478:                                             ; preds = %2471
  %2479 = load i64, ptr %2476, align 8, !tbaa !157
  br label %2480

2480:                                             ; preds = %2478, %2471
  %2481 = phi i64 [ 0, %2471 ], [ %2479, %2478 ]
  br label %2482

2482:                                             ; preds = %2480, %2538
  %2483 = phi i32 [ %2545, %2538 ], [ 0, %2480 ]
  %2484 = phi i32 [ %2524, %2538 ], [ 0, %2480 ]
  %2485 = phi i64 [ %2544, %2538 ], [ %2481, %2480 ]
  %2486 = phi i32 [ %2526, %2538 ], [ 0, %2480 ]
  %2487 = phi ptr [ %2528, %2538 ], [ %2458, %2480 ]
  %2488 = icmp eq i64 %2485, 0
  br i1 %2488, label %2489, label %2496

2489:                                             ; preds = %2482
  %2490 = add i32 %2484, 1
  %2491 = call i32 @llvm.umax.i32(i32 %2475, i32 %2490)
  %2492 = add i32 %2484, 1
  %2493 = icmp ult i32 %2492, %2475
  br i1 %2493, label %2506, label %2521

2494:                                             ; preds = %2506
  %2495 = shl i32 %2507, 6
  br label %2496

2496:                                             ; preds = %2494, %2482
  %2497 = phi i32 [ %2483, %2482 ], [ %2495, %2494 ]
  %2498 = phi i32 [ %2484, %2482 ], [ %2507, %2494 ]
  %2499 = phi i64 [ %2485, %2482 ], [ %2510, %2494 ]
  %2500 = phi i1 [ %2488, %2482 ], [ %2511, %2494 ]
  %2501 = and i64 %2499, 1
  %2502 = icmp eq i64 %2501, 0
  br i1 %2502, label %2512, label %2521

2503:                                             ; preds = %2506
  %2504 = add i32 %2507, 1
  %2505 = icmp ult i32 %2504, %2475
  br i1 %2505, label %2506, label %2519, !llvm.loop !214

2506:                                             ; preds = %2489, %2503
  %2507 = phi i32 [ %2504, %2503 ], [ %2492, %2489 ]
  %2508 = zext i32 %2507 to i64
  %2509 = getelementptr inbounds i64, ptr %2476, i64 %2508
  %2510 = load i64, ptr %2509, align 8, !tbaa !157
  %2511 = icmp eq i64 %2510, 0
  br i1 %2511, label %2503, label %2494, !llvm.loop !214

2512:                                             ; preds = %2496, %2512
  %2513 = phi i64 [ %2516, %2512 ], [ %2499, %2496 ]
  %2514 = phi i32 [ %2515, %2512 ], [ %2497, %2496 ]
  %2515 = add i32 %2514, 1
  %2516 = lshr exact i64 %2513, 1
  %2517 = and i64 %2513, 2
  %2518 = icmp eq i64 %2517, 0
  br i1 %2518, label %2512, label %2521, !llvm.loop !215

2519:                                             ; preds = %2503
  %2520 = shl i32 %2507, 6
  br label %2521

2521:                                             ; preds = %2512, %2519, %2489, %2496
  %2522 = phi i1 [ %2500, %2496 ], [ %2488, %2489 ], [ %2511, %2519 ], [ %2500, %2512 ]
  %2523 = phi i32 [ %2497, %2496 ], [ %2483, %2489 ], [ %2520, %2519 ], [ %2515, %2512 ]
  %2524 = phi i32 [ %2498, %2496 ], [ %2491, %2489 ], [ %2491, %2519 ], [ %2498, %2512 ]
  %2525 = phi i64 [ %2499, %2496 ], [ %2485, %2489 ], [ %2510, %2519 ], [ %2516, %2512 ]
  %2526 = phi i32 [ %2497, %2496 ], [ %2486, %2489 ], [ %2486, %2519 ], [ %2515, %2512 ]
  br i1 %2522, label %2546, label %2527

2527:                                             ; preds = %2521
  %2528 = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #20
  %2529 = load ptr, ptr %2285, align 8, !tbaa !129
  %2530 = zext i32 %2526 to i64
  %2531 = getelementptr inbounds %struct.ddg_node, ptr %2529, i64 %2530, i32 1
  %2532 = load ptr, ptr %2531, align 8, !tbaa !59
  store ptr %2532, ptr %2528, align 8, !tbaa !216
  %2533 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %2528, i64 0, i32 1
  store ptr %2450, ptr %2533, align 8, !tbaa !218
  %2534 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %2528, i64 0, i32 2
  store ptr %2464, ptr %2534, align 8, !tbaa !219
  %2535 = icmp eq ptr %2487, null
  br i1 %2535, label %2538, label %2536

2536:                                             ; preds = %2527
  %2537 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %2528, i64 0, i32 3
  store ptr %2487, ptr %2537, align 8, !tbaa !220
  br label %2538

2538:                                             ; preds = %2536, %2527
  %2539 = call ptr @replace_rtx(ptr noundef %2532, ptr noundef %2450, ptr noundef %2464) #20
  %2540 = load ptr, ptr %2285, align 8, !tbaa !129
  %2541 = getelementptr inbounds %struct.ddg_node, ptr %2540, i64 %2530, i32 1
  %2542 = load ptr, ptr %2541, align 8, !tbaa !59
  %2543 = call zeroext i8 @df_insn_rescan(ptr noundef %2542) #20
  %2544 = lshr i64 %2525, 1
  %2545 = add i32 %2523, 1
  br label %2482, !llvm.loop !221

2546:                                             ; preds = %2521
  %2547 = add nuw nsw i64 %2457, 1
  %2548 = icmp eq i64 %2547, %2455
  br i1 %2548, label %2549, label %2456, !llvm.loop !222

2549:                                             ; preds = %2546, %2446
  %2550 = phi ptr [ %2289, %2446 ], [ %2487, %2546 ]
  call void @free(ptr noundef %2346)
  br label %2551

2551:                                             ; preds = %2549, %2342
  %2552 = phi ptr [ %2550, %2549 ], [ %2289, %2342 ]
  %2553 = add nuw nsw i64 %2287, 1
  %2554 = load i32, ptr %2281, align 8, !tbaa !125
  %2555 = sext i32 %2554 to i64
  %2556 = icmp slt i64 %2553, %2555
  br i1 %2556, label %2286, label %2557, !llvm.loop !223

2557:                                             ; preds = %2551, %2276
  %2558 = phi ptr [ null, %2276 ], [ %2552, %2551 ]
  %2559 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %2560 = icmp eq ptr %2559, null
  br i1 %2560, label %2603, label %2561

2561:                                             ; preds = %2557
  %2562 = load i32, ptr %546, align 8, !tbaa !125
  %2563 = icmp sgt i32 %2562, 0
  br i1 %2563, label %2564, label %2603

2564:                                             ; preds = %2561
  %2565 = getelementptr inbounds %struct.ddg, ptr %461, i64 0, i32 5
  %2566 = zext nneg i32 %2562 to i64
  br label %2567

2567:                                             ; preds = %2564, %2600
  %2568 = phi i64 [ 0, %2564 ], [ %2601, %2600 ]
  %2569 = load ptr, ptr @node_sched_params, align 8, !tbaa !35
  %2570 = getelementptr inbounds %struct.node_sched_params, ptr %2569, i64 %2568
  %2571 = getelementptr inbounds %struct.node_sched_params, ptr %2569, i64 %2568, i32 2
  %2572 = load ptr, ptr %2571, align 8, !tbaa !212
  %2573 = load ptr, ptr %2565, align 8, !tbaa !129
  %2574 = getelementptr inbounds %struct.ddg_node, ptr %2573, i64 %2568, i32 1
  %2575 = load ptr, ptr %2574, align 8, !tbaa !59
  %2576 = getelementptr inbounds %struct.rtx_def, ptr %2575, i64 0, i32 1
  %2577 = load i32, ptr %2576, align 8, !tbaa !46
  %2578 = trunc i64 %2568 to i32
  %2579 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2559, ptr noundef nonnull @.str.70, i32 noundef %2578, i32 noundef %2577)
  %2580 = load i32, ptr %2570, align 8, !tbaa !161
  %2581 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2559, ptr noundef nonnull @.str.71, i32 noundef %2580)
  %2582 = getelementptr inbounds %struct.node_sched_params, ptr %2569, i64 %2568, i32 1
  %2583 = load i32, ptr %2582, align 4, !tbaa !171
  %2584 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2559, ptr noundef nonnull @.str.72, i32 noundef %2583)
  %2585 = getelementptr inbounds %struct.node_sched_params, ptr %2569, i64 %2568, i32 3
  %2586 = load i32, ptr %2585, align 8, !tbaa !211
  %2587 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2559, ptr noundef nonnull @.str.73, i32 noundef %2586)
  %2588 = load i32, ptr %2585, align 8, !tbaa !211
  %2589 = icmp sgt i32 %2588, 0
  br i1 %2589, label %2590, label %2600

2590:                                             ; preds = %2567, %2590
  %2591 = phi i32 [ %2597, %2590 ], [ 0, %2567 ]
  %2592 = phi ptr [ %2596, %2590 ], [ %2572, %2567 ]
  %2593 = call i64 @fwrite(ptr nonnull @.str.74, i64 12, i64 1, ptr nonnull %2559)
  %2594 = call i32 @print_rtl_single(ptr noundef nonnull %2559, ptr noundef %2592) #20
  %2595 = getelementptr inbounds %struct.rtx_def, ptr %2592, i64 0, i32 1, i32 0, i32 0, i64 1
  %2596 = load ptr, ptr %2595, align 8, !tbaa !46
  %2597 = add nuw nsw i32 %2591, 1
  %2598 = load i32, ptr %2585, align 8, !tbaa !211
  %2599 = icmp slt i32 %2597, %2598
  br i1 %2599, label %2590, label %2600, !llvm.loop !224

2600:                                             ; preds = %2590, %2567
  %2601 = add nuw nsw i64 %2568, 1
  %2602 = icmp eq i64 %2601, %2566
  br i1 %2602, label %2603, label %2567, !llvm.loop !225

2603:                                             ; preds = %2600, %2561, %2557
  %2604 = getelementptr inbounds %struct.partial_schedule, ptr %2052, i64 0, i32 4
  %2605 = load i32, ptr %2604, align 4, !tbaa !166
  %2606 = load i32, ptr %2109, align 8, !tbaa !165
  %2607 = sub i32 %2605, %2606
  %2608 = load i32, ptr %2052, align 8, !tbaa !54
  %2609 = add i32 %2607, %2608
  %2610 = sdiv i32 %2609, %2608
  %2611 = add i32 %2610, -1
  call void @start_sequence() #20
  %2612 = sext i32 %2611 to i64
  %2613 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2612) #20
  %2614 = call ptr @expand_simple_binop(i32 noundef 0, i32 noundef 50, ptr noundef null, ptr noundef %2613, ptr noundef null, i32 noundef 1, i32 noundef 0) #20
  %2615 = load i32, ptr %2614, align 8
  %2616 = and i32 %2615, 65535
  %2617 = icmp eq i32 %2616, 37
  br i1 %2617, label %2619, label %2618

2618:                                             ; preds = %2603
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 723, ptr noundef nonnull @.str.9) #20
  br label %2619

2619:                                             ; preds = %2618, %2603
  %2620 = getelementptr inbounds %struct.rtx_def, ptr %2614, i64 0, i32 1
  %2621 = load i32, ptr %2620, align 8, !tbaa !46
  %2622 = load i32, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !46
  %2623 = icmp eq i32 %2621, %2622
  br i1 %2623, label %2626, label %2624

2624:                                             ; preds = %2619
  %2625 = call ptr @emit_move_insn(ptr noundef null, ptr noundef nonnull %2614) #20
  br label %2626

2626:                                             ; preds = %2624, %2619
  %2627 = icmp sgt i32 %2610, 1
  br i1 %2627, label %2628, label %2632

2628:                                             ; preds = %2626, %2628
  %2629 = phi i32 [ %2630, %2628 ], [ 0, %2626 ]
  call fastcc void @duplicate_insns_of_cycles(ptr noundef nonnull %2052, i32 noundef 0, i32 noundef %2629, i32 noundef 1)
  %2630 = add nuw nsw i32 %2629, 1
  %2631 = icmp eq i32 %2630, %2611
  br i1 %2631, label %2632, label %2628, !llvm.loop !226

2632:                                             ; preds = %2628, %2626
  %2633 = call ptr @loop_preheader_edge(ptr noundef nonnull %455) #20
  %2634 = call ptr @get_insns() #20
  %2635 = call ptr @split_edge_and_insert(ptr noundef %2633, ptr noundef %2634) #20
  call void @end_sequence() #20
  call void @start_sequence() #20
  %2636 = icmp sgt i32 %2610, 1
  br i1 %2636, label %2637, label %2641

2637:                                             ; preds = %2632, %2637
  %2638 = phi i32 [ %2639, %2637 ], [ 0, %2632 ]
  %2639 = add nuw nsw i32 %2638, 1
  call fastcc void @duplicate_insns_of_cycles(ptr noundef nonnull %2052, i32 noundef %2639, i32 noundef %2611, i32 noundef 0)
  %2640 = icmp eq i32 %2639, %2611
  br i1 %2640, label %2641, label %2637, !llvm.loop !227

2641:                                             ; preds = %2637, %2632
  %2642 = call ptr @single_exit(ptr noundef nonnull %455) #20
  %2643 = icmp eq ptr %2642, null
  br i1 %2643, label %2644, label %2645

2644:                                             ; preds = %2641
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 744, ptr noundef nonnull @.str.9) #20
  br label %2645

2645:                                             ; preds = %2641, %2644
  %2646 = call ptr @single_exit(ptr noundef nonnull %455) #20
  %2647 = call ptr @get_insns() #20
  %2648 = call ptr @split_edge_and_insert(ptr noundef %2646, ptr noundef %2647) #20
  call void @end_sequence() #20
  %2649 = icmp eq ptr %2558, null
  br i1 %2649, label %2655, label %2650

2650:                                             ; preds = %2645, %2650
  %2651 = phi ptr [ %2653, %2650 ], [ %2558, %2645 ]
  %2652 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %2651, i64 0, i32 3
  %2653 = load ptr, ptr %2652, align 8, !tbaa !220
  call void @free(ptr noundef %2651)
  %2654 = icmp eq ptr %2653, null
  br i1 %2654, label %2655, label %2650, !llvm.loop !228

2655:                                             ; preds = %2650, %2645
  call fastcc void @free_partial_schedule(ptr noundef nonnull %2052)
  %2656 = load ptr, ptr @node_sched_params, align 8, !tbaa !35
  call void @free(ptr noundef %2656)
  call void @free(ptr noundef %550)
  call void @free_ddg(ptr noundef nonnull %461) #20
  br label %2657

2657:                                             ; preds = %2078, %2081, %453, %2655
  %2658 = phi i64 [ %497, %2655 ], [ %454, %453 ], [ %497, %2081 ], [ %497, %2078 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %2659 = icmp eq ptr %456, null
  %2660 = load ptr, ptr @cfun, align 8
  %2661 = getelementptr inbounds %struct.function, ptr %2660, i64 0, i32 4
  br label %2662

2662:                                             ; preds = %2674, %2657
  %2663 = phi i32 [ %457, %2657 ], [ %2675, %2674 ]
  br i1 %2659, label %2671, label %2664

2664:                                             ; preds = %2662
  %2665 = load i32, ptr %456, align 4, !tbaa !100
  %2666 = icmp ugt i32 %2665, %2663
  br i1 %2666, label %2667, label %2671

2667:                                             ; preds = %2664
  %2668 = zext i32 %2663 to i64
  %2669 = getelementptr inbounds %struct.VEC_int_base, ptr %456, i64 0, i32 2, i64 %2668
  %2670 = load i32, ptr %2669, align 4, !tbaa !50
  br label %2671

2671:                                             ; preds = %2667, %2664, %2662
  %2672 = phi i32 [ %2670, %2667 ], [ 0, %2664 ], [ 0, %2662 ]
  %2673 = phi i1 [ false, %2667 ], [ true, %2664 ], [ true, %2662 ]
  br i1 %2673, label %2683, label %2674

2674:                                             ; preds = %2671
  %2675 = add i32 %2663, 1
  %2676 = load ptr, ptr %2661, align 8, !tbaa !76
  %2677 = getelementptr inbounds %struct.loops, ptr %2676, i64 0, i32 1
  %2678 = load ptr, ptr %2677, align 8, !tbaa !77
  %2679 = zext i32 %2672 to i64
  %2680 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %2678, i64 0, i32 2, i64 %2679
  %2681 = load ptr, ptr %2680, align 8, !tbaa !35
  %2682 = icmp eq ptr %2681, null
  br i1 %2682, label %2662, label %2685, !llvm.loop !107

2683:                                             ; preds = %2671
  br i1 %2659, label %2685, label %2684

2684:                                             ; preds = %2683
  call void @free(ptr noundef %456)
  br label %2685

2685:                                             ; preds = %2674, %2683, %2684
  %2686 = phi i32 [ %2663, %2684 ], [ %2663, %2683 ], [ %2675, %2674 ]
  %2687 = phi ptr [ null, %2684 ], [ null, %2683 ], [ %456, %2674 ]
  %2688 = phi ptr [ null, %2684 ], [ null, %2683 ], [ %2681, %2674 ]
  %2689 = icmp eq ptr %2688, null
  br i1 %2689, label %2690, label %453, !llvm.loop !229

2690:                                             ; preds = %2685, %446
  call void @free(ptr noundef %39)
  call void @haifa_sched_finish() #20
  br label %2691

2691:                                             ; preds = %15, %2690
  call void @loop_optimizer_finalize() #20
  ret void
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @cfg_layout_finalize() local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @haifa_sched_init() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare ptr @insn_file(ptr noundef) local_unnamed_addr #3

declare i32 @insn_line(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @loop_single_full_bb_p(ptr noundef %0) unnamed_addr #11 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !111
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %34
  %11 = phi i64 [ 0, %8 ], [ %35, %34 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = load ptr, ptr %9, align 8, !tbaa !108
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  call void @get_ebb_head_tail(ptr noundef %13, ptr noundef %13, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %17 = load ptr, ptr %3, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %2, align 8, !tbaa !35
  %20 = load ptr, ptr %18, align 8, !tbaa !46
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %16, %26
  %23 = phi ptr [ %28, %26 ], [ %19, %16 ]
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %31 [
    i16 13, label %26
    i16 12, label %26
    i16 7, label %26
    i16 9, label %26
  ]

26:                                               ; preds = %22, %22, %22, %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  store ptr %28, ptr %2, align 8, !tbaa !35
  %29 = load ptr, ptr %18, align 8, !tbaa !46
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %32, label %22, !llvm.loop !230

31:                                               ; preds = %22
  call void @free(ptr noundef %4)
  br label %32

32:                                               ; preds = %26, %16, %10, %31
  %33 = phi i32 [ 1, %31 ], [ 4, %10 ], [ 0, %16 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  switch i32 %33, label %40 [
    i32 0, label %34
    i32 4, label %34
  ]

34:                                               ; preds = %32, %32
  %35 = add nuw nsw i64 %11, 1
  %36 = load i32, ptr %5, align 4, !tbaa !111
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %10, label %39, !llvm.loop !231

39:                                               ; preds = %34, %1
  call void @free(ptr noundef %4)
  br label %40

40:                                               ; preds = %32, %39
  %41 = phi i8 [ 1, %39 ], [ 0, %32 ]
  ret i8 %41
}

declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_ddg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @normalize_sched_times(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !34 {
  %2 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !165
  %4 = load i32, ptr %0, align 8, !tbaa !54
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %59

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %56
  %11 = phi i64 [ 0, %6 ], [ %57, %56 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !56
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %10, %44
  %17 = phi ptr [ %54, %44 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.node_sched_params, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !171
  %23 = sub nsw i32 %22, %3
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %18, align 8, !tbaa !170
  %28 = load i32, ptr %2, align 8, !tbaa !165
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.68, i32 noundef %27, i32 noundef %22, i32 noundef %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load ptr, ptr %19, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.node_sched_params, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !171
  %34 = load i32, ptr %2, align 8, !tbaa !165
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 592, ptr noundef nonnull @.str.9) #20
  br label %37

37:                                               ; preds = %30, %36
  %38 = load ptr, ptr %19, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.node_sched_params, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !171
  %41 = load i32, ptr %8, align 4, !tbaa !166
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 593, ptr noundef nonnull @.str.9) #20
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr %19, align 8, !tbaa !46
  %46 = getelementptr inbounds %struct.node_sched_params, ptr %45, i64 0, i32 1
  store i32 %23, ptr %46, align 4, !tbaa !171
  %47 = srem i32 %23, %4
  %48 = load ptr, ptr %19, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.node_sched_params, ptr %48, i64 0, i32 4
  store i32 %47, ptr %49, align 4, !tbaa !188
  %50 = sdiv i32 %23, %4
  %51 = load ptr, ptr %19, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.node_sched_params, ptr %51, i64 0, i32 5
  store i32 %50, ptr %52, align 8, !tbaa !189
  %53 = getelementptr inbounds %struct.ps_insn, ptr %17, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %16, !llvm.loop !232

56:                                               ; preds = %44, %10
  %57 = add nuw nsw i64 %11, 1
  %58 = icmp eq i64 %57, %9
  br i1 %58, label %59, label %10, !llvm.loop !233

59:                                               ; preds = %56, %1
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rotate_partial_schedule(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = add i32 %3, -1
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = srem i32 %1, %3
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %3, i32 0
  %10 = add nsw i32 %9, %7
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %14 = icmp sgt i32 %3, 1
  %15 = sext i32 %4 to i64
  %16 = zext i32 %4 to i64
  br label %17

17:                                               ; preds = %12, %29
  %18 = phi i32 [ 0, %12 ], [ %32, %29 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !56
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br i1 %14, label %21, label %29

21:                                               ; preds = %17, %21
  %22 = phi i64 [ %24, %21 ], [ 0, %17 ]
  %23 = load ptr, ptr %13, align 8, !tbaa !56
  %24 = add nuw nsw i64 %22, 1
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %23, i64 %22
  store ptr %26, ptr %27, align 8, !tbaa !35
  %28 = icmp eq i64 %24, %16
  br i1 %28, label %29, label %21, !llvm.loop !234

29:                                               ; preds = %21, %17
  %30 = load ptr, ptr %13, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 %15
  store ptr %20, ptr %31, align 8, !tbaa !35
  %32 = add nuw nsw i32 %18, 1
  %33 = icmp eq i32 %32, %10
  br i1 %33, label %34, label %17, !llvm.loop !235

34:                                               ; preds = %29, %6
  %35 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !166
  %37 = sub nsw i32 %36, %1
  store i32 %37, ptr %35, align 4, !tbaa !166
  %38 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !165
  %40 = sub nsw i32 %39, %1
  store i32 %40, ptr %38, align 8, !tbaa !165
  br label %41

41:                                               ; preds = %2, %34
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_partial_schedule(ptr noundef %0) unnamed_addr #11 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !54
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %24
  %9 = phi i64 [ 0, %6 ], [ %27, %24 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !56
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %22, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.ps_insn, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  tail call void @free(ptr noundef %15)
  %18 = load ptr, ptr %7, align 8, !tbaa !56
  %19 = getelementptr inbounds ptr, ptr %18, i64 %9
  store ptr %17, ptr %19, align 8, !tbaa !35
  %20 = load ptr, ptr %7, align 8, !tbaa !56
  %21 = getelementptr inbounds ptr, ptr %20, i64 %9
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !186

24:                                               ; preds = %14, %8
  %25 = phi ptr [ %10, %8 ], [ %20, %14 ]
  %26 = getelementptr inbounds ptr, ptr %25, i64 %9
  store ptr null, ptr %26, align 8, !tbaa !35
  %27 = add nuw nsw i64 %9, 1
  %28 = load i32, ptr %0, align 8, !tbaa !54
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %8, label %31, !llvm.loop !187

31:                                               ; preds = %24, %3
  %32 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  tail call void @free(ptr noundef %33)
  tail call void @free(ptr noundef %0)
  br label %34

34:                                               ; preds = %1, %31
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare void @free_ddg(ptr noundef) local_unnamed_addr #3

declare void @haifa_sched_finish() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @compute_jump_reg_dependencies(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #15 !prof !34 {
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal noundef nonnull ptr @sms_print_insn(ptr nocapture noundef readonly %0, i32 %1) #9 !prof !34 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sms_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %4)
  ret ptr @sms_print_insn.tmp
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #3

declare ptr @create_ddg_all_sccs(ptr noundef) local_unnamed_addr #3

declare void @print_sccs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_ddg_all_sccs(ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare i32 @find_nodes_on_paths(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @order_nodes_in_scc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #11 !prof !34 {
  %6 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !125
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  tail call void @sbitmap_zero(ptr noundef %11) #20
  tail call void @find_predecessors(ptr noundef %11, ptr noundef %0, ptr noundef %1) #20
  tail call void @sbitmap_zero(ptr noundef %12) #20
  tail call void @find_successors(ptr noundef %12, ptr noundef %0, ptr noundef %1) #20
  tail call void @sbitmap_zero(ptr noundef %9) #20
  %13 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %9, ptr noundef %11, ptr noundef %2) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call void @sbitmap_copy(ptr noundef %8, ptr noundef %9) #20
  br label %115

16:                                               ; preds = %5
  %17 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %9, ptr noundef %12, ptr noundef %2) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @sbitmap_copy(ptr noundef %8, ptr noundef %9) #20
  br label %115

20:                                               ; preds = %16
  tail call void @sbitmap_zero(ptr noundef %8) #20
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !213
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i64, ptr %23, align 8, !tbaa !157
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i64 [ %26, %25 ], [ 0, %20 ]
  %29 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %30

30:                                               ; preds = %76, %27
  %31 = phi i32 [ 0, %27 ], [ %86, %76 ]
  %32 = phi i32 [ 0, %27 ], [ %73, %76 ]
  %33 = phi i64 [ %28, %27 ], [ %85, %76 ]
  %34 = phi i32 [ 0, %27 ], [ %75, %76 ]
  %35 = phi i32 [ -1, %27 ], [ %83, %76 ]
  %36 = phi i32 [ -1, %27 ], [ %84, %76 ]
  %37 = icmp eq i64 %33, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = add i32 %32, 1
  %40 = tail call i32 @llvm.umax.i32(i32 %22, i32 %39)
  %41 = add i32 %32, 1
  %42 = icmp ult i32 %41, %22
  br i1 %42, label %55, label %70

43:                                               ; preds = %55
  %44 = shl i32 %56, 6
  br label %45

45:                                               ; preds = %43, %30
  %46 = phi i32 [ %31, %30 ], [ %44, %43 ]
  %47 = phi i32 [ %32, %30 ], [ %56, %43 ]
  %48 = phi i64 [ %33, %30 ], [ %59, %43 ]
  %49 = phi i1 [ %37, %30 ], [ %60, %43 ]
  %50 = and i64 %48, 1
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %61, label %70

52:                                               ; preds = %55
  %53 = add i32 %56, 1
  %54 = icmp ult i32 %53, %22
  br i1 %54, label %55, label %68, !llvm.loop !214

55:                                               ; preds = %38, %52
  %56 = phi i32 [ %53, %52 ], [ %41, %38 ]
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, ptr %23, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !157
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %52, label %43, !llvm.loop !214

61:                                               ; preds = %45, %61
  %62 = phi i64 [ %65, %61 ], [ %48, %45 ]
  %63 = phi i32 [ %64, %61 ], [ %46, %45 ]
  %64 = add i32 %63, 1
  %65 = lshr exact i64 %62, 1
  %66 = and i64 %62, 2
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %61, label %70, !llvm.loop !215

68:                                               ; preds = %52
  %69 = shl i32 %56, 6
  br label %70

70:                                               ; preds = %61, %68, %38, %45
  %71 = phi i1 [ %49, %45 ], [ %37, %38 ], [ %60, %68 ], [ %49, %61 ]
  %72 = phi i32 [ %46, %45 ], [ %31, %38 ], [ %69, %68 ], [ %64, %61 ]
  %73 = phi i32 [ %47, %45 ], [ %40, %38 ], [ %40, %68 ], [ %47, %61 ]
  %74 = phi i64 [ %48, %45 ], [ %33, %38 ], [ %59, %68 ], [ %65, %61 ]
  %75 = phi i32 [ %46, %45 ], [ %34, %38 ], [ %34, %68 ], [ %64, %61 ]
  br i1 %71, label %87, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %29, align 8, !tbaa !129
  %78 = zext i32 %75 to i64
  %79 = getelementptr inbounds %struct.ddg_node, ptr %77, i64 %78, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = load i32, ptr %80, align 4, !tbaa !131
  %82 = icmp slt i32 %36, %81
  %83 = select i1 %82, i32 %75, i32 %35
  %84 = tail call i32 @llvm.smax.i32(i32 %36, i32 %81)
  %85 = lshr i64 %74, 1
  %86 = add i32 %72, 1
  br label %30, !llvm.loop !236

87:                                               ; preds = %70
  %88 = icmp sgt i32 %35, -1
  br i1 %88, label %89, label %115

89:                                               ; preds = %87
  %90 = load ptr, ptr %8, align 8, !tbaa !153
  %91 = icmp eq ptr %90, null
  br i1 %91, label %106, label %92

92:                                               ; preds = %89
  %93 = lshr i32 %35, 6
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !157
  %97 = and i32 %35, 63
  %98 = zext nneg i32 %97 to i64
  %99 = shl nuw i64 1, %98
  %100 = and i64 %96, %99
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = getelementptr inbounds i8, ptr %90, i64 %94
  %104 = load i8, ptr %103, align 1, !tbaa !46
  %105 = add i8 %104, 1
  store i8 %105, ptr %103, align 1, !tbaa !46
  br label %106

106:                                              ; preds = %89, %92, %102
  %107 = and i32 %35, 63
  %108 = zext nneg i32 %107 to i64
  %109 = shl nuw i64 1, %108
  %110 = lshr i32 %35, 6
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %111
  %113 = load i64, ptr %112, align 8, !tbaa !157
  %114 = or i64 %113, %109
  store i64 %114, ptr %112, align 8, !tbaa !157
  br label %115

115:                                              ; preds = %87, %106, %19, %15
  %116 = phi i32 [ 0, %15 ], [ 1, %19 ], [ 0, %106 ], [ 0, %87 ]
  tail call void @sbitmap_zero(ptr noundef %10) #20
  %117 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #20
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %419

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 2
  %121 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3
  %122 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %123 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %124 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 2
  %125 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3
  %126 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %127 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %128

128:                                              ; preds = %119, %413
  %129 = phi i32 [ %4, %119 ], [ %416, %413 ]
  %130 = phi i32 [ %116, %119 ], [ %415, %413 ]
  %131 = icmp eq i32 %130, 1
  %132 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #20
  %133 = icmp eq i32 %132, 0
  br i1 %131, label %137, label %134

134:                                              ; preds = %128
  br i1 %133, label %135, label %411

135:                                              ; preds = %134
  %136 = sext i32 %129 to i64
  br label %278

137:                                              ; preds = %128
  br i1 %133, label %138, label %276

138:                                              ; preds = %137
  %139 = sext i32 %129 to i64
  br label %140

140:                                              ; preds = %138, %268
  %141 = phi i64 [ %139, %138 ], [ %227, %268 ]
  %142 = load i32, ptr %124, align 4, !tbaa !213
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i64, ptr %125, align 8, !tbaa !157
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi i64 [ 0, %140 ], [ %145, %144 ]
  br label %148

148:                                              ; preds = %146, %218
  %149 = phi i32 [ %223, %218 ], [ 0, %146 ]
  %150 = phi i32 [ %192, %218 ], [ 0, %146 ]
  %151 = phi i64 [ %222, %218 ], [ %147, %146 ]
  %152 = phi i32 [ %194, %218 ], [ 0, %146 ]
  %153 = phi i32 [ %219, %218 ], [ 2147483647, %146 ]
  %154 = phi i32 [ %220, %218 ], [ -1, %146 ]
  %155 = phi i32 [ %221, %218 ], [ -1, %146 ]
  %156 = icmp eq i64 %151, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = add i32 %150, 1
  %159 = tail call i32 @llvm.umax.i32(i32 %142, i32 %158)
  %160 = add i32 %150, 1
  %161 = icmp ult i32 %160, %142
  br i1 %161, label %174, label %189

162:                                              ; preds = %174
  %163 = shl i32 %175, 6
  br label %164

164:                                              ; preds = %162, %148
  %165 = phi i32 [ %149, %148 ], [ %163, %162 ]
  %166 = phi i32 [ %150, %148 ], [ %175, %162 ]
  %167 = phi i64 [ %151, %148 ], [ %178, %162 ]
  %168 = phi i1 [ %156, %148 ], [ %179, %162 ]
  %169 = and i64 %167, 1
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %180, label %189

171:                                              ; preds = %174
  %172 = add i32 %175, 1
  %173 = icmp ult i32 %172, %142
  br i1 %173, label %174, label %187, !llvm.loop !214

174:                                              ; preds = %157, %171
  %175 = phi i32 [ %172, %171 ], [ %160, %157 ]
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, ptr %125, i64 %176
  %178 = load i64, ptr %177, align 8, !tbaa !157
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %171, label %162, !llvm.loop !214

180:                                              ; preds = %164, %180
  %181 = phi i64 [ %184, %180 ], [ %167, %164 ]
  %182 = phi i32 [ %183, %180 ], [ %165, %164 ]
  %183 = add i32 %182, 1
  %184 = lshr exact i64 %181, 1
  %185 = and i64 %181, 2
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %180, label %189, !llvm.loop !215

187:                                              ; preds = %171
  %188 = shl i32 %175, 6
  br label %189

189:                                              ; preds = %180, %187, %157, %164
  %190 = phi i1 [ %168, %164 ], [ %156, %157 ], [ %179, %187 ], [ %168, %180 ]
  %191 = phi i32 [ %165, %164 ], [ %149, %157 ], [ %188, %187 ], [ %183, %180 ]
  %192 = phi i32 [ %166, %164 ], [ %159, %157 ], [ %159, %187 ], [ %166, %180 ]
  %193 = phi i64 [ %167, %164 ], [ %151, %157 ], [ %178, %187 ], [ %184, %180 ]
  %194 = phi i32 [ %165, %164 ], [ %152, %157 ], [ %152, %187 ], [ %183, %180 ]
  br i1 %190, label %224, label %195

195:                                              ; preds = %189
  %196 = load ptr, ptr %126, align 8, !tbaa !129
  %197 = zext i32 %194 to i64
  %198 = getelementptr inbounds %struct.ddg_node, ptr %196, i64 %197, i32 7
  %199 = load ptr, ptr %198, align 8, !tbaa !46
  %200 = getelementptr inbounds %struct.node_order_params, ptr %199, i64 0, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !141
  %202 = icmp slt i32 %155, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.node_order_params, ptr %199, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !140
  %206 = load i32, ptr %199, align 4, !tbaa !131
  %207 = sub nsw i32 %205, %206
  br label %218

208:                                              ; preds = %195
  %209 = icmp eq i32 %155, %201
  br i1 %209, label %210, label %218

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.node_order_params, ptr %199, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !140
  %213 = load i32, ptr %199, align 4, !tbaa !131
  %214 = sub nsw i32 %212, %213
  %215 = icmp sgt i32 %153, %214
  %216 = tail call i32 @llvm.smin.i32(i32 %153, i32 %214)
  %217 = select i1 %215, i32 %194, i32 %154
  br label %218

218:                                              ; preds = %210, %208, %203
  %219 = phi i32 [ %207, %203 ], [ %153, %208 ], [ %216, %210 ]
  %220 = phi i32 [ %194, %203 ], [ %154, %208 ], [ %217, %210 ]
  %221 = phi i32 [ %201, %203 ], [ %155, %208 ], [ %155, %210 ]
  %222 = lshr i64 %193, 1
  %223 = add i32 %191, 1
  br label %148, !llvm.loop !237

224:                                              ; preds = %189
  %225 = load ptr, ptr %127, align 8, !tbaa !129
  %226 = sext i32 %154 to i64
  %227 = add i64 %141, 1
  %228 = getelementptr inbounds i32, ptr %3, i64 %141
  store i32 %154, ptr %228, align 4, !tbaa !50
  %229 = getelementptr inbounds %struct.ddg_node, ptr %225, i64 %226, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !169
  tail call void @sbitmap_a_and_b(ptr noundef %9, ptr noundef %230, ptr noundef %2) #20
  tail call void @sbitmap_difference(ptr noundef %9, ptr noundef %9, ptr noundef %1) #20
  tail call void @sbitmap_a_or_b(ptr noundef %8, ptr noundef %8, ptr noundef %9) #20
  %231 = load ptr, ptr %8, align 8, !tbaa !153
  %232 = icmp eq ptr %231, null
  br i1 %232, label %247, label %233

233:                                              ; preds = %224
  %234 = lshr i32 %154, 6
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %235
  %237 = load i64, ptr %236, align 8, !tbaa !157
  %238 = and i32 %154, 63
  %239 = zext nneg i32 %238 to i64
  %240 = shl nuw i64 1, %239
  %241 = and i64 %237, %240
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %233
  %244 = getelementptr inbounds i8, ptr %231, i64 %235
  %245 = load i8, ptr %244, align 1, !tbaa !46
  %246 = add i8 %245, -1
  store i8 %246, ptr %244, align 1, !tbaa !46
  br label %247

247:                                              ; preds = %224, %233, %243
  %248 = and i32 %154, 63
  %249 = zext nneg i32 %248 to i64
  %250 = shl nuw i64 1, %249
  %251 = xor i64 %250, -1
  %252 = lshr i32 %154, 6
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !157
  %256 = and i64 %255, %251
  store i64 %256, ptr %254, align 8, !tbaa !157
  %257 = load ptr, ptr %1, align 8, !tbaa !153
  %258 = icmp eq ptr %257, null
  br i1 %258, label %268, label %259

259:                                              ; preds = %247
  %260 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %253
  %261 = load i64, ptr %260, align 8, !tbaa !157
  %262 = and i64 %261, %250
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = getelementptr inbounds i8, ptr %257, i64 %253
  %266 = load i8, ptr %265, align 1, !tbaa !46
  %267 = add i8 %266, 1
  store i8 %267, ptr %265, align 1, !tbaa !46
  br label %268

268:                                              ; preds = %247, %259, %264
  %269 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %253
  %270 = load i64, ptr %269, align 8, !tbaa !157
  %271 = or i64 %270, %250
  store i64 %271, ptr %269, align 8, !tbaa !157
  %272 = tail call i32 @sbitmap_equal(ptr noundef nonnull %8, ptr noundef %10) #20
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %140, label %274, !llvm.loop !238

274:                                              ; preds = %268
  %275 = trunc i64 %227 to i32
  br label %276

276:                                              ; preds = %274, %137
  %277 = phi i32 [ %129, %137 ], [ %275, %274 ]
  tail call void @sbitmap_zero(ptr noundef %11) #20
  tail call void @find_predecessors(ptr noundef %11, ptr noundef %0, ptr noundef %1) #20
  br label %413

278:                                              ; preds = %135, %403
  %279 = phi i64 [ %136, %135 ], [ %362, %403 ]
  %280 = load i32, ptr %120, align 4, !tbaa !213
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %278
  %283 = load i64, ptr %121, align 8, !tbaa !157
  br label %284

284:                                              ; preds = %282, %278
  %285 = phi i64 [ 0, %278 ], [ %283, %282 ]
  br label %286

286:                                              ; preds = %284, %353
  %287 = phi i32 [ %358, %353 ], [ 0, %284 ]
  %288 = phi i32 [ %330, %353 ], [ 0, %284 ]
  %289 = phi i64 [ %357, %353 ], [ %285, %284 ]
  %290 = phi i32 [ %332, %353 ], [ 0, %284 ]
  %291 = phi i32 [ %354, %353 ], [ 2147483647, %284 ]
  %292 = phi i32 [ %355, %353 ], [ -1, %284 ]
  %293 = phi i32 [ %356, %353 ], [ -1, %284 ]
  %294 = icmp eq i64 %289, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %286
  %296 = add i32 %288, 1
  %297 = tail call i32 @llvm.umax.i32(i32 %280, i32 %296)
  %298 = add i32 %288, 1
  %299 = icmp ult i32 %298, %280
  br i1 %299, label %312, label %327

300:                                              ; preds = %312
  %301 = shl i32 %313, 6
  br label %302

302:                                              ; preds = %300, %286
  %303 = phi i32 [ %287, %286 ], [ %301, %300 ]
  %304 = phi i32 [ %288, %286 ], [ %313, %300 ]
  %305 = phi i64 [ %289, %286 ], [ %316, %300 ]
  %306 = phi i1 [ %294, %286 ], [ %317, %300 ]
  %307 = and i64 %305, 1
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %318, label %327

309:                                              ; preds = %312
  %310 = add i32 %313, 1
  %311 = icmp ult i32 %310, %280
  br i1 %311, label %312, label %325, !llvm.loop !214

312:                                              ; preds = %295, %309
  %313 = phi i32 [ %310, %309 ], [ %298, %295 ]
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i64, ptr %121, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !157
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %309, label %300, !llvm.loop !214

318:                                              ; preds = %302, %318
  %319 = phi i64 [ %322, %318 ], [ %305, %302 ]
  %320 = phi i32 [ %321, %318 ], [ %303, %302 ]
  %321 = add i32 %320, 1
  %322 = lshr exact i64 %319, 1
  %323 = and i64 %319, 2
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %318, label %327, !llvm.loop !215

325:                                              ; preds = %309
  %326 = shl i32 %313, 6
  br label %327

327:                                              ; preds = %318, %325, %295, %302
  %328 = phi i1 [ %306, %302 ], [ %294, %295 ], [ %317, %325 ], [ %306, %318 ]
  %329 = phi i32 [ %303, %302 ], [ %287, %295 ], [ %326, %325 ], [ %321, %318 ]
  %330 = phi i32 [ %304, %302 ], [ %297, %295 ], [ %297, %325 ], [ %304, %318 ]
  %331 = phi i64 [ %305, %302 ], [ %289, %295 ], [ %316, %325 ], [ %322, %318 ]
  %332 = phi i32 [ %303, %302 ], [ %290, %295 ], [ %290, %325 ], [ %321, %318 ]
  br i1 %328, label %359, label %333

333:                                              ; preds = %327
  %334 = load ptr, ptr %122, align 8, !tbaa !129
  %335 = zext i32 %332 to i64
  %336 = getelementptr inbounds %struct.ddg_node, ptr %334, i64 %335, i32 7
  %337 = load ptr, ptr %336, align 8, !tbaa !46
  %338 = load i32, ptr %337, align 4, !tbaa !131
  %339 = icmp slt i32 %293, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.node_order_params, ptr %337, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !140
  %343 = sub nsw i32 %342, %338
  br label %353

344:                                              ; preds = %333
  %345 = icmp eq i32 %293, %338
  br i1 %345, label %346, label %353

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.node_order_params, ptr %337, i64 0, i32 1
  %348 = load i32, ptr %347, align 4, !tbaa !140
  %349 = sub nsw i32 %348, %338
  %350 = icmp sgt i32 %291, %349
  %351 = tail call i32 @llvm.smin.i32(i32 %291, i32 %349)
  %352 = select i1 %350, i32 %332, i32 %292
  br label %353

353:                                              ; preds = %346, %344, %340
  %354 = phi i32 [ %343, %340 ], [ %291, %344 ], [ %351, %346 ]
  %355 = phi i32 [ %332, %340 ], [ %292, %344 ], [ %352, %346 ]
  %356 = phi i32 [ %338, %340 ], [ %293, %344 ], [ %293, %346 ]
  %357 = lshr i64 %331, 1
  %358 = add i32 %329, 1
  br label %286, !llvm.loop !239

359:                                              ; preds = %327
  %360 = load ptr, ptr %123, align 8, !tbaa !129
  %361 = sext i32 %292 to i64
  %362 = add i64 %279, 1
  %363 = getelementptr inbounds i32, ptr %3, i64 %279
  store i32 %292, ptr %363, align 4, !tbaa !50
  %364 = getelementptr inbounds %struct.ddg_node, ptr %360, i64 %361, i32 6
  %365 = load ptr, ptr %364, align 8, !tbaa !168
  tail call void @sbitmap_a_and_b(ptr noundef %9, ptr noundef %365, ptr noundef %2) #20
  tail call void @sbitmap_difference(ptr noundef %9, ptr noundef %9, ptr noundef %1) #20
  tail call void @sbitmap_a_or_b(ptr noundef %8, ptr noundef %8, ptr noundef %9) #20
  %366 = load ptr, ptr %8, align 8, !tbaa !153
  %367 = icmp eq ptr %366, null
  br i1 %367, label %382, label %368

368:                                              ; preds = %359
  %369 = lshr i32 %292, 6
  %370 = zext nneg i32 %369 to i64
  %371 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %370
  %372 = load i64, ptr %371, align 8, !tbaa !157
  %373 = and i32 %292, 63
  %374 = zext nneg i32 %373 to i64
  %375 = shl nuw i64 1, %374
  %376 = and i64 %372, %375
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %368
  %379 = getelementptr inbounds i8, ptr %366, i64 %370
  %380 = load i8, ptr %379, align 1, !tbaa !46
  %381 = add i8 %380, -1
  store i8 %381, ptr %379, align 1, !tbaa !46
  br label %382

382:                                              ; preds = %359, %368, %378
  %383 = and i32 %292, 63
  %384 = zext nneg i32 %383 to i64
  %385 = shl nuw i64 1, %384
  %386 = xor i64 %385, -1
  %387 = lshr i32 %292, 6
  %388 = zext nneg i32 %387 to i64
  %389 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !157
  %391 = and i64 %390, %386
  store i64 %391, ptr %389, align 8, !tbaa !157
  %392 = load ptr, ptr %1, align 8, !tbaa !153
  %393 = icmp eq ptr %392, null
  br i1 %393, label %403, label %394

394:                                              ; preds = %382
  %395 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %388
  %396 = load i64, ptr %395, align 8, !tbaa !157
  %397 = and i64 %396, %385
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = getelementptr inbounds i8, ptr %392, i64 %388
  %401 = load i8, ptr %400, align 1, !tbaa !46
  %402 = add i8 %401, 1
  store i8 %402, ptr %400, align 1, !tbaa !46
  br label %403

403:                                              ; preds = %382, %394, %399
  %404 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %388
  %405 = load i64, ptr %404, align 8, !tbaa !157
  %406 = or i64 %405, %385
  store i64 %406, ptr %404, align 8, !tbaa !157
  %407 = tail call i32 @sbitmap_equal(ptr noundef nonnull %8, ptr noundef %10) #20
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %278, label %409, !llvm.loop !240

409:                                              ; preds = %403
  %410 = trunc i64 %362 to i32
  br label %411

411:                                              ; preds = %409, %134
  %412 = phi i32 [ %129, %134 ], [ %410, %409 ]
  tail call void @sbitmap_zero(ptr noundef %12) #20
  tail call void @find_successors(ptr noundef %12, ptr noundef %0, ptr noundef %1) #20
  br label %413

413:                                              ; preds = %411, %276
  %414 = phi ptr [ %12, %411 ], [ %11, %276 ]
  %415 = phi i32 [ 1, %411 ], [ 0, %276 ]
  %416 = phi i32 [ %412, %411 ], [ %277, %276 ]
  tail call void @sbitmap_a_and_b(ptr noundef %8, ptr noundef %414, ptr noundef %2) #20
  %417 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #20
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %128, label %419, !llvm.loop !241

419:                                              ; preds = %413, %115
  %420 = phi i32 [ %4, %115 ], [ %416, %413 ]
  %421 = load ptr, ptr %9, align 8, !tbaa !153
  tail call void @free(ptr noundef %421)
  tail call void @free(ptr noundef %9)
  %422 = load ptr, ptr %8, align 8, !tbaa !153
  tail call void @free(ptr noundef %422)
  tail call void @free(ptr noundef %8)
  %423 = load ptr, ptr %10, align 8, !tbaa !153
  tail call void @free(ptr noundef %423)
  tail call void @free(ptr noundef %10)
  %424 = load ptr, ptr %11, align 8, !tbaa !153
  tail call void @free(ptr noundef %424)
  tail call void @free(ptr noundef %11)
  %425 = load ptr, ptr %12, align 8, !tbaa !153
  tail call void @free(ptr noundef %425)
  tail call void @free(ptr noundef %12)
  ret i32 %420
}

declare void @find_predecessors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @find_successors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @sbitmap_a_and_b_cg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @sbitmap_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @verify_partial_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !34 {
  %3 = load i32, ptr %0, align 8, !tbaa !54
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %53

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %5, %48
  %10 = phi i64 [ 0, %5 ], [ %49, %48 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !56
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %9, %44
  %16 = phi ptr [ %46, %44 ], [ %13, %9 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = load i32, ptr %17, align 8, !tbaa !170
  %19 = lshr i32 %18, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !157
  %23 = and i32 %18, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %22
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2023, ptr noundef nonnull @.str.9) #20
  br label %29

29:                                               ; preds = %15, %28
  %30 = getelementptr inbounds %struct.ddg_node, ptr %17, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.node_sched_params, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !171
  %34 = load i32, ptr %7, align 8, !tbaa !165
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2026, ptr noundef nonnull @.str.9) #20
  br label %37

37:                                               ; preds = %29, %36
  %38 = load ptr, ptr %30, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.node_sched_params, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !171
  %41 = load i32, ptr %8, align 4, !tbaa !166
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2027, ptr noundef nonnull @.str.9) #20
  br label %44

44:                                               ; preds = %37, %43
  %45 = getelementptr inbounds %struct.ps_insn, ptr %16, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %15, !llvm.loop !242

48:                                               ; preds = %44, %9
  %49 = add nuw nsw i64 %10, 1
  %50 = load i32, ptr %0, align 8, !tbaa !54
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %9, label %53, !llvm.loop !243

53:                                               ; preds = %48, %2
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc i32 @compute_split_row(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %5, %41
  %10 = phi ptr [ %45, %41 ], [ %7, %5 ]
  %11 = phi ptr [ %43, %41 ], [ null, %5 ]
  %12 = phi i32 [ %42, %41 ], [ -2147483648, %5 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !135
  %14 = load i32, ptr %13, align 8, !tbaa !170
  %15 = lshr i32 %14, 6
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !157
  %19 = and i32 %14, 63
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = and i64 %21, %18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.ddg_node, ptr %13, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !171
  %29 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !136
  %31 = add nsw i32 %30, %28
  %32 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !133
  %34 = mul nsw i32 %33, %3
  %35 = sub i32 %31, %34
  %36 = icmp eq i32 %35, %1
  %37 = icmp sgt i32 %28, %12
  %38 = select i1 %36, i1 %37, i1 false
  %39 = select i1 %38, i32 %28, i32 %12
  %40 = select i1 %38, ptr %13, ptr %11
  br label %41

41:                                               ; preds = %24, %9
  %42 = phi i32 [ %12, %9 ], [ %39, %24 ]
  %43 = phi ptr [ %11, %9 ], [ %40, %24 ]
  %44 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %9, !llvm.loop !244

47:                                               ; preds = %41, %5
  %48 = phi ptr [ null, %5 ], [ %43, %41 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ddg_node, ptr %48, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.node_sched_params, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !171
  %55 = add nsw i32 %54, 1
  br label %116

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = icmp eq ptr %58, null
  br i1 %59, label %99, label %60

60:                                               ; preds = %56, %93
  %61 = phi ptr [ %97, %93 ], [ %58, %56 ]
  %62 = phi ptr [ %95, %93 ], [ null, %56 ]
  %63 = phi i32 [ %94, %93 ], [ 2147483647, %56 ]
  %64 = getelementptr inbounds %struct.ddg_edge, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !142
  %66 = load i32, ptr %65, align 8, !tbaa !170
  %67 = lshr i32 %66, 6
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !157
  %71 = and i32 %66, 63
  %72 = zext nneg i32 %71 to i64
  %73 = shl nuw i64 1, %72
  %74 = and i64 %73, %70
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.ddg_node, ptr %65, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = getelementptr inbounds %struct.node_sched_params, ptr %78, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !171
  %81 = getelementptr inbounds %struct.ddg_edge, ptr %61, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !136
  %83 = sub i32 %80, %82
  %84 = getelementptr inbounds %struct.ddg_edge, ptr %61, i64 0, i32 5
  %85 = load i32, ptr %84, align 4, !tbaa !133
  %86 = mul nsw i32 %85, %3
  %87 = add nsw i32 %83, %86
  %88 = icmp eq i32 %87, %2
  %89 = icmp slt i32 %80, %63
  %90 = select i1 %88, i1 %89, i1 false
  %91 = select i1 %90, i32 %80, i32 %63
  %92 = select i1 %90, ptr %65, ptr %62
  br label %93

93:                                               ; preds = %76, %60
  %94 = phi i32 [ %63, %60 ], [ %91, %76 ]
  %95 = phi ptr [ %62, %60 ], [ %92, %76 ]
  %96 = getelementptr inbounds %struct.ddg_edge, ptr %61, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !35
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %60, !llvm.loop !245

99:                                               ; preds = %93, %56
  %100 = phi ptr [ null, %56 ], [ %95, %93 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.ddg_node, ptr %100, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = getelementptr inbounds %struct.node_sched_params, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !171
  br label %116

107:                                              ; preds = %99
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 38, i64 1, ptr nonnull %108)
  br label %112

112:                                              ; preds = %110, %107
  %113 = add i32 %1, 1
  %114 = add i32 %113, %2
  %115 = sdiv i32 %114, 2
  br label %116

116:                                              ; preds = %112, %102, %50
  %117 = phi i32 [ %115, %112 ], [ %106, %102 ], [ %55, %50 ]
  %118 = srem i32 %117, %3
  %119 = icmp slt i32 %118, 0
  %120 = select i1 %119, i32 %3, i32 0
  %121 = add nsw i32 %120, %118
  ret i32 %121
}

declare void @print_ddg_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @ps_has_conflicts(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 !prof !34 {
  %4 = load ptr, ptr @curr_state, align 8, !tbaa !35
  tail call void @state_reset(ptr noundef %4) #20
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %86, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  br label %11

8:                                                ; preds = %83
  %9 = add i32 %12, 1
  %10 = icmp eq i32 %12, %2
  br i1 %10, label %86, label %11, !llvm.loop !246

11:                                               ; preds = %6, %8
  %12 = phi i32 [ %1, %6 ], [ %9, %8 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !56
  %14 = load i32, ptr %0, align 8, !tbaa !54
  %15 = srem i32 %12, %14
  %16 = icmp slt i32 %15, 0
  %17 = select i1 %16, i32 %14, i32 0
  %18 = add nsw i32 %17, %15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %13, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %67, label %23

23:                                               ; preds = %11
  %24 = load i32, ptr @issue_rate, align 4, !tbaa !50
  br label %25

25:                                               ; preds = %23, %63
  %26 = phi ptr [ %65, %63 ], [ %21, %23 ]
  %27 = phi i32 [ %61, %63 ], [ %24, %23 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.ddg_node, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -11
  %34 = icmp ult i32 %33, -3
  br i1 %34, label %60, label %35

35:                                               ; preds = %25
  %36 = icmp eq i32 %27, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr @curr_state, align 8, !tbaa !35
  %39 = tail call i32 @state_dead_lock_p(ptr noundef %38) #20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load ptr, ptr @curr_state, align 8, !tbaa !35
  %43 = tail call i32 @state_transition(ptr noundef %42, ptr noundef nonnull %30) #20
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !247
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @sched_dump, align 8, !tbaa !35
  %50 = load i32, ptr @sched_verbose, align 4, !tbaa !50
  %51 = tail call i32 %46(ptr noundef %49, i32 noundef %50, ptr noundef nonnull %30, i32 noundef %27) #20
  br label %60

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65534
  %57 = icmp ne i32 %56, 24
  %58 = sext i1 %57 to i32
  %59 = add nsw i32 %27, %58
  br label %60

60:                                               ; preds = %52, %25, %48, %41, %35, %37
  %61 = phi i32 [ %27, %25 ], [ %27, %37 ], [ %27, %35 ], [ %27, %41 ], [ %51, %48 ], [ %59, %52 ]
  %62 = phi i32 [ 7, %25 ], [ 1, %37 ], [ 1, %35 ], [ 1, %41 ], [ 0, %48 ], [ 0, %52 ]
  switch i32 %62, label %83 [
    i32 0, label %63
    i32 7, label %63
  ]

63:                                               ; preds = %60, %60
  %64 = getelementptr inbounds %struct.ps_insn, ptr %26, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %25, !llvm.loop !248

67:                                               ; preds = %63, %11
  %68 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 12), align 8, !tbaa !249
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @curr_state, align 8, !tbaa !35
  %72 = tail call ptr %68() #20
  %73 = tail call i32 @state_transition(ptr noundef %71, ptr noundef %72) #20
  br label %74

74:                                               ; preds = %70, %67
  %75 = load ptr, ptr @curr_state, align 8, !tbaa !35
  %76 = tail call i32 @state_transition(ptr noundef %75, ptr noundef null) #20
  %77 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 14), align 8, !tbaa !250
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr @curr_state, align 8, !tbaa !35
  %81 = tail call ptr %77() #20
  %82 = tail call i32 @state_transition(ptr noundef %80, ptr noundef %81) #20
  br label %83

83:                                               ; preds = %60, %79, %74
  %84 = phi i32 [ 0, %74 ], [ 0, %79 ], [ %62, %60 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %8, label %86

86:                                               ; preds = %83, %8, %3
  %87 = phi i32 [ 0, %3 ], [ 1, %83 ], [ 0, %8 ]
  ret i32 %87
}

declare void @state_reset(ptr noundef) local_unnamed_addr #3

declare i32 @state_dead_lock_p(ptr noundef) local_unnamed_addr #3

declare i32 @state_transition(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare void @reorder_insns_nobb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_insn_before(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @duplicate_insns_of_cycles(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 !prof !34 {
  %5 = load i32, ptr %0, align 8, !tbaa !54
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %106

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %9 = icmp eq i32 %3, 0
  br label %10

10:                                               ; preds = %7, %101
  %11 = phi i64 [ 0, %7 ], [ %102, %101 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !56
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %101, label %16

16:                                               ; preds = %10, %97
  %17 = phi ptr [ %99, %97 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = tail call i32 @reg_mentioned_p(ptr noundef null, ptr noundef %20) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %97

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  br i1 %9, label %47, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.node_sched_params, ptr %25, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !189
  %29 = sub nsw i32 %2, %28
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 -1)
  %31 = add nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.node_sched_params, ptr %25, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !211
  %34 = tail call i32 @llvm.smin.i32(i32 %31, i32 %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %69, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.node_sched_params, ptr %25, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp sgt i32 %34, 1
  br i1 %39, label %40, label %69

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %45, %40 ], [ %38, %36 ]
  %42 = phi i32 [ %44, %40 ], [ 1, %36 ]
  %43 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = add nuw nsw i32 %42, 1
  %45 = load ptr, ptr %43, align 8, !tbaa !46
  %46 = icmp eq i32 %44, %34
  br i1 %46, label %69, label %40, !llvm.loop !251

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.node_sched_params, ptr %25, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !211
  %50 = getelementptr inbounds %struct.node_sched_params, ptr %25, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !189
  %52 = add i32 %51, 1
  %53 = sub i32 %49, %1
  %54 = add i32 %53, %52
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 %49)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.node_sched_params, ptr %25, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = icmp sgt i32 %49, 1
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %62
  %63 = phi ptr [ %67, %62 ], [ %60, %58 ]
  %64 = phi i32 [ %66, %62 ], [ 1, %58 ]
  %65 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = add nuw nsw i32 %64, 1
  %67 = load ptr, ptr %65, align 8, !tbaa !46
  %68 = icmp eq i32 %66, %49
  br i1 %68, label %69, label %62, !llvm.loop !252

69:                                               ; preds = %40, %62, %36, %58, %47, %26
  %70 = phi i32 [ 0, %26 ], [ 0, %47 ], [ %56, %58 ], [ %34, %36 ], [ %56, %62 ], [ %34, %40 ]
  %71 = phi ptr [ null, %26 ], [ null, %47 ], [ %60, %58 ], [ %38, %36 ], [ %67, %62 ], [ %45, %40 ]
  %72 = icmp sgt i32 %70, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69, %73
  %74 = phi ptr [ %82, %73 ], [ %71, %69 ]
  %75 = phi i32 [ %80, %73 ], [ 0, %69 ]
  %76 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = tail call ptr @copy_rtx(ptr noundef %77) #20
  %79 = tail call ptr @emit_insn(ptr noundef %78) #20
  %80 = add nuw nsw i32 %75, 1
  %81 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = icmp eq i32 %80, %70
  br i1 %83, label %84, label %73, !llvm.loop !253

84:                                               ; preds = %73, %69
  %85 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.node_sched_params, ptr %86, i64 0, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !189
  %89 = icmp slt i32 %88, %1
  %90 = icmp sgt i32 %88, %2
  %91 = or i1 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !204
  %95 = load ptr, ptr %19, align 8, !tbaa !59
  %96 = tail call ptr @duplicate_insn_chain(ptr noundef %94, ptr noundef %95) #20
  br label %97

97:                                               ; preds = %84, %92, %16
  %98 = getelementptr inbounds %struct.ps_insn, ptr %17, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %16, !llvm.loop !254

101:                                              ; preds = %97, %10
  %102 = add nuw nsw i64 %11, 1
  %103 = load i32, ptr %0, align 8, !tbaa !54
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %10, label %106, !llvm.loop !255

106:                                              ; preds = %101, %4
  ret void
}

declare ptr @split_edge_and_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @duplicate_insn_chain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 0}
!55 = !{!"partial_schedule", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16, !41, i64 20, !36, i64 24}
!56 = !{!55, !36, i64 8}
!57 = !{!58, !36, i64 0}
!58 = !{!"ps_insn", !36, i64 0, !41, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!59 = !{!60, !36, i64 8}
!60 = !{!"ddg_node", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!61 = !{!58, !36, i64 16}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = !{!"function_entry_count", i64 38}
!65 = !{!"modulo-sched.c;gate_handle_sms"}
!66 = !{!"branch_weights", i32 38, i32 0}
!67 = !{!68, !36, i64 8}
!68 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!69 = !{!70, !36, i64 0}
!70 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!71 = !{!70, !36, i64 8}
!72 = !{!73, !36, i64 56}
!73 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!74 = !{!73, !36, i64 16}
!75 = distinct !{!75, !52, !53}
!76 = !{!68, !36, i64 32}
!77 = !{!78, !36, i64 8}
!78 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!79 = !{!80, !41, i64 0}
!80 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!81 = !{!82, !36, i64 384}
!82 = !{!"gcc_target", !83, i64 0, !85, i64 368, !86, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !87, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !88, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !89, i64 1784, !90, i64 1792, !91, i64 1896, !92, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!83 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !84, i64 24, !84, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!84 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!85 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!86 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!87 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!88 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!89 = !{!"c", !36, i64 0}
!90 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!91 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!92 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!93 = !{!94, !41, i64 32}
!94 = !{!"common_sched_info_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!95 = !{!78, !36, i64 24}
!96 = !{!97, !41, i64 0}
!97 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !98, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !99, i64 80, !99, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!98 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!99 = !{!"", !42, i64 0, !42, i64 8}
!100 = !{!101, !41, i64 0}
!101 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!102 = !{!97, !36, i64 48}
!103 = distinct !{!103, !53}
!104 = !{!97, !36, i64 56}
!105 = !{!97, !36, i64 40}
!106 = distinct !{!106, !52, !53}
!107 = distinct !{!107, !52, !53}
!108 = !{!97, !36, i64 8}
!109 = !{!110, !36, i64 8}
!110 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!111 = !{!97, !41, i64 36}
!112 = !{!97, !36, i64 16}
!113 = !{!73, !36, i64 0}
!114 = !{!115, !41, i64 0}
!115 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!116 = !{!73, !36, i64 8}
!117 = !{!118, !42, i64 56}
!118 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!119 = !{!120, !41, i64 8}
!120 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!121 = !{!73, !42, i64 72}
!122 = !{!123, !42, i64 24}
!123 = !{!"gcov_ctr_summary", !41, i64 0, !41, i64 4, !42, i64 8, !42, i64 16, !42, i64 24}
!124 = distinct !{!124, !52, !53}
!125 = !{!126, !41, i64 8}
!126 = !{!"ddg", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !36, i64 48}
!127 = !{!126, !41, i64 12}
!128 = !{!126, !41, i64 16}
!129 = !{!126, !36, i64 24}
!130 = distinct !{!130, !52, !53}
!131 = !{!132, !41, i64 0}
!132 = !{!"node_order_params", !41, i64 0, !41, i64 4, !41, i64 8}
!133 = !{!134, !41, i64 28}
!134 = !{!"ddg_edge", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !36, i64 40, !37, i64 48}
!135 = !{!134, !36, i64 0}
!136 = !{!134, !41, i64 24}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = !{!132, !41, i64 4}
!141 = !{!132, !41, i64 8}
!142 = !{!134, !36, i64 8}
!143 = distinct !{!143, !52, !53}
!144 = distinct !{!144, !52, !53}
!145 = !{!146, !36, i64 16}
!146 = !{!"ddg_all_sccs", !36, i64 0, !41, i64 8, !36, i64 16}
!147 = !{!146, !41, i64 8}
!148 = !{!146, !36, i64 0}
!149 = !{!150, !36, i64 0}
!150 = !{!"ddg_scc", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = !{!154, !36, i64 0}
!154 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!155 = !{!150, !41, i64 20}
!156 = distinct !{!156, !52, !53}
!157 = !{!42, !42, i64 0}
!158 = distinct !{!158, !52, !53}
!159 = !{!82, !36, i64 656}
!160 = !{!126, !41, i64 20}
!161 = !{!162, !41, i64 0}
!162 = !{!"node_sched_params", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28}
!163 = distinct !{!163, !52, !53}
!164 = !{!55, !41, i64 4}
!165 = !{!55, !41, i64 16}
!166 = !{!55, !41, i64 20}
!167 = !{!55, !36, i64 24}
!168 = !{!60, !36, i64 48}
!169 = !{!60, !36, i64 40}
!170 = !{!60, !41, i64 0}
!171 = !{!162, !41, i64 4}
!172 = !{!134, !41, i64 20}
!173 = distinct !{!173, !52, !53}
!174 = distinct !{!174, !52, !53}
!175 = !{!134, !41, i64 16}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = distinct !{!178, !52, !53}
!179 = distinct !{!179, !52, !53}
!180 = !{!58, !41, i64 32}
!181 = !{!58, !41, i64 8}
!182 = distinct !{!182, !52, !53}
!183 = !{!58, !36, i64 24}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = !{!162, !41, i64 20}
!189 = !{!162, !41, i64 24}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = distinct !{!193, !52, !53}
!194 = distinct !{!194, !52, !53}
!195 = distinct !{!195, !52, !53}
!196 = !{!126, !36, i64 32}
!197 = !{!162, !41, i64 28}
!198 = distinct !{!198, !52, !53}
!199 = distinct !{!199, !52, !53}
!200 = !{!118, !41, i64 48}
!201 = !{!118, !36, i64 0}
!202 = distinct !{!202, !52, !53}
!203 = distinct !{!203, !52, !53}
!204 = !{!60, !36, i64 16}
!205 = distinct !{!205, !52, !53}
!206 = distinct !{!206, !52, !53}
!207 = !{!126, !36, i64 0}
!208 = !{!73, !41, i64 96}
!209 = distinct !{!209, !52, !53}
!210 = distinct !{!210, !52, !53}
!211 = !{!162, !41, i64 16}
!212 = !{!162, !36, i64 8}
!213 = !{!154, !41, i64 12}
!214 = distinct !{!214, !52, !53}
!215 = distinct !{!215, !52, !53}
!216 = !{!217, !36, i64 0}
!217 = !{!"undo_replace_buff_elem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!218 = !{!217, !36, i64 8}
!219 = !{!217, !36, i64 16}
!220 = !{!217, !36, i64 24}
!221 = distinct !{!221, !52, !53}
!222 = distinct !{!222, !52, !53}
!223 = distinct !{!223, !52, !53}
!224 = distinct !{!224, !52, !53}
!225 = distinct !{!225, !52, !53}
!226 = distinct !{!226, !52, !53}
!227 = distinct !{!227, !52, !53}
!228 = distinct !{!228, !52, !53}
!229 = distinct !{!229, !52, !53}
!230 = distinct !{!230, !52, !53}
!231 = distinct !{!231, !52, !53}
!232 = distinct !{!232, !52, !53}
!233 = distinct !{!233, !52, !53}
!234 = distinct !{!234, !52, !53}
!235 = distinct !{!235, !52, !53}
!236 = distinct !{!236, !52, !53}
!237 = distinct !{!237, !52, !53}
!238 = distinct !{!238, !52, !53}
!239 = distinct !{!239, !52, !53}
!240 = distinct !{!240, !52, !53}
!241 = distinct !{!241, !52, !53}
!242 = distinct !{!242, !52, !53}
!243 = distinct !{!243, !52, !53}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = distinct !{!246, !52, !53}
!247 = !{!82, !36, i64 392}
!248 = distinct !{!248, !52, !53}
!249 = !{!82, !36, i64 464}
!250 = !{!82, !36, i64 480}
!251 = distinct !{!251, !52, !53}
!252 = distinct !{!252, !52, !53}
!253 = distinct !{!253, !52, !53}
!254 = distinct !{!254, !52, !53}
!255 = distinct !{!255, !52, !53}
