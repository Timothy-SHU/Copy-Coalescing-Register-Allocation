; ModuleID = 'sched-ebb.c'
source_filename = "sched-ebb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
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
%struct.edge_iterator = type { i32, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct._dep_link = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@profile_info = external local_unnamed_addr global ptr, align 8
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@ebb_common_sched_info = internal global %struct.common_sched_info_def zeroinitializer, align 8
@haifa_common_sched_info = external local_unnamed_addr constant %struct.common_sched_info_def, align 8
@common_sched_info = external local_unnamed_addr global ptr, align 8
@ebb_sched_deps_info = internal global %struct.sched_deps_info_def { ptr @ebb_compute_jump_reg_dependencies, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, align 8
@sched_deps_info = external local_unnamed_addr global ptr, align 8
@ebb_sched_info = internal global %struct.haifa_sched_info { ptr @init_ready_list, ptr null, ptr @schedule_more_p, ptr null, ptr @rank, ptr @ebb_print_insn, ptr @ebb_contributes_to_priority, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @ebb_add_remove_insn, ptr @begin_schedule_ready, ptr @advance_target_bb, i32 24 }, align 8
@current_sched_info = external local_unnamed_addr global ptr, align 8
@dont_calc_deps = internal global %struct.bitmap_head_def zeroinitializer, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@last_bb = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"sched-ebb.c\00", align 1
@sched_rgn_n_insns = internal unnamed_addr global i32 0, align 4
@sched_verbose = external local_unnamed_addr global i32, align 4
@rgn_n_insns = internal unnamed_addr global i32 0, align 4
@sched_dump = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c";;   --------------- forward dependences: ------------ \0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\0A;;   --- EBB Dependences --- from bb%d to bb%d \0A\00", align 1
@ebb_print_insn.tmp = internal global [80 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"+ %4d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"  %4d\00", align 1
@sched_init_only_bb = external local_unnamed_addr global ptr, align 8
@h_i_d = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@haifa_recovery_bb_ever_added_p = external local_unnamed_addr global i8, align 1
@flag_schedule_speculative_load = external local_unnamed_addr global i32, align 4
@spec_info = external local_unnamed_addr global ptr, align 8
@sd_iterator_start.null_link = internal global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ebb_compute_jump_reg_dependencies(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #17
  store i32 0, ptr %6, align 8, !tbaa.struct !9
  %11 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !14
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %5) #17, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %4, %26
  %15 = load ptr, ptr %5, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !16
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = tail call ptr @df_get_live_in(ptr noundef %21) #18
  br i1 %19, label %24, label %23

23:                                               ; preds = %14
  tail call void @bitmap_and(ptr noundef %3, ptr noundef %22, ptr noundef %1) #18
  br label %26

24:                                               ; preds = %14
  %25 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %22) #18
  br label %26

26:                                               ; preds = %23, %24
  call fastcc void @ei_next(ptr noundef nonnull %6) #17
  %27 = load i32, ptr %6, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %5) #17, !range !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %14, !llvm.loop !20

31:                                               ; preds = %26, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #2 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !12
  ret i8 %10
}

; Function Attrs: optsize
declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !22
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !24
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @schedule_ebbs() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @profile_info, align 8, !tbaa !12
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr @flag_branch_probabilities, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  %8 = load ptr, ptr @compiler_params, align 8
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 51, i32 1
  %10 = getelementptr inbounds %struct.param_info, ptr %8, i64 52, i32 1
  %11 = select i1 %7, ptr %9, ptr %10
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = mul nsw i32 %12, 100
  %14 = load ptr, ptr @cfun, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !30
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %146, label %20

20:                                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @ebb_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store ptr @ebb_fix_recovery_cfg, ptr @ebb_common_sched_info, align 8, !tbaa !32
  store ptr @ebb_add_block, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @ebb_common_sched_info, i64 0, i32 1), align 8, !tbaa !34
  store i32 2, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @ebb_common_sched_info, i64 0, i32 4), align 8, !tbaa !35
  store ptr @ebb_common_sched_info, ptr @common_sched_info, align 8, !tbaa !12
  store ptr @ebb_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !12
  store ptr @ebb_sched_info, ptr @current_sched_info, align 8, !tbaa !12
  tail call void @haifa_sched_init() #18
  tail call void @compute_bb_for_insn() #18
  tail call fastcc void @bitmap_initialize_stat() #17
  tail call void @bitmap_clear(ptr noundef nonnull @dont_calc_deps) #18
  %21 = load ptr, ptr @cfun, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %141, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds i8, ptr %2, i64 8
  br label %32

32:                                               ; preds = %30, %129
  %33 = phi ptr [ %26, %30 ], [ %134, %129 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !37
  %41 = load ptr, ptr @cfun, align 8, !tbaa !12
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %96, label %47

47:                                               ; preds = %32, %82
  %48 = phi ptr [ %89, %82 ], [ %40, %32 ]
  %49 = phi ptr [ %88, %82 ], [ %39, %32 ]
  %50 = phi ptr [ %87, %82 ], [ %38, %32 ]
  %51 = phi ptr [ %83, %82 ], [ %33, %32 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 12
  br i1 %57, label %96, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 1
  %60 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %59) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !9
  store ptr %60, ptr %31, align 8, !tbaa.struct !14
  %61 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %60, ptr noundef nonnull %1) #17, !range !15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58, %69
  %64 = load ptr, ptr %1, align 8, !tbaa !12
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !16
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %70 = load i32, ptr %2, align 8
  %71 = load ptr, ptr %31, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %1) #17, !range !15
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %63, !llvm.loop !43

74:                                               ; preds = %69, %58
  %75 = load ptr, ptr %1, align 8, !tbaa !12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %63, %74
  %78 = phi ptr [ %75, %74 ], [ %64, %63 ]
  %79 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !44
  %81 = icmp sgt i32 %80, %13
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load ptr, ptr %49, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds %struct.rtl_bb_info, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !42
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !37
  %90 = load ptr, ptr @cfun, align 8, !tbaa !12
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !28
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !39
  %95 = icmp eq ptr %89, %94
  br i1 %95, label %96, label %47

96:                                               ; preds = %77, %74, %82, %47, %32
  %97 = phi ptr [ %38, %32 ], [ %50, %77 ], [ %50, %74 ], [ %87, %82 ], [ %50, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  %98 = icmp eq ptr %36, %97
  br i1 %98, label %129, label %99

99:                                               ; preds = %96, %125
  %100 = phi ptr [ %127, %125 ], [ %97, %96 ]
  %101 = phi ptr [ %126, %125 ], [ %36, %96 ]
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = trunc i32 %102 to i16
  switch i16 %104, label %111 [
    i16 13, label %108
    i16 7, label %105
  ]

105:                                              ; preds = %99
  %106 = and i32 %102, 67108864
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99, %105
  %109 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 2
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  br label %125

111:                                              ; preds = %99, %105
  %112 = load i32, ptr %100, align 8
  %113 = trunc i32 %112 to i16
  switch i16 %113, label %120 [
    i16 13, label %117
    i16 7, label %114
  ]

114:                                              ; preds = %111
  %115 = and i32 %112, 67108864
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %114
  %118 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  br label %125

120:                                              ; preds = %111, %114
  %121 = icmp eq i32 %103, 12
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 2
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  br label %125

125:                                              ; preds = %117, %122, %108
  %126 = phi ptr [ %110, %108 ], [ %101, %117 ], [ %124, %122 ]
  %127 = phi ptr [ %100, %108 ], [ %119, %117 ], [ %100, %122 ]
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %129, label %99, !llvm.loop !45

129:                                              ; preds = %125, %120, %96
  %130 = phi ptr [ %36, %96 ], [ %101, %120 ], [ %126, %125 ]
  %131 = phi ptr [ %36, %96 ], [ %100, %120 ], [ %126, %125 ]
  %132 = tail call fastcc ptr @schedule_ebb(ptr noundef %130, ptr noundef %131) #17
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !37
  %135 = load ptr, ptr @cfun, align 8, !tbaa !12
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !28
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !39
  %140 = icmp eq ptr %134, %139
  br i1 %140, label %141, label %32, !llvm.loop !46

141:                                              ; preds = %129, %20
  tail call void @bitmap_clear(ptr noundef nonnull @dont_calc_deps) #18
  %142 = load i32, ptr @reload_completed, align 4, !tbaa !10
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  tail call void @reposition_prologue_and_epilogue_notes() #18
  br label %145

145:                                              ; preds = %144, %141
  tail call void @haifa_sched_finish() #18
  br label %146

146:                                              ; preds = %0, %145
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ebb_fix_recovery_cfg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 700, ptr noundef nonnull @.str.1) #18
  %9 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !47
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %6, %3 ], [ %11, %8 ]
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %1) #17
  store ptr %21, ptr @last_bb, align 8, !tbaa !12
  br label %22

22:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ebb_add_block(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !47
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @dont_calc_deps, i32 noundef %11) #18
  br label %17

13:                                               ; preds = %2
  %14 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store ptr %0, ptr @last_bb, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %13, %16, %9
  ret void
}

; Function Attrs: optsize
declare void @haifa_sched_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @compute_bb_for_insn() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_initialize_stat() unnamed_addr #6 {
  store ptr null, ptr getelementptr inbounds (%struct.bitmap_head_def, ptr @dont_calc_deps, i64 0, i32 3), align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @dont_calc_deps, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @schedule_ebb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.deps, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  store ptr %8, ptr @last_bb, align 8, !tbaa !12
  %9 = tail call i32 @no_real_insns_p(ptr noundef %0, ptr noundef %1) #18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %88

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -7
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 474, ptr noundef nonnull @.str.1) #18
  br label %22

22:                                               ; preds = %16, %21
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @dont_calc_deps, i32 noundef %24) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  tail call void @init_deps_global() #18
  call void @init_deps(ptr noundef nonnull %4, i8 noundef zeroext 0) #18
  call void @sched_analyze(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  call void @free_deps(ptr noundef nonnull %4) #18
  call fastcc void @add_deps_for_risky_insns(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 10), align 8, !tbaa !51
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void %28(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %31

31:                                               ; preds = %30, %27
  call void @finish_deps_global() #18
  br label %36

32:                                               ; preds = %22
  %33 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %34 = icmp eq ptr %6, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 495, ptr noundef nonnull @.str.1) #18
  br label %36

36:                                               ; preds = %35, %32, %31
  %37 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.haifa_sched_info, ptr %37, i64 0, i32 13
  store i32 0, ptr %38, align 4, !tbaa !63
  %39 = call i32 @set_priorities(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  store i32 %39, ptr @rgn_n_insns, align 4, !tbaa !10
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !63
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !63
  %44 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 8
  store ptr %45, ptr %46, align 8, !tbaa !65
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 9
  store ptr %48, ptr %49, align 8, !tbaa !66
  call void @remove_notes(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %50 = load ptr, ptr @last_bb, align 8, !tbaa !12
  call void @unlink_bb_notes(ptr noundef nonnull %6, ptr noundef %50) #18
  store ptr %6, ptr %3, align 8, !tbaa !12
  %51 = load i32, ptr @rgn_n_insns, align 4, !tbaa !10
  call void @sched_extend_ready_list(i32 noundef %51) #18
  call void @schedule_block(ptr noundef nonnull %3) #18
  call void @sched_finish_ready_list() #18
  %52 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !10
  %53 = load i32, ptr @rgn_n_insns, align 4, !tbaa !10
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 521, ptr noundef nonnull @.str.1) #18
  br label %56

56:                                               ; preds = %36, %55
  %57 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %58 = getelementptr inbounds %struct.haifa_sched_info, ptr %57, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct.haifa_sched_info, ptr %57, i64 0, i32 11
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  call void @sched_free_deps(ptr noundef %59, ptr noundef %61, i8 noundef zeroext 1) #18
  %62 = load i8, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !6
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = call zeroext i8 @deps_pools_are_empty_p() #18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 527, ptr noundef nonnull @.str.1) #18
  br label %68

68:                                               ; preds = %56, %64, %67
  %69 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %70 = load ptr, ptr %69, align 8, !tbaa !69
  %71 = call fastcc i32 @VEC_edge_base_length(ptr noundef %70) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = icmp eq ptr %6, %69
  br i1 %74, label %80, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  %78 = call fastcc i32 @VEC_edge_base_length(ptr noundef %77) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75, %73
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 533, ptr noundef nonnull @.str.1) #18
  %81 = load ptr, ptr @last_bb, align 8, !tbaa !12
  br label %82

82:                                               ; preds = %75, %80
  %83 = phi ptr [ %69, %75 ], [ %81, %80 ]
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !71
  store ptr %85, ptr @last_bb, align 8, !tbaa !12
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !37
  call void @delete_basic_block(ptr noundef %87) #18
  br label %88

88:                                               ; preds = %68, %82, %2
  %89 = phi ptr [ %7, %2 ], [ @last_bb, %82 ], [ @last_bb, %68 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %90
}

; Function Attrs: optsize
declare void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #4

; Function Attrs: optsize
declare void @haifa_sched_finish() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_ready_list() #0 {
  %1 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  store i32 0, ptr @sched_rgn_n_insns, align 4, !tbaa !10
  %6 = load i32, ptr @sched_verbose, align 4, !tbaa !10
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  tail call fastcc void @debug_ebb_dependencies(ptr noundef %10, ptr noundef %12) #17
  br label %13

13:                                               ; preds = %8, %0
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %25, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %23, %17 ], [ %15, %13 ]
  %19 = phi i32 [ %21, %17 ], [ 0, %13 ]
  %20 = tail call i32 @try_ready(ptr noundef %18) #18
  %21 = add nuw nsw i32 %19, 1
  %22 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, %5
  br i1 %24, label %25, label %17, !llvm.loop !72

25:                                               ; preds = %17, %13
  %26 = phi i32 [ 0, %13 ], [ %21, %17 ]
  %27 = load i32, ptr @rgn_n_insns, align 4, !tbaa !10
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 124, ptr noundef nonnull @.str.1) #18
  br label %30

30:                                               ; preds = %25, %29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @schedule_more_p() #7 {
  %1 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !10
  %2 = load i32, ptr @rgn_n_insns, align 4, !tbaa !10
  %3 = icmp slt i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rank(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !73
  %11 = icmp sgt i64 %8, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = icmp slt i64 %8, %10
  %20 = icmp slt i32 %14, %16
  %21 = or i1 %19, %20
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %2, %12
  %24 = phi i32 [ -1, %12 ], [ -1, %2 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef nonnull ptr @ebb_print_insn(ptr nocapture noundef readonly %0, i32 %1) #9 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 1179648
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = select i1 %5, ptr @.str.5, ptr @.str.6
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @ebb_print_insn.tmp, ptr noundef nonnull dereferenceable(1) %8, i32 noundef %7) #17
  ret ptr @ebb_print_insn.tmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @ebb_contributes_to_priority(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @ebb_add_remove_insn(ptr nocapture readnone %0, i32 noundef %1) #10 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr @rgn_n_insns, align 4
  %5 = select i1 %3, i32 1, i32 -1
  %6 = add nsw i32 %4, %5
  store i32 %6, ptr @rgn_n_insns, align 4, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @begin_schedule_ready(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !10
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @sched_rgn_n_insns, align 4, !tbaa !10
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %0) #18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %78, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %78, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %19 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 1
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !9
  %22 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !14
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %3) #17, !range !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %18, %31
  %26 = load ptr, ptr %3, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !16
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %32 = load i32, ptr %4, align 8
  %33 = load ptr, ptr %22, align 8
  %34 = call fastcc zeroext i8 @ei_cond(i32 %32, ptr %33, ptr noundef nonnull %3) #17, !range !15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %25, !llvm.loop !75

36:                                               ; preds = %31, %18
  %37 = load ptr, ptr %3, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %25, %36
  %40 = phi ptr [ %37, %36 ], [ %26, %25 ]
  %41 = tail call ptr @split_edge(ptr noundef nonnull %40) #18
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %51 = load i32, ptr %50, align 8, !tbaa !6
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %59, label %53

53:                                               ; preds = %49, %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 174, ptr noundef nonnull @.str.1) #18
  br label %59

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %58 = tail call ptr @create_basic_block(ptr noundef %56, ptr noundef null, ptr noundef %57) #18
  br label %59

59:                                               ; preds = %53, %49, %54
  %60 = phi ptr [ %41, %49 ], [ %41, %53 ], [ %58, %54 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.rtl_bb_info, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %68 = getelementptr inbounds %struct.haifa_sched_info, ptr %67, i64 0, i32 9
  store ptr %66, ptr %68, align 8, !tbaa !66
  %69 = icmp eq ptr %66, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @.str.1) #18
  br label %71

71:                                               ; preds = %59, %70
  %72 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !12
  %73 = load ptr, ptr @last_bb, align 8, !tbaa !12
  tail call void %72(ptr noundef nonnull %60, ptr noundef %73) #18
  %74 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %75 = icmp eq ptr %74, %60
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 189, ptr noundef nonnull @.str.1) #18
  br label %77

77:                                               ; preds = %71, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %78

78:                                               ; preds = %77, %14, %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @advance_target_bb(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %75, label %9

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %1) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @h_i_d, align 8
  %14 = load i32, ptr %5, align 8, !tbaa !6
  %15 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %13, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct._haifa_insn_data, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @cfun, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = icmp eq ptr %17, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %19, %12
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !6
  %33 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %13, i32 noundef %32) #17
  %34 = getelementptr inbounds %struct._haifa_insn_data, ptr %33, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr @cfun, align 8, !tbaa !12
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !28
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = icmp eq ptr %35, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %37, %26
  %45 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %30) #18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !37
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %58 = load i32, ptr %57, align 8, !tbaa !6
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %75, label %60

60:                                               ; preds = %56, %47, %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 672, ptr noundef nonnull @.str.1) #18
  br label %75

61:                                               ; preds = %2, %66
  %62 = phi ptr [ %68, %66 ], [ %0, %2 ]
  %63 = load ptr, ptr @last_bb, align 8, !tbaa !12
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 683, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %61, %65
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !37
  %69 = tail call ptr @bb_note(ptr noundef %68) #18
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = icmp eq ptr %69, %73
  br i1 %74, label %61, label %75, !llvm.loop !79

75:                                               ; preds = %66, %4, %9, %19, %37, %60, %56
  %76 = phi ptr [ %0, %56 ], [ %0, %60 ], [ null, %37 ], [ null, %19 ], [ null, %9 ], [ null, %4 ], [ %68, %66 ]
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_ebb_dependencies(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %4 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 56, i64 1, ptr %3)
  %5 = load ptr, ptr @sched_dump, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef %13) #17
  tail call void @debug_dependencies(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare i32 @try_ready(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare void @debug_dependencies(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @bb_note(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @no_real_insns_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_deps_global() local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_deps(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_deps_for_risky_insns(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct._dep, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %87, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._dep, ptr %3, i64 0, i32 3
  br label %11

9:                                                ; preds = %76
  %10 = icmp eq ptr %78, null
  br i1 %10, label %87, label %82

11:                                               ; preds = %7, %76
  %12 = phi ptr [ %0, %7 ], [ %80, %76 ]
  %13 = phi ptr [ null, %7 ], [ %78, %76 ]
  %14 = phi ptr [ null, %7 ], [ %77, %76 ]
  %15 = call zeroext i8 @control_flow_insn_p(ptr noundef %12) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 2
  store ptr %13, ptr %20, align 8, !tbaa !80
  br label %76

21:                                               ; preds = %11
  %22 = load i32, ptr %12, align 8
  %23 = and i32 %22, 65535
  %24 = add nsw i32 %23, -7
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %23, 10
  %28 = icmp ne ptr %14, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %32, label %76

30:                                               ; preds = %21
  %31 = icmp eq ptr %14, null
  br i1 %31, label %76, label %32

32:                                               ; preds = %26, %30
  %33 = call i32 @haifa_classify_insn(ptr noundef nonnull %12) #18
  switch i32 %33, label %76 [
    i32 2, label %34
    i32 5, label %49
    i32 4, label %49
    i32 3, label %49
  ]

34:                                               ; preds = %32
  %35 = load i32, ptr @flag_schedule_speculative_load, align 4, !tbaa !10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = call fastcc ptr @earliest_block_with_similiar_load(ptr noundef %13, ptr noundef nonnull %12) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !80
  %43 = icmp eq ptr %42, null
  br i1 %43, label %76, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.rtl_bb_info, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  br label %49

49:                                               ; preds = %34, %44, %37, %32, %32, %32
  %50 = phi ptr [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %48, %44 ], [ %14, %37 ], [ %14, %34 ]
  %51 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %12, ptr noundef %50) #18
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @init_dep(ptr noundef nonnull %3, ptr noundef %50, ptr noundef nonnull %12, i32 noundef 12) #18
  %54 = load ptr, ptr @current_sched_info, align 8, !tbaa !12
  %55 = getelementptr inbounds %struct.haifa_sched_info, ptr %54, i64 0, i32 17
  %56 = load i32, ptr %55, align 8, !tbaa !81
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = call i32 @sd_add_or_update_dep(ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 428, ptr noundef nonnull @.str.1) #18
  br label %75

63:                                               ; preds = %53
  %64 = and i32 %56, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @spec_info, align 8, !tbaa !12
  %68 = load i32, ptr %67, align 8, !tbaa !82
  %69 = and i32 %68, 258048
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 @set_dep_weak(i32 noundef 67108864, i32 noundef 258048, i32 noundef 62) #18
  store i32 %72, ptr %8, align 4, !tbaa !84
  br label %73

73:                                               ; preds = %71, %66, %63
  %74 = call i32 @sd_add_or_update_dep(ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  br label %75

75:                                               ; preds = %62, %59, %73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %76

76:                                               ; preds = %17, %40, %75, %49, %32, %30, %26
  %77 = phi ptr [ %12, %17 ], [ %14, %32 ], [ %14, %49 ], [ %14, %75 ], [ %14, %40 ], [ null, %30 ], [ %14, %26 ]
  %78 = phi ptr [ %19, %17 ], [ %13, %32 ], [ %13, %49 ], [ %13, %75 ], [ %13, %40 ], [ %13, %30 ], [ %13, %26 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = icmp eq ptr %80, %5
  br i1 %81, label %9, label %11, !llvm.loop !86

82:                                               ; preds = %9, %82
  %83 = phi ptr [ %85, %82 ], [ %78, %9 ]
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !80
  store ptr null, ptr %84, align 8, !tbaa !80
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %82, !llvm.loop !87

87:                                               ; preds = %82, %2, %9
  ret void
}

; Function Attrs: optsize
declare void @finish_deps_global() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @set_priorities(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @remove_notes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @unlink_bb_notes(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_extend_ready_list(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @schedule_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_finish_ready_list() local_unnamed_addr #4

; Function Attrs: optsize
declare void @sched_free_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #4

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @haifa_classify_insn(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @earliest_block_with_similiar_load(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._sd_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef %1, i32 noundef 3) #17
  %8 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %66, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %0, null
  br label %12

12:                                               ; preds = %10, %62
  %13 = phi ptr [ null, %10 ], [ %63, %62 ]
  %14 = load ptr, ptr %4, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct._dep, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !88
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %7, ptr noundef %19, i32 noundef 4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %20 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %18, %56
  %23 = phi ptr [ %57, %56 ], [ %13, %18 ]
  %24 = load ptr, ptr %6, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct._dep, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct._dep, ptr %24, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !88
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %22
  %33 = icmp eq ptr %23, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !47
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !47
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %34, %32
  %41 = call i32 @haifa_classify_insn(ptr noundef nonnull %26) #18
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = icmp eq ptr %28, %0
  %45 = select i1 %11, i1 true, i1 %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %49, %46 ], [ %0, %43 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !80
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %28, %49
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %53, label %46, !llvm.loop !92

53:                                               ; preds = %46, %43
  %54 = phi i1 [ %11, %43 ], [ %50, %46 ]
  %55 = select i1 %54, ptr %28, ptr %23
  br label %56

56:                                               ; preds = %53, %22, %40, %34
  %57 = phi ptr [ %23, %34 ], [ %23, %40 ], [ %23, %22 ], [ %55, %53 ]
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #17
  %58 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %22, !llvm.loop !93

60:                                               ; preds = %56, %18
  %61 = phi ptr [ %13, %18 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %62

62:                                               ; preds = %60, %12
  %63 = phi ptr [ %61, %60 ], [ %13, %12 ]
  call fastcc void @sd_iterator_next(ptr noundef nonnull %3) #17
  %64 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %12, !llvm.loop !94

66:                                               ; preds = %62, %2
  %67 = phi ptr [ null, %2 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret ptr %67
}

; Function Attrs: optsize
declare zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @sd_add_or_update_dep(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @set_dep_weak(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 {
  store i32 %2, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  store ptr %10, ptr %1, align 8, !tbaa !12
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !95
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #18
  %18 = load ptr, ptr %3, align 8, !tbaa !12
  store ptr %18, ptr %4, align 8, !tbaa !98
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %23

21:                                               ; preds = %14
  %22 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %24

23:                                               ; preds = %20, %11
  store ptr null, ptr %1, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %21, %23, %8
  %25 = phi i8 [ 1, %8 ], [ 0, %23 ], [ %22, %21 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }

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
!9 = !{i64 0, i64 4, !10, i64 8, i64 8, !12}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{i64 0, i64 8, !12}
!15 = !{i8 0, i8 2}
!16 = !{!17, !11, i64 48}
!17 = !{!"edge_def", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24, !13, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !18, i64 56}
!18 = !{!"long", !7, i64 0}
!19 = !{!17, !13, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !11, i64 0}
!23 = !{!"", !11, i64 0, !13, i64 8}
!24 = !{!25, !11, i64 0}
!25 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!26 = !{!27, !11, i64 8}
!27 = !{!"param_info", !13, i64 0, !11, i64 8, !7, i64 12, !11, i64 16, !11, i64 20, !13, i64 24}
!28 = !{!29, !13, i64 8}
!29 = !{!"function", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !13, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!30 = !{!31, !11, i64 24}
!31 = !{!"control_flow_graph", !13, i64 0, !13, i64 8, !13, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !13, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!32 = !{!33, !13, i64 0}
!33 = !{!"common_sched_info_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !11, i64 32}
!34 = !{!33, !13, i64 8}
!35 = !{!33, !11, i64 32}
!36 = !{!31, !13, i64 0}
!37 = !{!38, !13, i64 56}
!38 = !{!"basic_block_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !13, i64 48, !13, i64 56, !7, i64 64, !18, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!39 = !{!31, !13, i64 8}
!40 = !{!41, !13, i64 0}
!41 = !{!"rtl_bb_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !11, i64 32}
!42 = !{!41, !13, i64 8}
!43 = distinct !{!43, !21}
!44 = !{!17, !11, i64 52}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = !{!38, !11, i64 80}
!48 = !{!31, !13, i64 16}
!49 = !{!50, !13, i64 24}
!50 = !{!"bitmap_head_def", !13, i64 0, !13, i64 8, !11, i64 16, !13, i64 24}
!51 = !{!52, !13, i64 448}
!52 = !{!"gcc_target", !53, i64 0, !55, i64 368, !56, i64 664, !11, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !18, i64 1064, !18, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !57, i64 1176, !13, i64 1232, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !13, i64 1344, !13, i64 1352, !13, i64 1360, !13, i64 1368, !13, i64 1376, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !13, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !13, i64 1456, !18, i64 1464, !58, i64 1472, !13, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !13, i64 1720, !13, i64 1728, !13, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !13, i64 1768, !13, i64 1776, !59, i64 1784, !60, i64 1792, !61, i64 1896, !62, i64 1968, !13, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!53 = !{!"asm_out", !13, i64 0, !13, i64 8, !13, i64 16, !54, i64 24, !54, i64 56, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360}
!54 = !{!"asm_int_op", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!55 = !{!"sched", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!56 = !{!"vectorize", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!57 = !{!"addr_space", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!58 = !{!"calls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!59 = !{!"c", !13, i64 0}
!60 = !{!"cxx", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!61 = !{!"emutls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !7, i64 64, !7, i64 65}
!62 = !{!"target_option_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!63 = !{!64, !11, i64 100}
!64 = !{!"haifa_sched_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !11, i64 96, !11, i64 100, !13, i64 104, !13, i64 112, !13, i64 120, !11, i64 128}
!65 = !{!64, !13, i64 64}
!66 = !{!64, !13, i64 72}
!67 = !{!64, !13, i64 80}
!68 = !{!64, !13, i64 88}
!69 = !{!38, !13, i64 0}
!70 = !{!38, !13, i64 8}
!71 = !{!38, !13, i64 48}
!72 = distinct !{!72, !21}
!73 = !{!38, !18, i64 72}
!74 = !{!38, !11, i64 88}
!75 = distinct !{!75, !21}
!76 = !{!77, !13, i64 40}
!77 = !{!"_haifa_insn_data", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !78, i64 20, !11, i64 22, !11, i64 22, !7, i64 23, !11, i64 24, !11, i64 28, !11, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !11, i64 88}
!78 = !{!"short", !7, i64 0}
!79 = distinct !{!79, !21}
!80 = !{!38, !13, i64 16}
!81 = !{!64, !11, i64 128}
!82 = !{!83, !11, i64 0}
!83 = !{!"spec_info_def", !11, i64 0, !13, i64 8, !11, i64 16, !11, i64 20, !11, i64 24}
!84 = !{!85, !11, i64 20}
!85 = !{!"_dep", !13, i64 0, !13, i64 8, !11, i64 16, !11, i64 20}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, !21}
!88 = !{!85, !11, i64 16}
!89 = !{!85, !13, i64 0}
!90 = !{i64 0, i64 4, !10, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 1, !6}
!91 = !{!85, !13, i64 8}
!92 = distinct !{!92, !21}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = !{!96, !11, i64 0}
!96 = !{!"_sd_iterator", !11, i64 0, !13, i64 8, !13, i64 16, !7, i64 24}
!97 = !{!96, !13, i64 8}
!98 = !{!96, !13, i64 16}
!99 = !{!96, !7, i64 24}
!100 = !{!101, !13, i64 0}
!101 = !{!"_dep_link", !13, i64 0, !13, i64 8, !13, i64 16}
