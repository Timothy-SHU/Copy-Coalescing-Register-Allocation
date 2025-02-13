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
%struct.region = type { i32, i32, i8 }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.candidate = type { i8, i8, i32, %struct.bblst, %struct.bblst }
%struct.bblst = type { ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.deps_reg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct._dep_link = type { ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct.edgelst = type { ptr, i32 }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }

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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_regions() local_unnamed_addr #0 {
  %1 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %1)
  %3 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %0, %36
  %6 = phi i64 [ %39, %36 ], [ 0, %0 ]
  %7 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %8 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.region, ptr %8, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = trunc i64 %6 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %10) #24
  %13 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 13, i64 1, ptr %13)
  %15 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.region, ptr %15, i64 %6, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !13
  store i32 %17, ptr @current_blocks, align 4, !tbaa !9
  %18 = getelementptr inbounds %struct.region, ptr %15, i64 %6
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %5, %21
  %22 = phi i32 [ %31, %21 ], [ 0, %5 ]
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %24 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %25 = load i32, ptr @current_blocks, align 4, !tbaa !9
  %26 = add nsw i32 %25, %22
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !9
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.3, i32 noundef %22, i32 noundef %29) #24
  %31 = add nuw nsw i32 %22, 1
  %32 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.region, ptr %32, i64 %6
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %21, label %36, !llvm.loop !14

36:                                               ; preds = %21, %5
  %37 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %38 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %37)
  %39 = add nuw nsw i64 %6, 1
  %40 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %5, label %43, !llvm.loop !16

43:                                               ; preds = %36, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_region(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %0) #25
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.region, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %8) #25
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 13, i64 1, ptr %10) #26
  %12 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.region, ptr %12, i64 %6, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !13
  store i32 %14, ptr @current_blocks, align 4, !tbaa !9
  %15 = getelementptr inbounds %struct.region, ptr %12, i64 %6
  %16 = load i32, ptr %15, align 4, !tbaa !11
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1, %18
  %19 = phi i32 [ %28, %18 ], [ 0, %1 ]
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %21 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %22 = load i32, ptr @current_blocks, align 4, !tbaa !9
  %23 = add nsw i32 %22, %19
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %26) #25
  %28 = add nuw nsw i32 %19, 1
  %29 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.region, ptr %29, i64 %6
  %31 = load i32, ptr %30, align 4, !tbaa !11
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %18, label %33, !llvm.loop !17

33:                                               ; preds = %18, %1
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %34) #26
  %36 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.region, ptr %36, i64 %6
  %38 = load i32, ptr %37, align 4, !tbaa !11
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33, %40
  %41 = phi i32 [ %50, %40 ], [ 0, %33 ]
  %42 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %43 = load i32, ptr @current_blocks, align 4, !tbaa !9
  %44 = add nsw i32 %43, %41
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %42, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !9
  tail call void @debug_bb_n_slim(i32 noundef %47) #27
  %48 = load ptr, ptr @stderr, align 8, !tbaa !5
  %49 = tail call i32 @fputc(i32 10, ptr %48)
  %50 = add nuw nsw i32 %41, 1
  %51 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.region, ptr %51, i64 %6
  %53 = load i32, ptr %52, align 4, !tbaa !11
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %40, label %55, !llvm.loop !18

55:                                               ; preds = %40, %33
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %57 = tail call i32 @fputc(i32 10, ptr %56)
  ret void
}

; Function Attrs: optsize
declare void @debug_bb_n_slim(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_region_dot(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1) #24
  %6 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.region, ptr %6, i64 %7, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !13
  store i32 %9, ptr @current_blocks, align 4, !tbaa !9
  %10 = getelementptr inbounds %struct.region, ptr %6, i64 %7
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %4, i64 8
  br label %15

15:                                               ; preds = %13, %48
  %16 = phi i32 [ 0, %13 ], [ %49, %48 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #28
  %17 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %18 = load i32, ptr @current_blocks, align 4, !tbaa !9
  %19 = add nsw i32 %18, %16
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !9
  %23 = load ptr, ptr @cfun, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %27, i32 noundef %22) #24
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #24
  store i32 0, ptr %4, align 8, !tbaa.struct !23
  store ptr %30, ptr %14, align 8, !tbaa.struct !24
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %3) #24, !range !25
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %15, %43
  %34 = load ptr, ptr %3, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !26
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !29
  %39 = tail call fastcc zeroext i8 @bb_in_region_p(i32 noundef %38, i32 noundef %1) #24, !range !25
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %22, i32 noundef %38) #24
  br label %43

43:                                               ; preds = %33, %41
  call fastcc void @ei_next(ptr noundef nonnull %4) #24
  %44 = load i32, ptr %4, align 8
  %45 = load ptr, ptr %14, align 8
  %46 = call fastcc zeroext i8 @ei_cond(i32 %44, ptr %45, ptr noundef nonnull %3) #24, !range !25
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %33, !llvm.loop !31

48:                                               ; preds = %43, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  %49 = add nuw nsw i32 %16, 1
  %50 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.region, ptr %50, i64 %7
  %52 = load i32, ptr %51, align 4, !tbaa !11
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %15, label %54, !llvm.loop !32

54:                                               ; preds = %48, %2
  %55 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #6 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !5
  ret i8 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bb_in_region_p(i32 noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.region, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %10 = load i32, ptr @current_blocks, align 4, !tbaa !9
  %11 = sext i32 %10 to i64
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr i32, ptr %9, i64 %11
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, %12
  br i1 %16, label %22, label %17, !llvm.loop !33

17:                                               ; preds = %8, %14
  %18 = phi i64 [ 0, %8 ], [ %15, %14 ]
  %19 = getelementptr i32, ptr %13, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !9
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %22, label %14

22:                                               ; preds = %17, %14, %2
  %23 = phi i8 [ 0, %2 ], [ 0, %14 ], [ 1, %17 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #3 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 738, ptr noundef nonnull @.str.12) #27
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !34
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_region_dot_file(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @fopen_unlocked(ptr noundef %0, ptr noundef nonnull @.str.10) #27
  tail call void @dump_region_dot(ptr noundef %3, i32 noundef %1) #24
  %4 = tail call i32 @fclose(ptr noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extend_rgns(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.edge_iterator, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = load i32, ptr %1, align 4, !tbaa !9
  %14 = load ptr, ptr @cfun, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !36
  %19 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.param_info, ptr %19, i64 82, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !39
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr @xmalloc(i64 noundef %25) #27
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !39
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr @xmalloc(i64 noundef %33) #27
  %35 = tail call i32 @post_order_compute(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 0) #27
  %36 = add i32 %18, -3
  %37 = icmp sgt i32 %18, 2
  br i1 %37, label %38, label %382

38:                                               ; preds = %4
  %39 = zext nneg i32 %36 to i64
  br label %47

40:                                               ; preds = %47
  %41 = icmp ne i32 %57, 0
  %42 = icmp sgt i32 %21, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %382

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %6, i64 8
  %46 = zext i32 %36 to i64
  br label %61

47:                                               ; preds = %38, %47
  %48 = phi i64 [ %39, %38 ], [ %59, %47 ]
  %49 = phi i32 [ 0, %38 ], [ %57, %47 ]
  %50 = getelementptr inbounds i32, ptr %34, i64 %48
  %51 = load i32, ptr %50, align 4, !tbaa !9
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !9
  %55 = icmp sgt i32 %54, -1
  %56 = select i1 %55, i32 %51, i32 -1
  %57 = select i1 %55, i32 1, i32 %49
  %58 = getelementptr inbounds i32, ptr %26, i64 %52
  store i32 %56, ptr %58, align 4
  %59 = add nsw i64 %48, -1
  %60 = icmp sgt i64 %48, 0
  br i1 %60, label %47, label %40, !llvm.loop !40

61:                                               ; preds = %44, %136
  %62 = phi i32 [ 0, %44 ], [ %137, %136 ]
  br i1 %37, label %65, label %63

63:                                               ; preds = %61
  %64 = add nuw nsw i32 %62, 1
  br label %144

65:                                               ; preds = %61, %132
  %66 = phi i64 [ %134, %132 ], [ %46, %61 ]
  %67 = phi i32 [ %133, %132 ], [ 0, %61 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #28
  %68 = getelementptr inbounds i32, ptr %34, i64 %66
  %69 = load i32, ptr %68, align 4, !tbaa !9
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %26, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !9
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %132, label %74

74:                                               ; preds = %65
  %75 = lshr i32 %69, 6
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !41
  %79 = and i32 %69, 63
  %80 = zext nneg i32 %79 to i64
  %81 = shl nuw i64 1, %80
  %82 = and i64 %78, %81
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %132

84:                                               ; preds = %74
  %85 = load ptr, ptr @cfun, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !19
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !21
  %90 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %89, i32 noundef %69) #24
  %91 = tail call fastcc ptr @ei_start_1(ptr noundef %90) #24
  store i32 0, ptr %6, align 8, !tbaa.struct !23
  store ptr %91, ptr %45, align 8, !tbaa.struct !24
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %5) #24, !range !25
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %84
  %95 = getelementptr inbounds i32, ptr %3, i64 %70
  br label %96

96:                                               ; preds = %94, %117
  %97 = phi i32 [ -1, %94 ], [ %118, %117 ]
  %98 = load ptr, ptr %5, align 8, !tbaa !5
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !29
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %96
  %104 = sext i32 %101 to i64
  %105 = getelementptr inbounds i32, ptr %26, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !9
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %127, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %95, align 4, !tbaa !9
  %110 = getelementptr inbounds i32, ptr %3, i64 %104
  %111 = load i32, ptr %110, align 4, !tbaa !9
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = icmp eq i32 %97, -1
  br i1 %114, label %117, label %115

115:                                              ; preds = %113
  %116 = icmp eq i32 %97, %106
  br i1 %116, label %117, label %127

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %106, %113 ], [ %97, %115 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #24
  %119 = load i32, ptr %6, align 8
  %120 = load ptr, ptr %45, align 8
  %121 = call fastcc zeroext i8 @ei_cond(i32 %119, ptr %120, ptr noundef nonnull %5) #24, !range !25
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %96, !llvm.loop !43

123:                                              ; preds = %117
  %124 = icmp eq i32 %118, %69
  br i1 %124, label %127, label %129

125:                                              ; preds = %84
  %126 = icmp eq i32 %69, -1
  br i1 %126, label %127, label %128

127:                                              ; preds = %115, %108, %103, %96, %125, %123
  tail call fastcc void @SET_BIT(ptr noundef %2, i32 noundef %69) #24
  br label %129

128:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1243, ptr noundef nonnull @.str.12) #27
  br label %129

129:                                              ; preds = %123, %128, %127
  %130 = phi i32 [ %69, %127 ], [ -1, %128 ], [ %118, %123 ]
  %131 = phi i32 [ 1, %127 ], [ %67, %128 ], [ %67, %123 ]
  store i32 %130, ptr %71, align 4, !tbaa !9
  br label %132

132:                                              ; preds = %129, %74, %65
  %133 = phi i32 [ %67, %74 ], [ %131, %129 ], [ %67, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  %134 = add nsw i64 %66, -1
  %135 = icmp sgt i64 %66, 0
  br i1 %135, label %65, label %136, !llvm.loop !44

136:                                              ; preds = %132
  %137 = add nuw nsw i32 %62, 1
  %138 = icmp ne i32 %133, 0
  %139 = icmp slt i32 %137, %21
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %61, label %141, !llvm.loop !45

141:                                              ; preds = %136
  %142 = select i1 %138, ptr @.str.14, ptr @.str.15
  %143 = icmp eq i32 %133, 0
  br label %144

144:                                              ; preds = %141, %63
  %145 = phi i32 [ %64, %63 ], [ %137, %141 ]
  %146 = phi i1 [ true, %63 ], [ %143, %141 ]
  %147 = phi ptr [ @.str.15, %63 ], [ %142, %141 ]
  %148 = load i32, ptr @sched_verbose, align 4, !tbaa !9
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef nonnull @.str.13, i32 noundef %145, ptr noundef nonnull %147) #24
  br label %153

153:                                              ; preds = %150, %144
  br i1 %146, label %154, label %382

154:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #28
  store ptr null, ptr %7, align 8, !tbaa !5
  %155 = load i32, ptr @sched_verbose, align 4, !tbaa !9
  %156 = icmp sgt i32 %155, 5
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call fastcc i32 @gather_region_statistics(ptr noundef nonnull %7) #24
  br label %159

159:                                              ; preds = %157, %154
  %160 = phi i32 [ %158, %157 ], [ 0, %154 ]
  br i1 %37, label %161, label %373

161:                                              ; preds = %159
  %162 = getelementptr inbounds i8, ptr %9, i64 8
  %163 = zext nneg i32 %36 to i64
  br label %164

164:                                              ; preds = %161, %369
  %165 = phi i64 [ %163, %161 ], [ %371, %369 ]
  %166 = phi i32 [ %13, %161 ], [ %370, %369 ]
  %167 = getelementptr inbounds i32, ptr %34, i64 %165
  %168 = load i32, ptr %167, align 4, !tbaa !9
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %26, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !9
  %172 = icmp eq i32 %171, %168
  br i1 %172, label %173, label %369

173:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #28
  store i32 0, ptr %10, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #28
  store i32 0, ptr %11, align 4, !tbaa !9
  %174 = call fastcc zeroext i8 @too_large(i32 noundef %168, ptr noundef nonnull %10, ptr noundef nonnull %11) #24, !range !25
  %175 = getelementptr inbounds i32, ptr %0, i64 %169
  store i32 -1, ptr %175, align 4, !tbaa !9
  %176 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %177 = sext i32 %166 to i64
  %178 = getelementptr inbounds i32, ptr %176, i64 %177
  store i32 %168, ptr %178, align 4, !tbaa !9
  %179 = add nsw i32 %166, 1
  %180 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %181 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.region, ptr %180, i64 %182, i32 1
  store i32 %166, ptr %183, align 4, !tbaa !13
  %184 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.region, ptr %180, i64 %185, i32 2
  %187 = load i8, ptr %186, align 4
  %188 = and i8 %187, -2
  store i8 %188, ptr %186, align 4
  %189 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %190 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.region, ptr %189, i64 %191, i32 2
  %193 = load i8, ptr %192, align 4
  %194 = and i8 %193, -3
  store i8 %194, ptr %192, align 4
  %195 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %196 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %197 = getelementptr inbounds i32, ptr %196, i64 %169
  store i32 %195, ptr %197, align 4, !tbaa !9
  %198 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %199 = getelementptr inbounds i32, ptr %198, i64 %169
  store i32 0, ptr %199, align 4, !tbaa !9
  %200 = load ptr, ptr @cfun, align 8, !tbaa !5
  %201 = getelementptr inbounds %struct.function, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !19
  %203 = getelementptr inbounds %struct.control_flow_graph, ptr %202, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !21
  %205 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %204, i32 noundef %168) #24
  %206 = getelementptr inbounds %struct.basic_block_def, ptr %205, i64 0, i32 1
  %207 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %206) #24
  store i32 0, ptr %9, align 8, !tbaa.struct !23
  store ptr %207, ptr %162, align 8, !tbaa.struct !24
  %208 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %207, ptr noundef nonnull %8) #24, !range !25
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %232, label %210

210:                                              ; preds = %173, %227
  %211 = load ptr, ptr %8, align 8, !tbaa !5
  %212 = getelementptr inbounds %struct.edge_def, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !26
  %214 = load ptr, ptr @cfun, align 8, !tbaa !5
  %215 = getelementptr inbounds %struct.function, ptr %214, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !19
  %217 = getelementptr inbounds %struct.control_flow_graph, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !46
  %219 = icmp eq ptr %213, %218
  br i1 %219, label %227, label %220

220:                                              ; preds = %210
  %221 = getelementptr inbounds %struct.basic_block_def, ptr %213, i64 0, i32 9
  %222 = load i32, ptr %221, align 8, !tbaa !29
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, ptr %0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !9
  %226 = add nsw i32 %225, -1
  store i32 %226, ptr %224, align 4, !tbaa !9
  br label %227

227:                                              ; preds = %210, %220
  call fastcc void @ei_next(ptr noundef nonnull %9) #24
  %228 = load i32, ptr %9, align 8
  %229 = load ptr, ptr %162, align 8
  %230 = call fastcc zeroext i8 @ei_cond(i32 %228, ptr %229, ptr noundef nonnull %8) #24, !range !25
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %210, !llvm.loop !47

232:                                              ; preds = %227, %173
  %233 = icmp eq i8 %174, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %232
  %235 = icmp sgt i64 %165, 0
  br i1 %235, label %236, label %358

236:                                              ; preds = %234, %249
  %237 = phi i64 [ %238, %249 ], [ %165, %234 ]
  %238 = add nsw i64 %237, -1
  %239 = and i64 %238, 4294967295
  %240 = getelementptr inbounds i32, ptr %34, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !9
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %26, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !9
  %245 = icmp eq i32 %244, %168
  br i1 %245, label %246, label %249

246:                                              ; preds = %236
  %247 = call fastcc zeroext i8 @too_large(i32 noundef %241, ptr noundef nonnull %10, ptr noundef nonnull %11) #24, !range !25
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246, %236
  %250 = trunc i64 %237 to i32
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %236, label %259, !llvm.loop !48

252:                                              ; preds = %246, %232
  %253 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %254 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.region, ptr %253, i64 %255
  store i32 1, ptr %256, align 4, !tbaa !11
  %257 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr @nr_regions, align 4, !tbaa !9
  br label %259

259:                                              ; preds = %249, %252
  %260 = phi i1 [ false, %252 ], [ true, %249 ]
  store i32 1, ptr %10, align 4, !tbaa !9
  %261 = icmp sgt i64 %165, 0
  br i1 %261, label %262, label %355

262:                                              ; preds = %259, %350
  %263 = phi i64 [ %266, %350 ], [ %165, %259 ]
  %264 = phi i32 [ %352, %350 ], [ %179, %259 ]
  %265 = phi i32 [ %351, %350 ], [ 1, %259 ]
  %266 = add nsw i64 %263, -1
  %267 = and i64 %266, 4294967295
  %268 = getelementptr inbounds i32, ptr %34, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !9
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, ptr %26, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !9
  %273 = icmp eq i32 %272, %168
  br i1 %273, label %274, label %350

274:                                              ; preds = %262
  %275 = getelementptr inbounds i32, ptr %0, i64 %270
  %276 = load i32, ptr %275, align 4, !tbaa !9
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1346, ptr noundef nonnull @.str.12) #27
  br label %279

279:                                              ; preds = %274, %278
  store i32 -1, ptr %275, align 4, !tbaa !9
  %280 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %281 = sext i32 %264 to i64
  %282 = getelementptr inbounds i32, ptr %280, i64 %281
  store i32 %269, ptr %282, align 4, !tbaa !9
  br i1 %260, label %283, label %290

283:                                              ; preds = %279
  %284 = add nsw i32 %265, 1
  %285 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %286 = getelementptr inbounds i32, ptr %285, i64 %270
  store i32 %265, ptr %286, align 4, !tbaa !9
  %287 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %288 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %289 = getelementptr inbounds i32, ptr %288, i64 %270
  store i32 %287, ptr %289, align 4, !tbaa !9
  br label %315

290:                                              ; preds = %279
  %291 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %292 = getelementptr inbounds i32, ptr %291, i64 %270
  store i32 0, ptr %292, align 4, !tbaa !9
  %293 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %294 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %295 = getelementptr inbounds i32, ptr %294, i64 %270
  store i32 %293, ptr %295, align 4, !tbaa !9
  %296 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %297 = sext i32 %293 to i64
  %298 = getelementptr inbounds %struct.region, ptr %296, i64 %297, i32 1
  store i32 %264, ptr %298, align 4, !tbaa !13
  %299 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.region, ptr %296, i64 %300
  store i32 1, ptr %301, align 4, !tbaa !11
  %302 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.region, ptr %296, i64 %303, i32 2
  %305 = load i8, ptr %304, align 4
  %306 = and i8 %305, -2
  store i8 %306, ptr %304, align 4
  %307 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %308 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.region, ptr %307, i64 %309, i32 2
  %311 = load i8, ptr %310, align 4
  %312 = and i8 %311, -3
  store i8 %312, ptr %310, align 4
  %313 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %314 = add nsw i32 %313, 1
  store i32 %314, ptr @nr_regions, align 4, !tbaa !9
  br label %315

315:                                              ; preds = %283, %290
  %316 = phi i32 [ %284, %283 ], [ %265, %290 ]
  %317 = add nsw i32 %264, 1
  %318 = load ptr, ptr @cfun, align 8, !tbaa !5
  %319 = getelementptr inbounds %struct.function, ptr %318, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !19
  %321 = getelementptr inbounds %struct.control_flow_graph, ptr %320, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !21
  %323 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %322, i32 noundef %269) #24
  %324 = getelementptr inbounds %struct.basic_block_def, ptr %323, i64 0, i32 1
  %325 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %324) #24
  store i32 0, ptr %9, align 8, !tbaa.struct !23
  store ptr %325, ptr %162, align 8, !tbaa.struct !24
  %326 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %325, ptr noundef nonnull %8) #24, !range !25
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %350, label %328

328:                                              ; preds = %315, %345
  %329 = load ptr, ptr %8, align 8, !tbaa !5
  %330 = getelementptr inbounds %struct.edge_def, ptr %329, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !26
  %332 = load ptr, ptr @cfun, align 8, !tbaa !5
  %333 = getelementptr inbounds %struct.function, ptr %332, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !19
  %335 = getelementptr inbounds %struct.control_flow_graph, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !46
  %337 = icmp eq ptr %331, %336
  br i1 %337, label %345, label %338

338:                                              ; preds = %328
  %339 = getelementptr inbounds %struct.basic_block_def, ptr %331, i64 0, i32 9
  %340 = load i32, ptr %339, align 8, !tbaa !29
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, ptr %0, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !9
  %344 = add nsw i32 %343, -1
  store i32 %344, ptr %342, align 4, !tbaa !9
  br label %345

345:                                              ; preds = %328, %338
  call fastcc void @ei_next(ptr noundef nonnull %9) #24
  %346 = load i32, ptr %9, align 8
  %347 = load ptr, ptr %162, align 8
  %348 = call fastcc zeroext i8 @ei_cond(i32 %346, ptr %347, ptr noundef nonnull %8) #24, !range !25
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %350, label %328, !llvm.loop !49

350:                                              ; preds = %345, %315, %262
  %351 = phi i32 [ %265, %262 ], [ %316, %315 ], [ %316, %345 ]
  %352 = phi i32 [ %264, %262 ], [ %317, %315 ], [ %317, %345 ]
  %353 = trunc i64 %263 to i32
  %354 = icmp sgt i32 %353, 1
  br i1 %354, label %262, label %355, !llvm.loop !50

355:                                              ; preds = %350, %259
  %356 = phi i32 [ 1, %259 ], [ %351, %350 ]
  %357 = phi i32 [ %179, %259 ], [ %352, %350 ]
  br i1 %260, label %358, label %367

358:                                              ; preds = %234, %355
  %359 = phi i32 [ %357, %355 ], [ %179, %234 ]
  %360 = phi i32 [ %356, %355 ], [ 1, %234 ]
  %361 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %362 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.region, ptr %361, i64 %363
  store i32 %360, ptr %364, align 4, !tbaa !11
  %365 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %366 = add nsw i32 %365, 1
  store i32 %366, ptr @nr_regions, align 4, !tbaa !9
  br label %367

367:                                              ; preds = %358, %355
  %368 = phi i32 [ %359, %358 ], [ %357, %355 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #28
  br label %369

369:                                              ; preds = %367, %164
  %370 = phi i32 [ %368, %367 ], [ %166, %164 ]
  %371 = add nsw i64 %165, -1
  %372 = icmp sgt i64 %165, 0
  br i1 %372, label %164, label %373, !llvm.loop !51

373:                                              ; preds = %369, %159
  %374 = phi i32 [ %13, %159 ], [ %370, %369 ]
  %375 = load i32, ptr @sched_verbose, align 4, !tbaa !9
  %376 = icmp sgt i32 %375, 5
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #28
  %378 = call fastcc i32 @gather_region_statistics(ptr noundef nonnull %12) #24
  %379 = load ptr, ptr %7, align 8, !tbaa !5
  %380 = load ptr, ptr %12, align 8, !tbaa !5
  tail call fastcc void @print_region_statistics(ptr noundef %379, i32 noundef %160, ptr noundef %380, i32 noundef %378) #24
  tail call void @free(ptr noundef %379) #24
  tail call void @free(ptr noundef %380) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #28
  br label %381

381:                                              ; preds = %377, %373
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #28
  br label %382

382:                                              ; preds = %40, %4, %381, %153
  %383 = phi i32 [ %374, %381 ], [ %13, %153 ], [ %13, %4 ], [ %13, %40 ]
  tail call void @free(ptr noundef %34) #24
  tail call void @free(ptr noundef %26) #24
  store i32 %383, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @post_order_compute(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
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
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !54
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !54
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !41
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gather_region_statistics(ptr nocapture noundef writeonly %0) unnamed_addr #3 {
  %2 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %41

4:                                                ; preds = %1, %29
  %5 = phi i64 [ %37, %29 ], [ 0, %1 ]
  %6 = phi i32 [ %32, %29 ], [ 0, %1 ]
  %7 = phi ptr [ %31, %29 ], [ null, %1 ]
  %8 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.region, ptr %8, i64 %5
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1100, ptr noundef nonnull @.str.12) #27
  br label %13

13:                                               ; preds = %4, %12
  %14 = icmp sgt i32 %10, %6
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = add nsw i32 %10, -1
  br label %29

17:                                               ; preds = %13
  %18 = sext i32 %10 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %19) #27
  %21 = sext i32 %6 to i64
  %22 = shl nsw i64 %21, 2
  %23 = getelementptr i8, ptr %20, i64 %22
  %24 = add nsw i32 %10, -1
  %25 = sub i32 %24, %6
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 2
  %28 = add nuw nsw i64 %27, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %23, i8 0, i64 %28, i1 false), !tbaa !9
  br label %29

29:                                               ; preds = %17, %15
  %30 = phi i32 [ %16, %15 ], [ %24, %17 ]
  %31 = phi ptr [ %7, %15 ], [ %20, %17 ]
  %32 = phi i32 [ %6, %15 ], [ %10, %17 ]
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !9
  %37 = add nuw nsw i64 %5, 1
  %38 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %4, label %41, !llvm.loop !55

41:                                               ; preds = %29, %1
  %42 = phi ptr [ null, %1 ], [ %31, %29 ]
  %43 = phi i32 [ 0, %1 ], [ %32, %29 ]
  store ptr %42, ptr %0, align 8, !tbaa !5
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @too_large(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = load i32, ptr %1, align 4, !tbaa !9
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4, !tbaa !9
  %6 = load ptr, ptr @common_sched_info, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.common_sched_info_def, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = load ptr, ptr @cfun, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %13, i32 noundef %0) #24
  %15 = tail call i32 %8(ptr noundef %14) #27
  %16 = load i32, ptr %2, align 4, !tbaa !9
  %17 = add nsw i32 %16, %15
  store i32 %17, ptr %2, align 4, !tbaa !9
  %18 = load i32, ptr %1, align 4, !tbaa !9
  %19 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.param_info, ptr %19, i64 77, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !37
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.param_info, ptr %19, i64 78, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !37
  %26 = icmp sgt i32 %17, %25
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i8 [ 1, %3 ], [ %27, %23 ]
  ret i8 %29
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_region_statistics(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %3, 1
  br i1 %5, label %6, label %31

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %28
  %10 = phi i64 [ 1, %6 ], [ %29, %28 ]
  %11 = getelementptr inbounds i32, ptr %2, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %10, 1
  br label %28

16:                                               ; preds = %9
  %17 = icmp slt i64 %10, %7
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds i32, ptr %0, i64 %10
  %20 = load i32, ptr %19, align 4, !tbaa !9
  br label %21

21:                                               ; preds = %16, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %24 = add nuw nsw i64 %10, 1
  %25 = sub nsw i32 %12, %22
  %26 = trunc i64 %24 to i32
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.49, i32 noundef %26, i32 noundef %22, i32 noundef %25) #24
  br label %28

28:                                               ; preds = %14, %21
  %29 = phi i64 [ %15, %14 ], [ %24, %21 ]
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %31, label %9, !llvm.loop !58

31:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_candidate(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.candidate, ptr %2, i64 %3
  %5 = load i8, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %75, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.candidate, ptr %2, i64 %3, i32 1
  %9 = load i8, ptr %8, align 1, !tbaa !62
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %12 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %13 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %13, i64 %3
  %15 = load i32, ptr %14, align 4, !tbaa !9
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !9
  br i1 %10, label %73, label %19

19:                                               ; preds = %7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %18, i32 noundef %0) #24
  %21 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %22 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 12, i64 1, ptr %21)
  %23 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.candidate, ptr %23, i64 %3, i32 3, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %19, %27
  %28 = phi i64 [ %38, %27 ], [ 0, %19 ]
  %29 = phi ptr [ %39, %27 ], [ %23, %19 ]
  %30 = getelementptr inbounds %struct.candidate, ptr %29, i64 %3, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !29
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.18, i32 noundef %35) #24
  %38 = add nuw nsw i64 %28, 1
  %39 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.candidate, ptr %39, i64 %3, i32 3, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %27, label %44, !llvm.loop !65

44:                                               ; preds = %27, %19
  %45 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %46 = tail call i32 @fputc(i32 10, ptr %45)
  %47 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %48 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %47)
  %49 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.candidate, ptr %49, i64 %3, i32 4, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !66
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %44, %53
  %54 = phi i64 [ %64, %53 ], [ 0, %44 ]
  %55 = phi ptr [ %65, %53 ], [ %49, %44 ]
  %56 = getelementptr inbounds %struct.candidate, ptr %55, i64 %3, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !67
  %58 = getelementptr inbounds ptr, ptr %57, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !29
  %62 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.18, i32 noundef %61) #24
  %64 = add nuw nsw i64 %54, 1
  %65 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.candidate, ptr %65, i64 %3, i32 4, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !66
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %64, %68
  br i1 %69, label %53, label %70, !llvm.loop !68

70:                                               ; preds = %53, %44
  %71 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %72 = tail call i32 @fputc(i32 10, ptr %71)
  br label %75

73:                                               ; preds = %7
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %18) #24
  br label %75

75:                                               ; preds = %1, %73, %70
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_candidates(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %3 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %4 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %10, i32 noundef %0) #24
  %12 = add nsw i32 %0, 1
  %13 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1, %15
  %16 = phi i32 [ %17, %15 ], [ %12, %1 ]
  tail call void @debug_candidate(i32 noundef %16) #24
  %17 = add nsw i32 %16, 1
  %18 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %15, label %20, !llvm.loop !69

20:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @contributes_to_priority(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = icmp eq i32 %10, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_rgn_sched_max_insns_priority() local_unnamed_addr #12 {
  %1 = load i32, ptr getelementptr inbounds (%struct.haifa_sched_info, ptr @rgn_sched_info, i64 0, i32 13), align 4, !tbaa !70
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  %5 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #24
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !25
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 14
  %10 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %8, %11
  %12 = load ptr, ptr %9, align 8, !tbaa !72
  %13 = load i32, ptr %3, align 4, !tbaa !9
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.deps_reg, ptr %12, i64 %14
  %16 = load ptr, ptr %10, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.deps_reg, ptr %16, i64 %14
  %18 = load ptr, ptr %15, align 8, !tbaa !75
  %19 = load ptr, ptr %17, align 8, !tbaa !75
  %20 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %18, ptr noundef %19) #24
  store ptr %20, ptr %17, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.deps_reg, ptr %12, i64 %14, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.deps_reg, ptr %16, i64 %14, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %22, ptr noundef %24) #24
  store ptr %25, ptr %23, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.deps_reg, ptr %12, i64 %14, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = getelementptr inbounds %struct.deps_reg, ptr %16, i64 %14, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %27, ptr noundef %29) #24
  store ptr %30, ptr %28, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.deps_reg, ptr %12, i64 %14, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = getelementptr inbounds %struct.deps_reg, ptr %16, i64 %14, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %32, ptr noundef %34) #24
  store ptr %35, ptr %33, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.deps_reg, ptr %12, i64 %14, i32 4
  %37 = getelementptr inbounds %struct.deps_reg, ptr %16, i64 %14, i32 4
  %38 = load <2 x i32>, ptr %36, align 8, !tbaa !9
  %39 = load <2 x i32>, ptr %37, align 8, !tbaa !9
  %40 = add nsw <2 x i32> %39, %38
  store <2 x i32> %40, ptr %37, align 8, !tbaa !9
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #24
  %41 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !25
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %11, !llvm.loop !80

43:                                               ; preds = %11, %2
  %44 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %45 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %44, ptr noundef nonnull %5) #27
  %46 = load ptr, ptr %1, align 8, !tbaa !81
  %47 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call fastcc void @concat_insn_mem_list(ptr noundef %46, ptr noundef %48, ptr noundef %0, ptr noundef nonnull %49) #24
  %50 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !83
  %52 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !84
  %54 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %55 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call fastcc void @concat_insn_mem_list(ptr noundef %51, ptr noundef %53, ptr noundef nonnull %54, ptr noundef nonnull %55) #24
  %56 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !85
  %58 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !85
  %60 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %57, ptr noundef %59) #24
  store ptr %60, ptr %58, align 8, !tbaa !85
  %61 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 4
  %62 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %63 = load <2 x i32>, ptr %61, align 8, !tbaa !9
  %64 = load <2 x i32>, ptr %62, align 8, !tbaa !9
  %65 = add nsw <2 x i32> %64, %63
  store <2 x i32> %65, ptr %62, align 8, !tbaa !9
  %66 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !86
  %68 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !86
  %70 = add nsw i32 %69, %67
  store i32 %70, ptr %68, align 8, !tbaa !86
  %71 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !87
  %73 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !87
  %75 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %72, ptr noundef %74) #24
  store ptr %75, ptr %73, align 8, !tbaa !87
  %76 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !88
  %80 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %77, ptr noundef %79) #24
  store ptr %80, ptr %78, align 8, !tbaa !88
  %81 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 10
  %82 = load ptr, ptr %81, align 8, !tbaa !89
  %83 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %84 = load ptr, ptr %83, align 8, !tbaa !89
  %85 = tail call fastcc ptr @concat_INSN_LIST(ptr noundef %82, ptr noundef %84) #24
  store ptr %85, ptr %83, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %4, ptr %0, align 8, !tbaa !91
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !93
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !94
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !97
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !97
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !9
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !98

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !9
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !9
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !96
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !91
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !96
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !41
  store i64 %35, ptr %3, align 8, !tbaa !97
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !9
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !9
  %40 = load i32, ptr %23, align 8, !tbaa !96
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !96
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !99

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !100
  store ptr %44, ptr %0, align 8, !tbaa !91
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !94
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !9
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !97
  store i32 %16, ptr %1, align 4, !tbaa !9
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @concat_INSN_LIST(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %11, %4 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call ptr @alloc_INSN_LIST(ptr noundef %8, ptr noundef %5) #27
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !101

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %1, %2 ], [ %9, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !97
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !97
  %6 = load i32, ptr %1, align 4, !tbaa !9
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @concat_insn_mem_list(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr %2, align 8, !tbaa !5
  %6 = load ptr, ptr %3, align 8, !tbaa !5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %4 ]
  %10 = phi ptr [ %15, %8 ], [ %5, %4 ]
  %11 = phi ptr [ %20, %8 ], [ %0, %4 ]
  %12 = phi ptr [ %22, %8 ], [ %1, %4 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @alloc_INSN_LIST(ptr noundef %14, ptr noundef %10) #27
  %16 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %17, ptr noundef %9) #27
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %20, null
  br i1 %23, label %24, label %8, !llvm.loop !102

24:                                               ; preds = %8, %4
  %25 = phi ptr [ %5, %4 ], [ %15, %8 ]
  %26 = phi ptr [ %6, %4 ], [ %18, %8 ]
  store ptr %25, ptr %2, align 8, !tbaa !5
  store ptr %26, ptr %3, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rgn_dependencies(i32 noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 56, i64 1, ptr %4)
  %6 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %7 = icmp sgt i32 %6, %0
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = sext i32 %0 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %9, %8 ], [ %25, %10 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %18 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %19 = getelementptr inbounds i32, ptr %18, i64 %11
  %20 = load i32, ptr %19, align 4, !tbaa !9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %17, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !9
  %24 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %16, i32 noundef %23) #24
  %25 = add nsw i64 %11, 1
  %26 = getelementptr inbounds i32, ptr %18, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !9
  %28 = sext i32 %27 to i64
  %29 = getelementptr i32, ptr %17, i64 %28
  %30 = getelementptr i32, ptr %29, i64 -1
  %31 = load i32, ptr %30, align 4, !tbaa !9
  %32 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %16, i32 noundef %31) #24
  call void @get_ebb_head_tail(ptr noundef %24, ptr noundef %32, ptr noundef nonnull %2, ptr noundef nonnull %3) #27
  %33 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %34 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %35 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %36 = getelementptr inbounds i32, ptr %35, i64 %11
  %37 = load i32, ptr %36, align 4, !tbaa !9
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %34, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !9
  %41 = trunc i64 %11 to i32
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.23, i32 noundef %40, i32 noundef %41) #24
  %43 = load ptr, ptr %2, align 8, !tbaa !5
  %44 = load ptr, ptr %3, align 8, !tbaa !5
  call void @debug_dependencies(ptr noundef %43, ptr noundef %44) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  %45 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %25, %46
  br i1 %47, label %10, label %48, !llvm.loop !103

48:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: optsize
declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dependencies(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._sd_iterator, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #24
  %10 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35) #24
  %12 = icmp eq ptr %7, %0
  br i1 %12, label %103, label %13

13:                                               ; preds = %2, %99
  %14 = phi ptr [ %101, %99 ], [ %0, %2 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  %19 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  br i1 %18, label %41, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !54
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.36, i32 noundef %22) #24
  %24 = load i32, ptr %14, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 13
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %29 = load i32, ptr %28, align 8, !tbaa !54
  %30 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.37, ptr noundef %33) #24
  br label %99

35:                                               ; preds = %20
  %36 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %37 = zext nneg i32 %25 to i64
  %38 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef %39) #24
  br label %99

41:                                               ; preds = %13
  %42 = and i32 %15, 268435456
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @.str.41, ptr @.str.40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !29
  %53 = load i32, ptr @sched_emulate_haifa_p, align 4, !tbaa !9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = call i32 @sd_lists_size(ptr noundef nonnull %14, i32 noundef 3) #27
  br label %57

57:                                               ; preds = %41, %55
  %58 = phi i32 [ %56, %55 ], [ -1, %41 ]
  %59 = call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %60 = icmp eq i8 %59, 0
  %61 = load i32, ptr @sched_emulate_haifa_p, align 4
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load ptr, ptr @h_i_d, align 8
  %66 = load i32, ptr %45, align 8, !tbaa !54
  %67 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %65, i32 noundef %66) #24
  %68 = getelementptr inbounds %struct._haifa_insn_data, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !104
  %70 = call i32 @insn_cost(ptr noundef nonnull %14) #27
  br label %71

71:                                               ; preds = %57, %64
  %72 = phi i32 [ %69, %64 ], [ -1, %57 ]
  %73 = phi i32 [ %70, %64 ], [ -1, %57 ]
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.39, ptr noundef nonnull %44, i32 noundef %46, i32 noundef %48, i32 noundef %52, i32 noundef %58, i32 noundef %72, i32 noundef %73) #24
  %75 = call fastcc i32 @recog_memoized(ptr noundef nonnull %14) #24
  %76 = icmp slt i32 %75, 0
  %77 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  br i1 %76, label %78, label %80

78:                                               ; preds = %71
  %79 = call i64 @fwrite(ptr nonnull @.str.42, i64 7, i64 1, ptr %77)
  br label %81

80:                                               ; preds = %71
  call void @print_reservation(ptr noundef %77, ptr noundef nonnull %14) #27
  br label %81

81:                                               ; preds = %80, %78
  %82 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %83 = call i64 @fwrite(ptr nonnull @.str.43, i64 3, i64 1, ptr %82)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #28
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %5, ptr noundef nonnull %14, i32 noundef 4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  %84 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81, %86
  %87 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %88 = load ptr, ptr %4, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct._dep, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !108
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !54
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.44, i32 noundef %92) #24
  call fastcc void @sd_iterator_next(ptr noundef nonnull %3) #24
  %94 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %86, !llvm.loop !110

96:                                               ; preds = %86, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  %97 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %98 = call i32 @fputc(i32 10, ptr %97)
  br label %99

99:                                               ; preds = %27, %35, %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %101 = load ptr, ptr %100, align 8, !tbaa !54
  %102 = icmp eq ptr %101, %7
  br i1 %102, label %103, label %13, !llvm.loop !111

103:                                              ; preds = %99, %2
  %104 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %105 = call i32 @fputc(i32 10, ptr %104)
  ret void
}

; Function Attrs: optsize
declare i32 @sd_lists_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @sel_sched_p() unnamed_addr #11 {
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.common_sched_info_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !112
  %4 = icmp eq i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @insn_cost(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !54
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #27
  store i32 %8, ptr %2, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @print_reservation(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #16 {
  store i32 %2, ptr %0, align 8, !tbaa !113
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  store ptr %10, ptr %1, align 8, !tbaa !5
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !113
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #27
  %18 = load ptr, ptr %3, align 8, !tbaa !5
  store ptr %18, ptr %4, align 8, !tbaa !116
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %23

21:                                               ; preds = %14
  %22 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %24

23:                                               ; preds = %20, %11
  store ptr null, ptr %1, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %21, %23, %8
  %25 = phi i8 [ 1, %8 ], [ 0, %23 ], [ %22, %21 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !116
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sched_is_disabled_for_current_region_p() local_unnamed_addr #8 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %27

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %10 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %11 = zext nneg i32 %1 to i64
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %11
  br i1 %14, label %27, label %15, !llvm.loop !120

15:                                               ; preds = %3, %12
  %16 = phi i64 [ 0, %3 ], [ %13, %12 ]
  %17 = getelementptr inbounds i32, ptr %10, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !9
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %9, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !9
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %21) #24
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !121
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %12

27:                                               ; preds = %15, %12, %0
  %28 = phi i8 [ 1, %0 ], [ 1, %12 ], [ 0, %15 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_rgn_deps() local_unnamed_addr #3 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %0, %48
  %6 = phi i64 [ %20, %48 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %13 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %14 = getelementptr inbounds i32, ptr %13, i64 %6
  %15 = load i32, ptr %14, align 4, !tbaa !9
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !9
  %19 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef %18) #24
  %20 = add nuw nsw i64 %6, 1
  %21 = getelementptr inbounds i32, ptr %13, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !9
  %23 = sext i32 %22 to i64
  %24 = getelementptr i32, ptr %12, i64 %23
  %25 = getelementptr i32, ptr %24, i64 -1
  %26 = load i32, ptr %25, align 4, !tbaa !9
  %27 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef %26) #24
  %28 = icmp eq ptr %19, %27
  br i1 %28, label %48, label %29

29:                                               ; preds = %5
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2888, ptr noundef nonnull @.str.12) #27
  %30 = load ptr, ptr @cfun, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %36 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %37 = getelementptr inbounds i32, ptr %36, i64 %6
  %38 = load i32, ptr %37, align 4, !tbaa !9
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %35, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !9
  %42 = getelementptr inbounds i32, ptr %36, i64 %20
  %43 = load i32, ptr %42, align 4, !tbaa !9
  %44 = sext i32 %43 to i64
  %45 = getelementptr i32, ptr %35, i64 %44
  %46 = getelementptr i32, ptr %45, i64 -1
  %47 = load i32, ptr %46, align 4, !tbaa !9
  br label %48

48:                                               ; preds = %5, %29
  %49 = phi i32 [ %26, %5 ], [ %47, %29 ]
  %50 = phi i32 [ %18, %5 ], [ %41, %29 ]
  %51 = phi ptr [ %11, %5 ], [ %34, %29 ]
  %52 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %51, i32 noundef %50) #24
  %53 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %51, i32 noundef %49) #24
  call void @get_ebb_head_tail(ptr noundef %52, ptr noundef %53, ptr noundef nonnull %1, ptr noundef nonnull %2) #27
  %54 = load ptr, ptr %1, align 8, !tbaa !5
  %55 = load ptr, ptr %2, align 8, !tbaa !5
  call void @sched_free_deps(ptr noundef %54, ptr noundef %55, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  %56 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %20, %57
  br i1 %58, label %5, label %59, !llvm.loop !122

59:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: optsize
declare void @sched_free_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_priorities() local_unnamed_addr #3 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 13
  store i32 0, ptr %4, align 4, !tbaa !70
  %5 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %75

7:                                                ; preds = %0, %66
  %8 = phi i64 [ %22, %66 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %9 = load ptr, ptr @cfun, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %15 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %16 = getelementptr inbounds i32, ptr %15, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %14, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !9
  %21 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %13, i32 noundef %20) #24
  %22 = add nuw nsw i64 %8, 1
  %23 = getelementptr inbounds i32, ptr %15, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = getelementptr i32, ptr %14, i64 %25
  %27 = getelementptr i32, ptr %26, i64 -1
  %28 = load i32, ptr %27, align 4, !tbaa !9
  %29 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %13, i32 noundef %28) #24
  %30 = icmp eq ptr %21, %29
  br i1 %30, label %50, label %31

31:                                               ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2908, ptr noundef nonnull @.str.12) #27
  %32 = load ptr, ptr @cfun, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %38 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %39 = getelementptr inbounds i32, ptr %38, i64 %8
  %40 = load i32, ptr %39, align 4, !tbaa !9
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !9
  %44 = getelementptr inbounds i32, ptr %38, i64 %22
  %45 = load i32, ptr %44, align 4, !tbaa !9
  %46 = sext i32 %45 to i64
  %47 = getelementptr i32, ptr %37, i64 %46
  %48 = getelementptr i32, ptr %47, i64 -1
  %49 = load i32, ptr %48, align 4, !tbaa !9
  br label %50

50:                                               ; preds = %7, %31
  %51 = phi i32 [ %28, %7 ], [ %49, %31 ]
  %52 = phi i32 [ %20, %7 ], [ %43, %31 ]
  %53 = phi ptr [ %13, %7 ], [ %36, %31 ]
  %54 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %53, i32 noundef %52) #24
  %55 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %53, i32 noundef %51) #24
  call void @get_ebb_head_tail(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %1, ptr noundef nonnull %2) #27
  %56 = load ptr, ptr %1, align 8, !tbaa !5
  %57 = load ptr, ptr %2, align 8, !tbaa !5
  %58 = call i32 @no_real_insns_p(ptr noundef %56, ptr noundef %57) #27
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load ptr, ptr %1, align 8, !tbaa !5
  %62 = load ptr, ptr %2, align 8, !tbaa !5
  %63 = call i32 @set_priorities(ptr noundef %61, ptr noundef %62) #27
  %64 = load i32, ptr @rgn_n_insns, align 4, !tbaa !9
  %65 = add nsw i32 %64, %63
  store i32 %65, ptr @rgn_n_insns, align 4, !tbaa !9
  br label %66

66:                                               ; preds = %50, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  %67 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %22, %68
  br i1 %69, label %7, label %70, !llvm.loop !123

70:                                               ; preds = %66
  %71 = load ptr, ptr @current_sched_info, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.haifa_sched_info, ptr %71, i64 0, i32 13
  %73 = load i32, ptr %72, align 4, !tbaa !70
  %74 = add nsw i32 %73, 1
  br label %75

75:                                               ; preds = %70, %0
  %76 = phi i32 [ %74, %70 ], [ 1, %0 ]
  %77 = phi ptr [ %71, %70 ], [ %3, %0 ]
  %78 = getelementptr inbounds %struct.haifa_sched_info, ptr %77, i64 0, i32 13
  store i32 %76, ptr %78, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare i32 @no_real_insns_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @set_priorities(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_rgn_init(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.param_info, ptr %2, i64 81, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !37
  %5 = mul nsw i32 %4, 100
  store i32 %5, ptr @min_spec_prob, align 4, !tbaa !9
  store i32 0, ptr @nr_inter, align 4, !tbaa !9
  store i32 0, ptr @nr_spec, align 4, !tbaa !9
  tail call void @extend_regions() #24
  %6 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  store i32 -1, ptr %6, align 4, !tbaa !9
  %7 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 -1, ptr %7, align 4, !tbaa !9
  %8 = icmp eq i8 %0, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load ptr, ptr @cfun, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !36
  %15 = icmp ne i32 %14, 3
  %16 = load i32, ptr @flag_schedule_interblock, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = tail call fastcc i32 @is_cfg_nonregular() #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %9, %1
  %23 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  tail call fastcc void @find_single_block_region(i8 noundef zeroext %23) #24
  br label %36

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @calculate_dominance_info(i32 noundef 1) #27
  br label %28

28:                                               ; preds = %27, %24
  tail call fastcc void @find_rgns() #24
  %29 = load i32, ptr @sched_verbose, align 4, !tbaa !9
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @debug_regions() #24
  br label %32

32:                                               ; preds = %31, %28
  %33 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @free_dominance_info(i32 noundef 1) #27
  br label %36

36:                                               ; preds = %32, %35, %22
  %37 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load ptr, ptr @cfun, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !36
  %45 = icmp sgt i32 %37, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39, %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3073, ptr noundef nonnull @.str.12) #27
  %47 = load i32, ptr @nr_regions, align 4, !tbaa !9
  br label %48

48:                                               ; preds = %39, %46
  %49 = phi i32 [ %37, %39 ], [ %47, %46 ]
  %50 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %51 = sext i32 %49 to i64
  %52 = getelementptr %struct.region, ptr %50, i64 %51
  %53 = getelementptr %struct.region, ptr %52, i64 -1
  %54 = getelementptr %struct.region, ptr %52, i64 -1, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !13
  %56 = load i32, ptr %53, align 4, !tbaa !11
  %57 = add nsw i32 %56, %55
  %58 = getelementptr inbounds %struct.region, ptr %50, i64 %51, i32 1
  store i32 %57, ptr %58, align 4, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extend_regions() local_unnamed_addr #3 {
  %1 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr @xrealloc(ptr noundef %1, i64 noundef %8) #27
  store ptr %9, ptr @rgn_table, align 8, !tbaa !5
  %10 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %11 = load ptr, ptr @cfun, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !36
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr @xrealloc(ptr noundef %10, i64 noundef %17) #27
  store ptr %18, ptr @rgn_bb_table, align 8, !tbaa !5
  %19 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %20 = load ptr, ptr @cfun, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !39
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr @xrealloc(ptr noundef %19, i64 noundef %26) #27
  store ptr %27, ptr @block_to_bb, align 8, !tbaa !5
  %28 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %29 = load ptr, ptr @cfun, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !39
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 2
  %36 = tail call ptr @xrealloc(ptr noundef %28, i64 noundef %35) #27
  store ptr %36, ptr @containing_rgn, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @is_cfg_nonregular() unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !124
  %2 = icmp eq ptr %1, null
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %140

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @current_function_has_exception_handlers() #27
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %140

9:                                                ; preds = %6
  %10 = load ptr, ptr @cfun, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %140, label %19

19:                                               ; preds = %9, %103
  %20 = phi ptr [ %104, %103 ], [ %10, %9 ]
  %21 = phi ptr [ %106, %103 ], [ %15, %9 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %103, label %26

26:                                               ; preds = %19, %97
  %27 = phi ptr [ %99, %97 ], [ %24, %19 ]
  %28 = load ptr, ptr %22, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %101, label %34

34:                                               ; preds = %26
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = tail call i32 @computed_jump_p(ptr noundef nonnull %27) #27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %140

41:                                               ; preds = %38
  %42 = load i32, ptr %27, align 8
  %43 = and i32 %42, 65535
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i32 [ %43, %41 ], [ %36, %34 ]
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %97

48:                                               ; preds = %44
  %49 = tail call ptr @find_reg_note(ptr noundef nonnull %27, i32 noundef 10, ptr noundef null) #27
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %27) #27
  %53 = icmp eq ptr %52, null
  br i1 %53, label %140, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %140

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1, i32 1, i32 0, i32 0, i64 2
  %60 = load ptr, ptr %59, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @find_reg_note(ptr noundef nonnull %52, i32 noundef 9, ptr noundef %62) #27
  %66 = icmp eq ptr %65, null
  br i1 %66, label %140, label %67

67:                                               ; preds = %64, %58
  %68 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %73, label %140

73:                                               ; preds = %67
  %74 = load i32, ptr %27, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -7
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %140

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !54
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 23
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = tail call ptr @single_set_2(ptr noundef nonnull %27, ptr noundef nonnull %80) #27
  %86 = icmp eq ptr %85, null
  br i1 %86, label %140, label %87

87:                                               ; preds = %78, %84
  %88 = phi ptr [ %85, %84 ], [ %80, %78 ]
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !54
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  br i1 %93, label %94, label %140

94:                                               ; preds = %87
  %95 = tail call i32 @dead_or_set_p(ptr noundef nonnull %52, ptr noundef nonnull %90) #27
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %140, label %97

97:                                               ; preds = %48, %44, %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %26, !llvm.loop !137

101:                                              ; preds = %26, %97
  %102 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %103

103:                                              ; preds = %101, %19
  %104 = phi ptr [ %102, %101 ], [ %20, %19 ]
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !134
  %107 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !19
  %109 = getelementptr inbounds %struct.control_flow_graph, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = icmp eq ptr %106, %110
  br i1 %111, label %112, label %19, !llvm.loop !138

112:                                              ; preds = %103
  %113 = load ptr, ptr %108, align 8, !tbaa !133
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !134
  %116 = icmp eq ptr %115, %106
  br i1 %116, label %140, label %117

117:                                              ; preds = %112, %131
  %118 = phi ptr [ %132, %131 ], [ %104, %112 ]
  %119 = phi ptr [ %134, %131 ], [ %115, %112 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !139
  %121 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %120) #24
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %117
  %124 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %119) #24, !range !25
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = tail call fastcc ptr @single_pred(ptr noundef nonnull %119) #24
  %128 = icmp eq ptr %127, %119
  br i1 %128, label %140, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %131

131:                                              ; preds = %129, %123
  %132 = phi ptr [ %130, %129 ], [ %118, %123 ]
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !134
  %135 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !19
  %137 = getelementptr inbounds %struct.control_flow_graph, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = icmp eq ptr %134, %138
  br i1 %139, label %140, label %117, !llvm.loop !140

140:                                              ; preds = %94, %73, %87, %84, %51, %54, %64, %67, %38, %126, %117, %131, %9, %112, %6, %0
  %141 = phi i32 [ 1, %0 ], [ 1, %6 ], [ 0, %112 ], [ 0, %9 ], [ 1, %126 ], [ 1, %117 ], [ 0, %131 ], [ 1, %38 ], [ 1, %67 ], [ 1, %64 ], [ 1, %54 ], [ 1, %51 ], [ 1, %84 ], [ 1, %87 ], [ 1, %73 ], [ 1, %94 ]
  ret i32 %141
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_single_block_region(i8 noundef zeroext %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  store i32 0, ptr @nr_regions, align 4, !tbaa !9
  %4 = icmp eq i8 %0, 0
  br i1 %4, label %131, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @profile_info, align 8, !tbaa !5
  %7 = icmp ne ptr %6, null
  %8 = load i32, ptr @flag_branch_probabilities, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  %11 = load ptr, ptr @compiler_params, align 8
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 51, i32 1
  %13 = getelementptr inbounds %struct.param_info, ptr %11, i64 52, i32 1
  %14 = select i1 %10, ptr %12, ptr %13
  %15 = load i32, ptr %14, align 8, !tbaa !37
  %16 = mul nsw i32 %15, 100
  %17 = load ptr, ptr @cfun, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !19
  %20 = load ptr, ptr %19, align 8, !tbaa !133
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %184, label %26

26:                                               ; preds = %5
  %27 = getelementptr inbounds i8, ptr %3, i64 8
  br label %28

28:                                               ; preds = %26, %120
  %29 = phi i32 [ 0, %26 ], [ %124, %120 ]
  %30 = phi ptr [ %22, %26 ], [ %121, %120 ]
  %31 = phi i32 [ 0, %26 ], [ %122, %120 ]
  %32 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %33 = sext i32 %29 to i64
  %34 = getelementptr inbounds %struct.region, ptr %32, i64 %33
  store i32 0, ptr %34, align 4, !tbaa !11
  %35 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.region, ptr %32, i64 %36, i32 1
  store i32 %31, ptr %37, align 4, !tbaa !13
  %38 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.region, ptr %32, i64 %39, i32 2
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, -2
  store i8 %42, ptr %40, align 4
  %43 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %44 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.region, ptr %43, i64 %45, i32 2
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, -3
  store i8 %48, ptr %46, align 4
  %49 = sext i32 %31 to i64
  br label %50

50:                                               ; preds = %119, %28
  %51 = phi i64 [ %76, %119 ], [ %49, %28 ]
  %52 = phi ptr [ %118, %119 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !29
  %55 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %56 = getelementptr inbounds i32, ptr %55, i64 %51
  store i32 %54, ptr %56, align 4, !tbaa !9
  %57 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %58 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.region, ptr %57, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !11
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 4, !tbaa !11
  %63 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %64 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %65 = sext i32 %54 to i64
  %66 = getelementptr inbounds i32, ptr %64, i64 %65
  store i32 %63, ptr %66, align 4, !tbaa !9
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds %struct.region, ptr %57, i64 %67, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !13
  %70 = trunc i64 %51 to i32
  %71 = sub nsw i32 %70, %69
  %72 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %73 = load i32, ptr %53, align 8, !tbaa !29
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  store i32 %71, ptr %75, align 4, !tbaa !9
  %76 = add i64 %51, 1
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !134
  %79 = load ptr, ptr @cfun, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !19
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !46
  %84 = icmp eq ptr %78, %83
  br i1 %84, label %120, label %85

85:                                               ; preds = %50
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !54
  %88 = load ptr, ptr %87, align 8, !tbaa !141
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 12
  br i1 %91, label %120, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 1
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %93) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  store ptr %94, ptr %27, align 8, !tbaa.struct !24
  %95 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %2) #24, !range !25
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92, %103
  %98 = load ptr, ptr %2, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !142
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %104 = load i32, ptr %3, align 8
  %105 = load ptr, ptr %27, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %2) #24, !range !25
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %97, !llvm.loop !143

108:                                              ; preds = %103, %92
  %109 = load ptr, ptr %2, align 8, !tbaa !5
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load ptr, ptr %77, align 8, !tbaa !134
  br label %120

113:                                              ; preds = %97, %108
  %114 = phi ptr [ %109, %108 ], [ %98, %97 ]
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 8
  %116 = load i32, ptr %115, align 4, !tbaa !144
  %117 = icmp sgt i32 %116, %16
  %118 = load ptr, ptr %77, align 8, !tbaa !134
  br i1 %117, label %119, label %120

119:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  br label %50

120:                                              ; preds = %85, %50, %113, %111
  %121 = phi ptr [ %112, %111 ], [ %118, %113 ], [ %78, %50 ], [ %78, %85 ]
  %122 = trunc i64 %76 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  %123 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr @nr_regions, align 4, !tbaa !9
  %125 = load ptr, ptr @cfun, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !19
  %128 = getelementptr inbounds %struct.control_flow_graph, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  %130 = icmp eq ptr %121, %129
  br i1 %130, label %184, label %28, !llvm.loop !145

131:                                              ; preds = %1
  %132 = load ptr, ptr @cfun, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  %135 = load ptr, ptr %134, align 8, !tbaa !133
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %135, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !134
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %134, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !46
  %140 = icmp eq ptr %137, %139
  br i1 %140, label %184, label %141

141:                                              ; preds = %131, %141
  %142 = phi i32 [ %175, %141 ], [ 0, %131 ]
  %143 = phi ptr [ %177, %141 ], [ %137, %131 ]
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 9
  %145 = load i32, ptr %144, align 8, !tbaa !29
  %146 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %147 = sext i32 %142 to i64
  %148 = getelementptr inbounds i32, ptr %146, i64 %147
  store i32 %145, ptr %148, align 4, !tbaa !9
  %149 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %150 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.region, ptr %149, i64 %151
  store i32 1, ptr %152, align 4, !tbaa !11
  %153 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.region, ptr %149, i64 %154, i32 1
  store i32 %153, ptr %155, align 4, !tbaa !13
  %156 = getelementptr inbounds %struct.region, ptr %149, i64 %154, i32 2
  %157 = load i8, ptr %156, align 4
  %158 = and i8 %157, -2
  store i8 %158, ptr %156, align 4
  %159 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %160 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.region, ptr %159, i64 %161, i32 2
  %163 = load i8, ptr %162, align 4
  %164 = and i8 %163, -3
  store i8 %164, ptr %162, align 4
  %165 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %166 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %167 = load i32, ptr %144, align 8, !tbaa !29
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, ptr %166, i64 %168
  store i32 %165, ptr %169, align 4, !tbaa !9
  %170 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %171 = load i32, ptr %144, align 8, !tbaa !29
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, ptr %170, i64 %172
  store i32 0, ptr %173, align 4, !tbaa !9
  %174 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr @nr_regions, align 4, !tbaa !9
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %143, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !134
  %178 = load ptr, ptr @cfun, align 8, !tbaa !5
  %179 = getelementptr inbounds %struct.function, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !19
  %181 = getelementptr inbounds %struct.control_flow_graph, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !46
  %183 = icmp eq ptr %177, %182
  br i1 %183, label %184, label %141, !llvm.loop !146

184:                                              ; preds = %120, %141, %5, %131
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_rgns() unnamed_addr #3 {
  %1 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %2 = icmp ne i8 %1, 0
  %3 = load i32, ptr @flag_sel_sched_pipelining, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void @sel_find_rgns() #27
  br label %8

7:                                                ; preds = %0
  tail call fastcc void @haifa_find_rgns() #24
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_rgn_finish() local_unnamed_addr #3 {
  %1 = load i32, ptr @reload_completed, align 4, !tbaa !9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @reposition_prologue_and_epilogue_notes() #27
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @sched_verbose, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @reload_completed, align 4, !tbaa !9
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @flag_schedule_interblock, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %15 = load i32, ptr @nr_inter, align 4, !tbaa !9
  %16 = load i32, ptr @nr_spec, align 4, !tbaa !9
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.45, i32 noundef %15, i32 noundef %16) #24
  br label %22

18:                                               ; preds = %7
  %19 = load i32, ptr @nr_inter, align 4, !tbaa !9
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3098, ptr noundef nonnull @.str.12) #27
  br label %22

22:                                               ; preds = %21, %18, %13
  %23 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %24 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %23)
  br label %25

25:                                               ; preds = %22, %4
  store i32 0, ptr @nr_regions, align 4, !tbaa !9
  %26 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  tail call void @free(ptr noundef %26) #24
  store ptr null, ptr @rgn_table, align 8, !tbaa !5
  %27 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  tail call void @free(ptr noundef %27) #24
  store ptr null, ptr @rgn_bb_table, align 8, !tbaa !5
  %28 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  tail call void @free(ptr noundef %28) #24
  store ptr null, ptr @block_to_bb, align 8, !tbaa !5
  %29 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  tail call void @free(ptr noundef %29) #24
  store ptr null, ptr @containing_rgn, align 8, !tbaa !5
  %30 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  tail call void @free(ptr noundef %30) #24
  store ptr null, ptr @ebb_head, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rgn_setup_region(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.region, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !11
  store i32 %5, ptr @current_nr_blocks, align 4, !tbaa !9
  %6 = getelementptr inbounds %struct.region, ptr %2, i64 %3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !13
  store i32 %7, ptr @current_blocks, align 4, !tbaa !9
  %8 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %9 = add nsw i32 %5, 1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr @xrealloc(ptr noundef %8, i64 noundef %11) #27
  store ptr %12, ptr @ebb_head, align 8, !tbaa !5
  %13 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1, %15
  %16 = phi i64 [ %21, %15 ], [ 0, %1 ]
  %17 = load i32, ptr @current_blocks, align 4, !tbaa !9
  %18 = trunc i64 %16 to i32
  %19 = add nsw i32 %17, %18
  %20 = getelementptr inbounds i32, ptr %12, i64 %16
  store i32 %19, ptr %20, align 4, !tbaa !9
  %21 = add nuw nsw i64 %16, 1
  %22 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %16, %23
  br i1 %24, label %15, label %25, !llvm.loop !147

25:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_rgn_compute_dependencies(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.region, ptr %2, i64 %3, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 1, ptr @sched_emulate_haifa_p, align 4, !tbaa !9
  br label %12

12:                                               ; preds = %11, %8
  tail call void @init_deps_global() #27
  %13 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, 184
  %16 = tail call ptr @xmalloc(i64 noundef %15) #27
  store ptr %16, ptr @bb_deps, align 8, !tbaa !5
  %17 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %12 ]
  %21 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.deps, ptr %21, i64 %20
  tail call void @init_deps(ptr noundef %22, i8 noundef zeroext 0) #27
  %23 = add nuw nsw i64 %20, 1
  %24 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %19, label %27, !llvm.loop !148

27:                                               ; preds = %19, %12
  %28 = load i32, ptr @sched_max_luid, align 4, !tbaa !9
  %29 = tail call ptr @sbitmap_alloc(i32 noundef %28) #27
  store ptr %29, ptr @insn_referenced, align 8, !tbaa !5
  tail call void @sbitmap_zero(ptr noundef %29) #27
  %30 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %32
  %33 = phi i32 [ %34, %32 ], [ 0, %27 ]
  tail call fastcc void @compute_block_dependences(i32 noundef %33) #24
  %34 = add nuw nsw i32 %33, 1
  %35 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %32, label %37, !llvm.loop !149

37:                                               ; preds = %32, %27
  %38 = load ptr, ptr @insn_referenced, align 8, !tbaa !5
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  tail call void @free(ptr noundef %39) #24
  tail call void @free(ptr noundef %38) #24
  tail call fastcc void @free_pending_lists() #24
  tail call void @finish_deps_global() #27
  %40 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  tail call void @free(ptr noundef %40) #24
  %41 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.region, ptr %41, i64 %3, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = or i8 %43, 1
  store i8 %44, ptr %42, align 4
  %45 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %37
  store i32 0, ptr @sched_emulate_haifa_p, align 4, !tbaa !9
  br label %55

48:                                               ; preds = %1
  %49 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3179, ptr noundef nonnull @.str.12) #27
  br label %55

55:                                               ; preds = %37, %47, %54, %51, %48
  ret void
}

; Function Attrs: optsize
declare void @init_deps_global() local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_block_dependences(i32 noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.deps, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #28
  %5 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.deps, ptr %5, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %4, ptr noundef nonnull align 8 dereferenceable(184) %7, i64 184, i1 false), !tbaa.struct !150
  %8 = load ptr, ptr @cfun, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %14 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %15 = getelementptr inbounds i32, ptr %14, i64 %6
  %16 = load i32, ptr %15, align 4, !tbaa !9
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %13, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !9
  %20 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %19) #24
  %21 = add nsw i32 %0, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %14, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = getelementptr i32, ptr %13, i64 %25
  %27 = getelementptr i32, ptr %26, i64 -1
  %28 = load i32, ptr %27, align 4, !tbaa !9
  %29 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %28) #24
  %30 = icmp eq ptr %20, %29
  br i1 %30, label %50, label %31

31:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2723, ptr noundef nonnull @.str.12) #27
  %32 = load ptr, ptr @cfun, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %38 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %39 = getelementptr inbounds i32, ptr %38, i64 %6
  %40 = load i32, ptr %39, align 4, !tbaa !9
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !9
  %44 = getelementptr inbounds i32, ptr %38, i64 %22
  %45 = load i32, ptr %44, align 4, !tbaa !9
  %46 = sext i32 %45 to i64
  %47 = getelementptr i32, ptr %37, i64 %46
  %48 = getelementptr i32, ptr %47, i64 -1
  %49 = load i32, ptr %48, align 4, !tbaa !9
  br label %50

50:                                               ; preds = %1, %31
  %51 = phi i32 [ %28, %1 ], [ %49, %31 ]
  %52 = phi i32 [ %19, %1 ], [ %43, %31 ]
  %53 = phi ptr [ %12, %1 ], [ %36, %31 ]
  %54 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %53, i32 noundef %52) #24
  %55 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %53, i32 noundef %51) #24
  call void @get_ebb_head_tail(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %2, ptr noundef nonnull %3) #27
  %56 = load ptr, ptr %2, align 8, !tbaa !5
  %57 = load ptr, ptr %3, align 8, !tbaa !5
  call void @sched_analyze(ptr noundef nonnull %4, ptr noundef %56, ptr noundef %57) #27
  %58 = call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load ptr, ptr %2, align 8, !tbaa !5
  %62 = load ptr, ptr %3, align 8, !tbaa !5
  call fastcc void @add_branch_dependences(ptr noundef %61, ptr noundef %62) #24
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  call fastcc void @propagate_deps(i32 noundef %0, ptr noundef nonnull %4) #24
  br label %67

67:                                               ; preds = %66, %63
  call void @free_deps(ptr noundef nonnull %4) #27
  %68 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 10), align 8, !tbaa !151
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %2, align 8, !tbaa !5
  %72 = load ptr, ptr %3, align 8, !tbaa !5
  call void %68(ptr noundef %71, ptr noundef %72) #27
  br label %73

73:                                               ; preds = %70, %67
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_pending_lists() unnamed_addr #3 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %13, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.deps, ptr %5, i64 %4
  tail call void @free_INSN_LIST_list(ptr noundef %6) #27
  %7 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.deps, ptr %7, i64 %4, i32 2
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %8) #27
  %9 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.deps, ptr %9, i64 %4, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %10) #27
  %11 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.deps, ptr %11, i64 %4, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %12) #27
  %13 = add nuw nsw i64 %4, 1
  %14 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %3, label %17, !llvm.loop !163

17:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @finish_deps_global() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_rgn_local_init(i32 noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %171

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  %7 = zext nneg i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #27
  store ptr %9, ptr @prob, align 8, !tbaa !5
  %10 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %11 = tail call ptr @sbitmap_vector_alloc(i32 noundef %10, i32 noundef %10) #27
  store ptr %11, ptr @dom, align 8, !tbaa !5
  %12 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  tail call void @sbitmap_vector_zero(ptr noundef %11, i32 noundef %12) #27
  store i32 0, ptr @rgn_nr_edges, align 4, !tbaa !9
  %13 = load ptr, ptr @cfun, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = load ptr, ptr %15, align 8, !tbaa !133
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %62, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds i8, ptr %3, i64 8
  br label %24

24:                                               ; preds = %22, %49
  %25 = phi ptr [ %18, %22 ], [ %51, %49 ]
  %26 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !29
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !9
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %35 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  store ptr %35, ptr %23, align 8, !tbaa.struct !24
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %35, ptr noundef nonnull %2) #24, !range !25
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33, %38
  %39 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !9
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @rgn_nr_edges, align 4, !tbaa !9
  %41 = sext i32 %39 to i64
  %42 = inttoptr i64 %41 to ptr
  %43 = load ptr, ptr %2, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 3
  store ptr %42, ptr %44, align 8, !tbaa !164
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %45 = load i32, ptr %3, align 8
  %46 = load ptr, ptr %23, align 8
  %47 = call fastcc zeroext i8 @ei_cond(i32 %45, ptr %46, ptr noundef nonnull %2) #24, !range !25
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %38, !llvm.loop !165

49:                                               ; preds = %38, %33, %24
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !134
  %52 = load ptr, ptr @cfun, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !19
  %55 = getelementptr inbounds %struct.control_flow_graph, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %51, %56
  br i1 %57, label %58, label %24, !llvm.loop !166

58:                                               ; preds = %49
  %59 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !9
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 3
  br label %62

62:                                               ; preds = %58, %6
  %63 = phi i64 [ %61, %58 ], [ 0, %6 ]
  %64 = tail call ptr @xmalloc(i64 noundef %63) #27
  store ptr %64, ptr @rgn_edges, align 8, !tbaa !5
  store i32 0, ptr @rgn_nr_edges, align 4, !tbaa !9
  %65 = load ptr, ptr @cfun, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !19
  %68 = load ptr, ptr %67, align 8, !tbaa !133
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !134
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %112, label %74

74:                                               ; preds = %62
  %75 = getelementptr inbounds i8, ptr %3, i64 8
  br label %76

76:                                               ; preds = %74, %101
  %77 = phi ptr [ %70, %74 ], [ %103, %101 ]
  %78 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !9
  %84 = icmp eq i32 %83, %0
  br i1 %84, label %85, label %101

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 1
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %86) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  store ptr %87, ptr %75, align 8, !tbaa.struct !24
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %2) #24, !range !25
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85, %90
  %91 = load ptr, ptr %2, align 8, !tbaa !5
  %92 = load ptr, ptr @rgn_edges, align 8, !tbaa !5
  %93 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !9
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr @rgn_nr_edges, align 4, !tbaa !9
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds ptr, ptr %92, i64 %95
  store ptr %91, ptr %96, align 8, !tbaa !5
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %97 = load i32, ptr %3, align 8
  %98 = load ptr, ptr %75, align 8
  %99 = call fastcc zeroext i8 @ei_cond(i32 %97, ptr %98, ptr noundef nonnull %2) #24, !range !25
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %90, !llvm.loop !167

101:                                              ; preds = %90, %85, %76
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !134
  %104 = load ptr, ptr @cfun, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !19
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %110, label %76, !llvm.loop !168

110:                                              ; preds = %101
  %111 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !9
  br label %112

112:                                              ; preds = %110, %62
  %113 = phi i32 [ %111, %110 ], [ 0, %62 ]
  %114 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %115 = tail call ptr @sbitmap_vector_alloc(i32 noundef %114, i32 noundef %113) #27
  store ptr %115, ptr @pot_split, align 8, !tbaa !5
  %116 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  tail call void @sbitmap_vector_zero(ptr noundef %115, i32 noundef %116) #27
  %117 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %118 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !9
  %119 = tail call ptr @sbitmap_vector_alloc(i32 noundef %117, i32 noundef %118) #27
  store ptr %119, ptr @ancestor_edges, align 8, !tbaa !5
  %120 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  tail call void @sbitmap_vector_zero(ptr noundef %119, i32 noundef %120) #27
  %121 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %112, %123
  %124 = phi i32 [ %125, %123 ], [ 0, %112 ]
  tail call fastcc void @compute_dom_prob_ps(i32 noundef %124) #24
  %125 = add nuw nsw i32 %124, 1
  %126 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %123, label %128, !llvm.loop !169

128:                                              ; preds = %123, %112
  %129 = load ptr, ptr @cfun, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !19
  %132 = load ptr, ptr %131, align 8, !tbaa !133
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !134
  %135 = getelementptr inbounds %struct.control_flow_graph, ptr %131, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = icmp eq ptr %134, %136
  br i1 %137, label %170, label %138

138:                                              ; preds = %128
  %139 = getelementptr inbounds i8, ptr %3, i64 8
  br label %140

140:                                              ; preds = %138, %161
  %141 = phi ptr [ %134, %138 ], [ %163, %161 ]
  %142 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 9
  %144 = load i32, ptr %143, align 8, !tbaa !29
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, ptr %142, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !9
  %148 = icmp eq i32 %147, %0
  br i1 %148, label %149, label %161

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 1
  %151 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %150) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  store ptr %151, ptr %139, align 8, !tbaa.struct !24
  %152 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %151, ptr noundef nonnull %2) #24, !range !25
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149, %154
  %155 = load ptr, ptr %2, align 8, !tbaa !5
  %156 = getelementptr inbounds %struct.edge_def, ptr %155, i64 0, i32 3
  store ptr null, ptr %156, align 8, !tbaa !164
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %157 = load i32, ptr %3, align 8
  %158 = load ptr, ptr %139, align 8
  %159 = call fastcc zeroext i8 @ei_cond(i32 %157, ptr %158, ptr noundef nonnull %2) #24, !range !25
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %154, !llvm.loop !170

161:                                              ; preds = %154, %149, %140
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %141, i64 0, i32 6
  %163 = load ptr, ptr %162, align 8, !tbaa !134
  %164 = load ptr, ptr @cfun, align 8, !tbaa !5
  %165 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !19
  %167 = getelementptr inbounds %struct.control_flow_graph, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !46
  %169 = icmp eq ptr %163, %168
  br i1 %169, label %170, label %140, !llvm.loop !171

170:                                              ; preds = %161, %128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  br label %171

171:                                              ; preds = %170, %1
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_dom_prob_ps(i32 noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %6 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = load i32, ptr @current_blocks, align 4, !tbaa !9
  %11 = add nsw i32 %10, %0
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1410, ptr noundef nonnull @.str.12) #27
  br label %14

14:                                               ; preds = %1, %13
  %15 = icmp eq i32 %0, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = load ptr, ptr @dom, align 8, !tbaa !5
  %18 = getelementptr inbounds ptr, ptr %17, i64 %7
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  tail call fastcc void @SET_BIT(ptr noundef %19, i32 noundef 0) #24
  %20 = load ptr, ptr @prob, align 8, !tbaa !5
  %21 = getelementptr inbounds i32, ptr %20, i64 %7
  store i32 10000, ptr %21, align 4, !tbaa !9
  br label %145

22:                                               ; preds = %14
  %23 = load ptr, ptr @prob, align 8, !tbaa !5
  %24 = getelementptr inbounds i32, ptr %23, i64 %7
  store i32 0, ptr %24, align 4, !tbaa !9
  %25 = load ptr, ptr @dom, align 8, !tbaa !5
  %26 = getelementptr inbounds ptr, ptr %25, i64 %7
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  tail call void @sbitmap_ones(ptr noundef %27) #27
  %28 = load ptr, ptr @cfun, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %34 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %34, i64 %7
  %36 = load i32, ptr %35, align 4, !tbaa !9
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %33, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !9
  %40 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %32, i32 noundef %39) #24
  %41 = tail call fastcc ptr @ei_start_1(ptr noundef %40) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !23
  %42 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %41, ptr %42, align 8, !tbaa.struct !24
  %43 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %41, ptr noundef nonnull %3) #24, !range !25
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %119, label %45

45:                                               ; preds = %22
  %46 = getelementptr inbounds i8, ptr %5, i64 8
  br label %47

47:                                               ; preds = %45, %114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #28
  %48 = load ptr, ptr %3, align 8, !tbaa !5
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = load ptr, ptr @cfun, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = load ptr, ptr %52, align 8, !tbaa !133
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %114, label %55

55:                                               ; preds = %47
  %56 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !29
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %56, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !9
  %62 = load ptr, ptr @dom, align 8, !tbaa !5
  %63 = getelementptr inbounds ptr, ptr %62, i64 %7
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds ptr, ptr %62, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  tail call void @sbitmap_a_and_b(ptr noundef %64, ptr noundef %64, ptr noundef %67) #27
  %68 = load ptr, ptr @ancestor_edges, align 8, !tbaa !5
  %69 = getelementptr inbounds ptr, ptr %68, i64 %7
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds ptr, ptr %68, i64 %65
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  tail call void @sbitmap_a_or_b(ptr noundef %70, ptr noundef %70, ptr noundef %72) #27
  %73 = load ptr, ptr @ancestor_edges, align 8, !tbaa !5
  %74 = getelementptr inbounds ptr, ptr %73, i64 %7
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !164
  %78 = ptrtoint ptr %77 to i64
  %79 = trunc i64 %78 to i32
  tail call fastcc void @SET_BIT(ptr noundef %75, i32 noundef %79) #24
  %80 = load ptr, ptr @pot_split, align 8, !tbaa !5
  %81 = getelementptr inbounds ptr, ptr %80, i64 %7
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds ptr, ptr %80, i64 %65
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  tail call void @sbitmap_a_or_b(ptr noundef %82, ptr noundef %82, ptr noundef %84) #27
  %85 = load ptr, ptr %48, align 8, !tbaa !42
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  %87 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %86) #24
  store i32 0, ptr %5, align 8, !tbaa.struct !23
  store ptr %87, ptr %46, align 8, !tbaa.struct !24
  %88 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %87, ptr noundef nonnull %4) #24, !range !25
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %55, %90
  %91 = load ptr, ptr @pot_split, align 8, !tbaa !5
  %92 = getelementptr inbounds ptr, ptr %91, i64 %7
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = load ptr, ptr %4, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !164
  %97 = ptrtoint ptr %96 to i64
  %98 = trunc i64 %97 to i32
  tail call fastcc void @SET_BIT(ptr noundef %93, i32 noundef %98) #24
  call fastcc void @ei_next(ptr noundef nonnull %5) #24
  %99 = load i32, ptr %5, align 8
  %100 = load ptr, ptr %46, align 8
  %101 = call fastcc zeroext i8 @ei_cond(i32 %99, ptr %100, ptr noundef nonnull %4) #24, !range !25
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %90, !llvm.loop !172

103:                                              ; preds = %90, %55
  %104 = load ptr, ptr @prob, align 8, !tbaa !5
  %105 = getelementptr inbounds i32, ptr %104, i64 %65
  %106 = load i32, ptr %105, align 4, !tbaa !9
  %107 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  %108 = load i32, ptr %107, align 4, !tbaa !144
  %109 = mul nsw i32 %108, %106
  %110 = sdiv i32 %109, 10000
  %111 = getelementptr inbounds i32, ptr %104, i64 %7
  %112 = load i32, ptr %111, align 4, !tbaa !9
  %113 = add nsw i32 %110, %112
  store i32 %113, ptr %111, align 4, !tbaa !9
  br label %114

114:                                              ; preds = %47, %103
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %115 = load i32, ptr %2, align 8
  %116 = load ptr, ptr %42, align 8
  %117 = call fastcc zeroext i8 @ei_cond(i32 %115, ptr %116, ptr noundef nonnull %3) #24, !range !25
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %47, !llvm.loop !173

119:                                              ; preds = %114, %22
  %120 = load ptr, ptr @dom, align 8, !tbaa !5
  %121 = getelementptr inbounds ptr, ptr %120, i64 %7
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  tail call fastcc void @SET_BIT(ptr noundef %122, i32 noundef %0) #24
  %123 = load ptr, ptr @pot_split, align 8, !tbaa !5
  %124 = getelementptr inbounds ptr, ptr %123, i64 %7
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = load ptr, ptr @ancestor_edges, align 8, !tbaa !5
  %127 = getelementptr inbounds ptr, ptr %126, i64 %7
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  tail call void @sbitmap_difference(ptr noundef %125, ptr noundef %125, ptr noundef %128) #27
  %129 = load i32, ptr @sched_verbose, align 4, !tbaa !9
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %145

131:                                              ; preds = %119
  %132 = load ptr, ptr @sched_dump, align 8, !tbaa !5
  %133 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %134 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %135 = getelementptr inbounds i32, ptr %134, i64 %7
  %136 = load i32, ptr %135, align 4, !tbaa !9
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, ptr %133, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !9
  %140 = load ptr, ptr @prob, align 8, !tbaa !5
  %141 = getelementptr inbounds i32, ptr %140, i64 %7
  %142 = load i32, ptr %141, align 4, !tbaa !9
  %143 = sdiv i32 %142, 100
  %144 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.50, i32 noundef %0, i32 noundef %139, i32 noundef %143) #24
  br label %145

145:                                              ; preds = %119, %131, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @sched_rgn_local_free() local_unnamed_addr #17 {
  %1 = load ptr, ptr @prob, align 8, !tbaa !5
  tail call void @free(ptr noundef %1) #24
  %2 = load ptr, ptr @dom, align 8, !tbaa !5
  tail call void @free(ptr noundef %2) #24
  %3 = load ptr, ptr @pot_split, align 8, !tbaa !5
  tail call void @free(ptr noundef %3) #24
  %4 = load ptr, ptr @ancestor_edges, align 8, !tbaa !5
  tail call void @free(ptr noundef %4) #24
  %5 = load ptr, ptr @rgn_edges, align 8, !tbaa !5
  tail call void @free(ptr noundef %5) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @sched_rgn_local_finish() local_unnamed_addr #17 {
  %1 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @sched_rgn_local_free() #24
  br label %7

7:                                                ; preds = %6, %3, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @rgn_setup_common_sched_info() local_unnamed_addr #18 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @rgn_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store ptr @rgn_fix_recovery_cfg, ptr @rgn_common_sched_info, align 8, !tbaa !174
  store ptr @rgn_add_block, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 1), align 8, !tbaa !175
  store ptr @rgn_estimate_number_of_insns, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 2), align 8, !tbaa !56
  store i32 1, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @rgn_common_sched_info, i64 0, i32 4), align 8, !tbaa !112
  store ptr @rgn_common_sched_info, ptr @common_sched_info, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rgn_fix_recovery_cfg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !9
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %4, i64 %8
  store i32 %7, ptr %9, align 4, !tbaa !9
  %10 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %4, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = sext i32 %13 to i64
  %15 = getelementptr i32, ptr %10, i64 %14
  %16 = getelementptr i32, ptr %15, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %19 = sext i32 %17 to i64
  br label %20

20:                                               ; preds = %20, %3
  %21 = phi i64 [ %22, %20 ], [ %19, %3 ]
  %22 = add nsw i64 %21, -1
  %23 = getelementptr inbounds i32, ptr %18, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %20, !llvm.loop !176

26:                                               ; preds = %20
  %27 = trunc i64 %22 to i32
  %28 = load i32, ptr %15, align 4, !tbaa !9
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3458, ptr noundef nonnull @.str.12) #27
  %31 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %32 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %33 = getelementptr inbounds i32, ptr %32, i64 %5
  %34 = load i32, ptr %33, align 4, !tbaa !9
  %35 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %26, %30
  %37 = phi ptr [ %18, %26 ], [ %35, %30 ]
  %38 = phi i32 [ %7, %26 ], [ %34, %30 ]
  %39 = phi ptr [ %10, %26 ], [ %31, %30 ]
  %40 = sext i32 %38 to i64
  %41 = getelementptr i32, ptr %39, i64 %40
  %42 = getelementptr i32, ptr %41, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !9
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %45, %36
  %46 = phi i64 [ %47, %45 ], [ %44, %36 ]
  %47 = add nsw i64 %46, -1
  %48 = getelementptr inbounds i32, ptr %37, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !9
  %50 = icmp eq i32 %49, %0
  br i1 %50, label %51, label %45, !llvm.loop !177

51:                                               ; preds = %45
  %52 = trunc i64 %46 to i32
  %53 = load i32, ptr %41, align 4, !tbaa !9
  %54 = icmp slt i32 %53, %52
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3464, ptr noundef nonnull @.str.12) #27
  br label %56

56:                                               ; preds = %51, %55
  %57 = icmp slt i32 %52, %27
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3466, ptr noundef nonnull @.str.12) #27
  br label %59

59:                                               ; preds = %56, %58
  %60 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %61 = shl i64 %46, 32
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i32, ptr %60, i64 %62
  %64 = getelementptr inbounds i32, ptr %63, i64 1
  %65 = sub i64 %22, %46
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %64, ptr align 4 %63, i64 %67, i1 false)
  %68 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %69 = getelementptr inbounds i32, ptr %68, i64 %62
  store i32 %2, ptr %69, align 4, !tbaa !9
  %70 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %71 = getelementptr inbounds i32, ptr %70, i64 %5
  %72 = load i32, ptr %71, align 4, !tbaa !9
  %73 = getelementptr inbounds i32, ptr %70, i64 %11
  %74 = load i32, ptr %73, align 4, !tbaa !9
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %59
  %77 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %78 = sext i32 %72 to i64
  br label %79

79:                                               ; preds = %76, %79
  %80 = phi i64 [ %78, %76 ], [ %81, %79 ]
  %81 = add nsw i64 %80, 1
  %82 = getelementptr inbounds i32, ptr %77, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !9
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !9
  %85 = load i32, ptr %73, align 4, !tbaa !9
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %81, %86
  br i1 %87, label %79, label %88, !llvm.loop !178

88:                                               ; preds = %79, %59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rgn_add_block(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #3 {
  tail call void @extend_regions() #24
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !29
  %5 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @not_in_df, i32 noundef %4) #27
  %6 = icmp eq ptr %1, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @cfun, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %30

14:                                               ; preds = %7, %2
  tail call void @rgn_make_new_region_out_of_new_block(ptr noundef nonnull %0) #24
  %15 = load ptr, ptr @cfun, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, %1
  %21 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %22 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %23 = sext i32 %22 to i64
  %24 = getelementptr %struct.region, ptr %21, i64 %23
  %25 = getelementptr %struct.region, ptr %24, i64 -1, i32 2
  %26 = zext i1 %20 to i8
  %27 = load i8, ptr %25, align 4
  %28 = and i8 %27, -2
  %29 = or disjoint i8 %28, %26
  store i8 %29, ptr %25, align 4
  br label %124

30:                                               ; preds = %7
  %31 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !29
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !9
  %37 = load i32, ptr %3, align 8, !tbaa !29
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %31, i64 %38
  store i32 %36, ptr %39, align 4, !tbaa !9
  %40 = load i32, ptr %32, align 8, !tbaa !29
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %31, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !9
  %44 = add nsw i32 %43, 1
  %45 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, ptr %45, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !9
  %49 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %50 = sext i32 %48 to i64
  br label %51

51:                                               ; preds = %51, %30
  %52 = phi i64 [ %53, %51 ], [ %50, %30 ]
  %53 = add nsw i64 %52, -1
  %54 = getelementptr inbounds i32, ptr %49, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !9
  %56 = icmp eq i32 %55, %40
  br i1 %56, label %57, label %51, !llvm.loop !179

57:                                               ; preds = %51
  %58 = trunc i64 %52 to i32
  %59 = sext i32 %43 to i64
  %60 = getelementptr inbounds i32, ptr %45, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !9
  %62 = icmp slt i32 %61, %58
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3413, ptr noundef nonnull @.str.12) #27
  %64 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %49, %57 ], [ %64, %63 ]
  %67 = shl i64 %52, 32
  %68 = ashr exact i64 %67, 32
  %69 = getelementptr inbounds i32, ptr %66, i64 %68
  %70 = getelementptr inbounds i32, ptr %69, i64 1
  %71 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %72 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.region, ptr %71, i64 %73, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !13
  %76 = sub i32 %75, %58
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %70, ptr align 4 %69, i64 %78, i1 false)
  %79 = load i32, ptr %3, align 8, !tbaa !29
  %80 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %81 = getelementptr inbounds i32, ptr %80, i64 %68
  store i32 %79, ptr %81, align 4, !tbaa !9
  %82 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %83 = icmp slt i32 %43, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %65
  %85 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  br label %86

86:                                               ; preds = %84, %86
  %87 = phi i64 [ %46, %84 ], [ %91, %86 ]
  %88 = getelementptr inbounds i32, ptr %85, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !9
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %88, align 4, !tbaa !9
  %91 = add nsw i64 %87, 1
  %92 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %87, %93
  br i1 %94, label %86, label %95, !llvm.loop !180

95:                                               ; preds = %86
  %96 = load i32, ptr %3, align 8, !tbaa !29
  br label %97

97:                                               ; preds = %95, %65
  %98 = phi i32 [ %96, %95 ], [ %79, %65 ]
  %99 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %100 = load i32, ptr %32, align 8, !tbaa !29
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %99, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !9
  %104 = sext i32 %98 to i64
  %105 = getelementptr inbounds i32, ptr %99, i64 %104
  store i32 %103, ptr %105, align 4, !tbaa !9
  %106 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds %struct.region, ptr %106, i64 %107, i32 2
  %109 = load i8, ptr %108, align 4
  %110 = or i8 %109, 2
  store i8 %110, ptr %108, align 4
  %111 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %112 = icmp slt i32 %103, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %97
  %114 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ %107, %113 ], [ %117, %115 ]
  %117 = add nsw i64 %116, 1
  %118 = getelementptr inbounds %struct.region, ptr %114, i64 %117, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !13
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !13
  %121 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %117, %122
  br i1 %123, label %115, label %124, !llvm.loop !181

124:                                              ; preds = %115, %97, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @rgn_estimate_number_of_insns(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %8) #24
  %10 = load ptr, ptr %4, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %12) #24
  %14 = sub nsw i32 %9, %13
  %15 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  br label %20

20:                                               ; preds = %17, %24
  %21 = phi ptr [ %10, %17 ], [ %31, %24 ]
  %22 = phi i32 [ %14, %17 ], [ %29, %24 ]
  %23 = icmp eq ptr %21, %19
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %21, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 7
  %28 = sext i1 %27 to i32
  %29 = add nsw i32 %22, %28
  %30 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %20, !llvm.loop !182

33:                                               ; preds = %24, %20, %1
  %34 = phi i32 [ %14, %1 ], [ %29, %24 ], [ %22, %20 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @rgn_setup_sched_infos() local_unnamed_addr #19 {
  %1 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @rgn_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @rgn_const_sel_sched_deps_info, i64 104, i1 false)
  br label %5

4:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) @rgn_sched_deps_info, ptr noundef nonnull align 8 dereferenceable(104) @rgn_const_sel_sched_deps_info, i64 104, i1 false)
  br label %5

5:                                                ; preds = %4, %3
  store ptr @rgn_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) @rgn_sched_info, ptr noundef nonnull align 8 dereferenceable(136) @rgn_const_sched_info, i64 136, i1 false)
  store ptr @rgn_sched_info, ptr @current_sched_info, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @schedule_insns() local_unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %22, label %7

7:                                                ; preds = %0
  tail call void @rgn_setup_common_sched_info() #24
  tail call void @rgn_setup_sched_infos() #24
  tail call void @haifa_sched_init() #27
  %8 = load i32, ptr @reload_completed, align 4, !tbaa !9
  %9 = trunc i32 %8 to i8
  tail call void @sched_rgn_init(i8 noundef zeroext %9) #24
  tail call fastcc void @bitmap_initialize_stat() #24
  tail call void @bitmap_clear(ptr noundef nonnull @not_in_df) #27
  %10 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7, %17
  %13 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %14 = tail call zeroext i8 @dbg_cnt(i32 noundef 30) #27
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @schedule_region(i32 noundef %13) #24
  br label %17

17:                                               ; preds = %12, %16
  %18 = add nuw nsw i32 %13, 1
  %19 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %12, label %21, !llvm.loop !183

21:                                               ; preds = %17, %7
  tail call void @sched_rgn_finish() #24
  tail call void @bitmap_clear(ptr noundef nonnull @not_in_df) #27
  tail call void @haifa_sched_finish() #27
  br label %22

22:                                               ; preds = %0, %21
  ret void
}

; Function Attrs: optsize
declare void @haifa_sched_init() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_initialize_stat() unnamed_addr #20 {
  store ptr null, ptr getelementptr inbounds (%struct.bitmap_head_def, ptr @not_in_df, i64 0, i32 3), align 8, !tbaa !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @not_in_df, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @schedule_region(i32 noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 0, ptr @rgn_n_insns, align 4, !tbaa !9
  tail call void @rgn_setup_region(i32 noundef %0) #24
  %7 = tail call zeroext i8 @sched_is_disabled_for_current_region_p() #24, !range !25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %167

9:                                                ; preds = %1
  tail call void @sched_rgn_compute_dependencies(i32 noundef %0) #24
  tail call void @sched_rgn_local_init(i32 noundef %0) #24
  tail call void @compute_priorities() #24
  %10 = load i32, ptr @rgn_n_insns, align 4, !tbaa !9
  tail call void @sched_extend_ready_list(i32 noundef %10) #27
  %11 = load i8, ptr @sched_pressure_p, align 1, !tbaa !54
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  br label %56

15:                                               ; preds = %9
  tail call void @sched_init_region_reg_pressure_info() #27
  %16 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %147

18:                                               ; preds = %15, %52
  %19 = phi i64 [ %33, %52 ], [ 0, %15 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %20 = load ptr, ptr @cfun, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %26 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %27 = getelementptr inbounds i32, ptr %26, i64 %19
  %28 = load i32, ptr %27, align 4, !tbaa !9
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %25, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !9
  %32 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %24, i32 noundef %31) #24
  %33 = add nuw nsw i64 %19, 1
  %34 = getelementptr inbounds i32, ptr %26, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %36 = sext i32 %35 to i64
  %37 = getelementptr i32, ptr %25, i64 %36
  %38 = getelementptr i32, ptr %37, i64 -1
  %39 = load i32, ptr %38, align 4, !tbaa !9
  %40 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %24, i32 noundef %39) #24
  call void @get_ebb_head_tail(ptr noundef %32, ptr noundef %40, ptr noundef nonnull %2, ptr noundef nonnull %3) #27
  %41 = load ptr, ptr %2, align 8, !tbaa !5
  %42 = load ptr, ptr %3, align 8, !tbaa !5
  %43 = call i32 @no_real_insns_p(ptr noundef %41, ptr noundef %42) #27
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %18
  %46 = icmp eq ptr %32, %40
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2962, ptr noundef nonnull @.str.12) #27
  br label %52

48:                                               ; preds = %18
  %49 = load ptr, ptr %2, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  call void @sched_setup_bb_reg_pressure_info(ptr noundef %32, ptr noundef %51) #27
  br label %52

52:                                               ; preds = %47, %45, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  %53 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %33, %54
  br i1 %55, label %18, label %56, !llvm.loop !185

56:                                               ; preds = %52, %13
  %57 = phi i32 [ %14, %13 ], [ %53, %52 ]
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %147

59:                                               ; preds = %56, %142
  %60 = phi i64 [ %75, %142 ], [ 0, %56 ]
  %61 = phi i32 [ %143, %142 ], [ 0, %56 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  %62 = load ptr, ptr @cfun, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !21
  %67 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %68 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %69 = getelementptr inbounds i32, ptr %68, i64 %60
  %70 = load i32, ptr %69, align 4, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %67, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !9
  %74 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %66, i32 noundef %73) #24
  %75 = add nuw nsw i64 %60, 1
  %76 = getelementptr inbounds i32, ptr %68, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !9
  %78 = sext i32 %77 to i64
  %79 = getelementptr i32, ptr %67, i64 %78
  %80 = getelementptr i32, ptr %79, i64 -1
  %81 = load i32, ptr %80, align 4, !tbaa !9
  %82 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %66, i32 noundef %81) #24
  call void @get_ebb_head_tail(ptr noundef %74, ptr noundef %82, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %83 = load ptr, ptr %5, align 8, !tbaa !5
  %84 = load ptr, ptr %6, align 8, !tbaa !5
  %85 = call i32 @no_real_insns_p(ptr noundef %83, ptr noundef %84) #27
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %59
  %88 = icmp eq ptr %74, %82
  br i1 %88, label %142, label %89

89:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2982, ptr noundef nonnull @.str.12) #27
  br label %142

90:                                               ; preds = %59
  %91 = load ptr, ptr %5, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  %94 = load ptr, ptr @current_sched_info, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.haifa_sched_info, ptr %94, i64 0, i32 8
  store ptr %93, ptr %95, align 8, !tbaa !186
  %96 = load ptr, ptr %6, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 2
  %98 = load ptr, ptr %97, align 8, !tbaa !54
  %99 = getelementptr inbounds %struct.haifa_sched_info, ptr %94, i64 0, i32 9
  store ptr %98, ptr %99, align 8, !tbaa !187
  call void @remove_notes(ptr noundef %91, ptr noundef %96) #27
  call void @unlink_bb_notes(ptr noundef %74, ptr noundef %82) #27
  %100 = trunc i64 %60 to i32
  store i32 %100, ptr @target_bb, align 4, !tbaa !9
  %101 = load i32, ptr @flag_schedule_interblock, align 4, !tbaa !9
  %102 = icmp ne i32 %101, 0
  %103 = load i32, ptr @current_nr_blocks, align 4
  %104 = icmp eq i32 %103, 1
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %108, label %106

106:                                              ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2995, ptr noundef nonnull @.str.12) #27
  %107 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  br label %108

108:                                              ; preds = %90, %106
  %109 = phi i32 [ %103, %90 ], [ %107, %106 ]
  %110 = icmp eq i32 %109, 1
  %111 = load ptr, ptr @current_sched_info, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.haifa_sched_info, ptr %111, i64 0, i32 12
  %113 = zext i1 %110 to i8
  %114 = load i8, ptr %112, align 8
  %115 = and i8 %114, -2
  %116 = or disjoint i8 %115, %113
  store i8 %116, ptr %112, align 8
  store ptr %74, ptr %4, align 8, !tbaa !5
  %117 = call zeroext i8 @dbg_cnt(i32 noundef 27) #27
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %135, label %119

119:                                              ; preds = %108
  call void @schedule_block(ptr noundef nonnull %4) #27
  %120 = load ptr, ptr @cfun, align 8, !tbaa !5
  %121 = getelementptr inbounds %struct.function, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !19
  %123 = getelementptr inbounds %struct.control_flow_graph, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !21
  %125 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %126 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %127 = getelementptr inbounds i32, ptr %126, i64 %60
  %128 = load i32, ptr %127, align 4, !tbaa !9
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %125, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !9
  %132 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %124, i32 noundef %131) #24
  %133 = icmp eq ptr %132, %74
  br i1 %133, label %135, label %134

134:                                              ; preds = %119
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3002, ptr noundef nonnull @.str.12) #27
  br label %135

135:                                              ; preds = %108, %134, %119
  %136 = phi ptr [ @sched_n_insns, %119 ], [ @sched_n_insns, %134 ], [ @rgn_n_insns, %108 ]
  %137 = load i32, ptr %136, align 4, !tbaa !9
  %138 = add nsw i32 %137, %61
  %139 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  call fastcc void @free_trg_info() #24
  br label %142

142:                                              ; preds = %135, %141, %89, %87
  %143 = phi i32 [ %61, %87 ], [ %61, %89 ], [ %138, %141 ], [ %138, %135 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  %144 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %75, %145
  br i1 %146, label %59, label %147, !llvm.loop !188

147:                                              ; preds = %142, %15, %56
  %148 = phi i32 [ 0, %56 ], [ 0, %15 ], [ %143, %142 ]
  %149 = load i32, ptr @rgn_n_insns, align 4, !tbaa !9
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3016, ptr noundef nonnull @.str.12) #27
  br label %152

152:                                              ; preds = %147, %151
  call void @sched_finish_ready_list() #27
  call void @sched_rgn_local_finish() #24
  %153 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152, %155
  %156 = phi i32 [ %157, %155 ], [ 0, %152 ]
  call fastcc void @free_block_dependencies(i32 noundef %156) #24
  %157 = add nuw nsw i32 %156, 1
  %158 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %155, label %160, !llvm.loop !189

160:                                              ; preds = %155, %152
  %161 = load i8, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !54
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = call zeroext i8 @deps_pools_are_empty_p() #27
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3028, ptr noundef nonnull @.str.12) #27
  br label %167

167:                                              ; preds = %166, %163, %160, %1
  ret void
}

; Function Attrs: optsize
declare void @haifa_sched_finish() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @rgn_make_new_region_out_of_new_block(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %3 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.region, ptr %2, i64 %4, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !13
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !9
  %12 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.region, ptr %2, i64 %13
  store i32 1, ptr %14, align 4, !tbaa !11
  %15 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.region, ptr %2, i64 %16, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -3
  store i8 %19, ptr %17, align 4
  %20 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %21 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.region, ptr %20, i64 %22, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 4
  %26 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %27 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %28 = load i32, ptr %7, align 8, !tbaa !29
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  store i32 %26, ptr %30, align 4, !tbaa !9
  %31 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %32 = load i32, ptr %7, align 8, !tbaa !29
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 0, ptr %34, align 4, !tbaa !9
  %35 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @nr_regions, align 4, !tbaa !9
  %37 = add nsw i32 %6, 1
  %38 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds %struct.region, ptr %38, i64 %39, i32 1
  store i32 %37, ptr %40, align 4, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_sched() #3 {
  %1 = load i32, ptr @flag_schedule_insns, align 4, !tbaa !9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @dbg_cnt(i32 noundef 28) #27
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_sched() #3 {
  %1 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @maybe_skip_selective_scheduling() #27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @run_selective_scheduling() #27
  br label %8

7:                                                ; preds = %3, %0
  tail call void @schedule_insns() #24
  br label %8

8:                                                ; preds = %7, %6
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_handle_sched2() #3 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !9
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @dbg_cnt(i32 noundef 26) #27
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i8 [ 0, %0 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_sched2() #3 {
  %1 = load i32, ptr @flag_selective_scheduling2, align 4, !tbaa !9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @maybe_skip_selective_scheduling() #27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @run_selective_scheduling() #27
  br label %12

7:                                                ; preds = %3, %0
  %8 = load i32, ptr @flag_sched2_use_superblocks, align 4, !tbaa !9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @schedule_ebbs() #27
  br label %12

11:                                               ; preds = %7
  tail call void @schedule_insns() #24
  br label %12

12:                                               ; preds = %10, %11, %6
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #3 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #3 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !190
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 687, ptr noundef nonnull @.str.12) #27
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @current_function_has_exception_handlers() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !139
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #24
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #24, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 655, ptr noundef nonnull @.str.12) #27
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !139
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #24
  ret ptr %7
}

; Function Attrs: optsize
declare void @sel_find_rgns() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @haifa_find_rgns() unnamed_addr #3 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #28
  store i32 0, ptr %1, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !39
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr @xmalloc(i64 noundef %18) #27
  %20 = load ptr, ptr @cfun, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !39
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 4) #27
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !192
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  %34 = tail call ptr @xmalloc(i64 noundef %33) #27
  %35 = load ptr, ptr @cfun, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !39
  %40 = tail call ptr @sbitmap_alloc(i32 noundef %39) #27
  tail call void @sbitmap_ones(ptr noundef %40) #27
  %41 = load ptr, ptr @cfun, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !39
  %46 = tail call ptr @sbitmap_alloc(i32 noundef %45) #27
  tail call void @sbitmap_zero(ptr noundef %46) #27
  %47 = load ptr, ptr @cfun, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !19
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !39
  %52 = tail call ptr @sbitmap_alloc(i32 noundef %51) #27
  tail call void @sbitmap_zero(ptr noundef %52) #27
  %53 = load ptr, ptr @cfun, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !39
  %58 = tail call ptr @sbitmap_alloc(i32 noundef %57) #27
  tail call void @sbitmap_zero(ptr noundef %58) #27
  %59 = load ptr, ptr @cfun, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !39
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %0, %65
  %66 = phi i64 [ %68, %65 ], [ 0, %0 ]
  %67 = getelementptr inbounds i32, ptr %19, i64 %66
  store i32 -1, ptr %67, align 4, !tbaa !9
  %68 = add nuw nsw i64 %66, 1
  %69 = load i32, ptr %62, align 8, !tbaa !39
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %65, label %72, !llvm.loop !193

72:                                               ; preds = %65, %0
  %73 = load ptr, ptr %61, align 8, !tbaa !133
  %74 = tail call fastcc ptr @single_succ(ptr noundef %73) #24
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 1
  %76 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %75) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !23
  %77 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %76, ptr %77, align 8, !tbaa.struct !24
  br label %78

78:                                               ; preds = %189, %72
  %79 = phi ptr [ %76, %72 ], [ %190, %189 ]
  %80 = phi i32 [ 0, %72 ], [ %191, %189 ]
  %81 = phi i32 [ -1, %72 ], [ %192, %189 ]
  %82 = phi i32 [ 0, %72 ], [ %193, %189 ]
  %83 = phi i8 [ 1, %72 ], [ %194, %189 ]
  %84 = tail call fastcc zeroext i8 @ei_end_p(i32 %80, ptr %79) #24, !range !25
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %78, %247
  %87 = phi ptr [ %252, %247 ], [ %79, %78 ]
  %88 = phi i32 [ %251, %247 ], [ %80, %78 ]
  %89 = phi i8 [ 0, %247 ], [ %83, %78 ]
  %90 = phi i32 [ %203, %247 ], [ %82, %78 ]
  br label %91

91:                                               ; preds = %86, %212
  %92 = phi ptr [ %87, %86 ], [ %217, %212 ]
  %93 = phi i32 [ %88, %86 ], [ %216, %212 ]
  %94 = phi i32 [ %90, %86 ], [ %203, %212 ]
  %95 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !164
  %98 = icmp eq ptr %97, null
  br i1 %98, label %195, label %99

99:                                               ; preds = %247, %212, %91, %78
  %100 = phi ptr [ %79, %78 ], [ %92, %91 ], [ %217, %212 ], [ %252, %247 ]
  %101 = phi i32 [ %80, %78 ], [ %93, %91 ], [ %216, %212 ], [ %251, %247 ]
  %102 = phi i8 [ %83, %78 ], [ %89, %91 ], [ %89, %212 ], [ 0, %247 ]
  %103 = phi i32 [ %82, %78 ], [ %94, %91 ], [ %203, %212 ], [ %203, %247 ]
  %104 = icmp sgt i32 %81, -1
  br i1 %104, label %105, label %176

105:                                              ; preds = %99
  %106 = zext nneg i32 %81 to i64
  br label %107

107:                                              ; preds = %105, %171
  %108 = phi i64 [ %106, %105 ], [ %119, %171 ]
  %109 = load i32, ptr %2, align 8
  %110 = load ptr, ptr %77, align 8
  %111 = tail call fastcc zeroext i8 @ei_end_p(i32 %109, ptr %110) #24, !range !25
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = tail call fastcc ptr @ei_edge(i32 %109, ptr %110) #24
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !164
  %117 = icmp eq ptr %116, null
  br i1 %117, label %187, label %118

118:                                              ; preds = %107, %113
  %119 = add nsw i64 %108, -1
  %120 = getelementptr inbounds %struct.edge_iterator, ptr %34, i64 %108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %120, i64 16, i1 false), !tbaa.struct !23
  %121 = load i32, ptr %2, align 8
  %122 = load ptr, ptr %77, align 8
  %123 = tail call fastcc ptr @ei_edge(i32 %121, ptr %122) #24
  %124 = load ptr, ptr %123, align 8, !tbaa !42
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 8, !tbaa !29
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 684, ptr noundef nonnull @.str.12) #27
  br label %129

129:                                              ; preds = %118, %128
  %130 = tail call fastcc ptr @ei_edge(i32 %121, ptr %122) #24
  %131 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !26
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !29
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 686, ptr noundef nonnull @.str.12) #27
  br label %137

137:                                              ; preds = %129, %136
  tail call fastcc void @RESET_BIT(ptr noundef %58, i32 noundef %134) #24
  %138 = sext i32 %134 to i64
  %139 = getelementptr inbounds i32, ptr %19, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !9
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %142, label %171

142:                                              ; preds = %137
  %143 = lshr i32 %140, 6
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds %struct.simple_bitmap_def, ptr %58, i64 0, i32 3, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !41
  %147 = and i32 %140, 63
  %148 = zext nneg i32 %147 to i64
  %149 = shl nuw i64 1, %148
  %150 = and i64 %146, %149
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %142
  %153 = sext i32 %126 to i64
  %154 = getelementptr inbounds i32, ptr %19, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !9
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 %140, ptr %154, align 4, !tbaa !9
  br label %171

158:                                              ; preds = %152
  %159 = sext i32 %155 to i64
  %160 = getelementptr inbounds i32, ptr %26, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !9
  %162 = zext nneg i32 %140 to i64
  %163 = getelementptr inbounds i32, ptr %26, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !9
  %165 = icmp sgt i32 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  tail call fastcc void @RESET_BIT(ptr noundef %40, i32 noundef %140) #24
  br label %171

167:                                              ; preds = %158
  %168 = icmp slt i32 %161, %164
  br i1 %168, label %169, label %171

169:                                              ; preds = %167
  tail call fastcc void @RESET_BIT(ptr noundef %40, i32 noundef %155) #24
  %170 = load i32, ptr %139, align 4, !tbaa !9
  store i32 %170, ptr %154, align 4, !tbaa !9
  br label %171

171:                                              ; preds = %157, %167, %169, %166, %142, %137
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %172 = icmp eq i64 %108, 0
  br i1 %172, label %173, label %107, !llvm.loop !194

173:                                              ; preds = %171
  %174 = load i32, ptr %2, align 8
  %175 = load ptr, ptr %77, align 8
  br label %176

176:                                              ; preds = %173, %99
  %177 = phi ptr [ %100, %99 ], [ %175, %173 ]
  %178 = phi i32 [ %101, %99 ], [ %174, %173 ]
  %179 = phi i32 [ %81, %99 ], [ -1, %173 ]
  %180 = tail call fastcc zeroext i8 @ei_end_p(i32 %178, ptr %177) #24, !range !25
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %304

182:                                              ; preds = %176
  %183 = tail call fastcc ptr @ei_edge(i32 %178, ptr %177) #24
  %184 = getelementptr inbounds %struct.edge_def, ptr %183, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !164
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %304

187:                                              ; preds = %113
  %188 = trunc i64 %108 to i32
  br label %189

189:                                              ; preds = %187, %182, %292
  %190 = phi ptr [ %303, %292 ], [ %177, %182 ], [ %110, %187 ]
  %191 = phi i32 [ 0, %292 ], [ %178, %182 ], [ %109, %187 ]
  %192 = phi i32 [ %293, %292 ], [ %179, %182 ], [ %188, %187 ]
  %193 = phi i32 [ %203, %292 ], [ %103, %182 ], [ %103, %187 ]
  %194 = phi i8 [ %89, %292 ], [ %102, %182 ], [ %102, %187 ]
  br label %78

195:                                              ; preds = %91
  %196 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %197 = load ptr, ptr %196, align 8, !tbaa !42
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %197, i64 0, i32 9
  %199 = load i32, ptr %198, align 8, !tbaa !29
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 703, ptr noundef nonnull @.str.12) #27
  br label %202

202:                                              ; preds = %195, %201
  tail call fastcc void @SET_BIT(ptr noundef %58, i32 noundef %199) #24
  %203 = add nsw i32 %94, 1
  %204 = sext i32 %199 to i64
  %205 = getelementptr inbounds i32, ptr %26, i64 %204
  store i32 %203, ptr %205, align 4, !tbaa !9
  %206 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %207 = getelementptr inbounds %struct.edge_def, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !26
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %208, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !29
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %220

212:                                              ; preds = %202, %260, %264, %287, %290, %288, %278
  %213 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %214 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %215 = getelementptr inbounds %struct.edge_def, ptr %214, i64 0, i32 3
  store ptr %213, ptr %215, align 8, !tbaa !164
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %216 = load i32, ptr %2, align 8
  %217 = load ptr, ptr %77, align 8
  %218 = tail call fastcc zeroext i8 @ei_end_p(i32 %216, ptr %217) #24, !range !25
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %91, label %99

220:                                              ; preds = %202
  %221 = lshr i32 %210, 6
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds %struct.simple_bitmap_def, ptr %58, i64 0, i32 3, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !41
  %225 = and i32 %210, 63
  %226 = zext nneg i32 %225 to i64
  %227 = shl nuw i64 1, %226
  %228 = and i64 %224, %227
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %255, label %230

230:                                              ; preds = %220
  tail call fastcc void @SET_BIT(ptr noundef %46, i32 noundef %210) #24
  %231 = getelementptr inbounds i32, ptr %19, i64 %204
  %232 = load i32, ptr %231, align 4, !tbaa !9
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 %210, ptr %231, align 4, !tbaa !9
  br label %247

235:                                              ; preds = %230
  %236 = sext i32 %232 to i64
  %237 = getelementptr inbounds i32, ptr %26, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !9
  %239 = sext i32 %210 to i64
  %240 = getelementptr inbounds i32, ptr %26, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !9
  %242 = icmp sgt i32 %238, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  tail call fastcc void @RESET_BIT(ptr noundef %40, i32 noundef %210) #24
  br label %247

244:                                              ; preds = %235
  %245 = icmp slt i32 %238, %241
  br i1 %245, label %246, label %247

246:                                              ; preds = %244
  tail call fastcc void @RESET_BIT(ptr noundef %40, i32 noundef %232) #24
  store i32 %210, ptr %231, align 4, !tbaa !9
  br label %247

247:                                              ; preds = %243, %246, %244, %234
  %248 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %249 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %250 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 3
  store ptr %248, ptr %250, align 8, !tbaa !164
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %251 = load i32, ptr %2, align 8
  %252 = load ptr, ptr %77, align 8
  %253 = tail call fastcc zeroext i8 @ei_end_p(i32 %251, ptr %252) #24, !range !25
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %86, label %99

255:                                              ; preds = %220
  %256 = sext i32 %210 to i64
  %257 = getelementptr inbounds i32, ptr %26, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !9
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %292, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds i32, ptr %19, i64 %256
  %262 = load i32, ptr %261, align 4, !tbaa !9
  %263 = icmp sgt i32 %262, -1
  br i1 %263, label %264, label %212

264:                                              ; preds = %260
  %265 = lshr i32 %262, 6
  %266 = zext nneg i32 %265 to i64
  %267 = getelementptr inbounds %struct.simple_bitmap_def, ptr %58, i64 0, i32 3, i64 %266
  %268 = load i64, ptr %267, align 8, !tbaa !41
  %269 = and i32 %262, 63
  %270 = zext nneg i32 %269 to i64
  %271 = shl nuw i64 1, %270
  %272 = and i64 %268, %271
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %212, label %274

274:                                              ; preds = %264
  %275 = getelementptr inbounds i32, ptr %19, i64 %204
  %276 = load i32, ptr %275, align 4, !tbaa !9
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  store i32 %262, ptr %275, align 4, !tbaa !9
  br label %212

279:                                              ; preds = %274
  %280 = sext i32 %276 to i64
  %281 = getelementptr inbounds i32, ptr %26, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !9
  %283 = zext nneg i32 %262 to i64
  %284 = getelementptr inbounds i32, ptr %26, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !9
  %286 = icmp sgt i32 %282, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %279
  tail call fastcc void @RESET_BIT(ptr noundef %40, i32 noundef %262) #24
  br label %212

288:                                              ; preds = %279
  %289 = icmp slt i32 %282, %285
  br i1 %289, label %290, label %212

290:                                              ; preds = %288
  tail call fastcc void @RESET_BIT(ptr noundef %40, i32 noundef %276) #24
  %291 = load i32, ptr %261, align 4, !tbaa !9
  store i32 %291, ptr %275, align 4, !tbaa !9
  br label %212

292:                                              ; preds = %255
  %293 = add nsw i32 %81, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.edge_iterator, ptr %34, i64 %294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %295, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %296 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %297 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %298 = getelementptr inbounds %struct.edge_def, ptr %297, i64 0, i32 3
  store ptr %296, ptr %298, align 8, !tbaa !164
  %299 = tail call fastcc ptr @ei_edge(i32 %93, ptr %92) #24
  %300 = getelementptr inbounds %struct.edge_def, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !26
  %302 = getelementptr inbounds %struct.basic_block_def, ptr %301, i64 0, i32 1
  %303 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %302) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !23
  store ptr %303, ptr %77, align 8, !tbaa.struct !24
  br label %189

304:                                              ; preds = %176, %182
  %305 = load ptr, ptr @cfun, align 8, !tbaa !5
  %306 = getelementptr inbounds %struct.function, ptr %305, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !19
  %308 = load ptr, ptr %307, align 8, !tbaa !5
  %309 = icmp eq ptr %308, null
  br i1 %309, label %334, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds i8, ptr %5, i64 8
  br label %312

312:                                              ; preds = %310, %325
  %313 = phi ptr [ %308, %310 ], [ %327, %325 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  %314 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 1
  %315 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %314) #24
  store i32 0, ptr %5, align 8, !tbaa.struct !23
  store ptr %315, ptr %311, align 8, !tbaa.struct !24
  %316 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %315, ptr noundef nonnull %6) #24, !range !25
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %325, label %318

318:                                              ; preds = %312, %318
  %319 = load ptr, ptr %6, align 8, !tbaa !5
  %320 = getelementptr inbounds %struct.edge_def, ptr %319, i64 0, i32 3
  store ptr null, ptr %320, align 8, !tbaa !164
  call fastcc void @ei_next(ptr noundef nonnull %5) #24
  %321 = load i32, ptr %5, align 8
  %322 = load ptr, ptr %311, align 8
  %323 = call fastcc zeroext i8 @ei_cond(i32 %321, ptr %322, ptr noundef nonnull %6) #24, !range !25
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %318, !llvm.loop !195

325:                                              ; preds = %318, %312
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #28
  %326 = getelementptr inbounds %struct.basic_block_def, ptr %313, i64 0, i32 6
  %327 = load ptr, ptr %326, align 8, !tbaa !5
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %312, !llvm.loop !196

329:                                              ; preds = %325
  %330 = load ptr, ptr @cfun, align 8, !tbaa !5
  %331 = getelementptr inbounds %struct.function, ptr %330, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !19
  %333 = load ptr, ptr %332, align 8, !tbaa !133
  br label %334

334:                                              ; preds = %329, %304
  %335 = phi ptr [ %333, %329 ], [ null, %304 ]
  %336 = phi ptr [ %332, %329 ], [ %307, %304 ]
  %337 = getelementptr inbounds %struct.control_flow_graph, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  br label %339

339:                                              ; preds = %344, %334
  %340 = phi ptr [ %335, %334 ], [ %342, %344 ]
  %341 = getelementptr inbounds %struct.basic_block_def, ptr %340, i64 0, i32 6
  %342 = load ptr, ptr %341, align 8, !tbaa !134
  %343 = icmp eq ptr %342, %338
  br i1 %343, label %351, label %344

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.basic_block_def, ptr %342, i64 0, i32 9
  %346 = load i32, ptr %345, align 8, !tbaa !29
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, ptr %26, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !9
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %339, !llvm.loop !197

351:                                              ; preds = %344, %339
  %352 = getelementptr inbounds %struct.basic_block_def, ptr %335, i64 0, i32 6
  %353 = load ptr, ptr %352, align 8, !tbaa !134
  %354 = icmp eq ptr %353, %338
  br i1 %354, label %366, label %355

355:                                              ; preds = %351, %355
  %356 = phi ptr [ %364, %355 ], [ %353, %351 ]
  %357 = load ptr, ptr %356, align 8, !tbaa !139
  %358 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %357) #24
  %359 = getelementptr inbounds %struct.basic_block_def, ptr %356, i64 0, i32 9
  %360 = load i32, ptr %359, align 8, !tbaa !29
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, ptr %26, i64 %361
  store i32 %358, ptr %362, align 4, !tbaa !9
  %363 = getelementptr inbounds %struct.basic_block_def, ptr %356, i64 0, i32 6
  %364 = load ptr, ptr %363, align 8, !tbaa !134
  %365 = icmp eq ptr %364, %338
  br i1 %365, label %366, label %355, !llvm.loop !198

366:                                              ; preds = %355, %351
  br i1 %343, label %367, label %827

367:                                              ; preds = %366
  %368 = icmp eq i8 %102, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %367
  tail call fastcc void @SET_BIT(ptr noundef %46, i32 noundef 0) #24
  %370 = load ptr, ptr @cfun, align 8, !tbaa !5
  %371 = getelementptr inbounds %struct.function, ptr %370, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !19
  br label %373

373:                                              ; preds = %369, %367
  %374 = phi ptr [ %372, %369 ], [ %336, %367 ]
  %375 = getelementptr inbounds %struct.control_flow_graph, ptr %374, i64 0, i32 3
  %376 = load i32, ptr %375, align 8, !tbaa !36
  %377 = sext i32 %376 to i64
  %378 = shl nsw i64 %377, 2
  %379 = tail call ptr @xmalloc(i64 noundef %378) #27
  %380 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %381 = getelementptr inbounds %struct.param_info, ptr %380, i64 82, i32 1
  %382 = load i32, ptr %381, align 8, !tbaa !37
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %399

384:                                              ; preds = %373
  %385 = load ptr, ptr @cfun, align 8, !tbaa !5
  %386 = getelementptr inbounds %struct.function, ptr %385, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !19
  %388 = getelementptr inbounds %struct.control_flow_graph, ptr %387, i64 0, i32 5
  %389 = load i32, ptr %388, align 8, !tbaa !39
  %390 = sext i32 %389 to i64
  %391 = shl nsw i64 %390, 2
  %392 = tail call ptr @xmalloc(i64 noundef %391) #27
  %393 = load ptr, ptr @cfun, align 8, !tbaa !5
  %394 = getelementptr inbounds %struct.function, ptr %393, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !19
  %396 = getelementptr inbounds %struct.control_flow_graph, ptr %395, i64 0, i32 5
  %397 = load i32, ptr %396, align 8, !tbaa !39
  %398 = tail call ptr @sbitmap_alloc(i32 noundef %397) #27
  tail call void @sbitmap_zero(ptr noundef %398) #27
  br label %399

399:                                              ; preds = %384, %373
  %400 = phi ptr [ %398, %384 ], [ null, %373 ]
  %401 = phi ptr [ %392, %384 ], [ null, %373 ]
  %402 = load ptr, ptr @cfun, align 8, !tbaa !5
  %403 = getelementptr inbounds %struct.function, ptr %402, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !19
  %405 = load ptr, ptr %404, align 8, !tbaa !133
  %406 = getelementptr inbounds %struct.basic_block_def, ptr %405, i64 0, i32 6
  %407 = load ptr, ptr %406, align 8, !tbaa !134
  %408 = getelementptr inbounds %struct.control_flow_graph, ptr %404, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !46
  %410 = icmp eq ptr %407, %409
  br i1 %410, label %822, label %411

411:                                              ; preds = %399
  %412 = getelementptr inbounds i8, ptr %8, i64 8
  br label %413

413:                                              ; preds = %411, %811
  %414 = phi ptr [ %402, %411 ], [ %812, %811 ]
  %415 = phi ptr [ %409, %411 ], [ %820, %811 ]
  %416 = phi ptr [ %404, %411 ], [ %818, %811 ]
  %417 = phi ptr [ %407, %411 ], [ %816, %811 ]
  %418 = phi ptr [ %26, %411 ], [ %814, %811 ]
  %419 = phi ptr [ %401, %411 ], [ %813, %811 ]
  %420 = getelementptr inbounds %struct.basic_block_def, ptr %417, i64 0, i32 9
  %421 = load i32, ptr %420, align 8, !tbaa !29
  %422 = lshr i32 %421, 6
  %423 = zext nneg i32 %422 to i64
  %424 = getelementptr inbounds %struct.simple_bitmap_def, ptr %46, i64 0, i32 3, i64 %423
  %425 = load i64, ptr %424, align 8, !tbaa !41
  %426 = and i32 %421, 63
  %427 = zext nneg i32 %426 to i64
  %428 = shl nuw i64 1, %427
  %429 = and i64 %428, %425
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %811, label %431

431:                                              ; preds = %413
  %432 = getelementptr inbounds %struct.simple_bitmap_def, ptr %40, i64 0, i32 3, i64 %423
  %433 = load i64, ptr %432, align 8, !tbaa !41
  %434 = and i64 %433, %428
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %811, label %436

436:                                              ; preds = %431
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #28
  %437 = load ptr, ptr %416, align 8, !tbaa !133
  %438 = getelementptr inbounds %struct.basic_block_def, ptr %437, i64 0, i32 6
  %439 = load ptr, ptr %438, align 8, !tbaa !134
  %440 = icmp eq ptr %439, %415
  br i1 %440, label %472, label %441

441:                                              ; preds = %436, %457
  %442 = phi ptr [ %458, %457 ], [ %414, %436 ]
  %443 = phi ptr [ %460, %457 ], [ %439, %436 ]
  %444 = load i32, ptr %420, align 8, !tbaa !29
  %445 = getelementptr inbounds %struct.basic_block_def, ptr %443, i64 0, i32 9
  %446 = load i32, ptr %445, align 8, !tbaa !29
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, ptr %19, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !9
  %450 = icmp ne i32 %444, %449
  %451 = icmp eq ptr %417, %443
  %452 = or i1 %451, %450
  br i1 %452, label %457, label %453

453:                                              ; preds = %441
  %454 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %443, ptr noundef nonnull %417) #27
  %455 = icmp eq i8 %454, 0
  %456 = load ptr, ptr @cfun, align 8, !tbaa !5
  br i1 %455, label %466, label %457

457:                                              ; preds = %453, %441
  %458 = phi ptr [ %442, %441 ], [ %456, %453 ]
  %459 = getelementptr inbounds %struct.basic_block_def, ptr %443, i64 0, i32 6
  %460 = load ptr, ptr %459, align 8, !tbaa !134
  %461 = getelementptr inbounds %struct.function, ptr %458, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !19
  %463 = getelementptr inbounds %struct.control_flow_graph, ptr %462, i64 0, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !46
  %465 = icmp eq ptr %460, %464
  br i1 %465, label %472, label %441, !llvm.loop !199

466:                                              ; preds = %453
  %467 = getelementptr inbounds %struct.function, ptr %456, i64 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !19
  %469 = getelementptr inbounds %struct.control_flow_graph, ptr %468, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !46
  %471 = icmp eq ptr %443, %470
  br i1 %471, label %472, label %807

472:                                              ; preds = %457, %436, %466
  %473 = phi ptr [ %468, %466 ], [ %416, %436 ], [ %462, %457 ]
  %474 = load i32, ptr %420, align 8, !tbaa !29
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, ptr %19, i64 %475
  %477 = load i32, ptr %476, align 4, !tbaa !9
  br i1 %383, label %478, label %483

478:                                              ; preds = %472
  %479 = getelementptr inbounds %struct.control_flow_graph, ptr %473, i64 0, i32 5
  %480 = load i32, ptr %479, align 8, !tbaa !39
  %481 = sext i32 %480 to i64
  %482 = shl nsw i64 %481, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %419, ptr align 4 %418, i64 %482, i1 false)
  br label %483

483:                                              ; preds = %478, %472
  %484 = getelementptr inbounds %struct.basic_block_def, ptr %417, i64 0, i32 1
  %485 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %484) #24
  store i32 0, ptr %8, align 8, !tbaa.struct !23
  store ptr %485, ptr %412, align 8, !tbaa.struct !24
  %486 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %485, ptr noundef nonnull %7) #24, !range !25
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %510, label %488

488:                                              ; preds = %483, %505
  %489 = load ptr, ptr %7, align 8, !tbaa !5
  %490 = getelementptr inbounds %struct.edge_def, ptr %489, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !26
  %492 = load ptr, ptr @cfun, align 8, !tbaa !5
  %493 = getelementptr inbounds %struct.function, ptr %492, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !19
  %495 = getelementptr inbounds %struct.control_flow_graph, ptr %494, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !46
  %497 = icmp eq ptr %491, %496
  br i1 %497, label %505, label %498

498:                                              ; preds = %488
  %499 = getelementptr inbounds %struct.basic_block_def, ptr %491, i64 0, i32 9
  %500 = load i32, ptr %499, align 8, !tbaa !29
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, ptr %418, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !9
  %504 = add nsw i32 %503, -1
  store i32 %504, ptr %502, align 4, !tbaa !9
  br label %505

505:                                              ; preds = %488, %498
  call fastcc void @ei_next(ptr noundef nonnull %8) #24
  %506 = load i32, ptr %8, align 8
  %507 = load ptr, ptr %412, align 8
  %508 = call fastcc zeroext i8 @ei_cond(i32 %506, ptr %507, ptr noundef nonnull %7) #24, !range !25
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %510, label %488, !llvm.loop !200

510:                                              ; preds = %505, %483
  store i32 1, ptr %3, align 4, !tbaa !9
  %511 = load ptr, ptr @common_sched_info, align 8, !tbaa !5
  %512 = getelementptr inbounds %struct.common_sched_info_def, ptr %511, i64 0, i32 2
  %513 = load ptr, ptr %512, align 8, !tbaa !56
  %514 = tail call i32 %513(ptr noundef %417) #27
  store i32 %514, ptr %4, align 4, !tbaa !9
  br i1 %368, label %560, label %515

515:                                              ; preds = %510
  %516 = load ptr, ptr @cfun, align 8, !tbaa !5
  %517 = getelementptr inbounds %struct.function, ptr %516, i64 0, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !19
  %519 = load ptr, ptr %518, align 8, !tbaa !133
  %520 = getelementptr inbounds %struct.basic_block_def, ptr %519, i64 0, i32 6
  %521 = load ptr, ptr %520, align 8, !tbaa !134
  %522 = getelementptr inbounds %struct.control_flow_graph, ptr %518, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !46
  %524 = icmp ne ptr %521, %523
  br i1 %524, label %525, label %669

525:                                              ; preds = %515, %550
  %526 = phi ptr [ %551, %550 ], [ %516, %515 ]
  %527 = phi ptr [ %554, %550 ], [ %521, %515 ]
  %528 = phi i32 [ %552, %550 ], [ -1, %515 ]
  %529 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %527) #24, !range !25
  %530 = icmp eq i8 %529, 0
  br i1 %530, label %550, label %531

531:                                              ; preds = %525
  %532 = tail call fastcc ptr @single_succ(ptr noundef %527) #24
  %533 = load ptr, ptr @cfun, align 8, !tbaa !5
  %534 = getelementptr inbounds %struct.function, ptr %533, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !19
  %536 = getelementptr inbounds %struct.control_flow_graph, ptr %535, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !46
  %538 = icmp eq ptr %532, %537
  br i1 %538, label %539, label %550

539:                                              ; preds = %531
  %540 = getelementptr inbounds %struct.basic_block_def, ptr %527, i64 0, i32 9
  %541 = load i32, ptr %540, align 8, !tbaa !29
  %542 = add nsw i32 %528, 1
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, ptr %379, i64 %543
  store i32 %541, ptr %544, align 4, !tbaa !9
  tail call fastcc void @SET_BIT(ptr noundef %52, i32 noundef %541) #24
  %545 = load i32, ptr %540, align 8, !tbaa !29
  %546 = call fastcc zeroext i8 @too_large(i32 noundef %545, ptr noundef nonnull %3, ptr noundef nonnull %4) #24, !range !25
  %547 = icmp eq i8 %546, 0
  br i1 %547, label %548, label %669

548:                                              ; preds = %539
  %549 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %550

550:                                              ; preds = %548, %525, %531
  %551 = phi ptr [ %549, %548 ], [ %533, %531 ], [ %526, %525 ]
  %552 = phi i32 [ %542, %548 ], [ %528, %531 ], [ %528, %525 ]
  %553 = getelementptr inbounds %struct.basic_block_def, ptr %527, i64 0, i32 6
  %554 = load ptr, ptr %553, align 8, !tbaa !134
  %555 = getelementptr inbounds %struct.function, ptr %551, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !19
  %557 = getelementptr inbounds %struct.control_flow_graph, ptr %556, i64 0, i32 1
  %558 = load ptr, ptr %557, align 8, !tbaa !46
  %559 = icmp eq ptr %554, %558
  br i1 %559, label %598, label %525, !llvm.loop !201

560:                                              ; preds = %510
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #28
  %561 = tail call fastcc ptr @ei_start_1(ptr noundef %417) #24
  store i32 0, ptr %8, align 8, !tbaa.struct !23
  store ptr %561, ptr %412, align 8, !tbaa.struct !24
  %562 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %561, ptr noundef nonnull %9) #24, !range !25
  %563 = icmp eq i8 %562, 0
  br i1 %563, label %595, label %564

564:                                              ; preds = %560, %589
  %565 = phi i32 [ %590, %589 ], [ -1, %560 ]
  %566 = load ptr, ptr %9, align 8, !tbaa !5
  %567 = load ptr, ptr %566, align 8, !tbaa !42
  %568 = load ptr, ptr @cfun, align 8, !tbaa !5
  %569 = getelementptr inbounds %struct.function, ptr %568, i64 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !19
  %571 = load ptr, ptr %570, align 8, !tbaa !133
  %572 = icmp eq ptr %567, %571
  br i1 %572, label %589, label %573

573:                                              ; preds = %564
  %574 = getelementptr inbounds %struct.basic_block_def, ptr %567, i64 0, i32 9
  %575 = load i32, ptr %574, align 8, !tbaa !29
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32, ptr %19, i64 %576
  %578 = load i32, ptr %577, align 4, !tbaa !9
  %579 = icmp eq i32 %578, %477
  br i1 %579, label %580, label %589

580:                                              ; preds = %573
  %581 = load i32, ptr %420, align 8, !tbaa !29
  %582 = icmp eq i32 %575, %581
  br i1 %582, label %589, label %583

583:                                              ; preds = %580
  %584 = add nsw i32 %565, 1
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32, ptr %379, i64 %585
  store i32 %575, ptr %586, align 4, !tbaa !9
  tail call fastcc void @SET_BIT(ptr noundef %52, i32 noundef %575) #24
  %587 = call fastcc zeroext i8 @too_large(i32 noundef %575, ptr noundef nonnull %3, ptr noundef nonnull %4) #24, !range !25
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %589, label %595

589:                                              ; preds = %573, %580, %583, %564
  %590 = phi i32 [ %565, %564 ], [ %584, %583 ], [ %565, %580 ], [ %565, %573 ]
  call fastcc void @ei_next(ptr noundef nonnull %8) #24
  %591 = load i32, ptr %8, align 8
  %592 = load ptr, ptr %412, align 8
  %593 = call fastcc zeroext i8 @ei_cond(i32 %591, ptr %592, ptr noundef nonnull %9) #24, !range !25
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %595, label %564, !llvm.loop !202

595:                                              ; preds = %589, %583, %560
  %596 = phi i32 [ 0, %560 ], [ 1, %583 ], [ 0, %589 ]
  %597 = phi i32 [ -1, %560 ], [ %584, %583 ], [ %590, %589 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #28
  br label %598

598:                                              ; preds = %550, %595
  %599 = phi i32 [ %596, %595 ], [ 0, %550 ]
  %600 = phi i32 [ %597, %595 ], [ %552, %550 ]
  %601 = icmp slt i32 %600, 0
  %602 = icmp ne i32 %599, 0
  %603 = or i1 %601, %602
  br i1 %603, label %669, label %604

604:                                              ; preds = %598, %661
  %605 = phi i64 [ %607, %661 ], [ -1, %598 ]
  %606 = phi i32 [ %662, %661 ], [ %600, %598 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #28
  %607 = add nsw i64 %605, 1
  %608 = getelementptr inbounds i32, ptr %379, i64 %607
  %609 = load i32, ptr %608, align 4, !tbaa !9
  %610 = load ptr, ptr @cfun, align 8, !tbaa !5
  %611 = getelementptr inbounds %struct.function, ptr %610, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !19
  %613 = getelementptr inbounds %struct.control_flow_graph, ptr %612, i64 0, i32 2
  %614 = load ptr, ptr %613, align 8, !tbaa !21
  %615 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %614, i32 noundef %609) #24
  %616 = tail call fastcc ptr @ei_start_1(ptr noundef %615) #24
  store i32 0, ptr %8, align 8, !tbaa.struct !23
  store ptr %616, ptr %412, align 8, !tbaa.struct !24
  %617 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %616, ptr noundef nonnull %10) #24, !range !25
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %661, label %619

619:                                              ; preds = %604, %655
  %620 = phi i32 [ %656, %655 ], [ %606, %604 ]
  %621 = load ptr, ptr %10, align 8, !tbaa !5
  %622 = load ptr, ptr %621, align 8, !tbaa !42
  %623 = getelementptr inbounds %struct.basic_block_def, ptr %622, i64 0, i32 9
  %624 = load i32, ptr %623, align 8, !tbaa !29
  %625 = load ptr, ptr @cfun, align 8, !tbaa !5
  %626 = getelementptr inbounds %struct.function, ptr %625, i64 0, i32 1
  %627 = load ptr, ptr %626, align 8, !tbaa !19
  %628 = load ptr, ptr %627, align 8, !tbaa !133
  %629 = icmp eq ptr %622, %628
  br i1 %629, label %661, label %630

630:                                              ; preds = %619
  %631 = sext i32 %624 to i64
  %632 = getelementptr inbounds i32, ptr %19, i64 %631
  %633 = load i32, ptr %632, align 4, !tbaa !9
  %634 = icmp eq i32 %633, %477
  br i1 %634, label %635, label %661

635:                                              ; preds = %630
  %636 = lshr i32 %624, 6
  %637 = zext nneg i32 %636 to i64
  %638 = getelementptr inbounds %struct.simple_bitmap_def, ptr %52, i64 0, i32 3, i64 %637
  %639 = load i64, ptr %638, align 8, !tbaa !41
  %640 = and i32 %624, 63
  %641 = zext nneg i32 %640 to i64
  %642 = shl nuw i64 1, %641
  %643 = and i64 %639, %642
  %644 = icmp eq i64 %643, 0
  br i1 %644, label %645, label %655

645:                                              ; preds = %635
  %646 = load i32, ptr %420, align 8, !tbaa !29
  %647 = icmp eq i32 %624, %646
  br i1 %647, label %655, label %648

648:                                              ; preds = %645
  %649 = add nsw i32 %620, 1
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, ptr %379, i64 %650
  store i32 %624, ptr %651, align 4, !tbaa !9
  tail call fastcc void @SET_BIT(ptr noundef nonnull %52, i32 noundef %624) #24
  %652 = call fastcc zeroext i8 @too_large(i32 noundef %624, ptr noundef nonnull %3, ptr noundef nonnull %4) #24, !range !25
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %648
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #28
  br label %665

655:                                              ; preds = %648, %645, %635
  %656 = phi i32 [ %620, %635 ], [ %649, %648 ], [ %620, %645 ]
  call fastcc void @ei_next(ptr noundef nonnull %8) #24
  %657 = load i32, ptr %8, align 8
  %658 = load ptr, ptr %412, align 8
  %659 = call fastcc zeroext i8 @ei_cond(i32 %657, ptr %658, ptr noundef nonnull %10) #24, !range !25
  %660 = icmp eq i8 %659, 0
  br i1 %660, label %661, label %619, !llvm.loop !203

661:                                              ; preds = %655, %630, %619, %604
  %662 = phi i32 [ %606, %604 ], [ -1, %619 ], [ -1, %630 ], [ %656, %655 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #28
  %663 = sext i32 %662 to i64
  %664 = icmp slt i64 %607, %663
  br i1 %664, label %604, label %665, !llvm.loop !204

665:                                              ; preds = %661, %654
  %666 = phi i1 [ true, %654 ], [ false, %661 ]
  %667 = phi i32 [ %649, %654 ], [ %662, %661 ]
  %668 = trunc i64 %607 to i32
  br label %669

669:                                              ; preds = %539, %515, %665, %598
  %670 = phi i32 [ %600, %598 ], [ %667, %665 ], [ -1, %515 ], [ %542, %539 ]
  %671 = phi i32 [ -1, %598 ], [ %668, %665 ], [ -1, %515 ], [ -1, %539 ]
  %672 = phi i1 [ %602, %598 ], [ %666, %665 ], [ %524, %515 ], [ %524, %539 ]
  %673 = icmp slt i32 %670, 0
  %674 = or i1 %673, %672
  br i1 %674, label %785, label %675

675:                                              ; preds = %669
  %676 = load i32, ptr %420, align 8, !tbaa !29
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i32, ptr %418, i64 %677
  store i32 -1, ptr %678, align 4, !tbaa !9
  %679 = load i32, ptr %420, align 8, !tbaa !29
  %680 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %681 = load i32, ptr %1, align 4, !tbaa !9
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, ptr %680, i64 %682
  store i32 %679, ptr %683, align 4, !tbaa !9
  %684 = load i32, ptr %3, align 4, !tbaa !9
  %685 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %686 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.region, ptr %685, i64 %687
  store i32 %684, ptr %688, align 4, !tbaa !11
  %689 = add nsw i32 %681, 1
  store i32 %689, ptr %1, align 4, !tbaa !9
  %690 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.region, ptr %685, i64 %691, i32 1
  store i32 %681, ptr %692, align 4, !tbaa !13
  %693 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.region, ptr %685, i64 %694, i32 2
  %696 = load i8, ptr %695, align 4
  %697 = and i8 %696, -2
  store i8 %697, ptr %695, align 4
  %698 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %699 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.region, ptr %698, i64 %700, i32 2
  %702 = load i8, ptr %701, align 4
  %703 = and i8 %702, -3
  store i8 %703, ptr %701, align 4
  %704 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %705 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %706 = load i32, ptr %420, align 8, !tbaa !29
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i32, ptr %705, i64 %707
  store i32 %704, ptr %708, align 4, !tbaa !9
  %709 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %710 = load i32, ptr %420, align 8, !tbaa !29
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i32, ptr %709, i64 %711
  store i32 0, ptr %712, align 4, !tbaa !9
  br label %713

713:                                              ; preds = %675, %777
  %714 = phi i32 [ %671, %675 ], [ %780, %777 ]
  %715 = phi i32 [ %670, %675 ], [ %779, %777 ]
  %716 = phi i32 [ 0, %675 ], [ %778, %777 ]
  %717 = icmp slt i32 %714, 0
  %718 = select i1 %717, i32 %715, i32 %714
  %719 = zext nneg i32 %718 to i64
  %720 = getelementptr inbounds i32, ptr %379, i64 %719
  %721 = load i32, ptr %720, align 4, !tbaa !9
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, ptr %418, i64 %722
  %724 = load i32, ptr %723, align 4, !tbaa !9
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %775

726:                                              ; preds = %713
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #28
  store i32 -1, ptr %723, align 4, !tbaa !9
  %727 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %728 = load i32, ptr %1, align 4, !tbaa !9
  %729 = add nsw i32 %728, 1
  store i32 %729, ptr %1, align 4, !tbaa !9
  %730 = sext i32 %728 to i64
  %731 = getelementptr inbounds i32, ptr %727, i64 %730
  store i32 %721, ptr %731, align 4, !tbaa !9
  %732 = add nsw i32 %716, 1
  %733 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %734 = getelementptr inbounds i32, ptr %733, i64 %722
  store i32 %732, ptr %734, align 4, !tbaa !9
  %735 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %736 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %737 = getelementptr inbounds i32, ptr %736, i64 %722
  store i32 %735, ptr %737, align 4, !tbaa !9
  %738 = add nsw i32 %715, -1
  %739 = zext nneg i32 %715 to i64
  %740 = getelementptr inbounds i32, ptr %379, i64 %739
  %741 = load i32, ptr %740, align 4, !tbaa !9
  store i32 %741, ptr %720, align 4, !tbaa !9
  %742 = load ptr, ptr @cfun, align 8, !tbaa !5
  %743 = getelementptr inbounds %struct.function, ptr %742, i64 0, i32 1
  %744 = load ptr, ptr %743, align 8, !tbaa !19
  %745 = getelementptr inbounds %struct.control_flow_graph, ptr %744, i64 0, i32 2
  %746 = load ptr, ptr %745, align 8, !tbaa !21
  %747 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %746, i32 noundef %721) #24
  %748 = getelementptr inbounds %struct.basic_block_def, ptr %747, i64 0, i32 1
  %749 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %748) #24
  store i32 0, ptr %8, align 8, !tbaa.struct !23
  store ptr %749, ptr %412, align 8, !tbaa.struct !24
  %750 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %749, ptr noundef nonnull %11) #24, !range !25
  %751 = icmp eq i8 %750, 0
  br i1 %751, label %774, label %752

752:                                              ; preds = %726, %769
  %753 = load ptr, ptr %11, align 8, !tbaa !5
  %754 = getelementptr inbounds %struct.edge_def, ptr %753, i64 0, i32 1
  %755 = load ptr, ptr %754, align 8, !tbaa !26
  %756 = load ptr, ptr @cfun, align 8, !tbaa !5
  %757 = getelementptr inbounds %struct.function, ptr %756, i64 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !19
  %759 = getelementptr inbounds %struct.control_flow_graph, ptr %758, i64 0, i32 1
  %760 = load ptr, ptr %759, align 8, !tbaa !46
  %761 = icmp eq ptr %755, %760
  br i1 %761, label %769, label %762

762:                                              ; preds = %752
  %763 = getelementptr inbounds %struct.basic_block_def, ptr %755, i64 0, i32 9
  %764 = load i32, ptr %763, align 8, !tbaa !29
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i32, ptr %418, i64 %765
  %767 = load i32, ptr %766, align 4, !tbaa !9
  %768 = add nsw i32 %767, -1
  store i32 %768, ptr %766, align 4, !tbaa !9
  br label %769

769:                                              ; preds = %752, %762
  call fastcc void @ei_next(ptr noundef nonnull %8) #24
  %770 = load i32, ptr %8, align 8
  %771 = load ptr, ptr %412, align 8
  %772 = call fastcc zeroext i8 @ei_cond(i32 %770, ptr %771, ptr noundef nonnull %11) #24, !range !25
  %773 = icmp eq i8 %772, 0
  br i1 %773, label %774, label %752, !llvm.loop !205

774:                                              ; preds = %769, %726
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #28
  br label %777

775:                                              ; preds = %713
  %776 = add nsw i32 %718, -1
  br label %777

777:                                              ; preds = %775, %774
  %778 = phi i32 [ %732, %774 ], [ %716, %775 ]
  %779 = phi i32 [ %738, %774 ], [ %715, %775 ]
  %780 = phi i32 [ %718, %774 ], [ %776, %775 ]
  %781 = icmp sgt i32 %779, -1
  br i1 %781, label %713, label %782, !llvm.loop !206

782:                                              ; preds = %777
  %783 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %784 = add nsw i32 %783, 1
  store i32 %784, ptr @nr_regions, align 4, !tbaa !9
  br label %807

785:                                              ; preds = %669
  br i1 %383, label %786, label %807

786:                                              ; preds = %785
  store i32 0, ptr %8, align 8, !tbaa.struct !23
  store ptr %485, ptr %412, align 8, !tbaa.struct !24
  %787 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %485, ptr noundef nonnull %7) #24, !range !25
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %807, label %789

789:                                              ; preds = %786, %802
  %790 = load ptr, ptr %7, align 8, !tbaa !5
  %791 = getelementptr inbounds %struct.edge_def, ptr %790, i64 0, i32 1
  %792 = load ptr, ptr %791, align 8, !tbaa !26
  %793 = load ptr, ptr @cfun, align 8, !tbaa !5
  %794 = getelementptr inbounds %struct.function, ptr %793, i64 0, i32 1
  %795 = load ptr, ptr %794, align 8, !tbaa !19
  %796 = getelementptr inbounds %struct.control_flow_graph, ptr %795, i64 0, i32 1
  %797 = load ptr, ptr %796, align 8, !tbaa !46
  %798 = icmp eq ptr %792, %797
  br i1 %798, label %802, label %799

799:                                              ; preds = %789
  %800 = getelementptr inbounds %struct.basic_block_def, ptr %792, i64 0, i32 9
  %801 = load i32, ptr %800, align 8, !tbaa !29
  tail call fastcc void @SET_BIT(ptr noundef %400, i32 noundef %801) #24
  br label %802

802:                                              ; preds = %789, %799
  call fastcc void @ei_next(ptr noundef nonnull %8) #24
  %803 = load i32, ptr %8, align 8
  %804 = load ptr, ptr %412, align 8
  %805 = call fastcc zeroext i8 @ei_cond(i32 %803, ptr %804, ptr noundef nonnull %7) #24, !range !25
  %806 = icmp eq i8 %805, 0
  br i1 %806, label %807, label %789, !llvm.loop !207

807:                                              ; preds = %802, %786, %782, %785, %466
  %808 = phi ptr [ %419, %466 ], [ %419, %785 ], [ %419, %782 ], [ %418, %786 ], [ %418, %802 ]
  %809 = phi ptr [ %418, %466 ], [ %418, %785 ], [ %418, %782 ], [ %419, %786 ], [ %419, %802 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #28
  %810 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %811

811:                                              ; preds = %807, %413, %431
  %812 = phi ptr [ %810, %807 ], [ %414, %431 ], [ %414, %413 ]
  %813 = phi ptr [ %808, %807 ], [ %419, %431 ], [ %419, %413 ]
  %814 = phi ptr [ %809, %807 ], [ %418, %431 ], [ %418, %413 ]
  %815 = getelementptr inbounds %struct.basic_block_def, ptr %417, i64 0, i32 6
  %816 = load ptr, ptr %815, align 8, !tbaa !134
  %817 = getelementptr inbounds %struct.function, ptr %812, i64 0, i32 1
  %818 = load ptr, ptr %817, align 8, !tbaa !19
  %819 = getelementptr inbounds %struct.control_flow_graph, ptr %818, i64 0, i32 1
  %820 = load ptr, ptr %819, align 8, !tbaa !46
  %821 = icmp eq ptr %816, %820
  br i1 %821, label %822, label %413, !llvm.loop !208

822:                                              ; preds = %811, %399
  %823 = phi ptr [ %401, %399 ], [ %813, %811 ]
  %824 = phi ptr [ %26, %399 ], [ %814, %811 ]
  tail call void @free(ptr noundef %379) #24
  br i1 %383, label %825, label %827

825:                                              ; preds = %822
  tail call void @free(ptr noundef %823) #24
  tail call void @sbitmap_a_or_b(ptr noundef %46, ptr noundef %46, ptr noundef %400) #27
  %826 = load ptr, ptr %400, align 8, !tbaa !52
  tail call void @free(ptr noundef %826) #24
  tail call void @free(ptr noundef %400) #24
  call void @extend_rgns(ptr noundef %824, ptr noundef nonnull %1, ptr noundef %46, ptr noundef %19) #24
  br label %827

827:                                              ; preds = %822, %825, %366
  %828 = phi ptr [ %26, %366 ], [ %824, %825 ], [ %824, %822 ]
  %829 = load ptr, ptr @cfun, align 8, !tbaa !5
  %830 = getelementptr inbounds %struct.function, ptr %829, i64 0, i32 1
  %831 = load ptr, ptr %830, align 8, !tbaa !19
  %832 = load ptr, ptr %831, align 8, !tbaa !133
  %833 = getelementptr inbounds %struct.basic_block_def, ptr %832, i64 0, i32 6
  %834 = load ptr, ptr %833, align 8, !tbaa !134
  %835 = getelementptr inbounds %struct.control_flow_graph, ptr %831, i64 0, i32 1
  %836 = load ptr, ptr %835, align 8, !tbaa !46
  %837 = icmp eq ptr %834, %836
  br i1 %837, label %894, label %838

838:                                              ; preds = %827
  %839 = load i32, ptr %1, align 4, !tbaa !9
  br label %840

840:                                              ; preds = %838, %884
  %841 = phi ptr [ %885, %884 ], [ %829, %838 ]
  %842 = phi ptr [ %888, %884 ], [ %834, %838 ]
  %843 = phi i32 [ %886, %884 ], [ %839, %838 ]
  %844 = getelementptr inbounds %struct.basic_block_def, ptr %842, i64 0, i32 9
  %845 = load i32, ptr %844, align 8, !tbaa !29
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i32, ptr %828, i64 %846
  %848 = load i32, ptr %847, align 4, !tbaa !9
  %849 = icmp sgt i32 %848, -1
  br i1 %849, label %850, label %884

850:                                              ; preds = %840
  %851 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %852 = sext i32 %843 to i64
  %853 = getelementptr inbounds i32, ptr %851, i64 %852
  store i32 %845, ptr %853, align 4, !tbaa !9
  %854 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %855 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds %struct.region, ptr %854, i64 %856
  store i32 1, ptr %857, align 4, !tbaa !11
  %858 = add nsw i32 %843, 1
  store i32 %858, ptr %1, align 4, !tbaa !9
  %859 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds %struct.region, ptr %854, i64 %860, i32 1
  store i32 %843, ptr %861, align 4, !tbaa !13
  %862 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds %struct.region, ptr %854, i64 %863, i32 2
  %865 = load i8, ptr %864, align 4
  %866 = and i8 %865, -2
  store i8 %866, ptr %864, align 4
  %867 = load ptr, ptr @rgn_table, align 8, !tbaa !5
  %868 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.region, ptr %867, i64 %869, i32 2
  %871 = load i8, ptr %870, align 4
  %872 = and i8 %871, -3
  store i8 %872, ptr %870, align 4
  %873 = load i32, ptr @nr_regions, align 4, !tbaa !9
  %874 = add nsw i32 %873, 1
  store i32 %874, ptr @nr_regions, align 4, !tbaa !9
  %875 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %876 = load i32, ptr %844, align 8, !tbaa !29
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i32, ptr %875, i64 %877
  store i32 %873, ptr %878, align 4, !tbaa !9
  %879 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %880 = load i32, ptr %844, align 8, !tbaa !29
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds i32, ptr %879, i64 %881
  store i32 0, ptr %882, align 4, !tbaa !9
  %883 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %884

884:                                              ; preds = %840, %850
  %885 = phi ptr [ %841, %840 ], [ %883, %850 ]
  %886 = phi i32 [ %843, %840 ], [ %858, %850 ]
  %887 = getelementptr inbounds %struct.basic_block_def, ptr %842, i64 0, i32 6
  %888 = load ptr, ptr %887, align 8, !tbaa !134
  %889 = getelementptr inbounds %struct.function, ptr %885, i64 0, i32 1
  %890 = load ptr, ptr %889, align 8, !tbaa !19
  %891 = getelementptr inbounds %struct.control_flow_graph, ptr %890, i64 0, i32 1
  %892 = load ptr, ptr %891, align 8, !tbaa !46
  %893 = icmp eq ptr %888, %892
  br i1 %893, label %894, label %840, !llvm.loop !209

894:                                              ; preds = %884, %827
  tail call void @free(ptr noundef %19) #24
  tail call void @free(ptr noundef %828) #24
  tail call void @free(ptr noundef %34) #24
  %895 = load ptr, ptr %46, align 8, !tbaa !52
  tail call void @free(ptr noundef %895) #24
  tail call void @free(ptr noundef %46) #24
  %896 = load ptr, ptr %40, align 8, !tbaa !52
  tail call void @free(ptr noundef %896) #24
  tail call void @free(ptr noundef %40) #24
  %897 = load ptr, ptr %52, align 8, !tbaa !52
  tail call void @free(ptr noundef %897) #24
  tail call void @free(ptr noundef %52) #24
  %898 = load ptr, ptr %58, align 8, !tbaa !52
  tail call void @free(ptr noundef %898) #24
  tail call void @free(ptr noundef %58) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #28
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
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
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !54
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !54
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !41
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.48, i32 noundef 645, ptr noundef nonnull @.str.12) #27
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !210
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: optsize
declare void @sched_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_branch_dependences(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %1, %2 ]
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %4, !llvm.loop !211

13:                                               ; preds = %4, %9, %2
  %14 = phi ptr [ %1, %2 ], [ %0, %9 ], [ %5, %4 ]
  br label %15

15:                                               ; preds = %81, %13
  %16 = phi ptr [ %14, %13 ], [ %82, %81 ]
  %17 = phi ptr [ null, %13 ], [ %70, %81 ]
  %18 = load i32, ptr %16, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %36 [
    i16 10, label %40
    i16 9, label %40
    i16 8, label %20
  ]

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65534
  %25 = icmp eq i32 %24, 24
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %16) #27
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, ptr @reload_completed, align 4, !tbaa !9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load ptr, ptr %21, align 8, !tbaa !54
  %34 = tail call fastcc zeroext i8 @sets_likely_spilled(ptr noundef %33) #24
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %15, %32, %29
  %37 = load i32, ptr %16, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 13
  br i1 %39, label %40, label %83

40:                                               ; preds = %20, %15, %15, %32, %26, %36
  %41 = load i32, ptr %16, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %69, label %44

44:                                               ; preds = %40
  %45 = icmp eq ptr %17, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %44
  %47 = tail call ptr @sd_find_dep_between(ptr noundef nonnull %16, ptr noundef nonnull %17, i8 noundef zeroext 0) #27
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %17, ptr noundef nonnull %16) #27
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @add_dependence(ptr noundef nonnull %17, ptr noundef nonnull %16, i32 noundef 12) #27
  br label %53

53:                                               ; preds = %52, %49
  %54 = load ptr, ptr @insn_referenced, align 8, !tbaa !5
  %55 = load ptr, ptr @sched_luids, align 8
  %56 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !54
  %58 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %55, i32 noundef %57) #24
  tail call fastcc void @SET_BIT(ptr noundef %54, i32 noundef %58) #24
  br label %59

59:                                               ; preds = %53, %46, %44
  %60 = load ptr, ptr @h_d_i_d, align 8
  %61 = load ptr, ptr @sched_luids, align 8
  %62 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !54
  %64 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %61, i32 noundef %63) #24
  %65 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %60, i32 noundef %64) #24
  %66 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %65, i64 0, i32 7
  %67 = load i8, ptr %66, align 8
  %68 = or i8 %67, 1
  store i8 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %59, %40
  %70 = phi ptr [ %17, %40 ], [ %16, %59 ]
  %71 = icmp eq ptr %16, %0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69, %77
  %73 = phi ptr [ %75, %77 ], [ %16, %69 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !54
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %75, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %72, label %81, !llvm.loop !212

81:                                               ; preds = %72, %77
  %82 = phi ptr [ %0, %72 ], [ %75, %77 ]
  br label %15, !llvm.loop !213

83:                                               ; preds = %69, %36
  %84 = phi ptr [ %70, %69 ], [ %17, %36 ]
  %85 = icmp eq ptr %84, null
  %86 = icmp eq ptr %84, %0
  %87 = or i1 %85, %86
  br i1 %87, label %115, label %88

88:                                               ; preds = %83, %109
  %89 = phi ptr [ %90, %109 ], [ %84, %83 ]
  %90 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %89) #27
  %91 = load ptr, ptr @insn_referenced, align 8, !tbaa !5
  %92 = load ptr, ptr @sched_luids, align 8
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !54
  %95 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %92, i32 noundef %94) #24
  %96 = lshr i32 %95, 6
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds %struct.simple_bitmap_def, ptr %91, i64 0, i32 3, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !41
  %100 = and i32 %95, 63
  %101 = zext nneg i32 %100 to i64
  %102 = shl nuw i64 1, %101
  %103 = and i64 %102, %99
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %88
  %106 = load i32, ptr %90, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 7
  br i1 %108, label %109, label %111

109:                                              ; preds = %111, %114, %88, %105
  %110 = icmp eq ptr %90, %0
  br i1 %110, label %115, label %88, !llvm.loop !214

111:                                              ; preds = %105
  %112 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %84, ptr noundef nonnull %90) #27
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %109

114:                                              ; preds = %111
  tail call void @add_dependence(ptr noundef nonnull %84, ptr noundef nonnull %90, i32 noundef 12) #27
  br label %109

115:                                              ; preds = %109, %83
  %116 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !215
  %117 = tail call zeroext i8 %116() #27
  %118 = icmp eq i8 %117, 0
  %119 = load i32, ptr @reload_completed, align 4
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %145, label %122

122:                                              ; preds = %115
  %123 = load i32, ptr %14, align 8
  %124 = and i32 %123, 65535
  %125 = icmp ne i32 %124, 9
  %126 = icmp eq ptr %14, %0
  %127 = or i1 %125, %126
  br i1 %127, label %145, label %128

128:                                              ; preds = %122, %143
  %129 = phi ptr [ %131, %143 ], [ %14, %122 ]
  %130 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1, i32 0, i32 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !54
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = add nsw i32 %133, -7
  %135 = icmp ult i32 %134, 4
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !54
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 14
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  tail call void @add_dependence(ptr noundef nonnull %14, ptr noundef nonnull %131, i32 noundef 12) #27
  br label %143

143:                                              ; preds = %128, %142, %136
  %144 = icmp eq ptr %131, %0
  br i1 %144, label %145, label %128, !llvm.loop !216

145:                                              ; preds = %143, %122, %115
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_deps(i32 noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %11 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %10, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %9, i32 noundef %17) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %19) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  %21 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %20, ptr %21, align 8, !tbaa.struct !24
  %22 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %20, ptr noundef nonnull %4) #24, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  br label %26

26:                                               ; preds = %24, %57
  %27 = load ptr, ptr %4, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  %30 = load ptr, ptr @cfun, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %29, %34
  br i1 %35, label %57, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %38 = load i32, ptr %25, align 8, !tbaa !29
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %37, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !9
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !29
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %37, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !9
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %50 = getelementptr inbounds i32, ptr %49, i64 %44
  %51 = load i32, ptr %50, align 4, !tbaa !9
  %52 = icmp sgt i32 %51, %0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %55 = sext i32 %51 to i64
  %56 = getelementptr inbounds %struct.deps, ptr %54, i64 %55
  tail call void @deps_join(ptr noundef %56, ptr noundef %1) #24
  br label %57

57:                                               ; preds = %26, %36, %48, %53
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %58 = load i32, ptr %3, align 8
  %59 = load ptr, ptr %21, align 8
  %60 = call fastcc zeroext i8 @ei_cond(i32 %58, ptr %59, ptr noundef nonnull %4) #24, !range !25
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %26, !llvm.loop !217

62:                                               ; preds = %57, %2
  %63 = load ptr, ptr @bb_deps, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.deps, ptr %63, i64 %12
  %65 = load <2 x ptr>, ptr %1, align 8, !tbaa !5
  store <2 x ptr> %65, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.deps, ptr %1, i64 0, i32 2
  %67 = getelementptr inbounds %struct.deps, ptr %63, i64 %12, i32 2
  %68 = load <2 x ptr>, ptr %66, align 8, !tbaa !5
  store <2 x ptr> %68, ptr %67, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  ret void
}

; Function Attrs: optsize
declare void @free_deps(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sets_likely_spilled(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #28
  store i8 0, ptr %2, align 1, !tbaa !54
  call void @note_stores(ptr noundef %0, ptr noundef nonnull @sets_likely_spilled_1, ptr noundef nonnull %2) #27
  %3 = load i8, ptr %2, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #28
  ret i8 %3
}

; Function Attrs: optsize
declare ptr @sd_find_dep_between(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @add_dependence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !9
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @sets_likely_spilled_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %13 = icmp ult i32 %12, 53
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !9
  switch i32 %17, label %19 [
    i32 1, label %18
    i32 2, label %18
    i32 3, label %18
    i32 4, label %18
    i32 7, label %18
    i32 5, label %18
    i32 6, label %18
    i32 17, label %18
    i32 14, label %18
    i32 15, label %18
  ]

18:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  store i8 1, ptr %2, align 1, !tbaa !54
  br label %19

19:                                               ; preds = %14, %18, %11, %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !54
  ret i32 %3
}

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_a_and_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @compute_jump_reg_dependencies(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #6 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_ready_list() #3 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @current_sched_info, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !186
  %6 = getelementptr inbounds %struct.haifa_sched_info, ptr %3, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  store i32 0, ptr @target_n_insns, align 4, !tbaa !9
  store i32 0, ptr @sched_target_n_insns, align 4, !tbaa !9
  store i32 0, ptr @sched_n_insns, align 4, !tbaa !9
  %8 = load i32, ptr @sched_verbose, align 4, !tbaa !9
  %9 = icmp sgt i32 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, ptr @target_bb, align 4, !tbaa !9
  tail call void @debug_rgn_dependencies(i32 noundef %11) #24
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, ptr @target_bb, align 4, !tbaa !9
  tail call fastcc void @compute_trg_info(i32 noundef %16) #24
  br label %17

17:                                               ; preds = %15, %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %39, label %21

21:                                               ; preds = %17, %35
  %22 = phi ptr [ %37, %35 ], [ %19, %17 ]
  %23 = tail call i32 @try_ready(ptr noundef %22) #27
  %24 = load i32, ptr @target_n_insns, align 4, !tbaa !9
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @target_n_insns, align 4, !tbaa !9
  %26 = load ptr, ptr @h_i_d, align 8
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %26, i32 noundef %28) #24
  %30 = getelementptr inbounds %struct._haifa_insn_data, ptr %29, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !218
  %32 = and i32 %31, 258048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2126, ptr noundef nonnull @.str.12) #27
  br label %35

35:                                               ; preds = %21, %34
  %36 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = icmp eq ptr %37, %7
  br i1 %38, label %39, label %21, !llvm.loop !219

39:                                               ; preds = %35, %17
  %40 = load i32, ptr @target_bb, align 4, !tbaa !9
  %41 = add nsw i32 %40, 1
  %42 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %39
  %45 = sext i32 %40 to i64
  %46 = add nsw i64 %45, 1
  br label %47

47:                                               ; preds = %44, %99
  %48 = phi i32 [ %42, %44 ], [ %100, %99 ]
  %49 = phi i64 [ %45, %44 ], [ %104, %99 ]
  %50 = phi i64 [ %46, %44 ], [ %101, %99 ]
  %51 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.candidate, ptr %51, i64 %50
  %53 = load i8, ptr %52, align 8, !tbaa !59
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %56 = load ptr, ptr @cfun, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !19
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %62 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %63 = getelementptr inbounds i32, ptr %62, i64 %50
  %64 = load i32, ptr %63, align 4, !tbaa !9
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %61, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !9
  %68 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %60, i32 noundef %67) #24
  %69 = getelementptr i32, ptr %62, i64 %49
  %70 = getelementptr i32, ptr %69, i64 2
  %71 = load i32, ptr %70, align 4, !tbaa !9
  %72 = sext i32 %71 to i64
  %73 = getelementptr i32, ptr %61, i64 %72
  %74 = getelementptr i32, ptr %73, i64 -1
  %75 = load i32, ptr %74, align 4, !tbaa !9
  %76 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %60, i32 noundef %75) #24
  call void @get_ebb_head_tail(ptr noundef %68, ptr noundef %76, ptr noundef nonnull %2, ptr noundef nonnull %1) #27
  %77 = load ptr, ptr %1, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  %80 = load ptr, ptr %2, align 8, !tbaa !54
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %97, label %82

82:                                               ; preds = %55, %93
  %83 = phi ptr [ %95, %93 ], [ %80, %55 ]
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -11
  %87 = icmp ult i32 %86, -4
  %88 = and i32 %84, 67174399
  %89 = icmp eq i32 %88, 7
  %90 = or i1 %89, %87
  br i1 %90, label %93, label %91

91:                                               ; preds = %82
  %92 = call i32 @try_ready(ptr noundef nonnull %83) #27
  br label %93

93:                                               ; preds = %82, %91
  %94 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 2
  %95 = load ptr, ptr %94, align 8, !tbaa !54
  %96 = icmp eq ptr %95, %79
  br i1 %96, label %97, label %82, !llvm.loop !220

97:                                               ; preds = %93, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  %98 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  br label %99

99:                                               ; preds = %47, %97
  %100 = phi i32 [ %48, %47 ], [ %98, %97 ]
  %101 = add nsw i64 %50, 1
  %102 = sext i32 %100 to i64
  %103 = icmp slt i64 %101, %102
  %104 = add nsw i64 %49, 1
  br i1 %103, label %47, label %105, !llvm.loop !221

105:                                              ; preds = %99, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @can_schedule_ready_p(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = load i32, ptr @target_bb, align 4, !tbaa !9
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds %struct.candidate, ptr %13, i64 %14, i32 1
  %16 = load i8, ptr %15, align 1, !tbaa !62
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @check_live(ptr noundef nonnull %0, i32 noundef %9) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %12, %1
  br label %22

22:                                               ; preds = %18, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @schedule_more_p() #12 {
  %1 = load i32, ptr @sched_target_n_insns, align 4, !tbaa !9
  %2 = load i32, ptr @target_n_insns, align 4, !tbaa !9
  %3 = icmp slt i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @new_ready(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !9
  %12 = load i32, ptr @target_bb, align 4, !tbaa !9
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %99, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.candidate, ptr %15, i64 %16
  %18 = load i8, ptr %17, align 8, !tbaa !59
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %96, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @h_d_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = load i32, ptr %4, align 8, !tbaa !54
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %23) #24
  %25 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %21, i32 noundef %24) #24
  %26 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %25, i64 0, i32 7
  %27 = load i8, ptr %26, align 8
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %96

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.candidate, ptr %15, i64 %16, i32 1
  %32 = load i8, ptr %31, align 1, !tbaa !62
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %99, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #24
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load ptr, ptr @curr_state, align 8, !tbaa !5
  %39 = tail call i32 @min_insn_conflict_delay(ptr noundef %38, ptr noundef nonnull %0, ptr noundef nonnull %0) #27
  %40 = load ptr, ptr @compiler_params, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.param_info, ptr %40, i64 83, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !37
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %96, label %44

44:                                               ; preds = %37, %34
  %45 = tail call fastcc zeroext i8 @sel_sched_p() #24, !range !25
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %0) #27
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %96

50:                                               ; preds = %44
  %51 = load ptr, ptr @h_i_d, align 8
  %52 = load i32, ptr %4, align 8, !tbaa !54
  %53 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %51, i32 noundef %52) #24
  %54 = getelementptr inbounds %struct._haifa_insn_data, ptr %53, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !222
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %96

57:                                               ; preds = %50, %47
  %58 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %59 = load ptr, ptr %5, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !29
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %58, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !9
  %65 = tail call fastcc i32 @check_live(ptr noundef nonnull %0, i32 noundef %64) #24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %57
  %68 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %69 = load ptr, ptr %5, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !29
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %68, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !9
  %75 = load i32, ptr @target_bb, align 4, !tbaa !9
  %76 = tail call fastcc i32 @is_exception_free(ptr noundef nonnull %0, i32 noundef %74, i32 noundef %75) #24
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %67
  %79 = load ptr, ptr @sched_deps_info, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.sched_deps_info_def, ptr %79, i64 0, i32 12
  %81 = load i8, ptr %80, align 8
  %82 = and i8 %81, 4
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr @spec_info, align 8, !tbaa !5
  %86 = load i32, ptr %85, align 8, !tbaa !223
  %87 = and i32 %86, 258048
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = tail call i32 @set_dep_weak(i32 noundef %1, i32 noundef 258048, i32 noundef 62) #27
  %91 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %0, i32 noundef %90) #27
  %92 = icmp eq i8 %91, 0
  %93 = and i32 %1, -150994944
  %94 = or disjoint i32 %93, 134217728
  %95 = select i1 %92, i32 %94, i32 %90
  br label %99

96:                                               ; preds = %14, %50, %57, %47, %37, %20, %84, %78
  %97 = and i32 %1, -150994944
  %98 = or disjoint i32 %97, 134217728
  br label %99

99:                                               ; preds = %30, %67, %96, %89, %2
  %100 = phi i32 [ %1, %2 ], [ %95, %89 ], [ %98, %96 ], [ %1, %67 ], [ %1, %30 ]
  ret i32 %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rgn_rank(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %3, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !9
  %18 = icmp eq i32 %10, %17
  br i1 %18, label %42, label %19

19:                                               ; preds = %2
  %20 = load i32, ptr @target_bb, align 4, !tbaa !9
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %10, %20
  br i1 %23, label %42, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %26 = sext i32 %10 to i64
  %27 = getelementptr inbounds %struct.candidate, ptr %25, i64 %26, i32 1
  %28 = load i8, ptr %27, align 1, !tbaa !62
  %29 = sext i8 %28 to i32
  %30 = sext i32 %17 to i64
  %31 = getelementptr inbounds %struct.candidate, ptr %25, i64 %30, i32 1
  %32 = load i8, ptr %31, align 1, !tbaa !62
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %29, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.candidate, ptr %25, i64 %30, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !225
  %39 = getelementptr inbounds %struct.candidate, ptr %25, i64 %26, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !225
  %41 = sub nsw i32 %38, %40
  br label %42

42:                                               ; preds = %22, %36, %24, %19, %2
  %43 = phi i32 [ 0, %2 ], [ %34, %24 ], [ 1, %19 ], [ %41, %36 ], [ -1, %22 ]
  ret i32 %43
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef nonnull ptr @rgn_print_insn(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !29
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = load i32, ptr %6, align 8, !tbaa !54
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @rgn_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %13, i32 noundef %14) #24
  br label %38

16:                                               ; preds = %2
  %17 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !29
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %20, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !9
  %28 = load i32, ptr @target_bb, align 4, !tbaa !9
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !54
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @rgn_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %32, i32 noundef %27) #24
  br label %38

34:                                               ; preds = %19, %16
  %35 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @rgn_print_insn.tmp, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %36) #24
  br label %38

38:                                               ; preds = %30, %34, %4
  ret ptr @rgn_print_insn.tmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @rgn_insn_finishes_block_p(ptr nocapture noundef readonly %0) #11 {
  %2 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr %2, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !9
  %10 = load i32, ptr @target_bb, align 4, !tbaa !9
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, ptr @sched_target_n_insns, align 4, !tbaa !9
  %14 = add nsw i32 %13, 1
  %15 = load i32, ptr @target_n_insns, align 4, !tbaa !9
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  br label %18

18:                                               ; preds = %12, %17
  %19 = phi i8 [ 0, %17 ], [ 1, %12 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @rgn_add_remove_insn(ptr nocapture noundef readonly %0, i32 noundef %1) #19 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr @rgn_n_insns, align 4
  %5 = select i1 %3, i32 1, i32 -1
  %6 = add nsw i32 %4, %5
  store i32 %6, ptr @rgn_n_insns, align 4, !tbaa !9
  %7 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %7, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %15 = load i32, ptr @target_bb, align 4, !tbaa !9
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, ptr @target_n_insns, align 4, !tbaa !9
  %19 = select i1 %3, i32 1, i32 -1
  %20 = add nsw i32 %18, %19
  store i32 %20, ptr @target_n_insns, align 4, !tbaa !9
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @begin_schedule_ready(ptr noundef %0, ptr nocapture readnone %1) #3 {
  %3 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !9
  %12 = load i32, ptr @target_bb, align 4, !tbaa !9
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %43, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds %struct.candidate, ptr %15, i64 %16, i32 1
  %18 = load i8, ptr %17, align 1, !tbaa !62
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @check_live(ptr noundef nonnull %0, i32 noundef %11) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2177, ptr noundef nonnull @.str.12) #27
  br label %24

24:                                               ; preds = %20, %23
  %25 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %26 = load ptr, ptr %5, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !29
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %25, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !9
  tail call fastcc void @update_live(ptr noundef nonnull %0, i32 noundef %31) #24
  %32 = load ptr, ptr @h_i_d, align 8
  %33 = load i32, ptr %4, align 8, !tbaa !54
  %34 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %32, i32 noundef %33) #24
  %35 = getelementptr inbounds %struct._haifa_insn_data, ptr %34, i64 0, i32 6
  %36 = load i8, ptr %35, align 2
  %37 = and i8 %36, 3
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  tail call fastcc void @set_spec_fed(ptr noundef nonnull %0) #24
  br label %40

40:                                               ; preds = %24, %39
  %41 = load i32, ptr @nr_spec, align 4, !tbaa !9
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr @nr_spec, align 4, !tbaa !9
  br label %43

43:                                               ; preds = %2, %14, %40
  %44 = phi ptr [ @nr_inter, %40 ], [ @nr_inter, %14 ], [ @sched_target_n_insns, %2 ]
  %45 = load i32, ptr %44, align 4, !tbaa !9
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %44, align 4, !tbaa !9
  %47 = load i32, ptr @sched_n_insns, align 4, !tbaa !9
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @sched_n_insns, align 4, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @advance_target_bb(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %25

4:                                                ; preds = %2
  %5 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !9
  %11 = load i32, ptr @target_bb, align 4, !tbaa !9
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %5, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !9
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %25, label %22

22:                                               ; preds = %13, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3487, ptr noundef nonnull @.str.12) #27
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !134
  br label %25

25:                                               ; preds = %22, %13, %2
  %26 = phi ptr [ null, %2 ], [ %15, %13 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_trg_info(i32 noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.edgelst, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 40
  %8 = tail call ptr @xmalloc(i64 noundef %7) #27
  store ptr %8, ptr @candidate_table, align 8, !tbaa !5
  store i32 0, ptr @bblst_last, align 4, !tbaa !9
  %9 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %10 = load i32, ptr @target_bb, align 4, !tbaa !9
  %11 = sub nsw i32 %9, %10
  %12 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !9
  %13 = mul nsw i32 %11, %12
  store i32 %13, ptr @bblst_size, align 4, !tbaa !9
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr @xmalloc(i64 noundef %15) #27
  store ptr %16, ptr @bblst_table, align 8, !tbaa !5
  %17 = load i32, ptr @rgn_nr_edges, align 4, !tbaa !9
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @xmalloc(i64 noundef %19) #27
  store ptr %20, ptr @edgelst_table, align 8, !tbaa !5
  %21 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds %struct.candidate, ptr %21, i64 %22
  store i8 1, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.candidate, ptr %21, i64 %22, i32 1
  store i8 0, ptr %24, align 1, !tbaa !62
  %25 = getelementptr inbounds %struct.candidate, ptr %21, i64 %22, i32 2
  store i32 10000, ptr %25, align 4, !tbaa !225
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !39
  %31 = tail call ptr @sbitmap_alloc(i32 noundef %30) #27
  %32 = add nsw i32 %0, 1
  %33 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %190

35:                                               ; preds = %1
  %36 = lshr i32 %0, 6
  %37 = zext nneg i32 %36 to i64
  %38 = and i32 %0, 63
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.edgelst, ptr %2, i64 0, i32 1
  %41 = getelementptr inbounds i8, ptr %3, i64 8
  %42 = sext i32 %32 to i64
  br label %43

43:                                               ; preds = %35, %185
  %44 = phi i64 [ %42, %35 ], [ %186, %185 ]
  %45 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44
  %47 = load ptr, ptr @dom, align 8, !tbaa !5
  %48 = getelementptr inbounds ptr, ptr %47, i64 %44
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %49, i64 0, i32 3, i64 %37
  %51 = load i64, ptr %50, align 8, !tbaa !41
  %52 = lshr i64 %51, %39
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  store i8 %54, ptr %46, align 8, !tbaa !59
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %180, label %56

56:                                               ; preds = %43
  %57 = load ptr, ptr @prob, align 8, !tbaa !5
  %58 = getelementptr inbounds i32, ptr %57, i64 %22
  %59 = load i32, ptr %58, align 4, !tbaa !9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds i32, ptr %57, i64 %44
  %63 = load i32, ptr %62, align 4, !tbaa !9
  %64 = mul nsw i32 %63, 10000
  %65 = sdiv i32 %64, %59
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i32 [ %65, %61 ], [ 0, %56 ]
  %68 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 2
  store i32 %67, ptr %68, align 4, !tbaa !225
  %69 = load i32, ptr @min_spec_prob, align 4, !tbaa !9
  %70 = icmp sge i32 %67, %69
  %71 = zext i1 %70 to i8
  store i8 %71, ptr %46, align 8, !tbaa !59
  br i1 %70, label %72, label %180

72:                                               ; preds = %66
  %73 = trunc i64 %44 to i32
  call fastcc void @split_edges(i32 noundef %73, i32 noundef %0, ptr noundef nonnull %2) #24
  %74 = load i32, ptr %40, align 8, !tbaa !226
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 1
  store i8 %76, ptr %77, align 1, !tbaa !62
  %78 = load i32, ptr @flag_schedule_speculative, align 4
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %75, i1 %79, i1 false
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i8 0, ptr %46, align 8, !tbaa !59
  br label %180

82:                                               ; preds = %72
  %83 = load i8, ptr %46, align 8, !tbaa !59
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %180, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @bblst_table, align 8, !tbaa !5
  %87 = load i32, ptr @bblst_last, align 4, !tbaa !9
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88
  %90 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 3
  store ptr %89, ptr %90, align 8, !tbaa !64
  %91 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 3, i32 1
  store i32 %74, ptr %91, align 8, !tbaa !63
  %92 = icmp sgt i32 %74, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds ptr, ptr %86, i64 %88
  %95 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 4
  store ptr %94, ptr %95, align 8, !tbaa !67
  tail call void @sbitmap_zero(ptr noundef %31) #27
  br label %173

96:                                               ; preds = %85
  %97 = load ptr, ptr %2, align 8, !tbaa !227
  %98 = zext nneg i32 %74 to i64
  br label %99

99:                                               ; preds = %96, %99
  %100 = phi i64 [ %88, %96 ], [ %107, %99 ]
  %101 = phi i64 [ 0, %96 ], [ %108, %99 ]
  %102 = getelementptr inbounds ptr, ptr %97, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !26
  %106 = getelementptr inbounds ptr, ptr %86, i64 %100
  store ptr %105, ptr %106, align 8, !tbaa !5
  %107 = add nsw i64 %100, 1
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, %98
  br i1 %109, label %110, label %99, !llvm.loop !228

110:                                              ; preds = %99
  %111 = trunc i64 %107 to i32
  store i32 %111, ptr @bblst_last, align 4, !tbaa !9
  %112 = shl i64 %107, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds ptr, ptr %86, i64 %113
  %115 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 4
  store ptr %114, ptr %115, align 8, !tbaa !67
  tail call void @sbitmap_zero(ptr noundef %31) #27
  br i1 %92, label %116, label %173

116:                                              ; preds = %110
  %117 = load ptr, ptr %2, align 8, !tbaa !227
  %118 = zext nneg i32 %74 to i64
  br label %119

119:                                              ; preds = %116, %169
  %120 = phi i64 [ 0, %116 ], [ %171, %169 ]
  %121 = phi i32 [ 0, %116 ], [ %170, %169 ]
  %122 = getelementptr inbounds ptr, ptr %117, i64 %120
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = load ptr, ptr %123, align 8, !tbaa !42
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 1
  %126 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %125) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !23
  store ptr %126, ptr %41, align 8, !tbaa.struct !24
  %127 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %126, ptr noundef nonnull %4) #24, !range !25
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %169, label %129

129:                                              ; preds = %119, %163
  %130 = phi i32 [ %164, %163 ], [ %121, %119 ]
  %131 = load ptr, ptr %4, align 8, !tbaa !5
  %132 = getelementptr inbounds %struct.edge_def, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !26
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 9
  %135 = load i32, ptr %134, align 8, !tbaa !29
  %136 = lshr i32 %135, 6
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds %struct.simple_bitmap_def, ptr %31, i64 0, i32 3, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !41
  %140 = and i32 %135, 63
  %141 = zext nneg i32 %140 to i64
  %142 = shl nuw i64 1, %141
  %143 = and i64 %142, %139
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %148, label %163

145:                                              ; preds = %148
  %146 = add nuw nsw i64 %149, 1
  %147 = icmp eq i64 %146, %118
  br i1 %147, label %153, label %148, !llvm.loop !229

148:                                              ; preds = %129, %145
  %149 = phi i64 [ %146, %145 ], [ 0, %129 ]
  %150 = getelementptr inbounds ptr, ptr %117, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = icmp eq ptr %131, %151
  br i1 %152, label %163, label %145

153:                                              ; preds = %145
  %154 = load ptr, ptr @bblst_table, align 8, !tbaa !5
  %155 = load i32, ptr @bblst_last, align 4, !tbaa !9
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr @bblst_last, align 4, !tbaa !9
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157
  store ptr %133, ptr %158, align 8, !tbaa !5
  %159 = load ptr, ptr %132, align 8, !tbaa !26
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 9
  %161 = load i32, ptr %160, align 8, !tbaa !29
  tail call fastcc void @SET_BIT(ptr noundef %31, i32 noundef %161) #24
  %162 = add nsw i32 %130, 1
  br label %163

163:                                              ; preds = %148, %129, %153
  %164 = phi i32 [ %130, %129 ], [ %162, %153 ], [ %130, %148 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %165 = load i32, ptr %3, align 8
  %166 = load ptr, ptr %41, align 8
  %167 = call fastcc zeroext i8 @ei_cond(i32 %165, ptr %166, ptr noundef nonnull %4) #24, !range !25
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %129, !llvm.loop !230

169:                                              ; preds = %163, %119
  %170 = phi i32 [ %121, %119 ], [ %164, %163 ]
  %171 = add nuw nsw i64 %120, 1
  %172 = icmp eq i64 %171, %118
  br i1 %172, label %173, label %119, !llvm.loop !231

173:                                              ; preds = %169, %93, %110
  %174 = phi i32 [ 0, %110 ], [ 0, %93 ], [ %170, %169 ]
  %175 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 4, i32 1
  store i32 %174, ptr %175, align 8, !tbaa !66
  %176 = load i32, ptr @bblst_last, align 4, !tbaa !9
  %177 = load i32, ptr @bblst_size, align 4, !tbaa !9
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1572, ptr noundef nonnull @.str.12) #27
  br label %185

180:                                              ; preds = %43, %66, %81, %82
  %181 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 4, i32 1
  store i32 0, ptr %181, align 8, !tbaa !66
  %182 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 3, i32 1
  store i32 0, ptr %182, align 8, !tbaa !63
  %183 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 1
  store i8 0, ptr %183, align 1, !tbaa !62
  %184 = getelementptr inbounds %struct.candidate, ptr %45, i64 %44, i32 2
  store i32 0, ptr %184, align 4, !tbaa !225
  br label %185

185:                                              ; preds = %179, %173, %180
  %186 = add nsw i64 %44, 1
  %187 = load i32, ptr @current_nr_blocks, align 4, !tbaa !9
  %188 = sext i32 %187 to i64
  %189 = icmp slt i64 %186, %188
  br i1 %189, label %43, label %190, !llvm.loop !232

190:                                              ; preds = %185, %1
  %191 = load ptr, ptr %31, align 8, !tbaa !52
  tail call void @free(ptr noundef %191) #24
  tail call void @free(ptr noundef %31) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #28
  ret void
}

; Function Attrs: optsize
declare i32 @try_ready(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_edges(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = load ptr, ptr @pot_split, align 8, !tbaa !5
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !233
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #27
  %11 = load ptr, ptr @pot_split, align 8, !tbaa !5
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  tail call void @sbitmap_copy(ptr noundef %10, ptr noundef %13) #27
  %14 = load ptr, ptr @pot_split, align 8, !tbaa !5
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  tail call void @sbitmap_difference(ptr noundef %10, ptr noundef %10, ptr noundef %17) #27
  tail call fastcc void @extract_edgelst(ptr noundef %10, ptr noundef %2) #24
  %18 = load ptr, ptr %10, align 8, !tbaa !52
  tail call void @free(ptr noundef %18) #24
  tail call void @free(ptr noundef %10) #24
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @extract_edgelst(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #22 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store i32 0, ptr %3, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  %5 = load ptr, ptr @edgelst_table, align 8, !tbaa !5
  store ptr %5, ptr %1, align 8, !tbaa !227
  %6 = getelementptr inbounds %struct.edgelst, ptr %1, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !226
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %0) #24
  %7 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @rgn_edges, align 8, !tbaa !5
  %11 = load i32, ptr %6, align 8, !tbaa !226
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %19, %12 ]
  %14 = phi i32 [ %11, %9 ], [ %21, %12 ]
  %15 = load i32, ptr %3, align 4, !tbaa !9
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %10, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = add nuw i64 %13, 1
  %20 = getelementptr inbounds ptr, ptr %5, i64 %13
  store ptr %18, ptr %20, align 8, !tbaa !5
  %21 = add nsw i32 %14, 1
  store i32 %21, ptr %6, align 8, !tbaa !226
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #24
  %22 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %12, !llvm.loop !234

24:                                               ; preds = %12, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !235
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !237
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !238
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !240
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !41
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !241
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !239
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !235
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !235
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !237
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !237
  %25 = load ptr, ptr %0, align 8, !tbaa !240
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !41
  store i64 %28, ptr %3, align 8, !tbaa !241
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !242

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !243

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !237
  store i64 %34, ptr %3, align 8, !tbaa !241
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !9
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !235
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !241
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !241
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !237
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !237
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_live(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %31 [
    i16 23, label %7
    i16 25, label %7
    i16 15, label %9
  ]

7:                                                ; preds = %2, %2
  %8 = tail call fastcc i32 @check_live_1(i32 noundef %1, ptr noundef nonnull %4) #24
  br label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = load i32, ptr %11, align 8, !tbaa !244
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = zext nneg i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %29
  %17 = phi i64 [ %15, %14 ], [ %18, %29 ]
  %18 = add nsw i64 %17, -1
  %19 = load ptr, ptr %3, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %29 [
    i16 23, label %26
    i16 25, label %26
  ]

26:                                               ; preds = %16, %16
  %27 = tail call fastcc i32 @check_live_1(i32 noundef %1, ptr noundef nonnull %23) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %16, %26
  %30 = icmp ugt i64 %17, 1
  br i1 %30, label %16, label %31, !llvm.loop !246

31:                                               ; preds = %29, %26, %9, %2, %7
  %32 = phi i32 [ %8, %7 ], [ 1, %2 ], [ 1, %9 ], [ 1, %29 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_live_1(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %153, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %12, %10 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %153 [
    i16 39, label %10
    i16 120, label %10
    i16 40, label %10
    i16 15, label %13
    i16 37, label %34
  ]

10:                                               ; preds = %6, %6, %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  br label %6, !llvm.loop !247

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = load i32, ptr %15, align 8, !tbaa !244
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %153

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  br label %20

20:                                               ; preds = %18, %32
  %21 = phi i64 [ %19, %18 ], [ %22, %32 ]
  %22 = add nsw i64 %21, -1
  %23 = load ptr, ptr %14, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %23, i64 0, i32 1, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = tail call fastcc i32 @check_live_1(i32 noundef %0, ptr noundef nonnull %27) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %153

32:                                               ; preds = %20, %29
  %33 = icmp ugt i64 %21, 1
  br i1 %33, label %20, label %153, !llvm.loop !248

34:                                               ; preds = %6
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #24
  %36 = icmp slt i32 %35, 53
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = sext i32 %0 to i64
  %39 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.candidate, ptr %39, i64 %38, i32 3, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %118, label %153

43:                                               ; preds = %34
  %44 = sext i32 %35 to i64
  %45 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !54
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %153

48:                                               ; preds = %43
  %49 = lshr i32 %8, 16
  %50 = and i32 %49, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %44, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !54
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %153, label %55

55:                                               ; preds = %48
  %56 = zext i8 %53 to i32
  %57 = sext i32 %0 to i64
  %58 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  br label %62

59:                                               ; preds = %71, %62
  %60 = phi ptr [ %63, %62 ], [ %73, %71 ]
  %61 = icmp slt i32 %64, 2
  br i1 %61, label %153, label %62, !llvm.loop !249

62:                                               ; preds = %55, %59
  %63 = phi ptr [ %58, %55 ], [ %60, %59 ]
  %64 = phi i32 [ %56, %55 ], [ %65, %59 ]
  %65 = add nsw i32 %64, -1
  %66 = getelementptr inbounds %struct.candidate, ptr %63, i64 %57, i32 3, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !63
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %59

69:                                               ; preds = %62
  %70 = add nsw i32 %65, %35
  br label %78

71:                                               ; preds = %107
  %72 = add nuw nsw i64 %79, 1
  %73 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.candidate, ptr %73, i64 %57, i32 3, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !63
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %59, !llvm.loop !250

78:                                               ; preds = %69, %71
  %79 = phi i64 [ 0, %69 ], [ %72, %71 ]
  %80 = phi ptr [ %63, %69 ], [ %73, %71 ]
  %81 = getelementptr inbounds %struct.candidate, ptr %80, i64 %57, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !64
  %83 = getelementptr inbounds ptr, ptr %82, i64 %79
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !29
  %87 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @not_in_df, i32 noundef %86) #27
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 9
  %91 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %92 = load i32, ptr %90, align 8, !tbaa !29
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %91, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !9
  %96 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %97 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %98 = getelementptr inbounds i32, ptr %97, i64 %57
  %99 = load i32, ptr %98, align 4, !tbaa !9
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %96, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !9
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %91, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !9
  %106 = icmp eq i32 %95, %105
  br i1 %106, label %151, label %153

107:                                              ; preds = %78
  %108 = tail call ptr @df_get_live_in(ptr noundef nonnull %84) #27
  %109 = tail call i32 @bitmap_bit_p(ptr noundef %108, i32 noundef %70) #27
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %71, label %153

111:                                              ; preds = %147
  %112 = add nuw nsw i64 %119, 1
  %113 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %114 = getelementptr inbounds %struct.candidate, ptr %113, i64 %38, i32 3, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !63
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %112, %116
  br i1 %117, label %118, label %153, !llvm.loop !251

118:                                              ; preds = %37, %111
  %119 = phi i64 [ %112, %111 ], [ 0, %37 ]
  %120 = phi ptr [ %113, %111 ], [ %39, %37 ]
  %121 = getelementptr inbounds %struct.candidate, ptr %120, i64 %38, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !64
  %123 = getelementptr inbounds ptr, ptr %122, i64 %119
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 8, !tbaa !29
  %127 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @not_in_df, i32 noundef %126) #27
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  %131 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %132 = load i32, ptr %130, align 8, !tbaa !29
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, ptr %131, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !9
  %136 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %137 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %138 = getelementptr inbounds i32, ptr %137, i64 %38
  %139 = load i32, ptr %138, align 4, !tbaa !9
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, ptr %136, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !9
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %131, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !9
  %146 = icmp eq i32 %135, %145
  br i1 %146, label %151, label %153

147:                                              ; preds = %118
  %148 = tail call ptr @df_get_live_in(ptr noundef nonnull %124) #27
  %149 = tail call i32 @bitmap_bit_p(ptr noundef %148, i32 noundef %35) #27
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %111, label %153

151:                                              ; preds = %129, %89
  %152 = phi i32 [ 1705, %89 ], [ 1721, %129 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef %152, ptr noundef nonnull @.str.12) #27
  br label %153

153:                                              ; preds = %6, %147, %111, %59, %107, %32, %29, %151, %13, %48, %37, %89, %129, %43, %2
  %154 = phi i32 [ 1, %2 ], [ 0, %43 ], [ 0, %129 ], [ 0, %89 ], [ 1, %37 ], [ 1, %48 ], [ 0, %13 ], [ 0, %151 ], [ 0, %32 ], [ 1, %29 ], [ 0, %107 ], [ 1, %59 ], [ 1, %111 ], [ 0, %147 ], [ 1, %6 ]
  ret i32 %154
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @min_insn_conflict_delay(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @is_exception_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call i32 @haifa_classify_insn(ptr noundef %0) #27
  switch i32 %4, label %6 [
    i32 0, label %29
    i32 5, label %5
  ]

5:                                                ; preds = %3
  br label %29

6:                                                ; preds = %3
  %7 = load i32, ptr @flag_schedule_speculative_load, align 4, !tbaa !9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @h_i_d, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !54
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %10, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = or i8 %15, 2
  store i8 %16, ptr %14, align 2
  switch i32 %4, label %27 [
    i32 1, label %29
    i32 4, label %17
    i32 2, label %18
    i32 3, label %21
  ]

17:                                               ; preds = %9
  br label %29

18:                                               ; preds = %9
  %19 = tail call fastcc i32 @is_pfree(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %9
  %22 = load i32, ptr @flag_schedule_speculative_load_dangerous, align 4, !tbaa !9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @is_prisky(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #24, !range !252
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %9, %24
  %28 = load i32, ptr @flag_schedule_speculative_load_dangerous, align 4, !tbaa !9
  br label %29

29:                                               ; preds = %21, %24, %18, %9, %6, %3, %27, %17, %5
  %30 = phi i32 [ %28, %27 ], [ 0, %17 ], [ 0, %5 ], [ 1, %3 ], [ 0, %6 ], [ %4, %9 ], [ 1, %18 ], [ 0, %24 ], [ 0, %21 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @set_dep_weak(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @haifa_classify_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @is_pfree(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._sd_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct._sd_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  %9 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.candidate, ptr %9, i64 %10, i32 3
  %12 = getelementptr inbounds %struct.candidate, ptr %9, i64 %10, i32 3, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %4, ptr noundef %0, i32 noundef 3) #24
  %16 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %15, %56
  %19 = load ptr, ptr %5, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct._dep, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !253
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #28
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %8, ptr noundef %24, i32 noundef 4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #28
  %25 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %52, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #28
  br label %56

28:                                               ; preds = %23, %52
  %29 = load ptr, ptr %7, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct._dep, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct._dep, ptr %29, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !253
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = call i32 @haifa_classify_insn(ptr noundef %31) #27
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !29
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %39, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !9
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %55, label %48

48:                                               ; preds = %38
  %49 = load ptr, ptr %11, align 8, !tbaa !64
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, %41
  br i1 %51, label %55, label %52

52:                                               ; preds = %28, %48, %35
  call fastcc void @sd_iterator_next(ptr noundef nonnull %6) #24
  %53 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %6, ptr noundef nonnull %7) #24
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %27, label %28, !llvm.loop !255

55:                                               ; preds = %38, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #28
  br label %59

56:                                               ; preds = %27, %18
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #24
  %57 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %18, !llvm.loop !256

59:                                               ; preds = %56, %15, %55, %3
  %60 = phi i32 [ 0, %3 ], [ 1, %55 ], [ 0, %15 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @is_prisky(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = load ptr, ptr @h_i_d, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !54
  %7 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %4, i32 noundef %6) #24
  %8 = getelementptr inbounds %struct._haifa_insn_data, ptr %7, i64 0, i32 6
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = tail call zeroext i8 @sd_lists_empty_p(ptr noundef nonnull %0, i32 noundef 3) #27
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @is_conditionally_protected(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #24
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %15, %12, %3
  %20 = phi i32 [ 1, %3 ], [ 1, %12 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: optsize
declare zeroext i8 @sd_lists_empty_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @is_conditionally_protected(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %4, ptr noundef %0, i32 noundef 3) #24
  %6 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %169, label %8

8:                                                ; preds = %3
  %9 = sext i32 %1 to i64
  %10 = icmp ne i32 %2, 0
  %11 = sext i32 %2 to i64
  br label %12

12:                                               ; preds = %8, %166
  %13 = load ptr, ptr %5, align 8, !tbaa !5
  %14 = load ptr, ptr %13, align 8, !tbaa !254
  %15 = getelementptr inbounds %struct._dep, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !253
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %166

18:                                               ; preds = %12
  %19 = load i32, ptr %14, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %166, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !29
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %23, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !9
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %166, label %32

32:                                               ; preds = %22
  %33 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %34 = getelementptr inbounds i32, ptr %33, i64 %28
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %36 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %37 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %38 = getelementptr inbounds i32, ptr %37, i64 %9
  %39 = load i32, ptr %38, align 4, !tbaa !9
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %36, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !9
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %33, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !9
  %46 = icmp eq i32 %35, %45
  br i1 %46, label %47, label %166

47:                                               ; preds = %32
  %48 = icmp ne i32 %30, %2
  %49 = and i1 %10, %48
  br i1 %49, label %50, label %161

50:                                               ; preds = %47
  %51 = load ptr, ptr @ancestor_edges, align 8, !tbaa !5
  %52 = sext i32 %30 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = load ptr, ptr @cfun, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !19
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !21
  %60 = getelementptr inbounds i32, ptr %37, i64 %11
  %61 = load i32, ptr %60, align 4, !tbaa !9
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %36, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !9
  %65 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %59, i32 noundef %64) #24
  %66 = call fastcc ptr @single_pred_edge(ptr noundef %65) #24
  %67 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !164
  %69 = ptrtoint ptr %68 to i64
  %70 = lshr i64 %69, 6
  %71 = and i64 %70, 67108863
  %72 = getelementptr inbounds %struct.simple_bitmap_def, ptr %54, i64 0, i32 3, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !41
  %74 = load ptr, ptr @cfun, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !19
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !21
  %79 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %80 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %81 = getelementptr inbounds i32, ptr %80, i64 %11
  %82 = load i32, ptr %81, align 4, !tbaa !9
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %79, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !9
  %86 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %78, i32 noundef %85) #24
  %87 = call fastcc ptr @single_pred_edge(ptr noundef %86) #24
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !164
  %90 = ptrtoint ptr %89 to i64
  %91 = and i64 %90, 63
  %92 = shl nuw i64 1, %91
  %93 = and i64 %92, %73
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %161

95:                                               ; preds = %50
  %96 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %97 = load ptr, ptr %24, align 8, !tbaa !54
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !29
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %96, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !9
  %103 = icmp eq i32 %102, %2
  %104 = icmp eq i32 %102, 0
  %105 = or i1 %103, %104
  br i1 %105, label %161, label %106

106:                                              ; preds = %95
  %107 = load ptr, ptr @ancestor_edges, align 8, !tbaa !5
  %108 = getelementptr inbounds ptr, ptr %107, i64 %11
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  %110 = load ptr, ptr @cfun, align 8, !tbaa !5
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !19
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !21
  %115 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %116 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %117 = sext i32 %102 to i64
  %118 = getelementptr inbounds i32, ptr %116, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !9
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %115, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !9
  %123 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %114, i32 noundef %122) #24
  %124 = call fastcc ptr @single_pred_edge(ptr noundef %123) #24
  %125 = getelementptr inbounds %struct.edge_def, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !164
  %127 = ptrtoint ptr %126 to i64
  %128 = lshr i64 %127, 6
  %129 = and i64 %128, 67108863
  %130 = getelementptr inbounds %struct.simple_bitmap_def, ptr %109, i64 0, i32 3, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !41
  %132 = load ptr, ptr @cfun, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.function, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  %135 = getelementptr inbounds %struct.control_flow_graph, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !21
  %137 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %138 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %139 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %140 = load ptr, ptr %24, align 8, !tbaa !54
  %141 = getelementptr inbounds %struct.basic_block_def, ptr %140, i64 0, i32 9
  %142 = load i32, ptr %141, align 8, !tbaa !29
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %139, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !9
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %138, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !9
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %137, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !9
  %152 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %136, i32 noundef %151) #24
  %153 = call fastcc ptr @single_pred_edge(ptr noundef %152) #24
  %154 = getelementptr inbounds %struct.edge_def, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !164
  %156 = ptrtoint ptr %155 to i64
  %157 = and i64 %156, 63
  %158 = shl nuw i64 1, %157
  %159 = and i64 %158, %131
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %106, %95, %50, %47
  %162 = call fastcc i32 @find_conditional_protection(ptr noundef nonnull %14, i32 noundef %1) #24
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = call fastcc i32 @is_conditionally_protected(ptr noundef nonnull %14, i32 noundef %1, i32 noundef %2) #24
  br label %169

166:                                              ; preds = %18, %12, %106, %32, %22
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #24
  %167 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %12, !llvm.loop !257

169:                                              ; preds = %166, %3, %164, %161
  %170 = phi i32 [ %165, %164 ], [ 1, %161 ], [ 0, %3 ], [ 0, %166 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  ret i32 %170
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_conditional_protection(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef %0, i32 noundef 4) #24
  %5 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %117, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %114
  %10 = load ptr, ptr %4, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct._dep, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = load ptr, ptr @containing_rgn, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %13, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !9
  %21 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %22 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %23 = getelementptr inbounds i32, ptr %22, i64 %8
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %21, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !9
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %13, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !9
  %31 = icmp eq i32 %20, %30
  br i1 %31, label %32, label %114

32:                                               ; preds = %9
  %33 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %34 = getelementptr inbounds i32, ptr %33, i64 %18
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %36 = icmp eq i32 %35, %1
  %37 = icmp eq i32 %35, 0
  %38 = or i1 %36, %37
  br i1 %38, label %100, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr @ancestor_edges, align 8, !tbaa !5
  %41 = getelementptr inbounds ptr, ptr %40, i64 %8
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = load ptr, ptr @cfun, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !19
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = sext i32 %35 to i64
  %49 = getelementptr inbounds i32, ptr %22, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !9
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %21, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !9
  %54 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %47, i32 noundef %53) #24
  %55 = call fastcc ptr @single_pred_edge(ptr noundef %54) #24
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !164
  %58 = ptrtoint ptr %57 to i64
  %59 = lshr i64 %58, 6
  %60 = and i64 %59, 67108863
  %61 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !41
  %63 = load ptr, ptr @cfun, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !19
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !21
  %68 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %69 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %70 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %71 = load ptr, ptr %14, align 8, !tbaa !54
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !29
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %70, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !9
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %69, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !9
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %68, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !9
  %83 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %67, i32 noundef %82) #24
  %84 = call fastcc ptr @single_pred_edge(ptr noundef %83) #24
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !164
  %87 = ptrtoint ptr %86 to i64
  %88 = and i64 %87, 63
  %89 = shl nuw i64 1, %88
  %90 = and i64 %89, %62
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %39
  %93 = load ptr, ptr @block_to_bb, align 8, !tbaa !5
  %94 = load ptr, ptr %14, align 8, !tbaa !54
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !29
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %93, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !9
  br label %100

100:                                              ; preds = %92, %32
  %101 = phi i32 [ %99, %92 ], [ %35, %32 ]
  %102 = icmp eq i32 %101, %1
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct._dep, ptr %10, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !253
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, ptr %12, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = call fastcc i32 @find_conditional_protection(ptr noundef nonnull %12, i32 noundef %1) #24
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111, %103, %100, %39, %9
  call fastcc void @sd_iterator_next(ptr noundef nonnull %3) #24
  %115 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %9, !llvm.loop !258

117:                                              ; preds = %107, %111, %114, %2
  %118 = phi i32 [ 0, %2 ], [ 0, %114 ], [ 1, %111 ], [ 1, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  ret i32 %118
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_live(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %28 [
    i16 23, label %7
    i16 25, label %7
    i16 15, label %8
  ]

7:                                                ; preds = %2, %2
  tail call fastcc void @update_live_1(i32 noundef %1, ptr noundef nonnull %4) #24
  br label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = load i32, ptr %10, align 8, !tbaa !244
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %26
  %16 = phi i64 [ %14, %13 ], [ %17, %26 ]
  %17 = add nsw i64 %16, -1
  %18 = load ptr, ptr %3, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i32, ptr %22, align 8
  %24 = trunc i32 %23 to i16
  switch i16 %24, label %26 [
    i16 23, label %25
    i16 25, label %25
  ]

25:                                               ; preds = %15, %15
  tail call fastcc void @update_live_1(i32 noundef %1, ptr noundef nonnull %22) #24
  br label %26

26:                                               ; preds = %15, %25
  %27 = icmp ugt i64 %16, 1
  br i1 %27, label %15, label %28, !llvm.loop !259

28:                                               ; preds = %26, %8, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_spec_fed(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 4) #24
  %4 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %21
  %7 = load ptr, ptr %3, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct._dep, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !253
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load ptr, ptr @h_i_d, align 8
  %13 = getelementptr inbounds %struct._dep, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %12, i32 noundef %16) #24
  %18 = getelementptr inbounds %struct._haifa_insn_data, ptr %17, i64 0, i32 6
  %19 = load i8, ptr %18, align 2
  %20 = or i8 %19, 1
  store i8 %20, ptr %18, align 2
  br label %21

21:                                               ; preds = %6, %11
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #24
  %22 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %6, !llvm.loop !260

24:                                               ; preds = %21, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_live_1(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %99, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %12, %10 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %99 [
    i16 39, label %10
    i16 120, label %10
    i16 40, label %10
    i16 15, label %13
    i16 37, label %32
  ]

10:                                               ; preds = %6, %6, %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  br label %6, !llvm.loop !261

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = load i32, ptr %15, align 8, !tbaa !244
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %99

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  br label %20

20:                                               ; preds = %18, %30
  %21 = phi i64 [ %19, %18 ], [ %22, %30 ]
  %22 = add nsw i64 %21, -1
  %23 = load ptr, ptr %14, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %23, i64 0, i32 1, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  tail call fastcc void @update_live_1(i32 noundef %0, ptr noundef nonnull %27) #24
  br label %30

30:                                               ; preds = %20, %29
  %31 = icmp ugt i64 %21, 1
  br i1 %31, label %20, label %99, !llvm.loop !262

32:                                               ; preds = %6
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #24
  %34 = icmp sgt i32 %33, 52
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = sext i32 %0 to i64
  %37 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.candidate, ptr %37, i64 %36, i32 4, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %84, label %99

41:                                               ; preds = %32
  %42 = sext i32 %33 to i64
  %43 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !54
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %41
  %47 = lshr i32 %8, 16
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %42, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !54
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %99, label %53

53:                                               ; preds = %46
  %54 = zext i8 %51 to i32
  %55 = sext i32 %0 to i64
  %56 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  br label %60

57:                                               ; preds = %69, %60
  %58 = phi ptr [ %61, %60 ], [ %79, %69 ]
  %59 = icmp sgt i32 %62, 1
  br i1 %59, label %60, label %99, !llvm.loop !263

60:                                               ; preds = %53, %57
  %61 = phi ptr [ %56, %53 ], [ %58, %57 ]
  %62 = phi i32 [ %54, %53 ], [ %63, %57 ]
  %63 = add nsw i32 %62, -1
  %64 = getelementptr inbounds %struct.candidate, ptr %61, i64 %55, i32 4, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !66
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %57

67:                                               ; preds = %60
  %68 = add nsw i32 %63, %33
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %78, %69 ]
  %71 = phi ptr [ %61, %67 ], [ %79, %69 ]
  %72 = getelementptr inbounds %struct.candidate, ptr %71, i64 %55, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !67
  %74 = getelementptr inbounds ptr, ptr %73, i64 %70
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = tail call ptr @df_get_live_in(ptr noundef %75) #27
  %77 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %76, i32 noundef %68) #27
  %78 = add nuw nsw i64 %70, 1
  %79 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.candidate, ptr %79, i64 %55, i32 4, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !66
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %78, %82
  br i1 %83, label %69, label %57, !llvm.loop !264

84:                                               ; preds = %35, %84
  %85 = phi i64 [ %93, %84 ], [ 0, %35 ]
  %86 = phi ptr [ %94, %84 ], [ %37, %35 ]
  %87 = getelementptr inbounds %struct.candidate, ptr %86, i64 %36, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !67
  %89 = getelementptr inbounds ptr, ptr %88, i64 %85
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = tail call ptr @df_get_live_in(ptr noundef %90) #27
  %92 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %91, i32 noundef %33) #27
  %93 = add nuw nsw i64 %85, 1
  %94 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.candidate, ptr %94, i64 %36, i32 4, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !66
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %84, label %99, !llvm.loop !265

99:                                               ; preds = %6, %57, %84, %30, %46, %35, %13, %41, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_extend_ready_list(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_init_region_reg_pressure_info() local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_setup_bb_reg_pressure_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @remove_notes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @unlink_bb_notes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @schedule_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_trg_info() unnamed_addr #17 {
  %1 = load ptr, ptr @candidate_table, align 8, !tbaa !5
  tail call void @free(ptr noundef %1) #24
  %2 = load ptr, ptr @bblst_table, align 8, !tbaa !5
  tail call void @free(ptr noundef %2) #24
  %3 = load ptr, ptr @edgelst_table, align 8, !tbaa !5
  tail call void @free(ptr noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @sched_finish_ready_list() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_block_dependencies(i32 noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = load ptr, ptr @rgn_bb_table, align 8, !tbaa !5
  %10 = load ptr, ptr @ebb_head, align 8, !tbaa !5
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %9, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !9
  %17 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %16) #24
  %18 = getelementptr i32, ptr %12, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !9
  %20 = sext i32 %19 to i64
  %21 = getelementptr i32, ptr %9, i64 %20
  %22 = getelementptr i32, ptr %21, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !9
  %24 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %23) #24
  call void @get_ebb_head_tail(ptr noundef %17, ptr noundef %24, ptr noundef nonnull %2, ptr noundef nonnull %3) #27
  %25 = load ptr, ptr %2, align 8, !tbaa !5
  %26 = load ptr, ptr %3, align 8, !tbaa !5
  %27 = call i32 @no_real_insns_p(ptr noundef %25, ptr noundef %26) #27
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load ptr, ptr %2, align 8, !tbaa !5
  %31 = load ptr, ptr %3, align 8, !tbaa !5
  call void @sched_free_deps(ptr noundef %30, ptr noundef %31, i8 noundef zeroext 1) #27
  br label %32

32:                                               ; preds = %1, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare zeroext i8 @maybe_skip_selective_scheduling() local_unnamed_addr #4

; Function Attrs: optsize
declare void @run_selective_scheduling() local_unnamed_addr #4

; Function Attrs: optsize
declare void @schedule_ebbs() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #23

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { optsize }
attributes #25 = { cold optsize }
attributes #26 = { cold }
attributes #27 = { nounwind optsize }
attributes #28 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 8}
!13 = !{!12, !10, i64 4}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!20, !6, i64 8}
!20 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !6, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!21 = !{!22, !6, i64 16}
!22 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !6, i64 40, !10, i64 48, !7, i64 52, !7, i64 60, !10, i64 68, !10, i64 72}
!23 = !{i64 0, i64 4, !9, i64 8, i64 8, !5}
!24 = !{i64 0, i64 8, !5}
!25 = !{i8 0, i8 2}
!26 = !{!27, !6, i64 8}
!27 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !28, i64 56}
!28 = !{!"long", !7, i64 0}
!29 = !{!30, !10, i64 80}
!30 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !28, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = !{!35, !10, i64 0}
!35 = !{!"", !10, i64 0, !6, i64 8}
!36 = !{!22, !10, i64 24}
!37 = !{!38, !10, i64 8}
!38 = !{!"param_info", !6, i64 0, !10, i64 8, !7, i64 12, !10, i64 16, !10, i64 20, !6, i64 24}
!39 = !{!22, !10, i64 32}
!40 = distinct !{!40, !15}
!41 = !{!28, !28, i64 0}
!42 = !{!27, !6, i64 0}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = !{!22, !6, i64 8}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = !{!53, !6, i64 0}
!53 = !{!"simple_bitmap_def", !6, i64 0, !10, i64 8, !10, i64 12, !7, i64 16}
!54 = !{!7, !7, i64 0}
!55 = distinct !{!55, !15}
!56 = !{!57, !6, i64 16}
!57 = !{!"common_sched_info_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32}
!58 = distinct !{!58, !15}
!59 = !{!60, !7, i64 0}
!60 = !{!"", !7, i64 0, !7, i64 1, !10, i64 4, !61, i64 8, !61, i64 24}
!61 = !{!"", !6, i64 0, !10, i64 8}
!62 = !{!60, !7, i64 1}
!63 = !{!60, !10, i64 16}
!64 = !{!60, !6, i64 8}
!65 = distinct !{!65, !15}
!66 = !{!60, !10, i64 32}
!67 = !{!60, !6, i64 24}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = !{!71, !10, i64 100}
!71 = !{!"haifa_sched_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !10, i64 96, !10, i64 100, !6, i64 104, !6, i64 112, !6, i64 120, !10, i64 128}
!72 = !{!73, !6, i64 104}
!73 = !{!"deps", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !10, i64 80, !6, i64 88, !10, i64 96, !6, i64 104, !74, i64 112, !74, i64 144, !10, i64 176, !10, i64 180}
!74 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !10, i64 16, !6, i64 24}
!75 = !{!76, !6, i64 0}
!76 = !{!"deps_reg", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !10, i64 36}
!77 = !{!76, !6, i64 8}
!78 = !{!76, !6, i64 16}
!79 = !{!76, !6, i64 24}
!80 = distinct !{!80, !15}
!81 = !{!73, !6, i64 0}
!82 = !{!73, !6, i64 8}
!83 = !{!73, !6, i64 16}
!84 = !{!73, !6, i64 24}
!85 = !{!73, !6, i64 48}
!86 = !{!73, !10, i64 40}
!87 = !{!73, !6, i64 56}
!88 = !{!73, !6, i64 64}
!89 = !{!73, !6, i64 72}
!90 = !{!74, !6, i64 0}
!91 = !{!92, !6, i64 0}
!92 = !{!"", !6, i64 0, !6, i64 8, !10, i64 16, !28, i64 24}
!93 = !{!92, !6, i64 8}
!94 = !{!95, !10, i64 16}
!95 = !{!"bitmap_element_def", !6, i64 0, !6, i64 8, !10, i64 16, !7, i64 24}
!96 = !{!92, !10, i64 16}
!97 = !{!92, !28, i64 24}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = !{!95, !6, i64 0}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15}
!104 = !{!105, !10, i64 4}
!105 = !{!"_haifa_insn_data", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !106, i64 20, !10, i64 22, !10, i64 22, !7, i64 23, !10, i64 24, !10, i64 28, !10, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !10, i64 88}
!106 = !{!"short", !7, i64 0}
!107 = !{i64 0, i64 4, !9, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 1, !54}
!108 = !{!109, !6, i64 8}
!109 = !{!"_dep", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 20}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = !{!57, !10, i64 32}
!113 = !{!114, !10, i64 0}
!114 = !{!"_sd_iterator", !10, i64 0, !6, i64 8, !6, i64 16, !7, i64 24}
!115 = !{!114, !6, i64 8}
!116 = !{!114, !6, i64 16}
!117 = !{!114, !7, i64 24}
!118 = !{!119, !6, i64 0}
!119 = !{!"_dep_link", !6, i64 0, !6, i64 8, !6, i64 16}
!120 = distinct !{!120, !15}
!121 = !{!30, !10, i64 96}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = !{!125, !6, i64 344}
!125 = !{!"rtl_data", !126, i64 0, !127, i64 40, !128, i64 96, !129, i64 112, !131, i64 208, !132, i64 248, !10, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !28, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !10, i64 432, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !6, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!126 = !{!"expr_status", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!127 = !{!"emit_status", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !6, i64 48}
!128 = !{!"varasm_status", !6, i64 0, !10, i64 8}
!129 = !{!"incoming_args", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 16, !130, i64 24, !6, i64 88}
!130 = !{!"ix86_args", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60}
!131 = !{!"function_subsections", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!132 = !{!"rtl_eh", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !7, i64 48}
!133 = !{!22, !6, i64 0}
!134 = !{!30, !6, i64 56}
!135 = !{!136, !6, i64 8}
!136 = !{!"rtl_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = !{!30, !6, i64 0}
!140 = distinct !{!140, !15}
!141 = !{!136, !6, i64 0}
!142 = !{!27, !10, i64 48}
!143 = distinct !{!143, !15}
!144 = !{!27, !10, i64 52}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 4, !9, i64 36, i64 4, !9, i64 40, i64 4, !9, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 4, !9, i64 88, i64 8, !5, i64 96, i64 4, !9, i64 104, i64 8, !5, i64 112, i64 8, !5, i64 120, i64 8, !5, i64 128, i64 4, !9, i64 136, i64 8, !5, i64 144, i64 8, !5, i64 152, i64 8, !5, i64 160, i64 4, !9, i64 168, i64 8, !5, i64 176, i64 4, !9, i64 180, i64 4, !9}
!151 = !{!152, !6, i64 448}
!152 = !{!"gcc_target", !153, i64 0, !155, i64 368, !156, i64 664, !10, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !28, i64 1064, !28, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !157, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !28, i64 1464, !158, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !159, i64 1784, !160, i64 1792, !161, i64 1896, !162, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!153 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !154, i64 24, !154, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!154 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!155 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!156 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!157 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!158 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!159 = !{!"c", !6, i64 0}
!160 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!161 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!162 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!163 = distinct !{!163, !15}
!164 = !{!27, !6, i64 24}
!165 = distinct !{!165, !15}
!166 = distinct !{!166, !15}
!167 = distinct !{!167, !15}
!168 = distinct !{!168, !15}
!169 = distinct !{!169, !15}
!170 = distinct !{!170, !15}
!171 = distinct !{!171, !15}
!172 = distinct !{!172, !15}
!173 = distinct !{!173, !15}
!174 = !{!57, !6, i64 0}
!175 = !{!57, !6, i64 8}
!176 = distinct !{!176, !15}
!177 = distinct !{!177, !15}
!178 = distinct !{!178, !15}
!179 = distinct !{!179, !15}
!180 = distinct !{!180, !15}
!181 = distinct !{!181, !15}
!182 = distinct !{!182, !15}
!183 = distinct !{!183, !15}
!184 = !{!74, !6, i64 24}
!185 = distinct !{!185, !15}
!186 = !{!71, !6, i64 64}
!187 = !{!71, !6, i64 72}
!188 = distinct !{!188, !15}
!189 = distinct !{!189, !15}
!190 = !{!191, !10, i64 0}
!191 = !{!"VEC_edge_base", !10, i64 0, !10, i64 4, !7, i64 8}
!192 = !{!22, !10, i64 28}
!193 = distinct !{!193, !15}
!194 = distinct !{!194, !15}
!195 = distinct !{!195, !15}
!196 = distinct !{!196, !15}
!197 = distinct !{!197, !15}
!198 = distinct !{!198, !15}
!199 = distinct !{!199, !15}
!200 = distinct !{!200, !15}
!201 = distinct !{!201, !15}
!202 = distinct !{!202, !15}
!203 = distinct !{!203, !15}
!204 = distinct !{!204, !15}
!205 = distinct !{!205, !15}
!206 = distinct !{!206, !15}
!207 = distinct !{!207, !15}
!208 = distinct !{!208, !15}
!209 = distinct !{!209, !15}
!210 = !{!30, !6, i64 8}
!211 = distinct !{!211, !15}
!212 = distinct !{!212, !15}
!213 = distinct !{!213, !15}
!214 = distinct !{!214, !15}
!215 = !{!152, !6, i64 1000}
!216 = distinct !{!216, !15}
!217 = distinct !{!217, !15}
!218 = !{!105, !10, i64 24}
!219 = distinct !{!219, !15}
!220 = distinct !{!220, !15}
!221 = distinct !{!221, !15}
!222 = !{!105, !6, i64 40}
!223 = !{!224, !10, i64 0}
!224 = !{!"spec_info_def", !10, i64 0, !6, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!225 = !{!60, !10, i64 4}
!226 = !{!61, !10, i64 8}
!227 = !{!61, !6, i64 0}
!228 = distinct !{!228, !15}
!229 = distinct !{!229, !15}
!230 = distinct !{!230, !15}
!231 = distinct !{!231, !15}
!232 = distinct !{!232, !15}
!233 = !{!53, !10, i64 8}
!234 = distinct !{!234, !15}
!235 = !{!236, !10, i64 12}
!236 = !{!"", !6, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !28, i64 24}
!237 = !{!236, !10, i64 16}
!238 = !{!53, !10, i64 12}
!239 = !{!236, !10, i64 8}
!240 = !{!236, !6, i64 0}
!241 = !{!236, !28, i64 24}
!242 = distinct !{!242, !15}
!243 = distinct !{!243, !15}
!244 = !{!245, !10, i64 0}
!245 = !{!"rtvec_def", !10, i64 0, !7, i64 8}
!246 = distinct !{!246, !15}
!247 = distinct !{!247, !15}
!248 = distinct !{!248, !15}
!249 = distinct !{!249, !15}
!250 = distinct !{!250, !15}
!251 = distinct !{!251, !15}
!252 = !{i32 0, i32 2}
!253 = !{!109, !10, i64 16}
!254 = !{!109, !6, i64 0}
!255 = distinct !{!255, !15}
!256 = distinct !{!256, !15}
!257 = distinct !{!257, !15}
!258 = distinct !{!258, !15}
!259 = distinct !{!259, !15}
!260 = distinct !{!260, !15}
!261 = distinct !{!261, !15}
!262 = distinct !{!262, !15}
!263 = distinct !{!263, !15}
!264 = distinct !{!264, !15}
!265 = distinct !{!265, !15}
