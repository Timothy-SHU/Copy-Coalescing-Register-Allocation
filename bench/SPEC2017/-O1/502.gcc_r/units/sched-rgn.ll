; ModuleID = 'sched-rgn.c'
source_filename = "sched-rgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.region = type { i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.candidate = type { i8, i8, i32, %struct.bblst, %struct.bblst }
%struct.bblst = type { ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.deps_reg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct._dep_link = type { ptr, ptr, ptr }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@nr_regions = dso_local local_unnamed_addr global i32 0, align 4
@rgn_table = dso_local local_unnamed_addr global ptr null, align 8
@rgn_bb_table = dso_local local_unnamed_addr global ptr null, align 8
@block_to_bb = dso_local local_unnamed_addr global ptr null, align 8
@containing_rgn = dso_local local_unnamed_addr global ptr null, align 8
@ebb_head = dso_local local_unnamed_addr global ptr null, align 8
@sched_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"\0A;;   ------------ REGIONS ----------\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c";;\09rgn %d nr_blocks %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c";;\09bb/block: \00", align 1
@current_blocks = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" %d/%d \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"\0A;;   ------------ REGION %d ----------\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"digraph Region_%d {\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"\09%d -> %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"sched-rgn.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sched_verbose = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c";; Region extension iterations: %d%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"... failed\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@candidate_table = internal unnamed_addr global ptr null, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"src b %d bb %d speculative \0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"split path: \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"update path: \00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c" src %d equivalent\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"----------- candidate table: target: b=%d bb=%d ---\0A\00", align 1
@current_nr_blocks = dso_local local_unnamed_addr global i32 0, align 4
@rgn_sched_info = internal global %struct.haifa_sched_info zeroinitializer, align 8
@.str.22 = private unnamed_addr constant [57 x i8] c";;   --------------- forward dependences: ------------ \0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"\0A;;   --- Region Dependences --- b %d bb %d \0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c";;   %7s%6s%6s%6s%6s%6s%14s\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"insn\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"dep\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"cost\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"reservation\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"-----------\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c";;   %6d \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.38 = private unnamed_addr constant [7 x i8] c" {%s}\0A\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.39 = private unnamed_addr constant [29 x i8] c";;   %s%5d%6d%6d%6d%6d%6d   \00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c" \00", align 1
@sched_emulate_haifa_p = external local_unnamed_addr global i32, align 4
@h_i_d = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"\09: \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@current_sched_info = external local_unnamed_addr global ptr, align 8
@rgn_n_insns = internal unnamed_addr global i32 0, align 4
@min_spec_prob = internal unnamed_addr global i32 0, align 4
@nr_inter = internal unnamed_addr global i32 0, align 4
@nr_spec = internal unnamed_addr global i32 0, align 4
@flag_schedule_interblock = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [56 x i8] c"\0A;; Procedure interblock/speculative motions == %d/%d \0A\00", align 1
@bb_deps = internal unnamed_addr global ptr null, align 8
@sched_max_luid = external local_unnamed_addr global i32, align 4
@insn_referenced = internal unnamed_addr global ptr null, align 8
@prob = internal unnamed_addr global ptr null, align 8
@dom = internal unnamed_addr global ptr null, align 8
@rgn_nr_edges = internal unnamed_addr global i32 0, align 4
@rgn_edges = internal unnamed_addr global ptr null, align 8
@pot_split = internal unnamed_addr global ptr null, align 8
@ancestor_edges = internal unnamed_addr global ptr null, align 8
@rgn_common_sched_info = internal global %struct.common_sched_info_def zeroinitializer, align 8
@haifa_common_sched_info = external local_unnamed_addr constant %struct.common_sched_info_def, align 8
@common_sched_info = external local_unnamed_addr global ptr, align 8
@rgn_sched_deps_info = internal global %struct.sched_deps_info_def zeroinitializer, align 8
@rgn_const_sel_sched_deps_info = internal unnamed_addr constant %struct.sched_deps_info_def { ptr @compute_jump_reg_dependencies, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8
@sched_deps_info = external local_unnamed_addr global ptr, align 8
@rgn_const_sched_info = internal unnamed_addr constant %struct.haifa_sched_info { ptr @init_ready_list, ptr @can_schedule_ready_p, ptr @schedule_more_p, ptr @new_ready, ptr @rgn_rank, ptr @rgn_print_insn, ptr @contributes_to_priority, ptr @rgn_insn_finishes_block_p, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rgn_add_remove_insn, ptr @begin_schedule_ready, ptr @advance_target_bb, i32 4 }, align 8
@not_in_df = internal global %struct.bitmap_head_def zeroinitializer, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c"sched1\00", align 1
@pass_sched = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.46, ptr @gate_handle_sched, ptr @rest_of_handle_sched, ptr null, ptr null, i32 0, i32 145, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"sched2\00", align 1
@pass_sched2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.47, ptr @gate_handle_sched2, ptr @rest_of_handle_sched2, ptr null, ptr null, i32 0, i32 159, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@target_bb = dso_local local_unnamed_addr global i32 0, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.49 = private unnamed_addr constant [59 x i8] c";; Region extension statistics: size %d: was %d + %d more\0A\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@sd_iterator_start.null_link = internal global ptr null, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@flag_sel_sched_pipelining = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@sched_luids = external local_unnamed_addr global ptr, align 8
@h_d_i_d = external local_unnamed_addr global ptr, align 8
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@.str.50 = private unnamed_addr constant [27 x i8] c";;  bb_prob(%d, %d) = %3d\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@target_n_insns = internal unnamed_addr global i32 0, align 4
@sched_target_n_insns = internal unnamed_addr global i32 0, align 4
@sched_n_insns = internal unnamed_addr global i32 0, align 4
@bblst_last = internal unnamed_addr global i32 0, align 4
@bblst_size = internal unnamed_addr global i32 0, align 4
@bblst_table = internal unnamed_addr global ptr null, align 8
@edgelst_last = internal unnamed_addr global i32 0, align 4
@edgelst_table = internal unnamed_addr global ptr null, align 8
@flag_schedule_speculative = external local_unnamed_addr global i32, align 4
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@curr_state = external local_unnamed_addr global ptr, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@flag_schedule_speculative_load = external local_unnamed_addr global i32, align 4
@flag_schedule_speculative_load_dangerous = external local_unnamed_addr global i32, align 4
@rgn_print_insn.tmp = internal global [80 x i8] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [11 x i8] c"b%3d: i%4d\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"%d/b%d\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@sched_pressure_p = external local_unnamed_addr global i8, align 1
@haifa_recovery_bb_ever_added_p = external local_unnamed_addr global i8, align 1
@flag_schedule_insns = external local_unnamed_addr global i32, align 4
@flag_selective_scheduling = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_schedule_insns_after_reload = external local_unnamed_addr global i32, align 4
@flag_selective_scheduling2 = external local_unnamed_addr global i32, align 4
@flag_sched2_use_superblocks = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !74 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !75
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !74 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !75
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !74 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !85

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #31
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !79
  %11 = load i8, ptr %3, align 1, !tbaa !86
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !74 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !85

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #31
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !79
  %11 = load i8, ptr %3, align 1, !tbaa !86
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !74 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !75
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !85

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #31
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !79
  %11 = load i8, ptr %3, align 1, !tbaa !86
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !74 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !75
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !74 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !85

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #31
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !87
  store i8 %12, ptr %4, align 1, !tbaa !86
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !74 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !85

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #31
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !87
  store i8 %12, ptr %4, align 1, !tbaa !86
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !74 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !85

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #31
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !87
  store i8 %12, ptr %4, align 1, !tbaa !86
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !74 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #31
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !74 {
  %2 = load i32, ptr %0, align 8, !tbaa !89
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !74 {
  %2 = load i32, ptr %0, align 8, !tbaa !89
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !74 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #31
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !90
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !74 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #31
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !90
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !74 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #31
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
  br i1 %23, label %7, label %24, !llvm.loop !91

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !74 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_regions() local_unnamed_addr #9 !prof !74 {
  %1 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %1)
  %3 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %0, %36
  %6 = phi i64 [ %39, %36 ], [ 0, %0 ]
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %8 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.region, ptr %8, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = trunc i64 %6 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %10)
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 13, i64 1, ptr %13)
  %15 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.region, ptr %15, i64 %6, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !96
  store i32 %17, ptr @current_blocks, align 4, !tbaa !90
  %18 = getelementptr inbounds %struct.region, ptr %15, i64 %6
  %19 = load i32, ptr %18, align 4, !tbaa !94
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %5, %21
  %22 = phi i32 [ %31, %21 ], [ 0, %5 ]
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %24 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %25 = load i32, ptr @current_blocks, align 4, !tbaa !90
  %26 = add nsw i32 %25, %22
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !90
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %22, i32 noundef %29)
  %31 = add nuw nsw i32 %22, 1
  %32 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.region, ptr %32, i64 %6
  %34 = load i32, ptr %33, align 4, !tbaa !94
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %21, label %36, !llvm.loop !97

36:                                               ; preds = %21, %5
  %37 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %38 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %37)
  %39 = add nuw nsw i64 %6, 1
  %40 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %5, label %43, !llvm.loop !98

43:                                               ; preds = %36, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_region(i32 noundef %0) local_unnamed_addr #10 !prof !74 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !75
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %0) #32
  %4 = load ptr, ptr @stderr, align 8, !tbaa !75
  %5 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.region, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %8) #32
  %10 = load ptr, ptr @stderr, align 8, !tbaa !75
  %11 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 13, i64 1, ptr %10) #32
  %12 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.region, ptr %12, i64 %6, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !96
  store i32 %14, ptr @current_blocks, align 4, !tbaa !90
  %15 = getelementptr inbounds %struct.region, ptr %12, i64 %6
  %16 = load i32, ptr %15, align 4, !tbaa !94
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1, %18
  %19 = phi i32 [ %28, %18 ], [ 0, %1 ]
  %20 = load ptr, ptr @stderr, align 8, !tbaa !75
  %21 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %22 = load i32, ptr @current_blocks, align 4, !tbaa !90
  %23 = add nsw i32 %22, %19
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !90
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %26) #32
  %28 = add nuw nsw i32 %19, 1
  %29 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.region, ptr %29, i64 %6
  %31 = load i32, ptr %30, align 4, !tbaa !94
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %18, label %33, !llvm.loop !99

33:                                               ; preds = %18, %1
  %34 = load ptr, ptr @stderr, align 8, !tbaa !75
  %35 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %34) #32
  %36 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %37 = getelementptr inbounds %struct.region, ptr %36, i64 %6
  %38 = load i32, ptr %37, align 4, !tbaa !94
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33, %40
  %41 = phi i32 [ %50, %40 ], [ 0, %33 ]
  %42 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %43 = load i32, ptr @current_blocks, align 4, !tbaa !90
  %44 = add nsw i32 %43, %41
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %42, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !90
  tail call void @debug_bb_n_slim(i32 noundef %47) #31
  %48 = load ptr, ptr @stderr, align 8, !tbaa !75
  %49 = tail call i32 @fputc(i32 10, ptr %48)
  %50 = add nuw nsw i32 %41, 1
  %51 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %52 = getelementptr inbounds %struct.region, ptr %51, i64 %6
  %53 = load i32, ptr %52, align 4, !tbaa !94
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %40, label %55, !llvm.loop !100

55:                                               ; preds = %40, %33
  %56 = load ptr, ptr @stderr, align 8, !tbaa !75
  %57 = tail call i32 @fputc(i32 10, ptr %56)
  ret void
}

declare void @debug_bb_n_slim(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_region_dot(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !74 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1)
  %4 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.region, ptr %4, i64 %5, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !96
  store i32 %7, ptr @current_blocks, align 4, !tbaa !90
  %8 = getelementptr inbounds %struct.region, ptr %4, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %94

11:                                               ; preds = %2, %88
  %12 = phi i32 [ %89, %88 ], [ 0, %2 ]
  %13 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %14 = load i32, ptr @current_blocks, align 4, !tbaa !90
  %15 = add nsw i32 %14, %12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %13, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !90
  %19 = load ptr, ptr @cfun, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = zext i32 %18 to i64
  %25 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %23, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  br label %28

28:                                               ; preds = %86, %11
  %29 = phi i32 [ 0, %11 ], [ %87, %86 ]
  %30 = load ptr, ptr %27, align 8, !tbaa !75
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8, !tbaa !105
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %33, %32 ], [ 0, %28 ]
  %36 = icmp eq i32 %35, %29
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = zext i32 %29 to i64
  %39 = getelementptr inbounds %struct.VEC_edge_base, ptr %30, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  br label %41

41:                                               ; preds = %34, %37
  %42 = phi ptr [ %40, %37 ], [ null, %34 ]
  br i1 %36, label %88, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !107
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !109
  %48 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %49 = getelementptr inbounds %struct.region, ptr %48, i64 %5
  %50 = load i32, ptr %49, align 4, !tbaa !94
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %43
  %53 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %54 = load i32, ptr @current_blocks, align 4, !tbaa !90
  %55 = zext nneg i32 %50 to i64
  %56 = sext i32 %54 to i64
  %57 = zext nneg i32 %50 to i64
  %58 = getelementptr i32, ptr %53, i64 %56
  %59 = load i32, ptr %58, align 4, !tbaa !90
  %60 = icmp eq i32 %59, %47
  br i1 %60, label %73, label %61

61:                                               ; preds = %52
  %62 = getelementptr i32, ptr %53, i64 %56
  br label %63

63:                                               ; preds = %61, %67
  %64 = phi i64 [ %65, %67 ], [ 0, %61 ]
  %65 = add nuw nsw i64 %64, 1
  %66 = icmp eq i64 %65, %57
  br i1 %66, label %77, label %67, !llvm.loop !111

67:                                               ; preds = %63
  %68 = getelementptr i32, ptr %62, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !90
  %70 = icmp eq i32 %69, %47
  br i1 %70, label %71, label %63, !llvm.loop !111

71:                                               ; preds = %67
  %72 = icmp ult i64 %65, %55
  br label %73

73:                                               ; preds = %71, %52
  %74 = phi i1 [ %72, %71 ], [ %51, %52 ]
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %18, i32 noundef %47)
  br label %77

77:                                               ; preds = %63, %43, %75, %73
  %78 = load ptr, ptr %27, align 8, !tbaa !75
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %78, align 8, !tbaa !105
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %81, %80 ], [ 0, %77 ]
  %84 = icmp ult i32 %29, %83
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %86

86:                                               ; preds = %82, %85
  %87 = add i32 %29, 1
  br label %28, !llvm.loop !112

88:                                               ; preds = %41
  %89 = add nuw nsw i32 %12, 1
  %90 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %91 = getelementptr inbounds %struct.region, ptr %90, i64 %5
  %92 = load i32, ptr %91, align 4, !tbaa !94
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %11, label %94, !llvm.loop !113

94:                                               ; preds = %88, %2
  %95 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_region_dot_file(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !74 {
  %3 = tail call ptr @fopen_unlocked(ptr noundef %0, ptr noundef nonnull @.str.10) #31
  tail call void @dump_region_dot(ptr noundef %3, i32 noundef %1)
  %4 = tail call i32 @fclose(ptr noundef %3)
  ret void
}

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @extend_rgns(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #10 !prof !74 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load i32, ptr %1, align 4, !tbaa !90
  %8 = load ptr, ptr @cfun, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.param_info, ptr %13, i64 82, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !115
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !117
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr @xmalloc(i64 noundef %19) #31
  %21 = load ptr, ptr @cfun, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !117
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr @xmalloc(i64 noundef %27) #31
  %29 = tail call i32 @post_order_compute(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext 0) #31
  %30 = add i32 %12, -3
  %31 = icmp sgt i32 %12, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = zext i32 %30 to i64
  br label %42

34:                                               ; preds = %42, %4
  %35 = phi i32 [ 0, %4 ], [ %53, %42 ]
  %36 = icmp ne i32 %35, 0
  %37 = icmp sgt i32 %15, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %171

39:                                               ; preds = %34
  %40 = icmp sgt i32 %12, 2
  %41 = zext i32 %30 to i64
  br label %56

42:                                               ; preds = %32, %42
  %43 = phi i64 [ %33, %32 ], [ %54, %42 ]
  %44 = phi i32 [ 0, %32 ], [ %53, %42 ]
  %45 = getelementptr inbounds i32, ptr %28, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !90
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !90
  %50 = icmp sgt i32 %49, -1
  %51 = getelementptr inbounds i32, ptr %20, i64 %47
  %52 = select i1 %50, i32 %46, i32 -1
  %53 = select i1 %50, i32 1, i32 %44
  store i32 %52, ptr %51, align 4, !tbaa !90
  %54 = add nsw i64 %43, -1
  %55 = icmp sgt i64 %43, 0
  br i1 %55, label %42, label %34, !llvm.loop !118

56:                                               ; preds = %39, %165
  %57 = phi i32 [ 0, %39 ], [ %167, %165 ]
  br i1 %40, label %58, label %165

58:                                               ; preds = %56, %161
  %59 = phi i64 [ %163, %161 ], [ %41, %56 ]
  %60 = phi i32 [ %162, %161 ], [ 0, %56 ]
  %61 = getelementptr inbounds i32, ptr %28, i64 %59
  %62 = load i32, ptr %61, align 4, !tbaa !90
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %20, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !90
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %161, label %67

67:                                               ; preds = %58
  %68 = lshr i32 %62, 6
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !119
  %72 = and i32 %62, 63
  %73 = zext nneg i32 %72 to i64
  %74 = shl nuw i64 1, %73
  %75 = and i64 %71, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %161

77:                                               ; preds = %67
  %78 = load ptr, ptr @cfun, align 8, !tbaa !75
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !101
  %81 = getelementptr inbounds %struct.control_flow_graph, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !103
  %83 = zext i32 %62 to i64
  %84 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %82, i64 0, i32 2, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  %86 = icmp eq ptr %85, null
  %87 = getelementptr inbounds i32, ptr %3, i64 %63
  br label %88

88:                                               ; preds = %137, %77
  %89 = phi i32 [ 0, %77 ], [ %138, %137 ]
  %90 = phi i32 [ -1, %77 ], [ %128, %137 ]
  br i1 %86, label %91, label %92

91:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.12) #31
  br label %92

92:                                               ; preds = %91, %88
  %93 = load ptr, ptr %85, align 8, !tbaa !75
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %93, align 8, !tbaa !105
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %96, %95 ], [ 0, %92 ]
  %99 = icmp eq i32 %98, %89
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = zext i32 %89 to i64
  %102 = getelementptr inbounds %struct.VEC_edge_base, ptr %93, i64 0, i32 2, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !75
  br label %104

104:                                              ; preds = %97, %100
  %105 = phi ptr [ %103, %100 ], [ null, %97 ]
  br i1 %99, label %139, label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr %105, align 8, !tbaa !120
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !109
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %106
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds i32, ptr %20, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !90
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %87, align 4, !tbaa !90
  %118 = getelementptr inbounds i32, ptr %3, i64 %112
  %119 = load i32, ptr %118, align 4, !tbaa !90
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = icmp eq i32 %90, -1
  br i1 %122, label %126, label %123

123:                                              ; preds = %121
  %124 = icmp eq i32 %90, %114
  %125 = select i1 %124, i32 %90, i32 %62
  br label %126

126:                                              ; preds = %123, %121, %106, %111, %116
  %127 = phi i1 [ false, %116 ], [ false, %111 ], [ false, %106 ], [ true, %121 ], [ %124, %123 ]
  %128 = phi i32 [ %62, %116 ], [ %62, %111 ], [ %62, %106 ], [ %114, %121 ], [ %125, %123 ]
  br i1 %127, label %129, label %139

129:                                              ; preds = %126
  %130 = icmp eq ptr %93, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = load i32, ptr %93, align 8, !tbaa !105
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %132, %131 ], [ 0, %129 ]
  %135 = icmp ult i32 %89, %134
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %137

137:                                              ; preds = %133, %136
  %138 = add i32 %89, 1
  br label %88, !llvm.loop !121

139:                                              ; preds = %126, %104
  %140 = phi i32 [ %128, %126 ], [ %90, %104 ]
  %141 = icmp eq i32 %140, %62
  br i1 %141, label %142, label %156

142:                                              ; preds = %139
  %143 = load ptr, ptr %2, align 8, !tbaa !122
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %145

145:                                              ; preds = %142
  %146 = load i64, ptr %70, align 8, !tbaa !119
  %147 = and i64 %146, %74
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, ptr %143, i64 %69
  %151 = load i8, ptr %150, align 1, !tbaa !86
  %152 = add i8 %151, 1
  store i8 %152, ptr %150, align 1, !tbaa !86
  br label %153

153:                                              ; preds = %142, %145, %149
  %154 = load i64, ptr %70, align 8, !tbaa !119
  %155 = or i64 %154, %74
  store i64 %155, ptr %70, align 8, !tbaa !119
  br label %159

156:                                              ; preds = %139
  %157 = icmp eq i32 %140, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %156
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1243, ptr noundef nonnull @.str.12) #31
  br label %159

159:                                              ; preds = %158, %156, %153
  %160 = phi i32 [ 1, %153 ], [ %60, %156 ], [ %60, %158 ]
  store i32 %140, ptr %64, align 4, !tbaa !90
  br label %161

161:                                              ; preds = %159, %67, %58
  %162 = phi i32 [ %60, %67 ], [ %160, %159 ], [ %60, %58 ]
  %163 = add nsw i64 %59, -1
  %164 = icmp sgt i64 %59, 0
  br i1 %164, label %58, label %165, !llvm.loop !124

165:                                              ; preds = %161, %56
  %166 = phi i32 [ 0, %56 ], [ %162, %161 ]
  %167 = add nuw nsw i32 %57, 1
  %168 = icmp ne i32 %166, 0
  %169 = icmp slt i32 %167, %15
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %56, label %171, !llvm.loop !125

171:                                              ; preds = %165, %34
  %172 = phi i32 [ 0, %34 ], [ %167, %165 ]
  %173 = phi i32 [ %35, %34 ], [ %166, %165 ]
  %174 = phi i1 [ %36, %34 ], [ %168, %165 ]
  %175 = load i32, ptr @sched_verbose, align 4, !tbaa !90
  %176 = icmp ne i32 %175, 0
  %177 = icmp ne i32 %172, 0
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %181 = select i1 %174, ptr @.str.14, ptr @.str.15
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.13, i32 noundef %172, ptr noundef nonnull %181)
  br label %183

183:                                              ; preds = %179, %171
  %184 = icmp eq i32 %173, 0
  %185 = select i1 %184, i1 %177, i1 false
  br i1 %185, label %186, label %528

186:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  store ptr null, ptr %5, align 8, !tbaa !75
  %187 = load i32, ptr @sched_verbose, align 4, !tbaa !90
  %188 = icmp sgt i32 %187, 5
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = call fastcc i32 @gather_region_statistics(ptr noundef nonnull %5)
  %191 = sext i32 %190 to i64
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi i64 [ %191, %189 ], [ 0, %186 ]
  %194 = icmp sgt i32 %12, 2
  br i1 %194, label %195, label %495

195:                                              ; preds = %192
  %196 = zext i32 %30 to i64
  %197 = getelementptr i32, ptr %28, i64 -1
  br label %198

198:                                              ; preds = %195, %491
  %199 = phi i64 [ %196, %195 ], [ %493, %491 ]
  %200 = phi i32 [ %7, %195 ], [ %492, %491 ]
  %201 = getelementptr inbounds i32, ptr %28, i64 %199
  %202 = load i32, ptr %201, align 4, !tbaa !90
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %20, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !90
  %206 = icmp eq i32 %205, %202
  br i1 %206, label %207, label %491

207:                                              ; preds = %198
  %208 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %209 = getelementptr inbounds %struct.common_sched_info_def, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !126
  %211 = load ptr, ptr @cfun, align 8, !tbaa !75
  %212 = getelementptr inbounds %struct.function, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !101
  %214 = getelementptr inbounds %struct.control_flow_graph, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !103
  %216 = zext i32 %202 to i64
  %217 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %215, i64 0, i32 2, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !75
  %219 = tail call i32 %210(ptr noundef %218) #31
  %220 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %221 = getelementptr inbounds %struct.param_info, ptr %220, i64 77, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !115
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %229, label %224

224:                                              ; preds = %207
  %225 = getelementptr inbounds %struct.param_info, ptr %220, i64 78, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !115
  %227 = icmp sgt i32 %219, %226
  %228 = zext i1 %227 to i8
  br label %229

229:                                              ; preds = %207, %224
  %230 = phi i8 [ 1, %207 ], [ %228, %224 ]
  %231 = getelementptr inbounds i32, ptr %0, i64 %203
  store i32 -1, ptr %231, align 4, !tbaa !90
  %232 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %233 = sext i32 %200 to i64
  %234 = getelementptr inbounds i32, ptr %232, i64 %233
  store i32 %202, ptr %234, align 4, !tbaa !90
  %235 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %236 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.region, ptr %235, i64 %237, i32 1
  store i32 %200, ptr %238, align 4, !tbaa !96
  %239 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.region, ptr %235, i64 %240, i32 2
  %242 = load i8, ptr %241, align 4
  %243 = and i8 %242, -2
  store i8 %243, ptr %241, align 4
  %244 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %245 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.region, ptr %244, i64 %246, i32 2
  %248 = load i8, ptr %247, align 4
  %249 = and i8 %248, -3
  store i8 %249, ptr %247, align 4
  %250 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %251 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %252 = getelementptr inbounds i32, ptr %251, i64 %203
  store i32 %250, ptr %252, align 4, !tbaa !90
  %253 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %254 = getelementptr inbounds i32, ptr %253, i64 %203
  store i32 0, ptr %254, align 4, !tbaa !90
  %255 = load ptr, ptr @cfun, align 8, !tbaa !75
  %256 = getelementptr inbounds %struct.function, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !101
  %258 = getelementptr inbounds %struct.control_flow_graph, ptr %257, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !103
  %260 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %259, i64 0, i32 2, i64 %216
  %261 = load ptr, ptr %260, align 8, !tbaa !75
  %262 = getelementptr inbounds %struct.basic_block_def, ptr %261, i64 0, i32 1
  br label %263

263:                                              ; preds = %302, %229
  %264 = phi i32 [ 0, %229 ], [ %303, %302 ]
  %265 = load ptr, ptr %262, align 8, !tbaa !75
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = load i32, ptr %265, align 8, !tbaa !105
  br label %269

269:                                              ; preds = %267, %263
  %270 = phi i32 [ %268, %267 ], [ 0, %263 ]
  %271 = icmp eq i32 %270, %264
  br i1 %271, label %276, label %272

272:                                              ; preds = %269
  %273 = zext i32 %264 to i64
  %274 = getelementptr inbounds %struct.VEC_edge_base, ptr %265, i64 0, i32 2, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !75
  br label %276

276:                                              ; preds = %269, %272
  %277 = phi ptr [ %275, %272 ], [ null, %269 ]
  br i1 %271, label %304, label %278

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.edge_def, ptr %277, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !107
  %281 = load ptr, ptr @cfun, align 8, !tbaa !75
  %282 = getelementptr inbounds %struct.function, ptr %281, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !101
  %284 = getelementptr inbounds %struct.control_flow_graph, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !128
  %286 = icmp eq ptr %280, %285
  br i1 %286, label %294, label %287

287:                                              ; preds = %278
  %288 = getelementptr inbounds %struct.basic_block_def, ptr %280, i64 0, i32 9
  %289 = load i32, ptr %288, align 8, !tbaa !109
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, ptr %0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !90
  %293 = add nsw i32 %292, -1
  store i32 %293, ptr %291, align 4, !tbaa !90
  br label %294

294:                                              ; preds = %287, %278
  %295 = icmp eq ptr %265, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %294
  %297 = load i32, ptr %265, align 8, !tbaa !105
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi i32 [ %297, %296 ], [ 0, %294 ]
  %300 = icmp ult i32 %264, %299
  br i1 %300, label %302, label %301

301:                                              ; preds = %298
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %302

302:                                              ; preds = %298, %301
  %303 = add i32 %264, 1
  br label %263, !llvm.loop !129

304:                                              ; preds = %276
  %305 = zext nneg i8 %230 to i32
  %306 = add nsw i32 %200, 1
  %307 = icmp eq i8 %230, 0
  br i1 %307, label %308, label %356

308:                                              ; preds = %304, %350
  %309 = phi i64 [ %313, %350 ], [ %199, %304 ]
  %310 = phi i32 [ %351, %350 ], [ 1, %304 ]
  %311 = phi i32 [ %352, %350 ], [ %219, %304 ]
  %312 = phi i32 [ %353, %350 ], [ 0, %304 ]
  %313 = add nsw i64 %309, -1
  %314 = trunc i64 %309 to i32
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %356

316:                                              ; preds = %308
  %317 = getelementptr i32, ptr %197, i64 %309
  %318 = load i32, ptr %317, align 4, !tbaa !90
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, ptr %20, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !90
  %322 = icmp eq i32 %321, %202
  br i1 %322, label %323, label %350

323:                                              ; preds = %316
  %324 = add nsw i32 %310, 1
  %325 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %326 = getelementptr inbounds %struct.common_sched_info_def, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !126
  %328 = load ptr, ptr @cfun, align 8, !tbaa !75
  %329 = getelementptr inbounds %struct.function, ptr %328, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !101
  %331 = getelementptr inbounds %struct.control_flow_graph, ptr %330, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !103
  %333 = zext i32 %318 to i64
  %334 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %332, i64 0, i32 2, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !75
  %336 = tail call i32 %327(ptr noundef %335) #31
  %337 = add nsw i32 %336, %311
  %338 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %339 = getelementptr inbounds %struct.param_info, ptr %338, i64 77, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !115
  %341 = icmp slt i32 %310, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %323
  %343 = getelementptr inbounds %struct.param_info, ptr %338, i64 78, i32 1
  %344 = load i32, ptr %343, align 8, !tbaa !115
  %345 = icmp sgt i32 %337, %344
  br label %346

346:                                              ; preds = %323, %342
  %347 = phi i1 [ true, %323 ], [ %345, %342 ]
  %348 = zext i1 %347 to i32
  %349 = select i1 %347, i32 19, i32 0
  br label %350

350:                                              ; preds = %346, %316
  %351 = phi i32 [ %324, %346 ], [ %310, %316 ]
  %352 = phi i32 [ %337, %346 ], [ %311, %316 ]
  %353 = phi i32 [ %348, %346 ], [ %312, %316 ]
  %354 = phi i32 [ %349, %346 ], [ 0, %316 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %308, label %356, !llvm.loop !130

356:                                              ; preds = %350, %308, %304
  %357 = phi i32 [ %305, %304 ], [ %312, %308 ], [ %353, %350 ]
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %366, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %361 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.region, ptr %360, i64 %362
  store i32 1, ptr %363, align 4, !tbaa !94
  %364 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %365 = add nsw i32 %364, 1
  store i32 %365, ptr @nr_regions, align 4, !tbaa !90
  br label %366

366:                                              ; preds = %359, %356
  %367 = icmp sgt i64 %199, 0
  br i1 %367, label %368, label %481

368:                                              ; preds = %366, %476
  %369 = phi i64 [ %372, %476 ], [ %199, %366 ]
  %370 = phi i32 [ %478, %476 ], [ %306, %366 ]
  %371 = phi i32 [ %477, %476 ], [ 1, %366 ]
  %372 = add nsw i64 %369, -1
  %373 = and i64 %372, 4294967295
  %374 = getelementptr inbounds i32, ptr %28, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !90
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, ptr %20, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !90
  %379 = icmp eq i32 %378, %202
  br i1 %379, label %380, label %476

380:                                              ; preds = %368
  %381 = getelementptr inbounds i32, ptr %0, i64 %376
  %382 = load i32, ptr %381, align 4, !tbaa !90
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1346, ptr noundef nonnull @.str.12) #31
  br label %385

385:                                              ; preds = %380, %384
  store i32 -1, ptr %381, align 4, !tbaa !90
  %386 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %387 = sext i32 %370 to i64
  %388 = getelementptr inbounds i32, ptr %386, i64 %387
  store i32 %375, ptr %388, align 4, !tbaa !90
  br i1 %358, label %389, label %396

389:                                              ; preds = %385
  %390 = add nsw i32 %371, 1
  %391 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %392 = getelementptr inbounds i32, ptr %391, i64 %376
  store i32 %371, ptr %392, align 4, !tbaa !90
  %393 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %394 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %395 = getelementptr inbounds i32, ptr %394, i64 %376
  store i32 %393, ptr %395, align 4, !tbaa !90
  br label %422

396:                                              ; preds = %385
  %397 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %398 = getelementptr inbounds i32, ptr %397, i64 %376
  store i32 0, ptr %398, align 4, !tbaa !90
  %399 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %400 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %401 = getelementptr inbounds i32, ptr %400, i64 %376
  store i32 %399, ptr %401, align 4, !tbaa !90
  %402 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %403 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.region, ptr %402, i64 %404, i32 1
  store i32 %370, ptr %405, align 4, !tbaa !96
  %406 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.region, ptr %402, i64 %407
  store i32 1, ptr %408, align 4, !tbaa !94
  %409 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.region, ptr %402, i64 %410, i32 2
  %412 = load i8, ptr %411, align 4
  %413 = and i8 %412, -2
  store i8 %413, ptr %411, align 4
  %414 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %415 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.region, ptr %414, i64 %416, i32 2
  %418 = load i8, ptr %417, align 4
  %419 = and i8 %418, -3
  store i8 %419, ptr %417, align 4
  %420 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %421 = add nsw i32 %420, 1
  store i32 %421, ptr @nr_regions, align 4, !tbaa !90
  br label %422

422:                                              ; preds = %389, %396
  %423 = phi i32 [ %390, %389 ], [ %371, %396 ]
  %424 = load ptr, ptr @cfun, align 8, !tbaa !75
  %425 = getelementptr inbounds %struct.function, ptr %424, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !101
  %427 = getelementptr inbounds %struct.control_flow_graph, ptr %426, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !103
  %429 = zext i32 %375 to i64
  %430 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %428, i64 0, i32 2, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !75
  %432 = getelementptr inbounds %struct.basic_block_def, ptr %431, i64 0, i32 1
  br label %433

433:                                              ; preds = %472, %422
  %434 = phi i32 [ 0, %422 ], [ %473, %472 ]
  %435 = load ptr, ptr %432, align 8, !tbaa !75
  %436 = icmp eq ptr %435, null
  br i1 %436, label %439, label %437

437:                                              ; preds = %433
  %438 = load i32, ptr %435, align 8, !tbaa !105
  br label %439

439:                                              ; preds = %437, %433
  %440 = phi i32 [ %438, %437 ], [ 0, %433 ]
  %441 = icmp eq i32 %440, %434
  br i1 %441, label %446, label %442

442:                                              ; preds = %439
  %443 = zext i32 %434 to i64
  %444 = getelementptr inbounds %struct.VEC_edge_base, ptr %435, i64 0, i32 2, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !75
  br label %446

446:                                              ; preds = %439, %442
  %447 = phi ptr [ %445, %442 ], [ null, %439 ]
  br i1 %441, label %474, label %448

448:                                              ; preds = %446
  %449 = getelementptr inbounds %struct.edge_def, ptr %447, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !107
  %451 = load ptr, ptr @cfun, align 8, !tbaa !75
  %452 = getelementptr inbounds %struct.function, ptr %451, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !101
  %454 = getelementptr inbounds %struct.control_flow_graph, ptr %453, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !128
  %456 = icmp eq ptr %450, %455
  br i1 %456, label %464, label %457

457:                                              ; preds = %448
  %458 = getelementptr inbounds %struct.basic_block_def, ptr %450, i64 0, i32 9
  %459 = load i32, ptr %458, align 8, !tbaa !109
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, ptr %0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !90
  %463 = add nsw i32 %462, -1
  store i32 %463, ptr %461, align 4, !tbaa !90
  br label %464

464:                                              ; preds = %457, %448
  %465 = icmp eq ptr %435, null
  br i1 %465, label %468, label %466

466:                                              ; preds = %464
  %467 = load i32, ptr %435, align 8, !tbaa !105
  br label %468

468:                                              ; preds = %466, %464
  %469 = phi i32 [ %467, %466 ], [ 0, %464 ]
  %470 = icmp ult i32 %434, %469
  br i1 %470, label %472, label %471

471:                                              ; preds = %468
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %472

472:                                              ; preds = %468, %471
  %473 = add i32 %434, 1
  br label %433, !llvm.loop !131

474:                                              ; preds = %446
  %475 = add nsw i32 %370, 1
  br label %476

476:                                              ; preds = %474, %368
  %477 = phi i32 [ %371, %368 ], [ %423, %474 ]
  %478 = phi i32 [ %370, %368 ], [ %475, %474 ]
  %479 = trunc i64 %369 to i32
  %480 = icmp sgt i32 %479, 1
  br i1 %480, label %368, label %481, !llvm.loop !132

481:                                              ; preds = %476, %366
  %482 = phi i32 [ 1, %366 ], [ %477, %476 ]
  %483 = phi i32 [ %306, %366 ], [ %478, %476 ]
  br i1 %358, label %484, label %491

484:                                              ; preds = %481
  %485 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %486 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.region, ptr %485, i64 %487
  store i32 %482, ptr %488, align 4, !tbaa !94
  %489 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %490 = add nsw i32 %489, 1
  store i32 %490, ptr @nr_regions, align 4, !tbaa !90
  br label %491

491:                                              ; preds = %481, %484, %198
  %492 = phi i32 [ %200, %198 ], [ %483, %484 ], [ %483, %481 ]
  %493 = add nsw i64 %199, -1
  %494 = icmp sgt i64 %199, 0
  br i1 %494, label %198, label %495, !llvm.loop !133

495:                                              ; preds = %491, %192
  %496 = phi i32 [ %7, %192 ], [ %492, %491 ]
  %497 = load i32, ptr @sched_verbose, align 4, !tbaa !90
  %498 = icmp sgt i32 %497, 5
  br i1 %498, label %499, label %527

499:                                              ; preds = %495
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  %500 = call fastcc i32 @gather_region_statistics(ptr noundef nonnull %6)
  %501 = load ptr, ptr %5, align 8, !tbaa !75
  %502 = load ptr, ptr %6, align 8, !tbaa !75
  %503 = icmp sgt i32 %500, 1
  br i1 %503, label %504, label %526

504:                                              ; preds = %499
  %505 = zext nneg i32 %500 to i64
  br label %506

506:                                              ; preds = %504, %523
  %507 = phi i64 [ 1, %504 ], [ %524, %523 ]
  %508 = getelementptr inbounds i32, ptr %502, i64 %507
  %509 = load i32, ptr %508, align 4, !tbaa !90
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %523, label %511

511:                                              ; preds = %506
  %512 = icmp slt i64 %507, %193
  br i1 %512, label %513, label %516

513:                                              ; preds = %511
  %514 = getelementptr inbounds i32, ptr %501, i64 %507
  %515 = load i32, ptr %514, align 4, !tbaa !90
  br label %516

516:                                              ; preds = %513, %511
  %517 = phi i32 [ %515, %513 ], [ 0, %511 ]
  %518 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %519 = sub nsw i32 %509, %517
  %520 = trunc i64 %507 to i32
  %521 = add i32 %520, 1
  %522 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %518, ptr noundef nonnull @.str.49, i32 noundef %521, i32 noundef %517, i32 noundef %519)
  br label %523

523:                                              ; preds = %516, %506
  %524 = add nuw nsw i64 %507, 1
  %525 = icmp eq i64 %524, %505
  br i1 %525, label %526, label %506, !llvm.loop !134

526:                                              ; preds = %523, %499
  tail call void @free(ptr noundef %501)
  tail call void @free(ptr noundef %502)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  br label %527

527:                                              ; preds = %526, %495
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %528

528:                                              ; preds = %527, %183
  %529 = phi i32 [ %496, %527 ], [ %7, %183 ]
  tail call void @free(ptr noundef %28)
  tail call void @free(ptr noundef %20)
  store i32 %529, ptr %1, align 4, !tbaa !90
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i32 @post_order_compute(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @gather_region_statistics(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !74 {
  %2 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %47

4:                                                ; preds = %1, %35
  %5 = phi i64 [ %43, %35 ], [ 0, %1 ]
  %6 = phi i32 [ %37, %35 ], [ 0, %1 ]
  %7 = phi ptr [ %36, %35 ], [ null, %1 ]
  %8 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.region, ptr %8, i64 %5
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1100, ptr noundef nonnull @.str.12) #31
  br label %13

13:                                               ; preds = %4, %12
  %14 = icmp sgt i32 %10, %6
  br i1 %14, label %15, label %35

15:                                               ; preds = %13
  %16 = sext i32 %10 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %17) #31
  %19 = sext i32 %6 to i64
  %20 = shl nsw i64 %19, 2
  %21 = getelementptr i8, ptr %18, i64 %20
  %22 = xor i32 %6, -1
  %23 = add i32 %10, %22
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = add nuw nsw i64 %25, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %21, i8 0, i64 %26, i1 false), !tbaa !90
  %27 = sext i32 %6 to i64
  %28 = sext i32 %10 to i64
  br label %29

29:                                               ; preds = %29, %15
  %30 = phi i64 [ %31, %29 ], [ %27, %15 ]
  %31 = add nsw i64 %30, 1
  %32 = icmp eq i64 %31, %28
  br i1 %32, label %33, label %29, !llvm.loop !135

33:                                               ; preds = %29
  %34 = trunc i64 %31 to i32
  br label %35

35:                                               ; preds = %33, %13
  %36 = phi ptr [ %7, %13 ], [ %18, %33 ]
  %37 = phi i32 [ %6, %13 ], [ %34, %33 ]
  %38 = add nsw i32 %10, -1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %36, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !90
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !90
  %43 = add nuw nsw i64 %5, 1
  %44 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %4, label %47, !llvm.loop !136

47:                                               ; preds = %35, %1
  %48 = phi ptr [ null, %1 ], [ %36, %35 ]
  %49 = phi i32 [ 0, %1 ], [ %37, %35 ]
  store ptr %48, ptr %0, align 8, !tbaa !75
  ret i32 %49
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_candidate(i32 noundef %0) local_unnamed_addr #9 !prof !74 {
  %2 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.candidate, ptr %2, i64 %3
  %5 = load i8, ptr %4, align 8, !tbaa !137
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %75, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.candidate, ptr %2, i64 %3, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !140
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %12 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %13 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %14 = getelementptr inbounds i32, ptr %13, i64 %3
  %15 = load i32, ptr %14, align 4, !tbaa !90
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !90
  br i1 %10, label %73, label %19

19:                                               ; preds = %7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %18, i32 noundef %0)
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %22 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 12, i64 1, ptr %21)
  %23 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.candidate, ptr %23, i64 %3, i32 3, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !141
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %19, %27
  %28 = phi i64 [ %38, %27 ], [ 0, %19 ]
  %29 = phi ptr [ %39, %27 ], [ %23, %19 ]
  %30 = getelementptr inbounds %struct.candidate, ptr %29, i64 %3, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !142
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !109
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.18, i32 noundef %35)
  %38 = add nuw nsw i64 %28, 1
  %39 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %40 = getelementptr inbounds %struct.candidate, ptr %39, i64 %3, i32 3, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !141
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %27, label %44, !llvm.loop !143

44:                                               ; preds = %27, %19
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %46 = tail call i32 @fputc(i32 10, ptr %45)
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %48 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %47)
  %49 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %50 = getelementptr inbounds %struct.candidate, ptr %49, i64 %3, i32 4, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !144
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %44, %53
  %54 = phi i64 [ %64, %53 ], [ 0, %44 ]
  %55 = phi ptr [ %65, %53 ], [ %49, %44 ]
  %56 = getelementptr inbounds %struct.candidate, ptr %55, i64 %3, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !145
  %58 = getelementptr inbounds ptr, ptr %57, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !75
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !109
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.18, i32 noundef %61)
  %64 = add nuw nsw i64 %54, 1
  %65 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.candidate, ptr %65, i64 %3, i32 4, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !144
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %53, label %70, !llvm.loop !146

70:                                               ; preds = %53, %44
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %72 = tail call i32 @fputc(i32 10, ptr %71)
  br label %75

73:                                               ; preds = %7
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %18)
  br label %75

75:                                               ; preds = %1, %73, %70
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_candidates(i32 noundef %0) local_unnamed_addr #9 !prof !74 {
  %2 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %3 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %4 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %10, i32 noundef %0)
  %12 = add nsw i32 %0, 1
  %13 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1, %15
  %16 = phi i32 [ %17, %15 ], [ %12, %1 ]
  tail call void @debug_candidate(i32 noundef %16)
  %17 = add nsw i32 %16, 1
  %18 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %15, label %20, !llvm.loop !147

20:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @contributes_to_priority(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 !prof !148 {
  %3 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !109
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !109
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !90
  %18 = icmp eq i32 %10, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_rgn_sched_max_insns_priority() local_unnamed_addr #14 !prof !149 {
  %1 = load i32, ptr getelementptr inbounds (%struct.haifa_sched_info, ptr @rgn_sched_info, i64 0, i32 13), align 4, !tbaa !150
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @deps_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !152 {
  %3 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @bitmap_zero_bits, ptr %4, !prof !155
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !156
  %9 = shl i32 %8, 7
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !119
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 14
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %17

17:                                               ; preds = %144, %2
  %18 = phi i64 [ %11, %2 ], [ %156, %144 ]
  %19 = phi i32 [ 0, %2 ], [ %74, %144 ]
  %20 = phi i32 [ %14, %2 ], [ %157, %144 ]
  %21 = phi ptr [ %6, %2 ], [ %76, %144 ]
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %37, label %23, !prof !158

23:                                               ; preds = %51, %17
  %24 = phi i64 [ %18, %17 ], [ %56, %51 ]
  %25 = phi i32 [ %19, %17 ], [ %52, %51 ]
  %26 = phi i32 [ %20, %17 ], [ %53, %51 ]
  %27 = phi ptr [ %21, %17 ], [ %44, %51 ]
  %28 = and i64 %24, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %72, !prof !159

30:                                               ; preds = %23, %30
  %31 = phi i32 [ %34, %30 ], [ %26, %23 ]
  %32 = phi i64 [ %33, %30 ], [ %24, %23 ]
  %33 = lshr exact i64 %32, 1
  %34 = add i32 %31, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %72, !prof !160, !llvm.loop !161

37:                                               ; preds = %17
  %38 = add i32 %20, 63
  %39 = and i32 %38, -64
  %40 = add i32 %19, 1
  br label %41

41:                                               ; preds = %68, %37
  %42 = phi i64 [ %18, %37 ], [ %63, %68 ]
  %43 = phi i32 [ %39, %37 ], [ %71, %68 ]
  %44 = phi ptr [ %21, %37 ], [ %66, %68 ]
  %45 = phi i32 [ %40, %37 ], [ 0, %68 ]
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %62, label %47, !prof !162

47:                                               ; preds = %41
  %48 = add i32 %43, 128
  %49 = shl i32 %45, 6
  %50 = sub i32 %48, %49
  br label %51

51:                                               ; preds = %47, %58
  %52 = phi i32 [ %60, %58 ], [ %45, %47 ]
  %53 = phi i32 [ %59, %58 ], [ %43, %47 ]
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !119
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %23, !prof !163

58:                                               ; preds = %51
  %59 = add i32 %53, 64
  %60 = add i32 %52, 1
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %51, !prof !164, !llvm.loop !165

62:                                               ; preds = %58, %41
  %63 = phi i64 [ %42, %41 ], [ %56, %58 ]
  %64 = phi i32 [ %43, %41 ], [ %50, %58 ]
  %65 = phi i32 [ %45, %41 ], [ 2, %58 ]
  %66 = load ptr, ptr %44, align 8, !tbaa !166
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68, !prof !163

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.bitmap_element_def, ptr %66, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !156
  %71 = shl i32 %70, 7
  br label %41, !llvm.loop !167

72:                                               ; preds = %62, %30, %23
  %73 = phi i64 [ %24, %23 ], [ %33, %30 ], [ %63, %62 ]
  %74 = phi i32 [ %25, %23 ], [ %25, %30 ], [ %65, %62 ]
  %75 = phi i32 [ %26, %23 ], [ %34, %30 ], [ %64, %62 ]
  %76 = phi ptr [ %27, %23 ], [ %27, %30 ], [ %66, %62 ]
  %77 = phi i1 [ false, %23 ], [ false, %30 ], [ true, %62 ]
  br i1 %77, label %158, label %78, !prof !158

78:                                               ; preds = %72
  %79 = load ptr, ptr %15, align 8, !tbaa !168
  %80 = zext i32 %75 to i64
  %81 = getelementptr inbounds %struct.deps_reg, ptr %79, i64 %80
  %82 = load ptr, ptr %16, align 8, !tbaa !168
  %83 = getelementptr inbounds %struct.deps_reg, ptr %82, i64 %80
  %84 = load ptr, ptr %83, align 8, !tbaa !170
  %85 = load ptr, ptr %81, align 8, !tbaa !86
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87, !prof !172

87:                                               ; preds = %78, %87
  %88 = phi ptr [ %94, %87 ], [ %85, %78 ]
  %89 = phi ptr [ %92, %87 ], [ %84, %78 ]
  %90 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !86
  %92 = tail call ptr @alloc_INSN_LIST(ptr noundef %91, ptr noundef %89) #31
  %93 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !86
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %87, !prof !173, !llvm.loop !174

96:                                               ; preds = %87, %78
  %97 = phi ptr [ %84, %78 ], [ %92, %87 ]
  store ptr %97, ptr %83, align 8, !tbaa !170
  %98 = getelementptr inbounds %struct.deps_reg, ptr %79, i64 %80, i32 1
  %99 = getelementptr inbounds %struct.deps_reg, ptr %82, i64 %80, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !175
  %101 = load ptr, ptr %98, align 8, !tbaa !86
  %102 = icmp eq ptr %101, null
  br i1 %102, label %112, label %103, !prof !176

103:                                              ; preds = %96, %103
  %104 = phi ptr [ %110, %103 ], [ %101, %96 ]
  %105 = phi ptr [ %108, %103 ], [ %100, %96 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !86
  %108 = tail call ptr @alloc_INSN_LIST(ptr noundef %107, ptr noundef %105) #31
  %109 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !86
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %103, !prof !177, !llvm.loop !174

112:                                              ; preds = %103, %96
  %113 = phi ptr [ %100, %96 ], [ %108, %103 ]
  store ptr %113, ptr %99, align 8, !tbaa !175
  %114 = getelementptr inbounds %struct.deps_reg, ptr %79, i64 %80, i32 2
  %115 = getelementptr inbounds %struct.deps_reg, ptr %82, i64 %80, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !178
  %117 = load ptr, ptr %114, align 8, !tbaa !86
  %118 = icmp eq ptr %117, null
  br i1 %118, label %128, label %119, !prof !179

119:                                              ; preds = %112, %119
  %120 = phi ptr [ %126, %119 ], [ %117, %112 ]
  %121 = phi ptr [ %124, %119 ], [ %116, %112 ]
  %122 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !86
  %124 = tail call ptr @alloc_INSN_LIST(ptr noundef %123, ptr noundef %121) #31
  %125 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !86
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %119, !prof !179, !llvm.loop !174

128:                                              ; preds = %119, %112
  %129 = phi ptr [ %116, %112 ], [ %124, %119 ]
  store ptr %129, ptr %115, align 8, !tbaa !178
  %130 = getelementptr inbounds %struct.deps_reg, ptr %79, i64 %80, i32 3
  %131 = getelementptr inbounds %struct.deps_reg, ptr %82, i64 %80, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !180
  %133 = load ptr, ptr %130, align 8, !tbaa !86
  %134 = icmp eq ptr %133, null
  br i1 %134, label %144, label %135, !prof !181

135:                                              ; preds = %128, %135
  %136 = phi ptr [ %142, %135 ], [ %133, %128 ]
  %137 = phi ptr [ %140, %135 ], [ %132, %128 ]
  %138 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !86
  %140 = tail call ptr @alloc_INSN_LIST(ptr noundef %139, ptr noundef %137) #31
  %141 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !86
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %135, !prof !182, !llvm.loop !174

144:                                              ; preds = %135, %128
  %145 = phi ptr [ %132, %128 ], [ %140, %135 ]
  store ptr %145, ptr %131, align 8, !tbaa !180
  %146 = getelementptr inbounds %struct.deps_reg, ptr %79, i64 %80, i32 4
  %147 = load i32, ptr %146, align 8, !tbaa !183
  %148 = getelementptr inbounds %struct.deps_reg, ptr %82, i64 %80, i32 4
  %149 = load i32, ptr %148, align 8, !tbaa !183
  %150 = add nsw i32 %149, %147
  store i32 %150, ptr %148, align 8, !tbaa !183
  %151 = getelementptr inbounds %struct.deps_reg, ptr %79, i64 %80, i32 5
  %152 = load i32, ptr %151, align 4, !tbaa !184
  %153 = getelementptr inbounds %struct.deps_reg, ptr %82, i64 %80, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !184
  %155 = add nsw i32 %154, %152
  store i32 %155, ptr %153, align 4, !tbaa !184
  %156 = lshr i64 %73, 1
  %157 = add i32 %75, 1
  br label %17, !llvm.loop !185

158:                                              ; preds = %72
  %159 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %160 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %159, ptr noundef nonnull %3) #31
  %161 = load ptr, ptr %1, align 8, !tbaa !186
  %162 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %163 = load ptr, ptr %0, align 8, !tbaa !75
  %164 = load ptr, ptr %162, align 8, !tbaa !75
  %165 = icmp eq ptr %161, null
  br i1 %165, label %184, label %166, !prof !187

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 1
  br label %168

168:                                              ; preds = %166, %168
  %169 = phi ptr [ %179, %168 ], [ %164, %166 ]
  %170 = phi ptr [ %176, %168 ], [ %163, %166 ]
  %171 = phi ptr [ %181, %168 ], [ %161, %166 ]
  %172 = phi ptr [ %182, %168 ], [ %167, %166 ]
  %173 = load ptr, ptr %172, align 8, !tbaa !86
  %174 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !86
  %176 = tail call ptr @alloc_INSN_LIST(ptr noundef %175, ptr noundef %170) #31
  %177 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !86
  %179 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %178, ptr noundef %169) #31
  %180 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 0, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !86
  %182 = getelementptr inbounds %struct.rtx_def, ptr %173, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = icmp eq ptr %181, null
  br i1 %183, label %184, label %168, !prof !188, !llvm.loop !189

184:                                              ; preds = %168, %158
  %185 = phi ptr [ %163, %158 ], [ %176, %168 ]
  %186 = phi ptr [ %164, %158 ], [ %179, %168 ]
  store ptr %185, ptr %0, align 8, !tbaa !75
  store ptr %186, ptr %162, align 8, !tbaa !75
  %187 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !190
  %189 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %190 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %191 = load ptr, ptr %189, align 8, !tbaa !75
  %192 = load ptr, ptr %190, align 8, !tbaa !75
  %193 = icmp eq ptr %188, null
  br i1 %193, label %212, label %194, !prof !187

194:                                              ; preds = %184
  %195 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 3
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi ptr [ %207, %196 ], [ %192, %194 ]
  %198 = phi ptr [ %204, %196 ], [ %191, %194 ]
  %199 = phi ptr [ %209, %196 ], [ %188, %194 ]
  %200 = phi ptr [ %210, %196 ], [ %195, %194 ]
  %201 = load ptr, ptr %200, align 8, !tbaa !86
  %202 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !86
  %204 = tail call ptr @alloc_INSN_LIST(ptr noundef %203, ptr noundef %198) #31
  %205 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !86
  %207 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %206, ptr noundef %197) #31
  %208 = getelementptr inbounds %struct.rtx_def, ptr %199, i64 0, i32 1, i32 0, i32 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !86
  %210 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = icmp eq ptr %209, null
  br i1 %211, label %212, label %196, !prof !188, !llvm.loop !189

212:                                              ; preds = %196, %184
  %213 = phi ptr [ %191, %184 ], [ %204, %196 ]
  %214 = phi ptr [ %192, %184 ], [ %207, %196 ]
  store ptr %213, ptr %189, align 8, !tbaa !75
  store ptr %214, ptr %190, align 8, !tbaa !75
  %215 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 7
  %216 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %217 = load ptr, ptr %216, align 8, !tbaa !191
  %218 = load ptr, ptr %215, align 8, !tbaa !86
  %219 = icmp eq ptr %218, null
  br i1 %219, label %229, label %220, !prof !162

220:                                              ; preds = %212, %220
  %221 = phi ptr [ %227, %220 ], [ %218, %212 ]
  %222 = phi ptr [ %225, %220 ], [ %217, %212 ]
  %223 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !86
  %225 = tail call ptr @alloc_INSN_LIST(ptr noundef %224, ptr noundef %222) #31
  %226 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1, i32 0, i32 0, i64 1
  %227 = load ptr, ptr %226, align 8, !tbaa !86
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %220, !prof !192, !llvm.loop !174

229:                                              ; preds = %220, %212
  %230 = phi ptr [ %217, %212 ], [ %225, %220 ]
  store ptr %230, ptr %216, align 8, !tbaa !191
  %231 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 4
  %232 = load i32, ptr %231, align 8, !tbaa !193
  %233 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !193
  %235 = add nsw i32 %234, %232
  store i32 %235, ptr %233, align 8, !tbaa !193
  %236 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 5
  %237 = load i32, ptr %236, align 4, !tbaa !194
  %238 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %239 = load i32, ptr %238, align 4, !tbaa !194
  %240 = add nsw i32 %239, %237
  store i32 %240, ptr %238, align 4, !tbaa !194
  %241 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 6
  %242 = load i32, ptr %241, align 8, !tbaa !195
  %243 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %244 = load i32, ptr %243, align 8, !tbaa !195
  %245 = add nsw i32 %244, %242
  store i32 %245, ptr %243, align 8, !tbaa !195
  %246 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 8
  %247 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %248 = load ptr, ptr %247, align 8, !tbaa !196
  %249 = load ptr, ptr %246, align 8, !tbaa !86
  %250 = icmp eq ptr %249, null
  br i1 %250, label %260, label %251, !prof !197

251:                                              ; preds = %229, %251
  %252 = phi ptr [ %258, %251 ], [ %249, %229 ]
  %253 = phi ptr [ %256, %251 ], [ %248, %229 ]
  %254 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !86
  %256 = tail call ptr @alloc_INSN_LIST(ptr noundef %255, ptr noundef %253) #31
  %257 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1, i32 0, i32 0, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !86
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %251, !prof !198, !llvm.loop !174

260:                                              ; preds = %251, %229
  %261 = phi ptr [ %248, %229 ], [ %256, %251 ]
  store ptr %261, ptr %247, align 8, !tbaa !196
  %262 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 9
  %263 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %264 = load ptr, ptr %263, align 8, !tbaa !199
  %265 = load ptr, ptr %262, align 8, !tbaa !86
  %266 = icmp eq ptr %265, null
  br i1 %266, label %276, label %267, !prof !197

267:                                              ; preds = %260, %267
  %268 = phi ptr [ %274, %267 ], [ %265, %260 ]
  %269 = phi ptr [ %272, %267 ], [ %264, %260 ]
  %270 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !86
  %272 = tail call ptr @alloc_INSN_LIST(ptr noundef %271, ptr noundef %269) #31
  %273 = getelementptr inbounds %struct.rtx_def, ptr %268, i64 0, i32 1, i32 0, i32 0, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !86
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %267, !prof !198, !llvm.loop !174

276:                                              ; preds = %267, %260
  %277 = phi ptr [ %264, %260 ], [ %272, %267 ]
  store ptr %277, ptr %263, align 8, !tbaa !199
  %278 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 10
  %279 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %280 = load ptr, ptr %279, align 8, !tbaa !200
  %281 = load ptr, ptr %278, align 8, !tbaa !86
  %282 = icmp eq ptr %281, null
  br i1 %282, label %292, label %283, !prof !179

283:                                              ; preds = %276, %283
  %284 = phi ptr [ %290, %283 ], [ %281, %276 ]
  %285 = phi ptr [ %288, %283 ], [ %280, %276 ]
  %286 = getelementptr inbounds %struct.rtx_def, ptr %284, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !86
  %288 = tail call ptr @alloc_INSN_LIST(ptr noundef %287, ptr noundef %285) #31
  %289 = getelementptr inbounds %struct.rtx_def, ptr %284, i64 0, i32 1, i32 0, i32 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !86
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %283, !prof !179, !llvm.loop !174

292:                                              ; preds = %283, %276
  %293 = phi ptr [ %280, %276 ], [ %288, %283 ]
  store ptr %293, ptr %279, align 8, !tbaa !200
  ret void
}

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rgn_dependencies(i32 noundef %0) local_unnamed_addr #10 !prof !74 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %5 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 56, i64 1, ptr %4)
  %6 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %7 = icmp sgt i32 %6, %0
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = sext i32 %0 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %9, %8 ], [ %27, %10 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %12 = load ptr, ptr @cfun, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %18 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %19 = getelementptr inbounds i32, ptr %18, i64 %11
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %17, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !90
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %16, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = add nsw i64 %11, 1
  %28 = getelementptr inbounds i32, ptr %18, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !90
  %30 = sext i32 %29 to i64
  %31 = getelementptr i32, ptr %17, i64 %30
  %32 = getelementptr i32, ptr %31, i64 -1
  %33 = load i32, ptr %32, align 4, !tbaa !90
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %16, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %26, ptr noundef %36, ptr noundef nonnull %2, ptr noundef nonnull %3) #31
  %37 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %38 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %39 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %40 = getelementptr inbounds i32, ptr %39, i64 %11
  %41 = load i32, ptr %40, align 4, !tbaa !90
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %38, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !90
  %45 = trunc i64 %11 to i32
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.23, i32 noundef %44, i32 noundef %45)
  %47 = load ptr, ptr %2, align 8, !tbaa !75
  %48 = load ptr, ptr %3, align 8, !tbaa !75
  call void @debug_dependencies(ptr noundef %47, ptr noundef %48)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  %49 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %27, %50
  br i1 %51, label %10, label %52, !llvm.loop !201

52:                                               ; preds = %10, %1
  ret void
}

declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_dependencies(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !74 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31)
  %9 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35)
  %11 = icmp eq ptr %6, %0
  br i1 %11, label %123, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  %14 = getelementptr inbounds i8, ptr %3, i64 16
  %15 = getelementptr inbounds i8, ptr %3, i64 24
  br label %16

16:                                               ; preds = %12, %119
  %17 = phi ptr [ %0, %12 ], [ %121, %119 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -7
  %21 = icmp ult i32 %20, 4
  %22 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  br i1 %21, label %44, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !86
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.36, i32 noundef %25)
  %27 = load i32, ptr %17, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 13
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %32 = load i32, ptr %31, align 8, !tbaa !86
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef %36)
  br label %119

38:                                               ; preds = %23
  %39 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %40 = zext nneg i32 %28 to i64
  %41 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.38, ptr noundef %42)
  br label %119

44:                                               ; preds = %16
  %45 = and i32 %18, 268435456
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.41, ptr @.str.40
  %48 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !86
  %50 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !86
  %52 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !86
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !109
  %56 = load i32, ptr @sched_emulate_haifa_p, align 4, !tbaa !90
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = call i32 @sd_lists_size(ptr noundef nonnull %17, i32 noundef 3) #31
  br label %60

60:                                               ; preds = %44, %58
  %61 = phi i32 [ %59, %58 ], [ -1, %44 ]
  %62 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %63 = getelementptr inbounds %struct.common_sched_info_def, ptr %62, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !202
  %65 = icmp ne i32 %64, 4
  %66 = load i32, ptr @sched_emulate_haifa_p, align 4
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load ptr, ptr @h_i_d, align 8
  %71 = load i32, ptr %48, align 8, !tbaa !86
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %70, i64 0, i32 2, i64 %72, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !203
  br label %75

75:                                               ; preds = %60, %69
  %76 = phi i32 [ %74, %69 ], [ -1, %60 ]
  %77 = load i32, ptr @sched_emulate_haifa_p, align 4
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %65, i1 true, i1 %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @insn_cost(ptr noundef nonnull %17) #31
  br label %82

82:                                               ; preds = %75, %80
  %83 = phi i32 [ %81, %80 ], [ -1, %75 ]
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.39, ptr noundef nonnull %47, i32 noundef %49, i32 noundef %51, i32 noundef %55, i32 noundef %61, i32 noundef %76, i32 noundef %83)
  %85 = load i32, ptr %50, align 8, !tbaa !86
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !86
  %90 = call i32 @recog(ptr noundef %89, ptr noundef nonnull %17, ptr noundef null) #31
  store i32 %90, ptr %50, align 8, !tbaa !86
  br label %91

91:                                               ; preds = %82, %87
  %92 = load i32, ptr %50, align 8, !tbaa !86
  %93 = icmp slt i32 %92, 0
  %94 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  br i1 %93, label %95, label %97

95:                                               ; preds = %91
  %96 = call i64 @fwrite(ptr nonnull @.str.42, i64 7, i64 1, ptr %94)
  br label %98

97:                                               ; preds = %91
  call void @print_reservation(ptr noundef %94, ptr noundef nonnull %17) #31
  br label %98

98:                                               ; preds = %97, %95
  %99 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %100 = call i64 @fwrite(ptr nonnull @.str.43, i64 3, i64 1, ptr %99)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store i32 4, ptr %3, align 8, !tbaa.struct !205
  store ptr %17, ptr %13, align 8, !tbaa.struct !206
  store ptr @sd_iterator_start.null_link, ptr %14, align 8, !tbaa.struct !207
  store i8 0, ptr %15, align 8, !tbaa.struct !208
  %101 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %98, %103
  %104 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %105 = load ptr, ptr %4, align 8, !tbaa !75
  %106 = getelementptr inbounds %struct._dep, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !209
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !86
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.44, i32 noundef %109)
  %111 = load ptr, ptr %14, align 8, !tbaa !211
  %112 = load ptr, ptr %111, align 8, !tbaa !75
  %113 = getelementptr inbounds %struct._dep_link, ptr %112, i64 0, i32 1
  store ptr %113, ptr %14, align 8, !tbaa !211
  %114 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %103, !llvm.loop !213

116:                                              ; preds = %103, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  %117 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %118 = call i32 @fputc(i32 10, ptr %117)
  br label %119

119:                                              ; preds = %30, %38, %116
  %120 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !86
  %122 = icmp eq ptr %121, %6
  br i1 %122, label %123, label %16, !llvm.loop !214

123:                                              ; preds = %119, %2
  %124 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %125 = call i32 @fputc(i32 10, ptr %124)
  ret void
}

declare i32 @sd_lists_size(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @insn_cost(ptr noundef) local_unnamed_addr #3

declare void @print_reservation(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 !prof !74 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !211
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !215
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !217
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !218
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #31
  %18 = load ptr, ptr %3, align 8, !tbaa !75
  store ptr %18, ptr %4, align 8, !tbaa !211
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi i8 [ %21, %20 ], [ undef, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br i1 %19, label %24, label %27

24:                                               ; preds = %11, %22, %8
  %25 = phi ptr [ %10, %8 ], [ null, %22 ], [ null, %11 ]
  %26 = phi i8 [ 1, %8 ], [ 0, %22 ], [ 0, %11 ]
  store ptr %25, ptr %1, align 8, !tbaa !75
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i8 [ %23, %22 ], [ %26, %24 ]
  ret i8 %28
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sched_is_disabled_for_current_region_p() local_unnamed_addr #16 !prof !219 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %29, !prof !179

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %10 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  br label %15

11:                                               ; preds = %15
  %12 = zext nneg i32 %1 to i64
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %12
  br i1 %14, label %29, label %15, !prof !220, !llvm.loop !221

15:                                               ; preds = %3, %11
  %16 = phi i64 [ 0, %3 ], [ %13, %11 ]
  %17 = getelementptr inbounds i32, ptr %10, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !90
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %9, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !90
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %8, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !222
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %11, !prof !223

29:                                               ; preds = %15, %11, %0
  %30 = phi i8 [ 1, %0 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %30
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @free_rgn_deps() local_unnamed_addr #15 !prof !219 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %64, !prof !224

5:                                                ; preds = %0, %34
  %6 = phi i64 [ %22, %34 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  %7 = load ptr, ptr @cfun, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %13 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %14 = getelementptr inbounds i32, ptr %13, i64 %6
  %15 = load i32, ptr %14, align 4, !tbaa !90
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !90
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %11, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = add nuw nsw i64 %6, 1
  %23 = getelementptr inbounds i32, ptr %13, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !90
  %25 = sext i32 %24 to i64
  %26 = getelementptr i32, ptr %12, i64 %25
  %27 = getelementptr i32, ptr %26, i64 -1
  %28 = load i32, ptr %27, align 4, !tbaa !90
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %11, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = icmp eq ptr %21, %31
  br i1 %32, label %34, label %33, !prof !225

33:                                               ; preds = %5
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2888, ptr noundef nonnull @.str.12) #31
  br label %34

34:                                               ; preds = %5, %33
  %35 = load ptr, ptr @cfun, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %41 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %42 = getelementptr inbounds i32, ptr %41, i64 %6
  %43 = load i32, ptr %42, align 4, !tbaa !90
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %40, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !90
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %39, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !75
  %50 = getelementptr inbounds i32, ptr %41, i64 %22
  %51 = load i32, ptr %50, align 4, !tbaa !90
  %52 = sext i32 %51 to i64
  %53 = getelementptr i32, ptr %40, i64 %52
  %54 = getelementptr i32, ptr %53, i64 -1
  %55 = load i32, ptr %54, align 4, !tbaa !90
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %39, i64 0, i32 2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %49, ptr noundef %58, ptr noundef nonnull %1, ptr noundef nonnull %2) #31
  %59 = load ptr, ptr %1, align 8, !tbaa !75
  %60 = load ptr, ptr %2, align 8, !tbaa !75
  call void @sched_free_deps(ptr noundef %59, ptr noundef %60, i8 noundef zeroext 0) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #31
  %61 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %22, %62
  br i1 %63, label %5, label %64, !prof !226, !llvm.loop !227

64:                                               ; preds = %34, %0
  ret void
}

declare void @sched_free_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @compute_priorities() local_unnamed_addr #15 !prof !219 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 13
  store i32 0, ptr %4, align 4, !tbaa !150
  %5 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %75, !prof !224

7:                                                ; preds = %0, %71
  %8 = phi i64 [ %24, %71 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  %9 = load ptr, ptr @cfun, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %15 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %16 = getelementptr inbounds i32, ptr %15, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !90
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %14, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = add nuw nsw i64 %8, 1
  %25 = getelementptr inbounds i32, ptr %15, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !90
  %27 = sext i32 %26 to i64
  %28 = getelementptr i32, ptr %14, i64 %27
  %29 = getelementptr i32, ptr %28, i64 -1
  %30 = load i32, ptr %29, align 4, !tbaa !90
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %13, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = icmp eq ptr %23, %33
  br i1 %34, label %36, label %35, !prof !225

35:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2908, ptr noundef nonnull @.str.12) #31
  br label %36

36:                                               ; preds = %7, %35
  %37 = load ptr, ptr @cfun, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !101
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !103
  %42 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %43 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %44 = getelementptr inbounds i32, ptr %43, i64 %8
  %45 = load i32, ptr %44, align 4, !tbaa !90
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %42, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !90
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %41, i64 0, i32 2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = getelementptr inbounds i32, ptr %43, i64 %24
  %53 = load i32, ptr %52, align 4, !tbaa !90
  %54 = sext i32 %53 to i64
  %55 = getelementptr i32, ptr %42, i64 %54
  %56 = getelementptr i32, ptr %55, i64 -1
  %57 = load i32, ptr %56, align 4, !tbaa !90
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %41, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %51, ptr noundef %60, ptr noundef nonnull %1, ptr noundef nonnull %2) #31
  %61 = load ptr, ptr %1, align 8, !tbaa !75
  %62 = load ptr, ptr %2, align 8, !tbaa !75
  %63 = call i32 @no_real_insns_p(ptr noundef %61, ptr noundef %62) #31
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71, !prof !225

65:                                               ; preds = %36
  %66 = load ptr, ptr %1, align 8, !tbaa !75
  %67 = load ptr, ptr %2, align 8, !tbaa !75
  %68 = call i32 @set_priorities(ptr noundef %66, ptr noundef %67) #31
  %69 = load i32, ptr @rgn_n_insns, align 4, !tbaa !90
  %70 = add nsw i32 %69, %68
  store i32 %70, ptr @rgn_n_insns, align 4, !tbaa !90
  br label %71

71:                                               ; preds = %36, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #31
  %72 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %24, %73
  br i1 %74, label %7, label %75, !prof !226, !llvm.loop !228

75:                                               ; preds = %71, %0
  %76 = load ptr, ptr @current_sched_info, align 8, !tbaa !75
  %77 = getelementptr inbounds %struct.haifa_sched_info, ptr %76, i64 0, i32 13
  %78 = load i32, ptr %77, align 4, !tbaa !150
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %77, align 4, !tbaa !150
  ret void
}

declare i32 @no_real_insns_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @set_priorities(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @sched_rgn_init(i8 noundef zeroext %0) local_unnamed_addr #17 !prof !229 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 81, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !115
  %6 = mul nsw i32 %5, 100
  store i32 %6, ptr @min_spec_prob, align 4, !tbaa !90
  store i32 0, ptr @nr_inter, align 4, !tbaa !90
  store i32 0, ptr @nr_spec, align 4, !tbaa !90
  %7 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %8 = load ptr, ptr @cfun, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 12
  %15 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %14) #31
  store ptr %15, ptr @rgn_table, align 8, !tbaa !75
  %16 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %17 = load ptr, ptr @cfun, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !114
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %23) #31
  store ptr %24, ptr @rgn_bb_table, align 8, !tbaa !75
  %25 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %26 = load ptr, ptr @cfun, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !117
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call ptr @xrealloc(ptr noundef %25, i64 noundef %32) #31
  store ptr %33, ptr @block_to_bb, align 8, !tbaa !75
  %34 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %35 = load ptr, ptr @cfun, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !117
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = tail call ptr @xrealloc(ptr noundef %34, i64 noundef %41) #31
  store ptr %42, ptr @containing_rgn, align 8, !tbaa !75
  store i32 -1, ptr %42, align 4, !tbaa !90
  %43 = getelementptr inbounds i32, ptr %42, i64 1
  store i32 -1, ptr %43, align 4, !tbaa !90
  %44 = icmp eq i8 %0, 0
  br i1 %44, label %45, label %214, !prof !230

45:                                               ; preds = %1
  %46 = load ptr, ptr @cfun, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !114
  %51 = icmp ne i32 %50, 3
  %52 = load i32, ptr @flag_schedule_interblock, align 4
  %53 = icmp ne i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false, !prof !230
  br i1 %54, label %55, label %214, !prof !230

55:                                               ; preds = %45
  %56 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !231
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8
  %59 = icmp eq ptr %58, null
  %60 = select i1 %57, i1 %59, i1 false, !prof !230
  br i1 %60, label %61, label %214, !prof !230

61:                                               ; preds = %55
  %62 = tail call zeroext i8 @current_function_has_exception_handlers() #31
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %214, !prof !230

64:                                               ; preds = %61
  %65 = load ptr, ptr @cfun, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !101
  %68 = load ptr, ptr %67, align 8, !tbaa !240
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !241
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !128
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %166, label %74, !prof !242

74:                                               ; preds = %64, %157
  %75 = phi ptr [ %159, %157 ], [ %70, %64 ]
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !86
  %78 = load ptr, ptr %77, align 8, !tbaa !86
  %79 = icmp eq ptr %78, null
  br i1 %79, label %157, label %80, !prof !243

80:                                               ; preds = %74, %153
  %81 = phi ptr [ %155, %153 ], [ %78, %74 ]
  %82 = load ptr, ptr %76, align 8, !tbaa !86
  %83 = getelementptr inbounds %struct.rtl_bb_info, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !244
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !86
  %87 = icmp eq ptr %81, %86
  br i1 %87, label %157, label %88, !prof !246

88:                                               ; preds = %80
  %89 = load i32, ptr %81, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %95, !prof !247

92:                                               ; preds = %88
  %93 = tail call i32 @computed_jump_p(ptr noundef nonnull %81) #31
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %151, !prof !248

95:                                               ; preds = %92, %88
  %96 = load i32, ptr %81, align 8
  %97 = and i32 %96, 65535
  %98 = add nsw i32 %97, -7
  %99 = icmp ult i32 %98, 4
  br i1 %99, label %100, label %151, !prof !249

100:                                              ; preds = %95
  %101 = tail call ptr @find_reg_note(ptr noundef nonnull %81, i32 noundef 10, ptr noundef null) #31
  %102 = icmp eq ptr %101, null
  br i1 %102, label %151, label %103, !prof !250

103:                                              ; preds = %100
  %104 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %81) #31
  %105 = icmp eq ptr %104, null
  br i1 %105, label %151, label %106, !prof !251

106:                                              ; preds = %103
  %107 = load i32, ptr %104, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 9
  br i1 %109, label %110, label %151, !prof !251

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 1, i32 1, i32 0, i32 0, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !86
  %113 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !86
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = tail call ptr @find_reg_note(ptr noundef nonnull %104, i32 noundef 9, ptr noundef %114) #31
  %118 = icmp eq ptr %117, null
  br i1 %118, label %151, label %119

119:                                              ; preds = %116, %110
  %120 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !86
  %122 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !86
  %124 = icmp eq ptr %121, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %119
  %126 = load i32, ptr %81, align 8
  %127 = and i32 %126, 65535
  %128 = add nsw i32 %127, -7
  %129 = icmp ult i32 %128, 4
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !86
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 23
  br i1 %135, label %138, label %136

136:                                              ; preds = %130
  %137 = tail call ptr @single_set_2(ptr noundef nonnull %81, ptr noundef nonnull %132) #31
  br label %138

138:                                              ; preds = %136, %130, %125
  %139 = phi ptr [ %137, %136 ], [ null, %125 ], [ %132, %130 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %151, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.rtx_def, ptr %139, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !86
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 37
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = tail call i32 @dead_or_set_p(ptr noundef nonnull %104, ptr noundef nonnull %143) #31
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  br label %151

151:                                              ; preds = %116, %147, %141, %138, %119, %106, %103, %100, %95, %92
  %152 = phi i32 [ 1, %92 ], [ 7, %95 ], [ 7, %100 ], [ 1, %119 ], [ 1, %106 ], [ 1, %103 ], [ 1, %138 ], [ 1, %141 ], [ %150, %147 ], [ 1, %116 ]
  switch i32 %152, label %214 [
    i32 0, label %153
    i32 7, label %153
  ], !prof !252

153:                                              ; preds = %151, %151
  %154 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !86
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %80, !prof !253, !llvm.loop !254

157:                                              ; preds = %153, %80, %74
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !241
  %160 = load ptr, ptr @cfun, align 8, !tbaa !75
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !101
  %163 = getelementptr inbounds %struct.control_flow_graph, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !128
  %165 = icmp eq ptr %159, %164
  br i1 %165, label %166, label %74, !prof !255, !llvm.loop !256

166:                                              ; preds = %157, %64
  %167 = phi ptr [ %67, %64 ], [ %162, %157 ]
  %168 = load ptr, ptr %167, align 8, !tbaa !240
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !241
  %171 = load ptr, ptr @cfun, align 8, !tbaa !75
  %172 = getelementptr inbounds %struct.function, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !101
  %174 = getelementptr inbounds %struct.control_flow_graph, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !128
  %176 = icmp eq ptr %170, %175
  br i1 %176, label %411, label %177, !prof !242

177:                                              ; preds = %166, %205
  %178 = phi ptr [ %207, %205 ], [ %170, %166 ]
  %179 = load ptr, ptr %178, align 8, !tbaa !257
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181, !prof !258

181:                                              ; preds = %177
  %182 = load i32, ptr %179, align 8, !tbaa !105
  br label %183

183:                                              ; preds = %181, %177
  %184 = phi i32 [ %182, %181 ], [ 0, %177 ]
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %214, label %186, !prof !258

186:                                              ; preds = %183
  br i1 %180, label %191, label %187, !prof !258

187:                                              ; preds = %186
  %188 = load i32, ptr %179, align 8, !tbaa !105
  %189 = icmp eq i32 %188, 1
  %190 = zext i1 %189 to i8
  br label %191

191:                                              ; preds = %187, %186
  %192 = phi i8 [ %190, %187 ], [ 0, %186 ]
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %205, label %194, !prof !259

194:                                              ; preds = %191
  br i1 %180, label %198, label %195, !prof !260

195:                                              ; preds = %194
  %196 = load i32, ptr %179, align 8, !tbaa !105
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %199, label %198, !prof !261

198:                                              ; preds = %195, %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #31
  br label %199

199:                                              ; preds = %198, %195
  %200 = load ptr, ptr %178, align 8, !tbaa !257
  %201 = getelementptr inbounds %struct.VEC_edge_base, ptr %200, i64 0, i32 2, i64 0
  %202 = load ptr, ptr %201, align 8, !tbaa !75
  %203 = load ptr, ptr %202, align 8, !tbaa !120
  %204 = icmp eq ptr %203, %178
  br i1 %204, label %214, label %205, !prof !260

205:                                              ; preds = %199, %191
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %207 = load ptr, ptr %206, align 8, !tbaa !241
  %208 = load ptr, ptr @cfun, align 8, !tbaa !75
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !101
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !128
  %213 = icmp eq ptr %207, %212
  br i1 %213, label %411, label %177, !prof !262, !llvm.loop !263

214:                                              ; preds = %151, %199, %183, %55, %61, %45, %1
  %215 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %216 = getelementptr inbounds %struct.common_sched_info_def, ptr %215, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !202
  %218 = icmp eq i32 %217, 4
  store i32 0, ptr @nr_regions, align 4, !tbaa !90
  br i1 %218, label %219, label %356, !prof !264

219:                                              ; preds = %214
  %220 = load ptr, ptr @profile_info, align 8, !tbaa !75
  %221 = icmp ne ptr %220, null
  %222 = load i32, ptr @flag_branch_probabilities, align 4
  %223 = icmp ne i32 %222, 0
  %224 = select i1 %221, i1 %223, i1 false, !prof !251
  %225 = load ptr, ptr @compiler_params, align 8
  %226 = getelementptr inbounds %struct.param_info, ptr %225, i64 51, i32 1
  %227 = getelementptr inbounds %struct.param_info, ptr %225, i64 52, i32 1
  %228 = select i1 %224, ptr %226, ptr %227, !prof !251
  %229 = load i32, ptr %228, align 8, !tbaa !115
  %230 = mul nsw i32 %229, 100
  %231 = load ptr, ptr @cfun, align 8, !tbaa !75
  %232 = getelementptr inbounds %struct.function, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !101
  %234 = load ptr, ptr %233, align 8, !tbaa !240
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 6
  %236 = load ptr, ptr %235, align 8, !tbaa !241
  %237 = getelementptr inbounds %struct.control_flow_graph, ptr %233, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !128
  %239 = icmp eq ptr %236, %238
  br i1 %239, label %1899, label %240, !prof !265

240:                                              ; preds = %219, %345
  %241 = phi ptr [ %349, %345 ], [ %236, %219 ]
  %242 = phi i32 [ %346, %345 ], [ 0, %219 ]
  %243 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %244 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.region, ptr %243, i64 %245
  store i32 0, ptr %246, align 4, !tbaa !94
  %247 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.region, ptr %243, i64 %248, i32 1
  store i32 %242, ptr %249, align 4, !tbaa !96
  %250 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.region, ptr %243, i64 %251, i32 2
  %253 = load i8, ptr %252, align 4
  %254 = and i8 %253, -2
  store i8 %254, ptr %252, align 4
  %255 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %256 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.region, ptr %255, i64 %257, i32 2
  %259 = load i8, ptr %258, align 4
  %260 = and i8 %259, -3
  store i8 %260, ptr %258, align 4
  %261 = sext i32 %242 to i64
  br label %262

262:                                              ; preds = %343, %240
  %263 = phi i64 [ %290, %343 ], [ %261, %240 ]
  %264 = phi ptr [ %344, %343 ], [ %241, %240 ]
  %265 = getelementptr inbounds %struct.basic_block_def, ptr %264, i64 0, i32 9
  %266 = load i32, ptr %265, align 8, !tbaa !109
  %267 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %268 = getelementptr inbounds i32, ptr %267, i64 %263
  store i32 %266, ptr %268, align 4, !tbaa !90
  %269 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %270 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.region, ptr %269, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !94
  %274 = add nsw i32 %273, 1
  store i32 %274, ptr %272, align 4, !tbaa !94
  %275 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %276 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %277 = load i32, ptr %265, align 8, !tbaa !109
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, ptr %276, i64 %278
  store i32 %275, ptr %279, align 4, !tbaa !90
  %280 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.region, ptr %269, i64 %281, i32 1
  %283 = load i32, ptr %282, align 4, !tbaa !96
  %284 = trunc i64 %263 to i32
  %285 = sub nsw i32 %284, %283
  %286 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %287 = load i32, ptr %265, align 8, !tbaa !109
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %286, i64 %288
  store i32 %285, ptr %289, align 4, !tbaa !90
  %290 = add i64 %263, 1
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %264, i64 0, i32 6
  %292 = load ptr, ptr %291, align 8, !tbaa !241
  %293 = load ptr, ptr @cfun, align 8, !tbaa !75
  %294 = getelementptr inbounds %struct.function, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !101
  %296 = getelementptr inbounds %struct.control_flow_graph, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !128
  %298 = icmp eq ptr %292, %297
  br i1 %298, label %345, label %299, !prof !266

299:                                              ; preds = %262
  %300 = getelementptr inbounds %struct.basic_block_def, ptr %292, i64 0, i32 7
  %301 = load ptr, ptr %300, align 8, !tbaa !86
  %302 = load ptr, ptr %301, align 8, !tbaa !267
  %303 = load i32, ptr %302, align 8
  %304 = and i32 %303, 65535
  %305 = icmp eq i32 %304, 12
  br i1 %305, label %345, label %306, !prof !268

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.basic_block_def, ptr %264, i64 0, i32 1
  br label %308

308:                                              ; preds = %335, %306
  %309 = phi i32 [ 0, %306 ], [ %336, %335 ]
  %310 = load ptr, ptr %307, align 8, !tbaa !75
  %311 = icmp eq ptr %310, null
  br i1 %311, label %314, label %312, !prof !269

312:                                              ; preds = %308
  %313 = load i32, ptr %310, align 8, !tbaa !105
  br label %314

314:                                              ; preds = %312, %308
  %315 = phi i32 [ %313, %312 ], [ 0, %308 ]
  %316 = icmp eq i32 %315, %309
  br i1 %316, label %321, label %317, !prof !269

317:                                              ; preds = %314
  %318 = zext i32 %309 to i64
  %319 = getelementptr inbounds %struct.VEC_edge_base, ptr %310, i64 0, i32 2, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !75
  br label %321

321:                                              ; preds = %317, %314
  %322 = phi ptr [ %320, %317 ], [ null, %314 ]
  br i1 %316, label %337, label %323, !prof !269

323:                                              ; preds = %321
  %324 = getelementptr inbounds %struct.edge_def, ptr %322, i64 0, i32 7
  %325 = load i32, ptr %324, align 8, !tbaa !270
  %326 = and i32 %325, 1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %337, !prof !271

328:                                              ; preds = %323
  br i1 %311, label %331, label %329, !prof !272

329:                                              ; preds = %328
  %330 = load i32, ptr %310, align 8, !tbaa !105
  br label %331

331:                                              ; preds = %329, %328
  %332 = phi i32 [ %330, %329 ], [ 0, %328 ]
  %333 = icmp ult i32 %309, %332
  br i1 %333, label %335, label %334, !prof !273

334:                                              ; preds = %331
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %335

335:                                              ; preds = %334, %331
  %336 = add i32 %309, 1
  br label %308, !llvm.loop !274

337:                                              ; preds = %323, %321
  %338 = icmp eq ptr %322, null
  br i1 %338, label %345, label %339, !prof !275

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.edge_def, ptr %322, i64 0, i32 8
  %341 = load i32, ptr %340, align 4, !tbaa !276
  %342 = icmp sgt i32 %341, %230
  br i1 %342, label %343, label %345, !prof !277

343:                                              ; preds = %339
  %344 = load ptr, ptr %291, align 8, !tbaa !241
  br label %262, !llvm.loop !278

345:                                              ; preds = %299, %262, %337, %339
  %346 = trunc i64 %290 to i32
  %347 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %348 = add nsw i32 %347, 1
  store i32 %348, ptr @nr_regions, align 4, !tbaa !90
  %349 = load ptr, ptr %291, align 8, !tbaa !241
  %350 = load ptr, ptr @cfun, align 8, !tbaa !75
  %351 = getelementptr inbounds %struct.function, ptr %350, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !101
  %353 = getelementptr inbounds %struct.control_flow_graph, ptr %352, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !128
  %355 = icmp eq ptr %349, %354
  br i1 %355, label %1899, label %240, !prof !279, !llvm.loop !280

356:                                              ; preds = %214
  %357 = load ptr, ptr @cfun, align 8, !tbaa !75
  %358 = getelementptr inbounds %struct.function, ptr %357, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !101
  %360 = load ptr, ptr %359, align 8, !tbaa !240
  %361 = getelementptr inbounds %struct.basic_block_def, ptr %360, i64 0, i32 6
  %362 = load ptr, ptr %361, align 8, !tbaa !241
  %363 = getelementptr inbounds %struct.control_flow_graph, ptr %359, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !128
  %365 = icmp eq ptr %362, %364
  br i1 %365, label %1899, label %366

366:                                              ; preds = %356, %366
  %367 = phi ptr [ %404, %366 ], [ %362, %356 ]
  %368 = getelementptr inbounds %struct.basic_block_def, ptr %367, i64 0, i32 9
  %369 = load i32, ptr %368, align 8, !tbaa !109
  %370 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %371 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, ptr %370, i64 %372
  store i32 %369, ptr %373, align 4, !tbaa !90
  %374 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %375 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.region, ptr %374, i64 %376
  store i32 1, ptr %377, align 4, !tbaa !94
  %378 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.region, ptr %374, i64 %379, i32 1
  store i32 %378, ptr %380, align 4, !tbaa !96
  %381 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.region, ptr %374, i64 %382, i32 2
  %384 = load i8, ptr %383, align 4
  %385 = and i8 %384, -2
  store i8 %385, ptr %383, align 4
  %386 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %387 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.region, ptr %386, i64 %388, i32 2
  %390 = load i8, ptr %389, align 4
  %391 = and i8 %390, -3
  store i8 %391, ptr %389, align 4
  %392 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %393 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %394 = load i32, ptr %368, align 8, !tbaa !109
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, ptr %393, i64 %395
  store i32 %392, ptr %396, align 4, !tbaa !90
  %397 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %398 = load i32, ptr %368, align 8, !tbaa !109
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, ptr %397, i64 %399
  store i32 0, ptr %400, align 4, !tbaa !90
  %401 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %402 = add nsw i32 %401, 1
  store i32 %402, ptr @nr_regions, align 4, !tbaa !90
  %403 = getelementptr inbounds %struct.basic_block_def, ptr %367, i64 0, i32 6
  %404 = load ptr, ptr %403, align 8, !tbaa !241
  %405 = load ptr, ptr @cfun, align 8, !tbaa !75
  %406 = getelementptr inbounds %struct.function, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !101
  %408 = getelementptr inbounds %struct.control_flow_graph, ptr %407, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !128
  %410 = icmp eq ptr %404, %409
  br i1 %410, label %1899, label %366, !llvm.loop !281

411:                                              ; preds = %205, %166
  %412 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %413 = getelementptr inbounds %struct.common_sched_info_def, ptr %412, i64 0, i32 4
  %414 = load i32, ptr %413, align 8, !tbaa !202
  %415 = icmp eq i32 %414, 4
  br i1 %415, label %417, label %416, !prof !282

416:                                              ; preds = %411
  tail call void @calculate_dominance_info(i32 noundef 1) #31
  br label %417

417:                                              ; preds = %416, %411
  %418 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %419 = getelementptr inbounds %struct.common_sched_info_def, ptr %418, i64 0, i32 4
  %420 = load i32, ptr %419, align 8, !tbaa !202
  %421 = icmp eq i32 %420, 4
  %422 = load i32, ptr @flag_sel_sched_pipelining, align 4
  %423 = icmp ne i32 %422, 0
  %424 = select i1 %421, i1 %423, i1 false, !prof !282
  br i1 %424, label %425, label %426, !prof !283

425:                                              ; preds = %417
  tail call void @sel_find_rgns() #31
  br label %1889

426:                                              ; preds = %417
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  store i32 0, ptr %2, align 4, !tbaa !90
  %427 = load ptr, ptr @cfun, align 8, !tbaa !75
  %428 = getelementptr inbounds %struct.function, ptr %427, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !101
  %430 = getelementptr inbounds %struct.control_flow_graph, ptr %429, i64 0, i32 5
  %431 = load i32, ptr %430, align 8, !tbaa !117
  %432 = sext i32 %431 to i64
  %433 = shl nsw i64 %432, 2
  %434 = tail call ptr @xmalloc(i64 noundef %433) #31
  %435 = load ptr, ptr @cfun, align 8, !tbaa !75
  %436 = getelementptr inbounds %struct.function, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !101
  %438 = getelementptr inbounds %struct.control_flow_graph, ptr %437, i64 0, i32 5
  %439 = load i32, ptr %438, align 8, !tbaa !117
  %440 = sext i32 %439 to i64
  %441 = tail call ptr @xcalloc(i64 noundef %440, i64 noundef 4) #31
  %442 = load ptr, ptr @cfun, align 8, !tbaa !75
  %443 = getelementptr inbounds %struct.function, ptr %442, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !101
  %445 = getelementptr inbounds %struct.control_flow_graph, ptr %444, i64 0, i32 4
  %446 = load i32, ptr %445, align 4, !tbaa !284
  %447 = sext i32 %446 to i64
  %448 = shl nsw i64 %447, 4
  %449 = tail call ptr @xmalloc(i64 noundef %448) #31
  %450 = load ptr, ptr @cfun, align 8, !tbaa !75
  %451 = getelementptr inbounds %struct.function, ptr %450, i64 0, i32 1
  %452 = load ptr, ptr %451, align 8, !tbaa !101
  %453 = getelementptr inbounds %struct.control_flow_graph, ptr %452, i64 0, i32 5
  %454 = load i32, ptr %453, align 8, !tbaa !117
  %455 = tail call ptr @sbitmap_alloc(i32 noundef %454) #31
  tail call void @sbitmap_ones(ptr noundef %455) #31
  %456 = load ptr, ptr @cfun, align 8, !tbaa !75
  %457 = getelementptr inbounds %struct.function, ptr %456, i64 0, i32 1
  %458 = load ptr, ptr %457, align 8, !tbaa !101
  %459 = getelementptr inbounds %struct.control_flow_graph, ptr %458, i64 0, i32 5
  %460 = load i32, ptr %459, align 8, !tbaa !117
  %461 = tail call ptr @sbitmap_alloc(i32 noundef %460) #31
  tail call void @sbitmap_zero(ptr noundef %461) #31
  %462 = load ptr, ptr @cfun, align 8, !tbaa !75
  %463 = getelementptr inbounds %struct.function, ptr %462, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !101
  %465 = getelementptr inbounds %struct.control_flow_graph, ptr %464, i64 0, i32 5
  %466 = load i32, ptr %465, align 8, !tbaa !117
  %467 = tail call ptr @sbitmap_alloc(i32 noundef %466) #31
  tail call void @sbitmap_zero(ptr noundef %467) #31
  %468 = load ptr, ptr @cfun, align 8, !tbaa !75
  %469 = getelementptr inbounds %struct.function, ptr %468, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !101
  %471 = getelementptr inbounds %struct.control_flow_graph, ptr %470, i64 0, i32 5
  %472 = load i32, ptr %471, align 8, !tbaa !117
  %473 = tail call ptr @sbitmap_alloc(i32 noundef %472) #31
  tail call void @sbitmap_zero(ptr noundef %473) #31
  %474 = load ptr, ptr @cfun, align 8, !tbaa !75
  %475 = getelementptr inbounds %struct.function, ptr %474, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !101
  %477 = getelementptr inbounds %struct.control_flow_graph, ptr %476, i64 0, i32 5
  %478 = load i32, ptr %477, align 8, !tbaa !117
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %487, !prof !285

480:                                              ; preds = %426, %480
  %481 = phi i64 [ %483, %480 ], [ 0, %426 ]
  %482 = getelementptr inbounds i32, ptr %434, i64 %481
  store i32 -1, ptr %482, align 4, !tbaa !90
  %483 = add nuw nsw i64 %481, 1
  %484 = load i32, ptr %477, align 8, !tbaa !117
  %485 = sext i32 %484 to i64
  %486 = icmp slt i64 %483, %485
  br i1 %486, label %480, label %487, !prof !286, !llvm.loop !287

487:                                              ; preds = %480, %426
  %488 = load ptr, ptr %476, align 8, !tbaa !240
  %489 = getelementptr inbounds %struct.basic_block_def, ptr %488, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !288
  %491 = icmp eq ptr %490, null
  br i1 %491, label %495, label %492, !prof !283

492:                                              ; preds = %487
  %493 = load i32, ptr %490, align 8, !tbaa !105
  %494 = icmp eq i32 %493, 1
  br i1 %494, label %496, label %495, !prof !282

495:                                              ; preds = %492, %487
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.12) #31
  br label %496

496:                                              ; preds = %495, %492
  %497 = load ptr, ptr %489, align 8, !tbaa !288
  %498 = getelementptr inbounds %struct.VEC_edge_base, ptr %497, i64 0, i32 2, i64 0
  %499 = load ptr, ptr %498, align 8, !tbaa !75
  %500 = getelementptr inbounds %struct.edge_def, ptr %499, i64 0, i32 1
  %501 = load ptr, ptr %500, align 8, !tbaa !107
  %502 = getelementptr inbounds %struct.basic_block_def, ptr %501, i64 0, i32 1
  br label %503

503:                                              ; preds = %731, %496
  %504 = phi i32 [ 0, %496 ], [ %711, %731 ]
  %505 = phi i32 [ undef, %496 ], [ %712, %731 ]
  %506 = phi ptr [ %502, %496 ], [ %713, %731 ]
  %507 = phi i32 [ -1, %496 ], [ %714, %731 ]
  %508 = phi i32 [ 0, %496 ], [ %524, %731 ]
  %509 = phi i8 [ 1, %496 ], [ %521, %731 ]
  %510 = sext i32 %507 to i64
  br label %511

511:                                              ; preds = %503, %977
  %512 = phi i32 [ %507, %503 ], [ %992, %977 ]
  %513 = phi i64 [ %510, %503 ], [ %978, %977 ]
  %514 = phi i32 [ %504, %503 ], [ 0, %977 ]
  %515 = phi ptr [ %506, %503 ], [ %991, %977 ]
  %516 = phi i32 [ %508, %503 ], [ %764, %977 ]
  %517 = phi i8 [ %509, %503 ], [ %521, %977 ]
  br label %518

518:                                              ; preds = %511, %884
  %519 = phi i32 [ %514, %511 ], [ %885, %884 ]
  %520 = phi i32 [ %516, %511 ], [ %764, %884 ]
  %521 = phi i8 [ %517, %511 ], [ 0, %884 ]
  br label %522

522:                                              ; preds = %785, %518
  %523 = phi i32 [ %519, %518 ], [ %786, %785 ]
  %524 = phi i32 [ %520, %518 ], [ %764, %785 ]
  %525 = load ptr, ptr %515, align 8, !tbaa !75
  %526 = icmp eq ptr %525, null
  br i1 %526, label %529, label %527, !prof !289

527:                                              ; preds = %522
  %528 = load i32, ptr %525, align 8, !tbaa !105
  br label %529

529:                                              ; preds = %527, %522
  %530 = phi i32 [ %528, %527 ], [ 0, %522 ]
  %531 = icmp eq i32 %530, %523
  br i1 %531, label %539, label %532, !prof !290

532:                                              ; preds = %529
  %533 = zext i32 %523 to i64
  %534 = getelementptr inbounds %struct.VEC_edge_base, ptr %525, i64 0, i32 2, i64 %533
  %535 = load ptr, ptr %534, align 8, !tbaa !75
  %536 = getelementptr inbounds %struct.edge_def, ptr %535, i64 0, i32 3
  %537 = load ptr, ptr %536, align 8, !tbaa !291
  %538 = icmp eq ptr %537, null
  br i1 %538, label %732, label %539, !prof !292

539:                                              ; preds = %532, %529
  %540 = trunc i64 %513 to i32
  %541 = icmp sgt i32 %540, -1
  br i1 %541, label %542, label %710, !prof !285

542:                                              ; preds = %539
  %543 = zext i32 %512 to i64
  br label %544

544:                                              ; preds = %542, %704
  %545 = phi i64 [ %543, %542 ], [ %564, %704 ]
  %546 = phi ptr [ %515, %542 ], [ %570, %704 ]
  %547 = phi i32 [ %505, %542 ], [ %568, %704 ]
  %548 = phi i32 [ %523, %542 ], [ %705, %704 ]
  %549 = load ptr, ptr %546, align 8, !tbaa !75
  %550 = icmp eq ptr %549, null
  br i1 %550, label %553, label %551, !prof !293

551:                                              ; preds = %544
  %552 = load i32, ptr %549, align 8, !tbaa !105
  br label %553

553:                                              ; preds = %551, %544
  %554 = phi i32 [ %552, %551 ], [ 0, %544 ]
  %555 = icmp eq i32 %554, %548
  br i1 %555, label %563, label %556, !prof !294

556:                                              ; preds = %553
  %557 = zext i32 %548 to i64
  %558 = getelementptr inbounds %struct.VEC_edge_base, ptr %549, i64 0, i32 2, i64 %557
  %559 = load ptr, ptr %558, align 8, !tbaa !75
  %560 = getelementptr inbounds %struct.edge_def, ptr %559, i64 0, i32 3
  %561 = load ptr, ptr %560, align 8, !tbaa !291
  %562 = icmp eq ptr %561, null
  br i1 %562, label %708, label %563, !prof !295

563:                                              ; preds = %556, %553
  %564 = add nsw i64 %545, -1
  %565 = getelementptr inbounds %struct.edge_iterator, ptr %449, i64 %545
  %566 = load i32, ptr %565, align 8, !tbaa.struct !296
  %567 = getelementptr inbounds i8, ptr %565, i64 4
  %568 = load i32, ptr %567, align 4, !tbaa.struct !297
  %569 = getelementptr inbounds i8, ptr %565, i64 8
  %570 = load ptr, ptr %569, align 8, !tbaa.struct !298
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %573, !prof !299

572:                                              ; preds = %563
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.12) #31
  br label %573

573:                                              ; preds = %572, %563
  %574 = load ptr, ptr %570, align 8, !tbaa !75, !nonnull !300, !noundef !300
  %575 = zext i32 %566 to i64
  %576 = getelementptr inbounds %struct.VEC_edge_base, ptr %574, i64 0, i32 2, i64 %575
  %577 = load ptr, ptr %576, align 8, !tbaa !75
  %578 = load ptr, ptr %577, align 8, !tbaa !120
  %579 = getelementptr inbounds %struct.basic_block_def, ptr %578, i64 0, i32 9
  %580 = load i32, ptr %579, align 8, !tbaa !109
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %583, !prof !299

582:                                              ; preds = %573
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 684, ptr noundef nonnull @.str.12) #31
  br label %583

583:                                              ; preds = %582, %573
  %584 = load ptr, ptr %570, align 8, !tbaa !75, !nonnull !300, !noundef !300
  %585 = getelementptr inbounds %struct.VEC_edge_base, ptr %584, i64 0, i32 2, i64 %575
  %586 = load ptr, ptr %585, align 8, !tbaa !75
  %587 = getelementptr inbounds %struct.edge_def, ptr %586, i64 0, i32 1
  %588 = load ptr, ptr %587, align 8, !tbaa !107
  %589 = getelementptr inbounds %struct.basic_block_def, ptr %588, i64 0, i32 9
  %590 = load i32, ptr %589, align 8, !tbaa !109
  %591 = icmp eq i32 %590, 1
  br i1 %591, label %592, label %593, !prof !299

592:                                              ; preds = %583
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 686, ptr noundef nonnull @.str.12) #31
  br label %593

593:                                              ; preds = %592, %583
  %594 = load ptr, ptr %473, align 8, !tbaa !122
  %595 = icmp eq ptr %594, null
  br i1 %595, label %610, label %596, !prof !301

596:                                              ; preds = %593
  %597 = lshr i32 %590, 6
  %598 = zext nneg i32 %597 to i64
  %599 = getelementptr inbounds %struct.simple_bitmap_def, ptr %473, i64 0, i32 3, i64 %598
  %600 = load i64, ptr %599, align 8, !tbaa !119
  %601 = and i32 %590, 63
  %602 = zext nneg i32 %601 to i64
  %603 = shl nuw i64 1, %602
  %604 = and i64 %600, %603
  %605 = icmp eq i64 %604, 0
  br i1 %605, label %610, label %606

606:                                              ; preds = %596
  %607 = getelementptr inbounds i8, ptr %594, i64 %598
  %608 = load i8, ptr %607, align 1, !tbaa !86
  %609 = add i8 %608, -1
  store i8 %609, ptr %607, align 1, !tbaa !86
  br label %610

610:                                              ; preds = %606, %596, %593
  %611 = and i32 %590, 63
  %612 = zext nneg i32 %611 to i64
  %613 = shl nuw i64 1, %612
  %614 = xor i64 %613, -1
  %615 = lshr i32 %590, 6
  %616 = zext nneg i32 %615 to i64
  %617 = getelementptr inbounds %struct.simple_bitmap_def, ptr %473, i64 0, i32 3, i64 %616
  %618 = load i64, ptr %617, align 8, !tbaa !119
  %619 = and i64 %618, %614
  store i64 %619, ptr %617, align 8, !tbaa !119
  %620 = sext i32 %590 to i64
  %621 = getelementptr inbounds i32, ptr %434, i64 %620
  %622 = load i32, ptr %621, align 4, !tbaa !90
  %623 = icmp sgt i32 %622, -1
  br i1 %623, label %624, label %695, !prof !299

624:                                              ; preds = %610
  %625 = lshr i32 %622, 6
  %626 = zext nneg i32 %625 to i64
  %627 = getelementptr inbounds %struct.simple_bitmap_def, ptr %473, i64 0, i32 3, i64 %626
  %628 = load i64, ptr %627, align 8, !tbaa !119
  %629 = and i32 %622, 63
  %630 = zext nneg i32 %629 to i64
  %631 = shl nuw i64 1, %630
  %632 = and i64 %628, %631
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %695, label %634

634:                                              ; preds = %624
  %635 = sext i32 %580 to i64
  %636 = getelementptr inbounds i32, ptr %434, i64 %635
  %637 = load i32, ptr %636, align 4, !tbaa !90
  %638 = icmp eq i32 %637, -1
  br i1 %638, label %639, label %640

639:                                              ; preds = %634
  store i32 %622, ptr %636, align 4, !tbaa !90
  br label %695

640:                                              ; preds = %634
  %641 = sext i32 %637 to i64
  %642 = getelementptr inbounds i32, ptr %441, i64 %641
  %643 = load i32, ptr %642, align 4, !tbaa !90
  %644 = zext nneg i32 %622 to i64
  %645 = getelementptr inbounds i32, ptr %441, i64 %644
  %646 = load i32, ptr %645, align 4, !tbaa !90
  %647 = icmp sgt i32 %643, %646
  br i1 %647, label %648, label %665

648:                                              ; preds = %640
  %649 = load ptr, ptr %455, align 8, !tbaa !122
  %650 = icmp eq ptr %649, null
  br i1 %650, label %660, label %651

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %626
  %653 = load i64, ptr %652, align 8, !tbaa !119
  %654 = and i64 %653, %631
  %655 = icmp eq i64 %654, 0
  br i1 %655, label %660, label %656

656:                                              ; preds = %651
  %657 = getelementptr inbounds i8, ptr %649, i64 %626
  %658 = load i8, ptr %657, align 1, !tbaa !86
  %659 = add i8 %658, -1
  store i8 %659, ptr %657, align 1, !tbaa !86
  br label %660

660:                                              ; preds = %656, %651, %648
  %661 = xor i64 %631, -1
  %662 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %626
  %663 = load i64, ptr %662, align 8, !tbaa !119
  %664 = and i64 %663, %661
  store i64 %664, ptr %662, align 8, !tbaa !119
  br label %695

665:                                              ; preds = %640
  %666 = icmp slt i32 %643, %646
  br i1 %666, label %667, label %695

667:                                              ; preds = %665
  %668 = load ptr, ptr %455, align 8, !tbaa !122
  %669 = icmp eq ptr %668, null
  br i1 %669, label %684, label %670

670:                                              ; preds = %667
  %671 = lshr i32 %637, 6
  %672 = zext nneg i32 %671 to i64
  %673 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %672
  %674 = load i64, ptr %673, align 8, !tbaa !119
  %675 = and i32 %637, 63
  %676 = zext nneg i32 %675 to i64
  %677 = shl nuw i64 1, %676
  %678 = and i64 %674, %677
  %679 = icmp eq i64 %678, 0
  br i1 %679, label %684, label %680

680:                                              ; preds = %670
  %681 = getelementptr inbounds i8, ptr %668, i64 %672
  %682 = load i8, ptr %681, align 1, !tbaa !86
  %683 = add i8 %682, -1
  store i8 %683, ptr %681, align 1, !tbaa !86
  br label %684

684:                                              ; preds = %680, %670, %667
  %685 = and i32 %637, 63
  %686 = zext nneg i32 %685 to i64
  %687 = shl nuw i64 1, %686
  %688 = xor i64 %687, -1
  %689 = lshr i32 %637, 6
  %690 = zext nneg i32 %689 to i64
  %691 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %690
  %692 = load i64, ptr %691, align 8, !tbaa !119
  %693 = and i64 %692, %688
  store i64 %693, ptr %691, align 8, !tbaa !119
  %694 = load i32, ptr %621, align 4, !tbaa !90
  store i32 %694, ptr %636, align 4, !tbaa !90
  br label %695

695:                                              ; preds = %684, %665, %660, %639, %624, %610
  %696 = load ptr, ptr %570, align 8, !tbaa !75
  %697 = icmp eq ptr %696, null
  br i1 %697, label %700, label %698, !prof !299

698:                                              ; preds = %695
  %699 = load i32, ptr %696, align 8, !tbaa !105
  br label %700

700:                                              ; preds = %698, %695
  %701 = phi i32 [ %699, %698 ], [ 0, %695 ]
  %702 = icmp ult i32 %566, %701
  br i1 %702, label %704, label %703, !prof !301

703:                                              ; preds = %700
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %704

704:                                              ; preds = %703, %700
  %705 = add i32 %566, 1
  %706 = trunc i64 %545 to i32
  %707 = icmp sgt i32 %706, 0
  br i1 %707, label %544, label %710, !prof !302, !llvm.loop !303

708:                                              ; preds = %556
  %709 = trunc i64 %545 to i32
  br label %710

710:                                              ; preds = %708, %704, %539
  %711 = phi i32 [ %523, %539 ], [ %548, %708 ], [ %705, %704 ]
  %712 = phi i32 [ %505, %539 ], [ %547, %708 ], [ %568, %704 ]
  %713 = phi ptr [ %515, %539 ], [ %546, %708 ], [ %570, %704 ]
  %714 = phi i32 [ %540, %539 ], [ %709, %708 ], [ -1, %704 ]
  %715 = icmp slt i32 %714, 0
  br i1 %715, label %716, label %731, !prof !304

716:                                              ; preds = %710
  %717 = load ptr, ptr %713, align 8, !tbaa !75
  %718 = icmp eq ptr %717, null
  br i1 %718, label %721, label %719, !prof !305

719:                                              ; preds = %716
  %720 = load i32, ptr %717, align 8, !tbaa !105
  br label %721

721:                                              ; preds = %719, %716
  %722 = phi i32 [ %720, %719 ], [ 0, %716 ]
  %723 = icmp eq i32 %722, %711
  br i1 %723, label %993, label %724, !prof !306

724:                                              ; preds = %721
  %725 = zext i32 %711 to i64
  %726 = getelementptr inbounds %struct.VEC_edge_base, ptr %717, i64 0, i32 2, i64 %725
  %727 = load ptr, ptr %726, align 8, !tbaa !75
  %728 = getelementptr inbounds %struct.edge_def, ptr %727, i64 0, i32 3
  %729 = load ptr, ptr %728, align 8, !tbaa !291
  %730 = icmp eq ptr %729, null
  br i1 %730, label %731, label %993, !prof !282

731:                                              ; preds = %724, %710
  br label %503, !llvm.loop !307

732:                                              ; preds = %532
  %733 = load ptr, ptr %535, align 8, !tbaa !120
  %734 = getelementptr inbounds %struct.basic_block_def, ptr %733, i64 0, i32 9
  %735 = load i32, ptr %734, align 8, !tbaa !109
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %738, !prof !308

737:                                              ; preds = %732
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 703, ptr noundef nonnull @.str.12) #31
  br label %738

738:                                              ; preds = %737, %732
  %739 = load ptr, ptr %473, align 8, !tbaa !122
  %740 = icmp eq ptr %739, null
  br i1 %740, label %755, label %741, !prof !292

741:                                              ; preds = %738
  %742 = lshr i32 %735, 6
  %743 = zext nneg i32 %742 to i64
  %744 = getelementptr inbounds %struct.simple_bitmap_def, ptr %473, i64 0, i32 3, i64 %743
  %745 = load i64, ptr %744, align 8, !tbaa !119
  %746 = and i32 %735, 63
  %747 = zext nneg i32 %746 to i64
  %748 = shl nuw i64 1, %747
  %749 = and i64 %745, %748
  %750 = icmp eq i64 %749, 0
  br i1 %750, label %751, label %755

751:                                              ; preds = %741
  %752 = getelementptr inbounds i8, ptr %739, i64 %743
  %753 = load i8, ptr %752, align 1, !tbaa !86
  %754 = add i8 %753, 1
  store i8 %754, ptr %752, align 1, !tbaa !86
  br label %755

755:                                              ; preds = %751, %741, %738
  %756 = and i32 %735, 63
  %757 = zext nneg i32 %756 to i64
  %758 = shl nuw i64 1, %757
  %759 = lshr i32 %735, 6
  %760 = zext nneg i32 %759 to i64
  %761 = getelementptr inbounds %struct.simple_bitmap_def, ptr %473, i64 0, i32 3, i64 %760
  %762 = load i64, ptr %761, align 8, !tbaa !119
  %763 = or i64 %762, %758
  store i64 %763, ptr %761, align 8, !tbaa !119
  %764 = add nsw i32 %524, 1
  %765 = sext i32 %735 to i64
  %766 = getelementptr inbounds i32, ptr %441, i64 %765
  store i32 %764, ptr %766, align 4, !tbaa !90
  %767 = load ptr, ptr %515, align 8, !tbaa !75, !nonnull !300, !noundef !300
  %768 = getelementptr inbounds %struct.VEC_edge_base, ptr %767, i64 0, i32 2, i64 %533
  %769 = load ptr, ptr %768, align 8, !tbaa !75
  %770 = getelementptr inbounds %struct.edge_def, ptr %769, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !107
  %772 = getelementptr inbounds %struct.basic_block_def, ptr %771, i64 0, i32 9
  %773 = load i32, ptr %772, align 8, !tbaa !109
  %774 = icmp eq i32 %773, 1
  br i1 %774, label %775, label %787, !prof !309

775:                                              ; preds = %755
  %776 = getelementptr inbounds %struct.edge_def, ptr %769, i64 0, i32 3
  store ptr %769, ptr %776, align 8, !tbaa !291
  %777 = load ptr, ptr %515, align 8, !tbaa !75
  %778 = icmp eq ptr %777, null
  br i1 %778, label %781, label %779, !prof !310

779:                                              ; preds = %775
  %780 = load i32, ptr %777, align 8, !tbaa !105
  br label %781

781:                                              ; preds = %779, %775
  %782 = phi i32 [ %780, %779 ], [ 0, %775 ]
  %783 = icmp ult i32 %523, %782
  br i1 %783, label %785, label %784, !prof !311

784:                                              ; preds = %781, %974
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %785

785:                                              ; preds = %784, %974, %781
  %786 = add i32 %523, 1
  br label %522, !llvm.loop !307

787:                                              ; preds = %755
  %788 = lshr i32 %773, 6
  %789 = zext nneg i32 %788 to i64
  %790 = getelementptr inbounds %struct.simple_bitmap_def, ptr %473, i64 0, i32 3, i64 %789
  %791 = load i64, ptr %790, align 8, !tbaa !119
  %792 = and i32 %773, 63
  %793 = zext nneg i32 %792 to i64
  %794 = shl nuw i64 1, %793
  %795 = and i64 %791, %794
  %796 = icmp eq i64 %795, 0
  br i1 %796, label %886, label %797, !prof !312

797:                                              ; preds = %787
  %798 = load ptr, ptr %461, align 8, !tbaa !122
  %799 = icmp eq ptr %798, null
  br i1 %799, label %809, label %800

800:                                              ; preds = %797
  %801 = getelementptr inbounds %struct.simple_bitmap_def, ptr %461, i64 0, i32 3, i64 %789
  %802 = load i64, ptr %801, align 8, !tbaa !119
  %803 = and i64 %802, %794
  %804 = icmp eq i64 %803, 0
  br i1 %804, label %805, label %809

805:                                              ; preds = %800
  %806 = getelementptr inbounds i8, ptr %798, i64 %789
  %807 = load i8, ptr %806, align 1, !tbaa !86
  %808 = add i8 %807, 1
  store i8 %808, ptr %806, align 1, !tbaa !86
  br label %809

809:                                              ; preds = %805, %800, %797
  %810 = getelementptr inbounds %struct.simple_bitmap_def, ptr %461, i64 0, i32 3, i64 %789
  %811 = load i64, ptr %810, align 8, !tbaa !119
  %812 = or i64 %811, %794
  store i64 %812, ptr %810, align 8, !tbaa !119
  %813 = getelementptr inbounds i32, ptr %434, i64 %765
  %814 = load i32, ptr %813, align 4, !tbaa !90
  %815 = icmp eq i32 %814, -1
  br i1 %815, label %816, label %817

816:                                              ; preds = %809
  store i32 %773, ptr %813, align 4, !tbaa !90
  br label %871

817:                                              ; preds = %809
  %818 = sext i32 %814 to i64
  %819 = getelementptr inbounds i32, ptr %441, i64 %818
  %820 = load i32, ptr %819, align 4, !tbaa !90
  %821 = sext i32 %773 to i64
  %822 = getelementptr inbounds i32, ptr %441, i64 %821
  %823 = load i32, ptr %822, align 4, !tbaa !90
  %824 = icmp sgt i32 %820, %823
  br i1 %824, label %825, label %842

825:                                              ; preds = %817
  %826 = load ptr, ptr %455, align 8, !tbaa !122
  %827 = icmp eq ptr %826, null
  br i1 %827, label %837, label %828

828:                                              ; preds = %825
  %829 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %789
  %830 = load i64, ptr %829, align 8, !tbaa !119
  %831 = and i64 %830, %794
  %832 = icmp eq i64 %831, 0
  br i1 %832, label %837, label %833

833:                                              ; preds = %828
  %834 = getelementptr inbounds i8, ptr %826, i64 %789
  %835 = load i8, ptr %834, align 1, !tbaa !86
  %836 = add i8 %835, -1
  store i8 %836, ptr %834, align 1, !tbaa !86
  br label %837

837:                                              ; preds = %833, %828, %825
  %838 = xor i64 %794, -1
  %839 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %789
  %840 = load i64, ptr %839, align 8, !tbaa !119
  %841 = and i64 %840, %838
  store i64 %841, ptr %839, align 8, !tbaa !119
  br label %871

842:                                              ; preds = %817
  %843 = icmp slt i32 %820, %823
  br i1 %843, label %844, label %871

844:                                              ; preds = %842
  %845 = load ptr, ptr %455, align 8, !tbaa !122
  %846 = icmp eq ptr %845, null
  br i1 %846, label %861, label %847

847:                                              ; preds = %844
  %848 = lshr i32 %814, 6
  %849 = zext nneg i32 %848 to i64
  %850 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %849
  %851 = load i64, ptr %850, align 8, !tbaa !119
  %852 = and i32 %814, 63
  %853 = zext nneg i32 %852 to i64
  %854 = shl nuw i64 1, %853
  %855 = and i64 %851, %854
  %856 = icmp eq i64 %855, 0
  br i1 %856, label %861, label %857

857:                                              ; preds = %847
  %858 = getelementptr inbounds i8, ptr %845, i64 %849
  %859 = load i8, ptr %858, align 1, !tbaa !86
  %860 = add i8 %859, -1
  store i8 %860, ptr %858, align 1, !tbaa !86
  br label %861

861:                                              ; preds = %857, %847, %844
  %862 = and i32 %814, 63
  %863 = zext nneg i32 %862 to i64
  %864 = shl nuw i64 1, %863
  %865 = xor i64 %864, -1
  %866 = lshr i32 %814, 6
  %867 = zext nneg i32 %866 to i64
  %868 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %867
  %869 = load i64, ptr %868, align 8, !tbaa !119
  %870 = and i64 %869, %865
  store i64 %870, ptr %868, align 8, !tbaa !119
  store i32 %773, ptr %813, align 4, !tbaa !90
  br label %871

871:                                              ; preds = %861, %842, %837, %816
  %872 = load ptr, ptr %515, align 8, !tbaa !75, !nonnull !300, !noundef !300
  %873 = getelementptr inbounds %struct.VEC_edge_base, ptr %872, i64 0, i32 2, i64 %533
  %874 = load ptr, ptr %873, align 8, !tbaa !75
  %875 = getelementptr inbounds %struct.edge_def, ptr %874, i64 0, i32 3
  store ptr %874, ptr %875, align 8, !tbaa !291
  %876 = load ptr, ptr %515, align 8, !tbaa !75
  %877 = icmp eq ptr %876, null
  br i1 %877, label %880, label %878

878:                                              ; preds = %871
  %879 = load i32, ptr %876, align 8, !tbaa !105
  br label %880

880:                                              ; preds = %878, %871
  %881 = phi i32 [ %879, %878 ], [ 0, %871 ]
  %882 = icmp ult i32 %523, %881
  br i1 %882, label %884, label %883

883:                                              ; preds = %880
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %884

884:                                              ; preds = %883, %880
  %885 = add i32 %523, 1
  br label %518, !llvm.loop !307

886:                                              ; preds = %787
  %887 = sext i32 %773 to i64
  %888 = getelementptr inbounds i32, ptr %441, i64 %887
  %889 = load i32, ptr %888, align 4, !tbaa !90
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %977, label %891, !prof !313

891:                                              ; preds = %886
  %892 = getelementptr inbounds i32, ptr %434, i64 %887
  %893 = load i32, ptr %892, align 4, !tbaa !90
  %894 = icmp sgt i32 %893, -1
  br i1 %894, label %895, label %965, !prof !314

895:                                              ; preds = %891
  %896 = lshr i32 %893, 6
  %897 = zext nneg i32 %896 to i64
  %898 = getelementptr inbounds %struct.simple_bitmap_def, ptr %473, i64 0, i32 3, i64 %897
  %899 = load i64, ptr %898, align 8, !tbaa !119
  %900 = and i32 %893, 63
  %901 = zext nneg i32 %900 to i64
  %902 = shl nuw i64 1, %901
  %903 = and i64 %899, %902
  %904 = icmp eq i64 %903, 0
  br i1 %904, label %965, label %905

905:                                              ; preds = %895
  %906 = getelementptr inbounds i32, ptr %434, i64 %765
  %907 = load i32, ptr %906, align 4, !tbaa !90
  %908 = icmp eq i32 %907, -1
  br i1 %908, label %909, label %910

909:                                              ; preds = %905
  store i32 %893, ptr %906, align 4, !tbaa !90
  br label %965

910:                                              ; preds = %905
  %911 = sext i32 %907 to i64
  %912 = getelementptr inbounds i32, ptr %441, i64 %911
  %913 = load i32, ptr %912, align 4, !tbaa !90
  %914 = zext nneg i32 %893 to i64
  %915 = getelementptr inbounds i32, ptr %441, i64 %914
  %916 = load i32, ptr %915, align 4, !tbaa !90
  %917 = icmp sgt i32 %913, %916
  br i1 %917, label %918, label %935

918:                                              ; preds = %910
  %919 = load ptr, ptr %455, align 8, !tbaa !122
  %920 = icmp eq ptr %919, null
  br i1 %920, label %930, label %921

921:                                              ; preds = %918
  %922 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %897
  %923 = load i64, ptr %922, align 8, !tbaa !119
  %924 = and i64 %923, %902
  %925 = icmp eq i64 %924, 0
  br i1 %925, label %930, label %926

926:                                              ; preds = %921
  %927 = getelementptr inbounds i8, ptr %919, i64 %897
  %928 = load i8, ptr %927, align 1, !tbaa !86
  %929 = add i8 %928, -1
  store i8 %929, ptr %927, align 1, !tbaa !86
  br label %930

930:                                              ; preds = %926, %921, %918
  %931 = xor i64 %902, -1
  %932 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %897
  %933 = load i64, ptr %932, align 8, !tbaa !119
  %934 = and i64 %933, %931
  store i64 %934, ptr %932, align 8, !tbaa !119
  br label %965

935:                                              ; preds = %910
  %936 = icmp slt i32 %913, %916
  br i1 %936, label %937, label %965

937:                                              ; preds = %935
  %938 = load ptr, ptr %455, align 8, !tbaa !122
  %939 = icmp eq ptr %938, null
  br i1 %939, label %954, label %940

940:                                              ; preds = %937
  %941 = lshr i32 %907, 6
  %942 = zext nneg i32 %941 to i64
  %943 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %942
  %944 = load i64, ptr %943, align 8, !tbaa !119
  %945 = and i32 %907, 63
  %946 = zext nneg i32 %945 to i64
  %947 = shl nuw i64 1, %946
  %948 = and i64 %944, %947
  %949 = icmp eq i64 %948, 0
  br i1 %949, label %954, label %950

950:                                              ; preds = %940
  %951 = getelementptr inbounds i8, ptr %938, i64 %942
  %952 = load i8, ptr %951, align 1, !tbaa !86
  %953 = add i8 %952, -1
  store i8 %953, ptr %951, align 1, !tbaa !86
  br label %954

954:                                              ; preds = %950, %940, %937
  %955 = and i32 %907, 63
  %956 = zext nneg i32 %955 to i64
  %957 = shl nuw i64 1, %956
  %958 = xor i64 %957, -1
  %959 = lshr i32 %907, 6
  %960 = zext nneg i32 %959 to i64
  %961 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %960
  %962 = load i64, ptr %961, align 8, !tbaa !119
  %963 = and i64 %962, %958
  store i64 %963, ptr %961, align 8, !tbaa !119
  %964 = load i32, ptr %892, align 4, !tbaa !90
  store i32 %964, ptr %906, align 4, !tbaa !90
  br label %965

965:                                              ; preds = %954, %935, %930, %909, %895, %891
  %966 = load ptr, ptr %515, align 8, !tbaa !75, !nonnull !300, !noundef !300
  %967 = getelementptr inbounds %struct.VEC_edge_base, ptr %966, i64 0, i32 2, i64 %533
  %968 = load ptr, ptr %967, align 8, !tbaa !75
  %969 = getelementptr inbounds %struct.edge_def, ptr %968, i64 0, i32 3
  store ptr %968, ptr %969, align 8, !tbaa !291
  %970 = load ptr, ptr %515, align 8, !tbaa !75
  %971 = icmp eq ptr %970, null
  br i1 %971, label %974, label %972, !prof !314

972:                                              ; preds = %965
  %973 = load i32, ptr %970, align 8, !tbaa !105
  br label %974

974:                                              ; preds = %972, %965
  %975 = phi i32 [ %973, %972 ], [ 0, %965 ]
  %976 = icmp ult i32 %523, %975
  br i1 %976, label %785, label %784, !prof !315

977:                                              ; preds = %886
  %978 = add i64 %513, 1
  %979 = getelementptr inbounds %struct.edge_iterator, ptr %449, i64 %978
  store i32 %523, ptr %979, align 8, !tbaa.struct !296
  %980 = getelementptr inbounds i8, ptr %979, i64 4
  store i32 %505, ptr %980, align 4, !tbaa.struct !297
  %981 = getelementptr inbounds i8, ptr %979, i64 8
  store ptr %515, ptr %981, align 8, !tbaa.struct !298
  %982 = load ptr, ptr %515, align 8, !tbaa !75, !nonnull !300, !noundef !300
  %983 = getelementptr inbounds %struct.VEC_edge_base, ptr %982, i64 0, i32 2, i64 %533
  %984 = load ptr, ptr %983, align 8, !tbaa !75
  %985 = getelementptr inbounds %struct.edge_def, ptr %984, i64 0, i32 3
  store ptr %984, ptr %985, align 8, !tbaa !291
  %986 = load ptr, ptr %515, align 8, !tbaa !75, !nonnull !300, !noundef !300
  %987 = getelementptr inbounds %struct.VEC_edge_base, ptr %986, i64 0, i32 2, i64 %533
  %988 = load ptr, ptr %987, align 8, !tbaa !75
  %989 = getelementptr inbounds %struct.edge_def, ptr %988, i64 0, i32 1
  %990 = load ptr, ptr %989, align 8, !tbaa !107
  %991 = getelementptr inbounds %struct.basic_block_def, ptr %990, i64 0, i32 1
  %992 = add i32 %512, 1
  br label %511, !llvm.loop !307

993:                                              ; preds = %724, %721
  %994 = load ptr, ptr @cfun, align 8, !tbaa !75
  %995 = getelementptr inbounds %struct.function, ptr %994, i64 0, i32 1
  %996 = load ptr, ptr %995, align 8, !tbaa !101
  %997 = load ptr, ptr %996, align 8, !tbaa !75
  %998 = icmp eq ptr %997, null
  br i1 %998, label %1033, label %999, !prof !242

999:                                              ; preds = %993, %1029
  %1000 = phi ptr [ %1031, %1029 ], [ %997, %993 ]
  %1001 = getelementptr inbounds %struct.basic_block_def, ptr %1000, i64 0, i32 1
  br label %1002

1002:                                             ; preds = %1027, %999
  %1003 = phi i32 [ 0, %999 ], [ %1028, %1027 ]
  %1004 = load ptr, ptr %1001, align 8, !tbaa !75
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1008, label %1006, !prof !316

1006:                                             ; preds = %1002
  %1007 = load i32, ptr %1004, align 8, !tbaa !105
  br label %1008

1008:                                             ; preds = %1006, %1002
  %1009 = phi i32 [ %1007, %1006 ], [ 0, %1002 ]
  %1010 = icmp eq i32 %1009, %1003
  br i1 %1010, label %1015, label %1011, !prof !317

1011:                                             ; preds = %1008
  %1012 = zext i32 %1003 to i64
  %1013 = getelementptr inbounds %struct.VEC_edge_base, ptr %1004, i64 0, i32 2, i64 %1012
  %1014 = load ptr, ptr %1013, align 8, !tbaa !75
  br label %1015

1015:                                             ; preds = %1011, %1008
  %1016 = phi ptr [ %1014, %1011 ], [ null, %1008 ]
  br i1 %1010, label %1029, label %1017, !prof !317

1017:                                             ; preds = %1015
  %1018 = getelementptr inbounds %struct.edge_def, ptr %1016, i64 0, i32 3
  store ptr null, ptr %1018, align 8, !tbaa !291
  %1019 = load ptr, ptr %1001, align 8, !tbaa !75
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1023, label %1021, !prof !318

1021:                                             ; preds = %1017
  %1022 = load i32, ptr %1019, align 8, !tbaa !105
  br label %1023

1023:                                             ; preds = %1021, %1017
  %1024 = phi i32 [ %1022, %1021 ], [ 0, %1017 ]
  %1025 = icmp ult i32 %1003, %1024
  br i1 %1025, label %1027, label %1026, !prof !319

1026:                                             ; preds = %1023
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %1027

1027:                                             ; preds = %1026, %1023
  %1028 = add i32 %1003, 1
  br label %1002, !llvm.loop !320

1029:                                             ; preds = %1015
  %1030 = getelementptr inbounds %struct.basic_block_def, ptr %1000, i64 0, i32 6
  %1031 = load ptr, ptr %1030, align 8, !tbaa !75
  %1032 = icmp eq ptr %1031, null
  br i1 %1032, label %1033, label %999, !prof !321, !llvm.loop !322

1033:                                             ; preds = %1029, %993
  %1034 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1035 = getelementptr inbounds %struct.function, ptr %1034, i64 0, i32 1
  %1036 = load ptr, ptr %1035, align 8, !tbaa !101
  %1037 = load ptr, ptr %1036, align 8, !tbaa !240
  %1038 = getelementptr inbounds %struct.control_flow_graph, ptr %1036, i64 0, i32 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !128
  br label %1040

1040:                                             ; preds = %1045, %1033
  %1041 = phi ptr [ %1037, %1033 ], [ %1043, %1045 ]
  %1042 = getelementptr inbounds %struct.basic_block_def, ptr %1041, i64 0, i32 6
  %1043 = load ptr, ptr %1042, align 8, !tbaa !241
  %1044 = icmp eq ptr %1043, %1039
  br i1 %1044, label %1052, label %1045, !prof !323

1045:                                             ; preds = %1040
  %1046 = getelementptr inbounds %struct.basic_block_def, ptr %1043, i64 0, i32 9
  %1047 = load i32, ptr %1046, align 8, !tbaa !109
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds i32, ptr %441, i64 %1048
  %1050 = load i32, ptr %1049, align 4, !tbaa !90
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1052, label %1040, !prof !324, !llvm.loop !325

1052:                                             ; preds = %1045, %1040
  %1053 = getelementptr inbounds %struct.basic_block_def, ptr %1037, i64 0, i32 6
  %1054 = load ptr, ptr %1053, align 8, !tbaa !241
  %1055 = icmp eq ptr %1054, %1039
  br i1 %1055, label %1071, label %1056, !prof !242

1056:                                             ; preds = %1052, %1062
  %1057 = phi ptr [ %1069, %1062 ], [ %1054, %1052 ]
  %1058 = load ptr, ptr %1057, align 8, !tbaa !257
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1062, label %1060, !prof !258

1060:                                             ; preds = %1056
  %1061 = load i32, ptr %1058, align 8, !tbaa !105
  br label %1062

1062:                                             ; preds = %1060, %1056
  %1063 = phi i32 [ %1061, %1060 ], [ 0, %1056 ]
  %1064 = getelementptr inbounds %struct.basic_block_def, ptr %1057, i64 0, i32 9
  %1065 = load i32, ptr %1064, align 8, !tbaa !109
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i32, ptr %441, i64 %1066
  store i32 %1063, ptr %1067, align 4, !tbaa !90
  %1068 = getelementptr inbounds %struct.basic_block_def, ptr %1057, i64 0, i32 6
  %1069 = load ptr, ptr %1068, align 8, !tbaa !241
  %1070 = icmp eq ptr %1069, %1039
  br i1 %1070, label %1071, label %1056, !prof !262, !llvm.loop !326

1071:                                             ; preds = %1062, %1052
  br i1 %1044, label %1072, label %1819, !prof !283

1072:                                             ; preds = %1071
  %1073 = icmp eq i8 %521, 0
  br i1 %1073, label %1089, label %1074

1074:                                             ; preds = %1072
  %1075 = load ptr, ptr %461, align 8, !tbaa !122
  %1076 = icmp eq ptr %1075, null
  br i1 %1076, label %1085, label %1077

1077:                                             ; preds = %1074
  %1078 = getelementptr inbounds %struct.simple_bitmap_def, ptr %461, i64 0, i32 3, i64 0
  %1079 = load i64, ptr %1078, align 8, !tbaa !119
  %1080 = and i64 %1079, 1
  %1081 = icmp eq i64 %1080, 0
  br i1 %1081, label %1082, label %1085

1082:                                             ; preds = %1077
  %1083 = load i8, ptr %1075, align 1, !tbaa !86
  %1084 = add i8 %1083, 1
  store i8 %1084, ptr %1075, align 1, !tbaa !86
  br label %1085

1085:                                             ; preds = %1082, %1077, %1074
  %1086 = getelementptr inbounds %struct.simple_bitmap_def, ptr %461, i64 0, i32 3, i64 0
  %1087 = load i64, ptr %1086, align 8, !tbaa !119
  %1088 = or i64 %1087, 1
  store i64 %1088, ptr %1086, align 8, !tbaa !119
  br label %1089

1089:                                             ; preds = %1085, %1072
  %1090 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1091 = getelementptr inbounds %struct.function, ptr %1090, i64 0, i32 1
  %1092 = load ptr, ptr %1091, align 8, !tbaa !101
  %1093 = getelementptr inbounds %struct.control_flow_graph, ptr %1092, i64 0, i32 3
  %1094 = load i32, ptr %1093, align 8, !tbaa !114
  %1095 = sext i32 %1094 to i64
  %1096 = shl nsw i64 %1095, 2
  %1097 = tail call ptr @xmalloc(i64 noundef %1096) #31
  %1098 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %1099 = getelementptr inbounds %struct.param_info, ptr %1098, i64 82, i32 1
  %1100 = load i32, ptr %1099, align 8, !tbaa !115
  %1101 = icmp sgt i32 %1100, 0
  br i1 %1101, label %1102, label %1117

1102:                                             ; preds = %1089
  %1103 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1104 = getelementptr inbounds %struct.function, ptr %1103, i64 0, i32 1
  %1105 = load ptr, ptr %1104, align 8, !tbaa !101
  %1106 = getelementptr inbounds %struct.control_flow_graph, ptr %1105, i64 0, i32 5
  %1107 = load i32, ptr %1106, align 8, !tbaa !117
  %1108 = sext i32 %1107 to i64
  %1109 = shl nsw i64 %1108, 2
  %1110 = tail call ptr @xmalloc(i64 noundef %1109) #31
  %1111 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1112 = getelementptr inbounds %struct.function, ptr %1111, i64 0, i32 1
  %1113 = load ptr, ptr %1112, align 8, !tbaa !101
  %1114 = getelementptr inbounds %struct.control_flow_graph, ptr %1113, i64 0, i32 5
  %1115 = load i32, ptr %1114, align 8, !tbaa !117
  %1116 = tail call ptr @sbitmap_alloc(i32 noundef %1115) #31
  tail call void @sbitmap_zero(ptr noundef %1116) #31
  br label %1117

1117:                                             ; preds = %1102, %1089
  %1118 = phi ptr [ %1116, %1102 ], [ null, %1089 ]
  %1119 = phi ptr [ %1110, %1102 ], [ null, %1089 ]
  %1120 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1121 = getelementptr inbounds %struct.function, ptr %1120, i64 0, i32 1
  %1122 = load ptr, ptr %1121, align 8, !tbaa !101
  %1123 = load ptr, ptr %1122, align 8, !tbaa !240
  %1124 = getelementptr inbounds %struct.basic_block_def, ptr %1123, i64 0, i32 6
  %1125 = load ptr, ptr %1124, align 8, !tbaa !241
  %1126 = getelementptr inbounds %struct.control_flow_graph, ptr %1122, i64 0, i32 1
  %1127 = load ptr, ptr %1126, align 8, !tbaa !128
  %1128 = icmp eq ptr %1125, %1127
  br i1 %1128, label %1814, label %1129

1129:                                             ; preds = %1117, %1803
  %1130 = phi ptr [ %1810, %1803 ], [ %1122, %1117 ]
  %1131 = phi ptr [ %1807, %1803 ], [ %1125, %1117 ]
  %1132 = phi ptr [ %1805, %1803 ], [ %441, %1117 ]
  %1133 = phi ptr [ %1804, %1803 ], [ %1119, %1117 ]
  %1134 = getelementptr inbounds %struct.basic_block_def, ptr %1131, i64 0, i32 9
  %1135 = load i32, ptr %1134, align 8, !tbaa !109
  %1136 = lshr i32 %1135, 6
  %1137 = zext nneg i32 %1136 to i64
  %1138 = getelementptr inbounds %struct.simple_bitmap_def, ptr %461, i64 0, i32 3, i64 %1137
  %1139 = load i64, ptr %1138, align 8, !tbaa !119
  %1140 = and i32 %1135, 63
  %1141 = zext nneg i32 %1140 to i64
  %1142 = shl nuw i64 1, %1141
  %1143 = and i64 %1142, %1139
  %1144 = icmp eq i64 %1143, 0
  br i1 %1144, label %1803, label %1145

1145:                                             ; preds = %1129
  %1146 = getelementptr inbounds %struct.simple_bitmap_def, ptr %455, i64 0, i32 3, i64 %1137
  %1147 = load i64, ptr %1146, align 8, !tbaa !119
  %1148 = and i64 %1147, %1142
  %1149 = icmp eq i64 %1148, 0
  br i1 %1149, label %1803, label %1150

1150:                                             ; preds = %1145
  %1151 = load ptr, ptr %1130, align 8, !tbaa !240
  %1152 = getelementptr inbounds %struct.basic_block_def, ptr %1151, i64 0, i32 6
  %1153 = load ptr, ptr %1152, align 8, !tbaa !241
  %1154 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1155 = getelementptr inbounds %struct.function, ptr %1154, i64 0, i32 1
  %1156 = load ptr, ptr %1155, align 8, !tbaa !101
  %1157 = getelementptr inbounds %struct.control_flow_graph, ptr %1156, i64 0, i32 1
  %1158 = load ptr, ptr %1157, align 8, !tbaa !128
  %1159 = icmp eq ptr %1153, %1158
  br i1 %1159, label %1183, label %1160

1160:                                             ; preds = %1150, %1174
  %1161 = phi ptr [ %1176, %1174 ], [ %1153, %1150 ]
  %1162 = load i32, ptr %1134, align 8, !tbaa !109
  %1163 = getelementptr inbounds %struct.basic_block_def, ptr %1161, i64 0, i32 9
  %1164 = load i32, ptr %1163, align 8, !tbaa !109
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds i32, ptr %434, i64 %1165
  %1167 = load i32, ptr %1166, align 4, !tbaa !90
  %1168 = icmp ne i32 %1162, %1167
  %1169 = icmp eq ptr %1131, %1161
  %1170 = or i1 %1169, %1168
  br i1 %1170, label %1174, label %1171

1171:                                             ; preds = %1160
  %1172 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %1161, ptr noundef %1131) #31
  %1173 = icmp eq i8 %1172, 0
  br i1 %1173, label %1183, label %1174

1174:                                             ; preds = %1171, %1160
  %1175 = getelementptr inbounds %struct.basic_block_def, ptr %1161, i64 0, i32 6
  %1176 = load ptr, ptr %1175, align 8, !tbaa !241
  %1177 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1178 = getelementptr inbounds %struct.function, ptr %1177, i64 0, i32 1
  %1179 = load ptr, ptr %1178, align 8, !tbaa !101
  %1180 = getelementptr inbounds %struct.control_flow_graph, ptr %1179, i64 0, i32 1
  %1181 = load ptr, ptr %1180, align 8, !tbaa !128
  %1182 = icmp eq ptr %1176, %1181
  br i1 %1182, label %1183, label %1160, !llvm.loop !327

1183:                                             ; preds = %1174, %1171, %1150
  %1184 = phi ptr [ %1153, %1150 ], [ %1176, %1174 ], [ %1161, %1171 ]
  %1185 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1186 = getelementptr inbounds %struct.function, ptr %1185, i64 0, i32 1
  %1187 = load ptr, ptr %1186, align 8, !tbaa !101
  %1188 = getelementptr inbounds %struct.control_flow_graph, ptr %1187, i64 0, i32 1
  %1189 = load ptr, ptr %1188, align 8, !tbaa !128
  %1190 = icmp eq ptr %1184, %1189
  br i1 %1190, label %1191, label %1803

1191:                                             ; preds = %1183
  %1192 = load i32, ptr %1134, align 8, !tbaa !109
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds i32, ptr %434, i64 %1193
  %1195 = load i32, ptr %1194, align 4, !tbaa !90
  br i1 %1101, label %1196, label %1201

1196:                                             ; preds = %1191
  %1197 = getelementptr inbounds %struct.control_flow_graph, ptr %1187, i64 0, i32 5
  %1198 = load i32, ptr %1197, align 8, !tbaa !117
  %1199 = sext i32 %1198 to i64
  %1200 = shl nsw i64 %1199, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1133, ptr align 4 %1132, i64 %1200, i1 false)
  br label %1201

1201:                                             ; preds = %1196, %1191
  %1202 = getelementptr inbounds %struct.basic_block_def, ptr %1131, i64 0, i32 1
  br label %1203

1203:                                             ; preds = %1241, %1201
  %1204 = phi i32 [ 0, %1201 ], [ %1242, %1241 ]
  %1205 = load ptr, ptr %1202, align 8, !tbaa !75
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1209, label %1207

1207:                                             ; preds = %1203
  %1208 = load i32, ptr %1205, align 8, !tbaa !105
  br label %1209

1209:                                             ; preds = %1207, %1203
  %1210 = phi i32 [ %1208, %1207 ], [ 0, %1203 ]
  %1211 = icmp eq i32 %1210, %1204
  br i1 %1211, label %1216, label %1212

1212:                                             ; preds = %1209
  %1213 = zext i32 %1204 to i64
  %1214 = getelementptr inbounds %struct.VEC_edge_base, ptr %1205, i64 0, i32 2, i64 %1213
  %1215 = load ptr, ptr %1214, align 8, !tbaa !75
  br label %1216

1216:                                             ; preds = %1212, %1209
  %1217 = phi ptr [ %1215, %1212 ], [ null, %1209 ]
  br i1 %1211, label %1243, label %1218

1218:                                             ; preds = %1216
  %1219 = getelementptr inbounds %struct.edge_def, ptr %1217, i64 0, i32 1
  %1220 = load ptr, ptr %1219, align 8, !tbaa !107
  %1221 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1222 = getelementptr inbounds %struct.function, ptr %1221, i64 0, i32 1
  %1223 = load ptr, ptr %1222, align 8, !tbaa !101
  %1224 = getelementptr inbounds %struct.control_flow_graph, ptr %1223, i64 0, i32 1
  %1225 = load ptr, ptr %1224, align 8, !tbaa !128
  %1226 = icmp eq ptr %1220, %1225
  br i1 %1226, label %1234, label %1227

1227:                                             ; preds = %1218
  %1228 = getelementptr inbounds %struct.basic_block_def, ptr %1220, i64 0, i32 9
  %1229 = load i32, ptr %1228, align 8, !tbaa !109
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds i32, ptr %1132, i64 %1230
  %1232 = load i32, ptr %1231, align 4, !tbaa !90
  %1233 = add nsw i32 %1232, -1
  store i32 %1233, ptr %1231, align 4, !tbaa !90
  br label %1234

1234:                                             ; preds = %1227, %1218
  br i1 %1206, label %1237, label %1235

1235:                                             ; preds = %1234
  %1236 = load i32, ptr %1205, align 8, !tbaa !105
  br label %1237

1237:                                             ; preds = %1235, %1234
  %1238 = phi i32 [ %1236, %1235 ], [ 0, %1234 ]
  %1239 = icmp ult i32 %1204, %1238
  br i1 %1239, label %1241, label %1240

1240:                                             ; preds = %1237
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %1241

1241:                                             ; preds = %1240, %1237
  %1242 = add i32 %1204, 1
  br label %1203, !llvm.loop !328

1243:                                             ; preds = %1216
  %1244 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %1245 = getelementptr inbounds %struct.common_sched_info_def, ptr %1244, i64 0, i32 2
  %1246 = load ptr, ptr %1245, align 8, !tbaa !126
  %1247 = tail call i32 %1246(ptr noundef %1131) #31
  br i1 %1073, label %1248, label %1250

1248:                                             ; preds = %1243
  %1249 = icmp eq ptr %1131, null
  br label %1363

1250:                                             ; preds = %1243
  %1251 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1252 = getelementptr inbounds %struct.function, ptr %1251, i64 0, i32 1
  %1253 = load ptr, ptr %1252, align 8, !tbaa !101
  %1254 = load ptr, ptr %1253, align 8, !tbaa !240
  %1255 = getelementptr inbounds %struct.basic_block_def, ptr %1254, i64 0, i32 6
  %1256 = load ptr, ptr %1255, align 8, !tbaa !241
  %1257 = getelementptr inbounds %struct.control_flow_graph, ptr %1253, i64 0, i32 1
  %1258 = load ptr, ptr %1257, align 8, !tbaa !128
  %1259 = icmp eq ptr %1256, %1258
  br i1 %1259, label %1469, label %1260

1260:                                             ; preds = %1250, %1351
  %1261 = phi ptr [ %1356, %1351 ], [ %1256, %1250 ]
  %1262 = phi i32 [ %1354, %1351 ], [ -1, %1250 ]
  %1263 = phi i32 [ %1353, %1351 ], [ 1, %1250 ]
  %1264 = phi i32 [ %1352, %1351 ], [ %1247, %1250 ]
  %1265 = getelementptr inbounds %struct.basic_block_def, ptr %1261, i64 0, i32 1
  %1266 = load ptr, ptr %1265, align 8, !tbaa !288
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1272, label %1268

1268:                                             ; preds = %1260
  %1269 = load i32, ptr %1266, align 8, !tbaa !105
  %1270 = icmp eq i32 %1269, 1
  %1271 = zext i1 %1270 to i8
  br label %1272

1272:                                             ; preds = %1268, %1260
  %1273 = phi i8 [ %1271, %1268 ], [ 0, %1260 ]
  %1274 = icmp eq i8 %1273, 0
  br i1 %1274, label %1351, label %1275

1275:                                             ; preds = %1272
  br i1 %1267, label %1279, label %1276

1276:                                             ; preds = %1275
  %1277 = load i32, ptr %1266, align 8, !tbaa !105
  %1278 = icmp eq i32 %1277, 1
  br i1 %1278, label %1280, label %1279

1279:                                             ; preds = %1276, %1275
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.12) #31
  br label %1280

1280:                                             ; preds = %1279, %1276
  %1281 = load ptr, ptr %1265, align 8, !tbaa !288
  %1282 = getelementptr inbounds %struct.VEC_edge_base, ptr %1281, i64 0, i32 2, i64 0
  %1283 = load ptr, ptr %1282, align 8, !tbaa !75
  %1284 = getelementptr inbounds %struct.edge_def, ptr %1283, i64 0, i32 1
  %1285 = load ptr, ptr %1284, align 8, !tbaa !107
  %1286 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1287 = getelementptr inbounds %struct.function, ptr %1286, i64 0, i32 1
  %1288 = load ptr, ptr %1287, align 8, !tbaa !101
  %1289 = getelementptr inbounds %struct.control_flow_graph, ptr %1288, i64 0, i32 1
  %1290 = load ptr, ptr %1289, align 8, !tbaa !128
  %1291 = icmp eq ptr %1285, %1290
  br i1 %1291, label %1292, label %1351

1292:                                             ; preds = %1280
  %1293 = getelementptr inbounds %struct.basic_block_def, ptr %1261, i64 0, i32 9
  %1294 = load i32, ptr %1293, align 8, !tbaa !109
  %1295 = add nsw i32 %1262, 1
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds i32, ptr %1097, i64 %1296
  store i32 %1294, ptr %1297, align 4, !tbaa !90
  %1298 = load i32, ptr %1293, align 8, !tbaa !109
  %1299 = load ptr, ptr %467, align 8, !tbaa !122
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1315, label %1301

1301:                                             ; preds = %1292
  %1302 = lshr i32 %1298, 6
  %1303 = zext nneg i32 %1302 to i64
  %1304 = getelementptr inbounds %struct.simple_bitmap_def, ptr %467, i64 0, i32 3, i64 %1303
  %1305 = load i64, ptr %1304, align 8, !tbaa !119
  %1306 = and i32 %1298, 63
  %1307 = zext nneg i32 %1306 to i64
  %1308 = shl nuw i64 1, %1307
  %1309 = and i64 %1305, %1308
  %1310 = icmp eq i64 %1309, 0
  br i1 %1310, label %1311, label %1315

1311:                                             ; preds = %1301
  %1312 = getelementptr inbounds i8, ptr %1299, i64 %1303
  %1313 = load i8, ptr %1312, align 1, !tbaa !86
  %1314 = add i8 %1313, 1
  store i8 %1314, ptr %1312, align 1, !tbaa !86
  br label %1315

1315:                                             ; preds = %1311, %1301, %1292
  %1316 = and i32 %1298, 63
  %1317 = zext nneg i32 %1316 to i64
  %1318 = shl nuw i64 1, %1317
  %1319 = lshr i32 %1298, 6
  %1320 = zext nneg i32 %1319 to i64
  %1321 = getelementptr inbounds %struct.simple_bitmap_def, ptr %467, i64 0, i32 3, i64 %1320
  %1322 = load i64, ptr %1321, align 8, !tbaa !119
  %1323 = or i64 %1322, %1318
  store i64 %1323, ptr %1321, align 8, !tbaa !119
  %1324 = load i32, ptr %1293, align 8, !tbaa !109
  %1325 = add nsw i32 %1263, 1
  %1326 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %1327 = getelementptr inbounds %struct.common_sched_info_def, ptr %1326, i64 0, i32 2
  %1328 = load ptr, ptr %1327, align 8, !tbaa !126
  %1329 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1330 = getelementptr inbounds %struct.function, ptr %1329, i64 0, i32 1
  %1331 = load ptr, ptr %1330, align 8, !tbaa !101
  %1332 = getelementptr inbounds %struct.control_flow_graph, ptr %1331, i64 0, i32 2
  %1333 = load ptr, ptr %1332, align 8, !tbaa !103
  %1334 = zext i32 %1324 to i64
  %1335 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1333, i64 0, i32 2, i64 %1334
  %1336 = load ptr, ptr %1335, align 8, !tbaa !75
  %1337 = tail call i32 %1328(ptr noundef %1336) #31
  %1338 = add nsw i32 %1337, %1264
  %1339 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %1340 = getelementptr inbounds %struct.param_info, ptr %1339, i64 77, i32 1
  %1341 = load i32, ptr %1340, align 8, !tbaa !115
  %1342 = icmp slt i32 %1263, %1341
  br i1 %1342, label %1343, label %1348

1343:                                             ; preds = %1315
  %1344 = getelementptr inbounds %struct.param_info, ptr %1339, i64 78, i32 1
  %1345 = load i32, ptr %1344, align 8, !tbaa !115
  %1346 = icmp sgt i32 %1338, %1345
  %1347 = zext i1 %1346 to i8
  br label %1348

1348:                                             ; preds = %1343, %1315
  %1349 = phi i8 [ 1, %1315 ], [ %1347, %1343 ]
  %1350 = icmp eq i8 %1349, 0
  br i1 %1350, label %1351, label %1469

1351:                                             ; preds = %1348, %1280, %1272
  %1352 = phi i32 [ %1264, %1272 ], [ %1338, %1348 ], [ %1264, %1280 ]
  %1353 = phi i32 [ %1263, %1272 ], [ %1325, %1348 ], [ %1263, %1280 ]
  %1354 = phi i32 [ %1262, %1272 ], [ %1295, %1348 ], [ %1262, %1280 ]
  %1355 = getelementptr inbounds %struct.basic_block_def, ptr %1261, i64 0, i32 6
  %1356 = load ptr, ptr %1355, align 8, !tbaa !241
  %1357 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1358 = getelementptr inbounds %struct.function, ptr %1357, i64 0, i32 1
  %1359 = load ptr, ptr %1358, align 8, !tbaa !101
  %1360 = getelementptr inbounds %struct.control_flow_graph, ptr %1359, i64 0, i32 1
  %1361 = load ptr, ptr %1360, align 8, !tbaa !128
  %1362 = icmp eq ptr %1356, %1361
  br i1 %1362, label %1469, label %1260, !llvm.loop !329

1363:                                             ; preds = %1248, %1467
  %1364 = phi i32 [ %1456, %1467 ], [ %1247, %1248 ]
  %1365 = phi i32 [ %1457, %1467 ], [ 1, %1248 ]
  %1366 = phi i32 [ %1468, %1467 ], [ 0, %1248 ]
  %1367 = phi i32 [ %1458, %1467 ], [ -1, %1248 ]
  br i1 %1249, label %1368, label %1369

1368:                                             ; preds = %1363
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.12) #31
  br label %1369

1369:                                             ; preds = %1368, %1363
  %1370 = load ptr, ptr %1131, align 8, !tbaa !75
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1374, label %1372

1372:                                             ; preds = %1369
  %1373 = load i32, ptr %1370, align 8, !tbaa !105
  br label %1374

1374:                                             ; preds = %1372, %1369
  %1375 = phi i32 [ %1373, %1372 ], [ 0, %1369 ]
  %1376 = icmp ne i32 %1375, %1366
  br i1 %1376, label %1377, label %1381

1377:                                             ; preds = %1374
  %1378 = zext i32 %1366 to i64
  %1379 = getelementptr inbounds %struct.VEC_edge_base, ptr %1370, i64 0, i32 2, i64 %1378
  %1380 = load ptr, ptr %1379, align 8, !tbaa !75
  br label %1381

1381:                                             ; preds = %1377, %1374
  %1382 = phi ptr [ %1380, %1377 ], [ null, %1374 ]
  br i1 %1376, label %1383, label %1469

1383:                                             ; preds = %1381
  %1384 = load ptr, ptr %1382, align 8, !tbaa !120
  %1385 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1386 = getelementptr inbounds %struct.function, ptr %1385, i64 0, i32 1
  %1387 = load ptr, ptr %1386, align 8, !tbaa !101
  %1388 = load ptr, ptr %1387, align 8, !tbaa !240
  %1389 = icmp eq ptr %1384, %1388
  br i1 %1389, label %1455, label %1390

1390:                                             ; preds = %1383
  %1391 = getelementptr inbounds %struct.basic_block_def, ptr %1384, i64 0, i32 9
  %1392 = load i32, ptr %1391, align 8, !tbaa !109
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds i32, ptr %434, i64 %1393
  %1395 = load i32, ptr %1394, align 4, !tbaa !90
  %1396 = icmp eq i32 %1395, %1195
  br i1 %1396, label %1397, label %1455

1397:                                             ; preds = %1390
  %1398 = load i32, ptr %1134, align 8, !tbaa !109
  %1399 = icmp eq i32 %1392, %1398
  br i1 %1399, label %1455, label %1400

1400:                                             ; preds = %1397
  %1401 = add nsw i32 %1367, 1
  %1402 = sext i32 %1401 to i64
  %1403 = getelementptr inbounds i32, ptr %1097, i64 %1402
  store i32 %1392, ptr %1403, align 4, !tbaa !90
  %1404 = load ptr, ptr %467, align 8, !tbaa !122
  %1405 = icmp eq ptr %1404, null
  br i1 %1405, label %1420, label %1406

1406:                                             ; preds = %1400
  %1407 = lshr i32 %1392, 6
  %1408 = zext nneg i32 %1407 to i64
  %1409 = getelementptr inbounds %struct.simple_bitmap_def, ptr %467, i64 0, i32 3, i64 %1408
  %1410 = load i64, ptr %1409, align 8, !tbaa !119
  %1411 = and i32 %1392, 63
  %1412 = zext nneg i32 %1411 to i64
  %1413 = shl nuw i64 1, %1412
  %1414 = and i64 %1410, %1413
  %1415 = icmp eq i64 %1414, 0
  br i1 %1415, label %1416, label %1420

1416:                                             ; preds = %1406
  %1417 = getelementptr inbounds i8, ptr %1404, i64 %1408
  %1418 = load i8, ptr %1417, align 1, !tbaa !86
  %1419 = add i8 %1418, 1
  store i8 %1419, ptr %1417, align 1, !tbaa !86
  br label %1420

1420:                                             ; preds = %1416, %1406, %1400
  %1421 = and i32 %1392, 63
  %1422 = zext nneg i32 %1421 to i64
  %1423 = shl nuw i64 1, %1422
  %1424 = lshr i32 %1392, 6
  %1425 = zext nneg i32 %1424 to i64
  %1426 = getelementptr inbounds %struct.simple_bitmap_def, ptr %467, i64 0, i32 3, i64 %1425
  %1427 = load i64, ptr %1426, align 8, !tbaa !119
  %1428 = or i64 %1427, %1423
  store i64 %1428, ptr %1426, align 8, !tbaa !119
  %1429 = add nsw i32 %1365, 1
  %1430 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %1431 = getelementptr inbounds %struct.common_sched_info_def, ptr %1430, i64 0, i32 2
  %1432 = load ptr, ptr %1431, align 8, !tbaa !126
  %1433 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1434 = getelementptr inbounds %struct.function, ptr %1433, i64 0, i32 1
  %1435 = load ptr, ptr %1434, align 8, !tbaa !101
  %1436 = getelementptr inbounds %struct.control_flow_graph, ptr %1435, i64 0, i32 2
  %1437 = load ptr, ptr %1436, align 8, !tbaa !103
  %1438 = zext i32 %1392 to i64
  %1439 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1437, i64 0, i32 2, i64 %1438
  %1440 = load ptr, ptr %1439, align 8, !tbaa !75
  %1441 = tail call i32 %1432(ptr noundef %1440) #31
  %1442 = add nsw i32 %1441, %1364
  %1443 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %1444 = getelementptr inbounds %struct.param_info, ptr %1443, i64 77, i32 1
  %1445 = load i32, ptr %1444, align 8, !tbaa !115
  %1446 = icmp slt i32 %1365, %1445
  br i1 %1446, label %1447, label %1452

1447:                                             ; preds = %1420
  %1448 = getelementptr inbounds %struct.param_info, ptr %1443, i64 78, i32 1
  %1449 = load i32, ptr %1448, align 8, !tbaa !115
  %1450 = icmp sgt i32 %1442, %1449
  %1451 = zext i1 %1450 to i8
  br label %1452

1452:                                             ; preds = %1447, %1420
  %1453 = phi i8 [ 1, %1420 ], [ %1451, %1447 ]
  %1454 = icmp eq i8 %1453, 0
  br i1 %1454, label %1455, label %1469

1455:                                             ; preds = %1452, %1397, %1390, %1383
  %1456 = phi i32 [ %1364, %1383 ], [ %1364, %1397 ], [ %1442, %1452 ], [ %1364, %1390 ]
  %1457 = phi i32 [ %1365, %1383 ], [ %1365, %1397 ], [ %1429, %1452 ], [ %1365, %1390 ]
  %1458 = phi i32 [ %1367, %1383 ], [ %1367, %1397 ], [ %1401, %1452 ], [ %1367, %1390 ]
  %1459 = load ptr, ptr %1131, align 8, !tbaa !75
  %1460 = icmp eq ptr %1459, null
  br i1 %1460, label %1463, label %1461

1461:                                             ; preds = %1455
  %1462 = load i32, ptr %1459, align 8, !tbaa !105
  br label %1463

1463:                                             ; preds = %1461, %1455
  %1464 = phi i32 [ %1462, %1461 ], [ 0, %1455 ]
  %1465 = icmp ult i32 %1366, %1464
  br i1 %1465, label %1467, label %1466

1466:                                             ; preds = %1463
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %1467

1467:                                             ; preds = %1466, %1463
  %1468 = add i32 %1366, 1
  br label %1363, !llvm.loop !330

1469:                                             ; preds = %1351, %1348, %1452, %1381, %1250
  %1470 = phi i32 [ %1247, %1250 ], [ %1364, %1381 ], [ %1442, %1452 ], [ %1338, %1348 ], [ %1352, %1351 ]
  %1471 = phi i32 [ 1, %1250 ], [ %1365, %1381 ], [ %1429, %1452 ], [ %1325, %1348 ], [ %1353, %1351 ]
  %1472 = phi i1 [ false, %1250 ], [ %1376, %1381 ], [ %1376, %1452 ], [ true, %1348 ], [ false, %1351 ]
  %1473 = phi i32 [ 0, %1250 ], [ 0, %1381 ], [ 1, %1452 ], [ 1, %1348 ], [ 0, %1351 ]
  %1474 = phi i32 [ -1, %1250 ], [ %1367, %1381 ], [ %1401, %1452 ], [ %1295, %1348 ], [ %1354, %1351 ]
  %1475 = icmp slt i32 %1474, 0
  %1476 = or i1 %1475, %1472
  br i1 %1476, label %1606, label %1477

1477:                                             ; preds = %1469, %1595
  %1478 = phi i64 [ %1483, %1595 ], [ -1, %1469 ]
  %1479 = phi i32 [ %1599, %1595 ], [ %1474, %1469 ]
  %1480 = phi i32 [ %1598, %1595 ], [ %1473, %1469 ]
  %1481 = phi i32 [ %1597, %1595 ], [ %1471, %1469 ]
  %1482 = phi i32 [ %1596, %1595 ], [ %1470, %1469 ]
  %1483 = add nsw i64 %1478, 1
  %1484 = getelementptr inbounds i32, ptr %1097, i64 %1483
  %1485 = load i32, ptr %1484, align 4, !tbaa !90
  %1486 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1487 = getelementptr inbounds %struct.function, ptr %1486, i64 0, i32 1
  %1488 = load ptr, ptr %1487, align 8, !tbaa !101
  %1489 = getelementptr inbounds %struct.control_flow_graph, ptr %1488, i64 0, i32 2
  %1490 = load ptr, ptr %1489, align 8, !tbaa !103
  %1491 = zext i32 %1485 to i64
  %1492 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1490, i64 0, i32 2, i64 %1491
  %1493 = load ptr, ptr %1492, align 8, !tbaa !75
  %1494 = icmp eq ptr %1493, null
  br label %1495

1495:                                             ; preds = %1593, %1477
  %1496 = phi i32 [ %1482, %1477 ], [ %1582, %1593 ]
  %1497 = phi i32 [ %1481, %1477 ], [ %1583, %1593 ]
  %1498 = phi i32 [ 0, %1477 ], [ %1594, %1593 ]
  %1499 = phi i32 [ %1479, %1477 ], [ %1584, %1593 ]
  br i1 %1494, label %1500, label %1501

1500:                                             ; preds = %1495
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.12) #31
  br label %1501

1501:                                             ; preds = %1500, %1495
  %1502 = load ptr, ptr %1493, align 8, !tbaa !75
  %1503 = icmp eq ptr %1502, null
  br i1 %1503, label %1506, label %1504

1504:                                             ; preds = %1501
  %1505 = load i32, ptr %1502, align 8, !tbaa !105
  br label %1506

1506:                                             ; preds = %1504, %1501
  %1507 = phi i32 [ %1505, %1504 ], [ 0, %1501 ]
  %1508 = icmp eq i32 %1507, %1498
  br i1 %1508, label %1513, label %1509

1509:                                             ; preds = %1506
  %1510 = zext i32 %1498 to i64
  %1511 = getelementptr inbounds %struct.VEC_edge_base, ptr %1502, i64 0, i32 2, i64 %1510
  %1512 = load ptr, ptr %1511, align 8, !tbaa !75
  br label %1513

1513:                                             ; preds = %1509, %1506
  %1514 = phi ptr [ %1512, %1509 ], [ null, %1506 ]
  br i1 %1508, label %1595, label %1515

1515:                                             ; preds = %1513
  %1516 = load ptr, ptr %1514, align 8, !tbaa !120
  %1517 = getelementptr inbounds %struct.basic_block_def, ptr %1516, i64 0, i32 9
  %1518 = load i32, ptr %1517, align 8, !tbaa !109
  %1519 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1520 = getelementptr inbounds %struct.function, ptr %1519, i64 0, i32 1
  %1521 = load ptr, ptr %1520, align 8, !tbaa !101
  %1522 = load ptr, ptr %1521, align 8, !tbaa !240
  %1523 = icmp eq ptr %1516, %1522
  br i1 %1523, label %1595, label %1524

1524:                                             ; preds = %1515
  %1525 = sext i32 %1518 to i64
  %1526 = getelementptr inbounds i32, ptr %434, i64 %1525
  %1527 = load i32, ptr %1526, align 4, !tbaa !90
  %1528 = icmp eq i32 %1527, %1195
  br i1 %1528, label %1529, label %1595

1529:                                             ; preds = %1524
  %1530 = lshr i32 %1518, 6
  %1531 = zext nneg i32 %1530 to i64
  %1532 = getelementptr inbounds %struct.simple_bitmap_def, ptr %467, i64 0, i32 3, i64 %1531
  %1533 = load i64, ptr %1532, align 8, !tbaa !119
  %1534 = and i32 %1518, 63
  %1535 = zext nneg i32 %1534 to i64
  %1536 = shl nuw i64 1, %1535
  %1537 = and i64 %1533, %1536
  %1538 = icmp eq i64 %1537, 0
  br i1 %1538, label %1539, label %1581

1539:                                             ; preds = %1529
  %1540 = load i32, ptr %1134, align 8, !tbaa !109
  %1541 = icmp eq i32 %1518, %1540
  br i1 %1541, label %1581, label %1542

1542:                                             ; preds = %1539
  %1543 = add nsw i32 %1499, 1
  %1544 = sext i32 %1543 to i64
  %1545 = getelementptr inbounds i32, ptr %1097, i64 %1544
  store i32 %1518, ptr %1545, align 4, !tbaa !90
  %1546 = load ptr, ptr %467, align 8, !tbaa !122
  %1547 = icmp eq ptr %1546, null
  br i1 %1547, label %1552, label %1548

1548:                                             ; preds = %1542
  %1549 = getelementptr inbounds i8, ptr %1546, i64 %1531
  %1550 = load i8, ptr %1549, align 1, !tbaa !86
  %1551 = add i8 %1550, 1
  store i8 %1551, ptr %1549, align 1, !tbaa !86
  br label %1552

1552:                                             ; preds = %1548, %1542
  %1553 = load i64, ptr %1532, align 8, !tbaa !119
  %1554 = or i64 %1553, %1536
  store i64 %1554, ptr %1532, align 8, !tbaa !119
  %1555 = add nsw i32 %1497, 1
  %1556 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %1557 = getelementptr inbounds %struct.common_sched_info_def, ptr %1556, i64 0, i32 2
  %1558 = load ptr, ptr %1557, align 8, !tbaa !126
  %1559 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1560 = getelementptr inbounds %struct.function, ptr %1559, i64 0, i32 1
  %1561 = load ptr, ptr %1560, align 8, !tbaa !101
  %1562 = getelementptr inbounds %struct.control_flow_graph, ptr %1561, i64 0, i32 2
  %1563 = load ptr, ptr %1562, align 8, !tbaa !103
  %1564 = zext i32 %1518 to i64
  %1565 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1563, i64 0, i32 2, i64 %1564
  %1566 = load ptr, ptr %1565, align 8, !tbaa !75
  %1567 = tail call i32 %1558(ptr noundef %1566) #31
  %1568 = add nsw i32 %1567, %1496
  %1569 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %1570 = getelementptr inbounds %struct.param_info, ptr %1569, i64 77, i32 1
  %1571 = load i32, ptr %1570, align 8, !tbaa !115
  %1572 = icmp slt i32 %1497, %1571
  br i1 %1572, label %1573, label %1578

1573:                                             ; preds = %1552
  %1574 = getelementptr inbounds %struct.param_info, ptr %1569, i64 78, i32 1
  %1575 = load i32, ptr %1574, align 8, !tbaa !115
  %1576 = icmp sgt i32 %1568, %1575
  %1577 = zext i1 %1576 to i8
  br label %1578

1578:                                             ; preds = %1573, %1552
  %1579 = phi i8 [ 1, %1552 ], [ %1577, %1573 ]
  %1580 = icmp eq i8 %1579, 0
  br i1 %1580, label %1581, label %1595

1581:                                             ; preds = %1578, %1539, %1529
  %1582 = phi i32 [ %1496, %1539 ], [ %1568, %1578 ], [ %1496, %1529 ]
  %1583 = phi i32 [ %1497, %1539 ], [ %1555, %1578 ], [ %1497, %1529 ]
  %1584 = phi i32 [ %1499, %1539 ], [ %1543, %1578 ], [ %1499, %1529 ]
  %1585 = load ptr, ptr %1493, align 8, !tbaa !75
  %1586 = icmp eq ptr %1585, null
  br i1 %1586, label %1589, label %1587

1587:                                             ; preds = %1581
  %1588 = load i32, ptr %1585, align 8, !tbaa !105
  br label %1589

1589:                                             ; preds = %1587, %1581
  %1590 = phi i32 [ %1588, %1587 ], [ 0, %1581 ]
  %1591 = icmp ult i32 %1498, %1590
  br i1 %1591, label %1593, label %1592

1592:                                             ; preds = %1589
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %1593

1593:                                             ; preds = %1592, %1589
  %1594 = add i32 %1498, 1
  br label %1495, !llvm.loop !331

1595:                                             ; preds = %1578, %1524, %1515, %1513
  %1596 = phi i32 [ %1496, %1513 ], [ %1496, %1515 ], [ %1568, %1578 ], [ %1496, %1524 ]
  %1597 = phi i32 [ %1497, %1513 ], [ %1497, %1515 ], [ %1555, %1578 ], [ %1497, %1524 ]
  %1598 = phi i32 [ %1480, %1513 ], [ %1480, %1515 ], [ 1, %1578 ], [ %1480, %1524 ]
  %1599 = phi i32 [ %1499, %1513 ], [ -1, %1515 ], [ %1543, %1578 ], [ -1, %1524 ]
  %1600 = sext i32 %1599 to i64
  %1601 = icmp sge i64 %1483, %1600
  %1602 = icmp ne i32 %1598, 0
  %1603 = select i1 %1601, i1 true, i1 %1602
  br i1 %1603, label %1604, label %1477, !llvm.loop !332

1604:                                             ; preds = %1595
  %1605 = trunc i64 %1483 to i32
  br label %1606

1606:                                             ; preds = %1604, %1469
  %1607 = phi i32 [ %1471, %1469 ], [ %1597, %1604 ]
  %1608 = phi i32 [ %1474, %1469 ], [ %1599, %1604 ]
  %1609 = phi i32 [ -1, %1469 ], [ %1605, %1604 ]
  %1610 = phi i1 [ %1472, %1469 ], [ %1602, %1604 ]
  %1611 = icmp slt i32 %1608, 0
  %1612 = select i1 %1611, i1 true, i1 %1610
  br i1 %1612, label %1739, label %1613

1613:                                             ; preds = %1606
  %1614 = load i32, ptr %1134, align 8, !tbaa !109
  %1615 = sext i32 %1614 to i64
  %1616 = getelementptr inbounds i32, ptr %1132, i64 %1615
  store i32 -1, ptr %1616, align 4, !tbaa !90
  %1617 = load i32, ptr %1134, align 8, !tbaa !109
  %1618 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %1619 = load i32, ptr %2, align 4, !tbaa !90
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds i32, ptr %1618, i64 %1620
  store i32 %1617, ptr %1621, align 4, !tbaa !90
  %1622 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %1623 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1624 = sext i32 %1623 to i64
  %1625 = getelementptr inbounds %struct.region, ptr %1622, i64 %1624
  store i32 %1607, ptr %1625, align 4, !tbaa !94
  %1626 = add nsw i32 %1619, 1
  store i32 %1626, ptr %2, align 4, !tbaa !90
  %1627 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1628 = sext i32 %1627 to i64
  %1629 = getelementptr inbounds %struct.region, ptr %1622, i64 %1628, i32 1
  store i32 %1619, ptr %1629, align 4, !tbaa !96
  %1630 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds %struct.region, ptr %1622, i64 %1631, i32 2
  %1633 = load i8, ptr %1632, align 4
  %1634 = and i8 %1633, -2
  store i8 %1634, ptr %1632, align 4
  %1635 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %1636 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1637 = sext i32 %1636 to i64
  %1638 = getelementptr inbounds %struct.region, ptr %1635, i64 %1637, i32 2
  %1639 = load i8, ptr %1638, align 4
  %1640 = and i8 %1639, -3
  store i8 %1640, ptr %1638, align 4
  %1641 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1642 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %1643 = load i32, ptr %1134, align 8, !tbaa !109
  %1644 = sext i32 %1643 to i64
  %1645 = getelementptr inbounds i32, ptr %1642, i64 %1644
  store i32 %1641, ptr %1645, align 4, !tbaa !90
  %1646 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %1647 = load i32, ptr %1134, align 8, !tbaa !109
  %1648 = sext i32 %1647 to i64
  %1649 = getelementptr inbounds i32, ptr %1646, i64 %1648
  store i32 0, ptr %1649, align 4, !tbaa !90
  br label %1650

1650:                                             ; preds = %1613, %1731
  %1651 = phi i32 [ %1609, %1613 ], [ %1734, %1731 ]
  %1652 = phi i32 [ %1608, %1613 ], [ %1733, %1731 ]
  %1653 = phi i32 [ 0, %1613 ], [ %1732, %1731 ]
  %1654 = icmp slt i32 %1651, 0
  %1655 = select i1 %1654, i32 %1652, i32 %1651
  %1656 = zext nneg i32 %1655 to i64
  %1657 = getelementptr inbounds i32, ptr %1097, i64 %1656
  %1658 = load i32, ptr %1657, align 4, !tbaa !90
  %1659 = sext i32 %1658 to i64
  %1660 = getelementptr inbounds i32, ptr %1132, i64 %1659
  %1661 = load i32, ptr %1660, align 4, !tbaa !90
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1663, label %1727

1663:                                             ; preds = %1650
  store i32 -1, ptr %1660, align 4, !tbaa !90
  %1664 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %1665 = load i32, ptr %2, align 4, !tbaa !90
  %1666 = add nsw i32 %1665, 1
  store i32 %1666, ptr %2, align 4, !tbaa !90
  %1667 = sext i32 %1665 to i64
  %1668 = getelementptr inbounds i32, ptr %1664, i64 %1667
  store i32 %1658, ptr %1668, align 4, !tbaa !90
  %1669 = add nsw i32 %1653, 1
  %1670 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %1671 = getelementptr inbounds i32, ptr %1670, i64 %1659
  store i32 %1669, ptr %1671, align 4, !tbaa !90
  %1672 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1673 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %1674 = getelementptr inbounds i32, ptr %1673, i64 %1659
  store i32 %1672, ptr %1674, align 4, !tbaa !90
  %1675 = zext nneg i32 %1652 to i64
  %1676 = getelementptr inbounds i32, ptr %1097, i64 %1675
  %1677 = load i32, ptr %1676, align 4, !tbaa !90
  store i32 %1677, ptr %1657, align 4, !tbaa !90
  %1678 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1679 = getelementptr inbounds %struct.function, ptr %1678, i64 0, i32 1
  %1680 = load ptr, ptr %1679, align 8, !tbaa !101
  %1681 = getelementptr inbounds %struct.control_flow_graph, ptr %1680, i64 0, i32 2
  %1682 = load ptr, ptr %1681, align 8, !tbaa !103
  %1683 = zext i32 %1658 to i64
  %1684 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %1682, i64 0, i32 2, i64 %1683
  %1685 = load ptr, ptr %1684, align 8, !tbaa !75
  %1686 = getelementptr inbounds %struct.basic_block_def, ptr %1685, i64 0, i32 1
  br label %1687

1687:                                             ; preds = %1725, %1663
  %1688 = phi i32 [ 0, %1663 ], [ %1726, %1725 ]
  %1689 = load ptr, ptr %1686, align 8, !tbaa !75
  %1690 = icmp eq ptr %1689, null
  br i1 %1690, label %1693, label %1691

1691:                                             ; preds = %1687
  %1692 = load i32, ptr %1689, align 8, !tbaa !105
  br label %1693

1693:                                             ; preds = %1691, %1687
  %1694 = phi i32 [ %1692, %1691 ], [ 0, %1687 ]
  %1695 = icmp eq i32 %1694, %1688
  br i1 %1695, label %1700, label %1696

1696:                                             ; preds = %1693
  %1697 = zext i32 %1688 to i64
  %1698 = getelementptr inbounds %struct.VEC_edge_base, ptr %1689, i64 0, i32 2, i64 %1697
  %1699 = load ptr, ptr %1698, align 8, !tbaa !75
  br label %1700

1700:                                             ; preds = %1696, %1693
  %1701 = phi ptr [ %1699, %1696 ], [ null, %1693 ]
  br i1 %1695, label %1729, label %1702

1702:                                             ; preds = %1700
  %1703 = getelementptr inbounds %struct.edge_def, ptr %1701, i64 0, i32 1
  %1704 = load ptr, ptr %1703, align 8, !tbaa !107
  %1705 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1706 = getelementptr inbounds %struct.function, ptr %1705, i64 0, i32 1
  %1707 = load ptr, ptr %1706, align 8, !tbaa !101
  %1708 = getelementptr inbounds %struct.control_flow_graph, ptr %1707, i64 0, i32 1
  %1709 = load ptr, ptr %1708, align 8, !tbaa !128
  %1710 = icmp eq ptr %1704, %1709
  br i1 %1710, label %1718, label %1711

1711:                                             ; preds = %1702
  %1712 = getelementptr inbounds %struct.basic_block_def, ptr %1704, i64 0, i32 9
  %1713 = load i32, ptr %1712, align 8, !tbaa !109
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds i32, ptr %1132, i64 %1714
  %1716 = load i32, ptr %1715, align 4, !tbaa !90
  %1717 = add nsw i32 %1716, -1
  store i32 %1717, ptr %1715, align 4, !tbaa !90
  br label %1718

1718:                                             ; preds = %1711, %1702
  br i1 %1690, label %1721, label %1719

1719:                                             ; preds = %1718
  %1720 = load i32, ptr %1689, align 8, !tbaa !105
  br label %1721

1721:                                             ; preds = %1719, %1718
  %1722 = phi i32 [ %1720, %1719 ], [ 0, %1718 ]
  %1723 = icmp ult i32 %1688, %1722
  br i1 %1723, label %1725, label %1724

1724:                                             ; preds = %1721
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %1725

1725:                                             ; preds = %1724, %1721
  %1726 = add i32 %1688, 1
  br label %1687, !llvm.loop !333

1727:                                             ; preds = %1650
  %1728 = add nsw i32 %1655, -1
  br label %1731

1729:                                             ; preds = %1700
  %1730 = add nsw i32 %1652, -1
  br label %1731

1731:                                             ; preds = %1729, %1727
  %1732 = phi i32 [ %1653, %1727 ], [ %1669, %1729 ]
  %1733 = phi i32 [ %1652, %1727 ], [ %1730, %1729 ]
  %1734 = phi i32 [ %1728, %1727 ], [ %1655, %1729 ]
  %1735 = icmp sgt i32 %1733, -1
  br i1 %1735, label %1650, label %1736, !llvm.loop !334

1736:                                             ; preds = %1731
  %1737 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1738 = add nsw i32 %1737, 1
  store i32 %1738, ptr @nr_regions, align 4, !tbaa !90
  br label %1803

1739:                                             ; preds = %1606
  br i1 %1101, label %1740, label %1803

1740:                                             ; preds = %1739, %1801
  %1741 = phi i32 [ %1802, %1801 ], [ 0, %1739 ]
  %1742 = load ptr, ptr %1202, align 8, !tbaa !75
  %1743 = icmp eq ptr %1742, null
  br i1 %1743, label %1746, label %1744

1744:                                             ; preds = %1740
  %1745 = load i32, ptr %1742, align 8, !tbaa !105
  br label %1746

1746:                                             ; preds = %1744, %1740
  %1747 = phi i32 [ %1745, %1744 ], [ 0, %1740 ]
  %1748 = icmp eq i32 %1747, %1741
  br i1 %1748, label %1753, label %1749

1749:                                             ; preds = %1746
  %1750 = zext i32 %1741 to i64
  %1751 = getelementptr inbounds %struct.VEC_edge_base, ptr %1742, i64 0, i32 2, i64 %1750
  %1752 = load ptr, ptr %1751, align 8, !tbaa !75
  br label %1753

1753:                                             ; preds = %1749, %1746
  %1754 = phi ptr [ %1752, %1749 ], [ null, %1746 ]
  br i1 %1748, label %1803, label %1755

1755:                                             ; preds = %1753
  %1756 = getelementptr inbounds %struct.edge_def, ptr %1754, i64 0, i32 1
  %1757 = load ptr, ptr %1756, align 8, !tbaa !107
  %1758 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1759 = getelementptr inbounds %struct.function, ptr %1758, i64 0, i32 1
  %1760 = load ptr, ptr %1759, align 8, !tbaa !101
  %1761 = getelementptr inbounds %struct.control_flow_graph, ptr %1760, i64 0, i32 1
  %1762 = load ptr, ptr %1761, align 8, !tbaa !128
  %1763 = icmp eq ptr %1757, %1762
  br i1 %1763, label %1792, label %1764

1764:                                             ; preds = %1755
  %1765 = getelementptr inbounds %struct.basic_block_def, ptr %1757, i64 0, i32 9
  %1766 = load i32, ptr %1765, align 8, !tbaa !109
  %1767 = load ptr, ptr %1118, align 8, !tbaa !122
  %1768 = icmp eq ptr %1767, null
  br i1 %1768, label %1783, label %1769

1769:                                             ; preds = %1764
  %1770 = lshr i32 %1766, 6
  %1771 = zext nneg i32 %1770 to i64
  %1772 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1118, i64 0, i32 3, i64 %1771
  %1773 = load i64, ptr %1772, align 8, !tbaa !119
  %1774 = and i32 %1766, 63
  %1775 = zext nneg i32 %1774 to i64
  %1776 = shl nuw i64 1, %1775
  %1777 = and i64 %1773, %1776
  %1778 = icmp eq i64 %1777, 0
  br i1 %1778, label %1779, label %1783

1779:                                             ; preds = %1769
  %1780 = getelementptr inbounds i8, ptr %1767, i64 %1771
  %1781 = load i8, ptr %1780, align 1, !tbaa !86
  %1782 = add i8 %1781, 1
  store i8 %1782, ptr %1780, align 1, !tbaa !86
  br label %1783

1783:                                             ; preds = %1779, %1769, %1764
  %1784 = and i32 %1766, 63
  %1785 = zext nneg i32 %1784 to i64
  %1786 = shl nuw i64 1, %1785
  %1787 = lshr i32 %1766, 6
  %1788 = zext nneg i32 %1787 to i64
  %1789 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1118, i64 0, i32 3, i64 %1788
  %1790 = load i64, ptr %1789, align 8, !tbaa !119
  %1791 = or i64 %1790, %1786
  store i64 %1791, ptr %1789, align 8, !tbaa !119
  br label %1792

1792:                                             ; preds = %1783, %1755
  %1793 = load ptr, ptr %1202, align 8, !tbaa !75
  %1794 = icmp eq ptr %1793, null
  br i1 %1794, label %1797, label %1795

1795:                                             ; preds = %1792
  %1796 = load i32, ptr %1793, align 8, !tbaa !105
  br label %1797

1797:                                             ; preds = %1795, %1792
  %1798 = phi i32 [ %1796, %1795 ], [ 0, %1792 ]
  %1799 = icmp ult i32 %1741, %1798
  br i1 %1799, label %1801, label %1800

1800:                                             ; preds = %1797
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %1801

1801:                                             ; preds = %1800, %1797
  %1802 = add i32 %1741, 1
  br label %1740, !llvm.loop !335

1803:                                             ; preds = %1753, %1739, %1736, %1183, %1145, %1129
  %1804 = phi ptr [ %1133, %1145 ], [ %1133, %1129 ], [ %1133, %1183 ], [ %1133, %1736 ], [ %1133, %1739 ], [ %1132, %1753 ]
  %1805 = phi ptr [ %1132, %1145 ], [ %1132, %1129 ], [ %1132, %1183 ], [ %1132, %1736 ], [ %1132, %1739 ], [ %1133, %1753 ]
  %1806 = getelementptr inbounds %struct.basic_block_def, ptr %1131, i64 0, i32 6
  %1807 = load ptr, ptr %1806, align 8, !tbaa !241
  %1808 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1809 = getelementptr inbounds %struct.function, ptr %1808, i64 0, i32 1
  %1810 = load ptr, ptr %1809, align 8, !tbaa !101
  %1811 = getelementptr inbounds %struct.control_flow_graph, ptr %1810, i64 0, i32 1
  %1812 = load ptr, ptr %1811, align 8, !tbaa !128
  %1813 = icmp eq ptr %1807, %1812
  br i1 %1813, label %1814, label %1129, !llvm.loop !336

1814:                                             ; preds = %1803, %1117
  %1815 = phi ptr [ %1119, %1117 ], [ %1804, %1803 ]
  %1816 = phi ptr [ %441, %1117 ], [ %1805, %1803 ]
  tail call void @free(ptr noundef %1097)
  br i1 %1101, label %1817, label %1819

1817:                                             ; preds = %1814
  tail call void @free(ptr noundef %1815)
  tail call void @sbitmap_a_or_b(ptr noundef %461, ptr noundef %461, ptr noundef %1118) #31
  %1818 = load ptr, ptr %1118, align 8, !tbaa !122
  tail call void @free(ptr noundef %1818)
  tail call void @free(ptr noundef %1118)
  call void @extend_rgns(ptr noundef %1816, ptr noundef nonnull %2, ptr noundef %461, ptr noundef %434)
  br label %1819

1819:                                             ; preds = %1817, %1814, %1071
  %1820 = phi ptr [ %441, %1071 ], [ %1816, %1817 ], [ %1816, %1814 ]
  %1821 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1822 = getelementptr inbounds %struct.function, ptr %1821, i64 0, i32 1
  %1823 = load ptr, ptr %1822, align 8, !tbaa !101
  %1824 = load ptr, ptr %1823, align 8, !tbaa !240
  %1825 = getelementptr inbounds %struct.basic_block_def, ptr %1824, i64 0, i32 6
  %1826 = load ptr, ptr %1825, align 8, !tbaa !241
  %1827 = getelementptr inbounds %struct.control_flow_graph, ptr %1823, i64 0, i32 1
  %1828 = load ptr, ptr %1827, align 8, !tbaa !128
  %1829 = icmp eq ptr %1826, %1828
  br i1 %1829, label %1884, label %1830, !prof !242

1830:                                             ; preds = %1819
  %1831 = load i32, ptr %2, align 4, !tbaa !90
  br label %1832

1832:                                             ; preds = %1830, %1874
  %1833 = phi ptr [ %1877, %1874 ], [ %1826, %1830 ]
  %1834 = phi i32 [ %1875, %1874 ], [ %1831, %1830 ]
  %1835 = getelementptr inbounds %struct.basic_block_def, ptr %1833, i64 0, i32 9
  %1836 = load i32, ptr %1835, align 8, !tbaa !109
  %1837 = sext i32 %1836 to i64
  %1838 = getelementptr inbounds i32, ptr %1820, i64 %1837
  %1839 = load i32, ptr %1838, align 4, !tbaa !90
  %1840 = icmp sgt i32 %1839, -1
  br i1 %1840, label %1841, label %1874, !prof !337

1841:                                             ; preds = %1832
  %1842 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %1843 = sext i32 %1834 to i64
  %1844 = getelementptr inbounds i32, ptr %1842, i64 %1843
  store i32 %1836, ptr %1844, align 4, !tbaa !90
  %1845 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %1846 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1847 = sext i32 %1846 to i64
  %1848 = getelementptr inbounds %struct.region, ptr %1845, i64 %1847
  store i32 1, ptr %1848, align 4, !tbaa !94
  %1849 = add nsw i32 %1834, 1
  store i32 %1849, ptr %2, align 4, !tbaa !90
  %1850 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1851 = sext i32 %1850 to i64
  %1852 = getelementptr inbounds %struct.region, ptr %1845, i64 %1851, i32 1
  store i32 %1834, ptr %1852, align 4, !tbaa !96
  %1853 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1854 = sext i32 %1853 to i64
  %1855 = getelementptr inbounds %struct.region, ptr %1845, i64 %1854, i32 2
  %1856 = load i8, ptr %1855, align 4
  %1857 = and i8 %1856, -2
  store i8 %1857, ptr %1855, align 4
  %1858 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %1859 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1860 = sext i32 %1859 to i64
  %1861 = getelementptr inbounds %struct.region, ptr %1858, i64 %1860, i32 2
  %1862 = load i8, ptr %1861, align 4
  %1863 = and i8 %1862, -3
  store i8 %1863, ptr %1861, align 4
  %1864 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1865 = add nsw i32 %1864, 1
  store i32 %1865, ptr @nr_regions, align 4, !tbaa !90
  %1866 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %1867 = load i32, ptr %1835, align 8, !tbaa !109
  %1868 = sext i32 %1867 to i64
  %1869 = getelementptr inbounds i32, ptr %1866, i64 %1868
  store i32 %1864, ptr %1869, align 4, !tbaa !90
  %1870 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %1871 = load i32, ptr %1835, align 8, !tbaa !109
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds i32, ptr %1870, i64 %1872
  store i32 0, ptr %1873, align 4, !tbaa !90
  br label %1874

1874:                                             ; preds = %1841, %1832
  %1875 = phi i32 [ %1849, %1841 ], [ %1834, %1832 ]
  %1876 = getelementptr inbounds %struct.basic_block_def, ptr %1833, i64 0, i32 6
  %1877 = load ptr, ptr %1876, align 8, !tbaa !241
  %1878 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1879 = getelementptr inbounds %struct.function, ptr %1878, i64 0, i32 1
  %1880 = load ptr, ptr %1879, align 8, !tbaa !101
  %1881 = getelementptr inbounds %struct.control_flow_graph, ptr %1880, i64 0, i32 1
  %1882 = load ptr, ptr %1881, align 8, !tbaa !128
  %1883 = icmp eq ptr %1877, %1882
  br i1 %1883, label %1884, label %1832, !prof !262, !llvm.loop !338

1884:                                             ; preds = %1874, %1819
  tail call void @free(ptr noundef %434)
  tail call void @free(ptr noundef %1820)
  tail call void @free(ptr noundef %449)
  %1885 = load ptr, ptr %461, align 8, !tbaa !122
  tail call void @free(ptr noundef %1885)
  tail call void @free(ptr noundef %461)
  %1886 = load ptr, ptr %455, align 8, !tbaa !122
  tail call void @free(ptr noundef %1886)
  tail call void @free(ptr noundef %455)
  %1887 = load ptr, ptr %467, align 8, !tbaa !122
  tail call void @free(ptr noundef %1887)
  tail call void @free(ptr noundef %467)
  %1888 = load ptr, ptr %473, align 8, !tbaa !122
  tail call void @free(ptr noundef %1888)
  tail call void @free(ptr noundef %473)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  br label %1889

1889:                                             ; preds = %425, %1884
  %1890 = load i32, ptr @sched_verbose, align 4, !tbaa !90
  %1891 = icmp sgt i32 %1890, 2
  br i1 %1891, label %1892, label %1893, !prof !283

1892:                                             ; preds = %1889
  tail call void @debug_regions()
  br label %1893

1893:                                             ; preds = %1892, %1889
  %1894 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %1895 = getelementptr inbounds %struct.common_sched_info_def, ptr %1894, i64 0, i32 4
  %1896 = load i32, ptr %1895, align 8, !tbaa !202
  %1897 = icmp eq i32 %1896, 4
  br i1 %1897, label %1899, label %1898, !prof !282

1898:                                             ; preds = %1893
  tail call void @free_dominance_info(i32 noundef 1) #31
  br label %1899

1899:                                             ; preds = %366, %345, %356, %219, %1893, %1898
  %1900 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1901 = icmp sgt i32 %1900, 0
  br i1 %1901, label %1902, label %1909, !prof !230

1902:                                             ; preds = %1899
  %1903 = load ptr, ptr @cfun, align 8, !tbaa !75
  %1904 = getelementptr inbounds %struct.function, ptr %1903, i64 0, i32 1
  %1905 = load ptr, ptr %1904, align 8, !tbaa !101
  %1906 = getelementptr inbounds %struct.control_flow_graph, ptr %1905, i64 0, i32 3
  %1907 = load i32, ptr %1906, align 8, !tbaa !114
  %1908 = icmp sgt i32 %1900, %1907
  br i1 %1908, label %1909, label %1910, !prof !339

1909:                                             ; preds = %1902, %1899
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3073, ptr noundef nonnull @.str.12) #31
  br label %1910

1910:                                             ; preds = %1902, %1909
  %1911 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %1912 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %1913 = sext i32 %1912 to i64
  %1914 = getelementptr %struct.region, ptr %1911, i64 %1913
  %1915 = getelementptr %struct.region, ptr %1914, i64 -1
  %1916 = getelementptr %struct.region, ptr %1914, i64 -1, i32 1
  %1917 = load i32, ptr %1916, align 4, !tbaa !96
  %1918 = load i32, ptr %1915, align 4, !tbaa !94
  %1919 = add nsw i32 %1918, %1917
  %1920 = getelementptr inbounds %struct.region, ptr %1911, i64 %1913, i32 1
  store i32 %1919, ptr %1920, align 4, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @extend_regions() local_unnamed_addr #17 !prof !74 {
  %1 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %2 = load ptr, ptr @cfun, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !114
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr @xrealloc(ptr noundef %1, i64 noundef %8) #31
  store ptr %9, ptr @rgn_table, align 8, !tbaa !75
  %10 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %11 = load ptr, ptr @cfun, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !114
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr @xrealloc(ptr noundef %10, i64 noundef %17) #31
  store ptr %18, ptr @rgn_bb_table, align 8, !tbaa !75
  %19 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %20 = load ptr, ptr @cfun, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !117
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr @xrealloc(ptr noundef %19, i64 noundef %26) #31
  store ptr %27, ptr @block_to_bb, align 8, !tbaa !75
  %28 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %29 = load ptr, ptr @cfun, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !101
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !117
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 2
  %36 = tail call ptr @xrealloc(ptr noundef %28, i64 noundef %35) #31
  store ptr %36, ptr @containing_rgn, align 8, !tbaa !75
  ret void
}

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @sched_rgn_finish() local_unnamed_addr #17 !prof !229 {
  %1 = load i32, ptr @reload_completed, align 4, !tbaa !90
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !339

3:                                                ; preds = %0
  tail call void @reposition_prologue_and_epilogue_notes() #31
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7, !prof !230

7:                                                ; preds = %4
  %8 = load i32, ptr @reload_completed, align 4, !tbaa !90
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @flag_schedule_interblock, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %15 = load i32, ptr @nr_inter, align 4, !tbaa !90
  %16 = load i32, ptr @nr_spec, align 4, !tbaa !90
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.45, i32 noundef %15, i32 noundef %16)
  br label %22

18:                                               ; preds = %7
  %19 = load i32, ptr @nr_inter, align 4, !tbaa !90
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3098, ptr noundef nonnull @.str.12) #31
  br label %22

22:                                               ; preds = %21, %18, %13
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %24 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %23)
  br label %25

25:                                               ; preds = %22, %4
  store i32 0, ptr @nr_regions, align 4, !tbaa !90
  %26 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  tail call void @free(ptr noundef %26)
  store ptr null, ptr @rgn_table, align 8, !tbaa !75
  %27 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  tail call void @free(ptr noundef %27)
  store ptr null, ptr @rgn_bb_table, align 8, !tbaa !75
  %28 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  tail call void @free(ptr noundef %28)
  store ptr null, ptr @block_to_bb, align 8, !tbaa !75
  %29 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  tail call void @free(ptr noundef %29)
  store ptr null, ptr @containing_rgn, align 8, !tbaa !75
  %30 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  tail call void @free(ptr noundef %30)
  store ptr null, ptr @ebb_head, align 8, !tbaa !75
  ret void
}

declare void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @rgn_setup_region(i32 noundef %0) local_unnamed_addr #15 !prof !340 {
  %2 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.region, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !94
  store i32 %5, ptr @current_nr_blocks, align 4, !tbaa !90
  %6 = getelementptr inbounds %struct.region, ptr %2, i64 %3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !96
  store i32 %7, ptr @current_blocks, align 4, !tbaa !90
  %8 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %9 = add nsw i32 %5, 1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr @xrealloc(ptr noundef %8, i64 noundef %11) #31
  store ptr %12, ptr @ebb_head, align 8, !tbaa !75
  %13 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15, !prof !341

15:                                               ; preds = %1, %15
  %16 = phi i64 [ %21, %15 ], [ 0, %1 ]
  %17 = load i32, ptr @current_blocks, align 4, !tbaa !90
  %18 = trunc i64 %16 to i32
  %19 = add nsw i32 %17, %18
  %20 = getelementptr inbounds i32, ptr %12, i64 %16
  store i32 %19, ptr %20, align 4, !tbaa !90
  %21 = add nuw nsw i64 %16, 1
  %22 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %16, %23
  br i1 %24, label %15, label %25, !prof !342, !llvm.loop !343

25:                                               ; preds = %15, %1
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @sched_rgn_compute_dependencies(i32 noundef %0) local_unnamed_addr #15 !prof !219 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.deps, align 8
  %6 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds %struct.region, ptr %6, i64 %7, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %406, !prof !223

12:                                               ; preds = %1
  %13 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.common_sched_info_def, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !202
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %18, !prof !223

17:                                               ; preds = %12
  store i32 1, ptr @sched_emulate_haifa_p, align 4, !tbaa !90
  br label %18

18:                                               ; preds = %17, %12
  tail call void @init_deps_global() #31
  %19 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, 184
  %22 = tail call ptr @xmalloc(i64 noundef %21) #31
  store ptr %22, ptr @bb_deps, align 8, !tbaa !75
  %23 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33, !prof !224

25:                                               ; preds = %18, %25
  %26 = phi i64 [ %29, %25 ], [ 0, %18 ]
  %27 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.deps, ptr %27, i64 %26
  tail call void @init_deps(ptr noundef %28, i8 noundef zeroext 0) #31
  %29 = add nuw nsw i64 %26, 1
  %30 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %25, label %33, !prof !226, !llvm.loop !344

33:                                               ; preds = %25, %18
  %34 = load i32, ptr @sched_max_luid, align 4, !tbaa !90
  %35 = tail call ptr @sbitmap_alloc(i32 noundef %34) #31
  store ptr %35, ptr @insn_referenced, align 8, !tbaa !75
  tail call void @sbitmap_zero(ptr noundef %35) #31
  %36 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %376, !prof !224

38:                                               ; preds = %33, %372
  %39 = phi i64 [ %57, %372 ], [ 0, %33 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %5) #31
  %40 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.deps, ptr %40, i64 %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %5, ptr noundef nonnull align 8 dereferenceable(184) %41, i64 184, i1 false), !tbaa.struct !345
  %42 = load ptr, ptr @cfun, align 8, !tbaa !75
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !103
  %47 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %48 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %49 = getelementptr inbounds i32, ptr %48, i64 %39
  %50 = load i32, ptr %49, align 4, !tbaa !90
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %47, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !90
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %46, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = add nuw nsw i64 %39, 1
  %58 = getelementptr inbounds i32, ptr %48, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !90
  %60 = sext i32 %59 to i64
  %61 = getelementptr i32, ptr %47, i64 %60
  %62 = getelementptr i32, ptr %61, i64 -1
  %63 = load i32, ptr %62, align 4, !tbaa !90
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %46, i64 0, i32 2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = icmp eq ptr %56, %66
  br i1 %67, label %69, label %68, !prof !225

68:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2723, ptr noundef nonnull @.str.12) #31
  br label %69

69:                                               ; preds = %68, %38
  %70 = load ptr, ptr @cfun, align 8, !tbaa !75
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !101
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !103
  %75 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %76 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %77 = getelementptr inbounds i32, ptr %76, i64 %39
  %78 = load i32, ptr %77, align 4, !tbaa !90
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %75, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !90
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %74, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  %85 = getelementptr inbounds i32, ptr %76, i64 %57
  %86 = load i32, ptr %85, align 4, !tbaa !90
  %87 = sext i32 %86 to i64
  %88 = getelementptr i32, ptr %75, i64 %87
  %89 = getelementptr i32, ptr %88, i64 -1
  %90 = load i32, ptr %89, align 4, !tbaa !90
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %74, i64 0, i32 2, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %84, ptr noundef %93, ptr noundef nonnull %3, ptr noundef nonnull %4) #31
  %94 = load ptr, ptr %3, align 8, !tbaa !75
  %95 = load ptr, ptr %4, align 8, !tbaa !75
  call void @sched_analyze(ptr noundef nonnull %5, ptr noundef %94, ptr noundef %95) #31
  %96 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %97 = getelementptr inbounds %struct.common_sched_info_def, ptr %96, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !202
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %275, label %100, !prof !225

100:                                              ; preds = %69
  %101 = load ptr, ptr %3, align 8, !tbaa !75
  %102 = load ptr, ptr %4, align 8, !tbaa !86
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %113, label %104

104:                                              ; preds = %100, %109
  %105 = phi ptr [ %111, %109 ], [ %102, %100 ]
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 7
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !86
  %112 = icmp eq ptr %111, %101
  br i1 %112, label %113, label %104, !llvm.loop !346

113:                                              ; preds = %109, %104, %100
  %114 = phi ptr [ %102, %100 ], [ %111, %109 ], [ %105, %104 ]
  br label %115

115:                                              ; preds = %210, %113
  %116 = phi ptr [ %114, %113 ], [ %204, %210 ]
  %117 = phi ptr [ null, %113 ], [ %199, %210 ]
  %118 = load i32, ptr %116, align 8
  %119 = trunc i32 %118 to i16
  switch i16 %119, label %136 [
    i16 10, label %140
    i16 9, label %140
    i16 8, label %120
  ]

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !86
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 65534
  %125 = icmp eq i32 %124, 24
  br i1 %125, label %140, label %126

126:                                              ; preds = %120
  %127 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %116) #31
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, ptr @reload_completed, align 4, !tbaa !90
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load ptr, ptr %121, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #31
  store i8 0, ptr %2, align 1, !tbaa !86
  call void @note_stores(ptr noundef %133, ptr noundef nonnull @sets_likely_spilled_1, ptr noundef nonnull %2) #31
  %134 = load i8, ptr %2, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #31
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132, %115, %129
  %137 = load i32, ptr %116, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 13
  br i1 %139, label %140, label %211

140:                                              ; preds = %115, %136, %132, %126, %120, %115
  %141 = load i32, ptr %116, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 13
  br i1 %143, label %198, label %144

144:                                              ; preds = %140
  %145 = icmp eq ptr %117, null
  br i1 %145, label %186, label %146

146:                                              ; preds = %144
  %147 = call ptr @sd_find_dep_between(ptr noundef nonnull %116, ptr noundef nonnull %117, i8 noundef zeroext 0) #31
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %186

149:                                              ; preds = %146
  %150 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %117, ptr noundef nonnull %116) #31
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  call void @add_dependence(ptr noundef nonnull %117, ptr noundef nonnull %116, i32 noundef 12) #31
  br label %153

153:                                              ; preds = %152, %149
  %154 = load ptr, ptr @insn_referenced, align 8, !tbaa !75
  %155 = load ptr, ptr @sched_luids, align 8
  %156 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !86
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.VEC_int_base, ptr %155, i64 0, i32 2, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !90
  %161 = load ptr, ptr %154, align 8, !tbaa !122
  %162 = icmp eq ptr %161, null
  br i1 %162, label %177, label %163

163:                                              ; preds = %153
  %164 = lshr i32 %160, 6
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds %struct.simple_bitmap_def, ptr %154, i64 0, i32 3, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !119
  %168 = and i32 %160, 63
  %169 = zext nneg i32 %168 to i64
  %170 = shl nuw i64 1, %169
  %171 = and i64 %167, %170
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %163
  %174 = getelementptr inbounds i8, ptr %161, i64 %165
  %175 = load i8, ptr %174, align 1, !tbaa !86
  %176 = add i8 %175, 1
  store i8 %176, ptr %174, align 1, !tbaa !86
  br label %177

177:                                              ; preds = %173, %163, %153
  %178 = and i32 %160, 63
  %179 = zext nneg i32 %178 to i64
  %180 = shl nuw i64 1, %179
  %181 = lshr i32 %160, 6
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds %struct.simple_bitmap_def, ptr %154, i64 0, i32 3, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !119
  %185 = or i64 %184, %180
  store i64 %185, ptr %183, align 8, !tbaa !119
  br label %186

186:                                              ; preds = %177, %146, %144
  %187 = load ptr, ptr @h_d_i_d, align 8
  %188 = load ptr, ptr @sched_luids, align 8
  %189 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !86
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.VEC_int_base, ptr %188, i64 0, i32 2, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !90
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %187, i64 0, i32 2, i64 %194, i32 7
  %196 = load i8, ptr %195, align 8
  %197 = or i8 %196, 1
  store i8 %197, ptr %195, align 8
  br label %198

198:                                              ; preds = %186, %140
  %199 = phi ptr [ %117, %140 ], [ %116, %186 ]
  %200 = icmp eq ptr %116, %101
  br i1 %200, label %211, label %201

201:                                              ; preds = %198, %206
  %202 = phi ptr [ %204, %206 ], [ %116, %198 ]
  %203 = getelementptr inbounds %struct.rtx_def, ptr %202, i64 0, i32 1, i32 0, i32 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !86
  %205 = icmp eq ptr %204, %101
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i32, ptr %204, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 7
  br i1 %209, label %201, label %210, !llvm.loop !347

210:                                              ; preds = %206, %201
  br label %115, !llvm.loop !348

211:                                              ; preds = %136, %198
  %212 = phi ptr [ %199, %198 ], [ %117, %136 ]
  %213 = icmp eq ptr %212, null
  %214 = icmp eq ptr %212, %101
  %215 = or i1 %213, %214
  br i1 %215, label %245, label %216

216:                                              ; preds = %211, %239
  %217 = phi ptr [ %218, %239 ], [ %212, %211 ]
  %218 = call ptr @prev_nonnote_insn(ptr noundef %217) #31
  %219 = load ptr, ptr @insn_referenced, align 8, !tbaa !75
  %220 = load ptr, ptr @sched_luids, align 8
  %221 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !86
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.VEC_int_base, ptr %220, i64 0, i32 2, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !90
  %226 = lshr i32 %225, 6
  %227 = zext nneg i32 %226 to i64
  %228 = getelementptr inbounds %struct.simple_bitmap_def, ptr %219, i64 0, i32 3, i64 %227
  %229 = load i64, ptr %228, align 8, !tbaa !119
  %230 = and i32 %225, 63
  %231 = zext nneg i32 %230 to i64
  %232 = shl nuw i64 1, %231
  %233 = and i64 %232, %229
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %216
  %236 = load i32, ptr %218, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 7
  br i1 %238, label %239, label %241

239:                                              ; preds = %241, %244, %216, %235
  %240 = icmp eq ptr %218, %101
  br i1 %240, label %245, label %216, !llvm.loop !349

241:                                              ; preds = %235
  %242 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %212, ptr noundef nonnull %218) #31
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %239

244:                                              ; preds = %241
  call void @add_dependence(ptr noundef nonnull %212, ptr noundef nonnull %218, i32 noundef 12) #31
  br label %239

245:                                              ; preds = %239, %211
  %246 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !350
  %247 = call zeroext i8 %246() #31
  %248 = icmp eq i8 %247, 0
  %249 = load i32, ptr @reload_completed, align 4
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %248, i1 true, i1 %250
  br i1 %251, label %275, label %252

252:                                              ; preds = %245
  %253 = load i32, ptr %114, align 8
  %254 = and i32 %253, 65535
  %255 = icmp ne i32 %254, 9
  %256 = icmp eq ptr %114, %101
  %257 = or i1 %255, %256
  br i1 %257, label %275, label %258

258:                                              ; preds = %252, %273
  %259 = phi ptr [ %261, %273 ], [ %114, %252 ]
  %260 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !86
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 65535
  %264 = add nsw i32 %263, -7
  %265 = icmp ult i32 %264, 4
  br i1 %265, label %266, label %273

266:                                              ; preds = %258
  %267 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !86
  %269 = load i32, ptr %268, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 14
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  call void @add_dependence(ptr noundef nonnull %114, ptr noundef nonnull %261, i32 noundef 12) #31
  br label %273

273:                                              ; preds = %272, %266, %258
  %274 = icmp eq ptr %261, %101
  br i1 %274, label %275, label %258, !llvm.loop !362

275:                                              ; preds = %273, %252, %245, %69
  %276 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %277 = icmp sgt i32 %276, 1
  br i1 %277, label %278, label %366, !prof !363

278:                                              ; preds = %275
  %279 = load ptr, ptr @cfun, align 8, !tbaa !75
  %280 = getelementptr inbounds %struct.function, ptr %279, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !101
  %282 = getelementptr inbounds %struct.control_flow_graph, ptr %281, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !103
  %284 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %285 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %286 = getelementptr inbounds i32, ptr %285, i64 %39
  %287 = load i32, ptr %286, align 4, !tbaa !90
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, ptr %284, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !90
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %283, i64 0, i32 2, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !75
  %294 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 1
  %295 = getelementptr inbounds %struct.basic_block_def, ptr %293, i64 0, i32 9
  br label %296

296:                                              ; preds = %351, %278
  %297 = phi i32 [ 0, %278 ], [ %352, %351 ]
  %298 = load ptr, ptr %294, align 8, !tbaa !75
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300, !prof !364

300:                                              ; preds = %296
  %301 = load i32, ptr %298, align 8, !tbaa !105
  br label %302

302:                                              ; preds = %300, %296
  %303 = phi i32 [ %301, %300 ], [ 0, %296 ]
  %304 = icmp eq i32 %303, %297
  br i1 %304, label %309, label %305, !prof !365

305:                                              ; preds = %302
  %306 = zext i32 %297 to i64
  %307 = getelementptr inbounds %struct.VEC_edge_base, ptr %298, i64 0, i32 2, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !75
  br label %309

309:                                              ; preds = %305, %302
  %310 = phi ptr [ %308, %305 ], [ null, %302 ]
  br i1 %304, label %353, label %311, !prof !365

311:                                              ; preds = %309
  %312 = getelementptr inbounds %struct.edge_def, ptr %310, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !107
  %314 = load ptr, ptr @cfun, align 8, !tbaa !75
  %315 = getelementptr inbounds %struct.function, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !101
  %317 = getelementptr inbounds %struct.control_flow_graph, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !128
  %319 = icmp eq ptr %313, %318
  br i1 %319, label %342, label %320, !prof !366

320:                                              ; preds = %311
  %321 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %322 = load i32, ptr %295, align 8, !tbaa !109
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, ptr %321, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !90
  %326 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 9
  %327 = load i32, ptr %326, align 8, !tbaa !109
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, ptr %321, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !90
  %331 = icmp eq i32 %325, %330
  br i1 %331, label %332, label %342, !prof !367

332:                                              ; preds = %320
  %333 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %334 = getelementptr inbounds i32, ptr %333, i64 %328
  %335 = load i32, ptr %334, align 4, !tbaa !90
  %336 = sext i32 %335 to i64
  %337 = icmp slt i64 %39, %336
  br i1 %337, label %338, label %342, !prof !368

338:                                              ; preds = %332
  %339 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %340 = sext i32 %335 to i64
  %341 = getelementptr inbounds %struct.deps, ptr %339, i64 %340
  call void @deps_join(ptr noundef %341, ptr noundef nonnull %5)
  br label %342

342:                                              ; preds = %338, %332, %320, %311
  %343 = load ptr, ptr %294, align 8, !tbaa !75
  %344 = icmp eq ptr %343, null
  br i1 %344, label %347, label %345, !prof !366

345:                                              ; preds = %342
  %346 = load i32, ptr %343, align 8, !tbaa !105
  br label %347

347:                                              ; preds = %345, %342
  %348 = phi i32 [ %346, %345 ], [ 0, %342 ]
  %349 = icmp ult i32 %297, %348
  br i1 %349, label %351, label %350, !prof !369

350:                                              ; preds = %347
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %351

351:                                              ; preds = %350, %347
  %352 = add i32 %297, 1
  br label %296, !llvm.loop !370

353:                                              ; preds = %309
  %354 = getelementptr inbounds %struct.deps, ptr %5, i64 0, i32 1
  %355 = getelementptr inbounds %struct.deps, ptr %5, i64 0, i32 2
  %356 = getelementptr inbounds %struct.deps, ptr %5, i64 0, i32 3
  %357 = load ptr, ptr %5, align 8, !tbaa !186
  %358 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %359 = getelementptr inbounds %struct.deps, ptr %358, i64 %39
  store ptr %357, ptr %359, align 8, !tbaa !186
  %360 = load ptr, ptr %354, align 8, !tbaa !371
  %361 = getelementptr inbounds %struct.deps, ptr %358, i64 %39, i32 1
  store ptr %360, ptr %361, align 8, !tbaa !371
  %362 = load ptr, ptr %355, align 8, !tbaa !190
  %363 = getelementptr inbounds %struct.deps, ptr %358, i64 %39, i32 2
  store ptr %362, ptr %363, align 8, !tbaa !190
  %364 = load ptr, ptr %356, align 8, !tbaa !372
  %365 = getelementptr inbounds %struct.deps, ptr %358, i64 %39, i32 3
  store ptr %364, ptr %365, align 8, !tbaa !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  br label %366

366:                                              ; preds = %353, %275
  call void @free_deps(ptr noundef nonnull %5) #31
  %367 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 10), align 8, !tbaa !373
  %368 = icmp eq ptr %367, null
  br i1 %368, label %372, label %369, !prof !225

369:                                              ; preds = %366
  %370 = load ptr, ptr %3, align 8, !tbaa !75
  %371 = load ptr, ptr %4, align 8, !tbaa !75
  call void %367(ptr noundef %370, ptr noundef %371) #31
  br label %372

372:                                              ; preds = %366, %369
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  %373 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %374 = sext i32 %373 to i64
  %375 = icmp slt i64 %57, %374
  br i1 %375, label %38, label %376, !prof !226, !llvm.loop !374

376:                                              ; preds = %372, %33
  %377 = load ptr, ptr @insn_referenced, align 8, !tbaa !75
  %378 = load ptr, ptr %377, align 8, !tbaa !122
  call void @free(ptr noundef %378)
  call void @free(ptr noundef %377)
  %379 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %395, !prof !224

381:                                              ; preds = %376, %381
  %382 = phi i64 [ %391, %381 ], [ 0, %376 ]
  %383 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %384 = getelementptr inbounds %struct.deps, ptr %383, i64 %382
  call void @free_INSN_LIST_list(ptr noundef %384) #31
  %385 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %386 = getelementptr inbounds %struct.deps, ptr %385, i64 %382, i32 2
  call void @free_INSN_LIST_list(ptr noundef nonnull %386) #31
  %387 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %388 = getelementptr inbounds %struct.deps, ptr %387, i64 %382, i32 1
  call void @free_EXPR_LIST_list(ptr noundef nonnull %388) #31
  %389 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  %390 = getelementptr inbounds %struct.deps, ptr %389, i64 %382, i32 3
  call void @free_EXPR_LIST_list(ptr noundef nonnull %390) #31
  %391 = add nuw nsw i64 %382, 1
  %392 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %393 = sext i32 %392 to i64
  %394 = icmp slt i64 %391, %393
  br i1 %394, label %381, label %395, !prof !226, !llvm.loop !375

395:                                              ; preds = %381, %376
  call void @finish_deps_global() #31
  %396 = load ptr, ptr @bb_deps, align 8, !tbaa !75
  call void @free(ptr noundef %396)
  %397 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %398 = getelementptr inbounds %struct.region, ptr %397, i64 %7, i32 2
  %399 = load i8, ptr %398, align 4
  %400 = or i8 %399, 1
  store i8 %400, ptr %398, align 4
  %401 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %402 = getelementptr inbounds %struct.common_sched_info_def, ptr %401, i64 0, i32 4
  %403 = load i32, ptr %402, align 8, !tbaa !202
  %404 = icmp eq i32 %403, 4
  br i1 %404, label %405, label %415, !prof !223

405:                                              ; preds = %395
  store i32 0, ptr @sched_emulate_haifa_p, align 4, !tbaa !90
  br label %415

406:                                              ; preds = %1
  %407 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %408 = icmp eq i32 %407, 1
  br i1 %408, label %415, label %409

409:                                              ; preds = %406
  %410 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %411 = getelementptr inbounds %struct.common_sched_info_def, ptr %410, i64 0, i32 4
  %412 = load i32, ptr %411, align 8, !tbaa !202
  %413 = icmp eq i32 %412, 4
  br i1 %413, label %415, label %414

414:                                              ; preds = %409
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3179, ptr noundef nonnull @.str.12) #31
  br label %415

415:                                              ; preds = %395, %405, %414, %409, %406
  ret void
}

declare void @init_deps_global() local_unnamed_addr #3

declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @finish_deps_global() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @sched_rgn_local_init(i32 noundef %0) local_unnamed_addr #10 !prof !74 {
  %2 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %468

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = tail call ptr @xmalloc(i64 noundef %6) #31
  store ptr %7, ptr @prob, align 8, !tbaa !75
  %8 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %9 = tail call ptr @sbitmap_vector_alloc(i32 noundef %8, i32 noundef %8) #31
  store ptr %9, ptr @dom, align 8, !tbaa !75
  %10 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  tail call void @sbitmap_vector_zero(ptr noundef %9, i32 noundef %10) #31
  store i32 0, ptr @rgn_nr_edges, align 4, !tbaa !90
  %11 = load ptr, ptr @cfun, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = load ptr, ptr %13, align 8, !tbaa !240
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !241
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %71, label %20

20:                                               ; preds = %4, %62
  %21 = phi ptr [ %64, %62 ], [ %16, %4 ]
  %22 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %22, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !90
  %28 = icmp eq i32 %27, %0
  br i1 %28, label %29, label %62

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  br label %31

31:                                               ; preds = %60, %29
  %32 = phi i32 [ 0, %29 ], [ %61, %60 ]
  %33 = load ptr, ptr %30, align 8, !tbaa !75
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %33, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ]
  %39 = icmp eq i32 %38, %32
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = zext i32 %32 to i64
  %42 = getelementptr inbounds %struct.VEC_edge_base, ptr %33, i64 0, i32 2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  br label %44

44:                                               ; preds = %37, %40
  %45 = phi ptr [ %43, %40 ], [ null, %37 ]
  br i1 %39, label %62, label %46

46:                                               ; preds = %44
  %47 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !90
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @rgn_nr_edges, align 4, !tbaa !90
  %49 = sext i32 %47 to i64
  %50 = inttoptr i64 %49 to ptr
  %51 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !291
  %52 = load ptr, ptr %30, align 8, !tbaa !75
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i32, ptr %52, align 8, !tbaa !105
  br label %56

56:                                               ; preds = %54, %46
  %57 = phi i32 [ %55, %54 ], [ 0, %46 ]
  %58 = icmp ult i32 %32, %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %60

60:                                               ; preds = %56, %59
  %61 = add i32 %32, 1
  br label %31, !llvm.loop !376

62:                                               ; preds = %44, %20
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !241
  %65 = load ptr, ptr @cfun, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !101
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !128
  %70 = icmp eq ptr %64, %69
  br i1 %70, label %71, label %20, !llvm.loop !377

71:                                               ; preds = %62, %4
  %72 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !90
  %73 = sext i32 %72 to i64
  %74 = shl nsw i64 %73, 3
  %75 = tail call ptr @xmalloc(i64 noundef %74) #31
  store ptr %75, ptr @rgn_edges, align 8, !tbaa !75
  store i32 0, ptr @rgn_nr_edges, align 4, !tbaa !90
  %76 = load ptr, ptr @cfun, align 8, !tbaa !75
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = load ptr, ptr %78, align 8, !tbaa !240
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %79, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !241
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !128
  %84 = icmp eq ptr %81, %83
  br i1 %84, label %136, label %85

85:                                               ; preds = %71, %127
  %86 = phi ptr [ %129, %127 ], [ %81, %71 ]
  %87 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %89 = load i32, ptr %88, align 8, !tbaa !109
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %87, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !90
  %93 = icmp eq i32 %92, %0
  br i1 %93, label %94, label %127

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 1
  br label %96

96:                                               ; preds = %125, %94
  %97 = phi i32 [ 0, %94 ], [ %126, %125 ]
  %98 = load ptr, ptr %95, align 8, !tbaa !75
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %98, align 8, !tbaa !105
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i32 [ %101, %100 ], [ 0, %96 ]
  %104 = icmp eq i32 %103, %97
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = zext i32 %97 to i64
  %107 = getelementptr inbounds %struct.VEC_edge_base, ptr %98, i64 0, i32 2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !75
  br label %109

109:                                              ; preds = %102, %105
  %110 = phi ptr [ %108, %105 ], [ null, %102 ]
  br i1 %104, label %127, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr @rgn_edges, align 8, !tbaa !75
  %113 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !90
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr @rgn_nr_edges, align 4, !tbaa !90
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds ptr, ptr %112, i64 %115
  store ptr %110, ptr %116, align 8, !tbaa !75
  %117 = load ptr, ptr %95, align 8, !tbaa !75
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %111
  %120 = load i32, ptr %117, align 8, !tbaa !105
  br label %121

121:                                              ; preds = %119, %111
  %122 = phi i32 [ %120, %119 ], [ 0, %111 ]
  %123 = icmp ult i32 %97, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %125

125:                                              ; preds = %121, %124
  %126 = add i32 %97, 1
  br label %96, !llvm.loop !378

127:                                              ; preds = %109, %85
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !241
  %130 = load ptr, ptr @cfun, align 8, !tbaa !75
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !101
  %133 = getelementptr inbounds %struct.control_flow_graph, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !128
  %135 = icmp eq ptr %129, %134
  br i1 %135, label %136, label %85, !llvm.loop !379

136:                                              ; preds = %127, %71
  %137 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %138 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !90
  %139 = tail call ptr @sbitmap_vector_alloc(i32 noundef %137, i32 noundef %138) #31
  store ptr %139, ptr @pot_split, align 8, !tbaa !75
  %140 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  tail call void @sbitmap_vector_zero(ptr noundef %139, i32 noundef %140) #31
  %141 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %142 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !90
  %143 = tail call ptr @sbitmap_vector_alloc(i32 noundef %141, i32 noundef %142) #31
  store ptr %143, ptr @ancestor_edges, align 8, !tbaa !75
  %144 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  tail call void @sbitmap_vector_zero(ptr noundef %143, i32 noundef %144) #31
  %145 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %411

147:                                              ; preds = %136, %406
  %148 = phi i64 [ %407, %406 ], [ 0, %136 ]
  %149 = trunc i64 %148 to i32
  %150 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %151 = getelementptr inbounds i32, ptr %150, i64 %148
  %152 = load i32, ptr %151, align 4, !tbaa !90
  %153 = load i32, ptr @current_blocks, align 4, !tbaa !90
  %154 = add nsw i32 %153, %149
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %157, label %156

156:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1410, ptr noundef nonnull @.str.12) #31
  br label %157

157:                                              ; preds = %156, %147
  %158 = icmp eq i64 %148, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %157
  %160 = load ptr, ptr @dom, align 8, !tbaa !75
  %161 = getelementptr inbounds ptr, ptr %160, i64 %148
  %162 = load ptr, ptr %161, align 8, !tbaa !75
  %163 = load ptr, ptr %162, align 8, !tbaa !122
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.simple_bitmap_def, ptr %162, i64 0, i32 3, i64 0
  %167 = load i64, ptr %166, align 8, !tbaa !119
  %168 = and i64 %167, 1
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i8, ptr %163, align 1, !tbaa !86
  %172 = add i8 %171, 1
  store i8 %172, ptr %163, align 1, !tbaa !86
  br label %173

173:                                              ; preds = %170, %165, %159
  %174 = getelementptr inbounds %struct.simple_bitmap_def, ptr %162, i64 0, i32 3, i64 0
  %175 = load i64, ptr %174, align 8, !tbaa !119
  %176 = or i64 %175, 1
  store i64 %176, ptr %174, align 8, !tbaa !119
  %177 = load ptr, ptr @prob, align 8, !tbaa !75
  %178 = getelementptr inbounds i32, ptr %177, i64 %148
  store i32 10000, ptr %178, align 4, !tbaa !90
  br label %406

179:                                              ; preds = %157
  %180 = load ptr, ptr @prob, align 8, !tbaa !75
  %181 = getelementptr inbounds i32, ptr %180, i64 %148
  store i32 0, ptr %181, align 4, !tbaa !90
  %182 = load ptr, ptr @dom, align 8, !tbaa !75
  %183 = getelementptr inbounds ptr, ptr %182, i64 %148
  %184 = load ptr, ptr %183, align 8, !tbaa !75
  tail call void @sbitmap_ones(ptr noundef %184) #31
  %185 = load ptr, ptr @cfun, align 8, !tbaa !75
  %186 = getelementptr inbounds %struct.function, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !101
  %188 = getelementptr inbounds %struct.control_flow_graph, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !103
  %190 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %191 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %192 = getelementptr inbounds i32, ptr %191, i64 %148
  %193 = load i32, ptr %192, align 4, !tbaa !90
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, ptr %190, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !90
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %189, i64 0, i32 2, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !75
  %200 = icmp eq ptr %199, null
  br label %201

201:                                              ; preds = %354, %179
  %202 = phi i32 [ 0, %179 ], [ %355, %354 ]
  br i1 %200, label %203, label %204

203:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.12) #31
  br label %204

204:                                              ; preds = %203, %201
  %205 = load ptr, ptr %199, align 8, !tbaa !75
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr %205, align 8, !tbaa !105
  br label %209

209:                                              ; preds = %207, %204
  %210 = phi i32 [ %208, %207 ], [ 0, %204 ]
  %211 = icmp eq i32 %210, %202
  br i1 %211, label %216, label %212

212:                                              ; preds = %209
  %213 = zext i32 %202 to i64
  %214 = getelementptr inbounds %struct.VEC_edge_base, ptr %205, i64 0, i32 2, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !75
  br label %216

216:                                              ; preds = %212, %209
  %217 = phi ptr [ %215, %212 ], [ null, %209 ]
  br i1 %211, label %356, label %218

218:                                              ; preds = %216
  %219 = load ptr, ptr %217, align 8, !tbaa !120
  %220 = load ptr, ptr @cfun, align 8, !tbaa !75
  %221 = getelementptr inbounds %struct.function, ptr %220, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !101
  %223 = load ptr, ptr %222, align 8, !tbaa !240
  %224 = icmp eq ptr %219, %223
  br i1 %224, label %345, label %225

225:                                              ; preds = %218
  %226 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %227 = getelementptr inbounds %struct.basic_block_def, ptr %219, i64 0, i32 9
  %228 = load i32, ptr %227, align 8, !tbaa !109
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %226, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !90
  %232 = load ptr, ptr @dom, align 8, !tbaa !75
  %233 = getelementptr inbounds ptr, ptr %232, i64 %148
  %234 = load ptr, ptr %233, align 8, !tbaa !75
  %235 = sext i32 %231 to i64
  %236 = getelementptr inbounds ptr, ptr %232, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !75
  tail call void @sbitmap_a_and_b(ptr noundef %234, ptr noundef %234, ptr noundef %237) #31
  %238 = load ptr, ptr @ancestor_edges, align 8, !tbaa !75
  %239 = getelementptr inbounds ptr, ptr %238, i64 %148
  %240 = load ptr, ptr %239, align 8, !tbaa !75
  %241 = getelementptr inbounds ptr, ptr %238, i64 %235
  %242 = load ptr, ptr %241, align 8, !tbaa !75
  tail call void @sbitmap_a_or_b(ptr noundef %240, ptr noundef %240, ptr noundef %242) #31
  %243 = load ptr, ptr @ancestor_edges, align 8, !tbaa !75
  %244 = getelementptr inbounds ptr, ptr %243, i64 %148
  %245 = load ptr, ptr %244, align 8, !tbaa !75
  %246 = getelementptr inbounds %struct.edge_def, ptr %217, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !291
  %248 = ptrtoint ptr %247 to i64
  %249 = load ptr, ptr %245, align 8, !tbaa !122
  %250 = icmp eq ptr %249, null
  br i1 %250, label %264, label %251

251:                                              ; preds = %225
  %252 = lshr i64 %248, 6
  %253 = and i64 %252, 67108863
  %254 = getelementptr inbounds %struct.simple_bitmap_def, ptr %245, i64 0, i32 3, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !119
  %256 = and i64 %248, 63
  %257 = shl nuw i64 1, %256
  %258 = and i64 %255, %257
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %251
  %261 = getelementptr inbounds i8, ptr %249, i64 %253
  %262 = load i8, ptr %261, align 1, !tbaa !86
  %263 = add i8 %262, 1
  store i8 %263, ptr %261, align 1, !tbaa !86
  br label %264

264:                                              ; preds = %260, %251, %225
  %265 = and i64 %248, 63
  %266 = shl nuw i64 1, %265
  %267 = lshr i64 %248, 6
  %268 = and i64 %267, 67108863
  %269 = getelementptr inbounds %struct.simple_bitmap_def, ptr %245, i64 0, i32 3, i64 %268
  %270 = load i64, ptr %269, align 8, !tbaa !119
  %271 = or i64 %270, %266
  store i64 %271, ptr %269, align 8, !tbaa !119
  %272 = load ptr, ptr @pot_split, align 8, !tbaa !75
  %273 = getelementptr inbounds ptr, ptr %272, i64 %148
  %274 = load ptr, ptr %273, align 8, !tbaa !75
  %275 = getelementptr inbounds ptr, ptr %272, i64 %235
  %276 = load ptr, ptr %275, align 8, !tbaa !75
  tail call void @sbitmap_a_or_b(ptr noundef %274, ptr noundef %274, ptr noundef %276) #31
  %277 = load ptr, ptr %217, align 8, !tbaa !120
  %278 = getelementptr inbounds %struct.basic_block_def, ptr %277, i64 0, i32 1
  br label %279

279:                                              ; preds = %332, %264
  %280 = phi i32 [ 0, %264 ], [ %333, %332 ]
  %281 = load ptr, ptr %278, align 8, !tbaa !75
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, ptr %281, align 8, !tbaa !105
  br label %285

285:                                              ; preds = %283, %279
  %286 = phi i32 [ %284, %283 ], [ 0, %279 ]
  %287 = icmp eq i32 %286, %280
  br i1 %287, label %292, label %288

288:                                              ; preds = %285
  %289 = zext i32 %280 to i64
  %290 = getelementptr inbounds %struct.VEC_edge_base, ptr %281, i64 0, i32 2, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !75
  br label %292

292:                                              ; preds = %288, %285
  %293 = phi ptr [ %291, %288 ], [ null, %285 ]
  br i1 %287, label %334, label %294

294:                                              ; preds = %292
  %295 = load ptr, ptr @pot_split, align 8, !tbaa !75
  %296 = getelementptr inbounds ptr, ptr %295, i64 %148
  %297 = load ptr, ptr %296, align 8, !tbaa !75
  %298 = getelementptr inbounds %struct.edge_def, ptr %293, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !291
  %300 = ptrtoint ptr %299 to i64
  %301 = load ptr, ptr %297, align 8, !tbaa !122
  %302 = icmp eq ptr %301, null
  br i1 %302, label %316, label %303

303:                                              ; preds = %294
  %304 = lshr i64 %300, 6
  %305 = and i64 %304, 67108863
  %306 = getelementptr inbounds %struct.simple_bitmap_def, ptr %297, i64 0, i32 3, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !119
  %308 = and i64 %300, 63
  %309 = shl nuw i64 1, %308
  %310 = and i64 %307, %309
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %303
  %313 = getelementptr inbounds i8, ptr %301, i64 %305
  %314 = load i8, ptr %313, align 1, !tbaa !86
  %315 = add i8 %314, 1
  store i8 %315, ptr %313, align 1, !tbaa !86
  br label %316

316:                                              ; preds = %312, %303, %294
  %317 = and i64 %300, 63
  %318 = shl nuw i64 1, %317
  %319 = lshr i64 %300, 6
  %320 = and i64 %319, 67108863
  %321 = getelementptr inbounds %struct.simple_bitmap_def, ptr %297, i64 0, i32 3, i64 %320
  %322 = load i64, ptr %321, align 8, !tbaa !119
  %323 = or i64 %322, %318
  store i64 %323, ptr %321, align 8, !tbaa !119
  %324 = load ptr, ptr %278, align 8, !tbaa !75
  %325 = icmp eq ptr %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %316
  %327 = load i32, ptr %324, align 8, !tbaa !105
  br label %328

328:                                              ; preds = %326, %316
  %329 = phi i32 [ %327, %326 ], [ 0, %316 ]
  %330 = icmp ult i32 %280, %329
  br i1 %330, label %332, label %331

331:                                              ; preds = %328
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %332

332:                                              ; preds = %331, %328
  %333 = add i32 %280, 1
  br label %279, !llvm.loop !380

334:                                              ; preds = %292
  %335 = load ptr, ptr @prob, align 8, !tbaa !75
  %336 = getelementptr inbounds i32, ptr %335, i64 %235
  %337 = load i32, ptr %336, align 4, !tbaa !90
  %338 = getelementptr inbounds %struct.edge_def, ptr %217, i64 0, i32 8
  %339 = load i32, ptr %338, align 4, !tbaa !276
  %340 = mul nsw i32 %339, %337
  %341 = sdiv i32 %340, 10000
  %342 = getelementptr inbounds i32, ptr %335, i64 %148
  %343 = load i32, ptr %342, align 4, !tbaa !90
  %344 = add nsw i32 %341, %343
  store i32 %344, ptr %342, align 4, !tbaa !90
  br label %345

345:                                              ; preds = %334, %218
  %346 = load ptr, ptr %199, align 8, !tbaa !75
  %347 = icmp eq ptr %346, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %345
  %349 = load i32, ptr %346, align 8, !tbaa !105
  br label %350

350:                                              ; preds = %348, %345
  %351 = phi i32 [ %349, %348 ], [ 0, %345 ]
  %352 = icmp ult i32 %202, %351
  br i1 %352, label %354, label %353

353:                                              ; preds = %350
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %354

354:                                              ; preds = %353, %350
  %355 = add i32 %202, 1
  br label %201, !llvm.loop !381

356:                                              ; preds = %216
  %357 = load ptr, ptr @dom, align 8, !tbaa !75
  %358 = getelementptr inbounds ptr, ptr %357, i64 %148
  %359 = load ptr, ptr %358, align 8, !tbaa !75
  %360 = load ptr, ptr %359, align 8, !tbaa !122
  %361 = icmp eq ptr %360, null
  br i1 %361, label %375, label %362

362:                                              ; preds = %356
  %363 = lshr i64 %148, 6
  %364 = and i64 %363, 67108863
  %365 = getelementptr inbounds %struct.simple_bitmap_def, ptr %359, i64 0, i32 3, i64 %364
  %366 = load i64, ptr %365, align 8, !tbaa !119
  %367 = and i64 %148, 63
  %368 = shl nuw i64 1, %367
  %369 = and i64 %366, %368
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %362
  %372 = getelementptr inbounds i8, ptr %360, i64 %364
  %373 = load i8, ptr %372, align 1, !tbaa !86
  %374 = add i8 %373, 1
  store i8 %374, ptr %372, align 1, !tbaa !86
  br label %375

375:                                              ; preds = %371, %362, %356
  %376 = and i64 %148, 63
  %377 = shl nuw i64 1, %376
  %378 = lshr i64 %148, 6
  %379 = and i64 %378, 67108863
  %380 = getelementptr inbounds %struct.simple_bitmap_def, ptr %359, i64 0, i32 3, i64 %379
  %381 = load i64, ptr %380, align 8, !tbaa !119
  %382 = or i64 %381, %377
  store i64 %382, ptr %380, align 8, !tbaa !119
  %383 = load ptr, ptr @pot_split, align 8, !tbaa !75
  %384 = getelementptr inbounds ptr, ptr %383, i64 %148
  %385 = load ptr, ptr %384, align 8, !tbaa !75
  %386 = load ptr, ptr @ancestor_edges, align 8, !tbaa !75
  %387 = getelementptr inbounds ptr, ptr %386, i64 %148
  %388 = load ptr, ptr %387, align 8, !tbaa !75
  tail call void @sbitmap_difference(ptr noundef %385, ptr noundef %385, ptr noundef %388) #31
  %389 = load i32, ptr @sched_verbose, align 4, !tbaa !90
  %390 = icmp sgt i32 %389, 1
  br i1 %390, label %391, label %406

391:                                              ; preds = %375
  %392 = load ptr, ptr @sched_dump, align 8, !tbaa !75
  %393 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %394 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %395 = getelementptr inbounds i32, ptr %394, i64 %148
  %396 = load i32, ptr %395, align 4, !tbaa !90
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, ptr %393, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !90
  %400 = load ptr, ptr @prob, align 8, !tbaa !75
  %401 = getelementptr inbounds i32, ptr %400, i64 %148
  %402 = load i32, ptr %401, align 4, !tbaa !90
  %403 = sdiv i32 %402, 100
  %404 = trunc i64 %148 to i32
  %405 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %392, ptr noundef nonnull @.str.50, i32 noundef %404, i32 noundef %399, i32 noundef %403)
  br label %406

406:                                              ; preds = %173, %375, %391
  %407 = add nuw nsw i64 %148, 1
  %408 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %409 = sext i32 %408 to i64
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %147, label %411, !llvm.loop !382

411:                                              ; preds = %406, %136
  %412 = load ptr, ptr @cfun, align 8, !tbaa !75
  %413 = getelementptr inbounds %struct.function, ptr %412, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !101
  %415 = load ptr, ptr %414, align 8, !tbaa !240
  %416 = getelementptr inbounds %struct.basic_block_def, ptr %415, i64 0, i32 6
  %417 = load ptr, ptr %416, align 8, !tbaa !241
  %418 = getelementptr inbounds %struct.control_flow_graph, ptr %414, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !128
  %420 = icmp eq ptr %417, %419
  br i1 %420, label %468, label %421

421:                                              ; preds = %411, %459
  %422 = phi ptr [ %461, %459 ], [ %417, %411 ]
  %423 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %424 = getelementptr inbounds %struct.basic_block_def, ptr %422, i64 0, i32 9
  %425 = load i32, ptr %424, align 8, !tbaa !109
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, ptr %423, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !90
  %429 = icmp eq i32 %428, %0
  br i1 %429, label %430, label %459

430:                                              ; preds = %421
  %431 = getelementptr inbounds %struct.basic_block_def, ptr %422, i64 0, i32 1
  br label %432

432:                                              ; preds = %457, %430
  %433 = phi i32 [ 0, %430 ], [ %458, %457 ]
  %434 = load ptr, ptr %431, align 8, !tbaa !75
  %435 = icmp eq ptr %434, null
  br i1 %435, label %438, label %436

436:                                              ; preds = %432
  %437 = load i32, ptr %434, align 8, !tbaa !105
  br label %438

438:                                              ; preds = %436, %432
  %439 = phi i32 [ %437, %436 ], [ 0, %432 ]
  %440 = icmp eq i32 %439, %433
  br i1 %440, label %445, label %441

441:                                              ; preds = %438
  %442 = zext i32 %433 to i64
  %443 = getelementptr inbounds %struct.VEC_edge_base, ptr %434, i64 0, i32 2, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !75
  br label %445

445:                                              ; preds = %438, %441
  %446 = phi ptr [ %444, %441 ], [ null, %438 ]
  br i1 %440, label %459, label %447

447:                                              ; preds = %445
  %448 = getelementptr inbounds %struct.edge_def, ptr %446, i64 0, i32 3
  store ptr null, ptr %448, align 8, !tbaa !291
  %449 = load ptr, ptr %431, align 8, !tbaa !75
  %450 = icmp eq ptr %449, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %447
  %452 = load i32, ptr %449, align 8, !tbaa !105
  br label %453

453:                                              ; preds = %451, %447
  %454 = phi i32 [ %452, %451 ], [ 0, %447 ]
  %455 = icmp ult i32 %433, %454
  br i1 %455, label %457, label %456

456:                                              ; preds = %453
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %457

457:                                              ; preds = %453, %456
  %458 = add i32 %433, 1
  br label %432, !llvm.loop !383

459:                                              ; preds = %445, %421
  %460 = getelementptr inbounds %struct.basic_block_def, ptr %422, i64 0, i32 6
  %461 = load ptr, ptr %460, align 8, !tbaa !241
  %462 = load ptr, ptr @cfun, align 8, !tbaa !75
  %463 = getelementptr inbounds %struct.function, ptr %462, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !101
  %465 = getelementptr inbounds %struct.control_flow_graph, ptr %464, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !128
  %467 = icmp eq ptr %461, %466
  br i1 %467, label %468, label %421, !llvm.loop !384

468:                                              ; preds = %459, %411, %1
  ret void
}

declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @sched_rgn_local_free() local_unnamed_addr #18 !prof !74 {
  %1 = load ptr, ptr @prob, align 8, !tbaa !75
  tail call void @free(ptr noundef %1)
  %2 = load ptr, ptr @dom, align 8, !tbaa !75
  tail call void @free(ptr noundef %2)
  %3 = load ptr, ptr @pot_split, align 8, !tbaa !75
  tail call void @free(ptr noundef %3)
  %4 = load ptr, ptr @ancestor_edges, align 8, !tbaa !75
  tail call void @free(ptr noundef %4)
  %5 = load ptr, ptr @rgn_edges, align 8, !tbaa !75
  tail call void @free(ptr noundef %5)
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @sched_rgn_local_finish() local_unnamed_addr #18 !prof !74 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.common_sched_info_def, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !202
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @sched_rgn_local_free()
  br label %9

9:                                                ; preds = %8, %3, %0
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @rgn_setup_common_sched_info() local_unnamed_addr #19 !prof !149 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rgn_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store ptr @rgn_fix_recovery_cfg, ptr @rgn_common_sched_info, align 8, !tbaa !385
  store ptr @rgn_add_block, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 1), align 8, !tbaa !386
  store ptr @rgn_estimate_number_of_insns, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 2), align 8, !tbaa !126
  store i32 1, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 4), align 8, !tbaa !202
  store ptr @rgn_common_sched_info, ptr @common_sched_info, align 8, !tbaa !75
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @rgn_fix_recovery_cfg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10 !prof !74 {
  %4 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %4, i64 %8
  store i32 %7, ptr %9, align 4, !tbaa !90
  %10 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %4, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !90
  %14 = sext i32 %13 to i64
  %15 = getelementptr i32, ptr %10, i64 %14
  %16 = getelementptr i32, ptr %15, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !90
  %18 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %19 = sext i32 %17 to i64
  br label %20

20:                                               ; preds = %20, %3
  %21 = phi i64 [ %22, %20 ], [ %19, %3 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds i32, ptr %18, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !90
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %20, !llvm.loop !387

26:                                               ; preds = %20
  %27 = trunc i64 %22 to i32
  %28 = load i32, ptr %15, align 4, !tbaa !90
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3458, ptr noundef nonnull @.str.12) #31
  br label %31

31:                                               ; preds = %26, %30
  %32 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %33 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %34 = getelementptr inbounds i32, ptr %33, i64 %5
  %35 = load i32, ptr %34, align 4, !tbaa !90
  %36 = sext i32 %35 to i64
  %37 = getelementptr i32, ptr %32, i64 %36
  %38 = getelementptr i32, ptr %37, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !90
  %40 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %41 = sext i32 %39 to i64
  br label %42

42:                                               ; preds = %42, %31
  %43 = phi i64 [ %44, %42 ], [ %41, %31 ]
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds i32, ptr %40, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !90
  %47 = icmp eq i32 %46, %0
  br i1 %47, label %48, label %42, !llvm.loop !388

48:                                               ; preds = %42
  %49 = trunc i64 %43 to i32
  %50 = load i32, ptr %37, align 4, !tbaa !90
  %51 = icmp slt i32 %50, %49
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3464, ptr noundef nonnull @.str.12) #31
  br label %53

53:                                               ; preds = %48, %52
  %54 = icmp slt i32 %49, %27
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3466, ptr noundef nonnull @.str.12) #31
  br label %56

56:                                               ; preds = %53, %55
  %57 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %58 = shl i64 %43, 32
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  %61 = getelementptr inbounds i32, ptr %60, i64 1
  %62 = sub i64 %22, %43
  %63 = shl i64 %62, 32
  %64 = ashr exact i64 %63, 30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %61, ptr align 4 %60, i64 %64, i1 false)
  %65 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %66 = getelementptr inbounds i32, ptr %65, i64 %59
  store i32 %2, ptr %66, align 4, !tbaa !90
  %67 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %68 = getelementptr inbounds i32, ptr %67, i64 %5
  %69 = load i32, ptr %68, align 4, !tbaa !90
  %70 = getelementptr inbounds i32, ptr %67, i64 %11
  %71 = load i32, ptr %70, align 4, !tbaa !90
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %56
  %74 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %75 = sext i32 %69 to i64
  br label %76

76:                                               ; preds = %73, %76
  %77 = phi i64 [ %75, %73 ], [ %78, %76 ]
  %78 = add nsw i64 %77, 1
  %79 = getelementptr inbounds i32, ptr %74, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !90
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !90
  %82 = load i32, ptr %70, align 4, !tbaa !90
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %78, %83
  br i1 %84, label %76, label %85, !llvm.loop !389

85:                                               ; preds = %76, %56
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @rgn_add_block(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #10 !prof !74 {
  tail call void @extend_regions()
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @not_in_df, i32 noundef %4) #31
  %6 = icmp eq ptr %1, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @cfun, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %30

14:                                               ; preds = %7, %2
  tail call void @rgn_make_new_region_out_of_new_block(ptr noundef %0)
  %15 = load ptr, ptr @cfun, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = icmp eq ptr %19, %1
  %21 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %22 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %23 = sext i32 %22 to i64
  %24 = getelementptr %struct.region, ptr %21, i64 %23
  %25 = getelementptr %struct.region, ptr %24, i64 -1, i32 2
  %26 = zext i1 %20 to i8
  %27 = load i8, ptr %25, align 4
  %28 = and i8 %27, -2
  %29 = or disjoint i8 %28, %26
  store i8 %29, ptr %25, align 4
  br label %122

30:                                               ; preds = %7
  %31 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !109
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !90
  %37 = load i32, ptr %3, align 8, !tbaa !109
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %36, ptr %39, align 4, !tbaa !90
  %40 = load i32, ptr %32, align 8, !tbaa !109
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %31, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !90
  %44 = add nsw i32 %43, 1
  %45 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, ptr %45, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !90
  %49 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %50 = sext i32 %48 to i64
  br label %51

51:                                               ; preds = %51, %30
  %52 = phi i64 [ %53, %51 ], [ %50, %30 ]
  %53 = add nsw i64 %52, -1
  %54 = getelementptr inbounds i32, ptr %49, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !90
  %56 = icmp eq i32 %55, %40
  br i1 %56, label %57, label %51, !llvm.loop !390

57:                                               ; preds = %51
  %58 = trunc i64 %52 to i32
  %59 = sext i32 %43 to i64
  %60 = getelementptr inbounds i32, ptr %45, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !90
  %62 = icmp slt i32 %61, %58
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3413, ptr noundef nonnull @.str.12) #31
  br label %64

64:                                               ; preds = %57, %63
  %65 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %66 = shl i64 %52, 32
  %67 = ashr exact i64 %66, 32
  %68 = getelementptr inbounds i32, ptr %65, i64 %67
  %69 = getelementptr inbounds i32, ptr %68, i64 1
  %70 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %71 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.region, ptr %70, i64 %72, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !96
  %75 = sub i32 %74, %58
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %69, ptr align 4 %68, i64 %77, i1 false)
  %78 = load i32, ptr %3, align 8, !tbaa !109
  %79 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %80 = getelementptr inbounds i32, ptr %79, i64 %67
  store i32 %78, ptr %80, align 4, !tbaa !90
  %81 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %82 = icmp slt i32 %43, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %64
  %84 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi i64 [ %46, %83 ], [ %90, %85 ]
  %87 = getelementptr inbounds i32, ptr %84, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !90
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 4, !tbaa !90
  %90 = add nsw i64 %86, 1
  %91 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %86, %92
  br i1 %93, label %85, label %94, !llvm.loop !391

94:                                               ; preds = %85, %64
  %95 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %96 = load i32, ptr %32, align 8, !tbaa !109
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %95, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !90
  %100 = load i32, ptr %3, align 8, !tbaa !109
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %95, i64 %101
  store i32 %99, ptr %102, align 4, !tbaa !90
  %103 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %104 = sext i32 %99 to i64
  %105 = getelementptr inbounds %struct.region, ptr %103, i64 %104, i32 2
  %106 = load i8, ptr %105, align 4
  %107 = or i8 %106, 2
  store i8 %107, ptr %105, align 4
  %108 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %109 = icmp slt i32 %99, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %94
  %111 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %112 = sext i32 %99 to i64
  br label %113

113:                                              ; preds = %110, %113
  %114 = phi i64 [ %112, %110 ], [ %115, %113 ]
  %115 = add nsw i64 %114, 1
  %116 = getelementptr inbounds %struct.region, ptr %111, i64 %115, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !96
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %116, align 4, !tbaa !96
  %119 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %115, %120
  br i1 %121, label %113, label %122, !llvm.loop !392

122:                                              ; preds = %113, %94, %14
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @rgn_estimate_number_of_insns(ptr nocapture noundef readonly %0) #20 !prof !74 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !86
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !90
  %12 = load ptr, ptr %4, align 8, !tbaa !267
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !86
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !90
  %18 = sub nsw i32 %11, %17
  %19 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !90
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %4, align 8, !tbaa !86
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  br label %27

27:                                               ; preds = %24, %31
  %28 = phi ptr [ %22, %24 ], [ %38, %31 ]
  %29 = phi i32 [ %18, %24 ], [ %36, %31 ]
  %30 = icmp eq ptr %28, %26
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %28, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 7
  %35 = sext i1 %34 to i32
  %36 = add nsw i32 %29, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !86
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %27, !llvm.loop !393

40:                                               ; preds = %27, %31, %21, %1
  %41 = phi i32 [ %18, %1 ], [ %18, %21 ], [ %36, %31 ], [ %29, %27 ]
  ret i32 %41
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rgn_setup_sched_infos() local_unnamed_addr #21 !prof !219 {
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %2 = getelementptr inbounds %struct.common_sched_info_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !202
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %6, label %5, !prof !223

5:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @rgn_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @rgn_const_sel_sched_deps_info, i64 104, i1 false)
  br label %7

6:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @rgn_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @rgn_const_sel_sched_deps_info, i64 104, i1 false)
  br label %7

7:                                                ; preds = %6, %5
  store ptr @rgn_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) @rgn_sched_info, ptr noundef nonnull align 8 dereferenceable(136) @rgn_const_sched_info, i64 136, i1 false)
  store ptr @rgn_sched_info, ptr @current_sched_info, align 8, !tbaa !75
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @schedule_insns() local_unnamed_addr #10 !prof !74 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr @cfun, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %267, label %14

14:                                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rgn_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store ptr @rgn_fix_recovery_cfg, ptr @rgn_common_sched_info, align 8, !tbaa !385
  store ptr @rgn_add_block, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 1), align 8, !tbaa !386
  store ptr @rgn_estimate_number_of_insns, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 2), align 8, !tbaa !126
  store i32 1, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 4), align 8, !tbaa !202
  store ptr @rgn_common_sched_info, ptr @common_sched_info, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @rgn_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @rgn_const_sel_sched_deps_info, i64 104, i1 false)
  store ptr @rgn_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) @rgn_sched_info, ptr noundef nonnull align 8 dereferenceable(136) @rgn_const_sched_info, i64 136, i1 false)
  store ptr @rgn_sched_info, ptr @current_sched_info, align 8, !tbaa !75
  tail call void @haifa_sched_init() #31
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !90
  %16 = trunc i32 %15 to i8
  tail call void @sched_rgn_init(i8 noundef zeroext %16)
  store ptr null, ptr getelementptr inbounds (%struct.bitmap_head_def, ptr @not_in_df, i64 0, i32 3), align 8, !tbaa !394
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @not_in_df, i8 0, i64 16, i1 false)
  tail call void @bitmap_clear(ptr noundef nonnull @not_in_df) #31
  %17 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %266

19:                                               ; preds = %14, %262
  %20 = phi i32 [ %263, %262 ], [ 0, %14 ]
  %21 = call zeroext i8 @dbg_cnt(i32 noundef 30) #31
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %262, label %23

23:                                               ; preds = %19
  store i32 0, ptr @rgn_n_insns, align 4, !tbaa !90
  call void @rgn_setup_region(i32 noundef %20)
  %24 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %262

26:                                               ; preds = %23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %33 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %34 = zext nneg i32 %24 to i64
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %34
  br i1 %37, label %262, label %38, !llvm.loop !221

38:                                               ; preds = %26, %35
  %39 = phi i64 [ 0, %26 ], [ %36, %35 ]
  %40 = getelementptr inbounds i32, ptr %33, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !90
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %32, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !90
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %31, i64 0, i32 2, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !222
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %35

52:                                               ; preds = %38
  call void @sched_rgn_compute_dependencies(i32 noundef %20)
  call void @sched_rgn_local_init(i32 noundef %20)
  call void @compute_priorities()
  %53 = load i32, ptr @rgn_n_insns, align 4, !tbaa !90
  call void @sched_extend_ready_list(i32 noundef %53) #31
  %54 = load i8, ptr @sched_pressure_p, align 1, !tbaa !86
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %101, label %56

56:                                               ; preds = %52
  call void @sched_init_region_reg_pressure_info() #31
  %57 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %56, %97
  %60 = phi i64 [ %76, %97 ], [ 0, %56 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %61 = load ptr, ptr @cfun, align 8, !tbaa !75
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !101
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !103
  %66 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %67 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %68 = getelementptr inbounds i32, ptr %67, i64 %60
  %69 = load i32, ptr %68, align 4, !tbaa !90
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %66, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !90
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %65, i64 0, i32 2, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !75
  %76 = add nuw nsw i64 %60, 1
  %77 = getelementptr inbounds i32, ptr %67, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !90
  %79 = sext i32 %78 to i64
  %80 = getelementptr i32, ptr %66, i64 %79
  %81 = getelementptr i32, ptr %80, i64 -1
  %82 = load i32, ptr %81, align 4, !tbaa !90
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %65, i64 0, i32 2, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %75, ptr noundef %85, ptr noundef nonnull %3, ptr noundef nonnull %4) #31
  %86 = load ptr, ptr %3, align 8, !tbaa !75
  %87 = load ptr, ptr %4, align 8, !tbaa !75
  %88 = call i32 @no_real_insns_p(ptr noundef %86, ptr noundef %87) #31
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %59
  %91 = icmp eq ptr %75, %85
  br i1 %91, label %97, label %92

92:                                               ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2962, ptr noundef nonnull @.str.12) #31
  br label %97

93:                                               ; preds = %59
  %94 = load ptr, ptr %3, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !86
  call void @sched_setup_bb_reg_pressure_info(ptr noundef %75, ptr noundef %96) #31
  br label %97

97:                                               ; preds = %93, %92, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  %98 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %76, %99
  br i1 %100, label %59, label %101, !llvm.loop !395

101:                                              ; preds = %97, %56, %52
  %102 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %200

104:                                              ; preds = %101, %195
  %105 = phi i64 [ %122, %195 ], [ 0, %101 ]
  %106 = phi i32 [ %196, %195 ], [ 0, %101 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #31
  %107 = load ptr, ptr @cfun, align 8, !tbaa !75
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !101
  %110 = getelementptr inbounds %struct.control_flow_graph, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !103
  %112 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %113 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %114 = getelementptr inbounds i32, ptr %113, i64 %105
  %115 = load i32, ptr %114, align 4, !tbaa !90
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %112, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !90
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %111, i64 0, i32 2, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !75
  %122 = add nuw nsw i64 %105, 1
  %123 = getelementptr inbounds i32, ptr %113, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !90
  %125 = sext i32 %124 to i64
  %126 = getelementptr i32, ptr %112, i64 %125
  %127 = getelementptr i32, ptr %126, i64 -1
  %128 = load i32, ptr %127, align 4, !tbaa !90
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %111, i64 0, i32 2, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %121, ptr noundef %131, ptr noundef nonnull %6, ptr noundef nonnull %7) #31
  %132 = load ptr, ptr %6, align 8, !tbaa !75
  %133 = load ptr, ptr %7, align 8, !tbaa !75
  %134 = call i32 @no_real_insns_p(ptr noundef %132, ptr noundef %133) #31
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %104
  %137 = icmp eq ptr %121, %131
  br i1 %137, label %195, label %138

138:                                              ; preds = %136
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2982, ptr noundef nonnull @.str.12) #31
  br label %195

139:                                              ; preds = %104
  %140 = load ptr, ptr %6, align 8, !tbaa !75
  %141 = getelementptr inbounds %struct.rtx_def, ptr %140, i64 0, i32 1, i32 0, i32 0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !86
  %143 = load ptr, ptr @current_sched_info, align 8, !tbaa !75
  %144 = getelementptr inbounds %struct.haifa_sched_info, ptr %143, i64 0, i32 8
  store ptr %142, ptr %144, align 8, !tbaa !396
  %145 = load ptr, ptr %7, align 8, !tbaa !75
  %146 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 0, i64 2
  %147 = load ptr, ptr %146, align 8, !tbaa !86
  %148 = getelementptr inbounds %struct.haifa_sched_info, ptr %143, i64 0, i32 9
  store ptr %147, ptr %148, align 8, !tbaa !397
  call void @remove_notes(ptr noundef %140, ptr noundef %145) #31
  call void @unlink_bb_notes(ptr noundef %121, ptr noundef %131) #31
  %149 = trunc i64 %105 to i32
  store i32 %149, ptr @target_bb, align 4, !tbaa !90
  %150 = load i32, ptr @flag_schedule_interblock, align 4, !tbaa !90
  %151 = icmp ne i32 %150, 0
  %152 = load i32, ptr @current_nr_blocks, align 4
  %153 = icmp eq i32 %152, 1
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %156, label %155

155:                                              ; preds = %139
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2995, ptr noundef nonnull @.str.12) #31
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %158 = icmp eq i32 %157, 1
  %159 = load ptr, ptr @current_sched_info, align 8, !tbaa !75
  %160 = getelementptr inbounds %struct.haifa_sched_info, ptr %159, i64 0, i32 12
  %161 = zext i1 %158 to i8
  %162 = load i8, ptr %160, align 8
  %163 = and i8 %162, -2
  %164 = or disjoint i8 %163, %161
  store i8 %164, ptr %160, align 8
  store ptr %121, ptr %5, align 8, !tbaa !75
  %165 = call zeroext i8 @dbg_cnt(i32 noundef 27) #31
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %185, label %167

167:                                              ; preds = %156
  call void @schedule_block(ptr noundef nonnull %5) #31
  %168 = load ptr, ptr @cfun, align 8, !tbaa !75
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !101
  %171 = getelementptr inbounds %struct.control_flow_graph, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !103
  %173 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %174 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %175 = getelementptr inbounds i32, ptr %174, i64 %105
  %176 = load i32, ptr %175, align 4, !tbaa !90
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %173, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !90
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %172, i64 0, i32 2, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !75
  %183 = icmp eq ptr %182, %121
  br i1 %183, label %185, label %184

184:                                              ; preds = %167
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3002, ptr noundef nonnull @.str.12) #31
  br label %185

185:                                              ; preds = %184, %167, %156
  %186 = phi ptr [ @sched_n_insns, %167 ], [ @sched_n_insns, %184 ], [ @rgn_n_insns, %156 ]
  %187 = load i32, ptr %186, align 4, !tbaa !90
  %188 = add nsw i32 %187, %106
  %189 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  call void @free(ptr noundef %192)
  %193 = load ptr, ptr @bblst_table, align 8, !tbaa !75
  call void @free(ptr noundef %193)
  %194 = load ptr, ptr @edgelst_table, align 8, !tbaa !75
  call void @free(ptr noundef %194)
  br label %195

195:                                              ; preds = %191, %185, %138, %136
  %196 = phi i32 [ %106, %136 ], [ %106, %138 ], [ %188, %191 ], [ %188, %185 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  %197 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %122, %198
  br i1 %199, label %104, label %200, !llvm.loop !398

200:                                              ; preds = %195, %101
  %201 = phi i32 [ 0, %101 ], [ %196, %195 ]
  %202 = load i32, ptr @rgn_n_insns, align 4, !tbaa !90
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3016, ptr noundef nonnull @.str.12) #31
  br label %205

205:                                              ; preds = %204, %200
  call void @sched_finish_ready_list() #31
  %206 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %210 = getelementptr inbounds %struct.common_sched_info_def, ptr %209, i64 0, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !202
  %212 = icmp eq i32 %211, 4
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  call void @sched_rgn_local_free()
  br label %214

214:                                              ; preds = %213, %208, %205
  %215 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %255

217:                                              ; preds = %214, %250
  %218 = phi i64 [ %251, %250 ], [ 0, %214 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  %219 = load ptr, ptr @cfun, align 8, !tbaa !75
  %220 = getelementptr inbounds %struct.function, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !101
  %222 = getelementptr inbounds %struct.control_flow_graph, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !103
  %224 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %225 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %226 = getelementptr inbounds i32, ptr %225, i64 %218
  %227 = load i32, ptr %226, align 4, !tbaa !90
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, ptr %224, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !90
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %223, i64 0, i32 2, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !75
  %234 = getelementptr i32, ptr %226, i64 1
  %235 = load i32, ptr %234, align 4, !tbaa !90
  %236 = sext i32 %235 to i64
  %237 = getelementptr i32, ptr %224, i64 %236
  %238 = getelementptr i32, ptr %237, i64 -1
  %239 = load i32, ptr %238, align 4, !tbaa !90
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %223, i64 0, i32 2, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %233, ptr noundef %242, ptr noundef nonnull %1, ptr noundef nonnull %2) #31
  %243 = load ptr, ptr %1, align 8, !tbaa !75
  %244 = load ptr, ptr %2, align 8, !tbaa !75
  %245 = call i32 @no_real_insns_p(ptr noundef %243, ptr noundef %244) #31
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %217
  %248 = load ptr, ptr %1, align 8, !tbaa !75
  %249 = load ptr, ptr %2, align 8, !tbaa !75
  call void @sched_free_deps(ptr noundef %248, ptr noundef %249, i8 noundef zeroext 1) #31
  br label %250

250:                                              ; preds = %247, %217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #31
  %251 = add nuw nsw i64 %218, 1
  %252 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %253 = sext i32 %252 to i64
  %254 = icmp slt i64 %251, %253
  br i1 %254, label %217, label %255, !llvm.loop !399

255:                                              ; preds = %250, %214
  %256 = load i8, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !86
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = call zeroext i8 @deps_pools_are_empty_p() #31
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3028, ptr noundef nonnull @.str.12) #31
  br label %262

262:                                              ; preds = %35, %23, %261, %258, %255, %19
  %263 = add nuw nsw i32 %20, 1
  %264 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %19, label %266, !llvm.loop !400

266:                                              ; preds = %262, %14
  call void @sched_rgn_finish()
  call void @bitmap_clear(ptr noundef nonnull @not_in_df) #31
  call void @haifa_sched_finish() #31
  br label %267

267:                                              ; preds = %0, %266
  ret void
}

declare void @haifa_sched_init() local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare void @haifa_sched_finish() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @rgn_make_new_region_out_of_new_block(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !prof !74 {
  %2 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %3 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.region, ptr %2, i64 %4, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !96
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !109
  %9 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !90
  %12 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.region, ptr %2, i64 %13
  store i32 1, ptr %14, align 4, !tbaa !94
  %15 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.region, ptr %2, i64 %16, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -3
  store i8 %19, ptr %17, align 4
  %20 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %21 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.region, ptr %20, i64 %22, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 4
  %26 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %27 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %28 = load i32, ptr %7, align 8, !tbaa !109
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  store i32 %26, ptr %30, align 4, !tbaa !90
  %31 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %32 = load i32, ptr %7, align 8, !tbaa !109
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 0, ptr %34, align 4, !tbaa !90
  %35 = load i32, ptr @nr_regions, align 4, !tbaa !90
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @nr_regions, align 4, !tbaa !90
  %37 = add nsw i32 %6, 1
  %38 = load ptr, ptr @rgn_table, align 8, !tbaa !75
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds %struct.region, ptr %38, i64 %39, i32 1
  store i32 %37, ptr %40, align 4, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_sched() #17 !prof !229 !PGOFuncName !401 {
  %1 = load i32, ptr @flag_schedule_insns, align 4, !tbaa !90
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3, !prof !230

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @dbg_cnt(i32 noundef 28) #31
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @rest_of_handle_sched() #10 !prof !74 {
  %1 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !90
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @maybe_skip_selective_scheduling() #31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @run_selective_scheduling() #31
  br label %8

7:                                                ; preds = %3, %0
  tail call void @schedule_insns()
  br label %8

8:                                                ; preds = %7, %6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_sched2() #17 !prof !229 !PGOFuncName !402 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !90
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !230
  br i1 %5, label %6, label %10, !prof !230

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 26) #31
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_sched2() #17 !prof !229 !PGOFuncName !403 {
  %1 = load i32, ptr @flag_selective_scheduling2, align 4, !tbaa !90
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3, !prof !339

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @maybe_skip_selective_scheduling() #31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !230

6:                                                ; preds = %3
  tail call void @run_selective_scheduling() #31
  br label %12

7:                                                ; preds = %3, %0
  %8 = load i32, ptr @flag_sched2_use_superblocks, align 4, !tbaa !90
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @schedule_ebbs() #31
  br label %12

11:                                               ; preds = %7
  tail call void @schedule_insns()
  br label %12

12:                                               ; preds = %10, %11, %6
  ret i32 0
}

declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @current_function_has_exception_handlers() local_unnamed_addr #3

declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sel_find_rgns() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sched_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_deps(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare ptr @sd_find_dep_between(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_dependence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @sets_likely_spilled_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #23 !prof !74 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !86
  %14 = icmp ult i32 %13, 53
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !90
  switch i32 %18, label %20 [
    i32 1, label %19
    i32 2, label %19
    i32 3, label %19
    i32 4, label %19
    i32 7, label %19
    i32 5, label %19
    i32 6, label %19
    i32 17, label %19
    i32 14, label %19
    i32 15, label %19
  ]

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  store i8 1, ptr %2, align 1, !tbaa !86
  br label %20

20:                                               ; preds = %15, %19, %11, %7, %3
  ret void
}

declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #3

declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @compute_jump_reg_dependencies(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #24 !prof !404 !PGOFuncName !405 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @init_ready_list() #10 !prof !74 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !396
  %6 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !397
  store i32 0, ptr @target_n_insns, align 4, !tbaa !90
  store i32 0, ptr @sched_target_n_insns, align 4, !tbaa !90
  store i32 0, ptr @sched_n_insns, align 4, !tbaa !90
  %8 = load i32, ptr @sched_verbose, align 4, !tbaa !90
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, ptr @target_bb, align 4, !tbaa !90
  tail call void @debug_rgn_dependencies(i32 noundef %11)
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %329

15:                                               ; preds = %12
  %16 = load i32, ptr @target_bb, align 4, !tbaa !90
  %17 = zext nneg i32 %13 to i64
  %18 = mul nuw nsw i64 %17, 40
  %19 = tail call ptr @xmalloc(i64 noundef %18) #31
  store ptr %19, ptr @candidate_table, align 8, !tbaa !75
  store i32 0, ptr @bblst_last, align 4, !tbaa !90
  %20 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %21 = load i32, ptr @target_bb, align 4, !tbaa !90
  %22 = sub nsw i32 %20, %21
  %23 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !90
  %24 = mul nsw i32 %22, %23
  store i32 %24, ptr @bblst_size, align 4, !tbaa !90
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = tail call ptr @xmalloc(i64 noundef %26) #31
  store ptr %27, ptr @bblst_table, align 8, !tbaa !75
  store i32 0, ptr @edgelst_last, align 4, !tbaa !90
  %28 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !90
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 3
  %31 = tail call ptr @xmalloc(i64 noundef %30) #31
  store ptr %31, ptr @edgelst_table, align 8, !tbaa !75
  %32 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %33 = sext i32 %16 to i64
  %34 = getelementptr inbounds %struct.candidate, ptr %32, i64 %33
  store i8 1, ptr %34, align 8, !tbaa !137
  %35 = getelementptr inbounds %struct.candidate, ptr %32, i64 %33, i32 1
  store i8 0, ptr %35, align 1, !tbaa !140
  %36 = getelementptr inbounds %struct.candidate, ptr %32, i64 %33, i32 2
  store i32 10000, ptr %36, align 4, !tbaa !406
  %37 = load ptr, ptr @cfun, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !101
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !117
  %42 = tail call ptr @sbitmap_alloc(i32 noundef %41) #31
  %43 = add nsw i32 %16, 1
  %44 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %327

46:                                               ; preds = %15
  %47 = lshr i32 %16, 6
  %48 = zext nneg i32 %47 to i64
  %49 = and i32 %16, 63
  %50 = zext nneg i32 %49 to i64
  %51 = sext i32 %43 to i64
  br label %52

52:                                               ; preds = %46, %322
  %53 = phi i64 [ %51, %46 ], [ %323, %322 ]
  %54 = phi ptr [ null, %46 ], [ %178, %322 ]
  %55 = phi i32 [ 0, %46 ], [ %177, %322 ]
  %56 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %57 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53
  %58 = load ptr, ptr @dom, align 8, !tbaa !75
  %59 = getelementptr inbounds ptr, ptr %58, i64 %53
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = getelementptr inbounds %struct.simple_bitmap_def, ptr %60, i64 0, i32 3, i64 %48
  %62 = load i64, ptr %61, align 8, !tbaa !119
  %63 = lshr i64 %62, %50
  %64 = trunc i64 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, ptr %57, align 8, !tbaa !137
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %52
  %68 = load ptr, ptr @prob, align 8, !tbaa !75
  %69 = getelementptr inbounds i32, ptr %68, i64 %33
  %70 = load i32, ptr %69, align 4, !tbaa !90
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds i32, ptr %68, i64 %53
  %74 = load i32, ptr %73, align 4, !tbaa !90
  %75 = mul nsw i32 %74, 10000
  %76 = sdiv i32 %75, %70
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i32 [ %76, %72 ], [ 0, %67 ]
  %79 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 2
  store i32 %78, ptr %79, align 4, !tbaa !406
  %80 = load i32, ptr @min_spec_prob, align 4, !tbaa !90
  %81 = icmp sge i32 %78, %80
  %82 = zext i1 %81 to i8
  store i8 %82, ptr %57, align 8, !tbaa !137
  br label %83

83:                                               ; preds = %77, %52
  %84 = load i8, ptr %57, align 8, !tbaa !137
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %176, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @pot_split, align 8, !tbaa !75
  %88 = getelementptr inbounds ptr, ptr %87, i64 %53
  %89 = load ptr, ptr %88, align 8, !tbaa !75
  %90 = getelementptr inbounds %struct.simple_bitmap_def, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !407
  %92 = tail call ptr @sbitmap_alloc(i32 noundef %91) #31
  %93 = load ptr, ptr @pot_split, align 8, !tbaa !75
  %94 = getelementptr inbounds ptr, ptr %93, i64 %53
  %95 = load ptr, ptr %94, align 8, !tbaa !75
  tail call void @sbitmap_copy(ptr noundef %92, ptr noundef %95) #31
  %96 = load ptr, ptr @pot_split, align 8, !tbaa !75
  %97 = getelementptr inbounds ptr, ptr %96, i64 %33
  %98 = load ptr, ptr %97, align 8, !tbaa !75
  tail call void @sbitmap_difference(ptr noundef %92, ptr noundef %92, ptr noundef %98) #31
  store i32 0, ptr @edgelst_last, align 4, !tbaa !90
  %99 = load ptr, ptr @edgelst_table, align 8, !tbaa !75
  %100 = getelementptr inbounds %struct.simple_bitmap_def, ptr %92, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !408
  %102 = getelementptr inbounds %struct.simple_bitmap_def, ptr %92, i64 0, i32 3
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %86
  %105 = load i64, ptr %102, align 8, !tbaa !119
  br label %106

106:                                              ; preds = %104, %86
  %107 = phi i64 [ %105, %104 ], [ 0, %86 ]
  %108 = load i32, ptr @edgelst_last, align 4, !tbaa !90
  %109 = load ptr, ptr @rgn_edges, align 8
  %110 = sext i32 %108 to i64
  br label %111

111:                                              ; preds = %157, %106
  %112 = phi i64 [ %161, %157 ], [ %110, %106 ]
  %113 = phi i32 [ %164, %157 ], [ 0, %106 ]
  %114 = phi i32 [ %166, %157 ], [ 0, %106 ]
  %115 = phi i32 [ %154, %157 ], [ 0, %106 ]
  %116 = phi i64 [ %165, %157 ], [ %107, %106 ]
  %117 = phi i32 [ %156, %157 ], [ 0, %106 ]
  %118 = icmp eq i64 %116, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = add i32 %115, 1
  %121 = tail call i32 @llvm.umax.i32(i32 %101, i32 %120)
  %122 = add i32 %115, 1
  %123 = icmp ult i32 %122, %101
  br i1 %123, label %136, label %151

124:                                              ; preds = %136
  %125 = shl i32 %137, 6
  br label %126

126:                                              ; preds = %124, %111
  %127 = phi i32 [ %114, %111 ], [ %125, %124 ]
  %128 = phi i32 [ %115, %111 ], [ %137, %124 ]
  %129 = phi i64 [ %116, %111 ], [ %140, %124 ]
  %130 = phi i1 [ %118, %111 ], [ %141, %124 ]
  %131 = and i64 %129, 1
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %142, label %151

133:                                              ; preds = %136
  %134 = add i32 %137, 1
  %135 = icmp ult i32 %134, %101
  br i1 %135, label %136, label %149, !llvm.loop !409

136:                                              ; preds = %119, %133
  %137 = phi i32 [ %134, %133 ], [ %122, %119 ]
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, ptr %102, i64 %138
  %140 = load i64, ptr %139, align 8, !tbaa !119
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %133, label %124, !llvm.loop !409

142:                                              ; preds = %126, %142
  %143 = phi i64 [ %146, %142 ], [ %129, %126 ]
  %144 = phi i32 [ %145, %142 ], [ %127, %126 ]
  %145 = add i32 %144, 1
  %146 = lshr exact i64 %143, 1
  %147 = and i64 %143, 2
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %142, label %151, !llvm.loop !410

149:                                              ; preds = %133
  %150 = shl i32 %137, 6
  br label %151

151:                                              ; preds = %142, %149, %119, %126
  %152 = phi i1 [ %130, %126 ], [ %118, %119 ], [ %141, %149 ], [ %130, %142 ]
  %153 = phi i32 [ %127, %126 ], [ %114, %119 ], [ %150, %149 ], [ %145, %142 ]
  %154 = phi i32 [ %128, %126 ], [ %121, %119 ], [ %121, %149 ], [ %128, %142 ]
  %155 = phi i64 [ %129, %126 ], [ %116, %119 ], [ %140, %149 ], [ %146, %142 ]
  %156 = phi i32 [ %127, %126 ], [ %117, %119 ], [ %117, %149 ], [ %145, %142 ]
  br i1 %152, label %167, label %157

157:                                              ; preds = %151
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds ptr, ptr %109, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !75
  %161 = add i64 %112, 1
  %162 = trunc i64 %161 to i32
  store i32 %162, ptr @edgelst_last, align 4, !tbaa !90
  %163 = getelementptr inbounds ptr, ptr %99, i64 %112
  store ptr %160, ptr %163, align 8, !tbaa !75
  %164 = add nuw nsw i32 %113, 1
  %165 = lshr i64 %155, 1
  %166 = add i32 %153, 1
  br label %111, !llvm.loop !411

167:                                              ; preds = %151
  %168 = load ptr, ptr %92, align 8, !tbaa !122
  tail call void @free(ptr noundef %168)
  tail call void @free(ptr noundef %92)
  %169 = icmp ne i32 %113, 0
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 1
  store i8 %170, ptr %171, align 1, !tbaa !140
  %172 = load i32, ptr @flag_schedule_speculative, align 4
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %169, i1 %173, i1 false
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i8 0, ptr %57, align 8, !tbaa !137
  br label %176

176:                                              ; preds = %175, %167, %83
  %177 = phi i32 [ %55, %83 ], [ %113, %175 ], [ %113, %167 ]
  %178 = phi ptr [ %54, %83 ], [ %99, %175 ], [ %99, %167 ]
  %179 = load i8, ptr %57, align 8, !tbaa !137
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %317, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr @bblst_table, align 8, !tbaa !75
  %183 = load i32, ptr @bblst_last, align 4, !tbaa !90
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184
  %186 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 3
  store ptr %185, ptr %186, align 8, !tbaa !142
  %187 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 3, i32 1
  store i32 %177, ptr %187, align 8, !tbaa !141
  %188 = icmp sgt i32 %177, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %181
  %190 = load i32, ptr @bblst_last, align 4, !tbaa !90
  %191 = sext i32 %190 to i64
  %192 = zext nneg i32 %177 to i64
  br label %193

193:                                              ; preds = %189, %193
  %194 = phi i64 [ %191, %189 ], [ %201, %193 ]
  %195 = phi i64 [ 0, %189 ], [ %202, %193 ]
  %196 = getelementptr inbounds ptr, ptr %178, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !75
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !107
  %200 = getelementptr inbounds ptr, ptr %182, i64 %194
  store ptr %199, ptr %200, align 8, !tbaa !75
  %201 = add nsw i64 %194, 1
  %202 = add nuw nsw i64 %195, 1
  %203 = icmp eq i64 %202, %192
  br i1 %203, label %204, label %193, !llvm.loop !412

204:                                              ; preds = %193
  %205 = trunc i64 %201 to i32
  store i32 %205, ptr @bblst_last, align 4, !tbaa !90
  br label %206

206:                                              ; preds = %204, %181
  %207 = load i32, ptr @bblst_last, align 4, !tbaa !90
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds ptr, ptr %182, i64 %208
  %210 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 4
  store ptr %209, ptr %210, align 8, !tbaa !145
  tail call void @sbitmap_zero(ptr noundef %42) #31
  %211 = icmp sgt i32 %177, 0
  br i1 %211, label %212, label %310

212:                                              ; preds = %206
  %213 = zext nneg i32 %177 to i64
  %214 = zext nneg i32 %177 to i64
  br label %215

215:                                              ; preds = %212, %307
  %216 = phi i64 [ 0, %212 ], [ %308, %307 ]
  %217 = phi i32 [ 0, %212 ], [ %224, %307 ]
  %218 = getelementptr inbounds ptr, ptr %178, i64 %216
  %219 = load ptr, ptr %218, align 8, !tbaa !75
  %220 = load ptr, ptr %219, align 8, !tbaa !120
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %220, i64 0, i32 1
  br label %222

222:                                              ; preds = %305, %215
  %223 = phi i32 [ 0, %215 ], [ %306, %305 ]
  %224 = phi i32 [ %217, %215 ], [ %296, %305 ]
  %225 = load ptr, ptr %221, align 8, !tbaa !75
  %226 = icmp eq ptr %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %222
  %228 = load i32, ptr %225, align 8, !tbaa !105
  br label %229

229:                                              ; preds = %227, %222
  %230 = phi i32 [ %228, %227 ], [ 0, %222 ]
  %231 = icmp eq i32 %230, %223
  br i1 %231, label %236, label %232

232:                                              ; preds = %229
  %233 = zext i32 %223 to i64
  %234 = getelementptr inbounds %struct.VEC_edge_base, ptr %225, i64 0, i32 2, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !75
  br label %236

236:                                              ; preds = %232, %229
  %237 = phi ptr [ %235, %232 ], [ null, %229 ]
  br i1 %231, label %307, label %238

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !107
  %241 = getelementptr inbounds %struct.basic_block_def, ptr %240, i64 0, i32 9
  %242 = load i32, ptr %241, align 8, !tbaa !109
  %243 = lshr i32 %242, 6
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !119
  %247 = and i32 %242, 63
  %248 = zext nneg i32 %247 to i64
  %249 = shl nuw i64 1, %248
  %250 = and i64 %249, %246
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %255, label %295

252:                                              ; preds = %255
  %253 = add nuw nsw i64 %256, 1
  %254 = icmp eq i64 %253, %214
  br i1 %254, label %260, label %255, !llvm.loop !413

255:                                              ; preds = %238, %252
  %256 = phi i64 [ %253, %252 ], [ 0, %238 ]
  %257 = getelementptr inbounds ptr, ptr %178, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !75
  %259 = icmp eq ptr %237, %258
  br i1 %259, label %295, label %252

260:                                              ; preds = %252
  %261 = load ptr, ptr @bblst_table, align 8, !tbaa !75
  %262 = load i32, ptr @bblst_last, align 4, !tbaa !90
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr @bblst_last, align 4, !tbaa !90
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds ptr, ptr %261, i64 %264
  store ptr %240, ptr %265, align 8, !tbaa !75
  %266 = load ptr, ptr %239, align 8, !tbaa !107
  %267 = getelementptr inbounds %struct.basic_block_def, ptr %266, i64 0, i32 9
  %268 = load i32, ptr %267, align 8, !tbaa !109
  %269 = load ptr, ptr %42, align 8, !tbaa !122
  %270 = icmp eq ptr %269, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %260
  %272 = lshr i32 %268, 6
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %273
  %275 = load i64, ptr %274, align 8, !tbaa !119
  %276 = and i32 %268, 63
  %277 = zext nneg i32 %276 to i64
  %278 = shl nuw i64 1, %277
  %279 = and i64 %275, %278
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %271
  %282 = getelementptr inbounds i8, ptr %269, i64 %273
  %283 = load i8, ptr %282, align 1, !tbaa !86
  %284 = add i8 %283, 1
  store i8 %284, ptr %282, align 1, !tbaa !86
  br label %285

285:                                              ; preds = %281, %271, %260
  %286 = and i32 %268, 63
  %287 = zext nneg i32 %286 to i64
  %288 = shl nuw i64 1, %287
  %289 = lshr i32 %268, 6
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %290
  %292 = load i64, ptr %291, align 8, !tbaa !119
  %293 = or i64 %292, %288
  store i64 %293, ptr %291, align 8, !tbaa !119
  %294 = add nsw i32 %224, 1
  br label %295

295:                                              ; preds = %255, %285, %238
  %296 = phi i32 [ %224, %238 ], [ %294, %285 ], [ %224, %255 ]
  %297 = load ptr, ptr %221, align 8, !tbaa !75
  %298 = icmp eq ptr %297, null
  br i1 %298, label %301, label %299

299:                                              ; preds = %295
  %300 = load i32, ptr %297, align 8, !tbaa !105
  br label %301

301:                                              ; preds = %299, %295
  %302 = phi i32 [ %300, %299 ], [ 0, %295 ]
  %303 = icmp ult i32 %223, %302
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #31
  br label %305

305:                                              ; preds = %304, %301
  %306 = add i32 %223, 1
  br label %222, !llvm.loop !414

307:                                              ; preds = %236
  %308 = add nuw nsw i64 %216, 1
  %309 = icmp eq i64 %308, %213
  br i1 %309, label %310, label %215, !llvm.loop !415

310:                                              ; preds = %307, %206
  %311 = phi i32 [ 0, %206 ], [ %224, %307 ]
  %312 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 4, i32 1
  store i32 %311, ptr %312, align 8, !tbaa !144
  %313 = load i32, ptr @bblst_last, align 4, !tbaa !90
  %314 = load i32, ptr @bblst_size, align 4, !tbaa !90
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1572, ptr noundef nonnull @.str.12) #31
  br label %322

317:                                              ; preds = %176
  %318 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 4, i32 1
  store i32 0, ptr %318, align 8, !tbaa !144
  %319 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 3, i32 1
  store i32 0, ptr %319, align 8, !tbaa !141
  %320 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 1
  store i8 0, ptr %320, align 1, !tbaa !140
  %321 = getelementptr inbounds %struct.candidate, ptr %56, i64 %53, i32 2
  store i32 0, ptr %321, align 4, !tbaa !406
  br label %322

322:                                              ; preds = %317, %316, %310
  %323 = add nsw i64 %53, 1
  %324 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %325 = sext i32 %324 to i64
  %326 = icmp slt i64 %323, %325
  br i1 %326, label %52, label %327, !llvm.loop !416

327:                                              ; preds = %322, %15
  %328 = load ptr, ptr %42, align 8, !tbaa !122
  tail call void @free(ptr noundef %328)
  tail call void @free(ptr noundef %42)
  br label %329

329:                                              ; preds = %327, %12
  %330 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %331 = load ptr, ptr %330, align 8, !tbaa !86
  %332 = icmp eq ptr %331, %7
  br i1 %332, label %351, label %333

333:                                              ; preds = %329, %347
  %334 = phi ptr [ %349, %347 ], [ %331, %329 ]
  %335 = tail call i32 @try_ready(ptr noundef %334) #31
  %336 = load i32, ptr @target_n_insns, align 4, !tbaa !90
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr @target_n_insns, align 4, !tbaa !90
  %338 = load ptr, ptr @h_i_d, align 8
  %339 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !86
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %338, i64 0, i32 2, i64 %341, i32 8
  %343 = load i32, ptr %342, align 8, !tbaa !417
  %344 = and i32 %343, 258048
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %333
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2126, ptr noundef nonnull @.str.12) #31
  br label %347

347:                                              ; preds = %333, %346
  %348 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1, i32 0, i32 0, i64 2
  %349 = load ptr, ptr %348, align 8, !tbaa !86
  %350 = icmp eq ptr %349, %7
  br i1 %350, label %351, label %333, !llvm.loop !418

351:                                              ; preds = %347, %329
  %352 = load i32, ptr @target_bb, align 4, !tbaa !90
  %353 = add nsw i32 %352, 1
  %354 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %419

356:                                              ; preds = %351
  %357 = sext i32 %352 to i64
  %358 = add nsw i64 %357, 1
  br label %359

359:                                              ; preds = %356, %413
  %360 = phi i64 [ %357, %356 ], [ %418, %413 ]
  %361 = phi i64 [ %358, %356 ], [ %414, %413 ]
  %362 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %363 = getelementptr inbounds %struct.candidate, ptr %362, i64 %361
  %364 = load i8, ptr %363, align 8, !tbaa !137
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %413, label %366

366:                                              ; preds = %359
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  %367 = load ptr, ptr @cfun, align 8, !tbaa !75
  %368 = getelementptr inbounds %struct.function, ptr %367, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !101
  %370 = getelementptr inbounds %struct.control_flow_graph, ptr %369, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !103
  %372 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %373 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %374 = getelementptr inbounds i32, ptr %373, i64 %361
  %375 = load i32, ptr %374, align 4, !tbaa !90
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, ptr %372, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !90
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %371, i64 0, i32 2, i64 %379
  %381 = load ptr, ptr %380, align 8, !tbaa !75
  %382 = getelementptr i32, ptr %373, i64 %360
  %383 = getelementptr i32, ptr %382, i64 2
  %384 = load i32, ptr %383, align 4, !tbaa !90
  %385 = sext i32 %384 to i64
  %386 = getelementptr i32, ptr %372, i64 %385
  %387 = getelementptr i32, ptr %386, i64 -1
  %388 = load i32, ptr %387, align 4, !tbaa !90
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %371, i64 0, i32 2, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !75
  call void @get_ebb_head_tail(ptr noundef %381, ptr noundef %391, ptr noundef nonnull %2, ptr noundef nonnull %1) #31
  %392 = load ptr, ptr %1, align 8, !tbaa !75
  %393 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1, i32 0, i32 0, i64 2
  %394 = load ptr, ptr %393, align 8, !tbaa !86
  %395 = load ptr, ptr %2, align 8, !tbaa !86
  %396 = icmp eq ptr %395, %394
  br i1 %396, label %412, label %397

397:                                              ; preds = %366, %408
  %398 = phi ptr [ %410, %408 ], [ %395, %366 ]
  %399 = load i32, ptr %398, align 8
  %400 = and i32 %399, 65535
  %401 = add nsw i32 %400, -11
  %402 = icmp ult i32 %401, -4
  %403 = and i32 %399, 67174399
  %404 = icmp eq i32 %403, 7
  %405 = or i1 %404, %402
  br i1 %405, label %408, label %406

406:                                              ; preds = %397
  %407 = call i32 @try_ready(ptr noundef nonnull %398) #31
  br label %408

408:                                              ; preds = %397, %406
  %409 = getelementptr inbounds %struct.rtx_def, ptr %398, i64 0, i32 1, i32 0, i32 0, i64 2
  %410 = load ptr, ptr %409, align 8, !tbaa !86
  %411 = icmp eq ptr %410, %394
  br i1 %411, label %412, label %397, !llvm.loop !419

412:                                              ; preds = %408, %366
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #31
  br label %413

413:                                              ; preds = %359, %412
  %414 = add nsw i64 %361, 1
  %415 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %416 = sext i32 %415 to i64
  %417 = icmp slt i64 %414, %416
  %418 = add nsw i64 %360, 1
  br i1 %417, label %359, label %419, !llvm.loop !420

419:                                              ; preds = %413, %351
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @can_schedule_ready_p(ptr nocapture noundef readonly %0) #10 !prof !74 {
  %2 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !90
  %10 = load i32, ptr @target_bb, align 4, !tbaa !90
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds %struct.candidate, ptr %13, i64 %14, i32 1
  %16 = load i8, ptr %15, align 1, !tbaa !140
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @check_live(ptr noundef %0, i32 noundef %9)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %12, %1
  br label %22

22:                                               ; preds = %18, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @schedule_more_p() #25 !prof !74 {
  %1 = load i32, ptr @sched_target_n_insns, align 4, !tbaa !90
  %2 = load i32, ptr @target_n_insns, align 4, !tbaa !90
  %3 = icmp slt i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define internal i32 @new_ready(ptr noundef %0, i32 noundef %1) #10 !prof !74 {
  %3 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !109
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !90
  %12 = load i32, ptr @target_bb, align 4, !tbaa !90
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %115, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.candidate, ptr %15, i64 %16
  %18 = load i8, ptr %17, align 8, !tbaa !137
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %91, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @h_d_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = load i32, ptr %4, align 8, !tbaa !86
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_int_base, ptr %22, i64 0, i32 2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !90
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %21, i64 0, i32 2, i64 %27, i32 7
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.candidate, ptr %15, i64 %16, i32 1
  %34 = load i8, ptr %33, align 1, !tbaa !140
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %115, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !86
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  %43 = tail call i32 @recog(ptr noundef %42, ptr noundef %0, ptr noundef null) #31
  store i32 %43, ptr %37, align 8, !tbaa !86
  br label %44

44:                                               ; preds = %36, %40
  %45 = load i32, ptr %37, align 8, !tbaa !86
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load ptr, ptr @curr_state, align 8, !tbaa !75
  %49 = tail call i32 @min_insn_conflict_delay(ptr noundef %48, ptr noundef %0, ptr noundef %0) #31
  %50 = load ptr, ptr @compiler_params, align 8, !tbaa !75
  %51 = getelementptr inbounds %struct.param_info, ptr %50, i64 83, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !115
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %91, label %54

54:                                               ; preds = %47, %44
  %55 = load ptr, ptr @common_sched_info, align 8, !tbaa !75
  %56 = getelementptr inbounds %struct.common_sched_info_def, ptr %55, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !202
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef %0) #31
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %91

62:                                               ; preds = %54
  %63 = load ptr, ptr @h_i_d, align 8
  %64 = load i32, ptr %4, align 8, !tbaa !86
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %63, i64 0, i32 2, i64 %65, i32 11
  %67 = load ptr, ptr %66, align 8, !tbaa !421
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %62, %59
  %70 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %71 = load ptr, ptr %5, align 8, !tbaa !86
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !109
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %70, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !90
  %77 = tail call fastcc i32 @check_live(ptr noundef %0, i32 noundef %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %69
  %80 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %81 = load ptr, ptr %5, align 8, !tbaa !86
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !109
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %80, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !90
  %87 = load i32, ptr @target_bb, align 4, !tbaa !90
  %88 = tail call fastcc i32 @is_exception_free(ptr noundef %0, i32 noundef %86, i32 noundef %87)
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  br i1 %89, label %91, label %115

91:                                               ; preds = %69, %79, %62, %59, %47, %20, %14
  %92 = phi i32 [ 0, %20 ], [ 0, %47 ], [ 0, %59 ], [ %90, %79 ], [ 0, %62 ], [ 0, %14 ], [ 0, %69 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @sched_deps_info, align 8, !tbaa !75
  %96 = getelementptr inbounds %struct.sched_deps_info_def, ptr %95, i64 0, i32 12
  %97 = load i8, ptr %96, align 8
  %98 = and i8 %97, 4
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr @spec_info, align 8, !tbaa !75
  %102 = load i32, ptr %101, align 8, !tbaa !422
  %103 = and i32 %102, 258048
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100
  %106 = tail call i32 @set_dep_weak(i32 noundef %1, i32 noundef 258048, i32 noundef 62) #31
  %107 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %0, i32 noundef %106) #31
  %108 = icmp eq i8 %107, 0
  %109 = and i32 %1, -150994944
  %110 = or disjoint i32 %109, 134217728
  %111 = select i1 %108, i32 %110, i32 %106
  br label %115

112:                                              ; preds = %100, %94, %91
  %113 = and i32 %1, -150994944
  %114 = or disjoint i32 %113, 134217728
  br label %115

115:                                              ; preds = %32, %79, %112, %105, %2
  %116 = phi i32 [ %1, %2 ], [ %111, %105 ], [ %114, %112 ], [ %1, %79 ], [ %1, %32 ]
  ret i32 %116
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rgn_rank(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #26 !prof !74 {
  %3 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !109
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !109
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !90
  %18 = icmp eq i32 %10, %17
  br i1 %18, label %46, label %19

19:                                               ; preds = %2
  %20 = load i32, ptr @target_bb, align 4, !tbaa !90
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %10, %20
  br i1 %23, label %43, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %26 = sext i32 %10 to i64
  %27 = getelementptr inbounds %struct.candidate, ptr %25, i64 %26, i32 1
  %28 = load i8, ptr %27, align 1, !tbaa !140
  %29 = sext i8 %28 to i32
  %30 = sext i32 %17 to i64
  %31 = getelementptr inbounds %struct.candidate, ptr %25, i64 %30, i32 1
  %32 = load i8, ptr %31, align 1, !tbaa !140
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %29, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.candidate, ptr %25, i64 %30, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !406
  %39 = getelementptr inbounds %struct.candidate, ptr %25, i64 %26, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !406
  %41 = sub nsw i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %22, %36, %24, %19
  %44 = phi i32 [ 1, %19 ], [ %34, %24 ], [ %41, %36 ], [ -1, %22 ]
  %45 = phi i1 [ false, %19 ], [ false, %24 ], [ %42, %36 ], [ false, %22 ]
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %2
  br label %47

47:                                               ; preds = %43, %46
  %48 = phi i32 [ %44, %43 ], [ 0, %46 ]
  ret i32 %48
}

; Function Attrs: cold nofree nounwind uwtable
define internal noundef nonnull ptr @rgn_print_insn(ptr nocapture noundef readonly %0, i32 noundef %1) #9 !prof !74 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !109
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !90
  %14 = load i32, ptr %6, align 8, !tbaa !86
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @rgn_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %13, i32 noundef %14)
  br label %38

16:                                               ; preds = %2
  %17 = load i32, ptr @current_nr_blocks, align 4, !tbaa !90
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %20, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !90
  %28 = load i32, ptr @target_bb, align 4, !tbaa !90
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !86
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @rgn_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %32, i32 noundef %27)
  br label %38

34:                                               ; preds = %19, %16
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !86
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @rgn_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %36)
  br label %38

38:                                               ; preds = %30, %34, %4
  ret ptr @rgn_print_insn.tmp
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @rgn_insn_finishes_block_p(ptr nocapture noundef readonly %0) #26 !prof !74 {
  %2 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !90
  %10 = load i32, ptr @target_bb, align 4, !tbaa !90
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, ptr @sched_target_n_insns, align 4, !tbaa !90
  %14 = add nsw i32 %13, 1
  %15 = load i32, ptr @target_n_insns, align 4, !tbaa !90
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  br label %18

18:                                               ; preds = %12, %17
  %19 = phi i8 [ 0, %17 ], [ 1, %12 ]
  ret i8 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @rgn_add_remove_insn(ptr nocapture noundef readonly %0, i32 noundef %1) #27 !prof !74 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr @rgn_n_insns, align 4
  %5 = select i1 %3, i32 1, i32 -1
  %6 = add nsw i32 %4, %5
  store i32 %6, ptr @rgn_n_insns, align 4, !tbaa !90
  %7 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !90
  %15 = load i32, ptr @target_bb, align 4, !tbaa !90
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, ptr @target_n_insns, align 4, !tbaa !90
  %19 = select i1 %3, i32 1, i32 -1
  %20 = add nsw i32 %18, %19
  store i32 %20, ptr @target_n_insns, align 4, !tbaa !90
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @begin_schedule_ready(ptr noundef %0, ptr nocapture readnone %1) #10 !prof !74 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !109
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !90
  %14 = load i32, ptr @target_bb, align 4, !tbaa !90
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %98, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds %struct.candidate, ptr %17, i64 %18, i32 1
  %20 = load i8, ptr %19, align 1, !tbaa !140
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %98, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @check_live(ptr noundef %0, i32 noundef %13)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2177, ptr noundef nonnull @.str.12) #31
  br label %26

26:                                               ; preds = %22, %25
  %27 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %28 = load ptr, ptr %7, align 8, !tbaa !86
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !109
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !90
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %59 [
    i16 23, label %38
    i16 25, label %38
    i16 15, label %39
  ]

38:                                               ; preds = %26, %26
  tail call fastcc void @update_live_1(i32 noundef %33, ptr noundef nonnull %35)
  br label %59

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  %42 = load i32, ptr %41, align 8, !tbaa !424
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = zext nneg i32 %42 to i64
  br label %46

46:                                               ; preds = %44, %57
  %47 = phi i64 [ %45, %44 ], [ %48, %57 ]
  %48 = add nsw i64 %47, -1
  %49 = load ptr, ptr %34, align 8, !tbaa !86
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = getelementptr inbounds %struct.rtvec_def, ptr %51, i64 0, i32 1, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !75
  %54 = load i32, ptr %53, align 8
  %55 = trunc i32 %54 to i16
  switch i16 %55, label %57 [
    i16 23, label %56
    i16 25, label %56
  ]

56:                                               ; preds = %46, %46
  tail call fastcc void @update_live_1(i32 noundef %33, ptr noundef nonnull %53)
  br label %57

57:                                               ; preds = %56, %46
  %58 = icmp sgt i64 %47, 1
  br i1 %58, label %46, label %59, !llvm.loop !426

59:                                               ; preds = %57, %39, %26, %38
  %60 = load ptr, ptr @h_i_d, align 8
  %61 = load i32, ptr %6, align 8, !tbaa !86
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %60, i64 0, i32 2, i64 %62, i32 6
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 3
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store i32 4, ptr %3, align 8, !tbaa.struct !205
  %68 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %0, ptr %68, align 8, !tbaa.struct !206
  %69 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr @sd_iterator_start.null_link, ptr %69, align 8, !tbaa.struct !207
  %70 = getelementptr inbounds i8, ptr %3, i64 24
  store i8 0, ptr %70, align 8, !tbaa.struct !208
  %71 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %67, %88
  %74 = load ptr, ptr %4, align 8, !tbaa !75
  %75 = getelementptr inbounds %struct._dep, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !427
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load ptr, ptr @h_i_d, align 8
  %80 = getelementptr inbounds %struct._dep, ptr %74, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !209
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !86
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %79, i64 0, i32 2, i64 %84, i32 6
  %86 = load i8, ptr %85, align 2
  %87 = or i8 %86, 1
  store i8 %87, ptr %85, align 2
  br label %88

88:                                               ; preds = %78, %73
  %89 = load ptr, ptr %69, align 8, !tbaa !211
  %90 = load ptr, ptr %89, align 8, !tbaa !75
  %91 = getelementptr inbounds %struct._dep_link, ptr %90, i64 0, i32 1
  store ptr %91, ptr %69, align 8, !tbaa !211
  %92 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %73, !llvm.loop !428

94:                                               ; preds = %88, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %95

95:                                               ; preds = %59, %94
  %96 = load i32, ptr @nr_spec, align 4, !tbaa !90
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr @nr_spec, align 4, !tbaa !90
  br label %98

98:                                               ; preds = %2, %16, %95
  %99 = phi ptr [ @nr_inter, %95 ], [ @nr_inter, %16 ], [ @sched_target_n_insns, %2 ]
  %100 = load i32, ptr %99, align 4, !tbaa !90
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !90
  %102 = load i32, ptr @sched_n_insns, align 4, !tbaa !90
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr @sched_n_insns, align 4, !tbaa !90
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal ptr @advance_target_bb(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #10 !prof !74 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !109
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = load i32, ptr @target_bb, align 4, !tbaa !90
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !241
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !109
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %5, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %23, label %22

22:                                               ; preds = %13, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3487, ptr noundef nonnull @.str.12) #31
  br label %23

23:                                               ; preds = %13, %22
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !241
  br label %26

26:                                               ; preds = %2, %23
  %27 = phi ptr [ %25, %23 ], [ null, %2 ]
  ret ptr %27
}

declare i32 @try_ready(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @check_live(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !74 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %31 [
    i16 23, label %7
    i16 25, label %7
    i16 15, label %9
  ]

7:                                                ; preds = %2, %2
  %8 = tail call fastcc i32 @check_live_1(i32 noundef %1, ptr noundef nonnull %4)
  br label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = load i32, ptr %11, align 8, !tbaa !424
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %29
  %17 = phi i64 [ %15, %14 ], [ %18, %29 ]
  %18 = add nsw i64 %17, -1
  %19 = load ptr, ptr %3, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %29 [
    i16 23, label %26
    i16 25, label %26
  ]

26:                                               ; preds = %16, %16
  %27 = tail call fastcc i32 @check_live_1(i32 noundef %1, ptr noundef nonnull %23)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %16, %26
  %30 = icmp sgt i64 %17, 1
  br i1 %30, label %16, label %31, !llvm.loop !429

31:                                               ; preds = %29, %26, %9, %2, %7
  %32 = phi i32 [ %8, %7 ], [ 1, %2 ], [ 1, %9 ], [ 0, %26 ], [ 1, %29 ]
  ret i32 %32
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @check_live_1(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !74 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp eq ptr %4, null
  br i1 %5, label %155, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %12, %10 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %155 [
    i16 39, label %10
    i16 120, label %10
    i16 40, label %10
    i16 15, label %13
    i16 37, label %34
  ]

10:                                               ; preds = %6, %6, %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  br label %6, !llvm.loop !430

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = load i32, ptr %15, align 8, !tbaa !424
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %155

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  br label %20

20:                                               ; preds = %18, %32
  %21 = phi i64 [ %19, %18 ], [ %22, %32 ]
  %22 = add nsw i64 %21, -1
  %23 = load ptr, ptr %14, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %23, i64 0, i32 1, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = tail call fastcc i32 @check_live_1(i32 noundef %0, ptr noundef nonnull %27)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %155

32:                                               ; preds = %20, %29
  %33 = icmp sgt i64 %21, 1
  br i1 %33, label %20, label %155, !llvm.loop !431

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !86
  %37 = icmp slt i32 %36, 53
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = sext i32 %0 to i64
  %40 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.candidate, ptr %40, i64 %39, i32 3, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !141
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %120, label %154

44:                                               ; preds = %34
  %45 = sext i32 %36 to i64
  %46 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !86
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %155

49:                                               ; preds = %44
  %50 = lshr i32 %8, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %45, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !86
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %154, label %56

56:                                               ; preds = %49
  %57 = zext i8 %54 to i32
  %58 = sext i32 %0 to i64
  br label %61

59:                                               ; preds = %71, %61
  %60 = icmp slt i32 %63, 2
  br i1 %60, label %154, label %61, !llvm.loop !432

61:                                               ; preds = %56, %59
  %62 = phi i1 [ %55, %56 ], [ %60, %59 ]
  %63 = phi i32 [ %57, %56 ], [ %64, %59 ]
  %64 = add nsw i32 %63, -1
  %65 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.candidate, ptr %65, i64 %58, i32 3, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !141
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %59

69:                                               ; preds = %61
  %70 = add nsw i32 %64, %36
  br label %78

71:                                               ; preds = %108
  %72 = add nuw nsw i64 %79, 1
  %73 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %74 = getelementptr inbounds %struct.candidate, ptr %73, i64 %58, i32 3, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !141
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %59, !llvm.loop !433

78:                                               ; preds = %69, %71
  %79 = phi i64 [ 0, %69 ], [ %72, %71 ]
  %80 = phi ptr [ %65, %69 ], [ %73, %71 ]
  %81 = getelementptr inbounds %struct.candidate, ptr %80, i64 %58, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !142
  %83 = getelementptr inbounds ptr, ptr %82, i64 %79
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !109
  %87 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @not_in_df, i32 noundef %86) #31
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %108, label %89

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %91 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %92 = load i32, ptr %90, align 8, !tbaa !109
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %91, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !90
  %96 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %97 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %98 = getelementptr inbounds i32, ptr %97, i64 %58
  %99 = load i32, ptr %98, align 4, !tbaa !90
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %96, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !90
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %91, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !90
  %106 = icmp eq i32 %95, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1705, ptr noundef nonnull @.str.12) #31
  br label %112

108:                                              ; preds = %78
  %109 = tail call ptr @df_get_live_in(ptr noundef %84) #31
  %110 = tail call i32 @bitmap_bit_p(ptr noundef %109, i32 noundef %70) #31
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %71, label %112

112:                                              ; preds = %108, %107, %89
  br i1 %62, label %154, label %155

113:                                              ; preds = %150
  %114 = add nuw nsw i64 %121, 1
  %115 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %116 = getelementptr inbounds %struct.candidate, ptr %115, i64 %39, i32 3, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !141
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %114, %118
  br i1 %119, label %120, label %154, !llvm.loop !434

120:                                              ; preds = %38, %113
  %121 = phi i64 [ %114, %113 ], [ 0, %38 ]
  %122 = phi ptr [ %115, %113 ], [ %40, %38 ]
  %123 = getelementptr inbounds %struct.candidate, ptr %122, i64 %39, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !142
  %125 = getelementptr inbounds ptr, ptr %124, i64 %121
  %126 = load ptr, ptr %125, align 8, !tbaa !75
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 9
  %128 = load i32, ptr %127, align 8, !tbaa !109
  %129 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @not_in_df, i32 noundef %128) #31
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %150, label %131

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 9
  %133 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %134 = load i32, ptr %132, align 8, !tbaa !109
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %133, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !90
  %138 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %139 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %140 = getelementptr inbounds i32, ptr %139, i64 %39
  %141 = load i32, ptr %140, align 4, !tbaa !90
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, ptr %138, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !90
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %133, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !90
  %148 = icmp eq i32 %137, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %131
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1721, ptr noundef nonnull @.str.12) #31
  br label %155

150:                                              ; preds = %120
  %151 = tail call ptr @df_get_live_in(ptr noundef %126) #31
  %152 = tail call i32 @bitmap_bit_p(ptr noundef %151, i32 noundef %36) #31
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %113, label %155

154:                                              ; preds = %113, %59, %38, %49, %112
  br label %155

155:                                              ; preds = %6, %150, %32, %29, %13, %149, %131, %44, %2, %112, %154
  %156 = phi i32 [ 1, %154 ], [ 0, %112 ], [ 1, %2 ], [ 0, %44 ], [ 0, %131 ], [ 0, %149 ], [ 0, %13 ], [ 1, %29 ], [ 0, %32 ], [ 0, %150 ], [ 1, %6 ]
  ret i32 %156
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #3

declare i32 @min_insn_conflict_delay(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @is_exception_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !74 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._sd_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i32 @haifa_classify_insn(ptr noundef %0) #31
  switch i32 %8, label %10 [
    i32 0, label %111
    i32 5, label %9
  ]

9:                                                ; preds = %3
  br label %111

10:                                               ; preds = %3
  %11 = load i32, ptr @flag_schedule_speculative_load, align 4, !tbaa !90
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %111, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @h_i_d, align 8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %14, i64 0, i32 2, i64 %17, i32 6
  %19 = load i8, ptr %18, align 2
  %20 = or i8 %19, 2
  store i8 %20, ptr %18, align 2
  switch i32 %8, label %109 [
    i32 1, label %111
    i32 4, label %21
    i32 2, label %22
    i32 3, label %92
  ]

21:                                               ; preds = %13
  br label %111

22:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %23 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.candidate, ptr %23, i64 %24, i32 3
  %26 = getelementptr inbounds %struct.candidate, ptr %23, i64 %24, i32 3, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !141
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %91

29:                                               ; preds = %22
  store i32 3, ptr %4, align 8, !tbaa.struct !205
  %30 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %0, ptr %30, align 8, !tbaa.struct !206
  %31 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr @sd_iterator_start.null_link, ptr %31, align 8, !tbaa.struct !207
  %32 = getelementptr inbounds i8, ptr %4, i64 24
  store i8 0, ptr %32, align 8, !tbaa.struct !208
  %33 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %91, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, ptr %6, i64 8
  %37 = getelementptr inbounds i8, ptr %6, i64 16
  %38 = getelementptr inbounds i8, ptr %6, i64 24
  br label %39

39:                                               ; preds = %35, %84
  %40 = load ptr, ptr %5, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct._dep, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !427
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !435
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #31
  store i32 4, ptr %6, align 8, !tbaa.struct !205
  store ptr %45, ptr %36, align 8, !tbaa.struct !206
  store ptr @sd_iterator_start.null_link, ptr %37, align 8, !tbaa.struct !207
  store i8 0, ptr %38, align 8, !tbaa.struct !208
  %46 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %44, %75
  %49 = load ptr, ptr %7, align 8, !tbaa !75
  %50 = getelementptr inbounds %struct._dep, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !209
  %52 = getelementptr inbounds %struct._dep, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !427
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = call i32 @haifa_classify_insn(ptr noundef %51) #31
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %60 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !109
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %59, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !90
  %67 = icmp eq i32 %66, %2
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = load ptr, ptr %25, align 8, !tbaa !142
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = icmp eq ptr %70, %61
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %48
  br label %73

73:                                               ; preds = %72, %68, %58, %55
  %74 = phi i32 [ 0, %72 ], [ 7, %55 ], [ 1, %58 ], [ 1, %68 ]
  switch i32 %74, label %81 [
    i32 0, label %75
    i32 7, label %75
  ]

75:                                               ; preds = %73, %73
  %76 = load ptr, ptr %37, align 8, !tbaa !211
  %77 = load ptr, ptr %76, align 8, !tbaa !75
  %78 = getelementptr inbounds %struct._dep_link, ptr %77, i64 0, i32 1
  store ptr %78, ptr %37, align 8, !tbaa !211
  %79 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %48, !llvm.loop !436

81:                                               ; preds = %75, %73, %44
  %82 = phi i32 [ 0, %44 ], [ 0, %75 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81, %39
  %85 = load ptr, ptr %31, align 8, !tbaa !211
  %86 = load ptr, ptr %85, align 8, !tbaa !75
  %87 = getelementptr inbounds %struct._dep_link, ptr %86, i64 0, i32 1
  store ptr %87, ptr %31, align 8, !tbaa !211
  %88 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %39, !llvm.loop !437

90:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  br label %111

91:                                               ; preds = %84, %29, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  br label %92

92:                                               ; preds = %91, %13
  %93 = load i32, ptr @flag_schedule_speculative_load_dangerous, align 4, !tbaa !90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @h_i_d, align 8
  %97 = load i32, ptr %15, align 8, !tbaa !86
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %96, i64 0, i32 2, i64 %98, i32 6
  %100 = load i8, ptr %99, align 2
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = call zeroext i8 @sd_lists_empty_p(ptr noundef %0, i32 noundef 3) #31
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = call fastcc i32 @is_conditionally_protected(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %13, %106
  %110 = load i32, ptr @flag_schedule_speculative_load_dangerous, align 4, !tbaa !90
  br label %111

111:                                              ; preds = %95, %103, %106, %92, %90, %13, %10, %3, %109, %21, %9
  %112 = phi i32 [ %110, %109 ], [ 0, %21 ], [ 0, %9 ], [ 1, %3 ], [ 0, %10 ], [ %8, %13 ], [ 1, %90 ], [ 0, %92 ], [ 0, %106 ], [ 0, %103 ], [ 0, %95 ]
  ret i32 %112
}

declare i32 @set_dep_weak(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @haifa_classify_insn(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @sd_lists_empty_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @is_conditionally_protected(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !74 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  store i32 3, ptr %4, align 8, !tbaa.struct !205
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %0, ptr %6, align 8, !tbaa.struct !206
  %7 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr @sd_iterator_start.null_link, ptr %7, align 8, !tbaa.struct !207
  %8 = getelementptr inbounds i8, ptr %4, i64 24
  store i8 0, ptr %8, align 8, !tbaa.struct !208
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %222, label %11

11:                                               ; preds = %3, %216
  %12 = phi i32 [ %214, %216 ], [ undef, %3 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !75
  %14 = load ptr, ptr %13, align 8, !tbaa !435
  %15 = getelementptr inbounds %struct._dep, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !427
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %213

18:                                               ; preds = %11
  %19 = load i32, ptr %14, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %213, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !109
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %23, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !90
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %213, label %32

32:                                               ; preds = %22
  %33 = sext i32 %1 to i64
  %34 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %35 = getelementptr inbounds i32, ptr %34, i64 %28
  %36 = load i32, ptr %35, align 4, !tbaa !90
  %37 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %38 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %39 = getelementptr inbounds i32, ptr %38, i64 %33
  %40 = load i32, ptr %39, align 4, !tbaa !90
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !90
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %34, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !90
  %47 = icmp eq i32 %36, %46
  br i1 %47, label %48, label %213

48:                                               ; preds = %32
  %49 = icmp ne i32 %2, 0
  %50 = icmp ne i32 %30, %2
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %208

52:                                               ; preds = %48
  %53 = sext i32 %2 to i64
  %54 = load ptr, ptr @ancestor_edges, align 8, !tbaa !75
  %55 = sext i32 %30 to i64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !75
  %58 = load ptr, ptr @cfun, align 8, !tbaa !75
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !103
  %63 = getelementptr inbounds i32, ptr %38, i64 %53
  %64 = load i32, ptr %63, align 4, !tbaa !90
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %37, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !90
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %62, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = load ptr, ptr %70, align 8, !tbaa !257
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %52
  %74 = load i32, ptr %71, align 8, !tbaa !105
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %77, label %76

76:                                               ; preds = %52, %73
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #31
  br label %77

77:                                               ; preds = %73, %76
  %78 = load ptr, ptr %70, align 8, !tbaa !257
  %79 = getelementptr inbounds %struct.VEC_edge_base, ptr %78, i64 0, i32 2, i64 0
  %80 = load ptr, ptr %79, align 8, !tbaa !75
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !291
  %83 = ptrtoint ptr %82 to i64
  %84 = lshr i64 %83, 6
  %85 = and i64 %84, 67108863
  %86 = getelementptr inbounds %struct.simple_bitmap_def, ptr %57, i64 0, i32 3, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !119
  %88 = load ptr, ptr @cfun, align 8, !tbaa !75
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !101
  %91 = getelementptr inbounds %struct.control_flow_graph, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !103
  %93 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %94 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %95 = getelementptr inbounds i32, ptr %94, i64 %53
  %96 = load i32, ptr %95, align 4, !tbaa !90
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %93, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !90
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %92, i64 0, i32 2, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !75
  %103 = load ptr, ptr %102, align 8, !tbaa !257
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %77
  %106 = load i32, ptr %103, align 8, !tbaa !105
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %109, label %108

108:                                              ; preds = %77, %105
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #31
  br label %109

109:                                              ; preds = %105, %108
  %110 = load ptr, ptr %102, align 8, !tbaa !257
  %111 = getelementptr inbounds %struct.VEC_edge_base, ptr %110, i64 0, i32 2, i64 0
  %112 = load ptr, ptr %111, align 8, !tbaa !75
  %113 = getelementptr inbounds %struct.edge_def, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !291
  %115 = ptrtoint ptr %114 to i64
  %116 = and i64 %115, 63
  %117 = shl nuw i64 1, %116
  %118 = and i64 %117, %87
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %208

120:                                              ; preds = %109
  %121 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %122 = load ptr, ptr %24, align 8, !tbaa !86
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 9
  %124 = load i32, ptr %123, align 8, !tbaa !109
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %121, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !90
  %128 = icmp eq i32 %127, %2
  %129 = icmp eq i32 %127, 0
  %130 = or i1 %128, %129
  br i1 %130, label %208, label %131

131:                                              ; preds = %120
  %132 = load ptr, ptr @ancestor_edges, align 8, !tbaa !75
  %133 = getelementptr inbounds ptr, ptr %132, i64 %53
  %134 = load ptr, ptr %133, align 8, !tbaa !75
  %135 = load ptr, ptr @cfun, align 8, !tbaa !75
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !101
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !103
  %140 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %141 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %142 = sext i32 %127 to i64
  %143 = getelementptr inbounds i32, ptr %141, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !90
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %140, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !90
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %139, i64 0, i32 2, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !75
  %151 = load ptr, ptr %150, align 8, !tbaa !257
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %131
  %154 = load i32, ptr %151, align 8, !tbaa !105
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %157, label %156

156:                                              ; preds = %131, %153
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #31
  br label %157

157:                                              ; preds = %153, %156
  %158 = load ptr, ptr %150, align 8, !tbaa !257
  %159 = getelementptr inbounds %struct.VEC_edge_base, ptr %158, i64 0, i32 2, i64 0
  %160 = load ptr, ptr %159, align 8, !tbaa !75
  %161 = getelementptr inbounds %struct.edge_def, ptr %160, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !291
  %163 = ptrtoint ptr %162 to i64
  %164 = lshr i64 %163, 6
  %165 = and i64 %164, 67108863
  %166 = getelementptr inbounds %struct.simple_bitmap_def, ptr %134, i64 0, i32 3, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !119
  %168 = load ptr, ptr @cfun, align 8, !tbaa !75
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !101
  %171 = getelementptr inbounds %struct.control_flow_graph, ptr %170, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !103
  %173 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %174 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %175 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %176 = load ptr, ptr %24, align 8, !tbaa !86
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %176, i64 0, i32 9
  %178 = load i32, ptr %177, align 8, !tbaa !109
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, ptr %175, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !90
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, ptr %174, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !90
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %173, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !90
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %172, i64 0, i32 2, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !75
  %191 = load ptr, ptr %190, align 8, !tbaa !257
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %157
  %194 = load i32, ptr %191, align 8, !tbaa !105
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %197, label %196

196:                                              ; preds = %157, %193
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #31
  br label %197

197:                                              ; preds = %193, %196
  %198 = load ptr, ptr %190, align 8, !tbaa !257
  %199 = getelementptr inbounds %struct.VEC_edge_base, ptr %198, i64 0, i32 2, i64 0
  %200 = load ptr, ptr %199, align 8, !tbaa !75
  %201 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !291
  %203 = ptrtoint ptr %202 to i64
  %204 = and i64 %203, 63
  %205 = shl nuw i64 1, %204
  %206 = and i64 %205, %167
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %197, %120, %109, %48
  %209 = call fastcc i32 @find_conditional_protection(ptr noundef nonnull %14, i32 noundef %1)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = call fastcc i32 @is_conditionally_protected(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %2)
  br label %213

213:                                              ; preds = %197, %208, %22, %32, %11, %18, %211
  %214 = phi i32 [ %212, %211 ], [ %12, %18 ], [ %12, %11 ], [ %12, %32 ], [ %12, %22 ], [ 1, %208 ], [ %12, %197 ]
  %215 = phi i1 [ false, %211 ], [ true, %18 ], [ true, %11 ], [ true, %32 ], [ true, %22 ], [ false, %208 ], [ true, %197 ]
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load ptr, ptr %7, align 8, !tbaa !211
  %218 = load ptr, ptr %217, align 8, !tbaa !75
  %219 = getelementptr inbounds %struct._dep_link, ptr %218, i64 0, i32 1
  store ptr %219, ptr %7, align 8, !tbaa !211
  %220 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %11, !llvm.loop !438

222:                                              ; preds = %213, %216, %3
  %223 = phi i32 [ 0, %3 ], [ %214, %213 ], [ 0, %216 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  ret i32 %223
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @find_conditional_protection(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !74 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store i32 4, ptr %3, align 8, !tbaa.struct !205
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %0, ptr %5, align 8, !tbaa.struct !206
  %6 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr @sd_iterator_start.null_link, ptr %6, align 8, !tbaa.struct !207
  %7 = getelementptr inbounds i8, ptr %3, i64 24
  store i8 0, ptr %7, align 8, !tbaa.struct !208
  %8 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %143, label %10

10:                                               ; preds = %2
  %11 = sext i32 %1 to i64
  br label %12

12:                                               ; preds = %10, %137
  %13 = load ptr, ptr %4, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct._dep, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = load ptr, ptr @containing_rgn, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !109
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %16, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !90
  %24 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %25 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %26 = getelementptr inbounds i32, ptr %25, i64 %11
  %27 = load i32, ptr %26, align 4, !tbaa !90
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %24, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !90
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %16, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !90
  %34 = icmp eq i32 %23, %33
  br i1 %34, label %35, label %137

35:                                               ; preds = %12
  %36 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %37 = getelementptr inbounds i32, ptr %36, i64 %21
  %38 = load i32, ptr %37, align 4, !tbaa !90
  %39 = icmp eq i32 %38, %1
  %40 = icmp eq i32 %38, 0
  %41 = or i1 %39, %40
  br i1 %41, label %117, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @ancestor_edges, align 8, !tbaa !75
  %44 = getelementptr inbounds ptr, ptr %43, i64 %11
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = load ptr, ptr @cfun, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !103
  %51 = sext i32 %38 to i64
  %52 = getelementptr inbounds i32, ptr %25, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !90
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %24, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !90
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %50, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !75
  %60 = load ptr, ptr %59, align 8, !tbaa !257
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %42
  %63 = load i32, ptr %60, align 8, !tbaa !105
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %66, label %65

65:                                               ; preds = %42, %62
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #31
  br label %66

66:                                               ; preds = %62, %65
  %67 = load ptr, ptr %59, align 8, !tbaa !257
  %68 = getelementptr inbounds %struct.VEC_edge_base, ptr %67, i64 0, i32 2, i64 0
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !291
  %72 = ptrtoint ptr %71 to i64
  %73 = lshr i64 %72, 6
  %74 = and i64 %73, 67108863
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !119
  %77 = load ptr, ptr @cfun, align 8, !tbaa !75
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !101
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !75
  %83 = load ptr, ptr @ebb_head, align 8, !tbaa !75
  %84 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %85 = load ptr, ptr %17, align 8, !tbaa !86
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !109
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %84, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !90
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, ptr %83, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !90
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, ptr %82, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !90
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %81, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !75
  %100 = load ptr, ptr %99, align 8, !tbaa !257
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %66
  %103 = load i32, ptr %100, align 8, !tbaa !105
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %106, label %105

105:                                              ; preds = %66, %102
  call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #31
  br label %106

106:                                              ; preds = %102, %105
  %107 = load ptr, ptr %99, align 8, !tbaa !257
  %108 = getelementptr inbounds %struct.VEC_edge_base, ptr %107, i64 0, i32 2, i64 0
  %109 = load ptr, ptr %108, align 8, !tbaa !75
  %110 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !291
  %112 = ptrtoint ptr %111 to i64
  %113 = and i64 %112, 63
  %114 = shl nuw i64 1, %113
  %115 = and i64 %114, %76
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %137, label %117

117:                                              ; preds = %106, %35
  %118 = load ptr, ptr @block_to_bb, align 8, !tbaa !75
  %119 = load ptr, ptr %17, align 8, !tbaa !86
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 9
  %121 = load i32, ptr %120, align 8, !tbaa !109
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %118, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !90
  %125 = icmp eq i32 %124, %1
  br i1 %125, label %137, label %126

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct._dep, ptr %13, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !427
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, ptr %15, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = call fastcc i32 @find_conditional_protection(ptr noundef nonnull %15, i32 noundef %1)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %106, %134, %126, %117, %12
  %138 = load ptr, ptr %6, align 8, !tbaa !211
  %139 = load ptr, ptr %138, align 8, !tbaa !75
  %140 = getelementptr inbounds %struct._dep_link, ptr %139, i64 0, i32 1
  store ptr %140, ptr %6, align 8, !tbaa !211
  %141 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %12, !llvm.loop !439

143:                                              ; preds = %130, %134, %137, %2
  %144 = phi i32 [ 0, %2 ], [ 1, %130 ], [ 1, %134 ], [ 0, %137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  ret i32 %144
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_live_1(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !74 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp eq ptr %4, null
  br i1 %5, label %101, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %12, %10 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %101 [
    i16 39, label %10
    i16 120, label %10
    i16 40, label %10
    i16 15, label %13
    i16 37, label %32
  ]

10:                                               ; preds = %6, %6, %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  br label %6, !llvm.loop !440

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = load i32, ptr %15, align 8, !tbaa !424
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %101

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  br label %20

20:                                               ; preds = %18, %30
  %21 = phi i64 [ %19, %18 ], [ %22, %30 ]
  %22 = add nsw i64 %21, -1
  %23 = load ptr, ptr %14, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %23, i64 0, i32 1, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  tail call fastcc void @update_live_1(i32 noundef %0, ptr noundef nonnull %27)
  br label %30

30:                                               ; preds = %20, %29
  %31 = icmp sgt i64 %21, 1
  br i1 %31, label %20, label %101, !llvm.loop !441

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !86
  %35 = icmp sgt i32 %34, 52
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !86
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %101

41:                                               ; preds = %36, %32
  %42 = icmp slt i32 %34, 53
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  %44 = sext i32 %0 to i64
  %45 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %46 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 4, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !144
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %86, label %101

49:                                               ; preds = %41
  %50 = sext i32 %34 to i64
  %51 = lshr i32 %8, 16
  %52 = and i32 %51, 255
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %50, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !86
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %49
  %58 = zext i8 %55 to i32
  %59 = sext i32 %0 to i64
  br label %62

60:                                               ; preds = %71, %62
  %61 = icmp sgt i32 %63, 1
  br i1 %61, label %62, label %101, !llvm.loop !442

62:                                               ; preds = %57, %60
  %63 = phi i32 [ %58, %57 ], [ %64, %60 ]
  %64 = add nsw i32 %63, -1
  %65 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.candidate, ptr %65, i64 %59, i32 4, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !144
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %60

69:                                               ; preds = %62
  %70 = add nsw i32 %64, %34
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ 0, %69 ], [ %80, %71 ]
  %73 = phi ptr [ %65, %69 ], [ %81, %71 ]
  %74 = getelementptr inbounds %struct.candidate, ptr %73, i64 %59, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !145
  %76 = getelementptr inbounds ptr, ptr %75, i64 %72
  %77 = load ptr, ptr %76, align 8, !tbaa !75
  %78 = tail call ptr @df_get_live_in(ptr noundef %77) #31
  %79 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %78, i32 noundef %70) #31
  %80 = add nuw nsw i64 %72, 1
  %81 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %82 = getelementptr inbounds %struct.candidate, ptr %81, i64 %59, i32 4, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !144
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %71, label %60, !llvm.loop !443

86:                                               ; preds = %43, %86
  %87 = phi i64 [ %95, %86 ], [ 0, %43 ]
  %88 = phi ptr [ %96, %86 ], [ %45, %43 ]
  %89 = getelementptr inbounds %struct.candidate, ptr %88, i64 %44, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !145
  %91 = getelementptr inbounds ptr, ptr %90, i64 %87
  %92 = load ptr, ptr %91, align 8, !tbaa !75
  %93 = tail call ptr @df_get_live_in(ptr noundef %92) #31
  %94 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %93, i32 noundef %34) #31
  %95 = add nuw nsw i64 %87, 1
  %96 = load ptr, ptr @candidate_table, align 8, !tbaa !75
  %97 = getelementptr inbounds %struct.candidate, ptr %96, i64 %44, i32 4, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !144
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %95, %99
  br i1 %100, label %86, label %101, !llvm.loop !444

101:                                              ; preds = %6, %86, %60, %30, %43, %49, %13, %36, %2
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sched_extend_ready_list(i32 noundef) local_unnamed_addr #3

declare void @sched_init_region_reg_pressure_info() local_unnamed_addr #3

declare void @sched_setup_bb_reg_pressure_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_notes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unlink_bb_notes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @schedule_block(ptr noundef) local_unnamed_addr #3

declare void @sched_finish_ready_list() local_unnamed_addr #3

declare zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

declare zeroext i8 @maybe_skip_selective_scheduling() local_unnamed_addr #3

declare void @run_selective_scheduling() local_unnamed_addr #3

declare void @schedule_ebbs() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #28

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

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
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nounwind }
attributes #32 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!73}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!35 = !{ptr @deps_join, ptr @alloc_INSN_LIST, i64 4444082}
!36 = !{ptr @deps_join, ptr @bitmap_ior_into, i64 97853}
!37 = !{ptr @deps_join, ptr @alloc_EXPR_LIST, i64 56470}
!38 = !{ptr @free_rgn_deps, ptr @get_ebb_head_tail, i64 187028}
!39 = !{ptr @free_rgn_deps, ptr @sched_free_deps, i64 187028}
!40 = !{ptr @compute_priorities, ptr @get_ebb_head_tail, i64 187028}
!41 = !{ptr @compute_priorities, ptr @no_real_insns_p, i64 187028}
!42 = !{ptr @compute_priorities, ptr @set_priorities, i64 187028}
!43 = !{ptr @sched_rgn_init, ptr @xrealloc, i64 152}
!44 = !{ptr @sched_rgn_init, ptr @current_function_has_exception_handlers, i64 38}
!45 = !{ptr @sched_rgn_init, ptr @computed_jump_p, i64 1266}
!46 = !{ptr @sched_rgn_init, ptr @find_reg_note, i64 4046}
!47 = !{ptr @sched_rgn_init, ptr @next_nonnote_insn, i64 23}
!48 = !{ptr @sched_rgn_init, ptr @xmalloc, i64 30}
!49 = !{ptr @sched_rgn_init, ptr @xcalloc, i64 15}
!50 = !{ptr @sched_rgn_init, ptr @sbitmap_alloc, i64 60}
!51 = !{ptr @sched_rgn_init, ptr @sbitmap_ones, i64 15}
!52 = !{ptr @sched_rgn_init, ptr @sbitmap_zero, i64 45}
!53 = !{ptr @sched_rgn_init, ptr @free, i64 165}
!54 = !{ptr @sched_rgn_finish, ptr @reposition_prologue_and_epilogue_notes, i64 38}
!55 = !{ptr @sched_rgn_finish, ptr @free, i64 190}
!56 = !{ptr @rgn_setup_region, ptr @xrealloc, i64 138104}
!57 = !{ptr @sched_rgn_compute_dependencies, ptr @init_deps_global, i64 138099}
!58 = !{ptr @sched_rgn_compute_dependencies, ptr @xmalloc, i64 138099}
!59 = !{ptr @sched_rgn_compute_dependencies, ptr @init_deps, i64 187028}
!60 = !{ptr @sched_rgn_compute_dependencies, ptr @sbitmap_alloc, i64 138099}
!61 = !{ptr @sched_rgn_compute_dependencies, ptr @sbitmap_zero, i64 138099}
!62 = !{ptr @sched_rgn_compute_dependencies, ptr @get_ebb_head_tail, i64 187028}
!63 = !{ptr @sched_rgn_compute_dependencies, ptr @sched_analyze, i64 187028}
!64 = !{ptr @sched_rgn_compute_dependencies, ptr @deps_join, i64 48929}
!65 = !{ptr @sched_rgn_compute_dependencies, ptr @free_deps, i64 187028}
!66 = !{ptr @sched_rgn_compute_dependencies, ptr @free, i64 414297}
!67 = !{ptr @sched_rgn_compute_dependencies, ptr @free_INSN_LIST_list, i64 374056}
!68 = !{ptr @sched_rgn_compute_dependencies, ptr @free_EXPR_LIST_list, i64 374056}
!69 = !{ptr @sched_rgn_compute_dependencies, ptr @finish_deps_global, i64 138099}
!70 = !{ptr @gate_handle_sched2, ptr @dbg_cnt, i64 38}
!71 = !{ptr @rest_of_handle_sched2, ptr @maybe_skip_selective_scheduling, i64 38}
!72 = !{ptr @rest_of_handle_sched2, ptr @run_selective_scheduling, i64 38}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!80, !76, i64 8}
!80 = !{!"_IO_FILE", !81, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !76, i64 104, !81, i64 112, !81, i64 116, !82, i64 120, !83, i64 128, !77, i64 130, !77, i64 131, !76, i64 136, !82, i64 144, !76, i64 152, !76, i64 160, !76, i64 168, !76, i64 176, !82, i64 184, !81, i64 192, !77, i64 196}
!81 = !{!"int", !77, i64 0}
!82 = !{!"long", !77, i64 0}
!83 = !{!"short", !77, i64 0}
!84 = !{!80, !76, i64 16}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!77, !77, i64 0}
!87 = !{!80, !76, i64 40}
!88 = !{!80, !76, i64 48}
!89 = !{!80, !81, i64 0}
!90 = !{!81, !81, i64 0}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = !{!95, !81, i64 0}
!95 = !{!"", !81, i64 0, !81, i64 4, !81, i64 8, !81, i64 8}
!96 = !{!95, !81, i64 4}
!97 = distinct !{!97, !92, !93}
!98 = distinct !{!98, !92, !93}
!99 = distinct !{!99, !92, !93}
!100 = distinct !{!100, !92, !93}
!101 = !{!102, !76, i64 8}
!102 = !{!"function", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !81, i64 104, !81, i64 108, !81, i64 112, !81, i64 116, !81, i64 120, !81, i64 124, !76, i64 128, !81, i64 136, !81, i64 137, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 138, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139, !81, i64 139}
!103 = !{!104, !76, i64 16}
!104 = !{!"control_flow_graph", !76, i64 0, !76, i64 8, !76, i64 16, !81, i64 24, !81, i64 28, !81, i64 32, !76, i64 40, !81, i64 48, !77, i64 52, !77, i64 60, !81, i64 68, !81, i64 72}
!105 = !{!106, !81, i64 0}
!106 = !{!"VEC_edge_base", !81, i64 0, !81, i64 4, !77, i64 8}
!107 = !{!108, !76, i64 8}
!108 = !{!"edge_def", !76, i64 0, !76, i64 8, !77, i64 16, !76, i64 24, !76, i64 32, !81, i64 40, !81, i64 44, !81, i64 48, !81, i64 52, !82, i64 56}
!109 = !{!110, !81, i64 80}
!110 = !{!"basic_block_def", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !77, i64 32, !76, i64 48, !76, i64 56, !77, i64 64, !82, i64 72, !81, i64 80, !81, i64 84, !81, i64 88, !81, i64 92, !81, i64 96}
!111 = distinct !{!111, !92, !93}
!112 = distinct !{!112, !92, !93}
!113 = distinct !{!113, !92, !93}
!114 = !{!104, !81, i64 24}
!115 = !{!116, !81, i64 8}
!116 = !{!"param_info", !76, i64 0, !81, i64 8, !77, i64 12, !81, i64 16, !81, i64 20, !76, i64 24}
!117 = !{!104, !81, i64 32}
!118 = distinct !{!118, !92, !93}
!119 = !{!82, !82, i64 0}
!120 = !{!108, !76, i64 0}
!121 = distinct !{!121, !92, !93}
!122 = !{!123, !76, i64 0}
!123 = !{!"simple_bitmap_def", !76, i64 0, !81, i64 8, !81, i64 12, !77, i64 16}
!124 = distinct !{!124, !92, !93}
!125 = distinct !{!125, !92, !93}
!126 = !{!127, !76, i64 16}
!127 = !{!"common_sched_info_def", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !81, i64 32}
!128 = !{!104, !76, i64 8}
!129 = distinct !{!129, !92, !93}
!130 = distinct !{!130, !92, !93}
!131 = distinct !{!131, !92, !93}
!132 = distinct !{!132, !92, !93}
!133 = distinct !{!133, !92, !93}
!134 = distinct !{!134, !92, !93}
!135 = distinct !{!135, !92, !93}
!136 = distinct !{!136, !92, !93}
!137 = !{!138, !77, i64 0}
!138 = !{!"", !77, i64 0, !77, i64 1, !81, i64 4, !139, i64 8, !139, i64 24}
!139 = !{!"", !76, i64 0, !81, i64 8}
!140 = !{!138, !77, i64 1}
!141 = !{!138, !81, i64 16}
!142 = !{!138, !76, i64 8}
!143 = distinct !{!143, !92, !93}
!144 = !{!138, !81, i64 32}
!145 = !{!138, !76, i64 24}
!146 = distinct !{!146, !92, !93}
!147 = distinct !{!147, !92, !93}
!148 = !{!"function_entry_count", i64 787720}
!149 = !{!"function_entry_count", i64 138137}
!150 = !{!151, !81, i64 100}
!151 = !{!"haifa_sched_info", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !81, i64 96, !81, i64 100, !76, i64 104, !76, i64 112, !76, i64 120, !81, i64 128}
!152 = !{!"function_entry_count", i64 97853}
!153 = !{!154, !76, i64 0}
!154 = !{!"bitmap_head_def", !76, i64 0, !76, i64 8, !81, i64 16, !76, i64 24}
!155 = !{!"branch_weights", i32 0, i32 97853}
!156 = !{!157, !81, i64 16}
!157 = !{!"bitmap_element_def", !76, i64 0, !76, i64 8, !81, i64 16, !77, i64 24}
!158 = !{!"branch_weights", i32 97853, i32 2653466}
!159 = !{!"branch_weights", i32 868878, i32 1784588}
!160 = !{!"branch_weights", i32 0, i32 868878}
!161 = distinct !{!161, !92, !93}
!162 = !{!"branch_weights", i32 1, i32 97852}
!163 = !{!"branch_weights", i32 97853, i32 0}
!164 = !{!"branch_weights", i32 97852, i32 1}
!165 = distinct !{!165, !92, !93}
!166 = !{!157, !76, i64 0}
!167 = distinct !{!167, !93}
!168 = !{!169, !76, i64 104}
!169 = !{!"deps", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !81, i64 32, !81, i64 36, !81, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !81, i64 80, !76, i64 88, !81, i64 96, !76, i64 104, !154, i64 112, !154, i64 144, !81, i64 176, !81, i64 180}
!170 = !{!171, !76, i64 0}
!171 = !{!"deps_reg", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !81, i64 32, !81, i64 36}
!172 = !{!"branch_weights", i32 2060398, i32 593068}
!173 = !{!"branch_weights", i32 593068, i32 0}
!174 = distinct !{!174, !92, !93}
!175 = !{!171, !76, i64 8}
!176 = !{!"branch_weights", i32 2448724, i32 204742}
!177 = !{!"branch_weights", i32 204742, i32 0}
!178 = !{!171, !76, i64 16}
!179 = !{!"branch_weights", i32 1, i32 0}
!180 = !{!171, !76, i64 24}
!181 = !{!"branch_weights", i32 1, i32 2653465}
!182 = !{!"branch_weights", i32 2653465, i32 668364}
!183 = !{!171, !81, i64 32}
!184 = !{!171, !81, i64 36}
!185 = distinct !{!185, !92, !93}
!186 = !{!169, !76, i64 0}
!187 = !{!"branch_weights", i32 139236, i32 56470}
!188 = !{!"branch_weights", i32 56470, i32 0}
!189 = distinct !{!189, !92, !93}
!190 = !{!169, !76, i64 16}
!191 = !{!169, !76, i64 48}
!192 = !{!"branch_weights", i32 97852, i32 69493}
!193 = !{!169, !81, i64 32}
!194 = !{!169, !81, i64 36}
!195 = !{!169, !81, i64 40}
!196 = !{!169, !76, i64 56}
!197 = !{!"branch_weights", i32 47539, i32 50314}
!198 = !{!"branch_weights", i32 50314, i32 0}
!199 = !{!169, !76, i64 64}
!200 = !{!169, !76, i64 72}
!201 = distinct !{!201, !92, !93}
!202 = !{!127, !81, i64 32}
!203 = !{!204, !81, i64 4}
!204 = !{!"_haifa_insn_data", !81, i64 0, !81, i64 4, !81, i64 8, !81, i64 12, !81, i64 16, !83, i64 20, !81, i64 22, !81, i64 22, !77, i64 23, !81, i64 24, !81, i64 28, !81, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !81, i64 88}
!205 = !{i64 0, i64 4, !90, i64 8, i64 8, !75, i64 16, i64 8, !75, i64 24, i64 1, !86}
!206 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 1, !86}
!207 = !{i64 0, i64 8, !75, i64 8, i64 1, !86}
!208 = !{i64 0, i64 1, !86}
!209 = !{!210, !76, i64 8}
!210 = !{!"_dep", !76, i64 0, !76, i64 8, !81, i64 16, !81, i64 20}
!211 = !{!212, !76, i64 16}
!212 = !{!"_sd_iterator", !81, i64 0, !76, i64 8, !76, i64 16, !77, i64 24}
!213 = distinct !{!213, !92, !93}
!214 = distinct !{!214, !92, !93}
!215 = !{!216, !76, i64 0}
!216 = !{!"_dep_link", !76, i64 0, !76, i64 8, !76, i64 16}
!217 = !{!212, !81, i64 0}
!218 = !{!212, !76, i64 8}
!219 = !{!"function_entry_count", i64 138099}
!220 = !{!"branch_weights", i32 0, i32 138099}
!221 = distinct !{!221, !92, !93}
!222 = !{!110, !81, i64 96}
!223 = !{!"branch_weights", i32 138099, i32 0}
!224 = !{!"branch_weights", i32 138098, i32 1}
!225 = !{!"branch_weights", i32 187028, i32 0}
!226 = !{!"branch_weights", i32 48930, i32 138098}
!227 = distinct !{!227, !92, !93}
!228 = distinct !{!228, !92, !93}
!229 = !{!"function_entry_count", i64 38}
!230 = !{!"branch_weights", i32 38, i32 0}
!231 = !{!232, !76, i64 344}
!232 = !{!"rtl_data", !233, i64 0, !234, i64 40, !235, i64 96, !236, i64 112, !238, i64 208, !239, i64 248, !81, i64 312, !76, i64 320, !76, i64 328, !76, i64 336, !76, i64 344, !76, i64 352, !76, i64 360, !76, i64 368, !76, i64 376, !76, i64 384, !76, i64 392, !82, i64 400, !76, i64 408, !76, i64 416, !76, i64 424, !81, i64 432, !81, i64 436, !81, i64 440, !81, i64 444, !81, i64 448, !81, i64 452, !76, i64 456, !77, i64 464, !77, i64 465, !77, i64 466, !77, i64 467, !77, i64 468, !77, i64 469, !77, i64 470, !77, i64 471, !77, i64 472, !77, i64 473, !77, i64 474, !77, i64 475, !77, i64 476, !77, i64 477, !77, i64 478, !77, i64 479, !77, i64 480, !77, i64 481, !77, i64 482, !77, i64 483, !77, i64 484, !77, i64 485}
!233 = !{!"expr_status", !81, i64 0, !81, i64 4, !81, i64 8, !76, i64 16, !76, i64 24, !76, i64 32}
!234 = !{!"emit_status", !81, i64 0, !81, i64 4, !76, i64 8, !76, i64 16, !76, i64 24, !81, i64 32, !81, i64 36, !81, i64 40, !81, i64 44, !76, i64 48}
!235 = !{!"varasm_status", !76, i64 0, !81, i64 8}
!236 = !{!"incoming_args", !81, i64 0, !81, i64 4, !81, i64 8, !76, i64 16, !237, i64 24, !76, i64 88}
!237 = !{!"ix86_args", !81, i64 0, !81, i64 4, !81, i64 8, !81, i64 12, !81, i64 16, !81, i64 20, !81, i64 24, !81, i64 28, !81, i64 32, !81, i64 36, !81, i64 40, !81, i64 44, !81, i64 48, !81, i64 52, !81, i64 56, !81, i64 60}
!238 = !{!"function_subsections", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32}
!239 = !{!"rtl_eh", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !77, i64 48}
!240 = !{!104, !76, i64 0}
!241 = !{!110, !76, i64 56}
!242 = !{!"branch_weights", i32 1, i32 239}
!243 = !{!"branch_weights", i32 0, i32 1}
!244 = !{!245, !76, i64 8}
!245 = !{!"rtl_bb_info", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !81, i64 32}
!246 = !{!"branch_weights", i32 1289, i32 6236}
!247 = !{!"branch_weights", i32 1260, i32 4976}
!248 = !{!"branch_weights", i32 1260, i32 0}
!249 = !{!"branch_weights", i32 4028, i32 2208}
!250 = !{!"branch_weights", i32 4005, i32 23}
!251 = !{!"branch_weights", i32 0, i32 23}
!252 = !{!"branch_weights", i32 23, i32 0, i32 6213}
!253 = !{!"branch_weights", i32 0, i32 7525}
!254 = distinct !{!254, !92, !93}
!255 = !{!"branch_weights", i32 239, i32 20753}
!256 = distinct !{!256, !92, !93}
!257 = !{!110, !76, i64 0}
!258 = !{!"branch_weights", i32 0, i32 1126}
!259 = !{!"branch_weights", i32 133, i32 993}
!260 = !{!"branch_weights", i32 0, i32 993}
!261 = !{!"branch_weights", i32 993, i32 0}
!262 = !{!"branch_weights", i32 239, i32 17777}
!263 = distinct !{!263, !92, !93}
!264 = !{!"branch_weights", i32 23, i32 0}
!265 = !{!"branch_weights", i32 1, i32 183}
!266 = !{!"branch_weights", i32 23, i32 185879}
!267 = !{!245, !76, i64 0}
!268 = !{!"branch_weights", i32 84642, i32 101237}
!269 = !{!"branch_weights", i32 0, i32 136945}
!270 = !{!108, !81, i64 48}
!271 = !{!"branch_weights", i32 35708, i32 101237}
!272 = !{!"branch_weights", i32 0, i32 35708}
!273 = !{!"branch_weights", i32 35708, i32 0}
!274 = distinct !{!274, !92, !93}
!275 = !{!"branch_weights", i32 0, i32 101237}
!276 = !{!108, !81, i64 52}
!277 = !{!"branch_weights", i32 48929, i32 52308}
!278 = distinct !{!278, !93}
!279 = !{!"branch_weights", i32 183, i32 1095601}
!280 = distinct !{!280, !92, !93}
!281 = distinct !{!281, !92, !93}
!282 = !{!"branch_weights", i32 15, i32 0}
!283 = !{!"branch_weights", i32 0, i32 15}
!284 = !{!104, !81, i64 28}
!285 = !{!"branch_weights", i32 239, i32 1}
!286 = !{!"branch_weights", i32 18257, i32 239}
!287 = distinct !{!287, !92, !93}
!288 = !{!110, !76, i64 8}
!289 = !{!"branch_weights", i32 0, i32 2367}
!290 = !{!"branch_weights", i32 438, i32 1929}
!291 = !{!108, !76, i64 24}
!292 = !{!"branch_weights", i32 1929, i32 0}
!293 = !{!"branch_weights", i32 0, i32 1519}
!294 = !{!"branch_weights", i32 1111, i32 408}
!295 = !{!"branch_weights", i32 408, i32 0}
!296 = !{i64 0, i64 4, !90, i64 8, i64 8, !75}
!297 = !{i64 4, i64 8, !75}
!298 = !{i64 0, i64 8, !75}
!299 = !{!"branch_weights", i32 0, i32 1111}
!300 = !{}
!301 = !{!"branch_weights", i32 1111, i32 0}
!302 = !{!"branch_weights", i32 11913, i32 239}
!303 = distinct !{!303, !92, !93}
!304 = !{!"branch_weights", i32 30, i32 408}
!305 = !{!"branch_weights", i32 0, i32 30}
!306 = !{!"branch_weights", i32 15, i32 15}
!307 = distinct !{!307, !93}
!308 = !{!"branch_weights", i32 0, i32 1929}
!309 = !{!"branch_weights", i32 39, i32 1890}
!310 = !{!"branch_weights", i32 0, i32 39}
!311 = !{!"branch_weights", i32 39, i32 0}
!312 = !{!"branch_weights", i32 1890, i32 0}
!313 = !{!"branch_weights", i32 1111, i32 779}
!314 = !{!"branch_weights", i32 0, i32 779}
!315 = !{!"branch_weights", i32 779, i32 0}
!316 = !{!"branch_weights", i32 15, i32 3085}
!317 = !{!"branch_weights", i32 1156, i32 1944}
!318 = !{!"branch_weights", i32 0, i32 1944}
!319 = !{!"branch_weights", i32 1944, i32 0}
!320 = distinct !{!320, !92, !93}
!321 = !{!"branch_weights", i32 239, i32 18257}
!322 = distinct !{!322, !92, !93}
!323 = !{!"branch_weights", i32 0, i32 1049}
!324 = !{!"branch_weights", i32 15, i32 1034}
!325 = distinct !{!325, !92, !93}
!326 = distinct !{!326, !92, !93}
!327 = distinct !{!327, !92, !93}
!328 = distinct !{!328, !92, !93}
!329 = distinct !{!329, !92, !93}
!330 = distinct !{!330, !92, !93}
!331 = distinct !{!331, !92, !93}
!332 = distinct !{!332, !92, !93}
!333 = distinct !{!333, !92, !93}
!334 = distinct !{!334, !92, !93}
!335 = distinct !{!335, !92, !93}
!336 = distinct !{!336, !92, !93}
!337 = !{!"branch_weights", i32 1126, i32 0}
!338 = distinct !{!338, !92, !93}
!339 = !{!"branch_weights", i32 0, i32 38}
!340 = !{!"function_entry_count", i64 138104}
!341 = !{!"branch_weights", i32 1, i32 138103}
!342 = !{!"branch_weights", i32 187035, i32 138103}
!343 = distinct !{!343, !92, !93}
!344 = distinct !{!344, !92, !93}
!345 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75, i64 24, i64 8, !75, i64 32, i64 4, !90, i64 36, i64 4, !90, i64 40, i64 4, !90, i64 48, i64 8, !75, i64 56, i64 8, !75, i64 64, i64 8, !75, i64 72, i64 8, !75, i64 80, i64 4, !90, i64 88, i64 8, !75, i64 96, i64 4, !90, i64 104, i64 8, !75, i64 112, i64 8, !75, i64 120, i64 8, !75, i64 128, i64 4, !90, i64 136, i64 8, !75, i64 144, i64 8, !75, i64 152, i64 8, !75, i64 160, i64 4, !90, i64 168, i64 8, !75, i64 176, i64 4, !90, i64 180, i64 4, !90}
!346 = distinct !{!346, !92, !93}
!347 = distinct !{!347, !92, !93}
!348 = distinct !{!348, !92, !93}
!349 = distinct !{!349, !92, !93}
!350 = !{!351, !76, i64 1000}
!351 = !{!"gcc_target", !352, i64 0, !354, i64 368, !355, i64 664, !81, i64 744, !76, i64 752, !76, i64 760, !76, i64 768, !76, i64 776, !76, i64 784, !76, i64 792, !76, i64 800, !76, i64 808, !76, i64 816, !76, i64 824, !76, i64 832, !76, i64 840, !76, i64 848, !76, i64 856, !76, i64 864, !76, i64 872, !76, i64 880, !76, i64 888, !76, i64 896, !76, i64 904, !76, i64 912, !76, i64 920, !76, i64 928, !76, i64 936, !76, i64 944, !76, i64 952, !76, i64 960, !76, i64 968, !76, i64 976, !76, i64 984, !76, i64 992, !76, i64 1000, !76, i64 1008, !76, i64 1016, !76, i64 1024, !76, i64 1032, !76, i64 1040, !76, i64 1048, !76, i64 1056, !82, i64 1064, !82, i64 1072, !76, i64 1080, !76, i64 1088, !76, i64 1096, !76, i64 1104, !76, i64 1112, !76, i64 1120, !76, i64 1128, !76, i64 1136, !76, i64 1144, !76, i64 1152, !76, i64 1160, !76, i64 1168, !356, i64 1176, !76, i64 1232, !76, i64 1240, !76, i64 1248, !76, i64 1256, !76, i64 1264, !76, i64 1272, !76, i64 1280, !76, i64 1288, !76, i64 1296, !76, i64 1304, !76, i64 1312, !76, i64 1320, !76, i64 1328, !76, i64 1336, !76, i64 1344, !76, i64 1352, !76, i64 1360, !76, i64 1368, !76, i64 1376, !76, i64 1384, !76, i64 1392, !76, i64 1400, !76, i64 1408, !76, i64 1416, !76, i64 1424, !76, i64 1432, !76, i64 1440, !76, i64 1448, !76, i64 1456, !82, i64 1464, !357, i64 1472, !76, i64 1664, !76, i64 1672, !76, i64 1680, !76, i64 1688, !76, i64 1696, !76, i64 1704, !76, i64 1712, !76, i64 1720, !76, i64 1728, !76, i64 1736, !76, i64 1744, !76, i64 1752, !76, i64 1760, !76, i64 1768, !76, i64 1776, !358, i64 1784, !359, i64 1792, !360, i64 1896, !361, i64 1968, !76, i64 2016, !77, i64 2024, !77, i64 2025, !77, i64 2026, !77, i64 2027, !77, i64 2028, !77, i64 2029, !77, i64 2030, !77, i64 2031, !77, i64 2032, !77, i64 2033, !77, i64 2034, !77, i64 2035}
!352 = !{!"asm_out", !76, i64 0, !76, i64 8, !76, i64 16, !353, i64 24, !353, i64 56, !76, i64 88, !76, i64 96, !76, i64 104, !76, i64 112, !76, i64 120, !76, i64 128, !76, i64 136, !76, i64 144, !76, i64 152, !76, i64 160, !76, i64 168, !76, i64 176, !76, i64 184, !76, i64 192, !76, i64 200, !76, i64 208, !76, i64 216, !76, i64 224, !76, i64 232, !76, i64 240, !76, i64 248, !76, i64 256, !76, i64 264, !76, i64 272, !76, i64 280, !76, i64 288, !76, i64 296, !76, i64 304, !76, i64 312, !76, i64 320, !76, i64 328, !76, i64 336, !76, i64 344, !76, i64 352, !76, i64 360}
!353 = !{!"asm_int_op", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24}
!354 = !{!"sched", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !76, i64 104, !76, i64 112, !76, i64 120, !76, i64 128, !76, i64 136, !76, i64 144, !76, i64 152, !76, i64 160, !76, i64 168, !76, i64 176, !76, i64 184, !76, i64 192, !76, i64 200, !76, i64 208, !76, i64 216, !76, i64 224, !76, i64 232, !76, i64 240, !76, i64 248, !76, i64 256, !76, i64 264, !76, i64 272, !76, i64 280, !76, i64 288}
!355 = !{!"vectorize", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72}
!356 = !{!"addr_space", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48}
!357 = !{!"calls", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96, !76, i64 104, !76, i64 112, !76, i64 120, !76, i64 128, !76, i64 136, !76, i64 144, !76, i64 152, !76, i64 160, !76, i64 168, !76, i64 176, !76, i64 184}
!358 = !{!"c", !76, i64 0}
!359 = !{!"cxx", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96}
!360 = !{!"emutls", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !77, i64 64, !77, i64 65}
!361 = !{!"target_option_hooks", !76, i64 0, !76, i64 8, !76, i64 16, !76, i64 24, !76, i64 32, !76, i64 40}
!362 = distinct !{!362, !92, !93}
!363 = !{!"branch_weights", i32 76172, i32 110856}
!364 = !{!"branch_weights", i32 0, i32 227264}
!365 = !{!"branch_weights", i32 76172, i32 151092}
!366 = !{!"branch_weights", i32 0, i32 151092}
!367 = !{!"branch_weights", i32 48929, i32 102163}
!368 = !{!"branch_weights", i32 48929, i32 0}
!369 = !{!"branch_weights", i32 151092, i32 0}
!370 = distinct !{!370, !92, !93}
!371 = !{!169, !76, i64 8}
!372 = !{!169, !76, i64 24}
!373 = !{!351, !76, i64 448}
!374 = distinct !{!374, !92, !93}
!375 = distinct !{!375, !92, !93}
!376 = distinct !{!376, !92, !93}
!377 = distinct !{!377, !92, !93}
!378 = distinct !{!378, !92, !93}
!379 = distinct !{!379, !92, !93}
!380 = distinct !{!380, !92, !93}
!381 = distinct !{!381, !92, !93}
!382 = distinct !{!382, !92, !93}
!383 = distinct !{!383, !92, !93}
!384 = distinct !{!384, !92, !93}
!385 = !{!127, !76, i64 0}
!386 = !{!127, !76, i64 8}
!387 = distinct !{!387, !92, !93}
!388 = distinct !{!388, !92, !93}
!389 = distinct !{!389, !92, !93}
!390 = distinct !{!390, !92, !93}
!391 = distinct !{!391, !92, !93}
!392 = distinct !{!392, !92, !93}
!393 = distinct !{!393, !92, !93}
!394 = !{!154, !76, i64 24}
!395 = distinct !{!395, !92, !93}
!396 = !{!151, !76, i64 64}
!397 = !{!151, !76, i64 72}
!398 = distinct !{!398, !92, !93}
!399 = distinct !{!399, !92, !93}
!400 = distinct !{!400, !92, !93}
!401 = !{!"sched-rgn.c;gate_handle_sched"}
!402 = !{!"sched-rgn.c;gate_handle_sched2"}
!403 = !{!"sched-rgn.c;rest_of_handle_sched2"}
!404 = !{!"function_entry_count", i64 148119}
!405 = !{!"sched-rgn.c;compute_jump_reg_dependencies"}
!406 = !{!138, !81, i64 4}
!407 = !{!123, !81, i64 8}
!408 = !{!123, !81, i64 12}
!409 = distinct !{!409, !92, !93}
!410 = distinct !{!410, !92, !93}
!411 = distinct !{!411, !92, !93}
!412 = distinct !{!412, !92, !93}
!413 = distinct !{!413, !92, !93}
!414 = distinct !{!414, !92, !93}
!415 = distinct !{!415, !92, !93}
!416 = distinct !{!416, !92, !93}
!417 = !{!204, !81, i64 24}
!418 = distinct !{!418, !92, !93}
!419 = distinct !{!419, !92, !93}
!420 = distinct !{!420, !92, !93}
!421 = !{!204, !76, i64 40}
!422 = !{!423, !81, i64 0}
!423 = !{!"spec_info_def", !81, i64 0, !76, i64 8, !81, i64 16, !81, i64 20, !81, i64 24}
!424 = !{!425, !81, i64 0}
!425 = !{!"rtvec_def", !81, i64 0, !77, i64 8}
!426 = distinct !{!426, !92, !93}
!427 = !{!210, !81, i64 16}
!428 = distinct !{!428, !92, !93}
!429 = distinct !{!429, !92, !93}
!430 = distinct !{!430, !92, !93}
!431 = distinct !{!431, !92, !93}
!432 = distinct !{!432, !92, !93}
!433 = distinct !{!433, !92, !93}
!434 = distinct !{!434, !92, !93}
!435 = !{!210, !76, i64 0}
!436 = distinct !{!436, !92, !93}
!437 = distinct !{!437, !92, !93}
!438 = distinct !{!438, !92, !93}
!439 = distinct !{!439, !92, !93}
!440 = distinct !{!440, !92, !93}
!441 = distinct !{!441, !92, !93}
!442 = distinct !{!442, !92, !93}
!443 = distinct !{!443, !92, !93}
!444 = distinct !{!444, !92, !93}
