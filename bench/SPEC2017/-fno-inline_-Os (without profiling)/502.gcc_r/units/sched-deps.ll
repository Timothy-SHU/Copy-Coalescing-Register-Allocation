; ModuleID = 'sched-deps.c'
source_filename = "sched-deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
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
%struct.reg_pressure_data = type { i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct._haifa_deps_insn_data = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_haifa_deps_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_deps_insn_data] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.common_sched_info_def = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._deps_list = type { ptr, i32 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct._dep_link = type { ptr, ptr, ptr }
%struct.sched_deps_info_def = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.deps_reg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.reg_use_data = type { i32, ptr, ptr, ptr }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.reg_set_data = type { i32, ptr, ptr }

@h_d_i_d = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"sched-deps.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_sched_info = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@dn_pool_diff = internal unnamed_addr global i32 0, align 4
@dl_pool_diff = internal unnamed_addr global i32 0, align 4
@sched_luids = external local_unnamed_addr global ptr, align 8
@h_i_d = external local_unnamed_addr global ptr, align 8
@true_dependency_cache = internal unnamed_addr global ptr null, align 8
@output_dependency_cache = internal unnamed_addr global ptr null, align 8
@anti_dependency_cache = internal unnamed_addr global ptr null, align 8
@spec_dependency_cache = internal unnamed_addr global ptr null, align 8
@reg_pending_sets = internal unnamed_addr global ptr null, align 8
@reg_pending_clobbers = internal unnamed_addr global ptr null, align 8
@reg_pending_uses = internal unnamed_addr global ptr null, align 8
@max_regno = external local_unnamed_addr global i32, align 4
@reg_info_p_size = external local_unnamed_addr global i64, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_info_p = external local_unnamed_addr global ptr, align 8
@sched_deps_info = dso_local local_unnamed_addr global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@reg_pending_barrier = internal unnamed_addr global i32 0, align 4
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@implicit_reg_pending_uses = internal unnamed_addr global i64 0, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@reg_obstack = external global %struct.bitmap_obstack, align 8
@sched_max_luid = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@cache_size = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"deps_list\00", align 1
@dl_pool = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"dep_node\00", align 1
@dn_pool = internal global ptr null, align 8
@implicit_reg_pending_clobbers = internal unnamed_addr global i64 0, align 8
@sched_emulate_haifa_p = external local_unnamed_addr global i32, align 4
@cur_insn = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"%d; \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%c; \00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@common_sched_info = external local_unnamed_addr global ptr, align 8
@sd_iterator_start.null_link = internal global ptr null, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@can_start_lhs_rhs_p = internal unnamed_addr global i8 0, align 1
@sched_pressure_p = external local_unnamed_addr global i8, align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@setup_insn_reg_pressure_info.pressure_info = internal unnamed_addr global ptr null, align 8
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@reg_pressure_info = internal unnamed_addr global [27 x %struct.reg_pressure_data] zeroinitializer, align 16
@sched_regno_cover_class = external local_unnamed_addr global ptr, align 8
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"BEGIN_DATA: %d; \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"BE_IN_DATA: %d; \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"BEGIN_CONTROL: %d; \00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"BE_IN_CONTROL: %d; \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"HARD_DEP; \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"DEP_TRUE; \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"DEP_ANTI; \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"DEP_OUTPUT; \00", align 1
@switch.table.call_may_noreturn_p = private unnamed_addr constant [30 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\01\01\00\01\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ds_to_dk(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 16777216
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = and i32 %0, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = and i32 %0, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 71, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %10, %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 11, %4 ], [ 12, %7 ], [ 12, %10 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dk_to_ds(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %3 [
    i32 0, label %5
    i32 11, label %2
    i32 12, label %4
  ]

2:                                                ; preds = %1
  br label %5

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @.str.1) #24
  br label %4

4:                                                ; preds = %1, %3
  br label %5

5:                                                ; preds = %1, %4, %2
  %6 = phi i32 [ 67108864, %4 ], [ 33554432, %2 ], [ 16777216, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_dep_1(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  store ptr %1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  store i32 %4, ptr %8, align 4, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_dep(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.haifa_sched_info, ptr %5, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !15
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @dk_to_ds(i32 noundef %3) #25, !range !17
  br label %12

12:                                               ; preds = %4, %10
  %13 = phi i32 [ %11, %10 ], [ -1, %4 ]
  tail call void @init_dep_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %13) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_debug_dep(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !14
  tail call fastcc void @dump_dep(ptr noundef %2, ptr noundef %0, i32 noundef 1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_dep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %2, i32 30
  %7 = tail call i32 @fputc(i32 60, ptr %0)
  %8 = and i32 %6, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !18
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %13) #25
  br label %15

15:                                               ; preds = %10, %3
  %16 = and i32 %6, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !18
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %22) #25
  br label %24

24:                                               ; preds = %18, %15
  %25 = and i32 %6, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !12
  switch i32 %29, label %32 [
    i32 0, label %33
    i32 11, label %30
    i32 12, label %31
  ]

30:                                               ; preds = %27
  br label %33

31:                                               ; preds = %27
  br label %33

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @.str.1) #24
  br label %33

33:                                               ; preds = %27, %32, %31, %30
  %34 = phi i32 [ 0, %32 ], [ 97, %31 ], [ 111, %30 ], [ 116, %27 ]
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %34) #25
  br label %36

36:                                               ; preds = %33, %24
  %37 = and i32 %6, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 17
  %42 = load i32, ptr %41, align 8, !tbaa !15
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !13
  tail call fastcc void @dump_ds(ptr noundef %0, i32 noundef %47) #25
  br label %48

48:                                               ; preds = %39, %45, %36
  %49 = tail call i32 @fputc(i32 62, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #5 {
  %1 = load i32, ptr @dn_pool_diff, align 4, !tbaa !19
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @dl_pool_diff, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #26
  store i8 0, ptr %3, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #26
  store i8 0, ptr %4, align 1, !tbaa !18
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = call fastcc ptr @sched_get_condition_with_rev(ptr noundef nonnull %0, ptr noundef nonnull %3) #25
  %14 = call fastcc ptr @sched_get_condition_with_rev(ptr noundef nonnull %1, ptr noundef nonnull %4) #25
  %15 = icmp ne ptr %13, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i8, ptr %3, align 1, !tbaa !18
  %20 = load i8, ptr %4, align 1, !tbaa !18
  %21 = call fastcc i32 @conditions_mutex_p(ptr noundef nonnull %13, ptr noundef nonnull %14, i8 noundef zeroext %19, i8 noundef zeroext %20) #25, !range !20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = call i32 @modified_in_p(ptr noundef nonnull %13, ptr noundef nonnull %1) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @modified_in_p(ptr noundef nonnull %14, ptr noundef nonnull %0) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %12, %18, %23, %26, %8, %2
  br label %30

30:                                               ; preds = %26, %29
  %31 = phi i8 [ 0, %29 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #26
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sched_get_condition_with_rev(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !tbaa !18
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  br label %44

16:                                               ; preds = %9
  %17 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @onlyjump_p(ptr noundef nonnull %0) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @pc_set(ptr noundef nonnull %0) #24
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = load ptr, ptr @global_rtl, align 16, !tbaa !14
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load ptr, ptr %26, align 8, !tbaa !18
  br label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = icmp eq ptr %35, %29
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load ptr, ptr %26, align 8, !tbaa !18
  %39 = tail call i32 @reversed_comparison_code(ptr noundef %38, ptr noundef nonnull %0) #24
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %7, %40
  %42 = select i1 %40, ptr null, ptr %38
  br i1 %41, label %44, label %43

43:                                               ; preds = %37
  store i8 1, ptr %1, align 1, !tbaa !18
  br label %44

44:                                               ; preds = %37, %33, %43, %16, %19, %2, %31, %13
  %45 = phi ptr [ %15, %13 ], [ %32, %31 ], [ null, %2 ], [ null, %19 ], [ null, %16 ], [ %42, %37 ], [ %38, %43 ], [ null, %33 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @conditions_mutex_p(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !19
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !19
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = icmp eq i8 %2, %3
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call i32 @reversed_comparison_code(ptr noundef nonnull %1, ptr noundef null) #24
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i32 [ %21, %20 ], [ %13, %18 ]
  %24 = icmp eq i32 %6, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %25, %22, %11, %4
  br label %38

38:                                               ; preds = %31, %37
  %39 = phi i32 [ 0, %37 ], [ 1, %31 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !18
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #25
  %8 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 268500991
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %0) #24
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %47

22:                                               ; preds = %16
  %23 = load ptr, ptr @h_i_d, align 8
  %24 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %23, i32 noundef %6) #25
  %25 = getelementptr inbounds %struct._haifa_insn_data, ptr %24, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %22, %19
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !18
  %31 = tail call i32 @side_effects_p(ptr noundef %30) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = and i32 %1, 16519104
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %29, align 8, !tbaa !18
  %38 = tail call i32 @may_trap_p(ptr noundef %37) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = and i32 %1, 4032
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %0) #25, !range !23
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %43, %33
  br label %47

47:                                               ; preds = %43, %36, %28, %19, %22, %12, %2, %46
  %48 = phi i8 [ 1, %46 ], [ 0, %2 ], [ 0, %12 ], [ 0, %22 ], [ 0, %19 ], [ 0, %28 ], [ 0, %36 ], [ 0, %43 ]
  ret i8 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !19
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @sel_sched_p() unnamed_addr #8 {
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.common_sched_info_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !27
  %4 = icmp eq i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sched_has_condition_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @sched_get_condition_with_rev(ptr noundef %0, ptr noundef null) #25
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sd_next_list(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 {
  %5 = load i32, ptr %1, align 4, !tbaa !19
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @h_d_i_d, align 8
  %10 = load ptr, ptr @sched_luids, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !18
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %12) #25
  %14 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %9, i32 noundef %13) #25
  %15 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  store ptr %16, ptr %2, align 8, !tbaa !14
  store i8 0, ptr %3, align 1, !tbaa !18
  %17 = and i32 %5, -2
  br label %71

18:                                               ; preds = %4
  %19 = and i32 %5, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !18
  %26 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %25) #25
  %27 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %26) #25
  %28 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  store ptr %29, ptr %2, align 8, !tbaa !14
  store i8 0, ptr %3, align 1, !tbaa !18
  %30 = and i32 %5, -4
  br label %71

31:                                               ; preds = %18
  %32 = and i32 %5, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @h_d_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !18
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %38) #25
  %40 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %35, i32 noundef %39) #25
  %41 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !31
  store ptr %42, ptr %2, align 8, !tbaa !14
  store i8 0, ptr %3, align 1, !tbaa !18
  %43 = and i32 %5, -8
  br label %71

44:                                               ; preds = %31
  %45 = and i32 %5, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr @h_d_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !18
  %52 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %49, i32 noundef %51) #25
  %53 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %48, i32 noundef %52) #25
  %54 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  store ptr %55, ptr %2, align 8, !tbaa !14
  store i8 1, ptr %3, align 1, !tbaa !18
  %56 = and i32 %5, -16
  br label %71

57:                                               ; preds = %44
  %58 = and i32 %5, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @h_d_i_d, align 8
  %62 = load ptr, ptr @sched_luids, align 8
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !18
  %65 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %62, i32 noundef %64) #25
  %66 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %61, i32 noundef %65) #25
  %67 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %66, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  store ptr %68, ptr %2, align 8, !tbaa !14
  store i8 1, ptr %3, align 1, !tbaa !18
  %69 = and i32 %5, -32
  br label %71

70:                                               ; preds = %57
  store ptr null, ptr %2, align 8, !tbaa !14
  store i8 0, ptr %3, align 1, !tbaa !18
  br label %71

71:                                               ; preds = %21, %47, %70, %60, %34, %8
  %72 = phi i32 [ %30, %21 ], [ %56, %47 ], [ 0, %70 ], [ %69, %60 ], [ %43, %34 ], [ %17, %8 ]
  store i32 %72, ptr %1, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @sd_lists_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4, !tbaa !19
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2, %15
  %8 = phi i32 [ %16, %15 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %9 = load ptr, ptr %4, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._deps_list, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = add nsw i32 %13, %8
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %14, %11 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  %17 = load i32, ptr %3, align 4, !tbaa !19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %7, !llvm.loop !36

19:                                               ; preds = %15, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sd_lists_empty_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4, !tbaa !19
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %14, label %10

7:                                                ; preds = %10
  %8 = load i32, ptr %3, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2, %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %11 = load ptr, ptr %4, align 8, !tbaa !14
  %12 = tail call fastcc zeroext i8 @deps_list_empty_p(ptr noundef %11) #25, !range !23
  %13 = icmp eq i8 %12, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %10, %2
  %15 = phi i8 [ 1, %2 ], [ 0, %10 ], [ 1, %7 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @deps_list_empty_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._deps_list, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_init_insn(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @create_deps_list() #25
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !18
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #25
  %8 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %8, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !29
  %10 = tail call fastcc ptr @create_deps_list() #25
  %11 = load ptr, ptr @h_d_i_d, align 8
  %12 = load ptr, ptr @sched_luids, align 8
  %13 = load i32, ptr %5, align 8, !tbaa !18
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %12, i32 noundef %13) #25
  %15 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %11, i32 noundef %14) #25
  %16 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 3
  store ptr %10, ptr %16, align 8, !tbaa !30
  %17 = tail call fastcc ptr @create_deps_list() #25
  %18 = load ptr, ptr @h_d_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = load i32, ptr %5, align 8, !tbaa !18
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %20) #25
  %22 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %18, i32 noundef %21) #25
  %23 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %22, i64 0, i32 5
  store ptr %17, ptr %23, align 8, !tbaa !32
  %24 = tail call fastcc ptr @create_deps_list() #25
  %25 = load ptr, ptr @h_d_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = load i32, ptr %5, align 8, !tbaa !18
  %28 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %26, i32 noundef %27) #25
  %29 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %25, i32 noundef %28) #25
  %30 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %29, i64 0, i32 4
  store ptr %24, ptr %30, align 8, !tbaa !31
  %31 = tail call fastcc ptr @create_deps_list() #25
  %32 = load ptr, ptr @h_d_i_d, align 8
  %33 = load ptr, ptr @sched_luids, align 8
  %34 = load i32, ptr %5, align 8, !tbaa !18
  %35 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %33, i32 noundef %34) #25
  %36 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %32, i32 noundef %35) #25
  %37 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %36, i64 0, i32 6
  store ptr %31, ptr %37, align 8, !tbaa !33
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = or i32 %38, 67108864
  store i32 %42, ptr %0, align 8
  br label %43

43:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_deps_list() unnamed_addr #0 {
  %1 = load ptr, ptr @dl_pool, align 8, !tbaa !14
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #24
  store ptr null, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct._deps_list, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !34
  %4 = load i32, ptr @dl_pool_diff, align 4, !tbaa !19
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @dl_pool_diff, align 4, !tbaa !19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_finish_insn(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = and i32 %2, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.1) #24
  %9 = load i32, ptr %0, align 8
  br label %10

10:                                               ; preds = %5, %8
  %11 = phi i32 [ %2, %5 ], [ %9, %8 ]
  %12 = and i32 %11, -67108865
  store i32 %12, ptr %0, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load ptr, ptr @h_d_i_d, align 8
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !18
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #25
  %19 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %14, i32 noundef %18) #25
  %20 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  tail call fastcc void @free_deps_list(ptr noundef %21) #25
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %16, align 8, !tbaa !18
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #25
  %27 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 2
  store ptr null, ptr %27, align 8, !tbaa !29
  %28 = load i32, ptr %16, align 8, !tbaa !18
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %28) #25
  %30 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %29) #25
  %31 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  tail call fastcc void @free_deps_list(ptr noundef %32) #25
  %33 = load ptr, ptr @h_d_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = load i32, ptr %16, align 8, !tbaa !18
  %36 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %35) #25
  %37 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %33, i32 noundef %36) #25
  %38 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %37, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !30
  %39 = load i32, ptr %16, align 8, !tbaa !18
  %40 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %39) #25
  %41 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %33, i32 noundef %40) #25
  %42 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  tail call fastcc void @free_deps_list(ptr noundef %43) #25
  %44 = load ptr, ptr @h_d_i_d, align 8
  %45 = load ptr, ptr @sched_luids, align 8
  %46 = load i32, ptr %16, align 8, !tbaa !18
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %46) #25
  %48 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %44, i32 noundef %47) #25
  %49 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 5
  store ptr null, ptr %49, align 8, !tbaa !32
  %50 = load i32, ptr %16, align 8, !tbaa !18
  %51 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %50) #25
  %52 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %44, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  tail call fastcc void @free_deps_list(ptr noundef %54) #25
  %55 = load ptr, ptr @h_d_i_d, align 8
  %56 = load ptr, ptr @sched_luids, align 8
  %57 = load i32, ptr %16, align 8, !tbaa !18
  %58 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %57) #25
  %59 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %58) #25
  %60 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %59, i64 0, i32 4
  store ptr null, ptr %60, align 8, !tbaa !31
  %61 = load i32, ptr %16, align 8, !tbaa !18
  %62 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %61) #25
  %63 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %62) #25
  %64 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %63, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !33
  tail call fastcc void @free_deps_list(ptr noundef %65) #25
  %66 = load ptr, ptr @h_d_i_d, align 8
  %67 = load ptr, ptr @sched_luids, align 8
  %68 = load i32, ptr %16, align 8, !tbaa !18
  %69 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %67, i32 noundef %68) #25
  %70 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %66, i32 noundef %69) #25
  %71 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %70, i64 0, i32 6
  store ptr null, ptr %71, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_deps_list(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @deps_list_empty_p(ptr noundef %0) #25, !range !23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @dl_pool_diff, align 4, !tbaa !19
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr @dl_pool_diff, align 4, !tbaa !19
  %8 = load ptr, ptr @dl_pool, align 8, !tbaa !14
  tail call void @pool_free(ptr noundef %8, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sd_find_dep_between(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #25
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !18
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %12) #25
  %14 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %15 = icmp ne ptr %14, null
  %16 = load ptr, ptr @anti_dependency_cache, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #24
  %20 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  br label %21

21:                                               ; preds = %6, %19
  %22 = phi ptr [ %4, %6 ], [ %20, %19 ]
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds %struct.bitmap_head_def, ptr %22, i64 %23
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %10) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %23
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %10) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.bitmap_head_def, ptr %33, i64 %23
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %34, i32 noundef %10) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32, %27, %21, %3
  %38 = tail call fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef null) #25
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %38, %37 ], [ null, %32 ]
  ret ptr %40
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #11 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 4, i32 16
  %9 = select i1 %7, i32 3, i32 8
  %10 = tail call i32 @sd_lists_size(ptr noundef %1, i32 noundef %9) #25
  %11 = tail call i32 @sd_lists_size(ptr noundef %0, i32 noundef %8) #25
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %5, ptr noundef %1, i32 noundef %9) #25
  %14 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13, %20
  %17 = load ptr, ptr %6, align 8, !tbaa !14
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #25
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %16, !llvm.loop !39

23:                                               ; preds = %4
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %5, ptr noundef %0, i32 noundef %8) #25
  %24 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23, %31
  %27 = load ptr, ptr %6, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct._dep, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #25
  %32 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %26, !llvm.loop !40

34:                                               ; preds = %26, %16
  %35 = phi ptr [ %17, %16 ], [ %27, %26 ]
  %36 = icmp eq ptr %3, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !41
  br label %38

38:                                               ; preds = %31, %20, %34, %37, %23, %13
  %39 = phi ptr [ null, %13 ], [ null, %23 ], [ %35, %37 ], [ %35, %34 ], [ null, %20 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_add_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @create_dep_node() #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !5
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -11
  %17 = icmp ult i32 %16, -4
  %18 = icmp eq ptr %7, %13
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %12, %20
  %22 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.haifa_sched_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %7, i32 noundef %29) #25, !range !23
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 4, !tbaa !13
  %34 = and i32 %33, -16777216
  store i32 %34, ptr %28, align 4, !tbaa !13
  br label %35

35:                                               ; preds = %32, %27, %21
  %36 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  tail call fastcc void @copy_dep(ptr noundef nonnull %36, ptr noundef nonnull %0) #25
  call fastcc void @get_back_and_forw_lists(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %37 = load ptr, ptr %3, align 8, !tbaa !14
  tail call fastcc void @add_to_deps_list(ptr noundef %5, ptr noundef %37) #25
  %38 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 2
  %39 = load ptr, ptr %4, align 8, !tbaa !14
  tail call fastcc void @add_to_deps_list(ptr noundef nonnull %38, ptr noundef %39) #25
  %40 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %0) #25
  br label %43

43:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_dep_node() unnamed_addr #0 {
  %1 = load ptr, ptr @dn_pool, align 8, !tbaa !14
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #24
  %3 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 2
  store ptr %2, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct._dep_link, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %2, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = load i32, ptr @dn_pool_diff, align 4, !tbaa !19
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @dn_pool_diff, align 4, !tbaa !19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_dep(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_back_and_forw_lists(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.haifa_sched_info, ptr %9, i64 0, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !15
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = and i32 %16, 16777215
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @h_d_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !18
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %23) #25
  %25 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %20, i32 noundef %24) #25
  %26 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %25, i64 0, i32 3
  br label %35

27:                                               ; preds = %14, %8
  %28 = load ptr, ptr @h_d_i_d, align 8
  %29 = load ptr, ptr @sched_luids, align 8
  %30 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !18
  %32 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %29, i32 noundef %31) #25
  %33 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %28, i32 noundef %32) #25
  %34 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %33, i64 0, i32 2
  br label %35

35:                                               ; preds = %27, %19
  %36 = phi ptr [ %34, %27 ], [ %26, %19 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  store ptr %37, ptr %2, align 8, !tbaa !14
  %38 = load ptr, ptr @h_d_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = load ptr, ptr %0, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !18
  %43 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %42) #25
  %44 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %38, i32 noundef %43) #25
  %45 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %44, i64 0, i32 4
  br label %63

46:                                               ; preds = %4
  %47 = load ptr, ptr @h_d_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !18
  %51 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %48, i32 noundef %50) #25
  %52 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %47, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !32
  store ptr %54, ptr %2, align 8, !tbaa !14
  %55 = load ptr, ptr @h_d_i_d, align 8
  %56 = load ptr, ptr @sched_luids, align 8
  %57 = load ptr, ptr %0, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !18
  %60 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %59) #25
  %61 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %60) #25
  %62 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %61, i64 0, i32 6
  br label %63

63:                                               ; preds = %46, %35
  %64 = phi ptr [ %45, %35 ], [ %62, %46 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !14
  store ptr %65, ptr %3, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_deps_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @attach_dep_link(ptr noundef %0, ptr noundef %1) #25
  %3 = tail call fastcc zeroext i8 @depl_on_debug_p(ptr noundef %0) #25, !range !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_dependency_caches(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !18
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %10) #25
  %12 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.haifa_sched_info, ptr %12, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !15
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !12
  switch i32 %19, label %35 [
    i32 0, label %20
    i32 11, label %25
    i32 12, label %30
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %22 = sext i32 %11 to i64
  %23 = getelementptr inbounds %struct.bitmap_head_def, ptr %21, i64 %22
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %6) #24
  br label %77

25:                                               ; preds = %17
  %26 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %27 = sext i32 %11 to i64
  %28 = getelementptr inbounds %struct.bitmap_head_def, ptr %26, i64 %27
  %29 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %6) #24
  br label %77

30:                                               ; preds = %17
  %31 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %32 = sext i32 %11 to i64
  %33 = getelementptr inbounds %struct.bitmap_head_def, ptr %31, i64 %32
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %6) #24
  br label %77

35:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 963, ptr noundef nonnull @.str.1) #24
  br label %77

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = and i32 %38, 16777216
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %43 = sext i32 %11 to i64
  %44 = getelementptr inbounds %struct.bitmap_head_def, ptr %42, i64 %43
  %45 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %44, i32 noundef %6) #24
  br label %46

46:                                               ; preds = %41, %36
  %47 = and i32 %38, 33554432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %51 = sext i32 %11 to i64
  %52 = getelementptr inbounds %struct.bitmap_head_def, ptr %50, i64 %51
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %52, i32 noundef %6) #24
  br label %54

54:                                               ; preds = %49, %46
  %55 = and i32 %38, 67108864
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %59 = sext i32 %11 to i64
  %60 = getelementptr inbounds %struct.bitmap_head_def, ptr %58, i64 %59
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %60, i32 noundef %6) #24
  br label %62

62:                                               ; preds = %57, %54
  %63 = and i32 %38, 16777215
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.haifa_sched_info, ptr %66, i64 0, i32 17
  %68 = load i32, ptr %67, align 8, !tbaa !15
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 979, ptr noundef nonnull @.str.1) #24
  br label %72

72:                                               ; preds = %65, %71
  %73 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !14
  %74 = sext i32 %11 to i64
  %75 = getelementptr inbounds %struct.bitmap_head_def, ptr %73, i64 %74
  %76 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %75, i32 noundef %6) #24
  br label %77

77:                                               ; preds = %62, %72, %20, %25, %30, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sd_add_or_update_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @add_or_update_dep_1(ptr noundef %0, i8 noundef zeroext %1, ptr noundef null, ptr noundef null) #25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @add_or_update_dep_1(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -11
  %17 = icmp ult i32 %16, -4
  %18 = icmp eq ptr %6, %13
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1125, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %11, %20
  %22 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  br label %32

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @ask_dependency_caches(ptr noundef nonnull %0) #25
  switch i32 %26, label %28 [
    i32 1, label %59
    i32 2, label %27
    i32 3, label %44
  ]

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  br label %32

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.1) #24
  %29 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %30 = icmp eq ptr %29, null
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1160, ptr noundef nonnull @.str.1) #24
  br label %32

32:                                               ; preds = %24, %27, %28, %31
  %33 = phi i1 [ false, %27 ], [ true, %28 ], [ true, %31 ], [ true, %24 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  %37 = call fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %34, ptr noundef %36, i8 noundef zeroext %1, ptr noundef nonnull %5) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  br i1 %33, label %41, label %40

40:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @.str.1) #24
  br label %41

41:                                               ; preds = %40, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %44

42:                                               ; preds = %32
  %43 = call fastcc i32 @update_dep(ptr noundef nonnull %37, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct._sd_iterator) align 8 %5, ptr noundef %2, ptr noundef %3) #25, !range !44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %59

44:                                               ; preds = %41, %25
  %45 = icmp eq ptr %2, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.sched_deps_info_def, ptr %47, i64 0, i32 12
  %49 = load i8, ptr %48, align 8
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1181, ptr noundef nonnull @.str.1) #24
  br label %53

53:                                               ; preds = %46, %52
  %54 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !13
  %56 = call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3) #25, !range !45
  %57 = call i32 @set_dep_weak(i32 noundef %55, i32 noundef 63, i32 noundef %56) #25
  store i32 %57, ptr %54, align 4, !tbaa !13
  br label %58

58:                                               ; preds = %53, %44
  call void @sd_add_dep(ptr noundef nonnull %0, i8 noundef zeroext %1) #25
  br label %59

59:                                               ; preds = %42, %25, %58
  %60 = phi i32 [ 3, %58 ], [ %43, %42 ], [ %26, %25 ]
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_resolve_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !15
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !13
  %18 = and i32 %17, 16777215
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @h_d_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !18
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %21, i32 noundef %25) #25
  %27 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 3
  br label %36

28:                                               ; preds = %15, %1
  %29 = load ptr, ptr @h_d_i_d, align 8
  %30 = load ptr, ptr @sched_luids, align 8
  %31 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !18
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #25
  %34 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #25
  %35 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %34, i64 0, i32 2
  br label %36

36:                                               ; preds = %28, %20
  %37 = phi ptr [ %35, %28 ], [ %27, %20 ]
  %38 = phi ptr [ %34, %28 ], [ %26, %20 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %38, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !32
  tail call fastcc void @move_dep_link(ptr noundef nonnull %5, ptr noundef %39, ptr noundef %41) #25
  %42 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 2
  %43 = load ptr, ptr @h_d_i_d, align 8
  %44 = load ptr, ptr @sched_luids, align 8
  %45 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !18
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %44, i32 noundef %46) #25
  %48 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %43, i32 noundef %47) #25
  %49 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !33
  tail call fastcc void @move_dep_link(ptr noundef nonnull %42, ptr noundef %50, ptr noundef %52) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_dep_link(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @remove_from_deps_list(ptr noundef %0, ptr noundef %1) #25
  tail call fastcc void @add_to_deps_list(ptr noundef %0, ptr noundef %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_copy_back_deps(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 3, i32 8
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %4, ptr noundef %1, i32 noundef %8) #25
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._dep, ptr %6, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  %14 = load ptr, ptr %5, align 8, !tbaa !14
  call fastcc void @copy_dep(ptr noundef nonnull %6, ptr noundef %14) #25
  store ptr %0, ptr %12, align 8, !tbaa !11
  call void @sd_add_dep(ptr noundef nonnull %6, i8 noundef zeroext %2) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %15 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %13, !llvm.loop !48

17:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  store i32 %2, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sd_iterator_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  br label %15

11:                                               ; preds = %22, %2
  %12 = phi ptr [ %6, %2 ], [ %23, %22 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct._dep_node, ptr %13, i64 0, i32 1
  br label %25

15:                                               ; preds = %8, %22
  %16 = load i32, ptr %0, align 8, !tbaa !49
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %19 = load ptr, ptr %9, align 8, !tbaa !50
  call void @sd_next_list(ptr noundef %19, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %10) #25
  %20 = load ptr, ptr %3, align 8, !tbaa !14
  store ptr %20, ptr %4, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %11

25:                                               ; preds = %15, %18, %11
  %26 = phi ptr [ %14, %11 ], [ null, %18 ], [ null, %15 ]
  %27 = phi i8 [ 1, %11 ], [ 0, %18 ], [ 0, %15 ]
  store ptr %26, ptr %1, align 8, !tbaa !14
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_delete_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !18
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #25
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %20) #25
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bitmap_head_def, ptr %12, i64 %22
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %23, i32 noundef %18) #24
  %25 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.bitmap_head_def, ptr %25, i64 %22
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %26, i32 noundef %18) #24
  %28 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %22
  %30 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %29, i32 noundef %18) #24
  %31 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %32 = getelementptr inbounds %struct.haifa_sched_info, ptr %31, i64 0, i32 17
  %33 = load i32, ptr %32, align 8, !tbaa !15
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %14
  %37 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct.bitmap_head_def, ptr %37, i64 %22
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %38, i32 noundef %18) #24
  br label %40

40:                                               ; preds = %14, %36, %1
  %41 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  %42 = load i8, ptr %41, align 8, !tbaa !51
  call fastcc void @get_back_and_forw_lists(ptr noundef nonnull %8, i8 noundef zeroext %42, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %43 = load ptr, ptr %2, align 8, !tbaa !14
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %7, ptr noundef %43) #25
  %44 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 2
  %45 = load ptr, ptr %3, align 8, !tbaa !14
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %44, ptr noundef %45) #25
  tail call fastcc void @delete_dep_node(ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_deps_list(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  tail call fastcc void @detach_dep_link(ptr noundef %0) #25
  %3 = tail call fastcc zeroext i8 @depl_on_debug_p(ptr noundef %0) #25, !range !23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dep_node(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @dep_link_is_detached_p(ptr noundef %0) #25, !range !23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._dep_node, ptr %0, i64 0, i32 2
  %6 = tail call fastcc zeroext i8 @dep_link_is_detached_p(ptr noundef nonnull %5) #25, !range !23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @dn_pool_diff, align 4, !tbaa !19
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr @dn_pool_diff, align 4, !tbaa !19
  %12 = load ptr, ptr @dn_pool, align 8, !tbaa !14
  tail call void @pool_free(ptr noundef %12, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_debug_lists(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  tail call fastcc void @dump_lists(ptr noundef %3, ptr noundef %0, i32 noundef %1) #25
  %4 = load ptr, ptr @stderr, align 8, !tbaa !14
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_lists(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %6 = tail call i32 @fputc(i32 91, ptr %0)
  %7 = tail call i32 @sd_lists_size(ptr noundef %1, i32 noundef %2) #25
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %7) #25
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %4, ptr noundef %1, i32 noundef %2) #25
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3, %11
  %12 = load ptr, ptr %5, align 8, !tbaa !14
  tail call fastcc void @dump_dep(ptr noundef %0, ptr noundef %12, i32 noundef 7) #25
  %13 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %14 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !52

16:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_set(i32 noundef %0) #0 {
  %2 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_clobber(i32 noundef %0) #0 {
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !14
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_use(i32 noundef %0) #0 {
  %2 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ds_to_dt(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 16777216
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = and i32 %0, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = and i32 %0, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1726, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %10, %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 11, %4 ], [ 12, %7 ], [ 12, %10 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_extend_reg_info_p() local_unnamed_addr #0 {
  %1 = load i32, ptr @max_regno, align 4, !tbaa !19
  %2 = add i32 %1, -1
  %3 = zext i32 %2 to i64
  %4 = load i64, ptr @reg_info_p_size, align 8, !tbaa !53
  %5 = icmp ugt i64 %4, %3
  br i1 %5, label %20, label %6

6:                                                ; preds = %0
  %7 = add nsw i32 %1, 128
  %8 = sext i32 %7 to i64
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2095, ptr noundef nonnull @.str.1) #24
  %15 = load i64, ptr @reg_info_p_size, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi i64 [ %4, %11 ], [ %15, %14 ]
  %18 = load ptr, ptr @reg_info_p, align 8, !tbaa !14
  %19 = tail call ptr @xrecalloc(ptr noundef %18, i64 noundef %8, i64 noundef %17, i64 noundef 28) #24
  store ptr %19, ptr @reg_info_p, align 8, !tbaa !14
  store i64 %8, ptr @reg_info_p_size, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: optsize
declare ptr @xrecalloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_analyze_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void %5(ptr noundef %1) #24
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i32, ptr %1, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %127 [
    i16 8, label %11
    i16 7, label %11
    i16 9, label %11
    i16 10, label %41
  ]

11:                                               ; preds = %8, %8, %8
  %12 = and i32 %9, 65535
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = icmp eq i32 %12, 9
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %1) #24
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !57
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !57
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 14, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !60
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1) #25
  br label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  %37 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef %36) #24
  store ptr %37, ptr %35, align 8, !tbaa !62
  br label %38

38:                                               ; preds = %33, %34, %22, %11
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_insn(ptr noundef nonnull %0, ptr noundef %40, ptr noundef nonnull %1) #25
  br label %127

41:                                               ; preds = %8
  %42 = load ptr, ptr @h_d_i_d, align 8
  %43 = load ptr, ptr @sched_luids, align 8
  %44 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !18
  %46 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %45) #25
  %47 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %42, i32 noundef %46) #25
  %48 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %47, i64 0, i32 7
  %49 = load i8, ptr %48, align 8
  %50 = or i8 %49, 1
  store i8 %50, ptr %48, align 8
  %51 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 30, ptr noundef null) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %96

54:                                               ; preds = %41, %93
  %55 = phi i64 [ %94, %93 ], [ 0, %41 ]
  %56 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !18
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  %61 = trunc i64 %55 to i32
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %60, i32 noundef %61) #24
  %63 = shl nuw nsw i64 1, %55
  %64 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  %65 = or i64 %64, %63
  store i64 %65, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  br label %93

66:                                               ; preds = %54
  %67 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !53
  %68 = shl nuw nsw i64 1, %55
  %69 = and i64 %67, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !14
  %73 = trunc i64 %55 to i32
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %72, i32 noundef %73) #24
  br label %93

75:                                               ; preds = %66
  %76 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %55
  %77 = load i8, ptr %76, align 1, !tbaa !18
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  %81 = or i64 %80, %68
  store i64 %81, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  br label %93

82:                                               ; preds = %75
  %83 = trunc i64 %55 to i32
  switch i32 %83, label %93 [
    i32 20, label %90
    i32 6, label %84
  ]

84:                                               ; preds = %82
  %85 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %86 = icmp eq i32 %85, 0
  %87 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %88 = icmp ne i8 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %84
  %91 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  %92 = or i64 %91, %68
  store i64 %92, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  br label %93

93:                                               ; preds = %82, %59, %79, %84, %90, %71
  %94 = add nuw nsw i64 %55, 1
  %95 = icmp eq i64 %94, 53
  br i1 %95, label %96, label %54, !llvm.loop !63

96:                                               ; preds = %93, %53
  %97 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %97, i32 noundef 1, i32 noundef 12) #25
  %98 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %99, ptr noundef nonnull %1) #25
  %100 = load i32, ptr %1, align 8
  %101 = and i32 %100, 268435456
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3310, ptr noundef nonnull @.str.1) #24
  %104 = load i32, ptr %1, align 8
  br label %105

105:                                              ; preds = %96, %103
  %106 = phi i32 [ %100, %96 ], [ %104, %103 ]
  %107 = and i32 %106, -2080374784
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  tail call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef %109) #25
  %110 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %111 = load i8, ptr %110, align 4
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %115) #24
  %116 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #24
  store ptr %116, ptr %115, align 8, !tbaa !64
  %117 = tail call fastcc zeroext i8 @call_may_noreturn_p(ptr noundef nonnull %1) #25, !range !23
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %120) #24
  %121 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #24
  store ptr %121, ptr %120, align 8, !tbaa !65
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 1, ptr %126, align 8, !tbaa !66
  br label %127

127:                                              ; preds = %105, %125, %122, %8, %38
  %128 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %129 = getelementptr inbounds %struct.sched_deps_info_def, ptr %128, i64 0, i32 12
  %130 = load i8, ptr %129, align 8
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  tail call void @cselib_process_insn(ptr noundef nonnull %1) #24
  br label %134

134:                                              ; preds = %133, %127
  %135 = load i32, ptr %1, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %140 = load i32, ptr %139, align 8, !tbaa !18
  %141 = add i32 %140, -7
  %142 = icmp ult i32 %141, 2
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3347, ptr noundef nonnull @.str.1) #24
  br label %144

144:                                              ; preds = %138, %143, %134
  %145 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %146 = getelementptr inbounds %struct.sched_deps_info_def, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !67
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  tail call void %147() #24
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32, ptr %1, align 8
  %152 = and i32 %151, 268500990
  %153 = icmp eq i32 %152, 268435464
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call fastcc void @fixup_sched_groups(ptr noundef nonnull %1) #25
  br label %158

158:                                              ; preds = %150, %157, %154
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef %1, ptr noundef %0, i32 noundef 1, i32 noundef 12) #25
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %12) #24
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  store i32 0, ptr %13, align 8, !tbaa !68
  br label %14

14:                                               ; preds = %6, %11, %4
  %15 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %16 = icmp eq i32 %2, 0
  %17 = select i1 %16, i32 11, i32 12
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, i32 noundef 1, i32 noundef %17) #25
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %18, i32 noundef 1, i32 noundef %17) #25
  %19 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %24) #24
  %25 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !69
  %26 = tail call ptr @alloc_INSN_LIST(ptr noundef %1, ptr noundef null) #24
  store ptr %26, ptr %18, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !57
  br label %28

28:                                               ; preds = %23, %14
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bitmap_head_def, align 8
  %8 = alloca %struct.bitmap_head_def, align 8
  %9 = alloca %struct._sd_iterator, align 8
  %10 = alloca ptr, align 8
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %13 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  tail call void @extract_insn(ptr noundef %2) #24
  tail call void @preprocess_constraints() #24
  call void @ira_implicitly_set_insn_hard_regs(ptr noundef nonnull %6) #24
  %16 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !53
  %17 = xor i64 %16, -1
  %18 = load i64, ptr %6, align 8, !tbaa !53
  %19 = and i64 %18, %17
  %20 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !53
  %21 = or i64 %20, %19
  store i64 %21, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i32, ptr %2, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 8
  %26 = icmp eq i32 %12, 23
  %27 = select i1 %25, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  store i8 %28, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  %29 = call i32 @may_trap_p(ptr noundef nonnull %1) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %33, i32 noundef 1, i32 noundef 12) #25
  br label %34

34:                                               ; preds = %31, %22
  %35 = icmp eq i32 %12, 14
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %2) #25
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !18
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  br label %43

43:                                               ; preds = %36, %34
  %44 = phi i32 [ %42, %36 ], [ %12, %34 ]
  %45 = phi ptr [ %40, %36 ], [ %1, %34 ]
  %46 = trunc i32 %44 to i16
  switch i16 %46, label %84 [
    i16 25, label %47
    i16 23, label %47
    i16 15, label %52
  ]

47:                                               ; preds = %43, %43
  %48 = icmp eq i32 %44, 25
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %2) #25
  br i1 %48, label %49, label %86

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %51, i32 noundef 1, i32 noundef 11) #25
  br label %86

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !18
  %55 = load i32, ptr %54, align 8, !tbaa !70
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %52
  %58 = add i32 %55, -1
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %57, %81
  %61 = phi i64 [ %59, %57 ], [ %82, %81 ]
  %62 = load ptr, ptr %53, align 8, !tbaa !18
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 14
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !18
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %2) #25
  %71 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !18
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  br label %75

75:                                               ; preds = %68, %60
  %76 = phi ptr [ %72, %68 ], [ %64, %60 ]
  %77 = phi i32 [ %74, %68 ], [ %66, %60 ]
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %80 [
    i16 25, label %79
    i16 23, label %79
  ]

79:                                               ; preds = %75, %75
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %76, ptr noundef nonnull %2) #25
  br label %81

80:                                               ; preds = %75
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %76, ptr noundef nonnull %2) #25
  br label %81

81:                                               ; preds = %80, %79
  %82 = add nsw i64 %61, -1
  %83 = icmp eq i64 %61, 0
  br i1 %83, label %85, label %60, !llvm.loop !72

84:                                               ; preds = %43
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %2) #25
  br label %86

85:                                               ; preds = %81, %52
  store i32 -1, ptr %4, align 4, !tbaa !19
  br label %86

86:                                               ; preds = %85, %84, %47, %49
  %87 = load i32, ptr %2, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !18
  %93 = icmp eq ptr %92, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %90, %103
  %95 = phi ptr [ %105, %103 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !18
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 25
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %97, ptr noundef nonnull %2) #25
  br label %103

102:                                              ; preds = %94
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %97, ptr noundef nonnull %2) #25
  br label %103

103:                                              ; preds = %101, %102
  %104 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !18
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %94, !llvm.loop !73

107:                                              ; preds = %103, %90
  %108 = call ptr @find_reg_note(ptr noundef nonnull %2, i32 noundef 30, ptr noundef null) #24
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %111

111:                                              ; preds = %107, %110, %86
  %112 = load i32, ptr %2, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %115, label %209

115:                                              ; preds = %111
  %116 = call ptr @next_nonnote_insn(ptr noundef nonnull %2) #24
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %115, %122
  %119 = phi ptr [ %123, %122 ], [ %116, %115 ]
  %120 = load i32, ptr %119, align 8
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %126 [
    i16 7, label %122
    i16 11, label %125
  ]

122:                                              ; preds = %118
  %123 = call ptr @next_nonnote_insn(ptr noundef nonnull %119) #24
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %118, !llvm.loop !74

125:                                              ; preds = %118
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %209

126:                                              ; preds = %122, %118, %115
  %127 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %128 = load ptr, ptr %127, align 8, !tbaa !75
  %129 = icmp eq ptr %128, null
  br i1 %129, label %164, label %130

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #26
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %7, ptr noundef nonnull @reg_obstack) #25
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %8, ptr noundef nonnull @reg_obstack) #25
  %131 = load ptr, ptr %127, align 8, !tbaa !75
  %132 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void %131(ptr noundef nonnull %2, ptr noundef nonnull %132, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %4) #25
  %133 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %161, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %137 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %138

138:                                              ; preds = %135, %158
  %139 = load ptr, ptr %136, align 8, !tbaa !76
  %140 = load i32, ptr %4, align 4, !tbaa !19
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.deps_reg, ptr %139, i64 %141, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %143, i32 noundef 0, i32 noundef 12) #25
  %144 = getelementptr inbounds %struct.deps_reg, ptr %139, i64 %141, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !79
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %145, i32 noundef 0, i32 noundef 12) #25
  %146 = getelementptr inbounds %struct.deps_reg, ptr %139, i64 %141, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !80
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %147, i32 noundef 0, i32 noundef 12) #25
  %148 = load i8, ptr %137, align 4
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %138
  %152 = getelementptr inbounds %struct.deps_reg, ptr %139, i64 %141
  %153 = getelementptr inbounds %struct.deps_reg, ptr %139, i64 %141, i32 4
  %154 = load i32, ptr %153, align 8, !tbaa !81
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %153, align 8, !tbaa !81
  %156 = load ptr, ptr %152, align 8, !tbaa !82
  %157 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %156) #24
  store ptr %157, ptr %152, align 8, !tbaa !82
  br label %158

158:                                              ; preds = %151, %138
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %159 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %138, !llvm.loop !83

161:                                              ; preds = %158, %130
  %162 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  %163 = call zeroext i8 @bitmap_ior_into(ptr noundef %162, ptr noundef nonnull %8) #24
  call void @bitmap_clear(ptr noundef nonnull %7) #24
  call void @bitmap_clear(ptr noundef nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  br label %164

164:                                              ; preds = %161, %126
  %165 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !18
  %167 = icmp eq ptr %166, null
  br i1 %167, label %180, label %168

168:                                              ; preds = %164, %176
  %169 = phi ptr [ %178, %176 ], [ %166, %164 ]
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !18
  %172 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %171) #25, !range !23
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load ptr, ptr %170, align 8, !tbaa !18
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef %175, i32 noundef 11) #25
  br label %176

176:                                              ; preds = %174, %168
  %177 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !18
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %168, !llvm.loop !84

180:                                              ; preds = %176, %164
  %181 = load ptr, ptr %0, align 8, !tbaa !18
  %182 = icmp eq ptr %181, null
  br i1 %182, label %206, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %185

185:                                              ; preds = %183, %201
  %186 = phi ptr [ %204, %201 ], [ %181, %183 ]
  %187 = phi ptr [ %203, %201 ], [ %184, %183 ]
  %188 = load ptr, ptr %187, align 8, !tbaa !18
  %189 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !18
  %191 = load i32, ptr %190, align 8
  %192 = and i32 %191, 134217728
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !18
  %197 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %196) #25, !range !23
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load ptr, ptr %195, align 8, !tbaa !18
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef %200, i32 noundef 11) #25
  br label %201

201:                                              ; preds = %199, %194, %185
  %202 = getelementptr inbounds %struct.rtx_def, ptr %186, i64 0, i32 1, i32 0, i32 0, i64 1
  %203 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %204 = load ptr, ptr %202, align 8, !tbaa !18
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %185, !llvm.loop !85

206:                                              ; preds = %201, %180
  %207 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8, !tbaa !62
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %208, i32 noundef 1, i32 noundef 12) #25
  br label %209

209:                                              ; preds = %125, %206, %111
  %210 = load i32, ptr %2, align 8
  %211 = and i32 %210, 65535
  %212 = add nsw i32 %211, -9
  %213 = icmp ult i32 %212, 2
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %2) #24
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %214
  %218 = load i32, ptr %2, align 8
  br label %219

219:                                              ; preds = %217, %209
  %220 = phi i32 [ %218, %217 ], [ %210, %209 ]
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 8
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %2) #24
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %223, %214
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %227

227:                                              ; preds = %226, %223, %219
  %228 = load i8, ptr @sched_pressure_p, align 1, !tbaa !18
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  call fastcc void @setup_insn_reg_uses(ptr noundef %0, ptr noundef nonnull %2) #25
  call fastcc void @setup_insn_reg_pressure_info(ptr noundef nonnull %2) #25
  br label %231

231:                                              ; preds = %230, %227
  %232 = load i32, ptr %2, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 7
  br i1 %234, label %235, label %304

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 12
  %237 = load ptr, ptr %236, align 8, !tbaa !86
  %238 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %239 = load i8, ptr %238, align 4
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  store ptr %2, ptr %236, align 8, !tbaa !86
  br label %243

243:                                              ; preds = %242, %235
  %244 = icmp eq ptr %237, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %243
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %237, i32 noundef 12) #25
  br label %246

246:                                              ; preds = %245, %243
  %247 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %248 = load ptr, ptr %247, align 8, !tbaa !64
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %248, i32 noundef 1, i32 noundef 12) #25
  %249 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %250 = load ptr, ptr %249, align 8, !tbaa !18
  %251 = icmp eq ptr %250, null
  br i1 %251, label %267, label %252

252:                                              ; preds = %246, %263
  %253 = phi ptr [ %265, %263 ], [ %250, %246 ]
  %254 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !18
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 65535
  %258 = icmp eq i32 %257, 9
  br i1 %258, label %259, label %262

259:                                              ; preds = %252
  %260 = call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259, %252
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %255, i32 noundef 12) #25
  br label %263

263:                                              ; preds = %259, %262
  %264 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1, i32 0, i32 0, i64 1
  %265 = load ptr, ptr %264, align 8, !tbaa !18
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %252, !llvm.loop !87

267:                                              ; preds = %263, %246
  %268 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %268, ptr noundef nonnull %4) #25
  %269 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %293, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %273

273:                                              ; preds = %271, %288
  %274 = load ptr, ptr %272, align 8, !tbaa !76
  %275 = load i32, ptr %4, align 4, !tbaa !19
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.deps_reg, ptr %274, i64 %276, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %278, i32 noundef 1, i32 noundef 12) #25
  %279 = getelementptr inbounds %struct.deps_reg, ptr %274, i64 %276, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !80
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %280, i32 noundef 1, i32 noundef 12) #25
  %281 = load i8, ptr %238, align 4
  %282 = and i8 %281, 1
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %273
  %285 = getelementptr inbounds %struct.deps_reg, ptr %274, i64 %276
  %286 = load ptr, ptr %285, align 8, !tbaa !82
  %287 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %286) #24
  store ptr %287, ptr %285, align 8, !tbaa !82
  br label %288

288:                                              ; preds = %284, %273
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %289 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %273, !llvm.loop !88

291:                                              ; preds = %288
  %292 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  br label %293

293:                                              ; preds = %291, %267
  %294 = phi ptr [ %292, %291 ], [ %268, %267 ]
  call void @bitmap_clear(ptr noundef %294) #24
  %295 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %296 = load ptr, ptr %295, align 8, !tbaa !18
  %297 = icmp eq ptr %296, null
  br i1 %297, label %495, label %298

298:                                              ; preds = %293
  %299 = load i32, ptr %296, align 8
  %300 = and i32 %299, 65535
  %301 = add nsw i32 %300, -11
  %302 = icmp ult i32 %301, -3
  br i1 %302, label %495, label %303

303:                                              ; preds = %298
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %296, i32 noundef 12) #25
  br label %495

304:                                              ; preds = %231
  %305 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %305, ptr noundef nonnull %4) #25
  %306 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %310 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %314

311:                                              ; preds = %334, %304
  %312 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %313 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %337

314:                                              ; preds = %308, %334
  %315 = load ptr, ptr %309, align 8, !tbaa !76
  %316 = load i32, ptr %4, align 4, !tbaa !19
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.deps_reg, ptr %315, i64 %317, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %319, i32 noundef 0, i32 noundef 0) #25
  %320 = getelementptr inbounds %struct.deps_reg, ptr %315, i64 %317, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !79
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %321, i32 noundef 0, i32 noundef 12) #25
  %322 = getelementptr inbounds %struct.deps_reg, ptr %315, i64 %317, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !80
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %323, i32 noundef 0, i32 noundef 0) #25
  %324 = load i8, ptr %310, align 4
  %325 = and i8 %324, 1
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %314
  %328 = getelementptr inbounds %struct.deps_reg, ptr %315, i64 %317
  %329 = load ptr, ptr %328, align 8, !tbaa !82
  %330 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %329) #24
  store ptr %330, ptr %328, align 8, !tbaa !82
  %331 = getelementptr inbounds %struct.deps_reg, ptr %315, i64 %317, i32 4
  %332 = load i32, ptr %331, align 8, !tbaa !81
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %331, align 8, !tbaa !81
  br label %334

334:                                              ; preds = %327, %314
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %335 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %311, label %314, !llvm.loop !89

337:                                              ; preds = %311, %361
  %338 = phi i64 [ 0, %311 ], [ %362, %361 ]
  %339 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  %340 = shl nuw nsw i64 1, %338
  %341 = and i64 %339, %340
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %361, label %343

343:                                              ; preds = %337
  %344 = load ptr, ptr %312, align 8, !tbaa !76
  %345 = getelementptr inbounds %struct.deps_reg, ptr %344, i64 %338, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %346, i32 noundef 0, i32 noundef 0) #25
  %347 = getelementptr inbounds %struct.deps_reg, ptr %344, i64 %338, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !79
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %348, i32 noundef 0, i32 noundef 12) #25
  %349 = getelementptr inbounds %struct.deps_reg, ptr %344, i64 %338, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !80
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %350, i32 noundef 0, i32 noundef 0) #25
  %351 = load i8, ptr %313, align 4
  %352 = and i8 %351, 1
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %343
  %355 = getelementptr inbounds %struct.deps_reg, ptr %344, i64 %338
  %356 = load ptr, ptr %355, align 8, !tbaa !82
  %357 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %356) #24
  store ptr %357, ptr %355, align 8, !tbaa !82
  %358 = getelementptr inbounds %struct.deps_reg, ptr %344, i64 %338, i32 4
  %359 = load i32, ptr %358, align 8, !tbaa !81
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %358, align 8, !tbaa !81
  br label %361

361:                                              ; preds = %343, %354, %337
  %362 = add nuw nsw i64 %338, 1
  %363 = icmp eq i64 %362, 53
  br i1 %363, label %364, label %337, !llvm.loop !90

364:                                              ; preds = %361
  store i32 53, ptr %4, align 4, !tbaa !19
  %365 = call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %2) #25, !range !23
  %366 = icmp eq i8 %365, 0
  %367 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %367, ptr noundef nonnull %4) #25
  %368 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %369 = icmp eq i8 %368, 0
  br i1 %366, label %422, label %370

370:                                              ; preds = %364
  br i1 %369, label %394, label %371

371:                                              ; preds = %370, %391
  %372 = load ptr, ptr %312, align 8, !tbaa !76
  %373 = load i32, ptr %4, align 4, !tbaa !19
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds %struct.deps_reg, ptr %372, i64 %374
  %376 = getelementptr inbounds %struct.deps_reg, ptr %372, i64 %374, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %377, i32 noundef 0, i32 noundef 11) #25
  %378 = getelementptr inbounds %struct.deps_reg, ptr %372, i64 %374, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !79
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %379, i32 noundef 0, i32 noundef 12) #25
  %380 = load ptr, ptr %375, align 8, !tbaa !82
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %380, i32 noundef 0, i32 noundef 12) #25
  %381 = load i8, ptr %313, align 4
  %382 = and i8 %381, 1
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %371
  %385 = getelementptr inbounds %struct.deps_reg, ptr %372, i64 %374, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !80
  %387 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %386) #24
  store ptr %387, ptr %385, align 8, !tbaa !80
  %388 = getelementptr inbounds %struct.deps_reg, ptr %372, i64 %374, i32 5
  %389 = load i32, ptr %388, align 4, !tbaa !91
  %390 = add nsw i32 %389, 1
  store i32 %390, ptr %388, align 4, !tbaa !91
  br label %391

391:                                              ; preds = %384, %371
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %392 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %371, !llvm.loop !92

394:                                              ; preds = %391, %370
  %395 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %395, ptr noundef nonnull %4) #25
  %396 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %495, label %398

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  br label %400

400:                                              ; preds = %398, %419
  %401 = load ptr, ptr %312, align 8, !tbaa !76
  %402 = load i32, ptr %4, align 4, !tbaa !19
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds %struct.deps_reg, ptr %401, i64 %403
  %405 = getelementptr inbounds %struct.deps_reg, ptr %401, i64 %403, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %406, i32 noundef 0, i32 noundef 11) #25
  %407 = getelementptr inbounds %struct.deps_reg, ptr %401, i64 %403, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !79
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %408, i32 noundef 0, i32 noundef 12) #25
  %409 = getelementptr inbounds %struct.deps_reg, ptr %401, i64 %403, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !80
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %410, i32 noundef 0, i32 noundef 11) #25
  %411 = load ptr, ptr %404, align 8, !tbaa !82
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %411, i32 noundef 0, i32 noundef 12) #25
  %412 = load i8, ptr %313, align 4
  %413 = and i8 %412, 1
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %400
  %416 = load ptr, ptr %405, align 8, !tbaa !77
  %417 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %416) #24
  store ptr %417, ptr %405, align 8, !tbaa !77
  %418 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %399, i32 noundef %402) #24
  br label %419

419:                                              ; preds = %415, %400
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %420 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %495, label %400, !llvm.loop !93

422:                                              ; preds = %364
  br i1 %369, label %469, label %423

423:                                              ; preds = %422, %466
  %424 = load ptr, ptr %312, align 8, !tbaa !76
  %425 = load i32, ptr %4, align 4, !tbaa !19
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426
  %428 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 4
  %429 = load i32, ptr %428, align 8, !tbaa !81
  %430 = load ptr, ptr @compiler_params, align 8, !tbaa !14
  %431 = getelementptr inbounds %struct.param_info, ptr %430, i64 14, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !60
  %433 = icmp sgt i32 %429, %432
  br i1 %433, label %438, label %434

434:                                              ; preds = %423
  %435 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 5
  %436 = load i32, ptr %435, align 4, !tbaa !91
  %437 = icmp sgt i32 %436, %432
  br i1 %437, label %438, label %449

438:                                              ; preds = %434, %423
  %439 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 1
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %439, i32 noundef 0, i32 noundef 11) #25
  %440 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 2
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %440, i32 noundef 0, i32 noundef 12) #25
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %427, i32 noundef 0, i32 noundef 12) #25
  %441 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 3
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %441, i32 noundef 0, i32 noundef 11) #25
  %442 = load i8, ptr %313, align 4
  %443 = and i8 %442, 1
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %445, label %455

445:                                              ; preds = %438
  %446 = load ptr, ptr %439, align 8, !tbaa !77
  %447 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %446) #24
  store ptr %447, ptr %439, align 8, !tbaa !77
  %448 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 5
  store i32 0, ptr %448, align 4, !tbaa !91
  store i32 0, ptr %428, align 8, !tbaa !81
  br label %455

449:                                              ; preds = %434
  %450 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 1
  %451 = load ptr, ptr %450, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %451, i32 noundef 0, i32 noundef 11) #25
  %452 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 2
  %453 = load ptr, ptr %452, align 8, !tbaa !79
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %453, i32 noundef 0, i32 noundef 12) #25
  %454 = load ptr, ptr %427, align 8, !tbaa !82
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %454, i32 noundef 0, i32 noundef 12) #25
  br label %455

455:                                              ; preds = %438, %445, %449
  %456 = load i8, ptr %313, align 4
  %457 = and i8 %456, 1
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 5
  %461 = load i32, ptr %460, align 4, !tbaa !91
  %462 = add nsw i32 %461, 1
  store i32 %462, ptr %460, align 4, !tbaa !91
  %463 = getelementptr inbounds %struct.deps_reg, ptr %424, i64 %426, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !80
  %465 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %464) #24
  store ptr %465, ptr %463, align 8, !tbaa !80
  br label %466

466:                                              ; preds = %459, %455
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %467 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %423, !llvm.loop !94

469:                                              ; preds = %466, %422
  %470 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %470, ptr noundef nonnull %4) #25
  %471 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %495, label %473

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  br label %475

475:                                              ; preds = %473, %492
  %476 = load ptr, ptr %312, align 8, !tbaa !76
  %477 = load i32, ptr %4, align 4, !tbaa !19
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds %struct.deps_reg, ptr %476, i64 %478
  %480 = getelementptr inbounds %struct.deps_reg, ptr %476, i64 %478, i32 1
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %480, i32 noundef 0, i32 noundef 11) #25
  %481 = getelementptr inbounds %struct.deps_reg, ptr %476, i64 %478, i32 2
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %481, i32 noundef 0, i32 noundef 12) #25
  %482 = getelementptr inbounds %struct.deps_reg, ptr %476, i64 %478, i32 3
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %482, i32 noundef 0, i32 noundef 11) #25
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %479, i32 noundef 0, i32 noundef 12) #25
  %483 = load i8, ptr %313, align 4
  %484 = and i8 %483, 1
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %486, label %492

486:                                              ; preds = %475
  %487 = load ptr, ptr %480, align 8, !tbaa !77
  %488 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %487) #24
  store ptr %488, ptr %480, align 8, !tbaa !77
  %489 = getelementptr inbounds %struct.deps_reg, ptr %476, i64 %478, i32 4
  store i32 0, ptr %489, align 8, !tbaa !81
  %490 = getelementptr inbounds %struct.deps_reg, ptr %476, i64 %478, i32 5
  store i32 0, ptr %490, align 4, !tbaa !91
  %491 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %474, i32 noundef %477) #24
  br label %492

492:                                              ; preds = %486, %475
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %493 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %495, label %475, !llvm.loop !95

495:                                              ; preds = %419, %492, %394, %469, %298, %293, %303
  %496 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %497 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %498

498:                                              ; preds = %495, %519
  %499 = phi i64 [ 0, %495 ], [ %520, %519 ]
  %500 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !53
  %501 = shl nuw nsw i64 1, %499
  %502 = and i64 %500, %501
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %519, label %504

504:                                              ; preds = %498
  %505 = load ptr, ptr %496, align 8, !tbaa !76
  %506 = getelementptr inbounds %struct.deps_reg, ptr %505, i64 %499
  %507 = getelementptr inbounds %struct.deps_reg, ptr %505, i64 %499, i32 1
  %508 = load ptr, ptr %507, align 8, !tbaa !77
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %508, i32 noundef 0, i32 noundef 12) #25
  %509 = getelementptr inbounds %struct.deps_reg, ptr %505, i64 %499, i32 3
  %510 = load ptr, ptr %509, align 8, !tbaa !80
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %510, i32 noundef 0, i32 noundef 12) #25
  %511 = load ptr, ptr %506, align 8, !tbaa !82
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %511, i32 noundef 0, i32 noundef 12) #25
  %512 = load i8, ptr %497, align 4
  %513 = and i8 %512, 1
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %504
  %516 = getelementptr inbounds %struct.deps_reg, ptr %505, i64 %499, i32 2
  %517 = load ptr, ptr %516, align 8, !tbaa !79
  %518 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %517) #24
  store ptr %518, ptr %516, align 8, !tbaa !79
  br label %519

519:                                              ; preds = %504, %515, %498
  %520 = add nuw nsw i64 %499, 1
  %521 = icmp eq i64 %520, 53
  br i1 %521, label %522, label %498, !llvm.loop !96

522:                                              ; preds = %519
  store i32 53, ptr %4, align 4, !tbaa !19
  %523 = load i8, ptr %497, align 4
  %524 = and i8 %523, 1
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %526, label %556

526:                                              ; preds = %522
  %527 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %528 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  %529 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %527, ptr noundef %528) #24
  %530 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !14
  %531 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %527, ptr noundef %530) #24
  %532 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  %533 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %527, ptr noundef %532) #24
  %534 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  br label %535

535:                                              ; preds = %526, %549
  %536 = phi i64 [ %534, %526 ], [ %550, %549 ]
  %537 = phi i64 [ 0, %526 ], [ %551, %549 ]
  %538 = shl nuw nsw i64 1, %537
  %539 = and i64 %536, %538
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %545

541:                                              ; preds = %535
  %542 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !53
  %543 = and i64 %542, %538
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %549, label %545

545:                                              ; preds = %541, %535
  %546 = trunc i64 %537 to i32
  %547 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %527, i32 noundef %546) #24
  %548 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  br label %549

549:                                              ; preds = %541, %545
  %550 = phi i64 [ %536, %541 ], [ %548, %545 ]
  %551 = add nuw nsw i64 %537, 1
  %552 = icmp eq i64 %551, 53
  br i1 %552, label %553, label %535, !llvm.loop !97

553:                                              ; preds = %549
  store i32 53, ptr %4, align 4, !tbaa !19
  %554 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !19
  %555 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 %554, ptr %555, align 8, !tbaa !98
  br label %556

556:                                              ; preds = %553, %522
  %557 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  call void @bitmap_clear(ptr noundef %557) #24
  %558 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !14
  call void @bitmap_clear(ptr noundef %558) #24
  %559 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  call void @bitmap_clear(ptr noundef %559) #24
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !53
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  %560 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !19
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %653, label %562

562:                                              ; preds = %556
  %563 = call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %2) #25, !range !23
  %564 = icmp eq i8 %563, 0
  %565 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %565, ptr noundef nonnull %4) #25
  %566 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %567 = icmp eq i8 %566, 0
  br i1 %564, label %589, label %568

568:                                              ; preds = %562
  br i1 %567, label %613, label %569

569:                                              ; preds = %568, %569
  %570 = load ptr, ptr %496, align 8, !tbaa !76
  %571 = load i32, ptr %4, align 4, !tbaa !19
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds %struct.deps_reg, ptr %570, i64 %572
  %574 = load ptr, ptr %573, align 8, !tbaa !82
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %574, i32 noundef 0, i32 noundef 12) #25
  %575 = getelementptr inbounds %struct.deps_reg, ptr %570, i64 %572, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !77
  %577 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !19
  %578 = icmp eq i32 %577, 2
  %579 = select i1 %578, i32 0, i32 12
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %576, i32 noundef 0, i32 noundef %579) #25
  %580 = getelementptr inbounds %struct.deps_reg, ptr %570, i64 %572, i32 2
  %581 = load ptr, ptr %580, align 8, !tbaa !79
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %581, i32 noundef 0, i32 noundef 12) #25
  %582 = getelementptr inbounds %struct.deps_reg, ptr %570, i64 %572, i32 3
  %583 = load ptr, ptr %582, align 8, !tbaa !80
  %584 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !19
  %585 = icmp eq i32 %584, 2
  %586 = select i1 %585, i32 0, i32 12
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %583, i32 noundef 0, i32 noundef %586) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %587 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %613, label %569, !llvm.loop !99

589:                                              ; preds = %562
  br i1 %567, label %613, label %590

590:                                              ; preds = %589, %610
  %591 = load ptr, ptr %496, align 8, !tbaa !76
  %592 = load i32, ptr %4, align 4, !tbaa !19
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds %struct.deps_reg, ptr %591, i64 %593
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %594, i32 noundef 0, i32 noundef 12) #25
  %595 = getelementptr inbounds %struct.deps_reg, ptr %591, i64 %593, i32 1
  %596 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !19
  %597 = icmp eq i32 %596, 2
  %598 = select i1 %597, i32 0, i32 12
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %595, i32 noundef 0, i32 noundef %598) #25
  %599 = getelementptr inbounds %struct.deps_reg, ptr %591, i64 %593, i32 2
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %599, i32 noundef 0, i32 noundef 12) #25
  %600 = getelementptr inbounds %struct.deps_reg, ptr %591, i64 %593, i32 3
  %601 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !19
  %602 = icmp eq i32 %601, 2
  %603 = select i1 %602, i32 0, i32 12
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %600, i32 noundef 0, i32 noundef %603) #25
  %604 = load i8, ptr %497, align 4
  %605 = and i8 %604, 1
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %607, label %610

607:                                              ; preds = %590
  %608 = getelementptr inbounds %struct.deps_reg, ptr %591, i64 %593, i32 4
  store i32 0, ptr %608, align 8, !tbaa !81
  %609 = getelementptr inbounds %struct.deps_reg, ptr %591, i64 %593, i32 5
  store i32 0, ptr %609, align 4, !tbaa !91
  br label %610

610:                                              ; preds = %607, %590
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %611 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !23
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %613, label %590, !llvm.loop !100

613:                                              ; preds = %569, %610, %568, %589
  %614 = load i8, ptr %497, align 4
  %615 = and i8 %614, 1
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %617, label %635

617:                                              ; preds = %613
  %618 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %619 = load i32, ptr %618, align 8, !tbaa !101
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %635, label %621

621:                                              ; preds = %617
  %622 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  br label %623

623:                                              ; preds = %621, %623
  %624 = phi i64 [ 0, %621 ], [ %631, %623 ]
  %625 = load ptr, ptr %496, align 8, !tbaa !76
  %626 = getelementptr inbounds %struct.deps_reg, ptr %625, i64 %624, i32 1
  %627 = load ptr, ptr %626, align 8, !tbaa !77
  %628 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %627) #24
  store ptr %628, ptr %626, align 8, !tbaa !77
  %629 = trunc i64 %624 to i32
  %630 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %622, i32 noundef %629) #24
  %631 = add nuw nsw i64 %624, 1
  %632 = load i32, ptr %618, align 8, !tbaa !101
  %633 = zext i32 %632 to i64
  %634 = icmp ult i64 %631, %633
  br i1 %634, label %623, label %635, !llvm.loop !102

635:                                              ; preds = %623, %617, %613
  %636 = load i32, ptr %2, align 8
  %637 = and i32 %636, 65535
  %638 = icmp eq i32 %637, 9
  br i1 %638, label %639, label %646

639:                                              ; preds = %635
  %640 = call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %645, label %642

642:                                              ; preds = %639
  %643 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %2) #24
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %645, label %646

645:                                              ; preds = %642, %639
  call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1) #25
  br label %646

646:                                              ; preds = %645, %642, %635
  %647 = load i8, ptr %497, align 4
  %648 = and i8 %647, 1
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %650, label %652

650:                                              ; preds = %646
  %651 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void @bitmap_clear(ptr noundef nonnull %651) #24
  br label %652

652:                                              ; preds = %650, %646
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %653

653:                                              ; preds = %652, %556
  %654 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  %655 = load i32, ptr %654, align 8, !tbaa !66
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %759, label %657

657:                                              ; preds = %653
  %658 = load i32, ptr %2, align 8
  %659 = and i32 %658, 65535
  %660 = add nsw i32 %659, -7
  %661 = icmp ult i32 %660, 4
  br i1 %661, label %662, label %674

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %664 = load ptr, ptr %663, align 8, !tbaa !18
  %665 = load i32, ptr %664, align 8
  %666 = and i32 %665, 65535
  %667 = icmp eq i32 %666, 23
  br i1 %667, label %677, label %668

668:                                              ; preds = %662
  %669 = call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %664) #24
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %677

671:                                              ; preds = %668
  %672 = load i32, ptr %2, align 8
  %673 = and i32 %672, 65535
  br label %674

674:                                              ; preds = %671, %657
  %675 = phi i32 [ %673, %671 ], [ %659, %657 ]
  %676 = icmp eq i32 %675, 7
  br i1 %676, label %759, label %754

677:                                              ; preds = %662, %668
  %678 = phi ptr [ %669, %668 ], [ %664, %662 ]
  %679 = getelementptr inbounds %struct.rtx_def, ptr %678, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !18
  %681 = load i32, ptr %680, align 8
  %682 = and i32 %681, 65535
  %683 = icmp eq i32 %682, 39
  br i1 %683, label %684, label %688

684:                                              ; preds = %677
  %685 = getelementptr inbounds %struct.rtx_def, ptr %680, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !18
  %687 = load i32, ptr %686, align 8
  br label %688

688:                                              ; preds = %684, %677
  %689 = phi i32 [ %687, %684 ], [ %681, %677 ]
  %690 = phi ptr [ %686, %684 ], [ %680, %677 ]
  %691 = and i32 %689, 65535
  %692 = icmp eq i32 %691, 37
  br i1 %692, label %693, label %754

693:                                              ; preds = %688
  %694 = call fastcc i32 @rhs_regno(ptr noundef nonnull %690) #25
  %695 = getelementptr inbounds %struct.rtx_def, ptr %678, i64 0, i32 1, i32 0, i32 0, i64 1
  %696 = load ptr, ptr %695, align 8, !tbaa !18
  %697 = load i32, ptr %696, align 8
  %698 = and i32 %697, 65535
  %699 = icmp eq i32 %698, 39
  br i1 %699, label %700, label %704

700:                                              ; preds = %693
  %701 = getelementptr inbounds %struct.rtx_def, ptr %696, i64 0, i32 1
  %702 = load ptr, ptr %701, align 8, !tbaa !18
  %703 = load i32, ptr %702, align 8
  br label %704

704:                                              ; preds = %700, %693
  %705 = phi i32 [ %703, %700 ], [ %697, %693 ]
  %706 = phi ptr [ %702, %700 ], [ %696, %693 ]
  %707 = and i32 %705, 65535
  %708 = add nsw i32 %707, -49
  %709 = icmp ult i32 %708, 2
  br i1 %709, label %710, label %721

710:                                              ; preds = %704
  %711 = getelementptr inbounds %struct.rtx_def, ptr %706, i64 0, i32 1
  %712 = load ptr, ptr %711, align 8, !tbaa !18
  %713 = load i32, ptr %712, align 8
  %714 = and i32 %713, 65535
  %715 = icmp eq i32 %714, 37
  br i1 %715, label %716, label %754

716:                                              ; preds = %710
  %717 = call fastcc i32 @rhs_regno(ptr noundef nonnull %712) #25
  %718 = icmp eq i32 %717, 7
  %719 = icmp eq i32 %694, 7
  %720 = select i1 %718, i1 %719, i1 false
  br i1 %720, label %728, label %754

721:                                              ; preds = %704
  %722 = icmp eq i32 %707, 37
  br i1 %722, label %723, label %754

723:                                              ; preds = %721
  %724 = call fastcc i32 @rhs_regno(ptr noundef nonnull %706) #25
  %725 = icmp slt i32 %724, 53
  %726 = icmp slt i32 %694, 53
  %727 = select i1 %725, i1 true, i1 %726
  br i1 %727, label %728, label %754

728:                                              ; preds = %716, %723
  %729 = load i8, ptr %497, align 4
  %730 = and i8 %729, 1
  %731 = icmp eq i8 %730, 0
  br i1 %731, label %732, label %736

732:                                              ; preds = %728
  %733 = load i32, ptr %654, align 8, !tbaa !66
  %734 = icmp eq i32 %733, 2
  br i1 %734, label %735, label %736

735:                                              ; preds = %732
  store i32 1, ptr %654, align 8, !tbaa !66
  br label %736

736:                                              ; preds = %735, %732, %728
  %737 = call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %738 = icmp eq i8 %737, 0
  %739 = load i32, ptr @sched_emulate_haifa_p, align 4
  %740 = icmp ne i32 %739, 0
  %741 = select i1 %738, i1 true, i1 %740
  br i1 %741, label %742, label %759

742:                                              ; preds = %736
  %743 = load i32, ptr %2, align 8
  %744 = or i32 %743, 268435456
  store i32 %744, ptr %2, align 8
  %745 = load ptr, ptr @h_d_i_d, align 8
  %746 = load ptr, ptr @sched_luids, align 8
  %747 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %748 = load i32, ptr %747, align 8, !tbaa !18
  %749 = call fastcc i32 @VEC_int_base_index(ptr noundef %746, i32 noundef %748) #25
  %750 = call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %745, i32 noundef %749) #25
  %751 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %750, i64 0, i32 7
  %752 = load i8, ptr %751, align 8
  %753 = or i8 %752, 1
  store i8 %753, ptr %751, align 8
  br label %759

754:                                              ; preds = %710, %716, %723, %721, %688, %674
  %755 = load i8, ptr %497, align 4
  %756 = and i8 %755, 1
  %757 = icmp eq i8 %756, 0
  br i1 %757, label %758, label %759

758:                                              ; preds = %754
  store i32 0, ptr %654, align 8, !tbaa !66
  br label %759

759:                                              ; preds = %674, %754, %758, %742, %736, %653
  %760 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %761 = getelementptr inbounds %struct.haifa_sched_info, ptr %760, i64 0, i32 17
  %762 = load i32, ptr %761, align 8, !tbaa !15
  %763 = and i32 %762, 2
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %779, label %765

765:                                              ; preds = %759
  %766 = call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %2, i32 noundef 0) #25, !range !23
  %767 = icmp eq i8 %766, 0
  br i1 %767, label %768, label %779

768:                                              ; preds = %765
  %769 = call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %772, label %771

771:                                              ; preds = %768
  call void @sel_mark_hard_insn(ptr noundef nonnull %2) #24
  br label %779

772:                                              ; preds = %768
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %9, ptr noundef nonnull %2, i32 noundef 2) #25
  %773 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  %774 = icmp eq i8 %773, 0
  br i1 %774, label %778, label %775

775:                                              ; preds = %772, %775
  call fastcc void @change_spec_dep_to_hard(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %9) #25
  %776 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  %777 = icmp eq i8 %776, 0
  br i1 %777, label %778, label %775, !llvm.loop !103

778:                                              ; preds = %775, %772
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #26
  br label %779

779:                                              ; preds = %771, %778, %765, %759
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_dependence_list_and_free(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %2, align 8, !tbaa !14
  br i1 %9, label %12, label %11

11:                                               ; preds = %5
  tail call fastcc void @add_dependence_list(ptr noundef %1, ptr noundef %10, i32 noundef %3, i32 noundef %4) #25
  br label %29

12:                                               ; preds = %5
  store ptr null, ptr %2, align 8, !tbaa !14
  %13 = icmp eq ptr %10, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 0
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi ptr [ %10, %14 ], [ %20, %27 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  br i1 %15, label %21, label %25

21:                                               ; preds = %16
  %22 = load ptr, ptr %18, align 8, !tbaa !18
  %23 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %1, ptr noundef %22) #25, !range !23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr %18, align 8, !tbaa !18
  tail call void @add_dependence(ptr noundef %1, ptr noundef %26, i32 noundef %4) #25
  br label %27

27:                                               ; preds = %25, %21
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %17) #24
  %28 = icmp eq ptr %20, null
  br i1 %28, label %29, label %16, !llvm.loop !104

29:                                               ; preds = %27, %12, %11
  ret void
}

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @call_may_noreturn_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -2080374784
  %4 = icmp ne i32 %3, 0
  %5 = and i32 %2, 33554432
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %4, %6
  br i1 %7, label %67, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i32 [ %19, %14 ], [ %11, %8 ]
  %22 = phi ptr [ %18, %14 ], [ %10, %8 ]
  %23 = and i32 %21, 65535
  %24 = icmp eq i32 %23, 23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %28, %25 ], [ %21, %20 ]
  %31 = phi ptr [ %27, %25 ], [ %22, %20 ]
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, 26
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !18
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !18
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 67174399
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = load i64, ptr %48, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 29
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_function_decl, ptr %48, i64 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 6144
  %58 = icmp eq i32 %57, 6144
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = and i32 %56, 2047
  %61 = add nsw i32 %60, -324
  %62 = icmp ult i32 %61, 30
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = zext nneg i32 %61 to i64
  %65 = getelementptr inbounds [30 x i8], ptr @switch.table.call_may_noreturn_p, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1
  br label %67

67:                                               ; preds = %46, %50, %54, %59, %63, %1, %29, %34, %40
  %68 = phi i8 [ 1, %40 ], [ 1, %34 ], [ 1, %29 ], [ 0, %1 ], [ %66, %63 ], [ 1, %59 ], [ 1, %54 ], [ 1, %50 ], [ 1, %46 ]
  ret i8 %68
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_sched_groups(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 3) #25
  %4 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1, %26
  %7 = load ptr, ptr %3, align 8, !tbaa !14
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %0, %6 ], [ %11, %13 ]
  %11 = tail call ptr @prev_nonnote_insn(ptr noundef %10) #24
  %12 = icmp eq ptr %8, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 268435456
  %16 = icmp ne i32 %15, 0
  %17 = and i32 %14, 65535
  %18 = icmp eq i32 %17, 7
  %19 = or i1 %16, %18
  br i1 %19, label %9, label %20, !llvm.loop !105

20:                                               ; preds = %13
  %21 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %11, ptr noundef %8) #25, !range !23
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._dep, ptr %7, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !12
  tail call void @add_dependence(ptr noundef nonnull %11, ptr noundef %8, i32 noundef %25) #25
  br label %26

26:                                               ; preds = %9, %20, %23
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %27 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %6, !llvm.loop !106

29:                                               ; preds = %26, %1
  tail call fastcc void @delete_all_dependences(ptr noundef %0) #25
  %30 = tail call ptr @prev_nonnote_insn(ptr noundef %0) #24
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %34
  %35 = phi ptr [ %36, %34 ], [ %30, %29 ]
  %36 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %35) #24
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %34, label %40, !llvm.loop !107

40:                                               ; preds = %34, %29
  %41 = phi ptr [ %30, %29 ], [ %36, %34 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !18
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %0, ptr noundef nonnull %41) #25, !range !23
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  tail call void @add_dependence(ptr noundef nonnull %0, ptr noundef nonnull %41, i32 noundef 12) #25
  br label %51

51:                                               ; preds = %50, %47, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_start_bb(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3362, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %1) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15, %22
  %19 = phi ptr [ %23, %22 ], [ %16, %15 ]
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %27 [
    i16 7, label %22
    i16 10, label %25
  ]

22:                                               ; preds = %18
  %23 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %19) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %18, !llvm.loop !108

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 2, ptr %26, align 8, !tbaa !66
  br label %27

27:                                               ; preds = %22, %18, %15, %25, %11, %8
  ret void
}

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_analyze(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4, i64 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @cselib_init(i32 noundef 1) #24
  br label %10

10:                                               ; preds = %9, %3
  tail call void @deps_start_bb(ptr noundef %0, ptr noundef %1) #25
  br label %11

11:                                               ; preds = %28, %10
  %12 = phi ptr [ %1, %10 ], [ %30, %28 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @sd_init_insn(ptr noundef nonnull %12) #25
  br label %18

18:                                               ; preds = %11, %17
  tail call void @deps_analyze_insn(ptr noundef %0, ptr noundef nonnull %12) #25
  %19 = icmp eq ptr %12, %2
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.sched_deps_info_def, ptr %21, i64 0, i32 12
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @cselib_finish() #24
  br label %27

27:                                               ; preds = %26, %20
  ret void

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !18
  br label %11
}

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_free_deps(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %31
  %10 = phi ptr [ %0, %7 ], [ %33, %31 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !18
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #25
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  tail call fastcc void @delete_dep_nodes_in_back_deps(ptr noundef nonnull %10, i8 noundef zeroext %2) #25
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %17, align 8, !tbaa !18
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #25
  %27 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 4
  %28 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 6
  %29 = select i1 %8, ptr %27, ptr %28
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  tail call fastcc void @clear_deps_list(ptr noundef %30) #25
  tail call void @sd_finish_insn(ptr noundef nonnull %10) #25
  br label %31

31:                                               ; preds = %9, %15, %21
  %32 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = icmp eq ptr %33, %5
  br i1 %34, label %35, label %9, !llvm.loop !109

35:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dep_nodes_in_back_deps(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %7 = icmp eq i8 %1, 0
  %8 = select i1 %7, i32 3, i32 8
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef %0, i32 noundef %8) #25
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._sd_iterator, ptr %3, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %13
  %14 = load ptr, ptr %12, align 8, !tbaa !46
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %17 = load ptr, ptr %4, align 8, !tbaa !14
  call fastcc void @get_back_and_forw_lists(ptr noundef %17, i8 noundef zeroext %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %18 = load ptr, ptr %5, align 8, !tbaa !14
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %15, ptr noundef %18) #25
  tail call fastcc void @delete_dep_node(ptr noundef %16) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  %19 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %13, !llvm.loop !110

21:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_deps_list(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %5, ptr noundef nonnull %0) #25
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @max_reg_num() #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 53, %2 ]
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  store i32 %8, ptr %9, align 8, !tbaa !101
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = sext i32 %8 to i64
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 40) #24
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %17, ptr noundef nonnull @reg_obstack) #25
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %18, ptr noundef nonnull @reg_obstack) #25
  %19 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 12
  store ptr null, ptr %20, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 0, ptr %21, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %19, i8 0, i64 36, i1 false)
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 4
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps_reg_last(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3503, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3504, ptr noundef nonnull @.str.1) #24
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !101
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 40) #24
  store ptr %17, ptr %9, align 8, !tbaa !76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_deps(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3521, ptr noundef nonnull @.str.1) #24
  br label %55

12:                                               ; preds = %1
  store i32 0, ptr %4, align 8, !tbaa !101
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %0) #24
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %13) #24
  %14 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %14) #24
  %15 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %15) #24
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %16) #24
  %17 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %17, ptr noundef nonnull %2) #25
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #25, !range !23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %22

22:                                               ; preds = %20, %45
  %23 = load ptr, ptr %21, align 8, !tbaa !76
  %24 = load i32, ptr %2, align 4, !tbaa !19
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %26) #24
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %31) #24
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %36) #24
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !80
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %41) #24
  br label %45

45:                                               ; preds = %44, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #25, !range !23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %22, !llvm.loop !112

48:                                               ; preds = %45, %12
  tail call void @bitmap_clear(ptr noundef nonnull %17) #24
  %49 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  tail call void @bitmap_clear(ptr noundef nonnull %49) #24
  %50 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %51) #25
  br label %54

54:                                               ; preds = %53, %48
  store ptr null, ptr %50, align 8, !tbaa !76
  br label %55

55:                                               ; preds = %11, %7, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = load ptr, ptr %1, align 8, !tbaa !113
  store ptr %4, ptr %0, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !116
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !114
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !117
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !119
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !120
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !120
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !19
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !121

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !19
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !19
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !119
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !114
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !119
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !53
  store i64 %35, ptr %3, align 8, !tbaa !120
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !19
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !19
  %40 = load i32, ptr %23, align 8, !tbaa !119
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !119
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !122

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !123
  store ptr %44, ptr %0, align 8, !tbaa !114
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !117
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !19
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !120
  store i32 %16, ptr %1, align 4, !tbaa !19
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !120
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !120
  %6 = load i32, ptr %1, align 4, !tbaa !19
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_from_deps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %6 = tail call fastcc i32 @remove_from_both_dependence_lists(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %5) #25
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = sub nsw i32 %12, %6
  store i32 %13, ptr %11, align 8, !tbaa !68
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %17 = tail call fastcc i32 @remove_from_both_dependence_lists(ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull %16) #25
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !69
  %20 = sub nsw i32 %19, %17
  store i32 %20, ptr %18, align 4, !tbaa !69
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %22 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %21) #25
  %23 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = sub nsw i32 %24, %22
  store i32 %25, ptr %23, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %26, ptr noundef nonnull %3) #25
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %31

31:                                               ; preds = %29, %72
  %32 = load ptr, ptr %30, align 8, !tbaa !76
  %33 = load i32, ptr %3, align 4, !tbaa !19
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %35) #25
  br label %40

40:                                               ; preds = %38, %31
  %41 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !77
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %41) #25
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %47) #25
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !80
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %53) #25
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %35, align 8, !tbaa !82
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load ptr, ptr %41, align 8, !tbaa !77
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load ptr, ptr %47, align 8, !tbaa !79
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load ptr, ptr %53, align 8, !tbaa !80
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %26, i32 noundef %33) #24
  br label %72

72:                                               ; preds = %70, %67, %64, %61, %58
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !23
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %31, !llvm.loop !124

75:                                               ; preds = %72, %14
  %76 = load i32, ptr %1, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %81 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %80) #25
  %82 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %83 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %82) #25
  br label %84

84:                                               ; preds = %79, %75
  %85 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %86 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %85) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @remove_from_both_dependence_lists(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %3, %23
  %7 = phi ptr [ %27, %23 ], [ %4, %3 ]
  %8 = phi i32 [ %13, %23 ], [ 0, %3 ]
  %9 = phi ptr [ %26, %23 ], [ %2, %3 ]
  %10 = phi ptr [ %24, %23 ], [ %1, %3 ]
  br label %11

11:                                               ; preds = %6, %17
  %12 = phi ptr [ %7, %6 ], [ %21, %17 ]
  %13 = phi i32 [ %8, %6 ], [ %20, %17 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %10) #24
  %19 = tail call ptr @remove_free_EXPR_LIST_node(ptr noundef %9) #24
  %20 = add nsw i32 %13, 1
  %21 = load ptr, ptr %10, align 8, !tbaa !14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %11, !llvm.loop !125

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %9, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %24, align 8, !tbaa !14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !llvm.loop !125

29:                                               ; preds = %23, %17, %3
  %30 = phi i32 [ 0, %3 ], [ %20, %17 ], [ %13, %23 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @remove_from_dependence_list(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %22, %20 ], [ %3, %2 ]
  %7 = phi i32 [ %11, %20 ], [ 0, %2 ]
  %8 = phi ptr [ %21, %20 ], [ %1, %2 ]
  br label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %6, %5 ], [ %18, %15 ]
  %11 = phi i32 [ %7, %5 ], [ %17, %15 ]
  %12 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %8) #24
  %17 = add nsw i32 %11, 1
  %18 = load ptr, ptr %8, align 8, !tbaa !14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %9, !llvm.loop !126

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !126

24:                                               ; preds = %20, %15, %2
  %25 = phi i32 [ 0, %2 ], [ %17, %15 ], [ %11, %20 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_deps_init(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sched_max_luid, align 4, !tbaa !19
  %3 = load ptr, ptr @cfun, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !129
  %8 = sdiv i32 %2, %7
  %9 = add nsw i32 %8, 1
  tail call fastcc void @init_deps_data_vector() #25
  %10 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %11 = icmp eq i8 %10, 0
  %12 = icmp ne i8 %0, 0
  %13 = and i1 %12, %11
  %14 = icmp sgt i32 %8, 499
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  store i32 0, ptr @cache_size, align 4, !tbaa !19
  %17 = load i32, ptr @sched_max_luid, align 4, !tbaa !19
  tail call void @extend_dependency_caches(i32 noundef %17, i8 noundef zeroext 1) #25
  br label %20

18:                                               ; preds = %1
  %19 = icmp eq i8 %0, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %18
  %21 = sext i32 %9 to i64
  %22 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 16, i64 noundef %21) #24
  store ptr %22, ptr @dl_pool, align 8, !tbaa !14
  %23 = mul nsw i32 %9, 5
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 72, i64 noundef %24) #24
  store ptr %25, ptr @dn_pool, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_deps_data_vector() unnamed_addr #0 {
  %1 = load i32, ptr @sched_max_luid, align 4, !tbaa !19
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef %3) #25
  %5 = sub i32 %2, %4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef %3, i32 noundef %5) #25, !range !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = mul nsw i32 %1, 3
  %12 = sdiv i32 %11, 2
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared(i32 noundef %12) #25
  br label %13

13:                                               ; preds = %10, %7, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extend_dependency_caches(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ne i8 %1, 0
  %4 = load ptr, ptr @true_dependency_cache, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  %8 = load i32, ptr @cache_size, align 4, !tbaa !19
  %9 = add nsw i32 %8, %0
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 5
  %12 = tail call ptr @xrealloc(ptr noundef %4, i64 noundef %11) #24
  store ptr %12, ptr @true_dependency_cache, align 8, !tbaa !14
  %13 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %14 = tail call ptr @xrealloc(ptr noundef %13, i64 noundef %11) #24
  store ptr %14, ptr @output_dependency_cache, align 8, !tbaa !14
  %15 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %16 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %11) #24
  store ptr %16, ptr @anti_dependency_cache, align 8, !tbaa !14
  %17 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.haifa_sched_info, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !14
  %24 = tail call ptr @xrealloc(ptr noundef %23, i64 noundef %11) #24
  store ptr %24, ptr @spec_dependency_cache, align 8, !tbaa !14
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32, ptr @cache_size, align 4, !tbaa !19
  %27 = icmp slt i32 %26, %9
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %30 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %31 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %32 = load ptr, ptr @spec_dependency_cache, align 8
  %33 = sext i32 %26 to i64
  br label %34

34:                                               ; preds = %28, %46
  %35 = phi i64 [ %33, %28 ], [ %47, %46 ]
  %36 = getelementptr inbounds %struct.bitmap_head_def, ptr %29, i64 %35
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %36, ptr noundef null) #25
  %37 = getelementptr inbounds %struct.bitmap_head_def, ptr %30, i64 %35
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %37, ptr noundef null) #25
  %38 = getelementptr inbounds %struct.bitmap_head_def, ptr %31, i64 %35
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %38, ptr noundef null) #25
  %39 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.haifa_sched_info, ptr %39, i64 0, i32 17
  %41 = load i32, ptr %40, align 8, !tbaa !15
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.bitmap_head_def, ptr %32, i64 %35
  tail call fastcc void @bitmap_initialize_stat(ptr noundef %45, ptr noundef null) #25
  br label %46

46:                                               ; preds = %34, %44
  %47 = add nsw i64 %35, 1
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %49, label %34, !llvm.loop !131

49:                                               ; preds = %46, %25
  store i32 %9, ptr @cache_size, align 4, !tbaa !19
  br label %50

50:                                               ; preds = %2, %49
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_deps_finish() local_unnamed_addr #0 {
  %1 = tail call zeroext i8 @deps_pools_are_empty_p() #25, !range !23
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3691, ptr noundef nonnull @.str.1) #24
  br label %4

4:                                                ; preds = %0, %3
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dn_pool) #24
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dl_pool) #24
  %5 = load ptr, ptr @dn_pool, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr @dl_pool, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3694, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %4, %10
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_free() #25
  store i32 0, ptr @cache_size, align 4, !tbaa !19
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %16 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %12) #25
  store ptr null, ptr @true_dependency_cache, align 8, !tbaa !14
  tail call void @free(ptr noundef %16) #25
  store ptr null, ptr @output_dependency_cache, align 8, !tbaa !14
  tail call void @free(ptr noundef %15) #25
  store ptr null, ptr @anti_dependency_cache, align 8, !tbaa !14
  %17 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.sched_deps_info_def, ptr %17, i64 0, i32 12
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !14
  tail call void @free(ptr noundef %23) #25
  store ptr null, ptr @spec_dependency_cache, align 8, !tbaa !14
  br label %24

24:                                               ; preds = %14, %22, %11
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool_if_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_free() unnamed_addr #16 {
  %1 = load ptr, ptr @h_d_i_d, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @h_d_i_d, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps_global() local_unnamed_addr #0 {
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !53
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %1, ptr @reg_pending_sets, align 8, !tbaa !14
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %2, ptr @reg_pending_clobbers, align 8, !tbaa !14
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %3, ptr @reg_pending_uses, align 8, !tbaa !14
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !19
  %4 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %5 = icmp eq i8 %4, 0
  %6 = load i32, ptr @sched_emulate_haifa_p, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 1
  store ptr @haifa_start_insn, ptr %11, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 2
  store ptr @haifa_finish_insn, ptr %12, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 7
  store ptr @haifa_note_reg_set, ptr %13, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 8
  store ptr @haifa_note_reg_clobber, ptr %14, align 8, !tbaa !133
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 9
  store ptr @haifa_note_reg_use, ptr %15, align 8, !tbaa !134
  %16 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 10
  store ptr @haifa_note_mem_dep, ptr %16, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 11
  store ptr @haifa_note_dep, ptr %17, align 8, !tbaa !136
  br label %18

18:                                               ; preds = %0, %9
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_start_insn(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @cur_insn, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1621, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  store ptr %0, ptr @cur_insn, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @haifa_finish_insn() #17 {
  store ptr null, ptr @cur_insn, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct._dep, align 8
  %6 = and i32 %3, 16777215
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = and i32 %3, 63
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1659, ptr noundef nonnull @.str.1) #24
  br label %12

12:                                               ; preds = %4, %11, %8
  %13 = phi ptr [ %1, %8 ], [ %1, %11 ], [ null, %4 ]
  %14 = phi ptr [ %0, %8 ], [ %0, %11 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  %15 = load ptr, ptr @cur_insn, align 8, !tbaa !14
  %16 = tail call i32 @ds_to_dt(i32 noundef %3) #25, !range !137
  %17 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.haifa_sched_info, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !15
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 -1, i32 %3
  call void @init_dep_1(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %15, i32 noundef %16, i32 noundef %22) #25
  call fastcc void @maybe_add_or_update_dep_1(ptr noundef nonnull %5, ptr noundef %13, ptr noundef %14) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_note_dep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %4 = load ptr, ptr @cur_insn, align 8, !tbaa !14
  %5 = tail call i32 @ds_to_dt(i32 noundef %1) #25, !range !137
  call void @init_dep(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %4, i32 noundef %5) #25
  call fastcc void @maybe_add_or_update_dep_1(ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_deps_global() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  tail call void @bitmap_obstack_free(ptr noundef %1) #24
  store ptr null, ptr @reg_pending_sets, align 8, !tbaa !14
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !14
  tail call void @bitmap_obstack_free(ptr noundef %2) #24
  store ptr null, ptr @reg_pending_clobbers, align 8, !tbaa !14
  %3 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  tail call void @bitmap_obstack_free(ptr noundef %3) #24
  store ptr null, ptr @reg_pending_uses, align 8, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @estimate_dep_weak(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %6, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  %14 = load i32, ptr %8, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %13, label %17, label %22

17:                                               ; preds = %10
  br i1 %16, label %18, label %24

18:                                               ; preds = %17
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #25
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #25
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %24, label %23

22:                                               ; preds = %10
  br i1 %16, label %24, label %23

23:                                               ; preds = %18, %22
  br label %24

24:                                               ; preds = %17, %22, %4, %18, %2, %23
  %25 = phi i32 [ 47, %23 ], [ 1, %2 ], [ 1, %18 ], [ 1, %4 ], [ 55, %22 ], [ 55, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !18
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_dependence(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %5 [
    i32 0, label %7
    i32 11, label %4
    i32 12, label %6
  ]

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #24
  br label %6

6:                                                ; preds = %3, %5
  br label %7

7:                                                ; preds = %3, %4, %6
  %8 = phi i32 [ 33554432, %4 ], [ 67108864, %6 ], [ 16777216, %3 ]
  %9 = load ptr, ptr @cur_insn, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, %0
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #24
  br label %14

14:                                               ; preds = %13, %11
  tail call fastcc void @note_dep(ptr noundef %1, i32 noundef %8) #25
  br label %16

15:                                               ; preds = %7
  store ptr %0, ptr @cur_insn, align 8, !tbaa !14
  tail call fastcc void @note_dep(ptr noundef %1, i32 noundef %8) #25
  store ptr null, ptr @cur_insn, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_dep(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void %5(ptr noundef %0, i32 noundef %1) #24
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, %0
  switch i32 %1, label %10 [
    i32 63, label %11
    i32 4032, label %4
    i32 258048, label %6
    i32 16515072, label %8
  ]

4:                                                ; preds = %2
  %5 = ashr i32 %3, 6
  br label %11

6:                                                ; preds = %2
  %7 = ashr i32 %3, 12
  br label %11

8:                                                ; preds = %2
  %9 = ashr i32 %3, 18
  br label %11

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3837, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %2, %10, %8, %6, %4
  %12 = phi i32 [ %3, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_dep_weak(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %1) #25
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 62
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3848, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %2, %6
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @set_dep_weak(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 62
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3857, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %3, %6
  %8 = xor i32 %1, -1
  %9 = and i32 %8, %0
  switch i32 %1, label %21 [
    i32 63, label %10
    i32 4032, label %12
    i32 258048, label %15
    i32 16515072, label %18
  ]

10:                                               ; preds = %7
  %11 = or i32 %9, %2
  br label %22

12:                                               ; preds = %7
  %13 = shl i32 %2, 6
  %14 = or i32 %13, %9
  br label %22

15:                                               ; preds = %7
  %16 = shl i32 %2, 12
  %17 = or i32 %16, %9
  br label %22

18:                                               ; preds = %7
  %19 = shl i32 %2, 18
  %20 = or i32 %19, %9
  br label %22

21:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3866, ptr noundef nonnull @.str.1) #24
  br label %22

22:                                               ; preds = %21, %18, %15, %12, %10
  %23 = phi i32 [ %9, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %10 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ds_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext 0) #25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = and i32 %0, 16777215
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %1, 16777215
  %7 = icmp eq i32 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3880, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %3, %9
  %11 = or i32 %1, %0
  %12 = and i32 %11, 117440512
  %13 = icmp eq i8 %2, 0
  br label %14

14:                                               ; preds = %40, %10
  %15 = phi i32 [ 63, %10 ], [ %43, %40 ]
  %16 = phi i32 [ %12, %10 ], [ %41, %40 ]
  %17 = and i32 %15, %0
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %15, %1
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = or i32 %16, %17
  br label %40

24:                                               ; preds = %14
  br i1 %18, label %27, label %25

25:                                               ; preds = %24
  %26 = or i32 %16, %19
  br label %40

27:                                               ; preds = %24
  br i1 %20, label %40, label %28

28:                                               ; preds = %27
  %29 = tail call i32 @get_dep_weak(i32 noundef %0, i32 noundef %15) #25
  %30 = tail call i32 @get_dep_weak(i32 noundef %1, i32 noundef %15) #25
  br i1 %13, label %31, label %35

31:                                               ; preds = %28
  %32 = mul nsw i32 %30, %29
  %33 = sdiv i32 %32, 62
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 1)
  br label %37

35:                                               ; preds = %28
  %36 = tail call i32 @llvm.smax.i32(i32 %29, i32 %30)
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %34, %31 ], [ %36, %35 ]
  %39 = tail call i32 @set_dep_weak(i32 noundef %16, i32 noundef %15, i32 noundef %38) #25
  br label %40

40:                                               ; preds = %25, %37, %27, %22
  %41 = phi i32 [ %39, %37 ], [ %16, %27 ], [ %23, %22 ], [ %26, %25 ]
  %42 = icmp eq i32 %15, 16515072
  %43 = shl i32 %15, 6
  br i1 %42, label %44, label %14

44:                                               ; preds = %40
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ds_full_merge(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = or i32 %1, %0
  %6 = and i32 %5, 16777215
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = icmp ne i32 %0, 0
  %10 = and i32 %0, 16777215
  %11 = icmp eq i32 %10, 0
  %12 = and i1 %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = icmp eq i32 %1, 0
  %15 = and i32 %1, 16777215
  %16 = icmp eq i32 %15, 0
  %17 = xor i1 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %8
  %19 = and i32 %5, -16777216
  br label %32

20:                                               ; preds = %13
  %21 = icmp eq ptr %2, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3) #25, !range !45
  %24 = tail call i32 @set_dep_weak(i32 noundef %0, i32 noundef 63, i32 noundef %23) #25
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %24, %22 ], [ %0, %20 ]
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %14, %27
  %29 = select i1 %27, i32 %1, i32 %26
  br i1 %28, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @ds_merge(i32 noundef %1, i32 noundef %26) #25
  br label %32

32:                                               ; preds = %25, %18, %30, %4
  %33 = phi i32 [ %31, %30 ], [ %19, %18 ], [ %5, %4 ], [ %29, %25 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ds_max_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = or i32 %1, %0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp ne i32 %0, 0
  %12 = and i1 %11, %3
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext 1) #25
  br label %15

15:                                               ; preds = %10, %6, %2, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %2 ], [ %1, %6 ], [ %0, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ds_weak(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %12, %1
  %3 = phi i32 [ 1, %1 ], [ %13, %12 ]
  %4 = phi i32 [ 63, %1 ], [ %16, %12 ]
  %5 = phi i32 [ 0, %1 ], [ %14, %12 ]
  %6 = and i32 %4, %0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @get_dep_weak(i32 noundef %0, i32 noundef %4) #25
  %10 = mul nsw i32 %9, %3
  %11 = add nsw i32 %5, 1
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %10, %8 ], [ %3, %2 ]
  %14 = phi i32 [ %11, %8 ], [ %5, %2 ]
  %15 = icmp eq i32 %4, 16515072
  %16 = shl i32 %4, 6
  br i1 %15, label %17, label %2

17:                                               ; preds = %12
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4007, ptr noundef nonnull @.str.1) #24
  br label %23

20:                                               ; preds = %17
  %21 = add nsw i32 %14, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19, %20
  %24 = phi i32 [ %21, %20 ], [ -1, %19 ]
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i32 [ %29, %25 ], [ %24, %23 ]
  %27 = phi i32 [ %28, %25 ], [ %13, %23 ]
  %28 = sdiv i32 %27, 62
  %29 = add nsw i32 %26, -1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %25, !llvm.loop !138

31:                                               ; preds = %25, %20
  %32 = phi i32 [ %13, %20 ], [ %28, %25 ]
  %33 = icmp slt i32 %32, 63
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4014, ptr noundef nonnull @.str.1) #24
  br label %35

35:                                               ; preds = %31, %34
  %36 = tail call i32 @llvm.smax.i32(i32 %32, i32 1)
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @ds_get_speculation_types(i32 noundef %0) local_unnamed_addr #6 {
  %2 = and i32 %0, 63
  %3 = icmp eq i32 %2, 0
  %4 = or i32 %0, 63
  %5 = select i1 %3, i32 %0, i32 %4
  %6 = and i32 %5, 4032
  %7 = icmp eq i32 %6, 0
  %8 = or i32 %5, 4032
  %9 = select i1 %7, i32 %5, i32 %8
  %10 = and i32 %9, 258048
  %11 = icmp eq i32 %10, 0
  %12 = or i32 %9, 258048
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = and i32 %13, 16515072
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %13, 16515072
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = and i32 %17, 16777215
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ds_get_max_dep_weak(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 63
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @set_dep_weak(i32 noundef %0, i32 noundef 63, i32 noundef 62) #25
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  %8 = and i32 %7, 4032
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @set_dep_weak(i32 noundef %7, i32 noundef 4032, i32 noundef 62) #25
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %7, %6 ]
  %14 = and i32 %13, 258048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @set_dep_weak(i32 noundef %13, i32 noundef 258048, i32 noundef 62) #25
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ %13, %12 ]
  %20 = and i32 %19, 16515072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @set_dep_weak(i32 noundef %19, i32 noundef 16515072, i32 noundef 62) #25
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ %19, %18 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_ds(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !14
  tail call fastcc void @dump_ds(ptr noundef %2, i32 noundef %0) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !14
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_ds(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @fputc(i32 123, ptr %0)
  %4 = and i32 %1, 63
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 63) #25
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %7) #25
  br label %9

9:                                                ; preds = %6, %2
  %10 = and i32 %1, 4032
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 4032) #25
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %13) #25
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i32 %1, 258048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 258048) #25
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %19) #25
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %1, 16515072
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 16515072) #25
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %25) #25
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i32 %1, 134217728
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 10, i64 1, ptr %0)
  br label %32

32:                                               ; preds = %30, %27
  %33 = and i32 %1, 16777216
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 10, i64 1, ptr %0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = and i32 %1, 67108864
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 10, i64 1, ptr %0)
  br label %42

42:                                               ; preds = %40, %37
  %43 = and i32 %1, 33554432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 12, i64 1, ptr %0)
  br label %47

47:                                               ; preds = %45, %42
  %48 = tail call i32 @fputc(i32 125, ptr %0)
  ret void
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attach_dep_link(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #24
  br label %12

12:                                               ; preds = %7, %11
  store ptr %1, ptr %4, align 8, !tbaa !139
  %13 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  store ptr %3, ptr %13, align 8, !tbaa !140
  %14 = icmp eq ptr %3, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._dep_link, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #24
  br label %20

20:                                               ; preds = %15, %19
  store ptr %13, ptr %16, align 8, !tbaa !139
  br label %21

21:                                               ; preds = %20, %12
  store ptr %0, ptr %1, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @depl_on_debug_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !141
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp ne i32 %12, 7
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i8 [ 0, %1 ], [ %14, %8 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ask_dependency_caches(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !18
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %10) #25
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %13 = icmp ne ptr %12, null
  %14 = load ptr, ptr @output_dependency_cache, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  %17 = load ptr, ptr @anti_dependency_cache, align 8
  %18 = icmp ne ptr %17, null
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 879, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %1, %20
  %22 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.haifa_sched_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !15
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %27, i64 %28
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %6) #24
  %31 = icmp eq i32 %30, 0
  br i1 %26, label %32, label %48

32:                                               ; preds = %21
  br i1 %31, label %33, label %43

33:                                               ; preds = %32
  %34 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.bitmap_head_def, ptr %34, i64 %28
  %36 = tail call i32 @bitmap_bit_p(ptr noundef %35, i32 noundef %6) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.bitmap_head_def, ptr %39, i64 %28
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %6) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %32, %33, %38
  %44 = phi i32 [ 0, %32 ], [ 11, %33 ], [ 12, %38 ]
  %45 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !12
  %47 = icmp slt i32 %46, %44
  br i1 %47, label %84, label %85

48:                                               ; preds = %21
  %49 = select i1 %31, i32 0, i32 16777216
  %50 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %51 = getelementptr inbounds %struct.bitmap_head_def, ptr %50, i64 %28
  %52 = tail call i32 @bitmap_bit_p(ptr noundef %51, i32 noundef %6) #24
  %53 = icmp eq i32 %52, 0
  %54 = or disjoint i32 %49, 33554432
  %55 = select i1 %53, i32 %49, i32 %54
  %56 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %57 = getelementptr inbounds %struct.bitmap_head_def, ptr %56, i64 %28
  %58 = tail call i32 @bitmap_bit_p(ptr noundef %57, i32 noundef %6) #24
  %59 = icmp eq i32 %58, 0
  %60 = or disjoint i32 %55, 67108864
  %61 = select i1 %59, i32 %55, i32 %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %48
  %64 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %65 = getelementptr inbounds %struct.haifa_sched_info, ptr %64, i64 0, i32 17
  %66 = load i32, ptr %65, align 8, !tbaa !15
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !14
  %71 = getelementptr inbounds %struct.bitmap_head_def, ptr %70, i64 %28
  %72 = tail call i32 @bitmap_bit_p(ptr noundef %71, i32 noundef %6) #24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69, %63
  %75 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !13
  %77 = and i32 %76, 117440512
  %78 = or i32 %77, %61
  %79 = icmp eq i32 %78, %61
  br i1 %79, label %85, label %84

80:                                               ; preds = %69
  %81 = and i32 %61, 33554432
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.1) #24
  br label %84

84:                                               ; preds = %83, %80, %74, %43
  br label %85

85:                                               ; preds = %74, %48, %38, %43, %84
  %86 = phi i32 [ 2, %84 ], [ 1, %43 ], [ 3, %38 ], [ 1, %74 ], [ 3, %48 ]
  ret i32 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @update_dep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = icmp slt i32 %9, %7
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 %9, ptr %6, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ 2, %11 ], [ 1, %5 ]
  %14 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.haifa_sched_info, ptr %14, i64 0, i32 17
  %16 = load i32, ptr %15, align 8, !tbaa !15
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !13
  %22 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = or i32 %23, %21
  %25 = and i32 %24, 16777215
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %19
  %28 = and i32 %23, 16777215
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %21, 16777215
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %31, %29
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = and i32 %24, -16777216
  br i1 %31, label %44, label %35

35:                                               ; preds = %33
  tail call fastcc void @change_spec_dep_to_hard(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %2) #25
  br label %44

36:                                               ; preds = %27
  %37 = icmp eq ptr %3, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %3, ptr noundef %4) #25, !range !45
  %40 = tail call i32 @set_dep_weak(i32 noundef %23, i32 noundef 63, i32 noundef %39) #25
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %40, %38 ], [ %23, %36 ]
  %43 = tail call i32 @ds_merge(i32 noundef %21, i32 noundef %42) #25
  br label %44

44:                                               ; preds = %41, %35, %33, %19
  %45 = phi i32 [ %43, %41 ], [ %34, %35 ], [ %34, %33 ], [ %24, %19 ]
  %46 = icmp eq i32 %21, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 %45, ptr %20, align 4, !tbaa !13
  br label %48

48:                                               ; preds = %44, %47, %12
  %49 = phi i32 [ %13, %12 ], [ 2, %47 ], [ %13, %44 ]
  %50 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %51 = icmp ne ptr %50, null
  %52 = icmp eq i32 %49, 2
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call fastcc void @update_dependency_caches(ptr noundef nonnull %0, i32 noundef %7) #25
  br label %55

55:                                               ; preds = %54, %48
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_spec_dep_to_hard(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr @h_d_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !18
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %13) #25
  %15 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %10, i32 noundef %14) #25
  %16 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  tail call fastcc void @move_dep_link(ptr noundef %5, ptr noundef %17, ptr noundef %19) #25
  %20 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !13
  %22 = and i32 %21, -16777216
  store i32 %22, ptr %20, align 4, !tbaa !13
  %23 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !14
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load i32, ptr %12, align 8, !tbaa !18
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #25
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bitmap_head_def, ptr %26, i64 %30
  %32 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !18
  %34 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %33) #25
  %35 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %31, i32 noundef %34) #24
  br label %36

36:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_dependency_caches(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !18
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %6) #25
  %8 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !18
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %11) #25
  %13 = load ptr, ptr @current_sched_info, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.haifa_sched_info, ptr %13, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  switch i32 %1, label %29 [
    i32 11, label %19
    i32 12, label %24
  ]

19:                                               ; preds = %18
  %20 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !14
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds %struct.bitmap_head_def, ptr %20, i64 %21
  %23 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %22, i32 noundef %7) #24
  br label %30

24:                                               ; preds = %18
  %25 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !14
  %26 = sext i32 %12 to i64
  %27 = getelementptr inbounds %struct.bitmap_head_def, ptr %25, i64 %26
  %28 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %27, i32 noundef %7) #24
  br label %30

29:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1008, ptr noundef nonnull @.str.1) #24
  br label %30

30:                                               ; preds = %19, %24, %29, %2
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @detach_dep_link(ptr nocapture noundef %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  store ptr %5, ptr %3, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._dep_link, ptr %5, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !139
  br label %9

9:                                                ; preds = %7, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @dep_link_is_detached_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @preprocess_constraints() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ira_implicitly_set_insn_hard_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_dependence_list(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 0
  br label %8

8:                                                ; preds = %6, %18
  %9 = phi ptr [ %1, %6 ], [ %20, %18 ]
  br i1 %7, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %0, ptr noundef %12) #25, !range !23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  tail call void @add_dependence(ptr noundef %0, ptr noundef %17, i32 noundef %3) #25
  br label %18

18:                                               ; preds = %10, %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !144

22:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2371, ptr noundef nonnull @.str.1) #24
  br label %282

7:                                                ; preds = %3
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !145
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void %12(ptr noundef nonnull %1) #24
  br label %15

15:                                               ; preds = %14, %9, %7
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = trunc i32 %16 to i16
  switch i16 %18, label %240 [
    i16 30, label %19
    i16 32, label %19
    i16 31, label %19
    i16 33, label %19
    i16 45, label %19
    i16 35, label %19
    i16 44, label %19
    i16 37, label %26
    i16 43, label %43
    i16 29, label %184
    i16 22, label %185
    i16 19, label %189
    i16 17, label %190
    i16 16, label %190
    i16 74, label %220
    i16 76, label %220
    i16 75, label %220
    i16 77, label %220
    i16 79, label %229
    i16 78, label %229
  ]

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  br i1 %8, label %282, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.sched_deps_info_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = icmp eq ptr %23, null
  br i1 %24, label %282, label %25

25:                                               ; preds = %20
  tail call void %23() #24
  br label %282

26:                                               ; preds = %15
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %28 = lshr i32 %16, 16
  %29 = and i32 %28, 255
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %27, i32 noundef %29, i32 noundef 24, ptr noundef %2) #25
  %30 = and i32 %27, -8
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = icmp eq i32 %27, 8
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %29, i32 noundef 24, ptr noundef %2) #25
  br label %35

35:                                               ; preds = %34, %32
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %29, i32 noundef 23, ptr noundef %2) #25
  br label %36

36:                                               ; preds = %35, %26
  br i1 %8, label %282, label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.sched_deps_info_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !146
  %41 = icmp eq ptr %40, null
  br i1 %41, label %282, label %42

42:                                               ; preds = %37
  tail call void %40() #24
  br label %282

43:                                               ; preds = %15
  %44 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %45 = getelementptr inbounds %struct.sched_deps_info_def, ptr %44, i64 0, i32 12
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !147
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %52, i64 0, i32 5
  %56 = load i8, ptr %55, align 8, !tbaa !159
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi i8 [ %56, %54 ], [ 0, %49 ]
  %59 = tail call i32 %50(i8 noundef zeroext %58) #24
  %60 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %1) #24
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !18
  %63 = tail call ptr @cselib_lookup_from_insn(ptr noundef %62, i32 noundef %59, i32 noundef 1, ptr noundef %2) #24
  %64 = load ptr, ptr %61, align 8, !tbaa !18
  %65 = tail call ptr @cselib_subst_to_values(ptr noundef %64) #24
  store ptr %65, ptr %61, align 8, !tbaa !18
  br label %66

66:                                               ; preds = %57, %43
  %67 = phi ptr [ %60, %57 ], [ %1, %43 ]
  %68 = load i32, ptr %2, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %169, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @canon_rtx(ptr noundef nonnull %67) #24
  %73 = load ptr, ptr %0, align 8, !tbaa !18
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %77

77:                                               ; preds = %75, %93
  %78 = phi ptr [ %96, %93 ], [ %73, %75 ]
  %79 = phi ptr [ %95, %93 ], [ %76, %75 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !18
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !18
  %83 = tail call i32 @read_dependence(ptr noundef %82, ptr noundef %72) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !18
  %88 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %87) #25, !range !23
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load ptr, ptr %81, align 8, !tbaa !18
  %92 = load ptr, ptr %86, align 8, !tbaa !18
  tail call fastcc void @note_mem_dep(ptr noundef %72, ptr noundef %91, ptr noundef %92, i32 noundef 67108864) #25
  br label %93

93:                                               ; preds = %90, %85, %77
  %94 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load ptr, ptr %94, align 8, !tbaa !18
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %77, !llvm.loop !161

98:                                               ; preds = %93, %71
  %99 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !18
  %101 = icmp eq ptr %100, null
  br i1 %101, label %131, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %104

104:                                              ; preds = %102, %126
  %105 = phi ptr [ %129, %126 ], [ %100, %102 ]
  %106 = phi ptr [ %128, %126 ], [ %103, %102 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !18
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !18
  %110 = tail call i32 @true_dependence(ptr noundef %109, i32 noundef 0, ptr noundef %72, ptr noundef nonnull @rtx_varies_p) #24
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !18
  %115 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %114) #25, !range !23
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load ptr, ptr %108, align 8, !tbaa !18
  %119 = load ptr, ptr %113, align 8, !tbaa !18
  %120 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %121 = getelementptr inbounds %struct.sched_deps_info_def, ptr %120, i64 0, i32 12
  %122 = load i8, ptr %121, align 8
  %123 = and i8 %122, 4
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i32 16777216, i32 16777279
  tail call fastcc void @note_mem_dep(ptr noundef %72, ptr noundef %118, ptr noundef %119, i32 noundef %125) #25
  br label %126

126:                                              ; preds = %117, %112, %104
  %127 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %127, align 8, !tbaa !18
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %104, !llvm.loop !162

131:                                              ; preds = %126, %98
  %132 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !18
  %134 = icmp eq ptr %133, null
  br i1 %134, label %169, label %135

135:                                              ; preds = %131, %165
  %136 = phi ptr [ %167, %165 ], [ %133, %131 ]
  %137 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !18
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 9
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  tail call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %138, i32 noundef 12) #25
  br label %165

143:                                              ; preds = %135
  %144 = tail call fastcc i32 @deps_may_trap_p(ptr noundef nonnull %1) #25
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %165, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %148 = getelementptr inbounds %struct.sched_deps_info_def, ptr %147, i64 0, i32 12
  %149 = load i8, ptr %148, align 8
  %150 = and i8 %149, 4
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %146
  %153 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr @spec_info, align 8, !tbaa !14
  %157 = load i32, ptr %156, align 8, !tbaa !163
  %158 = and i32 %157, 258048
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = tail call i32 @set_dep_weak(i32 noundef 67108864, i32 noundef 258048, i32 noundef 62) #25
  %162 = load ptr, ptr %137, align 8, !tbaa !18
  tail call fastcc void @note_dep(ptr noundef %162, i32 noundef %161) #25
  br label %165

163:                                              ; preds = %155, %152, %146
  %164 = load ptr, ptr %137, align 8, !tbaa !18
  tail call void @add_dependence(ptr noundef nonnull %2, ptr noundef %164, i32 noundef 12) #25
  br label %165

165:                                              ; preds = %142, %160, %163, %143
  %166 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !18
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %135, !llvm.loop !165

169:                                              ; preds = %165, %131, %66
  %170 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %171 = load i8, ptr %170, align 4
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  tail call fastcc void @add_insn_mem_dependence(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %2, ptr noundef nonnull %1) #25
  br label %175

175:                                              ; preds = %174, %169
  %176 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %177, ptr noundef nonnull %2) #25
  br i1 %8, label %282, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %180 = getelementptr inbounds %struct.sched_deps_info_def, ptr %179, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !146
  %182 = icmp eq ptr %181, null
  br i1 %182, label %282, label %183

183:                                              ; preds = %178
  tail call void %181() #24
  br label %282

184:                                              ; preds = %15
  tail call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %2, i32 noundef 1, i32 noundef 0) #25
  br label %240

185:                                              ; preds = %15
  %186 = and i32 %16, 134217728
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %240, label %188

188:                                              ; preds = %185
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %240

189:                                              ; preds = %15
  tail call fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %2, i32 noundef 1, i32 noundef 1) #25
  br label %190

190:                                              ; preds = %15, %15, %189
  %191 = icmp eq i32 %17, 17
  br i1 %191, label %192, label %197

192:                                              ; preds = %190
  %193 = load i32, ptr %1, align 8
  %194 = and i32 %193, 134217728
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %198

197:                                              ; preds = %190
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !19
  br label %240

198:                                              ; preds = %192, %196
  %199 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !18
  %201 = load i32, ptr %200, align 8, !tbaa !70
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198, %203
  %204 = phi i64 [ %208, %203 ], [ 0, %198 ]
  %205 = phi ptr [ %209, %203 ], [ %200, %198 ]
  %206 = getelementptr inbounds %struct.rtvec_def, ptr %205, i64 0, i32 1, i64 %204
  %207 = load ptr, ptr %206, align 8, !tbaa !14
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %207, ptr noundef %2) #25
  %208 = add nuw nsw i64 %204, 1
  %209 = load ptr, ptr %199, align 8, !tbaa !18
  %210 = load i32, ptr %209, align 8, !tbaa !70
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %208, %211
  br i1 %212, label %203, label %213, !llvm.loop !166

213:                                              ; preds = %203, %198
  br i1 %8, label %282, label %214

214:                                              ; preds = %213
  %215 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %216 = getelementptr inbounds %struct.sched_deps_info_def, ptr %215, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !146
  %218 = icmp eq ptr %217, null
  br i1 %218, label %282, label %219

219:                                              ; preds = %214
  tail call void %217() #24
  br label %282

220:                                              ; preds = %15, %15, %15, %15
  %221 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %222, ptr noundef %2) #25
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  br i1 %8, label %282, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %225 = getelementptr inbounds %struct.sched_deps_info_def, ptr %224, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !146
  %227 = icmp eq ptr %226, null
  br i1 %227, label %282, label %228

228:                                              ; preds = %223
  tail call void %226() #24
  br label %282

229:                                              ; preds = %15, %15
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %231, ptr noundef %2) #25
  %232 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %233, ptr noundef %2) #25
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  br i1 %8, label %282, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %236 = getelementptr inbounds %struct.sched_deps_info_def, ptr %235, i64 0, i32 6
  %237 = load ptr, ptr %236, align 8, !tbaa !146
  %238 = icmp eq ptr %237, null
  br i1 %238, label %282, label %239

239:                                              ; preds = %234
  tail call void %237() #24
  br label %282

240:                                              ; preds = %197, %15, %185, %188, %184
  %241 = zext nneg i32 %17 to i64
  %242 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !14
  %244 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %241
  %245 = load i8, ptr %244, align 1, !tbaa !18
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %275, label %247

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %249 = zext i8 %245 to i64
  br label %250

250:                                              ; preds = %247, %273
  %251 = phi i64 [ %249, %247 ], [ %252, %273 ]
  %252 = add nsw i64 %251, -1
  %253 = getelementptr inbounds i8, ptr %243, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !18
  switch i8 %254, label %273 [
    i8 101, label %260
    i8 69, label %255
  ]

255:                                              ; preds = %250
  %256 = getelementptr inbounds [1 x %union.rtunion_def], ptr %248, i64 0, i64 %252
  %257 = load ptr, ptr %256, align 8, !tbaa !18
  %258 = load i32, ptr %257, align 8, !tbaa !70
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %263, label %273

260:                                              ; preds = %250
  %261 = getelementptr inbounds [1 x %union.rtunion_def], ptr %248, i64 0, i64 %252
  %262 = load ptr, ptr %261, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %262, ptr noundef %2) #25
  br label %273

263:                                              ; preds = %255, %263
  %264 = phi i64 [ %268, %263 ], [ 0, %255 ]
  %265 = phi ptr [ %269, %263 ], [ %257, %255 ]
  %266 = getelementptr inbounds %struct.rtvec_def, ptr %265, i64 0, i32 1, i64 %264
  %267 = load ptr, ptr %266, align 8, !tbaa !14
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %267, ptr noundef %2) #25
  %268 = add nuw nsw i64 %264, 1
  %269 = load ptr, ptr %256, align 8, !tbaa !18
  %270 = load i32, ptr %269, align 8, !tbaa !70
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %263, label %273, !llvm.loop !167

273:                                              ; preds = %263, %255, %250, %260
  %274 = icmp sgt i64 %251, 1
  br i1 %274, label %250, label %275, !llvm.loop !168

275:                                              ; preds = %273, %240
  br i1 %8, label %282, label %276

276:                                              ; preds = %275
  %277 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %278 = getelementptr inbounds %struct.sched_deps_info_def, ptr %277, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !146
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %276
  tail call void %279() #24
  br label %282

282:                                              ; preds = %6, %275, %276, %281, %229, %234, %239, %220, %223, %228, %213, %214, %219, %175, %178, %183, %36, %37, %42, %19, %20, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  %9 = icmp eq ptr %5, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2197, ptr noundef nonnull @.str.1) #24
  br label %238

11:                                               ; preds = %3
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !169
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void %16(ptr noundef nonnull %5) #24
  br label %19

19:                                               ; preds = %18, %13, %11
  %20 = load i32, ptr %5, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  %26 = load i32, ptr %25, align 8, !tbaa !70
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %41
  %31 = phi i64 [ %29, %28 ], [ %32, %41 ]
  %32 = add nsw i64 %31, -1
  %33 = load ptr, ptr %24, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %37) #24
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef %40, ptr noundef %2) #25
  br label %41

41:                                               ; preds = %30, %39
  %42 = icmp ugt i64 %31, 1
  br i1 %42, label %30, label %43, !llvm.loop !170

43:                                               ; preds = %41, %23
  br i1 %12, label %50, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.sched_deps_info_def, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !171
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void %47() #24
  br label %50

50:                                               ; preds = %49, %44, %43
  %51 = icmp eq i32 %7, 23
  br i1 %51, label %52, label %238

52:                                               ; preds = %50
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %54, ptr noundef %2) #25
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  br label %238

55:                                               ; preds = %19, %74
  %56 = phi i32 [ %77, %74 ], [ %20, %19 ]
  %57 = phi ptr [ %76, %74 ], [ %5, %19 ]
  %58 = trunc i32 %56 to i16
  switch i16 %58, label %224 [
    i16 43, label %120
    i16 37, label %78
    i16 40, label %62
    i16 120, label %62
    i16 39, label %59
  ]

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %57) #24
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55, %55, %59
  %63 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %64, ptr noundef %2) #25
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, ptr %57, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 120
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %71, ptr noundef %2) #25
  %72 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %73, ptr noundef %2) #25
  br label %74

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !18
  %77 = load i32, ptr %76, align 8
  br label %55, !llvm.loop !172

78:                                               ; preds = %55
  %79 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #25
  %80 = lshr i32 %56, 16
  %81 = and i32 %80, 255
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %79, i32 noundef %81, i32 noundef %7, ptr noundef %2) #25
  %82 = and i32 %79, -8
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %224

84:                                               ; preds = %78
  %85 = icmp eq i32 %79, 8
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %81, i32 noundef %7, ptr noundef %2) #25
  br label %87

87:                                               ; preds = %86, %84
  %88 = zext nneg i32 %81 to i64
  %89 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 8, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !18
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %224, label %92

92:                                               ; preds = %87
  %93 = zext i8 %90 to i64
  %94 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  %95 = add nuw nsw i64 %93, 1
  %96 = and i64 %95, 510
  %97 = add nsw i64 %93, -1
  %98 = insertelement <2 x i64> poison, i64 %97, i64 0
  %99 = shufflevector <2 x i64> %98, <2 x i64> poison, <2 x i32> zeroinitializer
  %100 = insertelement <2 x i64> poison, i64 %93, i64 0
  %101 = shufflevector <2 x i64> %100, <2 x i64> poison, <2 x i32> zeroinitializer
  %102 = add nsw <2 x i64> %101, <i64 0, i64 -1>
  %103 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %94, i64 0
  br label %104

104:                                              ; preds = %104, %92
  %105 = phi i64 [ 0, %92 ], [ %110, %104 ]
  %106 = phi <2 x i64> [ %102, %92 ], [ %111, %104 ]
  %107 = phi <2 x i64> [ %103, %92 ], [ %109, %104 ]
  %108 = shl <2 x i64> <i64 128, i64 128>, %106
  %109 = or <2 x i64> %107, %108
  %110 = add i64 %105, 2
  %111 = add <2 x i64> %106, <i64 -2, i64 -2>
  %112 = icmp eq i64 %110, %96
  br i1 %112, label %113, label %104, !llvm.loop !173

113:                                              ; preds = %104
  %114 = insertelement <2 x i64> poison, i64 %105, i64 0
  %115 = shufflevector <2 x i64> %114, <2 x i64> poison, <2 x i32> zeroinitializer
  %116 = or disjoint <2 x i64> %115, <i64 0, i64 1>
  %117 = icmp ugt <2 x i64> %116, %99
  %118 = select <2 x i1> %117, <2 x i64> %107, <2 x i64> %109
  %119 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %118)
  store i64 %119, ptr @implicit_reg_pending_uses, align 8, !tbaa !53
  br label %224

120:                                              ; preds = %55
  %121 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %122 = getelementptr inbounds %struct.sched_deps_info_def, ptr %121, i64 0, i32 12
  %123 = load i8, ptr %122, align 8
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !147
  %128 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !18
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.mem_attrs, ptr %129, i64 0, i32 5
  %133 = load i8, ptr %132, align 8, !tbaa !159
  br label %134

134:                                              ; preds = %126, %131
  %135 = phi i8 [ %133, %131 ], [ 0, %126 ]
  %136 = tail call i32 %127(i8 noundef zeroext %135) #24
  %137 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %57) #24
  %138 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !18
  %140 = tail call ptr @cselib_lookup_from_insn(ptr noundef %139, i32 noundef %136, i32 noundef 1, ptr noundef %2) #24
  %141 = load ptr, ptr %138, align 8, !tbaa !18
  %142 = tail call ptr @cselib_subst_to_values(ptr noundef %141) #24
  store ptr %142, ptr %138, align 8, !tbaa !18
  br label %143

143:                                              ; preds = %134, %120
  %144 = phi ptr [ %137, %134 ], [ %57, %120 ]
  %145 = tail call ptr @canon_rtx(ptr noundef nonnull %144) #24
  %146 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %147 = load i8, ptr %146, align 4
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %152 = load i32, ptr %151, align 8, !tbaa !68
  %153 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !69
  %155 = add nsw i32 %154, %152
  %156 = load ptr, ptr @compiler_params, align 8, !tbaa !14
  %157 = getelementptr inbounds %struct.param_info, ptr %156, i64 14, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !60
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  tail call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0, i32 noundef 1) #25
  br label %221

161:                                              ; preds = %150, %143
  %162 = load ptr, ptr %0, align 8, !tbaa !18
  %163 = icmp eq ptr %162, null
  br i1 %163, label %187, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %166

166:                                              ; preds = %164, %182
  %167 = phi ptr [ %185, %182 ], [ %162, %164 ]
  %168 = phi ptr [ %184, %182 ], [ %165, %164 ]
  %169 = load ptr, ptr %168, align 8, !tbaa !18
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !18
  %172 = tail call i32 @anti_dependence(ptr noundef %171, ptr noundef %145) #24
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !18
  %177 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %176) #25, !range !23
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load ptr, ptr %170, align 8, !tbaa !18
  %181 = load ptr, ptr %175, align 8, !tbaa !18
  tail call fastcc void @note_mem_dep(ptr noundef %145, ptr noundef %180, ptr noundef %181, i32 noundef 67108864) #25
  br label %182

182:                                              ; preds = %179, %174, %166
  %183 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %183, align 8, !tbaa !18
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %166, !llvm.loop !176

187:                                              ; preds = %182, %161
  %188 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !18
  %190 = icmp eq ptr %189, null
  br i1 %190, label %214, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %193

193:                                              ; preds = %191, %209
  %194 = phi ptr [ %212, %209 ], [ %189, %191 ]
  %195 = phi ptr [ %211, %209 ], [ %192, %191 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !18
  %197 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !18
  %199 = tail call i32 @output_dependence(ptr noundef %198, ptr noundef %145) #24
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !18
  %204 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %203) #25, !range !23
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load ptr, ptr %197, align 8, !tbaa !18
  %208 = load ptr, ptr %202, align 8, !tbaa !18
  tail call fastcc void @note_mem_dep(ptr noundef %145, ptr noundef %207, ptr noundef %208, i32 noundef 33554432) #25
  br label %209

209:                                              ; preds = %206, %201, %193
  %210 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1, i32 0, i32 0, i64 1
  %212 = load ptr, ptr %210, align 8, !tbaa !18
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %193, !llvm.loop !177

214:                                              ; preds = %209, %187
  %215 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !62
  tail call fastcc void @add_dependence_list(ptr noundef %2, ptr noundef %216, i32 noundef 1, i32 noundef 12) #25
  %217 = load i8, ptr %146, align 4
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  tail call fastcc void @add_insn_mem_dependence(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef %2, ptr noundef nonnull %57) #25
  br label %221

221:                                              ; preds = %214, %220, %160
  %222 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %223, ptr noundef %2) #25
  br label %224

224:                                              ; preds = %55, %87, %113, %78, %221
  br i1 %12, label %231, label %225

225:                                              ; preds = %224
  %226 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %227 = getelementptr inbounds %struct.sched_deps_info_def, ptr %226, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !171
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  tail call void %228() #24
  br label %231

231:                                              ; preds = %230, %225, %224
  %232 = load i32, ptr %1, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 23
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  %236 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %237, ptr noundef %2) #25
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !18
  br label %238

238:                                              ; preds = %10, %231, %235, %50, %52
  ret void
}

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_insn_reg_uses(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  %5 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %3) #25
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %48
  %11 = load i32, ptr %3, align 4, !tbaa !19
  %12 = icmp ult i32 %11, 53
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !53
  %15 = zext nneg i32 %11 to i64
  %16 = shl nuw nsw i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %13, %10
  %20 = tail call ptr @find_regno_note(ptr noundef %1, i32 noundef 1, i32 noundef %11) #24
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !14
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %11) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !14
  %28 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %11) #24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26, %22, %19
  %31 = tail call fastcc ptr @create_insn_reg_use(i32 noundef %11, ptr noundef %1) #25
  %32 = getelementptr inbounds %struct.reg_use_data, ptr %31, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !178
  %33 = load ptr, ptr %9, align 8, !tbaa !76
  %34 = zext i32 %11 to i64
  %35 = getelementptr inbounds %struct.deps_reg, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %30, %38
  %39 = phi ptr [ %46, %38 ], [ %36, %30 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  %42 = tail call fastcc ptr @create_insn_reg_use(i32 noundef %11, ptr noundef %41) #25
  %43 = load ptr, ptr %32, align 8, !tbaa !178
  store ptr %42, ptr %32, align 8, !tbaa !178
  %44 = getelementptr inbounds %struct.reg_use_data, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !178
  %45 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %38, !llvm.loop !180

48:                                               ; preds = %38, %30, %26, %13
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !23
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %10, !llvm.loop !181

51:                                               ; preds = %48, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_insn_reg_pressure_info(ptr noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr @sched_pressure_p, align 1, !tbaa !18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2005, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %76

10:                                               ; preds = %5
  %11 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !19
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %21, %15 ]
  %17 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !19
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %19
  store i32 0, ptr %20, align 4
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, %14
  br i1 %22, label %23, label %15, !llvm.loop !182

23:                                               ; preds = %15, %10
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  tail call void @note_stores(ptr noundef %26, ptr noundef nonnull @mark_insn_reg_clobber, ptr noundef nonnull %0) #24
  %27 = load ptr, ptr %25, align 8, !tbaa !18
  tail call void @note_stores(ptr noundef %27, ptr noundef nonnull @mark_insn_reg_store, ptr noundef nonnull %0) #24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %23, %39
  %32 = phi ptr [ %41, %39 ], [ %29, %23 ]
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 16711680
  %35 = icmp eq i32 %34, 65536
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  tail call fastcc void @mark_reg_death(ptr noundef %38) #25
  br label %39

39:                                               ; preds = %31, %36
  %40 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %31, !llvm.loop !183

43:                                               ; preds = %39, %23
  %44 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !19
  %45 = shl i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @xmalloc(i64 noundef %46) #24
  %48 = load ptr, ptr @h_i_d, align 8
  %49 = load i32, ptr %24, align 8, !tbaa !18
  %50 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %48, i32 noundef %49) #25
  %51 = getelementptr inbounds %struct._haifa_insn_data, ptr %50, i64 0, i32 13
  store ptr %47, ptr %51, align 8, !tbaa !184
  store ptr %47, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !14
  %52 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !19
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 2
  %55 = tail call ptr @xcalloc(i64 noundef %54, i64 noundef 1) #24
  %56 = load ptr, ptr @h_i_d, align 8
  %57 = load i32, ptr %24, align 8, !tbaa !18
  %58 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %56, i32 noundef %57) #25
  %59 = getelementptr inbounds %struct._haifa_insn_data, ptr %58, i64 0, i32 14
  store ptr %55, ptr %59, align 8, !tbaa !185
  %60 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !19
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %43
  %63 = load ptr, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !14
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ 0, %62 ], [ %72, %64 ]
  %66 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !19
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.reg_pressure_data, ptr %63, i64 %65
  store i32 %70, ptr %71, align 4
  %72 = add nuw nsw i64 %65, 1
  %73 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !19
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %64, label %76, !llvm.loop !186

76:                                               ; preds = %64, %43, %5
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sel_mark_hard_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @max_reg_num() #24
  %13 = add nsw i32 %12, -1
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !101
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11
  tail call fastcc void @extend_deps_reg_info(ptr noundef %0, i32 noundef %1) #25
  br label %20

20:                                               ; preds = %19, %15, %8, %5
  tail call void @maybe_extend_reg_info_p() #25
  %21 = icmp slt i32 %1, 53
  br i1 %21, label %22, label %47

22:                                               ; preds = %20
  %23 = sext i32 %1 to i64
  %24 = zext nneg i32 %2 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !18
  %27 = zext i8 %26 to i32
  %28 = icmp eq i8 %26, 0
  switch i32 %3, label %31 [
    i32 23, label %30
    i32 24, label %29
  ]

29:                                               ; preds = %22
  br i1 %28, label %100, label %37

30:                                               ; preds = %22
  br i1 %28, label %100, label %32

31:                                               ; preds = %22
  br i1 %28, label %100, label %42

32:                                               ; preds = %30, %32
  %33 = phi i32 [ %34, %32 ], [ %27, %30 ]
  %34 = add nsw i32 %33, -1
  %35 = add nsw i32 %34, %1
  tail call fastcc void @note_reg_set(i32 noundef %35) #25
  %36 = icmp ugt i32 %33, 1
  br i1 %36, label %32, label %100, !llvm.loop !187

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %39, %37 ], [ %27, %29 ]
  %39 = add nsw i32 %38, -1
  %40 = add nsw i32 %39, %1
  tail call fastcc void @note_reg_use(i32 noundef %40) #25
  %41 = icmp ugt i32 %38, 1
  br i1 %41, label %37, label %100, !llvm.loop !188

42:                                               ; preds = %31, %42
  %43 = phi i32 [ %44, %42 ], [ %27, %31 ]
  %44 = add nsw i32 %43, -1
  %45 = add nsw i32 %44, %1
  tail call fastcc void @note_reg_clobber(i32 noundef %45) #25
  %46 = icmp ugt i32 %43, 1
  br i1 %46, label %42, label %100, !llvm.loop !189

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !101
  %50 = icmp sgt i32 %49, %1
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !18
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65534
  %56 = icmp eq i32 %55, 24
  br i1 %56, label %100, label %57

57:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #24
  br label %100

58:                                               ; preds = %47
  switch i32 %3, label %61 [
    i32 23, label %59
    i32 24, label %60
  ]

59:                                               ; preds = %58
  tail call fastcc void @note_reg_set(i32 noundef %1) #25
  br label %62

60:                                               ; preds = %58
  tail call fastcc void @note_reg_use(i32 noundef %1) #25
  br label %62

61:                                               ; preds = %58
  tail call fastcc void @note_reg_clobber(i32 noundef %1) #25
  br label %62

62:                                               ; preds = %60, %61, %59
  %63 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = tail call zeroext i8 @get_reg_known_equiv_p(i32 noundef %1) #24
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @get_reg_known_value(i32 noundef %1) #24
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !18
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %75, ptr noundef %4) #25
  br label %76

76:                                               ; preds = %68, %73, %65, %62
  %77 = load ptr, ptr @reg_info_p, align 8, !tbaa !14
  %78 = zext nneg i32 %1 to i64
  %79 = getelementptr inbounds %struct.reg_info_t, ptr %77, i64 %78, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !190
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %84 = load i8, ptr %83, align 4
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = icmp eq i32 %3, 24
  %88 = and i1 %87, %86
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i32, ptr %4, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 7
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !192
  %96 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %4, ptr noundef %95) #24
  store ptr %96, ptr %94, align 8, !tbaa !192
  br label %100

97:                                               ; preds = %89, %82
  %98 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !64
  tail call fastcc void @add_dependence_list(ptr noundef %4, ptr noundef %99, i32 noundef 1, i32 noundef 12) #25
  br label %100

100:                                              ; preds = %37, %32, %42, %29, %30, %31, %57, %51, %93, %97, %76
  ret void
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cselib_lookup_from_insn(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cselib_subst_to_values(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @read_dependence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.sched_deps_info_def, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #24
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: optsize
declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @deps_may_trap_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !18
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %3) #25
  %9 = icmp ugt i32 %8, 52
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call ptr @get_reg_known_value(i32 noundef %8) #24
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr %3, ptr %11
  br label %14

14:                                               ; preds = %10, %7, %1
  %15 = phi ptr [ %13, %10 ], [ %3, %7 ], [ %3, %1 ]
  %16 = tail call i32 @rtx_addr_can_trap_p(ptr noundef %15) #24
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_insn_mem_dependence(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1551, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %4, %9
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !68
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !68
  br label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !69
  br label %27

27:                                               ; preds = %12, %17, %21
  %28 = phi ptr [ %0, %12 ], [ %0, %17 ], [ %22, %21 ]
  %29 = phi ptr [ %13, %12 ], [ %13, %17 ], [ %23, %21 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !14
  %31 = tail call ptr @alloc_INSN_LIST(ptr noundef %2, ptr noundef %30) #24
  store ptr %31, ptr %28, align 8, !tbaa !14
  %32 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.sched_deps_info_def, ptr %32, i64 0, i32 12
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %27
  %38 = tail call ptr @shallow_copy_rtx_stat(ptr noundef %3) #24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !18
  %41 = tail call ptr @cselib_subst_to_values(ptr noundef %40) #24
  store ptr %41, ptr %39, align 8, !tbaa !18
  br label %42

42:                                               ; preds = %37, %27
  %43 = phi ptr [ %38, %37 ], [ %3, %27 ]
  %44 = tail call ptr @canon_rtx(ptr noundef %43) #24
  %45 = load ptr, ptr %29, align 8, !tbaa !14
  %46 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %44, ptr noundef %45) #24
  store ptr %46, ptr %29, align 8, !tbaa !14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extend_deps_reg_info(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add nsw i32 %1, 1
  %4 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2065, ptr noundef nonnull @.str.1) #24
  %7 = load i32, ptr @reload_completed, align 4, !tbaa !19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  br label %32

16:                                               ; preds = %2, %9, %6
  %17 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !101
  %19 = icmp sgt i32 %18, %1
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = sext i32 %3 to i64
  %24 = mul nsw i64 %23, 40
  %25 = tail call ptr @xrealloc(ptr noundef %22, i64 noundef %24) #24
  store ptr %25, ptr %21, align 8, !tbaa !76
  %26 = load i32, ptr %17, align 8, !tbaa !101
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.deps_reg, ptr %25, i64 %27
  %29 = sub nsw i32 %3, %26
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %30, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %14, %20
  %33 = phi ptr [ %17, %20 ], [ %15, %14 ]
  store i32 %3, ptr %33, align 8, !tbaa !101
  br label %34

34:                                               ; preds = %32, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_set(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_use(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_clobber(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @get_reg_known_equiv_p(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_reg_known_value(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: optsize
declare i32 @rtx_addr_can_trap_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @df_read_modify_subreg_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @anti_dependence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @output_dependence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_insn_reg_use(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #24
  store i32 %0, ptr %3, align 8, !tbaa !193
  %4 = getelementptr inbounds %struct.reg_use_data, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !194
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !18
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  %11 = getelementptr inbounds %struct.reg_use_data, ptr %3, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !196
  %12 = load i32, ptr %6, align 8, !tbaa !18
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 15
  store ptr %3, ptr %14, align 8, !tbaa !195
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_insn_reg_clobber(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @mark_insn_reg_birth(ptr noundef %2, ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0) #25
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_insn_reg_store(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 23
  br i1 %8, label %9, label %13

9:                                                ; preds = %5, %3
  %10 = tail call ptr @find_reg_note(ptr noundef %2, i32 noundef 6, ptr noundef %0) #24
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  tail call fastcc void @mark_insn_reg_birth(ptr noundef %2, ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %12) #25
  br label %13

13:                                               ; preds = %5, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_death(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #25
  %16 = icmp slt i32 %15, 53
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = sext i32 %15 to i64
  %19 = lshr i32 %10, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %18, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !18
  %24 = zext i8 %23 to i32
  tail call fastcc void @mark_hard_regno_death(i32 noundef %15, i32 noundef %24) #25
  br label %26

25:                                               ; preds = %14
  tail call fastcc void @mark_pseudo_death(i32 noundef %15) #25
  br label %26

26:                                               ; preds = %17, %25, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn_reg_birth(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ %5, %4 ]
  %14 = phi ptr [ %10, %8 ], [ %1, %4 ]
  %15 = and i32 %13, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #25
  %19 = icmp slt i32 %18, 53
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = sext i32 %18 to i64
  %22 = lshr i32 %13, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %21, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !18
  %27 = zext i8 %26 to i32
  tail call fastcc void @mark_insn_hard_regno_birth(ptr noundef %0, i32 noundef %18, i32 noundef %27, i8 noundef zeroext %2, i8 noundef zeroext %3) #25
  br label %29

28:                                               ; preds = %17
  tail call fastcc void @mark_insn_pseudo_birth(ptr noundef %0, i32 noundef %18, i8 noundef zeroext %2, i8 noundef zeroext %3) #25
  br label %29

29:                                               ; preds = %20, %28, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn_hard_regno_birth(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %70

7:                                                ; preds = %5
  %8 = add nsw i32 %2, %1
  %9 = icmp eq i8 %3, 0
  %10 = icmp eq i8 %4, 0
  %11 = sext i32 %1 to i64
  %12 = sext i32 %8 to i64
  br label %13

13:                                               ; preds = %7, %67
  %14 = phi i64 [ %11, %7 ], [ %68, %67 ]
  %15 = icmp slt i64 %14, 53
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1864, ptr noundef nonnull @.str.1) #24
  br label %17

17:                                               ; preds = %13, %16
  %18 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !53
  %19 = shl nuw i64 1, %14
  %20 = and i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  %23 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !14
  %24 = getelementptr inbounds i32, ptr %23, i64 %14
  %25 = load i32, ptr %24, align 4, !tbaa !19
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %22
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  br i1 %9, label %37, label %31

31:                                               ; preds = %27
  %32 = and i32 %30, 255
  %33 = add nuw nsw i32 %32, 1
  %34 = and i32 %33, 255
  %35 = and i32 %30, -256
  %36 = or disjoint i32 %34, %35
  store i32 %36, ptr %29, align 4
  br label %63

37:                                               ; preds = %27
  br i1 %10, label %46, label %38

38:                                               ; preds = %37
  %39 = lshr i32 %30, 16
  %40 = and i32 %39, 255
  %41 = add nuw nsw i32 %40, 1
  %42 = shl nuw nsw i32 %41, 16
  %43 = and i32 %42, 16711680
  %44 = and i32 %30, -16711681
  %45 = or disjoint i32 %43, %44
  store i32 %45, ptr %29, align 4
  br label %63

46:                                               ; preds = %37
  %47 = lshr i32 %30, 8
  %48 = and i32 %47, 255
  %49 = add nuw nsw i32 %48, 1
  %50 = shl nuw nsw i32 %49, 8
  %51 = and i32 %50, 65280
  %52 = and i32 %30, -65281
  %53 = or disjoint i32 %51, %52
  store i32 %53, ptr %29, align 4
  %54 = trunc i64 %14 to i32
  %55 = tail call fastcc zeroext i8 @insn_use_p(ptr noundef %0, i32 noundef %54) #25, !range !23
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = and i32 %30, -16777216
  %59 = add i32 %58, 16777216
  %60 = and i32 %53, 16777215
  %61 = or disjoint i32 %60, %59
  store i32 %61, ptr %29, align 4
  br label %62

62:                                               ; preds = %57, %46
  tail call fastcc void @create_insn_reg_set(i32 noundef %54, ptr noundef %0) #25
  br label %63

63:                                               ; preds = %38, %62, %31
  %64 = phi i32 [ %33, %31 ], [ %41, %38 ], [ %49, %62 ]
  %65 = icmp ult i32 %64, 256
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1888, ptr noundef nonnull @.str.1) #24
  br label %67

67:                                               ; preds = %66, %63, %22, %17
  %68 = add nsw i64 %14, 1
  %69 = icmp slt i64 %68, %12
  br i1 %69, label %13, label %70, !llvm.loop !197

70:                                               ; preds = %67, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn_pseudo_birth(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !14
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64
  %12 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !14
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %11
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 255
  %26 = add nsw i32 %25, %20
  %27 = and i32 %26, 255
  %28 = and i32 %24, -256
  %29 = or disjoint i32 %27, %28
  store i32 %29, ptr %23, align 4
  br label %56

30:                                               ; preds = %10
  %31 = icmp eq i8 %3, 0
  %32 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %11
  %33 = load i32, ptr %32, align 4
  br i1 %31, label %42, label %34

34:                                               ; preds = %30
  %35 = lshr i32 %33, 16
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, %20
  %38 = shl i32 %37, 16
  %39 = and i32 %38, 16711680
  %40 = and i32 %33, -16711681
  %41 = or disjoint i32 %39, %40
  store i32 %41, ptr %32, align 4
  br label %56

42:                                               ; preds = %30
  %43 = lshr i32 %33, 8
  %44 = and i32 %43, 255
  %45 = add nsw i32 %44, %20
  %46 = shl i32 %45, 8
  %47 = and i32 %46, 65280
  %48 = and i32 %33, -65281
  %49 = or disjoint i32 %47, %48
  store i32 %49, ptr %32, align 4
  %50 = tail call fastcc zeroext i8 @insn_use_p(ptr noundef %0, i32 noundef %1) #25, !range !23
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = shl i32 %20, 24
  %54 = add i32 %49, %53
  store i32 %54, ptr %32, align 4
  br label %55

55:                                               ; preds = %52, %42
  tail call fastcc void @create_insn_reg_set(i32 noundef %1, ptr noundef %0) #25
  br label %56

56:                                               ; preds = %34, %55, %22
  %57 = phi i32 [ %26, %22 ], [ %37, %34 ], [ %45, %55 ]
  %58 = icmp slt i32 %57, 256
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1849, ptr noundef nonnull @.str.1) #24
  br label %60

60:                                               ; preds = %59, %56, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @insn_use_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #20 {
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %3, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._haifa_insn_data, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.reg_use_data, ptr %15, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !llvm.loop !198

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %16 = load i32, ptr %15, align 8, !tbaa !193
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %14, %10, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_insn_reg_set(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store i32 %0, ptr %3, align 8, !tbaa !199
  %4 = getelementptr inbounds %struct.reg_set_data, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !201
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !18
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !202
  %11 = getelementptr inbounds %struct.reg_set_data, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !203
  %12 = load i32, ptr %6, align 8, !tbaa !18
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 16
  store ptr %3, ptr %14, align 8, !tbaa !202
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_hard_regno_death(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = add nsw i32 %1, %0
  %6 = sext i32 %0 to i64
  %7 = sext i32 %5 to i64
  br label %8

8:                                                ; preds = %4, %30
  %9 = phi i64 [ %6, %4 ], [ %31, %30 ]
  %10 = icmp slt i64 %9, 53
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1946, ptr noundef nonnull @.str.1) #24
  br label %12

12:                                               ; preds = %8, %11
  %13 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !53
  %14 = shl nuw i64 1, %9
  %15 = and i64 %13, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !14
  %19 = getelementptr inbounds i32, ptr %18, i64 %9
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -16777216
  %27 = add i32 %26, -16777216
  %28 = and i32 %25, 16777215
  %29 = or disjoint i32 %27, %28
  store i32 %29, ptr %24, align 4
  br label %30

30:                                               ; preds = %17, %22, %12
  %31 = add nsw i64 %9, 1
  %32 = icmp slt i64 %31, %7
  br i1 %32, label %8, label %33, !llvm.loop !204

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @mark_pseudo_death(i32 noundef %0) unnamed_addr #21 {
  %2 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !14
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds i32, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = zext i32 %5 to i64
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !14
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %8, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !19
  %18 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %8
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %17, 24
  %21 = sub i32 %19, %20
  %22 = and i32 %21, -16777216
  %23 = and i32 %19, 16777215
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr %18, align 4
  br label %25

25:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare void @free_INSN_LIST_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_all_dependences(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 3) #25
  %4 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1, %6
  tail call void @sd_delete_dep(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %2) #25
  %7 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %6, !llvm.loop !205

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare ptr @remove_free_INSN_LIST_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @remove_free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef readonly %0) unnamed_addr #7 {
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
define internal fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !208
  %7 = load i32, ptr %0, align 8, !tbaa !206
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
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !14
  %3 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef %2) #25
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow(i32 noundef %0) #25
  %4 = load ptr, ptr @h_d_i_d, align 8, !tbaa !14
  %5 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_address(ptr noundef %4) #25
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 56
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !206
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_reserve_exact(i32 noundef %8) #25
  %9 = load ptr, ptr @h_d_i_d, align 8, !tbaa !14, !nonnull !209, !noundef !209
  store i32 %0, ptr %9, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_haifa_deps_insn_data_def_base_address(ptr noundef readnone %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !14
  %3 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef %2, i32 noundef %0) #25, !range !20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 56) #24
  store ptr %6, ptr @h_d_i_d, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_add_or_update_dep_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 849, ptr noundef nonnull @.str.1) #24
  br label %17

17:                                               ; preds = %11, %16
  %18 = icmp eq ptr %6, %4
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load ptr, ptr @sched_deps_info, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.sched_deps_info_def, ptr %20, i64 0, i32 12
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @h_d_i_d, align 8
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !18
  %30 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %29) #25
  %31 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %26, i32 noundef %30) #25
  %32 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %31, i64 0, i32 1
  store i32 1, ptr %32, align 4, !tbaa !21
  br label %35

33:                                               ; preds = %17
  %34 = tail call fastcc i32 @add_or_update_dep_1(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %2) #25
  br label %35

35:                                               ; preds = %19, %25, %33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_dep", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !10, i64 20}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !10, i64 128}
!16 = !{!"haifa_sched_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128}
!17 = !{i32 16777216, i32 67108865}
!18 = !{!8, !8, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{i32 0, i32 2}
!21 = !{!22, !10, i64 4}
!22 = !{!"_haifa_deps_insn_data", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48}
!23 = !{i8 0, i8 2}
!24 = !{!25, !7, i64 40}
!25 = !{!"_haifa_insn_data", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !26, i64 20, !10, i64 22, !10, i64 22, !8, i64 23, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88}
!26 = !{!"short", !8, i64 0}
!27 = !{!28, !10, i64 32}
!28 = !{!"common_sched_info_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32}
!29 = !{!22, !7, i64 8}
!30 = !{!22, !7, i64 16}
!31 = !{!22, !7, i64 24}
!32 = !{!22, !7, i64 32}
!33 = !{!22, !7, i64 40}
!34 = !{!35, !10, i64 8}
!35 = !{!"_deps_list", !7, i64 0, !10, i64 8}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!35, !7, i64 0}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = !{i64 0, i64 4, !19, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 1, !18}
!42 = !{!43, !7, i64 0}
!43 = !{!"_dep_link", !7, i64 0, !7, i64 8, !7, i64 16}
!44 = !{i32 1, i32 3}
!45 = !{i32 1, i32 56}
!46 = !{!47, !7, i64 16}
!47 = !{!"_sd_iterator", !10, i64 0, !7, i64 8, !7, i64 16, !8, i64 24}
!48 = distinct !{!48, !37}
!49 = !{!47, !10, i64 0}
!50 = !{!47, !7, i64 8}
!51 = !{!47, !8, i64 24}
!52 = distinct !{!52, !37}
!53 = !{!54, !54, i64 0}
!54 = !{!"long", !8, i64 0}
!55 = !{!56, !7, i64 8}
!56 = !{!"sched_deps_info_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 96, !10, i64 96}
!57 = !{!58, !10, i64 40}
!58 = !{!"deps", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !10, i64 80, !7, i64 88, !10, i64 96, !7, i64 104, !59, i64 112, !59, i64 144, !10, i64 176, !10, i64 180}
!59 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24}
!60 = !{!61, !10, i64 8}
!61 = !{!"param_info", !7, i64 0, !10, i64 8, !8, i64 12, !10, i64 16, !10, i64 20, !7, i64 24}
!62 = !{!58, !7, i64 48}
!63 = distinct !{!63, !37}
!64 = !{!58, !7, i64 56}
!65 = !{!58, !7, i64 64}
!66 = !{!58, !10, i64 80}
!67 = !{!56, !7, i64 16}
!68 = !{!58, !10, i64 32}
!69 = !{!58, !10, i64 36}
!70 = !{!71, !10, i64 0}
!71 = !{!"rtvec_def", !10, i64 0, !8, i64 8}
!72 = distinct !{!72, !37}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, !37}
!75 = !{!56, !7, i64 0}
!76 = !{!58, !7, i64 104}
!77 = !{!78, !7, i64 8}
!78 = !{!"deps_reg", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!79 = !{!78, !7, i64 16}
!80 = !{!78, !7, i64 24}
!81 = !{!78, !10, i64 32}
!82 = !{!78, !7, i64 0}
!83 = distinct !{!83, !37}
!84 = distinct !{!84, !37}
!85 = distinct !{!85, !37}
!86 = !{!58, !7, i64 88}
!87 = distinct !{!87, !37}
!88 = distinct !{!88, !37}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !37}
!91 = !{!78, !10, i64 36}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !37}
!95 = distinct !{!95, !37}
!96 = distinct !{!96, !37}
!97 = distinct !{!97, !37}
!98 = !{!58, !10, i64 176}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37}
!101 = !{!58, !10, i64 96}
!102 = distinct !{!102, !37}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, !37}
!108 = distinct !{!108, !37}
!109 = distinct !{!109, !37}
!110 = distinct !{!110, !37}
!111 = !{!59, !7, i64 24}
!112 = distinct !{!112, !37}
!113 = !{!59, !7, i64 0}
!114 = !{!115, !7, i64 0}
!115 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !54, i64 24}
!116 = !{!115, !7, i64 8}
!117 = !{!118, !10, i64 16}
!118 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24}
!119 = !{!115, !10, i64 16}
!120 = !{!115, !54, i64 24}
!121 = distinct !{!121, !37}
!122 = distinct !{!122, !37}
!123 = !{!118, !7, i64 0}
!124 = distinct !{!124, !37}
!125 = distinct !{!125, !37}
!126 = distinct !{!126, !37}
!127 = !{!128, !7, i64 8}
!128 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!129 = !{!130, !10, i64 24}
!130 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 60, !10, i64 68, !10, i64 72}
!131 = distinct !{!131, !37}
!132 = !{!56, !7, i64 56}
!133 = !{!56, !7, i64 64}
!134 = !{!56, !7, i64 72}
!135 = !{!56, !7, i64 80}
!136 = !{!56, !7, i64 88}
!137 = !{i32 0, i32 13}
!138 = distinct !{!138, !37}
!139 = !{!43, !7, i64 16}
!140 = !{!43, !7, i64 8}
!141 = !{!142, !7, i64 24}
!142 = !{!"_dep_node", !43, i64 0, !6, i64 24, !43, i64 48}
!143 = !{!142, !7, i64 32}
!144 = distinct !{!144, !37}
!145 = !{!56, !7, i64 40}
!146 = !{!56, !7, i64 48}
!147 = !{!148, !7, i64 1184}
!148 = !{!"gcc_target", !149, i64 0, !151, i64 368, !152, i64 664, !10, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !54, i64 1064, !54, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !153, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !54, i64 1464, !154, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !155, i64 1784, !156, i64 1792, !157, i64 1896, !158, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!149 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !150, i64 24, !150, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!150 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!151 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!152 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!153 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!154 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!155 = !{!"c", !7, i64 0}
!156 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!157 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!158 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!159 = !{!160, !8, i64 32}
!160 = !{!"mem_attrs", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !8, i64 32}
!161 = distinct !{!161, !37}
!162 = distinct !{!162, !37}
!163 = !{!164, !10, i64 0}
!164 = !{!"spec_info_def", !10, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!165 = distinct !{!165, !37}
!166 = distinct !{!166, !37}
!167 = distinct !{!167, !37}
!168 = distinct !{!168, !37}
!169 = !{!56, !7, i64 24}
!170 = distinct !{!170, !37}
!171 = !{!56, !7, i64 32}
!172 = distinct !{!172, !37}
!173 = distinct !{!173, !37, !174, !175}
!174 = !{!"llvm.loop.isvectorized", i32 1}
!175 = !{!"llvm.loop.unroll.runtime.disable"}
!176 = distinct !{!176, !37}
!177 = distinct !{!177, !37}
!178 = !{!179, !7, i64 16}
!179 = !{!"reg_use_data", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!180 = distinct !{!180, !37}
!181 = distinct !{!181, !37}
!182 = distinct !{!182, !37}
!183 = distinct !{!183, !37}
!184 = !{!25, !7, i64 56}
!185 = !{!25, !7, i64 64}
!186 = distinct !{!186, !37}
!187 = distinct !{!187, !37}
!188 = distinct !{!188, !37}
!189 = distinct !{!189, !37}
!190 = !{!191, !10, i64 12}
!191 = !{!"reg_info_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!192 = !{!58, !7, i64 72}
!193 = !{!179, !10, i64 0}
!194 = !{!179, !7, i64 8}
!195 = !{!25, !7, i64 72}
!196 = !{!179, !7, i64 24}
!197 = distinct !{!197, !37}
!198 = distinct !{!198, !37}
!199 = !{!200, !10, i64 0}
!200 = !{!"reg_set_data", !10, i64 0, !7, i64 8, !7, i64 16}
!201 = !{!200, !7, i64 8}
!202 = !{!25, !7, i64 80}
!203 = !{!200, !7, i64 16}
!204 = distinct !{!204, !37}
!205 = distinct !{!205, !37}
!206 = !{!207, !10, i64 0}
!207 = !{!"VEC_haifa_deps_insn_data_def_base", !10, i64 0, !10, i64 4, !8, i64 8}
!208 = !{!207, !10, i64 4}
!209 = !{}
