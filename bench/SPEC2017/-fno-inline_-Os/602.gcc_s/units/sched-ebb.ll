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
define dso_local void @ebb_compute_jump_reg_dependencies(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !35 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #17
  store i32 0, ptr %6, align 8, !tbaa.struct !39
  %11 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !44
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %5) #17, !range !45
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %4, %26
  %15 = load ptr, ptr %5, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !49
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
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %5) #17, !range !45
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %14, !llvm.loop !50

31:                                               ; preds = %26, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #2 !prof !35 !PGOFuncName !52 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !35 !PGOFuncName !53 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !45
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !42
  ret i8 %10
}

; Function Attrs: optsize
declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @df_get_live_in(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !54 {
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
  %16 = load i32, ptr %0, align 8, !tbaa !55
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !57 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !35 !PGOFuncName !58 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !35 !PGOFuncName !59 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !60
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !62 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !42
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !35 !PGOFuncName !63 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @schedule_ebbs() local_unnamed_addr #0 !prof !35 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @profile_info, align 8, !tbaa !42
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr @flag_branch_probabilities, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  %8 = load ptr, ptr @compiler_params, align 8
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 51, i32 1
  %10 = getelementptr inbounds %struct.param_info, ptr %8, i64 52, i32 1
  %11 = select i1 %7, ptr %9, ptr %10
  %12 = load i32, ptr %11, align 8, !tbaa !64
  %13 = mul nsw i32 %12, 100
  %14 = load ptr, ptr @cfun, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %146, label %20

20:                                               ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @ebb_common_sched_info, ptr noundef nonnull align 8 dereferenceable(40) @haifa_common_sched_info, i64 40, i1 false)
  store ptr @ebb_fix_recovery_cfg, ptr @ebb_common_sched_info, align 8, !tbaa !70
  store ptr @ebb_add_block, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @ebb_common_sched_info, i64 0, i32 1), align 8, !tbaa !72
  store i32 2, ptr getelementptr inbounds (%struct.common_sched_info_def, ptr @ebb_common_sched_info, i64 0, i32 4), align 8, !tbaa !73
  store ptr @ebb_common_sched_info, ptr @common_sched_info, align 8, !tbaa !42
  store ptr @ebb_sched_deps_info, ptr @sched_deps_info, align 8, !tbaa !42
  store ptr @ebb_sched_info, ptr @current_sched_info, align 8, !tbaa !42
  tail call void @haifa_sched_init() #18
  tail call void @compute_bb_for_insn() #18
  tail call fastcc void @bitmap_initialize_stat() #17
  tail call void @bitmap_clear(ptr noundef nonnull @dont_calc_deps) #18
  %21 = load ptr, ptr @cfun, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %141, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds i8, ptr %2, i64 8
  br label %32

32:                                               ; preds = %30, %129
  %33 = phi ptr [ %26, %30 ], [ %134, %129 ]
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = load ptr, ptr %35, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !80
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  %41 = load ptr, ptr @cfun, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = icmp eq ptr %40, %45
  br i1 %46, label %96, label %47

47:                                               ; preds = %32, %82
  %48 = phi ptr [ %89, %82 ], [ %40, %32 ]
  %49 = phi ptr [ %88, %82 ], [ %39, %32 ]
  %50 = phi ptr [ %87, %82 ], [ %38, %32 ]
  %51 = phi ptr [ %83, %82 ], [ %33, %32 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !36
  %54 = load ptr, ptr %53, align 8, !tbaa !78
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 12
  br i1 %57, label %96, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 1
  %60 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %59) #17
  store i32 0, ptr %2, align 8, !tbaa.struct !39
  store ptr %60, ptr %31, align 8, !tbaa.struct !44
  %61 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %60, ptr noundef nonnull %1) #17, !range !45
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58, %69
  %64 = load ptr, ptr %1, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !46
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  call fastcc void @ei_next(ptr noundef nonnull %2) #17
  %70 = load i32, ptr %2, align 8
  %71 = load ptr, ptr %31, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %1) #17, !range !45
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %63, !llvm.loop !81

74:                                               ; preds = %69, %58
  %75 = load ptr, ptr %1, align 8, !tbaa !42
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %63, %74
  %78 = phi ptr [ %75, %74 ], [ %64, %63 ]
  %79 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !82
  %81 = icmp sgt i32 %80, %13
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load ptr, ptr %49, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !36
  %86 = getelementptr inbounds %struct.rtl_bb_info, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !80
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !75
  %90 = load ptr, ptr @cfun, align 8, !tbaa !42
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !77
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
  %110 = load ptr, ptr %109, align 8, !tbaa !36
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
  %119 = load ptr, ptr %118, align 8, !tbaa !36
  br label %125

120:                                              ; preds = %111, %114
  %121 = icmp eq i32 %103, 12
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 2
  %124 = load ptr, ptr %123, align 8, !tbaa !36
  br label %125

125:                                              ; preds = %117, %122, %108
  %126 = phi ptr [ %110, %108 ], [ %101, %117 ], [ %124, %122 ]
  %127 = phi ptr [ %100, %108 ], [ %119, %117 ], [ %100, %122 ]
  %128 = icmp eq ptr %126, %127
  br i1 %128, label %129, label %99, !llvm.loop !83

129:                                              ; preds = %125, %120, %96
  %130 = phi ptr [ %36, %96 ], [ %101, %120 ], [ %126, %125 ]
  %131 = phi ptr [ %36, %96 ], [ %100, %120 ], [ %126, %125 ]
  %132 = tail call fastcc ptr @schedule_ebb(ptr noundef %130, ptr noundef %131) #17
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !75
  %135 = load ptr, ptr @cfun, align 8, !tbaa !42
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !66
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !77
  %140 = icmp eq ptr %134, %139
  br i1 %140, label %141, label %32, !llvm.loop !84

141:                                              ; preds = %129, %20
  tail call void @bitmap_clear(ptr noundef nonnull @dont_calc_deps) #18
  %142 = load i32, ptr @reload_completed, align 4, !tbaa !40
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
define internal void @ebb_fix_recovery_cfg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !prof !35 !PGOFuncName !85 {
  %4 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !86
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 700, ptr noundef nonnull @.str.1) #18
  %9 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !86
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i32 [ %6, %3 ], [ %11, %8 ]
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !42
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %20, i32 noundef %1) #17
  store ptr %21, ptr @last_bb, align 8, !tbaa !42
  br label %22

22:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ebb_add_block(ptr noundef %0, ptr noundef readnone %1) #0 !prof !35 !PGOFuncName !88 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @dont_calc_deps, i32 noundef %11) #18
  br label %17

13:                                               ; preds = %2
  %14 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store ptr %0, ptr @last_bb, align 8, !tbaa !42
  br label %17

17:                                               ; preds = %13, %16, %9
  ret void
}

; Function Attrs: optsize
declare void @haifa_sched_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @compute_bb_for_insn() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @bitmap_initialize_stat() unnamed_addr #6 !prof !35 !PGOFuncName !89 {
  store ptr null, ptr getelementptr inbounds (%struct.bitmap_head_def, ptr @dont_calc_deps, i64 0, i32 3), align 8, !tbaa !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @dont_calc_deps, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @schedule_ebb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !92 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.deps, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %8, ptr @last_bb, align 8, !tbaa !42
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
  %24 = load i32, ptr %23, align 8, !tbaa !86
  %25 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @dont_calc_deps, i32 noundef %24) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  tail call void @init_deps_global() #18
  call void @init_deps(ptr noundef nonnull %4, i8 noundef zeroext 0) #18
  call void @sched_analyze(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  call void @free_deps(ptr noundef nonnull %4) #18
  call fastcc void @add_deps_for_risky_insns(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 1, i32 10), align 8, !tbaa !93
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void %28(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %31

31:                                               ; preds = %30, %27
  call void @finish_deps_global() #18
  br label %36

32:                                               ; preds = %22
  %33 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %34 = icmp eq ptr %6, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 495, ptr noundef nonnull @.str.1) #18
  br label %36

36:                                               ; preds = %35, %32, %31
  %37 = load ptr, ptr @current_sched_info, align 8, !tbaa !42
  %38 = getelementptr inbounds %struct.haifa_sched_info, ptr %37, i64 0, i32 13
  store i32 0, ptr %38, align 4, !tbaa !105
  %39 = call i32 @set_priorities(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  store i32 %39, ptr @rgn_n_insns, align 4, !tbaa !40
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !105
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !105
  %44 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !36
  %46 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 8
  store ptr %45, ptr %46, align 8, !tbaa !107
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !36
  %49 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 9
  store ptr %48, ptr %49, align 8, !tbaa !108
  call void @remove_notes(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %50 = load ptr, ptr @last_bb, align 8, !tbaa !42
  call void @unlink_bb_notes(ptr noundef nonnull %6, ptr noundef %50) #18
  store ptr %6, ptr %3, align 8, !tbaa !42
  %51 = load i32, ptr @rgn_n_insns, align 4, !tbaa !40
  call void @sched_extend_ready_list(i32 noundef %51) #18
  call void @schedule_block(ptr noundef nonnull %3) #18
  call void @sched_finish_ready_list() #18
  %52 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !40
  %53 = load i32, ptr @rgn_n_insns, align 4, !tbaa !40
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 521, ptr noundef nonnull @.str.1) #18
  br label %56

56:                                               ; preds = %36, %55
  %57 = load ptr, ptr @current_sched_info, align 8, !tbaa !42
  %58 = getelementptr inbounds %struct.haifa_sched_info, ptr %57, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !109
  %60 = getelementptr inbounds %struct.haifa_sched_info, ptr %57, i64 0, i32 11
  %61 = load ptr, ptr %60, align 8, !tbaa !110
  call void @sched_free_deps(ptr noundef %59, ptr noundef %61, i8 noundef zeroext 1) #18
  %62 = load i8, ptr @haifa_recovery_bb_ever_added_p, align 1, !tbaa !36
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
  %69 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %70 = load ptr, ptr %69, align 8, !tbaa !111
  %71 = call fastcc i32 @VEC_edge_base_length(ptr noundef %70) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = icmp eq ptr %6, %69
  br i1 %74, label %80, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !112
  %78 = call fastcc i32 @VEC_edge_base_length(ptr noundef %77) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75, %73
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 533, ptr noundef nonnull @.str.1) #18
  %81 = load ptr, ptr @last_bb, align 8, !tbaa !42
  br label %82

82:                                               ; preds = %75, %80
  %83 = phi ptr [ %69, %75 ], [ %81, %80 ]
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !113
  store ptr %85, ptr @last_bb, align 8, !tbaa !42
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !75
  call void @delete_basic_block(ptr noundef %87) #18
  br label %88

88:                                               ; preds = %68, %82, %2
  %89 = phi ptr [ %7, %2 ], [ @last_bb, %82 ], [ @last_bb, %68 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %90
}

; Function Attrs: optsize
declare void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #4

; Function Attrs: optsize
declare void @haifa_sched_finish() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !35 !PGOFuncName !114 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init_ready_list() #0 !prof !35 !PGOFuncName !115 {
  %1 = load ptr, ptr @current_sched_info, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.haifa_sched_info, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  store i32 0, ptr @sched_rgn_n_insns, align 4, !tbaa !40
  %6 = load i32, ptr @sched_verbose, align 4, !tbaa !40
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  tail call fastcc void @debug_ebb_dependencies(ptr noundef %10, ptr noundef %12) #17
  br label %13

13:                                               ; preds = %8, %0
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %25, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %23, %17 ], [ %15, %13 ]
  %19 = phi i32 [ %21, %17 ], [ 0, %13 ]
  %20 = tail call i32 @try_ready(ptr noundef %18) #18
  %21 = add nuw nsw i32 %19, 1
  %22 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = icmp eq ptr %23, %5
  br i1 %24, label %25, label %17, !llvm.loop !116

25:                                               ; preds = %17, %13
  %26 = phi i32 [ 0, %13 ], [ %21, %17 ]
  %27 = load i32, ptr @rgn_n_insns, align 4, !tbaa !40
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 124, ptr noundef nonnull @.str.1) #18
  br label %30

30:                                               ; preds = %25, %29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @schedule_more_p() #7 !prof !35 !PGOFuncName !117 {
  %1 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !40
  %2 = load i32, ptr @rgn_n_insns, align 4, !tbaa !40
  %3 = icmp slt i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rank(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !prof !35 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !119
  %11 = icmp sgt i64 %8, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !120
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 11
  %16 = load i32, ptr %15, align 8, !tbaa !120
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
define internal noundef nonnull ptr @ebb_print_insn(ptr nocapture noundef readonly %0, i32 %1) #9 !prof !35 !PGOFuncName !121 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 1179648
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = select i1 %5, ptr @.str.5, ptr @.str.6
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @ebb_print_insn.tmp, ptr noundef nonnull dereferenceable(1) %8, i32 noundef %7) #17
  ret ptr @ebb_print_insn.tmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @ebb_contributes_to_priority(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 !prof !35 !PGOFuncName !122 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @ebb_add_remove_insn(ptr nocapture readnone %0, i32 noundef %1) #10 !prof !35 !PGOFuncName !123 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr @rgn_n_insns, align 4
  %5 = select i1 %3, i32 1, i32 -1
  %6 = add nsw i32 %4, %5
  store i32 %6, ptr @rgn_n_insns, align 4, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @begin_schedule_ready(ptr noundef %0, ptr noundef readnone %1) #0 !prof !35 !PGOFuncName !124 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = load i32, ptr @sched_rgn_n_insns, align 4, !tbaa !40
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @sched_rgn_n_insns, align 4, !tbaa !40
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %0) #18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %78, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %78, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %19 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 1
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !39
  %22 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !44
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %3) #17, !range !45
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %18, %31
  %26 = load ptr, ptr %3, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %32 = load i32, ptr %4, align 8
  %33 = load ptr, ptr %22, align 8
  %34 = call fastcc zeroext i8 @ei_cond(i32 %32, ptr %33, ptr noundef nonnull %3) #17, !range !45
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %25, !llvm.loop !125

36:                                               ; preds = %31, %18
  %37 = load ptr, ptr %3, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %25, %36
  %40 = phi ptr [ %37, %36 ], [ %26, %25 ]
  %41 = tail call ptr @split_edge(ptr noundef nonnull %40) #18
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !80
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %51 = load i32, ptr %50, align 8, !tbaa !36
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %59, label %53

53:                                               ; preds = %49, %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 174, ptr noundef nonnull @.str.1) #18
  br label %59

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !36
  %57 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %58 = tail call ptr @create_basic_block(ptr noundef %56, ptr noundef null, ptr noundef %57) #18
  br label %59

59:                                               ; preds = %53, %49, %54
  %60 = phi ptr [ %41, %49 ], [ %41, %53 ], [ %58, %54 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !36
  %63 = getelementptr inbounds %struct.rtl_bb_info, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !80
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !36
  %67 = load ptr, ptr @current_sched_info, align 8, !tbaa !42
  %68 = getelementptr inbounds %struct.haifa_sched_info, ptr %67, i64 0, i32 9
  store ptr %66, ptr %68, align 8, !tbaa !108
  %69 = icmp eq ptr %66, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @.str.1) #18
  br label %71

71:                                               ; preds = %59, %70
  %72 = load ptr, ptr @sched_init_only_bb, align 8, !tbaa !42
  %73 = load ptr, ptr @last_bb, align 8, !tbaa !42
  tail call void %72(ptr noundef nonnull %60, ptr noundef %73) #18
  %74 = load ptr, ptr @last_bb, align 8, !tbaa !42
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
define internal noundef ptr @advance_target_bb(ptr noundef readonly %0, ptr noundef %1) #0 !prof !35 !PGOFuncName !126 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %75, label %9

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %1) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @h_i_d, align 8
  %14 = load i32, ptr %5, align 8, !tbaa !36
  %15 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %13, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct._haifa_insn_data, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @cfun, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = icmp eq ptr %17, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %19, %12
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !36
  %33 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %13, i32 noundef %32) #17
  %34 = getelementptr inbounds %struct._haifa_insn_data, ptr %33, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !127
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr @cfun, align 8, !tbaa !42
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !77
  %43 = icmp eq ptr %35, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %37, %26
  %45 = tail call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %30) #18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !75
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !36
  %52 = load ptr, ptr %51, align 8, !tbaa !78
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 13
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 1
  %58 = load i32, ptr %57, align 8, !tbaa !36
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %75, label %60

60:                                               ; preds = %56, %47, %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 672, ptr noundef nonnull @.str.1) #18
  br label %75

61:                                               ; preds = %2, %66
  %62 = phi ptr [ %68, %66 ], [ %0, %2 ]
  %63 = load ptr, ptr @last_bb, align 8, !tbaa !42
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 683, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %61, %65
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !75
  %69 = tail call ptr @bb_note(ptr noundef %68) #18
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !36
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !80
  %74 = icmp eq ptr %69, %73
  br i1 %74, label %61, label %75, !llvm.loop !130

75:                                               ; preds = %66, %4, %9, %19, %37, %60, %56
  %76 = phi ptr [ %0, %56 ], [ %0, %60 ], [ null, %37 ], [ null, %19 ], [ null, %9 ], [ null, %4 ], [ %68, %66 ]
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @debug_ebb_dependencies(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !131 {
  %3 = load ptr, ptr @sched_dump, align 8, !tbaa !42
  %4 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 56, i64 1, ptr %3)
  %5 = load ptr, ptr @sched_dump, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !86
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
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #2 !prof !35 !PGOFuncName !132 {
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
define internal fastcc void @add_deps_for_risky_insns(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !133 {
  %3 = alloca %struct._dep, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %86, label %9

7:                                                ; preds = %75
  %8 = icmp eq ptr %77, null
  br i1 %8, label %86, label %81

9:                                                ; preds = %2, %75
  %10 = phi ptr [ %79, %75 ], [ %0, %2 ]
  %11 = phi ptr [ %77, %75 ], [ null, %2 ]
  %12 = phi ptr [ %76, %75 ], [ null, %2 ]
  %13 = call zeroext i8 @control_flow_insn_p(ptr noundef %10) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  store ptr %11, ptr %18, align 8, !tbaa !134
  br label %75

19:                                               ; preds = %9
  %20 = load i32, ptr %10, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = icmp eq i32 %21, 10
  %26 = icmp ne ptr %12, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %30, label %75

28:                                               ; preds = %19
  %29 = icmp eq ptr %12, null
  br i1 %29, label %75, label %30

30:                                               ; preds = %24, %28
  %31 = call i32 @haifa_classify_insn(ptr noundef nonnull %10) #18
  switch i32 %31, label %75 [
    i32 2, label %32
    i32 5, label %47
    i32 4, label %47
    i32 3, label %47
  ]

32:                                               ; preds = %30
  %33 = load i32, ptr @flag_schedule_speculative_load, align 4, !tbaa !40
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = call fastcc ptr @earliest_block_with_similiar_load(ptr noundef %11, ptr noundef nonnull %10) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !134
  %41 = icmp eq ptr %40, null
  br i1 %41, label %75, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !80
  br label %47

47:                                               ; preds = %32, %42, %35, %30, %30, %30
  %48 = phi ptr [ %12, %30 ], [ %12, %30 ], [ %12, %30 ], [ %46, %42 ], [ %12, %35 ], [ %12, %32 ]
  %49 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %10, ptr noundef %48) #18
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @init_dep(ptr noundef nonnull %3, ptr noundef %48, ptr noundef nonnull %10, i32 noundef 12) #18
  %52 = load ptr, ptr @current_sched_info, align 8, !tbaa !42
  %53 = getelementptr inbounds %struct.haifa_sched_info, ptr %52, i64 0, i32 17
  %54 = load i32, ptr %53, align 8, !tbaa !135
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = call i32 @sd_add_or_update_dep(ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 428, ptr noundef nonnull @.str.1) #18
  br label %74

61:                                               ; preds = %51
  %62 = and i32 %54, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @spec_info, align 8, !tbaa !42
  %66 = load i32, ptr %65, align 8, !tbaa !136
  %67 = and i32 %66, 258048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct._dep, ptr %3, i64 0, i32 3
  %71 = call i32 @set_dep_weak(i32 noundef 67108864, i32 noundef 258048, i32 noundef 62) #18
  store i32 %71, ptr %70, align 4, !tbaa !138
  br label %72

72:                                               ; preds = %69, %64, %61
  %73 = call i32 @sd_add_or_update_dep(ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  br label %74

74:                                               ; preds = %60, %57, %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %75

75:                                               ; preds = %15, %38, %74, %47, %30, %28, %24
  %76 = phi ptr [ %10, %15 ], [ %12, %30 ], [ %12, %47 ], [ %12, %74 ], [ %12, %38 ], [ null, %28 ], [ %12, %24 ]
  %77 = phi ptr [ %17, %15 ], [ %11, %30 ], [ %11, %47 ], [ %11, %74 ], [ %11, %38 ], [ %11, %28 ], [ %11, %24 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !36
  %80 = icmp eq ptr %79, %5
  br i1 %80, label %7, label %9, !llvm.loop !140

81:                                               ; preds = %7, %81
  %82 = phi ptr [ %84, %81 ], [ %77, %7 ]
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !134
  store ptr null, ptr %83, align 8, !tbaa !134
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %81, !llvm.loop !141

86:                                               ; preds = %81, %2, %7
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
define internal fastcc ptr @earliest_block_with_similiar_load(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !142 {
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
  %14 = load ptr, ptr %4, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct._dep, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !143
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %7, ptr noundef %19, i32 noundef 4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  %20 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %18, %56
  %23 = phi ptr [ %57, %56 ], [ %13, %18 ]
  %24 = load ptr, ptr %6, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct._dep, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !146
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct._dep, ptr %24, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !143
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %22
  %33 = icmp eq ptr %23, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !86
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
  %49 = load ptr, ptr %48, align 8, !tbaa !134
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %28, %49
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %53, label %46, !llvm.loop !147

53:                                               ; preds = %46, %43
  %54 = phi i1 [ %11, %43 ], [ %50, %46 ]
  %55 = select i1 %54, ptr %28, ptr %23
  br label %56

56:                                               ; preds = %53, %22, %40, %34
  %57 = phi ptr [ %23, %34 ], [ %23, %40 ], [ %23, %22 ], [ %55, %53 ]
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #17
  %58 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %22, !llvm.loop !148

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
  br i1 %65, label %66, label %12, !llvm.loop !149

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
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 !prof !35 !PGOFuncName !150 {
  store i32 %2, ptr %0, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %5, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !155
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !156 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  store ptr %10, ptr %1, align 8, !tbaa !42
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !151
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #18
  %18 = load ptr, ptr %3, align 8, !tbaa !42
  store ptr %18, ptr %4, align 8, !tbaa !154
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
  store ptr null, ptr %1, align 8, !tbaa !42
  br label %24

24:                                               ; preds = %21, %23, %8
  %25 = phi i8 [ 1, %8 ], [ 0, %23 ], [ %22, %21 ]
  ret i8 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #13 !prof !35 !PGOFuncName !159 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !154
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{i64 0, i64 4, !40, i64 8, i64 8, !42}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !37, i64 0}
!44 = !{i64 0, i64 8, !42}
!45 = !{i8 0, i8 2}
!46 = !{!47, !41, i64 48}
!47 = !{!"edge_def", !43, i64 0, !43, i64 8, !37, i64 16, !43, i64 24, !43, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !48, i64 56}
!48 = !{!"long", !37, i64 0}
!49 = !{!47, !43, i64 8}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"sched-ebb.c:ei_start_1"}
!53 = !{!"sched-ebb.c:ei_cond"}
!54 = !{!"sched-ebb.c:ei_next"}
!55 = !{!56, !41, i64 0}
!56 = !{!"", !41, i64 0, !43, i64 8}
!57 = !{!"sched-ebb.c:ei_end_p"}
!58 = !{!"sched-ebb.c:ei_edge"}
!59 = !{!"sched-ebb.c:VEC_edge_base_length"}
!60 = !{!61, !41, i64 0}
!61 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!62 = !{!"sched-ebb.c:ei_container"}
!63 = !{!"sched-ebb.c:VEC_edge_base_index"}
!64 = !{!65, !41, i64 8}
!65 = !{!"param_info", !43, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !43, i64 24}
!66 = !{!67, !43, i64 8}
!67 = !{!"function", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !43, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!68 = !{!69, !41, i64 24}
!69 = !{!"control_flow_graph", !43, i64 0, !43, i64 8, !43, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !43, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!70 = !{!71, !43, i64 0}
!71 = !{!"common_sched_info_def", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !41, i64 32}
!72 = !{!71, !43, i64 8}
!73 = !{!71, !41, i64 32}
!74 = !{!69, !43, i64 0}
!75 = !{!76, !43, i64 56}
!76 = !{!"basic_block_def", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !37, i64 32, !43, i64 48, !43, i64 56, !37, i64 64, !48, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!77 = !{!69, !43, i64 8}
!78 = !{!79, !43, i64 0}
!79 = !{!"rtl_bb_info", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !41, i64 32}
!80 = !{!79, !43, i64 8}
!81 = distinct !{!81, !51}
!82 = !{!47, !41, i64 52}
!83 = distinct !{!83, !51}
!84 = distinct !{!84, !51}
!85 = !{!"sched-ebb.c:ebb_fix_recovery_cfg"}
!86 = !{!76, !41, i64 80}
!87 = !{!69, !43, i64 16}
!88 = !{!"sched-ebb.c:ebb_add_block"}
!89 = !{!"sched-ebb.c:bitmap_initialize_stat"}
!90 = !{!91, !43, i64 24}
!91 = !{!"bitmap_head_def", !43, i64 0, !43, i64 8, !41, i64 16, !43, i64 24}
!92 = !{!"sched-ebb.c:schedule_ebb"}
!93 = !{!94, !43, i64 448}
!94 = !{!"gcc_target", !95, i64 0, !97, i64 368, !98, i64 664, !41, i64 744, !43, i64 752, !43, i64 760, !43, i64 768, !43, i64 776, !43, i64 784, !43, i64 792, !43, i64 800, !43, i64 808, !43, i64 816, !43, i64 824, !43, i64 832, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !43, i64 872, !43, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !43, i64 912, !43, i64 920, !43, i64 928, !43, i64 936, !43, i64 944, !43, i64 952, !43, i64 960, !43, i64 968, !43, i64 976, !43, i64 984, !43, i64 992, !43, i64 1000, !43, i64 1008, !43, i64 1016, !43, i64 1024, !43, i64 1032, !43, i64 1040, !43, i64 1048, !43, i64 1056, !48, i64 1064, !48, i64 1072, !43, i64 1080, !43, i64 1088, !43, i64 1096, !43, i64 1104, !43, i64 1112, !43, i64 1120, !43, i64 1128, !43, i64 1136, !43, i64 1144, !43, i64 1152, !43, i64 1160, !43, i64 1168, !99, i64 1176, !43, i64 1232, !43, i64 1240, !43, i64 1248, !43, i64 1256, !43, i64 1264, !43, i64 1272, !43, i64 1280, !43, i64 1288, !43, i64 1296, !43, i64 1304, !43, i64 1312, !43, i64 1320, !43, i64 1328, !43, i64 1336, !43, i64 1344, !43, i64 1352, !43, i64 1360, !43, i64 1368, !43, i64 1376, !43, i64 1384, !43, i64 1392, !43, i64 1400, !43, i64 1408, !43, i64 1416, !43, i64 1424, !43, i64 1432, !43, i64 1440, !43, i64 1448, !43, i64 1456, !48, i64 1464, !100, i64 1472, !43, i64 1664, !43, i64 1672, !43, i64 1680, !43, i64 1688, !43, i64 1696, !43, i64 1704, !43, i64 1712, !43, i64 1720, !43, i64 1728, !43, i64 1736, !43, i64 1744, !43, i64 1752, !43, i64 1760, !43, i64 1768, !43, i64 1776, !101, i64 1784, !102, i64 1792, !103, i64 1896, !104, i64 1968, !43, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!95 = !{!"asm_out", !43, i64 0, !43, i64 8, !43, i64 16, !96, i64 24, !96, i64 56, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !43, i64 320, !43, i64 328, !43, i64 336, !43, i64 344, !43, i64 352, !43, i64 360}
!96 = !{!"asm_int_op", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!97 = !{!"sched", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288}
!98 = !{!"vectorize", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72}
!99 = !{!"addr_space", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!100 = !{!"calls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184}
!101 = !{!"c", !43, i64 0}
!102 = !{!"cxx", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96}
!103 = !{!"emutls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !37, i64 64, !37, i64 65}
!104 = !{!"target_option_hooks", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!105 = !{!106, !41, i64 100}
!106 = !{!"haifa_sched_info", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !41, i64 96, !41, i64 100, !43, i64 104, !43, i64 112, !43, i64 120, !41, i64 128}
!107 = !{!106, !43, i64 64}
!108 = !{!106, !43, i64 72}
!109 = !{!106, !43, i64 80}
!110 = !{!106, !43, i64 88}
!111 = !{!76, !43, i64 0}
!112 = !{!76, !43, i64 8}
!113 = !{!76, !43, i64 48}
!114 = !{!"sched-ebb.c:VEC_basic_block_base_index"}
!115 = !{!"sched-ebb.c:init_ready_list"}
!116 = distinct !{!116, !51}
!117 = !{!"sched-ebb.c:schedule_more_p"}
!118 = !{!"sched-ebb.c:rank"}
!119 = !{!76, !48, i64 72}
!120 = !{!76, !41, i64 88}
!121 = !{!"sched-ebb.c:ebb_print_insn"}
!122 = !{!"sched-ebb.c:ebb_contributes_to_priority"}
!123 = !{!"sched-ebb.c:ebb_add_remove_insn"}
!124 = !{!"sched-ebb.c:begin_schedule_ready"}
!125 = distinct !{!125, !51}
!126 = !{!"sched-ebb.c:advance_target_bb"}
!127 = !{!128, !43, i64 40}
!128 = !{!"_haifa_insn_data", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !129, i64 20, !41, i64 22, !41, i64 22, !37, i64 23, !41, i64 24, !41, i64 28, !41, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !41, i64 88}
!129 = !{!"short", !37, i64 0}
!130 = distinct !{!130, !51}
!131 = !{!"sched-ebb.c:debug_ebb_dependencies"}
!132 = !{!"sched-ebb.c:VEC_haifa_insn_data_def_base_index"}
!133 = !{!"sched-ebb.c:add_deps_for_risky_insns"}
!134 = !{!76, !43, i64 16}
!135 = !{!106, !41, i64 128}
!136 = !{!137, !41, i64 0}
!137 = !{!"spec_info_def", !41, i64 0, !43, i64 8, !41, i64 16, !41, i64 20, !41, i64 24}
!138 = !{!139, !41, i64 20}
!139 = !{!"_dep", !43, i64 0, !43, i64 8, !41, i64 16, !41, i64 20}
!140 = distinct !{!140, !51}
!141 = distinct !{!141, !51}
!142 = !{!"sched-ebb.c:earliest_block_with_similiar_load"}
!143 = !{!139, !41, i64 16}
!144 = !{!139, !43, i64 0}
!145 = !{i64 0, i64 4, !40, i64 8, i64 8, !42, i64 16, i64 8, !42, i64 24, i64 1, !36}
!146 = !{!139, !43, i64 8}
!147 = distinct !{!147, !51}
!148 = distinct !{!148, !51}
!149 = distinct !{!149, !51}
!150 = !{!"sched-ebb.c:sd_iterator_start"}
!151 = !{!152, !41, i64 0}
!152 = !{!"_sd_iterator", !41, i64 0, !43, i64 8, !43, i64 16, !37, i64 24}
!153 = !{!152, !43, i64 8}
!154 = !{!152, !43, i64 16}
!155 = !{!152, !37, i64 24}
!156 = !{!"sched-ebb.c:sd_iterator_cond"}
!157 = !{!158, !43, i64 0}
!158 = !{!"_dep_link", !43, i64 0, !43, i64 8, !43, i64 16}
!159 = !{!"sched-ebb.c:sd_iterator_next"}
