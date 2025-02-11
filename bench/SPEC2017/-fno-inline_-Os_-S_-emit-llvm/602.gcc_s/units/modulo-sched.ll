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
%struct.loop_iterator = type { ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.ddg = type { ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.ddg_all_sccs = type { ptr, i32, ptr }
%struct.ddg_scc = type { ptr, ptr, i32, i32 }
%struct.node_sched_params = type { i32, i32, ptr, i32, i32, i32, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, ptr }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.ddg_edge = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.undo_replace_buff_elem = type { ptr, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.node_order_params = type { i32, i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [13 x i8] c"\0A[ROW %d ]: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@pass_sms = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_handle_sms, ptr @rest_of_handle_sms, ptr null, ptr null, i32 0, i32 144, i32 0, i32 0, i32 0, i32 1, i32 132099 } }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"sms\00", align 1
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_partial_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %26
  %8 = phi i64 [ 0, %5 ], [ %27, %26 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !12
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = trunc i64 %8 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %12) #21
  %14 = icmp eq ptr %11, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %24, %15 ], [ %11, %7 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.ddg_node, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !18
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %21) #21
  %23 = getelementptr inbounds %struct.ps_insn, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %15, !llvm.loop !20

26:                                               ; preds = %15, %7
  %27 = add nuw nsw i64 %8, 1
  %28 = load i32, ptr %0, align 8, !tbaa !6
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %7, label %31, !llvm.loop !22

31:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_sms() #3 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !23
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_modulo_sched, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_sms() #4 {
  tail call void @cfg_layout_initialize(i32 noundef 0) #22
  tail call fastcc void @sms_schedule() #21
  %1 = tail call i32 @max_reg_num() #22
  store i32 %1, ptr @max_regno, align 4, !tbaa !23
  %2 = load ptr, ptr @cfun, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = load ptr, ptr %6, align 8, !tbaa !29
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %22, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %11 ]
  %17 = phi ptr [ %16, %15 ], [ %9, %11 ]
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = icmp eq ptr %20, %8
  br i1 %21, label %22, label %15

22:                                               ; preds = %15, %11, %0
  tail call void @free_dominance_info(i32 noundef 1) #22
  tail call void @cfg_layout_finalize() #22
  ret i32 0
}

; Function Attrs: optsize
declare void @cfg_layout_initialize(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sms_schedule() unnamed_addr #4 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.loop_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  tail call void @loop_optimizer_init(i32 noundef 9) #22
  %8 = tail call fastcc i32 @number_of_loops() #21
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  tail call void @loop_optimizer_finalize() #22
  br label %348

11:                                               ; preds = %0
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 2), align 8, !tbaa !33
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !23
  store i32 1, ptr @reload_completed, align 4, !tbaa !23
  %16 = tail call i32 %12() #22
  store i32 %15, ptr @reload_completed, align 4, !tbaa !23
  br label %17

17:                                               ; preds = %11, %14
  %18 = phi i32 [ %16, %14 ], [ 1, %11 ]
  store i32 %18, ptr @issue_rate, align 4
  tail call fastcc void @setup_sched_infos() #21
  tail call void @haifa_sched_init() #22
  %19 = tail call fastcc i32 @number_of_loops() #21
  %20 = zext i32 %19 to i64
  %21 = tail call ptr @xcalloc(i64 noundef %20, i64 noundef 8) #22
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr nonnull %22)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %27 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr %26)
  br label %28

28:                                               ; preds = %24, %17
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %29 = load ptr, ptr %3, align 8, !tbaa !13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %150, label %31

31:                                               ; preds = %28, %145
  %32 = phi ptr [ %148, %145 ], [ %29, %28 ]
  %33 = phi ptr [ %147, %145 ], [ null, %28 ]
  %34 = phi i64 [ %146, %145 ], [ 0, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %35 = call zeroext i8 @dbg_cnt(i32 noundef 34) #22
  %36 = icmp eq i8 %35, 0
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %38 = icmp eq ptr %37, null
  br i1 %36, label %39, label %42

39:                                               ; preds = %31
  br i1 %38, label %144, label %40

40:                                               ; preds = %39
  %41 = call i64 @fwrite(ptr nonnull @.str.5, i64 26, i64 1, ptr nonnull %37)
  br label %144

42:                                               ; preds = %31
  br i1 %38, label %54, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !18
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = load i32, ptr %32, align 8, !tbaa !51
  %51 = call ptr @insn_file(ptr noundef %49) #22
  %52 = call i32 @insn_line(ptr noundef %49) #22
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.6, i32 noundef %50, ptr noundef %51, i32 noundef %52) #21
  br label %54

54:                                               ; preds = %43, %42
  %55 = call fastcc zeroext i8 @loop_canon_p(ptr noundef nonnull %32) #21, !range !52
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %145, label %57

57:                                               ; preds = %54
  %58 = call fastcc zeroext i8 @loop_single_full_bb_p(ptr noundef nonnull %32) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %145, label %63

63:                                               ; preds = %60
  %64 = call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr nonnull %61)
  br label %145

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  call void @get_ebb_head_tail(ptr noundef %67, ptr noundef %67, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %68 = call ptr @loop_latch_edge(ptr noundef nonnull %32) #22
  %69 = call ptr @single_exit(ptr noundef nonnull %32) #22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 971, ptr noundef nonnull @.str.9) #22
  br label %72

72:                                               ; preds = %65, %71
  %73 = call ptr @single_exit(ptr noundef nonnull %32) #22
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 9
  %75 = load i64, ptr %74, align 8, !tbaa !53
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.edge_def, ptr %68, i64 0, i32 9
  %79 = load i64, ptr %78, align 8, !tbaa !53
  %80 = call ptr @single_exit(ptr noundef nonnull %32) #22
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 9
  %82 = load i64, ptr %81, align 8, !tbaa !53
  %83 = sdiv i64 %79, %82
  br label %84

84:                                               ; preds = %77, %72
  %85 = phi i64 [ %83, %77 ], [ %34, %72 ]
  %86 = getelementptr inbounds %struct.edge_def, ptr %68, i64 0, i32 9
  %87 = load i64, ptr %86, align 8, !tbaa !53
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %139, label %89

89:                                               ; preds = %84
  %90 = call ptr @single_exit(ptr noundef nonnull %32) #22
  %91 = getelementptr inbounds %struct.edge_def, ptr %90, i64 0, i32 9
  %92 = load i64, ptr %91, align 8, !tbaa !53
  %93 = load ptr, ptr @compiler_params, align 8, !tbaa !13
  %94 = getelementptr inbounds %struct.param_info, ptr %93, i64 41, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !55
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %92, %96
  %98 = icmp slt i64 %87, %97
  br i1 %98, label %99, label %139

99:                                               ; preds = %89
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %101 = icmp eq ptr %100, null
  br i1 %101, label %145, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %5, align 8, !tbaa !13
  %104 = call ptr @insn_file(ptr noundef %103) #22
  %105 = load ptr, ptr %5, align 8, !tbaa !13
  %106 = call i32 @insn_line(ptr noundef %105) #22
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.10, ptr noundef %104, i32 noundef %106) #21
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %109 = call i64 @fwrite(ptr nonnull @.str.11, i64 19, i64 1, ptr %108)
  %110 = load ptr, ptr @profile_info, align 8, !tbaa !13
  %111 = icmp ne ptr %110, null
  %112 = load i32, ptr @flag_branch_probabilities, align 4
  %113 = icmp ne i32 %112, 0
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %145

115:                                              ; preds = %102
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %117 = call i64 @fwrite(ptr nonnull @.str.12, i64 15, i64 1, ptr %116)
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 8
  %120 = load i64, ptr %119, align 8, !tbaa !57
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.13, i64 noundef %120) #21
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %123 = call i32 @fputc(i32 10, ptr %122)
  %124 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %125 = call i64 @fwrite(ptr nonnull @.str.15, i64 15, i64 1, ptr %124)
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.13, i64 noundef %85) #21
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %129 = call i32 @fputc(i32 10, ptr %128)
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %131 = call i64 @fwrite(ptr nonnull @.str.16, i64 20, i64 1, ptr %130)
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %133 = load ptr, ptr @profile_info, align 8, !tbaa !13
  %134 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %133, i64 0, i32 4
  %135 = load i64, ptr %134, align 8, !tbaa !58
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.13, i64 noundef %135) #21
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %138 = call i32 @fputc(i32 10, ptr %137)
  br label %145

139:                                              ; preds = %89, %84
  %140 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = call i64 @fwrite(ptr nonnull @.str.17, i64 31, i64 1, ptr nonnull %140)
  br label %145

144:                                              ; preds = %39, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %150

145:                                              ; preds = %54, %63, %60, %102, %115, %99, %142, %139
  %146 = phi i64 [ %85, %139 ], [ %85, %142 ], [ %85, %99 ], [ %85, %115 ], [ %85, %102 ], [ %34, %60 ], [ %34, %63 ], [ %34, %54 ]
  %147 = phi ptr [ %67, %139 ], [ %67, %142 ], [ %67, %99 ], [ %67, %115 ], [ %67, %102 ], [ %33, %60 ], [ %33, %63 ], [ %33, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %148 = load ptr, ptr %3, align 8, !tbaa !13
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %31, !llvm.loop !60

150:                                              ; preds = %145, %28, %144
  %151 = phi i64 [ %34, %144 ], [ 0, %28 ], [ %146, %145 ]
  %152 = phi ptr [ %33, %144 ], [ null, %28 ], [ %147, %145 ]
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %154 = icmp eq ptr %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = call i64 @fwrite(ptr nonnull @.str.24, i64 26, i64 1, ptr nonnull %153)
  %157 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %158 = call i64 @fwrite(ptr nonnull @.str.25, i64 27, i64 1, ptr %157)
  br label %159

159:                                              ; preds = %155, %150
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %160 = load ptr, ptr %3, align 8, !tbaa !13
  %161 = icmp eq ptr %160, null
  br i1 %161, label %347, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %152, i64 0, i32 8
  br label %164

164:                                              ; preds = %162, %343
  %165 = phi ptr [ %160, %162 ], [ %345, %343 ]
  %166 = phi i64 [ %151, %162 ], [ %344, %343 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %167 = load i32, ptr %165, align 8, !tbaa !51
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %21, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !13
  %171 = icmp eq ptr %170, null
  br i1 %171, label %343, label %172

172:                                              ; preds = %164
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %174 = icmp eq ptr %173, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.loop, ptr %165, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !45
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 7
  %179 = load ptr, ptr %178, align 8, !tbaa !18
  %180 = getelementptr inbounds %struct.rtl_bb_info, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !49
  %182 = call ptr @insn_file(ptr noundef %181) #22
  %183 = call i32 @insn_line(ptr noundef %181) #22
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %173, ptr noundef nonnull @.str.6, i32 noundef %167, ptr noundef %182, i32 noundef %183) #21
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !13
  call void @print_ddg(ptr noundef %185, ptr noundef nonnull %170) #22
  br label %186

186:                                              ; preds = %175, %172
  %187 = getelementptr inbounds %struct.loop, ptr %165, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !45
  call void @get_ebb_head_tail(ptr noundef %188, ptr noundef %188, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %189 = call ptr @loop_latch_edge(ptr noundef nonnull %165) #22
  %190 = call ptr @single_exit(ptr noundef nonnull %165) #22
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1095, ptr noundef nonnull @.str.9) #22
  br label %193

193:                                              ; preds = %186, %192
  %194 = call ptr @single_exit(ptr noundef nonnull %165) #22
  %195 = getelementptr inbounds %struct.edge_def, ptr %194, i64 0, i32 9
  %196 = load i64, ptr %195, align 8, !tbaa !53
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.edge_def, ptr %189, i64 0, i32 9
  %200 = load i64, ptr %199, align 8, !tbaa !53
  %201 = call ptr @single_exit(ptr noundef nonnull %165) #22
  %202 = getelementptr inbounds %struct.edge_def, ptr %201, i64 0, i32 9
  %203 = load i64, ptr %202, align 8, !tbaa !53
  %204 = sdiv i64 %200, %203
  br label %205

205:                                              ; preds = %198, %193
  %206 = phi i64 [ %204, %198 ], [ %166, %193 ]
  %207 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %208 = icmp eq ptr %207, null
  br i1 %208, label %254, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %7, align 8, !tbaa !13
  %211 = call ptr @insn_file(ptr noundef %210) #22
  %212 = load ptr, ptr %7, align 8, !tbaa !13
  %213 = call i32 @insn_line(ptr noundef %212) #22
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %207, ptr noundef nonnull @.str.10, ptr noundef %211, i32 noundef %213) #21
  %215 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %216 = call i64 @fwrite(ptr nonnull @.str.11, i64 19, i64 1, ptr %215)
  %217 = load ptr, ptr @profile_info, align 8, !tbaa !13
  %218 = icmp ne ptr %217, null
  %219 = load i32, ptr @flag_branch_probabilities, align 4
  %220 = icmp ne i32 %219, 0
  %221 = select i1 %218, i1 %220, i1 false
  br i1 %221, label %222, label %239

222:                                              ; preds = %209
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %224 = call i64 @fwrite(ptr nonnull @.str.12, i64 15, i64 1, ptr %223)
  %225 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %226 = load i64, ptr %163, align 8, !tbaa !57
  %227 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef nonnull @.str.13, i64 noundef %226) #21
  %228 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %229 = call i32 @fputc(i32 10, ptr %228)
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %231 = call i64 @fwrite(ptr nonnull @.str.16, i64 20, i64 1, ptr %230)
  %232 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %233 = load ptr, ptr @profile_info, align 8, !tbaa !13
  %234 = getelementptr inbounds %struct.gcov_ctr_summary, ptr %233, i64 0, i32 4
  %235 = load i64, ptr %234, align 8, !tbaa !58
  %236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.13, i64 noundef %235) #21
  %237 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %238 = call i32 @fputc(i32 10, ptr %237)
  br label %239

239:                                              ; preds = %222, %209
  %240 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %241 = call i64 @fwrite(ptr nonnull @.str.26, i64 11, i64 1, ptr %240)
  %242 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %243 = getelementptr inbounds %struct.ddg, ptr %170, i64 0, i32 1
  %244 = load i32, ptr %243, align 8, !tbaa !61
  %245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.27, i32 noundef %244) #21
  %246 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %247 = getelementptr inbounds %struct.ddg, ptr %170, i64 0, i32 2
  %248 = load i32, ptr %247, align 4, !tbaa !63
  %249 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.28, i32 noundef %248) #21
  %250 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %251 = getelementptr inbounds %struct.ddg, ptr %170, i64 0, i32 3
  %252 = load i32, ptr %251, align 8, !tbaa !64
  %253 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef nonnull @.str.29, i32 noundef %252) #21
  br label %254

254:                                              ; preds = %239, %205
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1133, ptr noundef nonnull @.str.9) #22
  %255 = getelementptr inbounds %struct.ddg, ptr %170, i64 0, i32 1
  %256 = load i32, ptr %255, align 8, !tbaa !61
  %257 = sext i32 %256 to i64
  %258 = shl nsw i64 %257, 2
  %259 = call ptr @xmalloc(i64 noundef %258) #22
  %260 = call fastcc i32 @sms_order_nodes(ptr noundef nonnull %170, ptr noundef %259, ptr noundef nonnull %1) #21
  %261 = call fastcc i32 @res_MII(ptr noundef nonnull %170) #21
  %262 = icmp sgt i32 %261, %260
  br i1 %262, label %263, label %265

263:                                              ; preds = %254
  %264 = call fastcc i32 @res_MII(ptr noundef nonnull %170) #21
  br label %265

265:                                              ; preds = %254, %263
  %266 = phi i32 [ %264, %263 ], [ %260, %254 ]
  %267 = load i32, ptr %1, align 4
  %268 = shl nsw i32 %266, 1
  %269 = call i32 @llvm.smax.i32(i32 %267, i32 %268)
  %270 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %271 = icmp eq ptr %270, null
  br i1 %271, label %274, label %272

272:                                              ; preds = %265
  %273 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %270, ptr noundef nonnull @.str.31, i32 noundef %260, i32 noundef %266, i32 noundef %269) #21
  br label %274

274:                                              ; preds = %272, %265
  call fastcc void @set_node_sched_params(ptr noundef nonnull %170) #21
  %275 = call fastcc ptr @sms_schedule_by_order(ptr noundef nonnull %170, i32 noundef %266, i32 noundef %269, ptr noundef %259) #21
  %276 = icmp eq ptr %275, null
  br i1 %276, label %293, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.partial_schedule, ptr %275, i64 0, i32 4
  %279 = load i32, ptr %278, align 4, !tbaa !65
  %280 = getelementptr inbounds %struct.partial_schedule, ptr %275, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !66
  %282 = sub i32 %279, %281
  %283 = load i32, ptr %275, align 8, !tbaa !6
  %284 = add i32 %282, %283
  %285 = sdiv i32 %284, %283
  switch i32 %285, label %287 [
    i32 0, label %286
    i32 1, label %293
  ]

286:                                              ; preds = %277
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1162, ptr noundef nonnull @.str.9) #22
  br label %293

287:                                              ; preds = %277
  %288 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !23
  %289 = icmp eq i32 %288, 0
  %290 = zext i32 %285 to i64
  %291 = icmp sgt i64 %206, %290
  %292 = select i1 %289, i1 true, i1 %291
  br i1 %292, label %309, label %293

293:                                              ; preds = %277, %274, %286, %287
  %294 = phi i32 [ %285, %287 ], [ 0, %286 ], [ 0, %274 ], [ %285, %277 ]
  %295 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %296 = icmp eq ptr %295, null
  br i1 %296, label %343, label %297

297:                                              ; preds = %293
  %298 = call i64 @fwrite(ptr nonnull @.str.32, i64 15, i64 1, ptr nonnull %295)
  %299 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %300 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %299, ptr noundef nonnull @.str.33, i32 noundef %294) #21
  %301 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %302 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef nonnull @.str.13, i64 noundef 0) #21
  %303 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %304 = call i64 @fwrite(ptr nonnull @.str.34, i64 13, i64 1, ptr %303)
  %305 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %306 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %305, ptr noundef nonnull @.str.13, i64 noundef %206) #21
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %308 = call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %307)
  br label %343

309:                                              ; preds = %287
  %310 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %311 = icmp eq ptr %310, null
  br i1 %311, label %322, label %312

312:                                              ; preds = %309
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %310, ptr noundef nonnull @.str.36, i32 noundef %283, i32 noundef %285) #21
  %314 = load ptr, ptr @dump_file, align 8, !tbaa !13
  call void @print_partial_schedule(ptr noundef nonnull %275, ptr noundef %314) #21
  %315 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %316 = getelementptr inbounds %struct.ddg, ptr %170, i64 0, i32 6
  %317 = load ptr, ptr %316, align 8, !tbaa !67
  %318 = load i32, ptr %317, align 8, !tbaa !68
  %319 = load i32, ptr %280, align 8, !tbaa !66
  %320 = add nsw i32 %319, -1
  %321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef nonnull @.str.37, i32 noundef %318, i32 noundef %320) #21
  br label %322

322:                                              ; preds = %312, %309
  call fastcc void @normalize_sched_times(ptr noundef nonnull %275) #21
  %323 = load i32, ptr %280, align 8, !tbaa !66
  call fastcc void @rotate_partial_schedule(ptr noundef nonnull %275, i32 noundef %323) #21
  call fastcc void @set_columns_for_ps(ptr noundef nonnull %275) #21
  call fastcc void @canon_loop(ptr noundef nonnull %165) #21
  %324 = getelementptr inbounds %struct.ddg, ptr %170, i64 0, i32 6
  %325 = load ptr, ptr %324, align 8, !tbaa !67
  %326 = getelementptr inbounds %struct.ddg_node, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !69
  call fastcc void @permute_partial_schedule(ptr noundef nonnull %275, ptr noundef %327) #21
  %328 = load i32, ptr @flag_resched_modulo_sched, align 4, !tbaa !23
  %329 = icmp eq i32 %328, 0
  %330 = load ptr, ptr %170, align 8, !tbaa !70
  br i1 %329, label %331, label %335

331:                                              ; preds = %322
  %332 = getelementptr inbounds %struct.basic_block_def, ptr %330, i64 0, i32 13
  %333 = load i32, ptr %332, align 8, !tbaa !71
  %334 = or i32 %333, 16
  store i32 %334, ptr %332, align 8, !tbaa !71
  br label %335

335:                                              ; preds = %331, %322
  call void @df_set_bb_dirty(ptr noundef %330) #22
  %336 = call fastcc ptr @generate_reg_moves(ptr noundef nonnull %275) #21
  %337 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %338 = icmp eq ptr %337, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %335
  %340 = load i32, ptr %255, align 8, !tbaa !61
  call fastcc void @print_node_sched_params(ptr noundef nonnull %337, i32 noundef %340, ptr noundef nonnull %170) #21
  br label %341

341:                                              ; preds = %339, %335
  call fastcc void @generate_prolog_epilog(ptr noundef nonnull %275, ptr noundef nonnull %165) #21
  call fastcc void @free_undo_replace_buff(ptr noundef %336) #21
  call fastcc void @free_partial_schedule(ptr noundef nonnull %275) #21
  %342 = load ptr, ptr @node_sched_params, align 8, !tbaa !13
  call void @free(ptr noundef %342) #21
  call void @free(ptr noundef %259) #21
  call void @free_ddg(ptr noundef nonnull %170) #22
  br label %343

343:                                              ; preds = %293, %297, %164, %341
  %344 = phi i64 [ %206, %341 ], [ %166, %164 ], [ %206, %297 ], [ %206, %293 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %345 = load ptr, ptr %3, align 8, !tbaa !13
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %164, !llvm.loop !72

347:                                              ; preds = %343, %159
  call void @free(ptr noundef %21) #21
  call void @haifa_sched_finish() #22
  call void @loop_optimizer_finalize() #22
  br label %348

348:                                              ; preds = %347, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @cfg_layout_finalize() local_unnamed_addr #5

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #6 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !13
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #21
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @setup_sched_infos() unnamed_addr #7 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @sms_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store i32 3, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @sms_common_sched_info, i64 0, i32 4), align 8, !tbaa !76
  store ptr @sms_common_sched_info, ptr @common_sched_info, align 8, !tbaa !13
  store ptr @sms_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !13
  store ptr @sms_sched_info, ptr @current_sched_info, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare void @haifa_sched_init() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !78
  %4 = load ptr, ptr @cfun, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %1, align 8, !tbaa !13
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #21
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #21
  store ptr %11, ptr %0, align 8, !tbaa !80
  %12 = load ptr, ptr @cfun, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !81
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !80
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #21
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !84

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @insn_file(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @insn_line(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @loop_canon_p(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %64, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 30, i64 1, ptr nonnull %9)
  br label %64

13:                                               ; preds = %5
  %14 = tail call ptr @single_exit(ptr noundef nonnull %0) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 20, i64 1, ptr nonnull %17)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %28 = tail call ptr @insn_file(ptr noundef %25) #22
  %29 = tail call i32 @insn_line(ptr noundef %25) #22
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.10, ptr noundef %28, i32 noundef %29) #21
  br label %64

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !85
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  %39 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %38) #21
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %43) #21
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %64, label %46

46:                                               ; preds = %41, %35, %31
  %47 = tail call fastcc zeroext i8 @loop_single_full_bb_p(ptr noundef nonnull %0) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !18
  %57 = getelementptr inbounds %struct.rtl_bb_info, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 19, i64 1, ptr nonnull %50)
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %61 = tail call ptr @insn_file(ptr noundef %58) #22
  %62 = tail call i32 @insn_line(ptr noundef %58) #22
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.10, ptr noundef %61, i32 noundef %62) #21
  br label %64

64:                                               ; preds = %41, %46, %49, %52, %16, %19, %8, %11
  %65 = phi i8 [ 0, %11 ], [ 0, %8 ], [ 0, %19 ], [ 0, %16 ], [ 0, %52 ], [ 0, %49 ], [ 1, %46 ], [ 1, %41 ]
  ret i8 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @loop_single_full_bb_p(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #22
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !85
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %31
  %11 = phi i64 [ 0, %8 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %12 = getelementptr inbounds ptr, ptr %4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = load ptr, ptr %9, align 8, !tbaa !45
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  call void @get_ebb_head_tail(ptr noundef %13, ptr noundef %13, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %17 = load ptr, ptr %3, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %2, align 8, !tbaa !13
  %20 = load ptr, ptr %18, align 8, !tbaa !18
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16, %26
  %23 = phi ptr [ %28, %26 ], [ %19, %16 ]
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %30 [
    i16 13, label %26
    i16 12, label %26
    i16 7, label %26
    i16 9, label %26
  ]

26:                                               ; preds = %22, %22, %22, %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  store ptr %28, ptr %2, align 8, !tbaa !13
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %31, label %22, !llvm.loop !89

30:                                               ; preds = %22
  call void @free(ptr noundef %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %37

31:                                               ; preds = %26, %16, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %32 = add nuw nsw i64 %11, 1
  %33 = load i32, ptr %5, align 4, !tbaa !85
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %10, label %36, !llvm.loop !90

36:                                               ; preds = %31, %1
  call void @free(ptr noundef %4) #21
  br label %37

37:                                               ; preds = %30, %36
  %38 = phi i8 [ 0, %30 ], [ 1, %36 ]
  ret i8 %38
}

; Function Attrs: optsize
declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !78
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !80
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #21, !range !91
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !78
  %13 = load i32, ptr %3, align 4, !tbaa !23
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #21
  store ptr %14, ptr %1, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !92

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #21
  store ptr null, ptr %1, align 8, !tbaa !13
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @print_ddg(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sms_order_nodes(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = tail call ptr @create_ddg_all_sccs(ptr noundef %0) #22
  %5 = tail call fastcc ptr @calculate_order_params(ptr noundef %0, ptr noundef %2) #21
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @print_sccs(ptr noundef nonnull %6, ptr noundef %4, ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %3
  tail call fastcc void @order_nodes_of_sccs(ptr noundef %4, ptr noundef %1) #21
  %10 = getelementptr inbounds %struct.ddg_all_sccs, ptr %4, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !tbaa !95
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.ddg_scc, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !96
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %17, %13 ], [ 0, %9 ]
  %20 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %31, %25 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !98
  %28 = getelementptr inbounds %struct.ddg_node, ptr %27, i64 %26, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = load i32, ptr %29, align 4, !tbaa !99
  store i32 %30, ptr %28, align 8, !tbaa !18
  %31 = add nuw nsw i64 %26, 1
  %32 = load i32, ptr %20, align 8, !tbaa !61
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %25, label %35, !llvm.loop !101

35:                                               ; preds = %25, %18
  tail call void @free(ptr noundef %5) #21
  tail call void @free_ddg_all_sccs(ptr noundef %4) #22
  %36 = load i32, ptr %20, align 8, !tbaa !61
  tail call fastcc void @check_nodes_order(ptr noundef %1, i32 noundef %36) #21
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @res_MII(ptr noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 36), align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 %2(ptr noundef %0) #22
  br label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !103
  %11 = sub nsw i32 %8, %10
  %12 = load i32, ptr @issue_rate, align 4, !tbaa !23
  %13 = sdiv i32 %11, %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %5, %4 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_node_sched_params(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 32) #22
  store ptr %5, ptr @node_sched_params, align 8, !tbaa !13
  %6 = load i32, ptr %2, align 8, !tbaa !61
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %16, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.ddg_node, ptr %12, i64 %11, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.node_sched_params, ptr %5, i64 %11
  store i32 %14, ptr %15, align 8, !tbaa !104
  store ptr %15, ptr %13, align 8, !tbaa !18
  %16 = add nuw nsw i64 %11, 1
  %17 = load i32, ptr %2, align 8, !tbaa !61
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %10, label %20, !llvm.loop !106

20:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sms_schedule_by_order(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  store i32 0, ptr %5, align 4, !tbaa !23
  %9 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %10) #22
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %10) #22
  %13 = tail call ptr @sbitmap_alloc(i32 noundef %10) #22
  %14 = tail call ptr @sbitmap_alloc(i32 noundef %10) #22
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 40, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !55
  %18 = tail call fastcc ptr @create_partial_schedule(i32 noundef %1, ptr noundef %0, i32 noundef %17) #21
  tail call void @sbitmap_ones(ptr noundef %14) #22
  tail call void @sbitmap_zero(ptr noundef %11) #22
  %19 = icmp slt i32 %1, %2
  br i1 %19, label %20, label %159

20:                                               ; preds = %4
  %21 = icmp sgt i32 %10, 0
  %22 = getelementptr inbounds %struct.partial_schedule, ptr %18, i64 0, i32 5
  %23 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %24

24:                                               ; preds = %20, %157
  %25 = phi i32 [ %1, %20 ], [ %122, %157 ]
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %26, ptr noundef nonnull @.str.46, i32 noundef %25) #21
  br label %30

30:                                               ; preds = %28, %24
  tail call void @sbitmap_zero(ptr noundef %11) #22
  br i1 %21, label %31, label %154

31:                                               ; preds = %30, %149
  %32 = phi i32 [ %151, %149 ], [ %25, %30 ]
  %33 = phi i32 [ %152, %149 ], [ 0, %30 ]
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %3, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !23
  %37 = load ptr, ptr %22, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct.ddg, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = sext i32 %36 to i64
  %41 = getelementptr inbounds %struct.ddg_node, ptr %39, i64 %40
  %42 = getelementptr inbounds %struct.ddg_node, ptr %39, i64 %40, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  switch i32 %45, label %51 [
    i32 7, label %49
    i32 9, label %50
  ]

49:                                               ; preds = %31, %48
  tail call fastcc void @RESET_BIT(ptr noundef %14, i32 noundef %36) #21
  br label %149

50:                                               ; preds = %48
  tail call fastcc void @RESET_BIT(ptr noundef %14, i32 noundef %36) #21
  br label %149

51:                                               ; preds = %48
  %52 = lshr i32 %36, 6
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !108
  %56 = and i32 %36, 63
  %57 = zext nneg i32 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = and i64 %55, %58
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %149

61:                                               ; preds = %51
  %62 = call fastcc i32 @get_sched_window(ptr noundef nonnull %18, ptr noundef nonnull %3, i32 noundef %33, ptr noundef nonnull %11, i32 noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #21, !range !109
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %121

64:                                               ; preds = %61
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %23, align 8, !tbaa !98
  %69 = getelementptr inbounds %struct.ddg_node, ptr %68, i64 %40, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !16
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !18
  %73 = load i32, ptr %6, align 4, !tbaa !23
  %74 = load i32, ptr %7, align 4, !tbaa !23
  %75 = load i32, ptr %8, align 4
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %65, ptr noundef nonnull @.str.47, i32 noundef %36, i32 noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %75) #21
  br label %79

77:                                               ; preds = %64
  %78 = load i32, ptr %8, align 4
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi i32 [ %78, %77 ], [ %75, %67 ]
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, ptr %6, align 4, !tbaa !23
  %84 = load i32, ptr %7, align 4, !tbaa !23
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %95, label %92

86:                                               ; preds = %79
  %87 = icmp ne i32 %80, 0
  %88 = load i32, ptr %6, align 4, !tbaa !23
  %89 = load i32, ptr %7, align 4, !tbaa !23
  %90 = icmp sgt i32 %88, %89
  %91 = select i1 %87, i1 %90, i1 false
  br i1 %91, label %95, label %92

92:                                               ; preds = %82, %86
  %93 = phi i32 [ %84, %82 ], [ %89, %86 ]
  %94 = phi i32 [ %83, %82 ], [ %88, %86 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1783, ptr noundef nonnull @.str.9) #22
  br label %95

95:                                               ; preds = %86, %82, %92
  %96 = phi i32 [ %84, %82 ], [ %93, %92 ], [ %89, %86 ]
  %97 = phi i32 [ %83, %82 ], [ %94, %92 ], [ %88, %86 ]
  tail call fastcc void @calculate_must_precede_follow(ptr noundef nonnull %41, i32 noundef %97, i32 noundef %96, i32 noundef %80, i32 noundef %32, ptr noundef nonnull %11, ptr noundef %12, ptr noundef %13) #21
  %98 = icmp eq i32 %97, %96
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = icmp eq i32 %80, 1
  %101 = select i1 %100, ptr null, ptr %13
  %102 = sub nsw i32 %96, %80
  br label %107

103:                                              ; preds = %107
  %104 = add nsw i32 %108, %80
  %105 = icmp eq i32 %104, %96
  br i1 %105, label %106, label %107, !llvm.loop !110

106:                                              ; preds = %103, %95
  tail call fastcc void @verify_partial_schedule(ptr noundef %18, ptr noundef %11) #21
  br label %121

107:                                              ; preds = %99, %103
  %108 = phi i32 [ %97, %99 ], [ %104, %103 ]
  %109 = icmp eq i32 %108, %97
  %110 = and i1 %100, %109
  %111 = select i1 %110, ptr %12, ptr null
  %112 = select i1 %109, ptr %101, ptr null
  %113 = icmp eq i32 %108, %102
  %114 = select i1 %100, ptr %111, ptr %12
  %115 = select i1 %113, ptr %114, ptr %111
  %116 = and i1 %100, %113
  %117 = select i1 %116, ptr %13, ptr %112
  %118 = call fastcc zeroext i8 @try_scheduling_node_in_cycle(ptr noundef %18, ptr noundef %41, i32 noundef %36, i32 noundef %108, ptr noundef %11, ptr noundef nonnull %5, ptr noundef %115, ptr noundef %117) #21, !range !52
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %103, label %120

120:                                              ; preds = %107
  tail call fastcc void @verify_partial_schedule(ptr noundef %18, ptr noundef %11) #21
  br label %149

121:                                              ; preds = %61, %106
  %122 = add nsw i32 %32, 1
  %123 = icmp eq i32 %32, %2
  br i1 %123, label %154, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr %5, align 4, !tbaa !23
  %126 = icmp sgt i32 %125, 9
  br i1 %126, label %157, label %127

127:                                              ; preds = %124
  %128 = add nsw i32 %125, 1
  store i32 %128, ptr %5, align 4, !tbaa !23
  %129 = load i32, ptr %8, align 4, !tbaa !23
  %130 = icmp eq i32 %129, 1
  %131 = load i32, ptr %18, align 8, !tbaa !6
  br i1 %130, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, ptr %6, align 4, !tbaa !23
  %134 = load i32, ptr %7, align 4, !tbaa !23
  %135 = add nsw i32 %134, -1
  %136 = tail call fastcc i32 @compute_split_row(ptr noundef %11, i32 noundef %133, i32 noundef %135, i32 noundef %131, ptr noundef %41) #21
  br label %142

137:                                              ; preds = %127
  %138 = load i32, ptr %7, align 4, !tbaa !23
  %139 = add nsw i32 %138, 1
  %140 = load i32, ptr %6, align 4, !tbaa !23
  %141 = tail call fastcc i32 @compute_split_row(ptr noundef %11, i32 noundef %139, i32 noundef %140, i32 noundef %131, ptr noundef %41) #21
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i32 [ %136, %132 ], [ %141, %137 ]
  tail call fastcc void @ps_insert_empty_row(ptr noundef nonnull %18, i32 noundef %143, ptr noundef %11) #21
  %144 = add nsw i32 %33, -1
  %145 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %145, ptr noundef nonnull @.str.48, i32 noundef %128) #21
  br label %149

149:                                              ; preds = %120, %49, %50, %51, %147, %142
  %150 = phi i32 [ %144, %142 ], [ %144, %147 ], [ %33, %120 ], [ %33, %51 ], [ %33, %50 ], [ %33, %49 ]
  %151 = phi i32 [ %122, %142 ], [ %122, %147 ], [ %32, %120 ], [ %32, %51 ], [ %32, %50 ], [ %32, %49 ]
  %152 = add nsw i32 %150, 1
  %153 = icmp slt i32 %152, %10
  br i1 %153, label %31, label %154, !llvm.loop !111

154:                                              ; preds = %30, %121, %149
  %155 = phi i32 [ %151, %149 ], [ %122, %121 ], [ %25, %30 ]
  %156 = icmp slt i32 %155, %2
  br i1 %156, label %160, label %159

157:                                              ; preds = %124
  store i32 0, ptr %5, align 4, !tbaa !23
  tail call fastcc void @verify_partial_schedule(ptr noundef %18, ptr noundef %11) #21
  tail call fastcc void @reset_partial_schedule(ptr noundef %18, i32 noundef %122) #21
  tail call fastcc void @verify_partial_schedule(ptr noundef %18, ptr noundef %11) #21
  %158 = icmp slt i32 %122, %2
  br i1 %158, label %24, label %159, !llvm.loop !112

159:                                              ; preds = %157, %4, %154
  tail call fastcc void @free_partial_schedule(ptr noundef %18) #21
  br label %164

160:                                              ; preds = %154
  %161 = tail call i32 @sbitmap_equal(ptr noundef %14, ptr noundef %11) #22
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1864, ptr noundef nonnull @.str.9) #22
  br label %164

164:                                              ; preds = %163, %160, %159
  %165 = phi ptr [ null, %159 ], [ %18, %160 ], [ %18, %163 ]
  %166 = load ptr, ptr %11, align 8, !tbaa !113
  tail call void @free(ptr noundef %166) #21
  tail call void @free(ptr noundef %11) #21
  %167 = load ptr, ptr %12, align 8, !tbaa !113
  tail call void @free(ptr noundef %167) #21
  tail call void @free(ptr noundef %12) #21
  %168 = load ptr, ptr %13, align 8, !tbaa !113
  tail call void @free(ptr noundef %168) #21
  tail call void @free(ptr noundef %13) #21
  %169 = load ptr, ptr %14, align 8, !tbaa !113
  tail call void @free(ptr noundef %169) #21
  tail call void @free(ptr noundef %14) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  ret ptr %165
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @normalize_sched_times(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !66
  %4 = load i32, ptr %0, align 8, !tbaa !6
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %62
  %11 = phi i64 [ 0, %6 ], [ %63, %62 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !12
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %10, %50
  %17 = phi ptr [ %60, %50 ], [ %14, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.node_sched_params, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !115
  %23 = sub nsw i32 %22, %3
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  %26 = load i32, ptr %2, align 8, !tbaa !66
  br i1 %25, label %34, label %27

27:                                               ; preds = %16
  %28 = load i32, ptr %18, align 8, !tbaa !68
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.68, i32 noundef %28, i32 noundef %22, i32 noundef %26) #21
  %30 = load ptr, ptr %19, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.node_sched_params, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !115
  %33 = load i32, ptr %2, align 8, !tbaa !66
  br label %34

34:                                               ; preds = %27, %16
  %35 = phi i32 [ %33, %27 ], [ %26, %16 ]
  %36 = phi i32 [ %32, %27 ], [ %22, %16 ]
  %37 = phi ptr [ %30, %27 ], [ %20, %16 ]
  %38 = icmp slt i32 %36, %35
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 592, ptr noundef nonnull @.str.9) #22
  %40 = load ptr, ptr %19, align 8, !tbaa !18
  %41 = getelementptr inbounds %struct.node_sched_params, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !115
  br label %43

43:                                               ; preds = %34, %39
  %44 = phi i32 [ %36, %34 ], [ %42, %39 ]
  %45 = phi ptr [ %37, %34 ], [ %40, %39 ]
  %46 = load i32, ptr %8, align 4, !tbaa !65
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 593, ptr noundef nonnull @.str.9) #22
  %49 = load ptr, ptr %19, align 8, !tbaa !18
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi ptr [ %45, %43 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.node_sched_params, ptr %51, i64 0, i32 1
  store i32 %23, ptr %52, align 4, !tbaa !115
  %53 = srem i32 %23, %4
  %54 = load ptr, ptr %19, align 8, !tbaa !18
  %55 = getelementptr inbounds %struct.node_sched_params, ptr %54, i64 0, i32 4
  store i32 %53, ptr %55, align 4, !tbaa !116
  %56 = sdiv i32 %23, %4
  %57 = load ptr, ptr %19, align 8, !tbaa !18
  %58 = getelementptr inbounds %struct.node_sched_params, ptr %57, i64 0, i32 5
  store i32 %56, ptr %58, align 8, !tbaa !117
  %59 = getelementptr inbounds %struct.ps_insn, ptr %17, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %16, !llvm.loop !118

62:                                               ; preds = %50, %10
  %63 = add nuw nsw i64 %11, 1
  %64 = icmp eq i64 %63, %9
  br i1 %64, label %65, label %10, !llvm.loop !119

65:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rotate_partial_schedule(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !6
  %4 = add i32 %3, -1
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = srem i32 %1, %3
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %3, i32 0
  %10 = add nsw i32 %9, %7
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %14 = icmp sgt i32 %3, 1
  %15 = sext i32 %4 to i64
  %16 = zext nneg i32 %4 to i64
  br label %17

17:                                               ; preds = %12, %31
  %18 = phi i32 [ 0, %12 ], [ %34, %31 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !12
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  br i1 %14, label %21, label %31

21:                                               ; preds = %17, %21
  %22 = phi i64 [ %24, %21 ], [ 0, %17 ]
  %23 = load ptr, ptr %13, align 8, !tbaa !12
  %24 = add nuw nsw i64 %22, 1
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = getelementptr inbounds ptr, ptr %23, i64 %22
  store ptr %26, ptr %27, align 8, !tbaa !13
  %28 = icmp eq i64 %24, %16
  br i1 %28, label %29, label %21, !llvm.loop !120

29:                                               ; preds = %21
  %30 = load ptr, ptr %13, align 8, !tbaa !12
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi ptr [ %30, %29 ], [ %19, %17 ]
  %33 = getelementptr inbounds ptr, ptr %32, i64 %15
  store ptr %20, ptr %33, align 8, !tbaa !13
  %34 = add nuw nsw i32 %18, 1
  %35 = icmp eq i32 %34, %10
  br i1 %35, label %36, label %17, !llvm.loop !121

36:                                               ; preds = %31, %6
  %37 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %38 = load <2 x i32>, ptr %37, align 8, !tbaa !23
  %39 = insertelement <2 x i32> poison, i32 %1, i64 0
  %40 = shufflevector <2 x i32> %39, <2 x i32> poison, <2 x i32> zeroinitializer
  %41 = sub nsw <2 x i32> %38, %40
  store <2 x i32> %41, ptr %37, align 8, !tbaa !23
  br label %42

42:                                               ; preds = %2, %36
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_columns_for_ps(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %4, %24
  %9 = phi i64 [ 0, %4 ], [ %25, %24 ]
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %22, %13 ], [ %11, %8 ]
  %15 = phi i32 [ %16, %13 ], [ 0, %8 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.ddg_node, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.node_sched_params, ptr %19, i64 0, i32 6
  store i32 %15, ptr %20, align 4, !tbaa !122
  %21 = getelementptr inbounds %struct.ps_insn, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !123

24:                                               ; preds = %13, %8
  %25 = add nuw nsw i64 %9, 1
  %26 = icmp eq i64 %25, %7
  br i1 %26, label %27, label %8, !llvm.loop !124

27:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canon_loop(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = load ptr, ptr @cfun, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = tail call fastcc ptr @ei_start_1(ptr noundef %8) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !125
  %10 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %9, ptr %10, align 8, !tbaa.struct !126
  %11 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %9, ptr noundef nonnull %2) #21, !range !52
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %1, %27
  %14 = load ptr, ptr %2, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !127
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 8, !tbaa !128
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %22) #21
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call ptr @split_edge(ptr noundef nonnull %14) #22
  br label %27

27:                                               ; preds = %13, %19, %25
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %28 = load i32, ptr %3, align 8
  %29 = load ptr, ptr %10, align 8
  %30 = call fastcc zeroext i8 @ei_cond(i32 %28, ptr %29, ptr noundef nonnull %2) #21, !range !52
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %13, !llvm.loop !129

32:                                               ; preds = %27, %1
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = icmp eq ptr %34, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !88
  %41 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #21
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %60

43:                                               ; preds = %38, %32
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef %36) #21
  store i32 0, ptr %3, align 8, !tbaa.struct !125
  store ptr %44, ptr %10, align 8, !tbaa.struct !126
  %45 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %2) #21, !range !52
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43, %52
  %48 = load ptr, ptr %2, align 8, !tbaa !13
  %49 = load ptr, ptr %48, align 8, !tbaa !128
  %50 = load ptr, ptr %33, align 8, !tbaa !86
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  call fastcc void @ei_next(ptr noundef nonnull %3) #21
  %53 = load i32, ptr %3, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = call fastcc zeroext i8 @ei_cond(i32 %53, ptr %54, ptr noundef nonnull %2) #21, !range !52
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %47, !llvm.loop !130

57:                                               ; preds = %52, %47, %43
  %58 = load ptr, ptr %2, align 8, !tbaa !13
  %59 = tail call ptr @split_edge(ptr noundef %58) #22
  br label %60

60:                                               ; preds = %57, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @permute_partial_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %29
  %10 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !12
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %27, %25 ], [ %13, %9 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !18
  %18 = load ptr, ptr %16, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  tail call void @reorder_insns_nobb(ptr noundef %24, ptr noundef %20, ptr noundef %17) #22
  br label %25

25:                                               ; preds = %15, %22
  %26 = getelementptr inbounds %struct.ps_insn, ptr %16, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !131

29:                                               ; preds = %25, %9
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, %8
  br i1 %31, label %32, label %9, !llvm.loop !132

32:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @generate_reg_moves(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbitmap_iterator, align 8
  %4 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = load i32, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.ddg, ptr %5, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %210

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ddg, ptr %5, i64 0, i32 5
  br label %12

12:                                               ; preds = %10, %204
  %13 = phi i32 [ %8, %10 ], [ %205, %204 ]
  %14 = phi i64 [ 0, %10 ], [ %207, %204 ]
  %15 = phi ptr [ null, %10 ], [ %206, %204 ]
  %16 = load ptr, ptr %11, align 8, !tbaa !98
  %17 = getelementptr inbounds %struct.ddg_node, ptr %16, i64 %14, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %204, label %20

20:                                               ; preds = %12, %63
  %21 = phi ptr [ %66, %63 ], [ %18, %12 ]
  %22 = phi i32 [ %64, %63 ], [ 0, %12 ]
  %23 = getelementptr inbounds %struct.ddg_edge, ptr %21, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !133
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ddg_edge, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !135
  %29 = load ptr, ptr %21, align 8, !tbaa !136
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %63, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ddg_node, ptr %28, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.node_sched_params, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !115
  %36 = getelementptr inbounds %struct.ddg_node, ptr %29, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = getelementptr inbounds %struct.node_sched_params, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !115
  %40 = sub i32 %35, %39
  %41 = getelementptr inbounds %struct.ddg_edge, ptr %21, i64 0, i32 5
  %42 = load i32, ptr %41, align 4, !tbaa !137
  %43 = icmp eq i32 %42, 1
  %44 = select i1 %43, i32 %6, i32 0
  %45 = add nsw i32 %40, %44
  %46 = sdiv i32 %45, %6
  %47 = getelementptr inbounds %struct.node_sched_params, ptr %33, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !116
  %49 = getelementptr inbounds %struct.node_sched_params, ptr %37, i64 0, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !116
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %31
  %53 = getelementptr inbounds %struct.node_sched_params, ptr %33, i64 0, i32 6
  %54 = load i32, ptr %53, align 4, !tbaa !122
  %55 = getelementptr inbounds %struct.node_sched_params, ptr %37, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !122
  %57 = icmp slt i32 %54, %56
  %58 = sext i1 %57 to i32
  %59 = add nsw i32 %46, %58
  br label %60

60:                                               ; preds = %52, %31
  %61 = phi i32 [ %46, %31 ], [ %59, %52 ]
  %62 = tail call i32 @llvm.smax.i32(i32 %22, i32 %61)
  br label %63

63:                                               ; preds = %20, %26, %60
  %64 = phi i32 [ %62, %60 ], [ %22, %26 ], [ %22, %20 ]
  %65 = getelementptr inbounds %struct.ddg_edge, ptr %21, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %20, !llvm.loop !138

68:                                               ; preds = %63
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %204, label %70

70:                                               ; preds = %68
  %71 = tail call ptr @sbitmap_vector_alloc(i32 noundef %64, i32 noundef %13) #22
  tail call void @sbitmap_vector_zero(ptr noundef %71, i32 noundef %64) #22
  %72 = getelementptr ptr, ptr %71, i64 -1
  %73 = load ptr, ptr %17, align 8, !tbaa !13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %126, label %75

75:                                               ; preds = %70, %122
  %76 = phi ptr [ %124, %122 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !133
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %122

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !135
  %83 = load ptr, ptr %76, align 8, !tbaa !136
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %122, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.ddg_node, ptr %82, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = getelementptr inbounds %struct.node_sched_params, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !115
  %90 = getelementptr inbounds %struct.ddg_node, ptr %83, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !18
  %92 = getelementptr inbounds %struct.node_sched_params, ptr %91, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !115
  %94 = sub i32 %89, %93
  %95 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !137
  %97 = icmp eq i32 %96, 1
  %98 = select i1 %97, i32 %6, i32 0
  %99 = add nsw i32 %94, %98
  %100 = sdiv i32 %99, %6
  %101 = getelementptr inbounds %struct.node_sched_params, ptr %87, i64 0, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !116
  %103 = getelementptr inbounds %struct.node_sched_params, ptr %91, i64 0, i32 4
  %104 = load i32, ptr %103, align 4, !tbaa !116
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %85
  %107 = getelementptr inbounds %struct.node_sched_params, ptr %87, i64 0, i32 6
  %108 = load i32, ptr %107, align 4, !tbaa !122
  %109 = getelementptr inbounds %struct.node_sched_params, ptr %91, i64 0, i32 6
  %110 = load i32, ptr %109, align 4, !tbaa !122
  %111 = icmp slt i32 %108, %110
  %112 = sext i1 %111 to i32
  %113 = add nsw i32 %100, %112
  br label %114

114:                                              ; preds = %106, %85
  %115 = phi i32 [ %100, %85 ], [ %113, %106 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = sext i32 %115 to i64
  %119 = getelementptr ptr, ptr %72, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !13
  %121 = load i32, ptr %82, align 8, !tbaa !68
  tail call fastcc void @SET_BIT(ptr noundef %120, i32 noundef %121) #21
  br label %122

122:                                              ; preds = %114, %117, %75, %80
  %123 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !13
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %75, !llvm.loop !139

126:                                              ; preds = %122, %70
  %127 = getelementptr inbounds %struct.ddg_node, ptr %16, i64 %14, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !18
  %129 = getelementptr inbounds %struct.node_sched_params, ptr %128, i64 0, i32 3
  store i32 %64, ptr %129, align 8, !tbaa !140
  %130 = getelementptr inbounds %struct.ddg_node, ptr %16, i64 %14, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !16
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = add nsw i32 %133, -7
  %135 = icmp ult i32 %134, 3
  br i1 %135, label %138, label %136

136:                                              ; preds = %126
  %137 = icmp eq i32 %133, 10
  tail call void @llvm.assume(i1 %137)
  br label %138

138:                                              ; preds = %126, %136
  %139 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !18
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 23
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  %145 = tail call ptr @single_set_2(ptr noundef nonnull %131, ptr noundef nonnull %140) #22
  br label %146

146:                                              ; preds = %138, %144
  %147 = phi ptr [ %145, %144 ], [ %140, %138 ]
  %148 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !18
  %150 = tail call ptr @copy_rtx(ptr noundef %149) #22
  %151 = icmp sgt i32 %64, 0
  br i1 %151, label %152, label %201

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.ddg_node, ptr %16, i64 %14, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !69
  %155 = zext nneg i32 %64 to i64
  br label %156

156:                                              ; preds = %152, %197
  %157 = phi i64 [ 0, %152 ], [ %199, %197 ]
  %158 = phi ptr [ %15, %152 ], [ %198, %197 ]
  %159 = phi ptr [ %150, %152 ], [ %164, %197 ]
  %160 = phi ptr [ %154, %152 ], [ %165, %197 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !23
  %161 = load i32, ptr %159, align 8
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = tail call ptr @gen_reg_rtx(i32 noundef %163) #22
  %165 = tail call ptr @gen_move_insn(ptr noundef %164, ptr noundef nonnull %159) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  tail call void @add_insn_before(ptr noundef %165, ptr noundef %160, ptr noundef null) #22
  %166 = load ptr, ptr %127, align 8, !tbaa !18
  %167 = getelementptr inbounds %struct.node_sched_params, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !141
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  store ptr %165, ptr %167, align 8, !tbaa !141
  br label %171

171:                                              ; preds = %170, %156
  %172 = getelementptr inbounds ptr, ptr %71, i64 %157
  %173 = load ptr, ptr %172, align 8, !tbaa !13
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %3, ptr noundef %173) #21
  %174 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !52
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %197, label %176

176:                                              ; preds = %171, %189
  %177 = phi ptr [ %178, %189 ], [ %158, %171 ]
  %178 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #22
  %179 = load ptr, ptr %11, align 8, !tbaa !98
  %180 = load i32, ptr %2, align 4, !tbaa !23
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ddg_node, ptr %179, i64 %181, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !16
  store ptr %183, ptr %178, align 8, !tbaa !142
  %184 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %178, i64 0, i32 1
  store ptr %150, ptr %184, align 8, !tbaa !144
  %185 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %178, i64 0, i32 2
  store ptr %164, ptr %185, align 8, !tbaa !145
  %186 = icmp eq ptr %177, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %178, i64 0, i32 3
  store ptr %177, ptr %188, align 8, !tbaa !146
  br label %189

189:                                              ; preds = %176, %187
  %190 = tail call ptr @replace_rtx(ptr noundef %183, ptr noundef %150, ptr noundef %164) #22
  %191 = load ptr, ptr %11, align 8, !tbaa !98
  %192 = getelementptr inbounds %struct.ddg_node, ptr %191, i64 %181, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !16
  %194 = tail call zeroext i8 @df_insn_rescan(ptr noundef %193) #22
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %3) #21
  %195 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #21, !range !52
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %176, !llvm.loop !147

197:                                              ; preds = %189, %171
  %198 = phi ptr [ %158, %171 ], [ %178, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  %199 = add nuw nsw i64 %157, 1
  %200 = icmp eq i64 %199, %155
  br i1 %200, label %201, label %156, !llvm.loop !148

201:                                              ; preds = %197, %146
  %202 = phi ptr [ %15, %146 ], [ %198, %197 ]
  tail call void @free(ptr noundef %71) #21
  %203 = load i32, ptr %7, align 8, !tbaa !61
  br label %204

204:                                              ; preds = %12, %68, %201
  %205 = phi i32 [ %203, %201 ], [ %13, %68 ], [ %13, %12 ]
  %206 = phi ptr [ %202, %201 ], [ %15, %68 ], [ %15, %12 ]
  %207 = add nuw nsw i64 %14, 1
  %208 = sext i32 %205 to i64
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %12, label %210, !llvm.loop !149

210:                                              ; preds = %204, %1
  %211 = phi ptr [ null, %1 ], [ %206, %204 ]
  ret ptr %211
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_node_sched_params(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ddg, ptr %2, i64 0, i32 5
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %41
  %9 = phi i64 [ 0, %5 ], [ %42, %41 ]
  %10 = load ptr, ptr @node_sched_params, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.node_sched_params, ptr %10, i64 %9
  %12 = getelementptr inbounds %struct.node_sched_params, ptr %10, i64 %9, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !141
  %14 = load ptr, ptr %6, align 8, !tbaa !98
  %15 = getelementptr inbounds %struct.ddg_node, ptr %14, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !18
  %19 = trunc i64 %9 to i32
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %19, i32 noundef %18) #21
  %21 = load i32, ptr %11, align 8, !tbaa !104
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef %21) #21
  %23 = getelementptr inbounds %struct.node_sched_params, ptr %10, i64 %9, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !115
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %24) #21
  %26 = getelementptr inbounds %struct.node_sched_params, ptr %10, i64 %9, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !140
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %27) #21
  %29 = load i32, ptr %26, align 8, !tbaa !140
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %8, %31
  %32 = phi i32 [ %38, %31 ], [ 0, %8 ]
  %33 = phi ptr [ %37, %31 ], [ %13, %8 ]
  %34 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 12, i64 1, ptr %0)
  %35 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %33) #22
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = add nuw nsw i32 %32, 1
  %39 = load i32, ptr %26, align 8, !tbaa !140
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %31, label %41, !llvm.loop !150

41:                                               ; preds = %31, %8
  %42 = add nuw nsw i64 %9, 1
  %43 = icmp eq i64 %42, %7
  br i1 %43, label %44, label %8, !llvm.loop !151

44:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @generate_prolog_epilog(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !65
  %5 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = sub i32 %4, %6
  %8 = load i32, ptr %0, align 8, !tbaa !6
  %9 = add i32 %7, %8
  %10 = sdiv i32 %9, %8
  %11 = add i32 %10, -1
  tail call void @start_sequence() #22
  %12 = sext i32 %11 to i64
  %13 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %12) #22
  %14 = tail call ptr @expand_simple_binop(i32 noundef 0, i32 noundef 50, ptr noundef null, ptr noundef %13, ptr noundef null, i32 noundef 1, i32 noundef 0) #22
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 723, ptr noundef nonnull @.str.9) #22
  br label %19

19:                                               ; preds = %2, %18
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #21
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef null) #21
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @emit_move_insn(ptr noundef null, ptr noundef nonnull %14) #22
  br label %25

25:                                               ; preds = %19, %23
  %26 = icmp sgt i32 %10, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %25, %27
  %28 = phi i32 [ %29, %27 ], [ 0, %25 ]
  tail call fastcc void @duplicate_insns_of_cycles(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %28, i32 noundef 1) #21
  %29 = add nuw nsw i32 %28, 1
  %30 = icmp eq i32 %29, %11
  br i1 %30, label %31, label %27, !llvm.loop !152

31:                                               ; preds = %27
  %32 = tail call ptr @loop_preheader_edge(ptr noundef %1) #22
  %33 = tail call ptr @get_insns() #22
  %34 = tail call ptr @split_edge_and_insert(ptr noundef %32, ptr noundef %33) #22
  tail call void @end_sequence() #22
  tail call void @start_sequence() #22
  br i1 %26, label %35, label %43

35:                                               ; preds = %31, %35
  %36 = phi i32 [ %37, %35 ], [ 0, %31 ]
  %37 = add nuw nsw i32 %36, 1
  tail call fastcc void @duplicate_insns_of_cycles(ptr noundef nonnull %0, i32 noundef %37, i32 noundef %11, i32 noundef 0) #21
  %38 = icmp eq i32 %37, %11
  br i1 %38, label %43, label %35, !llvm.loop !153

39:                                               ; preds = %25
  %40 = tail call ptr @loop_preheader_edge(ptr noundef %1) #22
  %41 = tail call ptr @get_insns() #22
  %42 = tail call ptr @split_edge_and_insert(ptr noundef %40, ptr noundef %41) #22
  tail call void @end_sequence() #22
  tail call void @start_sequence() #22
  br label %43

43:                                               ; preds = %35, %39, %31
  %44 = tail call ptr @single_exit(ptr noundef %1) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 744, ptr noundef nonnull @.str.9) #22
  br label %47

47:                                               ; preds = %43, %46
  %48 = tail call ptr @single_exit(ptr noundef %1) #22
  %49 = tail call ptr @get_insns() #22
  %50 = tail call ptr @split_edge_and_insert(ptr noundef %48, ptr noundef %49) #22
  tail call void @end_sequence() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_undo_replace_buff(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.undo_replace_buff_elem, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  tail call void @free(ptr noundef nonnull %4) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !154

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_partial_schedule(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call fastcc void @free_ps_insns(ptr noundef nonnull %0) #21
  %4 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  tail call void @free(ptr noundef %5) #21
  tail call void @free(ptr noundef nonnull %0) #21
  br label %6

6:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @free_ddg(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @haifa_sched_finish() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !155
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @compute_jump_reg_dependencies(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #12 {
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef nonnull ptr @sms_print_insn(ptr nocapture noundef readonly %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !18
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @sms_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %4) #21
  ret ptr @sms_print_insn.tmp
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #4 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load i32, ptr %0, align 4, !tbaa !157
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !157
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #21
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !160
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !157
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !23
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !23
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #21
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare ptr @create_ddg_all_sccs(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @calculate_order_params(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 12) #22
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %106

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %10 = zext nneg i32 %4 to i64
  br label %16

11:                                               ; preds = %16
  br i1 %7, label %12, label %106

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = zext nneg i32 %4 to i64
  br label %28

16:                                               ; preds = %8, %16
  %17 = phi i64 [ 0, %8 ], [ %21, %16 ]
  %18 = getelementptr inbounds %struct.node_order_params, ptr %6, i64 %17
  %19 = load ptr, ptr %9, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 %17, i32 7
  store ptr %18, ptr %20, align 8, !tbaa !18
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %11, label %16, !llvm.loop !162

23:                                               ; preds = %56
  br i1 %7, label %24, label %106

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = zext nneg i32 %4 to i64
  br label %64

28:                                               ; preds = %12, %56
  %29 = phi i64 [ 0, %12 ], [ %60, %56 ]
  %30 = phi i32 [ 0, %12 ], [ %59, %56 ]
  %31 = getelementptr inbounds %struct.ddg_node, ptr %14, i64 %29, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  store i32 0, ptr %32, align 4, !tbaa !99
  %33 = getelementptr inbounds %struct.ddg_node, ptr %14, i64 %29, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %28, %52
  %37 = phi ptr [ %54, %52 ], [ %34, %28 ]
  %38 = getelementptr inbounds %struct.ddg_edge, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !137
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load ptr, ptr %31, align 8, !tbaa !18
  %43 = load i32, ptr %42, align 4, !tbaa !99
  %44 = load ptr, ptr %37, align 8, !tbaa !136
  %45 = getelementptr inbounds %struct.ddg_node, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  %47 = load i32, ptr %46, align 4, !tbaa !99
  %48 = getelementptr inbounds %struct.ddg_edge, ptr %37, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !163
  %50 = add nsw i32 %49, %47
  %51 = tail call i32 @llvm.smax.i32(i32 %43, i32 %50)
  store i32 %51, ptr %42, align 4, !tbaa !99
  br label %52

52:                                               ; preds = %36, %41
  %53 = getelementptr inbounds %struct.ddg_edge, ptr %37, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %36, !llvm.loop !164

56:                                               ; preds = %52, %28
  %57 = load ptr, ptr %31, align 8, !tbaa !18
  %58 = load i32, ptr %57, align 4, !tbaa !99
  %59 = tail call i32 @llvm.smax.i32(i32 %30, i32 %58)
  %60 = add nuw nsw i64 %29, 1
  %61 = icmp eq i64 %60, %15
  br i1 %61, label %23, label %28, !llvm.loop !165

62:                                               ; preds = %102, %64
  %63 = icmp sgt i64 %65, 1
  br i1 %63, label %64, label %106, !llvm.loop !166

64:                                               ; preds = %24, %62
  %65 = phi i64 [ %27, %24 ], [ %66, %62 ]
  %66 = add nsw i64 %65, -1
  %67 = getelementptr inbounds %struct.ddg_node, ptr %26, i64 %66, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !18
  %69 = getelementptr inbounds %struct.node_order_params, ptr %68, i64 0, i32 1
  store i32 %59, ptr %69, align 4, !tbaa !167
  %70 = load ptr, ptr %67, align 8, !tbaa !18
  %71 = getelementptr inbounds %struct.node_order_params, ptr %70, i64 0, i32 2
  store i32 0, ptr %71, align 4, !tbaa !168
  %72 = getelementptr inbounds %struct.ddg_node, ptr %26, i64 %66, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %62, label %75

75:                                               ; preds = %64, %102
  %76 = phi ptr [ %104, %102 ], [ %73, %64 ]
  %77 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 5
  %78 = load i32, ptr %77, align 4, !tbaa !137
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load ptr, ptr %67, align 8, !tbaa !18
  %82 = getelementptr inbounds %struct.node_order_params, ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !167
  %84 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !135
  %86 = getelementptr inbounds %struct.ddg_node, ptr %85, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = getelementptr inbounds %struct.node_order_params, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !167
  %90 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 4
  %91 = load i32, ptr %90, align 8, !tbaa !163
  %92 = sub nsw i32 %89, %91
  %93 = tail call i32 @llvm.smin.i32(i32 %83, i32 %92)
  store i32 %93, ptr %82, align 4, !tbaa !167
  %94 = load ptr, ptr %67, align 8, !tbaa !18
  %95 = getelementptr inbounds %struct.node_order_params, ptr %94, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !168
  %97 = load ptr, ptr %86, align 8, !tbaa !18
  %98 = getelementptr inbounds %struct.node_order_params, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !168
  %100 = add nsw i32 %99, %91
  %101 = tail call i32 @llvm.smax.i32(i32 %96, i32 %100)
  store i32 %101, ptr %95, align 4, !tbaa !168
  br label %102

102:                                              ; preds = %75, %80
  %103 = getelementptr inbounds %struct.ddg_edge, ptr %76, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %62, label %75, !llvm.loop !169

106:                                              ; preds = %62, %2, %11, %23
  %107 = phi i32 [ %59, %23 ], [ 0, %11 ], [ 0, %2 ], [ %59, %62 ]
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %109 = icmp eq ptr %108, null
  br i1 %109, label %130, label %110

110:                                              ; preds = %106
  %111 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 14, i64 1, ptr nonnull %108)
  br i1 %7, label %112, label %130

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %114 = zext nneg i32 %4 to i64
  br label %115

115:                                              ; preds = %112, %115
  %116 = phi i64 [ 0, %112 ], [ %128, %115 ]
  %117 = load ptr, ptr %113, align 8, !tbaa !98
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %119 = getelementptr inbounds %struct.ddg_node, ptr %117, i64 %116, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !18
  %121 = load i32, ptr %120, align 4, !tbaa !99
  %122 = getelementptr inbounds %struct.node_order_params, ptr %120, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !167
  %124 = getelementptr inbounds %struct.node_order_params, ptr %120, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !168
  %126 = trunc i64 %116 to i32
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.43, i32 noundef %126, i32 noundef %121, i32 noundef %123, i32 noundef %125) #21
  %128 = add nuw nsw i64 %116, 1
  %129 = icmp eq i64 %128, %114
  br i1 %129, label %130, label %115, !llvm.loop !170

130:                                              ; preds = %115, %110, %106
  store i32 %107, ptr %1, align 4, !tbaa !23
  ret ptr %6
}

; Function Attrs: optsize
declare void @print_sccs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @order_nodes_of_sccs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ddg_all_sccs, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.ddg, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = tail call ptr @sbitmap_alloc(i32 noundef %6) #22
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %6) #22
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %6) #22
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %6) #22
  tail call void @sbitmap_zero(ptr noundef %7) #22
  tail call void @sbitmap_ones(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.ddg_all_sccs, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %18, %2
  %15 = phi i32 [ 0, %2 ], [ %29, %18 ]
  %16 = load i32, ptr %5, align 8, !tbaa !61
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %34, label %39

18:                                               ; preds = %2, %18
  %19 = phi i64 [ %30, %18 ], [ 0, %2 ]
  %20 = phi i32 [ %29, %18 ], [ 0, %2 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !95
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = load ptr, ptr %23, align 8, !tbaa !172
  %25 = tail call i32 @find_nodes_on_paths(ptr noundef %8, ptr noundef %4, ptr noundef %7, ptr noundef %24) #22
  %26 = load ptr, ptr %23, align 8, !tbaa !172
  tail call void @sbitmap_a_or_b(ptr noundef %9, ptr noundef %26, ptr noundef %8) #22
  %27 = load ptr, ptr %23, align 8, !tbaa !172
  %28 = tail call i32 @find_nodes_on_paths(ptr noundef %8, ptr noundef %4, ptr noundef %27, ptr noundef %7) #22
  tail call void @sbitmap_a_or_b(ptr noundef %9, ptr noundef %9, ptr noundef %8) #22
  tail call void @sbitmap_difference(ptr noundef %9, ptr noundef %9, ptr noundef %7) #22
  %29 = tail call fastcc i32 @order_nodes_in_scc(ptr noundef %4, ptr noundef %7, ptr noundef %9, ptr noundef %1, i32 noundef %20) #21
  %30 = add nuw nsw i64 %19, 1
  %31 = load i32, ptr %11, align 8, !tbaa !93
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %18, label %14, !llvm.loop !173

34:                                               ; preds = %14, %34
  %35 = phi i32 [ %36, %34 ], [ %15, %14 ]
  tail call void @sbitmap_difference(ptr noundef %9, ptr noundef %10, ptr noundef %7) #22
  %36 = tail call fastcc i32 @order_nodes_in_scc(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %9, ptr noundef %1, i32 noundef %35) #21
  %37 = load i32, ptr %5, align 8, !tbaa !61
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %34, label %39, !llvm.loop !174

39:                                               ; preds = %34, %14
  %40 = load ptr, ptr %7, align 8, !tbaa !113
  tail call void @free(ptr noundef %40) #21
  tail call void @free(ptr noundef %7) #21
  %41 = load ptr, ptr %8, align 8, !tbaa !113
  tail call void @free(ptr noundef %41) #21
  tail call void @free(ptr noundef %8) #21
  %42 = load ptr, ptr %9, align 8, !tbaa !113
  tail call void @free(ptr noundef %42) #21
  tail call void @free(ptr noundef %9) #21
  %43 = load ptr, ptr %10, align 8, !tbaa !113
  tail call void @free(ptr noundef %43) #21
  tail call void @free(ptr noundef %10) #21
  ret void
}

; Function Attrs: optsize
declare void @free_ddg_all_sccs(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_nodes_order(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call ptr @sbitmap_alloc(i32 noundef %1) #22
  tail call void @sbitmap_zero(ptr noundef %3) #22
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 24, i64 1, ptr nonnull %4)
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %8
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %10, %33
  %13 = phi i64 [ 0, %10 ], [ %34, %33 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !23
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %16, ptr noundef nonnull @.str.45, i32 noundef %15) #21
  br label %20

20:                                               ; preds = %18, %12
  %21 = icmp ult i32 %15, %1
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = lshr i32 %15, 6
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !108
  %27 = and i32 %15, 63
  %28 = zext nneg i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %26, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2079, ptr noundef nonnull @.str.9) #22
  br label %33

33:                                               ; preds = %22, %32
  tail call fastcc void @SET_BIT(ptr noundef %3, i32 noundef %15) #21
  %34 = add nuw nsw i64 %13, 1
  %35 = icmp eq i64 %34, %11
  br i1 %35, label %36, label %12, !llvm.loop !175

36:                                               ; preds = %33, %8
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @fputc(i32 10, ptr nonnull %37)
  br label %41

41:                                               ; preds = %39, %36
  %42 = load ptr, ptr %3, align 8, !tbaa !113
  tail call void @free(ptr noundef %42) #21
  tail call void @free(ptr noundef %3) #21
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @find_nodes_on_paths(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @order_nodes_in_scc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #22
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %7) #22
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %7) #22
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %7) #22
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %7) #22
  tail call void @sbitmap_zero(ptr noundef %11) #22
  tail call void @find_predecessors(ptr noundef %11, ptr noundef %0, ptr noundef %1) #22
  tail call void @sbitmap_zero(ptr noundef %12) #22
  tail call void @find_successors(ptr noundef %12, ptr noundef %0, ptr noundef %1) #22
  tail call void @sbitmap_zero(ptr noundef %9) #22
  %13 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %9, ptr noundef %11, ptr noundef %2) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call void @sbitmap_copy(ptr noundef %8, ptr noundef %9) #22
  br label %24

16:                                               ; preds = %5
  %17 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %9, ptr noundef %12, ptr noundef %2) #22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @sbitmap_copy(ptr noundef %8, ptr noundef %9) #22
  br label %24

20:                                               ; preds = %16
  tail call void @sbitmap_zero(ptr noundef %8) #22
  %21 = tail call fastcc i32 @find_max_asap(ptr noundef nonnull %0, ptr noundef %2) #21
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @SET_BIT(ptr noundef %8, i32 noundef %21) #21
  br label %24

24:                                               ; preds = %20, %23, %19, %15
  %25 = phi i32 [ 0, %15 ], [ 1, %19 ], [ 0, %23 ], [ 0, %20 ]
  tail call void @sbitmap_zero(ptr noundef %10) #22
  %26 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %30

30:                                               ; preds = %28, %72
  %31 = phi i32 [ %4, %28 ], [ %75, %72 ]
  %32 = phi i32 [ %25, %28 ], [ %74, %72 ]
  %33 = icmp eq i32 %32, 1
  %34 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #22
  %35 = icmp eq i32 %34, 0
  br i1 %33, label %39, label %36

36:                                               ; preds = %30
  br i1 %35, label %37, label %70

37:                                               ; preds = %36
  %38 = sext i32 %31 to i64
  br label %57

39:                                               ; preds = %30
  br i1 %35, label %40, label %55

40:                                               ; preds = %39
  %41 = sext i32 %31 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ %41, %40 ], [ %47, %42 ]
  %44 = tail call fastcc i32 @find_max_hv_min_mob(ptr noundef %0, ptr noundef %8) #21
  %45 = load ptr, ptr %29, align 8, !tbaa !98
  %46 = sext i32 %44 to i64
  %47 = add i64 %43, 1
  %48 = getelementptr inbounds i32, ptr %3, i64 %43
  store i32 %44, ptr %48, align 4, !tbaa !23
  %49 = getelementptr inbounds %struct.ddg_node, ptr %45, i64 %46, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !176
  tail call void @sbitmap_a_and_b(ptr noundef %9, ptr noundef %50, ptr noundef %2) #22
  tail call void @sbitmap_difference(ptr noundef %9, ptr noundef %9, ptr noundef %1) #22
  tail call void @sbitmap_a_or_b(ptr noundef %8, ptr noundef %8, ptr noundef %9) #22
  tail call fastcc void @RESET_BIT(ptr noundef %8, i32 noundef %44) #21
  tail call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %44) #21
  %51 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %42, label %53, !llvm.loop !177

53:                                               ; preds = %42
  %54 = trunc i64 %47 to i32
  br label %55

55:                                               ; preds = %53, %39
  %56 = phi i32 [ %31, %39 ], [ %54, %53 ]
  tail call void @sbitmap_zero(ptr noundef %11) #22
  tail call void @find_predecessors(ptr noundef %11, ptr noundef %0, ptr noundef %1) #22
  br label %72

57:                                               ; preds = %37, %57
  %58 = phi i64 [ %38, %37 ], [ %62, %57 ]
  %59 = tail call fastcc i32 @find_max_dv_min_mob(ptr noundef %0, ptr noundef %8) #21
  %60 = load ptr, ptr %29, align 8, !tbaa !98
  %61 = sext i32 %59 to i64
  %62 = add i64 %58, 1
  %63 = getelementptr inbounds i32, ptr %3, i64 %58
  store i32 %59, ptr %63, align 4, !tbaa !23
  %64 = getelementptr inbounds %struct.ddg_node, ptr %60, i64 %61, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !178
  tail call void @sbitmap_a_and_b(ptr noundef %9, ptr noundef %65, ptr noundef %2) #22
  tail call void @sbitmap_difference(ptr noundef %9, ptr noundef %9, ptr noundef %1) #22
  tail call void @sbitmap_a_or_b(ptr noundef %8, ptr noundef %8, ptr noundef %9) #22
  tail call fastcc void @RESET_BIT(ptr noundef %8, i32 noundef %59) #21
  tail call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %59) #21
  %66 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %57, label %68, !llvm.loop !179

68:                                               ; preds = %57
  %69 = trunc i64 %62 to i32
  br label %70

70:                                               ; preds = %68, %36
  %71 = phi i32 [ %31, %36 ], [ %69, %68 ]
  tail call void @sbitmap_zero(ptr noundef %12) #22
  tail call void @find_successors(ptr noundef %12, ptr noundef %0, ptr noundef %1) #22
  br label %72

72:                                               ; preds = %70, %55
  %73 = phi ptr [ %12, %70 ], [ %11, %55 ]
  %74 = phi i32 [ 1, %70 ], [ 0, %55 ]
  %75 = phi i32 [ %71, %70 ], [ %56, %55 ]
  tail call void @sbitmap_a_and_b(ptr noundef %8, ptr noundef %73, ptr noundef %2) #22
  %76 = tail call i32 @sbitmap_equal(ptr noundef %8, ptr noundef %10) #22
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %30, label %78, !llvm.loop !180

78:                                               ; preds = %72, %24
  %79 = phi i32 [ %4, %24 ], [ %75, %72 ]
  %80 = load ptr, ptr %9, align 8, !tbaa !113
  tail call void @free(ptr noundef %80) #21
  tail call void @free(ptr noundef %9) #21
  %81 = load ptr, ptr %8, align 8, !tbaa !113
  tail call void @free(ptr noundef %81) #21
  tail call void @free(ptr noundef %8) #21
  %82 = load ptr, ptr %10, align 8, !tbaa !113
  tail call void @free(ptr noundef %82) #21
  tail call void @free(ptr noundef %10) #21
  %83 = load ptr, ptr %11, align 8, !tbaa !113
  tail call void @free(ptr noundef %83) #21
  tail call void @free(ptr noundef %11) #21
  %84 = load ptr, ptr %12, align 8, !tbaa !113
  tail call void @free(ptr noundef %84) #21
  tail call void @free(ptr noundef %12) #21
  ret i32 %79
}

; Function Attrs: optsize
declare void @find_predecessors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @find_successors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @sbitmap_a_and_b_cg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_max_asap(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #15 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %1) #21
  %5 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ -1, %7 ], [ %20, %10 ]
  %12 = phi i32 [ -1, %7 ], [ %19, %10 ]
  %13 = load i32, ptr %3, align 4, !tbaa !23
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ddg_node, ptr %9, i64 %14, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = load i32, ptr %16, align 4, !tbaa !99
  %18 = icmp slt i32 %11, %17
  %19 = select i1 %18, i32 %13, i32 %12
  %20 = tail call i32 @llvm.smax.i32(i32 %11, i32 %17)
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %21 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !52
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !181

23:                                               ; preds = %10, %2
  %24 = phi i32 [ -1, %2 ], [ %19, %10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !113
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
  %15 = load i64, ptr %14, align 8, !tbaa !108
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !18
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !18
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !108
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare i32 @sbitmap_equal(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_max_hv_min_mob(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #15 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %1) #21
  %5 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %7, %36
  %11 = phi i32 [ -1, %7 ], [ %39, %36 ]
  %12 = phi i32 [ -1, %7 ], [ %38, %36 ]
  %13 = phi i32 [ 2147483647, %7 ], [ %37, %36 ]
  %14 = load i32, ptr %3, align 4, !tbaa !23
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ddg_node, ptr %9, i64 %15, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct.node_order_params, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !168
  %20 = icmp slt i32 %11, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.node_order_params, ptr %17, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !167
  %24 = load i32, ptr %17, align 4, !tbaa !99
  %25 = sub nsw i32 %23, %24
  br label %36

26:                                               ; preds = %10
  %27 = icmp eq i32 %11, %19
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.node_order_params, ptr %17, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !167
  %31 = load i32, ptr %17, align 4, !tbaa !99
  %32 = sub nsw i32 %30, %31
  %33 = icmp sgt i32 %13, %32
  %34 = tail call i32 @llvm.smin.i32(i32 %13, i32 %32)
  %35 = select i1 %33, i32 %14, i32 %12
  br label %36

36:                                               ; preds = %28, %26, %21
  %37 = phi i32 [ %25, %21 ], [ %13, %26 ], [ %34, %28 ]
  %38 = phi i32 [ %14, %21 ], [ %12, %26 ], [ %35, %28 ]
  %39 = phi i32 [ %19, %21 ], [ %11, %26 ], [ %11, %28 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %40 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !52
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %10, !llvm.loop !182

42:                                               ; preds = %36, %2
  %43 = phi i32 [ -1, %2 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret i32 %43
}

; Function Attrs: optsize
declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #16 {
  %3 = load ptr, ptr %0, align 8, !tbaa !113
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
  %15 = load i64, ptr %14, align 8, !tbaa !108
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !18
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !18
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !108
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !108
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_max_dv_min_mob(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #15 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %3, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %1) #21
  %5 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %7, %33
  %11 = phi i32 [ -1, %7 ], [ %36, %33 ]
  %12 = phi i32 [ -1, %7 ], [ %35, %33 ]
  %13 = phi i32 [ 2147483647, %7 ], [ %34, %33 ]
  %14 = load i32, ptr %3, align 4, !tbaa !23
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ddg_node, ptr %9, i64 %15, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = load i32, ptr %17, align 4, !tbaa !99
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.node_order_params, ptr %17, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !167
  %23 = sub nsw i32 %22, %18
  br label %33

24:                                               ; preds = %10
  %25 = icmp eq i32 %11, %18
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.node_order_params, ptr %17, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !167
  %29 = sub nsw i32 %28, %11
  %30 = icmp sgt i32 %13, %29
  %31 = tail call i32 @llvm.smin.i32(i32 %13, i32 %29)
  %32 = select i1 %30, i32 %14, i32 %12
  br label %33

33:                                               ; preds = %26, %24, %20
  %34 = phi i32 [ %23, %20 ], [ %13, %24 ], [ %31, %26 ]
  %35 = phi i32 [ %14, %20 ], [ %12, %24 ], [ %32, %26 ]
  %36 = phi i32 [ %18, %20 ], [ %11, %24 ], [ %11, %26 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #21
  %37 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #21, !range !52
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %10, !llvm.loop !183

39:                                               ; preds = %33, %2
  %40 = phi i32 [ -1, %2 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !184
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !186
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !187
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !188
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !189
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !108
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !190
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !188
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !184
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !184
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !186
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !186
  %25 = load ptr, ptr %0, align 8, !tbaa !189
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !108
  store i64 %28, ptr %3, align 8, !tbaa !190
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !191

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !192

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !186
  store i64 %34, ptr %3, align 8, !tbaa !190
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !23
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !184
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !190
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !190
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !186
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !186
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_partial_schedule(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #22
  %5 = sext i32 %0 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #22
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %4, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !12
  store i32 %0, ptr %4, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %4, i64 0, i32 1
  store i32 %2, ptr %8, align 4, !tbaa !193
  %9 = getelementptr inbounds %struct.partial_schedule, ptr %4, i64 0, i32 3
  store i32 2147483647, ptr %9, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.partial_schedule, ptr %4, i64 0, i32 4
  store i32 -2147483648, ptr %10, align 4, !tbaa !65
  %11 = getelementptr inbounds %struct.partial_schedule, ptr %4, i64 0, i32 5
  store ptr %1, ptr %11, align 8, !tbaa !107
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @get_sched_window(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #4 {
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !23
  %12 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = getelementptr inbounds %struct.ddg, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16
  %18 = getelementptr inbounds %struct.ddg, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = tail call ptr @sbitmap_alloc(i32 noundef %19) #22
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = getelementptr inbounds %struct.ddg, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !61
  %24 = tail call ptr @sbitmap_alloc(i32 noundef %23) #22
  %25 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !178
  %27 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !176
  tail call void @sbitmap_zero(ptr noundef %20) #22
  tail call void @sbitmap_zero(ptr noundef %24) #22
  %29 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %20, ptr noundef %26, ptr noundef %3) #22
  %30 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %24, ptr noundef %28, ptr noundef %3) #22
  %31 = icmp eq i8 %29, 0
  %32 = icmp ne i8 %30, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %125, label %34

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %111, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 1
  %40 = add i32 %4, -1
  br label %41

41:                                               ; preds = %38, %105
  %42 = phi ptr [ %36, %38 ], [ %109, %105 ]
  %43 = phi i32 [ 2147483647, %38 ], [ %107, %105 ]
  %44 = phi i32 [ -2147483648, %38 ], [ %106, %105 ]
  %45 = load ptr, ptr %42, align 8, !tbaa !136
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 18, i64 1, ptr nonnull %46)
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !13
  tail call void @print_ddg_edge(ptr noundef %50, ptr noundef nonnull %42) #22
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %52 = load i32, ptr %17, align 8, !tbaa !68
  %53 = load ptr, ptr %39, align 8, !tbaa !16
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !18
  %56 = load i32, ptr %45, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.ddg_node, ptr %45, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !18
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.50, i32 noundef %52, i32 noundef %55, i32 noundef %56, i32 noundef %60) #21
  br label %62

62:                                               ; preds = %48, %41
  %63 = load i32, ptr %45, align 8, !tbaa !68
  %64 = lshr i32 %63, 6
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !108
  %68 = and i32 %63, 63
  %69 = zext nneg i32 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = and i64 %70, %67
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.ddg_node, ptr %45, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  %76 = getelementptr inbounds %struct.node_sched_params, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !115
  %78 = getelementptr inbounds %struct.ddg_edge, ptr %42, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !163
  %80 = add nsw i32 %79, %77
  %81 = getelementptr inbounds %struct.ddg_edge, ptr %42, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !137
  %83 = mul nsw i32 %82, %4
  %84 = sub i32 %80, %83
  %85 = tail call i32 @llvm.smax.i32(i32 %44, i32 %84)
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %73
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %86, ptr noundef nonnull @.str.51, i32 noundef %77, i32 noundef %85, i32 noundef %79) #21
  br label %90

90:                                               ; preds = %88, %73
  %91 = getelementptr inbounds %struct.ddg_edge, ptr %42, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !194
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load ptr, ptr %74, align 8, !tbaa !18
  %96 = getelementptr inbounds %struct.node_sched_params, ptr %95, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !115
  %98 = add i32 %40, %97
  %99 = tail call i32 @llvm.smin.i32(i32 %43, i32 %98)
  br label %105

100:                                              ; preds = %62
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %101)
  br label %105

105:                                              ; preds = %90, %94, %100, %103
  %106 = phi i32 [ %44, %103 ], [ %44, %100 ], [ %85, %94 ], [ %85, %90 ]
  %107 = phi i32 [ %43, %103 ], [ %43, %100 ], [ %99, %94 ], [ %43, %90 ]
  %108 = getelementptr inbounds %struct.ddg_edge, ptr %42, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !13
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %41, !llvm.loop !195

111:                                              ; preds = %105, %34
  %112 = phi i32 [ -2147483648, %34 ], [ %106, %105 ]
  %113 = phi i32 [ 2147483647, %34 ], [ %107, %105 ]
  %114 = add nsw i32 %112, %4
  %115 = tail call i32 @llvm.smin.i32(i32 %113, i32 %114)
  %116 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %425, label %118

118:                                              ; preds = %111
  %119 = load i32, ptr %17, align 8, !tbaa !68
  %120 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !16
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !18
  %124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %116, ptr noundef nonnull @.str.53, i32 noundef %119, i32 noundef %123, i32 noundef %112, i32 noundef %115, i32 noundef 1) #21
  br label %425

125:                                              ; preds = %8
  %126 = select i1 %31, i1 %32, i1 false
  br i1 %126, label %127, label %225

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !13
  %130 = icmp eq ptr %129, null
  br i1 %130, label %211, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 1
  br label %133

133:                                              ; preds = %131, %205
  %134 = phi ptr [ %129, %131 ], [ %209, %205 ]
  %135 = phi i32 [ -2147483648, %131 ], [ %207, %205 ]
  %136 = phi i32 [ 2147483647, %131 ], [ %206, %205 ]
  %137 = getelementptr inbounds %struct.ddg_edge, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !135
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %140 = icmp eq ptr %139, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %133
  %142 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr nonnull %139)
  %143 = load ptr, ptr @dump_file, align 8, !tbaa !13
  tail call void @print_ddg_edge(ptr noundef %143, ptr noundef nonnull %134) #22
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %145 = load i32, ptr %17, align 8, !tbaa !68
  %146 = load ptr, ptr %132, align 8, !tbaa !16
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !18
  %149 = load i32, ptr %138, align 8, !tbaa !68
  %150 = getelementptr inbounds %struct.ddg_node, ptr %138, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !16
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !18
  %154 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.55, i32 noundef %145, i32 noundef %148, i32 noundef %149, i32 noundef %153) #21
  br label %155

155:                                              ; preds = %141, %133
  %156 = load i32, ptr %138, align 8, !tbaa !68
  %157 = lshr i32 %156, 6
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !108
  %161 = and i32 %156, 63
  %162 = zext nneg i32 %161 to i64
  %163 = shl nuw i64 1, %162
  %164 = and i64 %163, %160
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %200, label %166

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.ddg_node, ptr %138, i64 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !18
  %169 = getelementptr inbounds %struct.node_sched_params, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !115
  %171 = getelementptr inbounds %struct.ddg_edge, ptr %134, i64 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !163
  %173 = sub i32 %170, %172
  %174 = getelementptr inbounds %struct.ddg_edge, ptr %134, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !137
  %176 = mul nsw i32 %175, %4
  %177 = add nsw i32 %173, %176
  %178 = tail call i32 @llvm.smin.i32(i32 %136, i32 %177)
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %166
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %179, ptr noundef nonnull @.str.56, i32 noundef %170, i32 noundef %178, i32 noundef %172) #21
  br label %183

183:                                              ; preds = %181, %166
  %184 = getelementptr inbounds %struct.ddg_edge, ptr %134, i64 0, i32 3
  %185 = load i32, ptr %184, align 4, !tbaa !194
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load ptr, ptr %167, align 8, !tbaa !18
  %189 = getelementptr inbounds %struct.node_sched_params, ptr %188, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !115
  %191 = sub i32 %190, %4
  %192 = add i32 %191, 1
  %193 = tail call i32 @llvm.smax.i32(i32 %135, i32 %192)
  br label %194

194:                                              ; preds = %187, %183
  %195 = phi i32 [ %193, %187 ], [ %135, %183 ]
  %196 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %197 = icmp eq ptr %196, null
  br i1 %197, label %205, label %198

198:                                              ; preds = %194
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %196, ptr noundef nonnull @.str.57, i32 noundef %195) #21
  br label %205

200:                                              ; preds = %155
  %201 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %201)
  br label %205

205:                                              ; preds = %194, %198, %200, %203
  %206 = phi i32 [ %136, %203 ], [ %136, %200 ], [ %178, %198 ], [ %178, %194 ]
  %207 = phi i32 [ %135, %203 ], [ %135, %200 ], [ %195, %198 ], [ %195, %194 ]
  %208 = getelementptr inbounds %struct.ddg_edge, ptr %134, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !13
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %133, !llvm.loop !196

211:                                              ; preds = %205, %127
  %212 = phi i32 [ 2147483647, %127 ], [ %206, %205 ]
  %213 = phi i32 [ -2147483648, %127 ], [ %207, %205 ]
  %214 = sub nsw i32 %212, %4
  %215 = tail call i32 @llvm.smax.i32(i32 %213, i32 %214)
  %216 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %217 = icmp eq ptr %216, null
  br i1 %217, label %425, label %218

218:                                              ; preds = %211
  %219 = load i32, ptr %17, align 8, !tbaa !68
  %220 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !16
  %222 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %223 = load i32, ptr %222, align 8, !tbaa !18
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %216, ptr noundef nonnull @.str.53, i32 noundef %219, i32 noundef %223, i32 noundef %212, i32 noundef %215, i32 noundef -1) #21
  br label %425

225:                                              ; preds = %125
  %226 = icmp ne i8 %29, 0
  %227 = select i1 %226, i1 %32, i1 false
  br i1 %227, label %228, label %420

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !13
  %231 = icmp eq ptr %230, null
  br i1 %231, label %314, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 1
  %234 = add i32 %4, -1
  br label %235

235:                                              ; preds = %232, %307
  %236 = phi ptr [ %230, %232 ], [ %312, %307 ]
  %237 = phi i32 [ 2147483647, %232 ], [ %310, %307 ]
  %238 = phi i32 [ 0, %232 ], [ %309, %307 ]
  %239 = phi i32 [ -2147483648, %232 ], [ %308, %307 ]
  %240 = load ptr, ptr %236, align 8, !tbaa !136
  %241 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %242 = icmp eq ptr %241, null
  br i1 %242, label %257, label %243

243:                                              ; preds = %235
  %244 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr nonnull %241)
  %245 = load ptr, ptr @dump_file, align 8, !tbaa !13
  tail call void @print_ddg_edge(ptr noundef %245, ptr noundef nonnull %236) #22
  %246 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %247 = load i32, ptr %17, align 8, !tbaa !68
  %248 = load ptr, ptr %233, align 8, !tbaa !16
  %249 = getelementptr inbounds %struct.rtx_def, ptr %248, i64 0, i32 1
  %250 = load i32, ptr %249, align 8, !tbaa !18
  %251 = load i32, ptr %240, align 8, !tbaa !68
  %252 = getelementptr inbounds %struct.ddg_node, ptr %240, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !16
  %254 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !18
  %256 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.58, i32 noundef %247, i32 noundef %250, i32 noundef %251, i32 noundef %255) #21
  br label %257

257:                                              ; preds = %243, %235
  %258 = load i32, ptr %240, align 8, !tbaa !68
  %259 = lshr i32 %258, 6
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %260
  %262 = load i64, ptr %261, align 8, !tbaa !108
  %263 = and i32 %258, 63
  %264 = zext nneg i32 %263 to i64
  %265 = shl nuw i64 1, %264
  %266 = and i64 %265, %262
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %302, label %268

268:                                              ; preds = %257
  %269 = getelementptr inbounds %struct.ddg_node, ptr %240, i64 0, i32 7
  %270 = load ptr, ptr %269, align 8, !tbaa !18
  %271 = getelementptr inbounds %struct.node_sched_params, ptr %270, i64 0, i32 1
  %272 = load i32, ptr %271, align 4, !tbaa !115
  %273 = getelementptr inbounds %struct.ddg_edge, ptr %236, i64 0, i32 4
  %274 = load i32, ptr %273, align 8, !tbaa !163
  %275 = add nsw i32 %274, %272
  %276 = getelementptr inbounds %struct.ddg_edge, ptr %236, i64 0, i32 5
  %277 = load i32, ptr %276, align 4, !tbaa !137
  %278 = mul nsw i32 %277, %4
  %279 = sub i32 %275, %278
  %280 = tail call i32 @llvm.smax.i32(i32 %239, i32 %279)
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %268
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %281, ptr noundef nonnull @.str.59, i32 noundef %272, i32 noundef %280, i32 noundef %274) #21
  br label %285

285:                                              ; preds = %283, %268
  %286 = getelementptr inbounds %struct.ddg_edge, ptr %236, i64 0, i32 2
  %287 = load i32, ptr %286, align 8, !tbaa !133
  %288 = icmp eq i32 %287, 0
  %289 = getelementptr inbounds %struct.ddg_edge, ptr %236, i64 0, i32 3
  %290 = load i32, ptr %289, align 4, !tbaa !194
  %291 = icmp eq i32 %290, 1
  %292 = and i1 %288, %291
  %293 = zext i1 %292 to i32
  %294 = add nsw i32 %238, %293
  %295 = icmp eq i32 %290, 2
  br i1 %295, label %296, label %307

296:                                              ; preds = %285
  %297 = load ptr, ptr %269, align 8, !tbaa !18
  %298 = getelementptr inbounds %struct.node_sched_params, ptr %297, i64 0, i32 1
  %299 = load i32, ptr %298, align 4, !tbaa !115
  %300 = add i32 %234, %299
  %301 = tail call i32 @llvm.smin.i32(i32 %237, i32 %300)
  br label %307

302:                                              ; preds = %257
  %303 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %304 = icmp eq ptr %303, null
  br i1 %304, label %307, label %305

305:                                              ; preds = %302
  %306 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %303)
  br label %307

307:                                              ; preds = %285, %296, %302, %305
  %308 = phi i32 [ %239, %305 ], [ %239, %302 ], [ %280, %296 ], [ %280, %285 ]
  %309 = phi i32 [ %238, %305 ], [ %238, %302 ], [ %294, %296 ], [ %294, %285 ]
  %310 = phi i32 [ %237, %305 ], [ %237, %302 ], [ %301, %296 ], [ %237, %285 ]
  %311 = getelementptr inbounds %struct.ddg_edge, ptr %236, i64 0, i32 6
  %312 = load ptr, ptr %311, align 8, !tbaa !13
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %235, !llvm.loop !197

314:                                              ; preds = %307, %228
  %315 = phi i32 [ -2147483648, %228 ], [ %308, %307 ]
  %316 = phi i32 [ 0, %228 ], [ %309, %307 ]
  %317 = phi i32 [ 2147483647, %228 ], [ %310, %307 ]
  %318 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 4
  %319 = load ptr, ptr %318, align 8, !tbaa !13
  %320 = icmp eq ptr %319, null
  br i1 %320, label %404, label %321

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 1
  br label %323

323:                                              ; preds = %321, %397
  %324 = phi ptr [ %319, %321 ], [ %402, %397 ]
  %325 = phi i32 [ -2147483648, %321 ], [ %400, %397 ]
  %326 = phi i32 [ 0, %321 ], [ %399, %397 ]
  %327 = phi i32 [ 2147483647, %321 ], [ %398, %397 ]
  %328 = getelementptr inbounds %struct.ddg_edge, ptr %324, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !135
  %330 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %331 = icmp eq ptr %330, null
  br i1 %331, label %346, label %332

332:                                              ; preds = %323
  %333 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr nonnull %330)
  %334 = load ptr, ptr @dump_file, align 8, !tbaa !13
  tail call void @print_ddg_edge(ptr noundef %334, ptr noundef nonnull %324) #22
  %335 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %336 = load i32, ptr %17, align 8, !tbaa !68
  %337 = load ptr, ptr %322, align 8, !tbaa !16
  %338 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1
  %339 = load i32, ptr %338, align 8, !tbaa !18
  %340 = load i32, ptr %329, align 8, !tbaa !68
  %341 = getelementptr inbounds %struct.ddg_node, ptr %329, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !16
  %343 = getelementptr inbounds %struct.rtx_def, ptr %342, i64 0, i32 1
  %344 = load i32, ptr %343, align 8, !tbaa !18
  %345 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef nonnull @.str.60, i32 noundef %336, i32 noundef %339, i32 noundef %340, i32 noundef %344) #21
  br label %346

346:                                              ; preds = %332, %323
  %347 = load i32, ptr %329, align 8, !tbaa !68
  %348 = lshr i32 %347, 6
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %349
  %351 = load i64, ptr %350, align 8, !tbaa !108
  %352 = and i32 %347, 63
  %353 = zext nneg i32 %352 to i64
  %354 = shl nuw i64 1, %353
  %355 = and i64 %354, %351
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %392, label %357

357:                                              ; preds = %346
  %358 = getelementptr inbounds %struct.ddg_node, ptr %329, i64 0, i32 7
  %359 = load ptr, ptr %358, align 8, !tbaa !18
  %360 = getelementptr inbounds %struct.node_sched_params, ptr %359, i64 0, i32 1
  %361 = load i32, ptr %360, align 4, !tbaa !115
  %362 = getelementptr inbounds %struct.ddg_edge, ptr %324, i64 0, i32 4
  %363 = load i32, ptr %362, align 8, !tbaa !163
  %364 = sub i32 %361, %363
  %365 = getelementptr inbounds %struct.ddg_edge, ptr %324, i64 0, i32 5
  %366 = load i32, ptr %365, align 4, !tbaa !137
  %367 = mul nsw i32 %366, %4
  %368 = add nsw i32 %364, %367
  %369 = tail call i32 @llvm.smin.i32(i32 %327, i32 %368)
  %370 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %371 = icmp eq ptr %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %357
  %373 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %370, ptr noundef nonnull @.str.56, i32 noundef %361, i32 noundef %369, i32 noundef %363) #21
  br label %374

374:                                              ; preds = %372, %357
  %375 = getelementptr inbounds %struct.ddg_edge, ptr %324, i64 0, i32 2
  %376 = load i32, ptr %375, align 8, !tbaa !133
  %377 = icmp eq i32 %376, 0
  %378 = getelementptr inbounds %struct.ddg_edge, ptr %324, i64 0, i32 3
  %379 = load i32, ptr %378, align 4, !tbaa !194
  %380 = icmp eq i32 %379, 1
  %381 = and i1 %377, %380
  %382 = zext i1 %381 to i32
  %383 = add nsw i32 %326, %382
  %384 = icmp eq i32 %379, 2
  br i1 %384, label %385, label %397

385:                                              ; preds = %374
  %386 = load ptr, ptr %358, align 8, !tbaa !18
  %387 = getelementptr inbounds %struct.node_sched_params, ptr %386, i64 0, i32 1
  %388 = load i32, ptr %387, align 4, !tbaa !115
  %389 = sub i32 %388, %4
  %390 = add i32 %389, 1
  %391 = tail call i32 @llvm.smax.i32(i32 %325, i32 %390)
  br label %397

392:                                              ; preds = %346
  %393 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %394 = icmp eq ptr %393, null
  br i1 %394, label %397, label %395

395:                                              ; preds = %392
  %396 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 26, i64 1, ptr nonnull %393)
  br label %397

397:                                              ; preds = %374, %385, %392, %395
  %398 = phi i32 [ %327, %395 ], [ %327, %392 ], [ %369, %385 ], [ %369, %374 ]
  %399 = phi i32 [ %326, %395 ], [ %326, %392 ], [ %383, %385 ], [ %383, %374 ]
  %400 = phi i32 [ %325, %395 ], [ %325, %392 ], [ %391, %385 ], [ %325, %374 ]
  %401 = getelementptr inbounds %struct.ddg_edge, ptr %324, i64 0, i32 7
  %402 = load ptr, ptr %401, align 8, !tbaa !13
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %323, !llvm.loop !198

404:                                              ; preds = %397, %314
  %405 = phi i32 [ 2147483647, %314 ], [ %398, %397 ]
  %406 = phi i32 [ 0, %314 ], [ %399, %397 ]
  %407 = phi i32 [ -2147483648, %314 ], [ %400, %397 ]
  %408 = tail call i32 @llvm.smax.i32(i32 %407, i32 %315)
  %409 = add nsw i32 %315, %4
  %410 = add nsw i32 %405, 1
  %411 = icmp sgt i32 %409, %405
  %412 = select i1 %411, i32 %410, i32 %409
  %413 = tail call i32 @llvm.smin.i32(i32 %317, i32 %412)
  %414 = icmp slt i32 %406, %316
  %415 = add nsw i32 %413, -1
  %416 = add nsw i32 %408, -1
  %417 = select i1 %414, i32 %413, i32 %416
  %418 = select i1 %414, i32 1, i32 -1
  %419 = select i1 %414, i32 %408, i32 %415
  br label %425

420:                                              ; preds = %225
  %421 = getelementptr inbounds %struct.ddg_node, ptr %15, i64 %16, i32 7
  %422 = load ptr, ptr %421, align 8, !tbaa !18
  %423 = load i32, ptr %422, align 8, !tbaa !104
  %424 = add nsw i32 %423, %4
  br label %425

425:                                              ; preds = %211, %218, %111, %118, %420, %404
  %426 = phi i32 [ %417, %404 ], [ %424, %420 ], [ %115, %118 ], [ %115, %111 ], [ %215, %218 ], [ %215, %211 ]
  %427 = phi i32 [ %418, %404 ], [ 1, %420 ], [ 1, %118 ], [ 1, %111 ], [ -1, %218 ], [ -1, %211 ]
  %428 = phi i32 [ %419, %404 ], [ %423, %420 ], [ %112, %118 ], [ %112, %111 ], [ %212, %218 ], [ %212, %211 ]
  store i32 %428, ptr %5, align 4, !tbaa !23
  store i32 %427, ptr %6, align 4, !tbaa !23
  store i32 %426, ptr %7, align 4, !tbaa !23
  %429 = load ptr, ptr %20, align 8, !tbaa !113
  tail call void @free(ptr noundef %429) #21
  tail call void @free(ptr noundef %20) #21
  %430 = load ptr, ptr %24, align 8, !tbaa !113
  tail call void @free(ptr noundef %430) #21
  tail call void @free(ptr noundef %24) #21
  %431 = icmp sge i32 %428, %426
  %432 = icmp eq i32 %427, 1
  %433 = and i1 %432, %431
  br i1 %433, label %438, label %434

434:                                              ; preds = %425
  %435 = icmp sle i32 %428, %426
  %436 = icmp eq i32 %427, -1
  %437 = and i1 %436, %435
  br i1 %437, label %438, label %443

438:                                              ; preds = %434, %425
  %439 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %440 = icmp eq ptr %439, null
  br i1 %440, label %443, label %441

441:                                              ; preds = %438
  %442 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %439, ptr noundef nonnull @.str.61, i32 noundef %428, i32 noundef %426, i32 noundef %427) #21
  br label %443

443:                                              ; preds = %434, %438, %441
  %444 = phi i32 [ -1, %441 ], [ -1, %438 ], [ 0, %434 ]
  ret i32 %444
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calculate_must_precede_follow(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) unnamed_addr #4 {
  %9 = icmp ne ptr %6, null
  %10 = icmp ne ptr %7, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1618, ptr noundef nonnull @.str.9) #22
  br label %13

13:                                               ; preds = %8, %12
  %14 = icmp eq i32 %3, 1
  %15 = sub nsw i32 %2, %3
  %16 = select i1 %14, i32 %1, i32 %15
  %17 = select i1 %14, i32 %15, i32 %1
  tail call void @sbitmap_zero(ptr noundef %6) #22
  tail call void @sbitmap_zero(ptr noundef %7) #22
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 15, i64 1, ptr nonnull %18)
  br label %22

22:                                               ; preds = %20, %13
  %23 = getelementptr inbounds %struct.ddg_node, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %22, %58
  %27 = phi ptr [ %60, %58 ], [ %24, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = load i32, ptr %28, align 8, !tbaa !68
  %30 = lshr i32 %29, 6
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !108
  %34 = and i32 %29, 63
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = and i64 %36, %33
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.ddg_node, ptr %28, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  %42 = getelementptr inbounds %struct.node_sched_params, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !115
  %44 = getelementptr inbounds %struct.ddg_edge, ptr %27, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !137
  %46 = mul nsw i32 %45, %4
  %47 = sub nsw i32 %43, %46
  %48 = icmp eq i32 %47, %16
  br i1 %48, label %49, label %58

49:                                               ; preds = %39
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.45, i32 noundef %29) #21
  %54 = load ptr, ptr %27, align 8, !tbaa !136
  %55 = load i32, ptr %54, align 8, !tbaa !68
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %55, %52 ], [ %29, %49 ]
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %57) #21
  br label %58

58:                                               ; preds = %26, %39, %56
  %59 = getelementptr inbounds %struct.ddg_edge, ptr %27, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %26, !llvm.loop !199

62:                                               ; preds = %58, %22
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 14, i64 1, ptr nonnull %63)
  br label %67

67:                                               ; preds = %65, %62
  %68 = getelementptr inbounds %struct.ddg_node, ptr %0, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !13
  %70 = icmp eq ptr %69, null
  br i1 %70, label %108, label %71

71:                                               ; preds = %67, %104
  %72 = phi ptr [ %106, %104 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.ddg_edge, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !135
  %75 = load i32, ptr %74, align 8, !tbaa !68
  %76 = lshr i32 %75, 6
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !108
  %80 = and i32 %75, 63
  %81 = zext nneg i32 %80 to i64
  %82 = shl nuw i64 1, %81
  %83 = and i64 %82, %79
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.ddg_node, ptr %74, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = getelementptr inbounds %struct.node_sched_params, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !115
  %90 = getelementptr inbounds %struct.ddg_edge, ptr %72, i64 0, i32 5
  %91 = load i32, ptr %90, align 4, !tbaa !137
  %92 = mul nsw i32 %91, %4
  %93 = add nsw i32 %92, %89
  %94 = icmp eq i32 %93, %17
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %96, ptr noundef nonnull @.str.45, i32 noundef %75) #21
  %100 = load ptr, ptr %73, align 8, !tbaa !135
  %101 = load i32, ptr %100, align 8, !tbaa !68
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i32 [ %101, %98 ], [ %75, %95 ]
  tail call fastcc void @SET_BIT(ptr noundef %7, i32 noundef %103) #21
  br label %104

104:                                              ; preds = %71, %85, %102
  %105 = getelementptr inbounds %struct.ddg_edge, ptr %72, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %71, !llvm.loop !200

108:                                              ; preds = %104, %67
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = tail call i32 @fputc(i32 10, ptr nonnull %109)
  br label %113

113:                                              ; preds = %111, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_scheduling_node_in_cycle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr noundef %6, ptr noundef %7) unnamed_addr #4 {
  tail call fastcc void @verify_partial_schedule(ptr noundef %0, ptr noundef %4) #21
  %9 = tail call fastcc ptr @ps_add_node_check_conflicts(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %6, ptr noundef %7) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ddg_node, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.node_sched_params, ptr %13, i64 0, i32 1
  store i32 %3, ptr %14, align 4, !tbaa !115
  tail call fastcc void @SET_BIT(ptr noundef %4, i32 noundef %2) #21
  store i32 0, ptr %5, align 4, !tbaa !23
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %15, ptr noundef nonnull @.str.64, i32 noundef %3) #21
  br label %19

19:                                               ; preds = %11, %17, %8
  %20 = phi i8 [ 1, %17 ], [ 1, %11 ], [ 0, %8 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_partial_schedule(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %5, %52
  %10 = phi i32 [ %3, %5 ], [ %53, %52 ]
  %11 = phi i64 [ 0, %5 ], [ %54, %52 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !12
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %9, %46
  %17 = phi ptr [ %48, %46 ], [ %14, %9 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = load i32, ptr %18, align 8, !tbaa !68
  %20 = lshr i32 %19, 6
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !108
  %24 = and i32 %19, 63
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %23
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2023, ptr noundef nonnull @.str.9) #22
  br label %30

30:                                               ; preds = %16, %29
  %31 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct.node_sched_params, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !115
  %35 = load i32, ptr %7, align 8, !tbaa !66
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2026, ptr noundef nonnull @.str.9) #22
  %38 = load ptr, ptr %31, align 8, !tbaa !18
  %39 = getelementptr inbounds %struct.node_sched_params, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !115
  br label %41

41:                                               ; preds = %30, %37
  %42 = phi i32 [ %34, %30 ], [ %40, %37 ]
  %43 = load i32, ptr %8, align 4, !tbaa !65
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2027, ptr noundef nonnull @.str.9) #22
  br label %46

46:                                               ; preds = %41, %45
  %47 = getelementptr inbounds %struct.ps_insn, ptr %17, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %16, !llvm.loop !201

50:                                               ; preds = %46
  %51 = load i32, ptr %0, align 8, !tbaa !6
  br label %52

52:                                               ; preds = %50, %9
  %53 = phi i32 [ %51, %50 ], [ %10, %9 ]
  %54 = add nuw nsw i64 %11, 1
  %55 = sext i32 %53 to i64
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %9, label %57, !llvm.loop !202

57:                                               ; preds = %52, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_partial_schedule(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  tail call fastcc void @free_ps_insns(ptr noundef nonnull %0) #21
  %5 = load i32, ptr %0, align 8, !tbaa !6
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = sext i32 %1 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xrealloc(ptr noundef %9, i64 noundef %11) #22
  store ptr %12, ptr %8, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %11, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  store i32 2147483647, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  store i32 -2147483648, ptr %14, align 4, !tbaa !65
  br label %15

15:                                               ; preds = %4, %2, %7
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc i32 @compute_split_row(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %5, %41
  %10 = phi ptr [ %45, %41 ], [ %7, %5 ]
  %11 = phi ptr [ %43, %41 ], [ null, %5 ]
  %12 = phi i32 [ %42, %41 ], [ -2147483648, %5 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !136
  %14 = load i32, ptr %13, align 8, !tbaa !68
  %15 = lshr i32 %14, 6
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !108
  %19 = and i32 %14, 63
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = and i64 %21, %18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.ddg_node, ptr %13, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !115
  %29 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !163
  %31 = add nsw i32 %30, %28
  %32 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !137
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
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %9, !llvm.loop !203

47:                                               ; preds = %41
  %48 = icmp eq ptr %43, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ddg_node, ptr %43, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  %52 = getelementptr inbounds %struct.node_sched_params, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !115
  %54 = add nsw i32 %53, 1
  br label %114

55:                                               ; preds = %5, %47
  %56 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %105, label %59

59:                                               ; preds = %55, %92
  %60 = phi ptr [ %96, %92 ], [ %57, %55 ]
  %61 = phi ptr [ %94, %92 ], [ null, %55 ]
  %62 = phi i32 [ %93, %92 ], [ 2147483647, %55 ]
  %63 = getelementptr inbounds %struct.ddg_edge, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !135
  %65 = load i32, ptr %64, align 8, !tbaa !68
  %66 = lshr i32 %65, 6
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !108
  %70 = and i32 %65, 63
  %71 = zext nneg i32 %70 to i64
  %72 = shl nuw i64 1, %71
  %73 = and i64 %72, %69
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.ddg_node, ptr %64, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !18
  %78 = getelementptr inbounds %struct.node_sched_params, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !115
  %80 = getelementptr inbounds %struct.ddg_edge, ptr %60, i64 0, i32 4
  %81 = load i32, ptr %80, align 8, !tbaa !163
  %82 = sub i32 %79, %81
  %83 = getelementptr inbounds %struct.ddg_edge, ptr %60, i64 0, i32 5
  %84 = load i32, ptr %83, align 4, !tbaa !137
  %85 = mul nsw i32 %84, %3
  %86 = add nsw i32 %82, %85
  %87 = icmp eq i32 %86, %2
  %88 = icmp slt i32 %79, %62
  %89 = select i1 %87, i1 %88, i1 false
  %90 = select i1 %89, i32 %79, i32 %62
  %91 = select i1 %89, ptr %64, ptr %61
  br label %92

92:                                               ; preds = %75, %59
  %93 = phi i32 [ %62, %59 ], [ %90, %75 ]
  %94 = phi ptr [ %61, %59 ], [ %91, %75 ]
  %95 = getelementptr inbounds %struct.ddg_edge, ptr %60, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !13
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %59, !llvm.loop !204

98:                                               ; preds = %92
  %99 = icmp eq ptr %94, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.ddg_node, ptr %94, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !18
  %103 = getelementptr inbounds %struct.node_sched_params, ptr %102, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !115
  br label %114

105:                                              ; preds = %55, %98
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 38, i64 1, ptr nonnull %106)
  br label %110

110:                                              ; preds = %108, %105
  %111 = add i32 %1, 1
  %112 = add i32 %111, %2
  %113 = sdiv i32 %112, 2
  br label %114

114:                                              ; preds = %110, %100, %49
  %115 = phi i32 [ %113, %110 ], [ %104, %100 ], [ %54, %49 ]
  %116 = srem i32 %115, %3
  %117 = icmp slt i32 %116, 0
  %118 = select i1 %117, i32 %3, i32 0
  %119 = add nsw i32 %118, %116
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ps_insert_empty_row(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load i32, ptr %0, align 8, !tbaa !6
  %5 = add nsw i32 %4, 1
  tail call fastcc void @verify_partial_schedule(ptr noundef nonnull %0, ptr noundef %2) #21
  %6 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = sub nsw i32 %1, %7
  %9 = srem i32 %8, %4
  %10 = icmp slt i32 %9, 0
  %11 = select i1 %10, i32 %4, i32 0
  %12 = add i32 %11, %9
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.66, i32 noundef %12) #21
  br label %17

17:                                               ; preds = %15, %3
  tail call fastcc void @normalize_sched_times(ptr noundef nonnull %0) #21
  %18 = load i32, ptr %6, align 8, !tbaa !66
  tail call fastcc void @rotate_partial_schedule(ptr noundef nonnull %0, i32 noundef %18) #21
  %19 = sext i32 %5 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 8) #22
  %21 = icmp sgt i32 %12, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %24 = zext nneg i32 %12 to i64
  br label %25

25:                                               ; preds = %22, %54
  %26 = phi i64 [ 0, %22 ], [ %55, %54 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !12
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds ptr, ptr %20, i64 %26
  store ptr %29, ptr %30, align 8, !tbaa !13
  %31 = load ptr, ptr %23, align 8, !tbaa !12
  %32 = getelementptr inbounds ptr, ptr %31, i64 %26
  store ptr null, ptr %32, align 8, !tbaa !13
  %33 = load ptr, ptr %30, align 8, !tbaa !13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %25, %35
  %36 = phi ptr [ %52, %35 ], [ %33, %25 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct.ddg_node, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct.node_sched_params, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !115
  %42 = sdiv i32 %41, %4
  %43 = add nsw i32 %42, %41
  store i32 %43, ptr %40, align 4, !tbaa !115
  %44 = getelementptr inbounds %struct.ps_insn, ptr %36, i64 0, i32 1
  store i32 %43, ptr %44, align 8, !tbaa !205
  %45 = srem i32 %43, %5
  %46 = load ptr, ptr %38, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.node_sched_params, ptr %46, i64 0, i32 4
  store i32 %45, ptr %47, align 4, !tbaa !116
  %48 = sdiv i32 %43, %5
  %49 = load ptr, ptr %38, align 8, !tbaa !18
  %50 = getelementptr inbounds %struct.node_sched_params, ptr %49, i64 0, i32 5
  store i32 %48, ptr %50, align 8, !tbaa !117
  %51 = getelementptr inbounds %struct.ps_insn, ptr %36, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %35, !llvm.loop !206

54:                                               ; preds = %35, %25
  %55 = add nuw nsw i64 %26, 1
  %56 = icmp eq i64 %55, %24
  br i1 %56, label %57, label %25, !llvm.loop !207

57:                                               ; preds = %54, %17
  %58 = sext i32 %12 to i64
  %59 = getelementptr inbounds ptr, ptr %20, i64 %58
  store ptr null, ptr %59, align 8, !tbaa !13
  %60 = icmp slt i32 %12, %4
  br i1 %60, label %61, label %97

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %63 = sext i32 %4 to i64
  br label %66

64:                                               ; preds = %77, %66
  %65 = icmp slt i64 %71, %63
  br i1 %65, label %66, label %97, !llvm.loop !208

66:                                               ; preds = %61, %64
  %67 = phi i64 [ %58, %61 ], [ %71, %64 ]
  %68 = load ptr, ptr %62, align 8, !tbaa !12
  %69 = getelementptr inbounds ptr, ptr %68, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !13
  %71 = add nsw i64 %67, 1
  %72 = getelementptr inbounds ptr, ptr %20, i64 %71
  store ptr %70, ptr %72, align 8, !tbaa !13
  %73 = load ptr, ptr %62, align 8, !tbaa !12
  %74 = getelementptr inbounds ptr, ptr %73, i64 %67
  store ptr null, ptr %74, align 8, !tbaa !13
  %75 = load ptr, ptr %72, align 8, !tbaa !13
  %76 = icmp eq ptr %75, null
  br i1 %76, label %64, label %77

77:                                               ; preds = %66, %77
  %78 = phi ptr [ %95, %77 ], [ %75, %66 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = getelementptr inbounds %struct.ddg_node, ptr %79, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !18
  %82 = getelementptr inbounds %struct.node_sched_params, ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !115
  %84 = sdiv i32 %83, %4
  %85 = add i32 %83, 1
  %86 = add i32 %85, %84
  store i32 %86, ptr %82, align 4, !tbaa !115
  %87 = getelementptr inbounds %struct.ps_insn, ptr %78, i64 0, i32 1
  store i32 %86, ptr %87, align 8, !tbaa !205
  %88 = srem i32 %86, %5
  %89 = load ptr, ptr %80, align 8, !tbaa !18
  %90 = getelementptr inbounds %struct.node_sched_params, ptr %89, i64 0, i32 4
  store i32 %88, ptr %90, align 4, !tbaa !116
  %91 = sdiv i32 %86, %5
  %92 = load ptr, ptr %80, align 8, !tbaa !18
  %93 = getelementptr inbounds %struct.node_sched_params, ptr %92, i64 0, i32 5
  store i32 %91, ptr %93, align 8, !tbaa !117
  %94 = getelementptr inbounds %struct.ps_insn, ptr %78, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !13
  %96 = icmp eq ptr %95, null
  br i1 %96, label %64, label %77, !llvm.loop !209

97:                                               ; preds = %64, %57
  %98 = load i32, ptr %6, align 8, !tbaa !66
  %99 = sdiv i32 %98, %4
  %100 = add nsw i32 %99, %98
  %101 = srem i32 %98, %4
  %102 = icmp slt i32 %101, 0
  %103 = select i1 %102, i32 %4, i32 0
  %104 = add nsw i32 %103, %101
  %105 = icmp sge i32 %104, %12
  %106 = zext i1 %105 to i32
  %107 = add nsw i32 %100, %106
  store i32 %107, ptr %6, align 8, !tbaa !66
  %108 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  %109 = load i32, ptr %108, align 4, !tbaa !65
  %110 = sdiv i32 %109, %4
  %111 = add nsw i32 %110, %109
  %112 = srem i32 %109, %4
  %113 = icmp slt i32 %112, 0
  %114 = select i1 %113, i32 %4, i32 0
  %115 = add nsw i32 %114, %112
  %116 = icmp sge i32 %115, %12
  %117 = zext i1 %116 to i32
  %118 = add nsw i32 %111, %117
  store i32 %118, ptr %108, align 4, !tbaa !65
  %119 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !12
  tail call void @free(ptr noundef %120) #21
  store ptr %20, ptr %119, align 8, !tbaa !12
  store i32 %5, ptr %0, align 8, !tbaa !6
  %121 = load i32, ptr %6, align 8, !tbaa !66
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %124, label %123

123:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1945, ptr noundef nonnull @.str.9) #22
  br label %124

124:                                              ; preds = %97, %123
  tail call fastcc void @verify_partial_schedule(ptr noundef nonnull %0, ptr noundef %2) #21
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !13
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %6, align 8, !tbaa !66
  %129 = load i32, ptr %108, align 4, !tbaa !65
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %125, ptr noundef nonnull @.str.67, i32 noundef %128, i32 noundef %129) #21
  br label %131

131:                                              ; preds = %127, %124
  ret void
}

; Function Attrs: optsize
declare void @print_ddg_edge(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ps_add_node_check_conflicts(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 {
  %6 = tail call fastcc ptr @add_node_to_ps(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @ps_has_conflicts(ptr noundef %0, i32 noundef %2, i32 noundef %2) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !193
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = sub nsw i32 %2, %13
  %17 = add nsw i32 %13, %2
  %18 = tail call fastcc i32 @ps_has_conflicts(ptr noundef nonnull %0, i32 noundef %16, i32 noundef %17) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %8, %15
  %21 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 1
  %22 = tail call fastcc i32 @ps_insn_advance_column(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %4) #21, !range !91
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20, %35
  %25 = tail call fastcc i32 @ps_has_conflicts(ptr noundef %0, i32 noundef %2, i32 noundef %2) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, ptr %21, align 4, !tbaa !193
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = sub nsw i32 %2, %28
  %32 = add nsw i32 %28, %2
  %33 = tail call fastcc i32 @ps_has_conflicts(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %32) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %24, %30
  %36 = tail call fastcc i32 @ps_insn_advance_column(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %4) #21, !range !91
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %24, !llvm.loop !210

38:                                               ; preds = %35, %20
  tail call fastcc void @remove_node_from_ps(ptr noundef %0, ptr noundef nonnull %6) #21
  br label %46

39:                                               ; preds = %27, %30, %11, %15
  %40 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !66
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %2)
  store i32 %42, ptr %40, align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !65
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 %2)
  store i32 %45, ptr %43, align 4, !tbaa !65
  br label %46

46:                                               ; preds = %5, %39, %38
  %47 = phi ptr [ null, %38 ], [ %6, %39 ], [ null, %5 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @add_node_to_ps(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 {
  %6 = load i32, ptr %0, align 8, !tbaa !6
  %7 = srem i32 %2, %6
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %6, i32 0
  %10 = add nsw i32 %9, %7
  %11 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ps_insn, ptr %15, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !211
  %20 = load i32, ptr @issue_rate, align 4, !tbaa !23
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = add nsw i32 %19, 1
  br label %24

24:                                               ; preds = %5, %22
  %25 = phi i32 [ %23, %22 ], [ 1, %5 ]
  %26 = tail call fastcc ptr @create_ps_insn(ptr noundef %1, i32 noundef %25, i32 noundef %2) #21
  %27 = tail call fastcc zeroext i8 @ps_insn_find_column(ptr noundef nonnull %0, ptr noundef %26, ptr noundef %3, ptr noundef %4) #21, !range !52
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @free(ptr noundef %26) #21
  br label %30

30:                                               ; preds = %24, %17, %29
  %31 = phi ptr [ null, %29 ], [ null, %17 ], [ %26, %24 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ps_has_conflicts(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr @curr_state, align 8, !tbaa !13
  tail call void @state_reset(ptr noundef %4) #22
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %65, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %62
  %9 = phi i32 [ %1, %6 ], [ %63, %62 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !12
  %11 = load i32, ptr %0, align 8, !tbaa !6
  %12 = srem i32 %9, %11
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %13, i32 %11, i32 0
  %15 = add nsw i32 %14, %12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %10, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %62, label %20

20:                                               ; preds = %8
  %21 = load i32, ptr @issue_rate, align 4, !tbaa !23
  br label %22

22:                                               ; preds = %20, %57
  %23 = phi ptr [ %60, %57 ], [ %18, %20 ]
  %24 = phi i32 [ %58, %57 ], [ %21, %20 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.ddg_node, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -11
  %31 = icmp ult i32 %30, -3
  br i1 %31, label %57, label %32

32:                                               ; preds = %22
  %33 = icmp eq i32 %24, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @curr_state, align 8, !tbaa !13
  %36 = tail call i32 @state_dead_lock_p(ptr noundef %35) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = load ptr, ptr @curr_state, align 8, !tbaa !13
  %40 = tail call i32 @state_transition(ptr noundef %39, ptr noundef nonnull %27) #22
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %65, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 3), align 8, !tbaa !212
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @sched_dump, align 8, !tbaa !13
  %47 = load i32, ptr @sched_verbose, align 4, !tbaa !23
  %48 = tail call i32 %43(ptr noundef %46, i32 noundef %47, ptr noundef nonnull %27, i32 noundef %24) #22
  br label %57

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !18
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65534
  %54 = icmp ne i32 %53, 24
  %55 = sext i1 %54 to i32
  %56 = add nsw i32 %24, %55
  br label %57

57:                                               ; preds = %22, %45, %49
  %58 = phi i32 [ %56, %49 ], [ %48, %45 ], [ %24, %22 ]
  %59 = getelementptr inbounds %struct.ps_insn, ptr %23, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %22, !llvm.loop !213

62:                                               ; preds = %57, %8
  tail call fastcc void @advance_one_cycle() #21
  %63 = add i32 %9, 1
  %64 = icmp eq i32 %9, %2
  br i1 %64, label %65, label %8, !llvm.loop !214

65:                                               ; preds = %62, %34, %32, %38, %3
  %66 = phi i32 [ 0, %3 ], [ 1, %38 ], [ 1, %32 ], [ 1, %34 ], [ 0, %62 ]
  ret i32 %66
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @ps_insn_advance_column(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #16 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !205
  %8 = load i32, ptr %0, align 8, !tbaa !6
  %9 = srem i32 %7, %8
  %10 = icmp slt i32 %9, 0
  %11 = select i1 %10, i32 %8, i32 0
  %12 = add nsw i32 %11, %9
  %13 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %5
  %17 = icmp eq ptr %2, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %14, align 8, !tbaa !14
  %20 = load i32, ptr %19, align 8, !tbaa !68
  %21 = lshr i32 %20, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !108
  %25 = and i32 %20, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %18, %16
  %31 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !215
  %33 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  %35 = sext i32 %12 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store ptr %14, ptr %36, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %39, %30
  %41 = getelementptr inbounds %struct.ps_insn, ptr %14, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  store ptr %42, ptr %13, align 8, !tbaa !19
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ps_insn, ptr %42, i64 0, i32 3
  store ptr %1, ptr %45, align 8, !tbaa !215
  br label %46

46:                                               ; preds = %44, %40
  store ptr %1, ptr %41, align 8, !tbaa !19
  store ptr %14, ptr %31, align 8, !tbaa !215
  %47 = getelementptr inbounds %struct.ps_insn, ptr %14, i64 0, i32 3
  store ptr %32, ptr %47, align 8, !tbaa !215
  %48 = icmp eq ptr %32, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ps_insn, ptr %32, i64 0, i32 2
  store ptr %14, ptr %50, align 8, !tbaa !19
  br label %51

51:                                               ; preds = %46, %49, %18, %5, %3
  %52 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 0, %18 ], [ 1, %49 ], [ 1, %46 ]
  ret i32 %52
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @remove_node_from_ps(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #14 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !215
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !205
  %11 = load i32, ptr %0, align 8, !tbaa !6
  %12 = srem i32 %10, %11
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %13, i32 %11, i32 0
  %15 = add nsw i32 %14, %12
  %16 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %39

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  store ptr %24, ptr %19, align 8, !tbaa !13
  %25 = load ptr, ptr %16, align 8, !tbaa !12
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %34

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.ps_insn, ptr %6, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !19
  %33 = icmp eq ptr %31, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %22
  %35 = phi ptr [ %27, %22 ], [ %31, %29 ]
  %36 = phi ptr [ null, %22 ], [ %6, %29 ]
  %37 = getelementptr inbounds %struct.ps_insn, ptr %35, i64 0, i32 3
  store ptr %36, ptr %37, align 8, !tbaa !215
  br label %38

38:                                               ; preds = %34, %29, %22
  tail call void @free(ptr noundef nonnull %1) #21
  br label %39

39:                                               ; preds = %8, %2, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_ps_insn(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = tail call ptr @xmalloc(i64 noundef 40) #22
  store ptr %0, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.ps_insn, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ps_insn, ptr %4, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %1, ptr %6, align 8, !tbaa !211
  %7 = getelementptr inbounds %struct.ps_insn, ptr %4, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !205
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ps_insn_find_column(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) unnamed_addr #8 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %85, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !205
  %9 = load i32, ptr %0, align 8, !tbaa !6
  %10 = srem i32 %8, %9
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %9, i32 0
  %13 = add nsw i32 %12, %10
  %14 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 2
  store ptr %18, ptr %21, align 8, !tbaa !19
  br label %70

22:                                               ; preds = %6
  %23 = icmp eq ptr %3, null
  %24 = icmp eq ptr %2, null
  br label %25

25:                                               ; preds = %22, %60
  %26 = phi ptr [ %18, %22 ], [ %63, %60 ]
  %27 = phi ptr [ null, %22 ], [ %61, %60 ]
  %28 = phi ptr [ null, %22 ], [ %45, %60 ]
  br i1 %23, label %44, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %26, align 8, !tbaa !14
  %31 = load i32, ptr %30, align 8, !tbaa !68
  %32 = lshr i32 %31, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !108
  %36 = and i32 %31, 63
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = and i64 %38, %35
  %40 = icmp eq i64 %39, 0
  %41 = icmp ne ptr %28, null
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, ptr %28, ptr %26
  br label %44

44:                                               ; preds = %29, %25
  %45 = phi ptr [ %28, %25 ], [ %43, %29 ]
  br i1 %24, label %60, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %26, align 8, !tbaa !14
  %48 = load i32, ptr %47, align 8, !tbaa !68
  %49 = lshr i32 %48, 6
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !108
  %53 = and i32 %48, 63
  %54 = zext nneg i32 %53 to i64
  %55 = shl nuw i64 1, %54
  %56 = and i64 %55, %52
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %46
  %59 = icmp eq ptr %45, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %58, %44, %46
  %61 = phi ptr [ %27, %46 ], [ %27, %44 ], [ %26, %58 ]
  %62 = getelementptr inbounds %struct.ps_insn, ptr %26, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %25, !llvm.loop !216

65:                                               ; preds = %60
  %66 = icmp eq ptr %61, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 2
  store ptr %18, ptr %68, align 8, !tbaa !19
  %69 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 3
  store ptr null, ptr %69, align 8, !tbaa !215
  br i1 %19, label %83, label %70

70:                                               ; preds = %67, %20
  %71 = phi ptr [ %1, %20 ], [ %18, %67 ]
  %72 = phi ptr [ null, %20 ], [ %1, %67 ]
  %73 = getelementptr inbounds %struct.ps_insn, ptr %71, i64 0, i32 3
  store ptr %72, ptr %73, align 8, !tbaa !215
  br label %83

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.ps_insn, ptr %61, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !19
  %77 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 2
  store ptr %76, ptr %77, align 8, !tbaa !19
  store ptr %1, ptr %75, align 8, !tbaa !19
  %78 = getelementptr inbounds %struct.ps_insn, ptr %1, i64 0, i32 3
  store ptr %61, ptr %78, align 8, !tbaa !215
  %79 = load ptr, ptr %77, align 8, !tbaa !19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.ps_insn, ptr %79, i64 0, i32 3
  br label %83

83:                                               ; preds = %67, %70, %81
  %84 = phi ptr [ %82, %81 ], [ %17, %70 ], [ %17, %67 ]
  store ptr %1, ptr %84, align 8, !tbaa !13
  br label %85

85:                                               ; preds = %58, %83, %74, %4
  %86 = phi i8 [ 0, %4 ], [ 1, %74 ], [ 1, %83 ], [ 0, %58 ]
  ret i8 %86
}

; Function Attrs: optsize
declare void @state_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @state_dead_lock_p(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @state_transition(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @advance_one_cycle() unnamed_addr #4 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 12), align 8, !tbaa !217
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @curr_state, align 8, !tbaa !13
  %5 = tail call ptr %1() #22
  %6 = tail call i32 @state_transition(ptr noundef %4, ptr noundef %5) #22
  br label %7

7:                                                ; preds = %3, %0
  %8 = load ptr, ptr @curr_state, align 8, !tbaa !13
  %9 = tail call i32 @state_transition(ptr noundef %8, ptr noundef null) #22
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 14), align 8, !tbaa !218
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @curr_state, align 8, !tbaa !13
  %14 = tail call ptr %10() #22
  %15 = tail call i32 @state_transition(ptr noundef %13, ptr noundef %14) #22
  br label %16

16:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ps_insns(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %4, %25
  %7 = phi i32 [ %2, %4 ], [ %26, %25 ]
  %8 = phi i64 [ 0, %4 ], [ %29, %25 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !12
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %21, %13 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.ps_insn, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  tail call void @free(ptr noundef nonnull %14) #21
  %17 = load ptr, ptr %5, align 8, !tbaa !12
  %18 = getelementptr inbounds ptr, ptr %17, i64 %8
  store ptr %16, ptr %18, align 8, !tbaa !13
  %19 = load ptr, ptr %5, align 8, !tbaa !12
  %20 = getelementptr inbounds ptr, ptr %19, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !219

23:                                               ; preds = %13
  %24 = load i32, ptr %0, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %23, %6
  %26 = phi i32 [ %7, %6 ], [ %24, %23 ]
  %27 = phi ptr [ %9, %6 ], [ %19, %23 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %8
  store ptr null, ptr %28, align 8, !tbaa !13
  %29 = add nuw nsw i64 %8, 1
  %30 = sext i32 %26 to i64
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %6, label %32, !llvm.loop !220

32:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #12 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !52
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !13
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #4 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 738, ptr noundef nonnull @.str.9) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !221
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #4 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #4 {
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
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 687, ptr noundef nonnull @.str.9) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !13
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  ret ptr %5
}

; Function Attrs: optsize
declare void @reorder_insns_nobb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @add_insn_before(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !18
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @duplicate_insns_of_cycles(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = load i32, ptr %0, align 8, !tbaa !6
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %111

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.partial_schedule, ptr %0, i64 0, i32 2
  %9 = icmp eq i32 %3, 0
  br label %10

10:                                               ; preds = %7, %106
  %11 = phi i32 [ %5, %7 ], [ %107, %106 ]
  %12 = phi i64 [ 0, %7 ], [ %108, %106 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !12
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %106, label %17

17:                                               ; preds = %10, %100
  %18 = phi ptr [ %102, %100 ], [ %15, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = tail call i32 @reg_mentioned_p(ptr noundef null, ptr noundef %21) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  br i1 %9, label %48, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !117
  %30 = sub nsw i32 %2, %29
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 -1)
  %32 = add nsw i32 %31, 1
  %33 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !140
  %35 = tail call i32 @llvm.smin.i32(i32 %32, i32 %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %88, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = icmp sgt i32 %35, 1
  br i1 %40, label %41, label %70

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %46, %41 ], [ %39, %37 ]
  %43 = phi i32 [ %45, %41 ], [ 1, %37 ]
  %44 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = add nuw nsw i32 %43, 1
  %46 = load ptr, ptr %44, align 8, !tbaa !18
  %47 = icmp eq i32 %45, %35
  br i1 %47, label %70, label %41, !llvm.loop !223

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !140
  %51 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !117
  %53 = add i32 %52, 1
  %54 = sub i32 %50, %1
  %55 = add i32 %54, %53
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0)
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %50)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.node_sched_params, ptr %26, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !18
  %62 = icmp sgt i32 %50, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %68, %63 ], [ %61, %59 ]
  %65 = phi i32 [ %67, %63 ], [ 1, %59 ]
  %66 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = add nuw nsw i32 %65, 1
  %68 = load ptr, ptr %66, align 8, !tbaa !18
  %69 = icmp eq i32 %67, %50
  br i1 %69, label %70, label %63, !llvm.loop !224

70:                                               ; preds = %41, %63, %37, %59
  %71 = phi i32 [ %57, %59 ], [ %35, %37 ], [ %57, %63 ], [ %35, %41 ]
  %72 = phi ptr [ %61, %59 ], [ %39, %37 ], [ %68, %63 ], [ %46, %41 ]
  %73 = icmp sgt i32 %71, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %70, %74
  %75 = phi ptr [ %83, %74 ], [ %72, %70 ]
  %76 = phi i32 [ %81, %74 ], [ 0, %70 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !18
  %79 = tail call ptr @copy_rtx(ptr noundef %78) #22
  %80 = tail call ptr @emit_insn(ptr noundef %79) #22
  %81 = add nuw nsw i32 %76, 1
  %82 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = icmp eq i32 %81, %71
  br i1 %84, label %85, label %74, !llvm.loop !225

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  br label %88

88:                                               ; preds = %48, %27, %85, %70
  %89 = phi ptr [ %87, %85 ], [ %26, %70 ], [ %26, %48 ], [ %26, %27 ]
  %90 = getelementptr inbounds %struct.node_sched_params, ptr %89, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !117
  %92 = icmp slt i32 %91, %1
  %93 = icmp sgt i32 %91, %2
  %94 = or i1 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !69
  %98 = load ptr, ptr %20, align 8, !tbaa !16
  %99 = tail call ptr @duplicate_insn_chain(ptr noundef %97, ptr noundef %98) #22
  br label %100

100:                                              ; preds = %88, %95, %17
  %101 = getelementptr inbounds %struct.ps_insn, ptr %18, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !13
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %17, !llvm.loop !226

104:                                              ; preds = %100
  %105 = load i32, ptr %0, align 8, !tbaa !6
  br label %106

106:                                              ; preds = %104, %10
  %107 = phi i32 [ %105, %104 ], [ %11, %10 ]
  %108 = add nuw nsw i64 %12, 1
  %109 = sext i32 %107 to i64
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %10, label %111, !llvm.loop !227

111:                                              ; preds = %106, %4
  ret void
}

; Function Attrs: optsize
declare ptr @split_edge_and_insert(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #5

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @duplicate_insn_chain(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"partial_schedule", !8, i64 0, !8, i64 4, !11, i64 8, !8, i64 16, !8, i64 20, !11, i64 24}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !11, i64 8}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"ps_insn", !11, i64 0, !8, i64 8, !11, i64 16, !11, i64 24, !8, i64 32}
!16 = !{!17, !11, i64 8}
!17 = !{!"ddg_node", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !9, i64 56}
!18 = !{!9, !9, i64 0}
!19 = !{!15, !11, i64 16}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!8, !8, i64 0}
!24 = !{!25, !11, i64 8}
!25 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !11, i64 128, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139}
!26 = !{!27, !11, i64 0}
!27 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !8, i64 48, !9, i64 52, !9, i64 60, !8, i64 68, !8, i64 72}
!28 = !{!27, !11, i64 8}
!29 = !{!30, !11, i64 56}
!30 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !11, i64 48, !11, i64 56, !9, i64 64, !31, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96}
!31 = !{!"long", !9, i64 0}
!32 = !{!30, !11, i64 16}
!33 = !{!34, !11, i64 384}
!34 = !{!"gcc_target", !35, i64 0, !37, i64 368, !38, i64 664, !8, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !31, i64 1064, !31, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !39, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !31, i64 1464, !40, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !41, i64 1784, !42, i64 1792, !43, i64 1896, !44, i64 1968, !11, i64 2016, !9, i64 2024, !9, i64 2025, !9, i64 2026, !9, i64 2027, !9, i64 2028, !9, i64 2029, !9, i64 2030, !9, i64 2031, !9, i64 2032, !9, i64 2033, !9, i64 2034, !9, i64 2035}
!35 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !36, i64 24, !36, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!36 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!37 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!38 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!39 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!40 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!41 = !{!"c", !11, i64 0}
!42 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!43 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !9, i64 64, !9, i64 65}
!44 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!45 = !{!46, !11, i64 8}
!46 = !{!"loop", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 16, !47, i64 24, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !48, i64 80, !48, i64 96, !9, i64 112, !9, i64 113, !8, i64 116, !11, i64 120, !11, i64 128, !9, i64 136, !11, i64 144}
!47 = !{!"lpt_decision", !8, i64 0, !8, i64 4}
!48 = !{!"", !31, i64 0, !31, i64 8}
!49 = !{!50, !11, i64 8}
!50 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32}
!51 = !{!46, !8, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{!54, !31, i64 56}
!54 = !{!"edge_def", !11, i64 0, !11, i64 8, !9, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !31, i64 56}
!55 = !{!56, !8, i64 8}
!56 = !{!"param_info", !11, i64 0, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 20, !11, i64 24}
!57 = !{!30, !31, i64 72}
!58 = !{!59, !31, i64 24}
!59 = !{!"gcov_ctr_summary", !8, i64 0, !8, i64 4, !31, i64 8, !31, i64 16, !31, i64 24}
!60 = distinct !{!60, !21}
!61 = !{!62, !8, i64 8}
!62 = !{!"ddg", !11, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !11, i64 48}
!63 = !{!62, !8, i64 12}
!64 = !{!62, !8, i64 16}
!65 = !{!7, !8, i64 20}
!66 = !{!7, !8, i64 16}
!67 = !{!62, !11, i64 32}
!68 = !{!17, !8, i64 0}
!69 = !{!17, !11, i64 16}
!70 = !{!62, !11, i64 0}
!71 = !{!30, !8, i64 96}
!72 = distinct !{!72, !21}
!73 = !{!25, !11, i64 32}
!74 = !{!75, !11, i64 8}
!75 = !{!"loops", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!76 = !{!77, !8, i64 32}
!77 = !{!"common_sched_info_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32}
!78 = !{!79, !8, i64 8}
!79 = !{!"", !11, i64 0, !8, i64 8}
!80 = !{!79, !11, i64 0}
!81 = !{!75, !11, i64 24}
!82 = !{!46, !11, i64 48}
!83 = !{!46, !11, i64 56}
!84 = distinct !{!84, !21}
!85 = !{!46, !8, i64 36}
!86 = !{!46, !11, i64 16}
!87 = !{!30, !11, i64 0}
!88 = !{!30, !11, i64 8}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = !{i32 0, i32 2}
!92 = distinct !{!92, !21}
!93 = !{!94, !8, i64 8}
!94 = !{!"ddg_all_sccs", !11, i64 0, !8, i64 8, !11, i64 16}
!95 = !{!94, !11, i64 0}
!96 = !{!97, !8, i64 20}
!97 = !{!"ddg_scc", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 20}
!98 = !{!62, !11, i64 24}
!99 = !{!100, !8, i64 0}
!100 = !{!"node_order_params", !8, i64 0, !8, i64 4, !8, i64 8}
!101 = distinct !{!101, !21}
!102 = !{!34, !11, i64 656}
!103 = !{!62, !8, i64 20}
!104 = !{!105, !8, i64 0}
!105 = !{!"node_sched_params", !8, i64 0, !8, i64 4, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!106 = distinct !{!106, !21}
!107 = !{!7, !11, i64 24}
!108 = !{!31, !31, i64 0}
!109 = !{i32 -1, i32 1}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = !{!114, !11, i64 0}
!114 = !{!"simple_bitmap_def", !11, i64 0, !8, i64 8, !8, i64 12, !9, i64 16}
!115 = !{!105, !8, i64 4}
!116 = !{!105, !8, i64 20}
!117 = !{!105, !8, i64 24}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = !{!105, !8, i64 28}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = !{i64 0, i64 4, !23, i64 8, i64 8, !13}
!126 = !{i64 0, i64 8, !13}
!127 = !{!54, !8, i64 48}
!128 = !{!54, !11, i64 0}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21}
!133 = !{!134, !8, i64 16}
!134 = !{!"ddg_edge", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32, !11, i64 40, !9, i64 48}
!135 = !{!134, !11, i64 8}
!136 = !{!134, !11, i64 0}
!137 = !{!134, !8, i64 28}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !21}
!140 = !{!105, !8, i64 16}
!141 = !{!105, !11, i64 8}
!142 = !{!143, !11, i64 0}
!143 = !{!"undo_replace_buff_elem", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!144 = !{!143, !11, i64 8}
!145 = !{!143, !11, i64 16}
!146 = !{!143, !11, i64 24}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21}
!149 = distinct !{!149, !21}
!150 = distinct !{!150, !21}
!151 = distinct !{!151, !21}
!152 = distinct !{!152, !21}
!153 = distinct !{!153, !21}
!154 = distinct !{!154, !21}
!155 = !{!156, !8, i64 0}
!156 = !{!"VEC_loop_p_base", !8, i64 0, !8, i64 4, !9, i64 8}
!157 = !{!158, !8, i64 0}
!158 = !{!"VEC_int_base", !8, i64 0, !8, i64 4, !9, i64 8}
!159 = !{!46, !11, i64 40}
!160 = !{!161, !8, i64 0}
!161 = !{!"VEC_edge_base", !8, i64 0, !8, i64 4, !9, i64 8}
!162 = distinct !{!162, !21}
!163 = !{!134, !8, i64 24}
!164 = distinct !{!164, !21}
!165 = distinct !{!165, !21}
!166 = distinct !{!166, !21}
!167 = !{!100, !8, i64 4}
!168 = !{!100, !8, i64 8}
!169 = distinct !{!169, !21}
!170 = distinct !{!170, !21}
!171 = !{!94, !11, i64 16}
!172 = !{!97, !11, i64 0}
!173 = distinct !{!173, !21}
!174 = distinct !{!174, !21}
!175 = distinct !{!175, !21}
!176 = !{!17, !11, i64 40}
!177 = distinct !{!177, !21}
!178 = !{!17, !11, i64 48}
!179 = distinct !{!179, !21}
!180 = distinct !{!180, !21}
!181 = distinct !{!181, !21}
!182 = distinct !{!182, !21}
!183 = distinct !{!183, !21}
!184 = !{!185, !8, i64 12}
!185 = !{!"", !11, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !31, i64 24}
!186 = !{!185, !8, i64 16}
!187 = !{!114, !8, i64 12}
!188 = !{!185, !8, i64 8}
!189 = !{!185, !11, i64 0}
!190 = !{!185, !31, i64 24}
!191 = distinct !{!191, !21}
!192 = distinct !{!192, !21}
!193 = !{!7, !8, i64 4}
!194 = !{!134, !8, i64 20}
!195 = distinct !{!195, !21}
!196 = distinct !{!196, !21}
!197 = distinct !{!197, !21}
!198 = distinct !{!198, !21}
!199 = distinct !{!199, !21}
!200 = distinct !{!200, !21}
!201 = distinct !{!201, !21}
!202 = distinct !{!202, !21}
!203 = distinct !{!203, !21}
!204 = distinct !{!204, !21}
!205 = !{!15, !8, i64 8}
!206 = distinct !{!206, !21}
!207 = distinct !{!207, !21}
!208 = distinct !{!208, !21}
!209 = distinct !{!209, !21}
!210 = distinct !{!210, !21}
!211 = !{!15, !8, i64 32}
!212 = !{!34, !11, i64 392}
!213 = distinct !{!213, !21}
!214 = distinct !{!214, !21}
!215 = !{!15, !11, i64 24}
!216 = distinct !{!216, !21}
!217 = !{!34, !11, i64 464}
!218 = !{!34, !11, i64 480}
!219 = distinct !{!219, !21}
!220 = distinct !{!220, !21}
!221 = !{!222, !8, i64 0}
!222 = !{!"", !8, i64 0, !11, i64 8}
!223 = distinct !{!223, !21}
!224 = distinct !{!224, !21}
!225 = distinct !{!225, !21}
!226 = distinct !{!226, !21}
!227 = distinct !{!227, !21}
