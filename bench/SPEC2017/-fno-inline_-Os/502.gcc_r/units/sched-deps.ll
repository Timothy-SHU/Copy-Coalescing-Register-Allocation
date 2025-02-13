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
define dso_local noundef i32 @ds_to_dk(i32 noundef %0) local_unnamed_addr #0 !prof !277 {
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
define dso_local noundef i32 @dk_to_ds(i32 noundef %0) local_unnamed_addr #0 !prof !277 {
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
define dso_local void @init_dep_1(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 !prof !278 {
  store ptr %1, ptr %0, align 8, !tbaa !279
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !285
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 8, !tbaa !286
  %8 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  store i32 %4, ptr %8, align 4, !tbaa !287
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_dep(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !288 {
  %5 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %6 = getelementptr inbounds %struct.haifa_sched_info, ptr %5, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !290
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !292

10:                                               ; preds = %4
  %11 = tail call i32 @dk_to_ds(i32 noundef %3) #25, !range !293
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
define dso_local void @sd_debug_dep(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !277 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !289
  tail call fastcc void @dump_dep(ptr noundef %2, ptr noundef %0, i32 noundef 1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !289
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_dep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !277 !PGOFuncName !294 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %2, i32 30
  %7 = tail call i32 @fputc(i32 60, ptr %0)
  %8 = and i32 %6, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !279
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !295
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %13) #25
  br label %15

15:                                               ; preds = %10, %3
  %16 = and i32 %6, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !285
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !295
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %22) #25
  br label %24

24:                                               ; preds = %18, %15
  %25 = and i32 %6, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !286
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
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 17
  %42 = load i32, ptr %41, align 8, !tbaa !290
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !287
  tail call fastcc void @dump_ds(ptr noundef %0, i32 noundef %47) #25
  br label %48

48:                                               ; preds = %39, %45, %36
  %49 = tail call i32 @fputc(i32 62, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #5 !prof !296 {
  %1 = load i32, ptr @dn_pool_diff, align 4, !tbaa !297
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @dl_pool_diff, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !298
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !299 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #26
  store i8 0, ptr %3, align 1, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #26
  store i8 0, ptr %4, align 1, !tbaa !295
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %29, label %8, !prof !300

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %29, label %12, !prof !301

12:                                               ; preds = %8
  %13 = call fastcc ptr @sched_get_condition_with_rev(ptr noundef nonnull %0, ptr noundef nonnull %3) #25
  %14 = call fastcc ptr @sched_get_condition_with_rev(ptr noundef nonnull %1, ptr noundef nonnull %4) #25
  %15 = icmp ne ptr %13, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %29, !prof !302

18:                                               ; preds = %12
  %19 = load i8, ptr %3, align 1, !tbaa !295
  %20 = load i8, ptr %4, align 1, !tbaa !295
  %21 = call fastcc i32 @conditions_mutex_p(ptr noundef nonnull %13, ptr noundef nonnull %14, i8 noundef zeroext %19, i8 noundef zeroext %20) #25, !range !303
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
define internal fastcc ptr @sched_get_condition_with_rev(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 !prof !304 !PGOFuncName !305 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6, !prof !306

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8, !prof !307

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !tbaa !295
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %16, !prof !306

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !295
  br label %44

16:                                               ; preds = %9
  %17 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19, !prof !308

19:                                               ; preds = %16
  %20 = tail call i32 @onlyjump_p(ptr noundef nonnull %0) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22, !prof !309

22:                                               ; preds = %19
  %23 = tail call ptr @pc_set(ptr noundef nonnull %0) #24
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !295
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !295
  %29 = load ptr, ptr @global_rtl, align 16, !tbaa !289
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %33, !prof !310

31:                                               ; preds = %22
  %32 = load ptr, ptr %26, align 8, !tbaa !295
  br label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !295
  %36 = icmp eq ptr %35, %29
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load ptr, ptr %26, align 8, !tbaa !295
  %39 = tail call i32 @reversed_comparison_code(ptr noundef %38, ptr noundef nonnull %0) #24
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %7, %40
  %42 = select i1 %40, ptr null, ptr %38
  br i1 %41, label %44, label %43

43:                                               ; preds = %37
  store i8 1, ptr %1, align 1, !tbaa !295
  br label %44

44:                                               ; preds = %37, %33, %43, %16, %19, %2, %31, %13
  %45 = phi ptr [ %15, %13 ], [ %32, %31 ], [ null, %2 ], [ null, %19 ], [ null, %16 ], [ %42, %37 ], [ %38, %43 ], [ null, %33 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @conditions_mutex_p(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !277 !PGOFuncName !311 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !297
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !297
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
  %27 = load ptr, ptr %26, align 8, !tbaa !295
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !295
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !295
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !295
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
define dso_local noundef zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !277 {
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !295
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #25
  %8 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !312
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 268500991
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
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
  %26 = load ptr, ptr %25, align 8, !tbaa !315
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %22, %19
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !295
  %31 = tail call i32 @side_effects_p(ptr noundef %30) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = and i32 %1, 16519104
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %29, align 8, !tbaa !295
  %38 = tail call i32 @may_trap_p(ptr noundef %37) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = and i32 %1, 4032
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %0) #25, !range !314
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %43, %33
  br label %47

47:                                               ; preds = %43, %36, %28, %19, %22, %12, %2, %46
  %48 = phi i8 [ 1, %46 ], [ 0, %2 ], [ 0, %12 ], [ 0, %22 ], [ 0, %19 ], [ 0, %28 ], [ 0, %36 ], [ 0, %43 ]
  ret i8 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !318 !PGOFuncName !319 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !320 !PGOFuncName !321 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !297
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @sel_sched_p() unnamed_addr #8 !prof !322 !PGOFuncName !323 {
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !289
  %2 = getelementptr inbounds %struct.common_sched_info_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !324
  %4 = icmp eq i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !277 !PGOFuncName !326 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sched_has_condition_p(ptr noundef %0) unnamed_addr #0 !prof !327 !PGOFuncName !328 {
  %2 = tail call fastcc ptr @sched_get_condition_with_rev(ptr noundef %0, ptr noundef null) #25
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sd_next_list(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 !prof !329 {
  %5 = load i32, ptr %1, align 4, !tbaa !297
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8, !prof !330

8:                                                ; preds = %4
  %9 = load ptr, ptr @h_d_i_d, align 8
  %10 = load ptr, ptr @sched_luids, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !295
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %12) #25
  %14 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %9, i32 noundef %13) #25
  %15 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !331
  store ptr %16, ptr %2, align 8, !tbaa !289
  store i8 0, ptr %3, align 1, !tbaa !295
  %17 = and i32 %5, -2
  br label %71

18:                                               ; preds = %4
  %19 = and i32 %5, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21, !prof !332

21:                                               ; preds = %18
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !295
  %26 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %25) #25
  %27 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %26) #25
  %28 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !333
  store ptr %29, ptr %2, align 8, !tbaa !289
  store i8 0, ptr %3, align 1, !tbaa !295
  %30 = and i32 %5, -4
  br label %71

31:                                               ; preds = %18
  %32 = and i32 %5, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34, !prof !334

34:                                               ; preds = %31
  %35 = load ptr, ptr @h_d_i_d, align 8
  %36 = load ptr, ptr @sched_luids, align 8
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !295
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %38) #25
  %40 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %35, i32 noundef %39) #25
  %41 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !335
  store ptr %42, ptr %2, align 8, !tbaa !289
  store i8 0, ptr %3, align 1, !tbaa !295
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
  %51 = load i32, ptr %50, align 8, !tbaa !295
  %52 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %49, i32 noundef %51) #25
  %53 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %48, i32 noundef %52) #25
  %54 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !336
  store ptr %55, ptr %2, align 8, !tbaa !289
  store i8 1, ptr %3, align 1, !tbaa !295
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
  %64 = load i32, ptr %63, align 8, !tbaa !295
  %65 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %62, i32 noundef %64) #25
  %66 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %61, i32 noundef %65) #25
  %67 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %66, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !337
  store ptr %68, ptr %2, align 8, !tbaa !289
  store i8 1, ptr %3, align 1, !tbaa !295
  %69 = and i32 %5, -32
  br label %71

70:                                               ; preds = %57
  store ptr null, ptr %2, align 8, !tbaa !289
  store i8 0, ptr %3, align 1, !tbaa !295
  br label %71

71:                                               ; preds = %21, %47, %70, %60, %34, %8
  %72 = phi i32 [ %30, %21 ], [ %56, %47 ], [ 0, %70 ], [ %69, %60 ], [ %43, %34 ], [ %17, %8 ]
  store i32 %72, ptr %1, align 4, !tbaa !297
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @sd_lists_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !338 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4, !tbaa !297
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %19, label %7, !prof !339

7:                                                ; preds = %2, %15
  %8 = phi i32 [ %16, %15 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %9 = load ptr, ptr %4, align 8, !tbaa !289
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !340

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._deps_list, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !341
  %14 = add nsw i32 %13, %8
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %14, %11 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  %17 = load i32, ptr %3, align 4, !tbaa !297
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %7, !prof !343, !llvm.loop !344

19:                                               ; preds = %15, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sd_lists_empty_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !277 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4, !tbaa !297
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %14, label %10

7:                                                ; preds = %10
  %8 = load i32, ptr %3, align 4, !tbaa !297
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2, %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %11 = load ptr, ptr %4, align 8, !tbaa !289
  %12 = tail call fastcc zeroext i8 @deps_list_empty_p(ptr noundef %11) #25, !range !314
  %13 = icmp eq i8 %12, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %10, %2
  %15 = phi i8 [ 1, %2 ], [ 0, %10 ], [ 1, %7 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @deps_list_empty_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !346 !PGOFuncName !347 {
  %2 = getelementptr inbounds %struct._deps_list, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !341
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_init_insn(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !348 {
  %2 = tail call fastcc ptr @create_deps_list() #25
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !295
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #25
  %8 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %8, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !331
  %10 = tail call fastcc ptr @create_deps_list() #25
  %11 = load ptr, ptr @h_d_i_d, align 8
  %12 = load ptr, ptr @sched_luids, align 8
  %13 = load i32, ptr %5, align 8, !tbaa !295
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %12, i32 noundef %13) #25
  %15 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %11, i32 noundef %14) #25
  %16 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 3
  store ptr %10, ptr %16, align 8, !tbaa !333
  %17 = tail call fastcc ptr @create_deps_list() #25
  %18 = load ptr, ptr @h_d_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = load i32, ptr %5, align 8, !tbaa !295
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %20) #25
  %22 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %18, i32 noundef %21) #25
  %23 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %22, i64 0, i32 5
  store ptr %17, ptr %23, align 8, !tbaa !336
  %24 = tail call fastcc ptr @create_deps_list() #25
  %25 = load ptr, ptr @h_d_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = load i32, ptr %5, align 8, !tbaa !295
  %28 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %26, i32 noundef %27) #25
  %29 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %25, i32 noundef %28) #25
  %30 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %29, i64 0, i32 4
  store ptr %24, ptr %30, align 8, !tbaa !335
  %31 = tail call fastcc ptr @create_deps_list() #25
  %32 = load ptr, ptr @h_d_i_d, align 8
  %33 = load ptr, ptr @sched_luids, align 8
  %34 = load i32, ptr %5, align 8, !tbaa !295
  %35 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %33, i32 noundef %34) #25
  %36 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %32, i32 noundef %35) #25
  %37 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %36, i64 0, i32 6
  store ptr %31, ptr %37, align 8, !tbaa !337
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %43, !prof !349

41:                                               ; preds = %1
  %42 = or i32 %38, 67108864
  store i32 %42, ptr %0, align 8
  br label %43

43:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_deps_list() unnamed_addr #0 !prof !346 !PGOFuncName !350 {
  %1 = load ptr, ptr @dl_pool, align 8, !tbaa !289
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #24
  store ptr null, ptr %2, align 8, !tbaa !351
  %3 = getelementptr inbounds %struct._deps_list, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !341
  %4 = load i32, ptr @dl_pool_diff, align 4, !tbaa !297
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @dl_pool_diff, align 4, !tbaa !297
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_finish_insn(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !348 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %13, !prof !349

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
  %17 = load i32, ptr %16, align 8, !tbaa !295
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #25
  %19 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %14, i32 noundef %18) #25
  %20 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !331
  tail call fastcc void @free_deps_list(ptr noundef %21) #25
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %16, align 8, !tbaa !295
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #25
  %27 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 2
  store ptr null, ptr %27, align 8, !tbaa !331
  %28 = load i32, ptr %16, align 8, !tbaa !295
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %28) #25
  %30 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %29) #25
  %31 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !333
  tail call fastcc void @free_deps_list(ptr noundef %32) #25
  %33 = load ptr, ptr @h_d_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = load i32, ptr %16, align 8, !tbaa !295
  %36 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %35) #25
  %37 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %33, i32 noundef %36) #25
  %38 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %37, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !333
  %39 = load i32, ptr %16, align 8, !tbaa !295
  %40 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %39) #25
  %41 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %33, i32 noundef %40) #25
  %42 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !336
  tail call fastcc void @free_deps_list(ptr noundef %43) #25
  %44 = load ptr, ptr @h_d_i_d, align 8
  %45 = load ptr, ptr @sched_luids, align 8
  %46 = load i32, ptr %16, align 8, !tbaa !295
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %46) #25
  %48 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %44, i32 noundef %47) #25
  %49 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 5
  store ptr null, ptr %49, align 8, !tbaa !336
  %50 = load i32, ptr %16, align 8, !tbaa !295
  %51 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %50) #25
  %52 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %44, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !335
  tail call fastcc void @free_deps_list(ptr noundef %54) #25
  %55 = load ptr, ptr @h_d_i_d, align 8
  %56 = load ptr, ptr @sched_luids, align 8
  %57 = load i32, ptr %16, align 8, !tbaa !295
  %58 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %57) #25
  %59 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %58) #25
  %60 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %59, i64 0, i32 4
  store ptr null, ptr %60, align 8, !tbaa !335
  %61 = load i32, ptr %16, align 8, !tbaa !295
  %62 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %61) #25
  %63 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %62) #25
  %64 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %63, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !337
  tail call fastcc void @free_deps_list(ptr noundef %65) #25
  %66 = load ptr, ptr @h_d_i_d, align 8
  %67 = load ptr, ptr @sched_luids, align 8
  %68 = load i32, ptr %16, align 8, !tbaa !295
  %69 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %67, i32 noundef %68) #25
  %70 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %66, i32 noundef %69) #25
  %71 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %70, i64 0, i32 6
  store ptr null, ptr %71, align 8, !tbaa !337
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_deps_list(ptr noundef %0) unnamed_addr #0 !prof !346 !PGOFuncName !352 {
  %2 = tail call fastcc zeroext i8 @deps_list_empty_p(ptr noundef %0) #25, !range !314
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !353

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @dl_pool_diff, align 4, !tbaa !297
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr @dl_pool_diff, align 4, !tbaa !297
  %8 = load ptr, ptr @dl_pool, align 8, !tbaa !289
  tail call void @pool_free(ptr noundef %8, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sd_find_dep_between(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !277 {
  %4 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !295
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #25
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !295
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %12) #25
  %14 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %15 = icmp ne ptr %14, null
  %16 = load ptr, ptr @anti_dependency_cache, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #24
  %20 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  br label %21

21:                                               ; preds = %6, %19
  %22 = phi ptr [ %4, %6 ], [ %20, %19 ]
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds %struct.bitmap_head_def, ptr %22, i64 %23
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %10) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %23
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %10) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
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
define internal fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #11 !prof !354 !PGOFuncName !355 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 4, i32 16, !prof !356
  %9 = select i1 %7, i32 3, i32 8, !prof !356
  %10 = tail call i32 @sd_lists_size(ptr noundef %1, i32 noundef %9) #25
  %11 = tail call i32 @sd_lists_size(ptr noundef %0, i32 noundef %8) #25
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23, !prof !357

13:                                               ; preds = %4
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %5, ptr noundef %1, i32 noundef %9) #25
  %14 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16, !prof !358

16:                                               ; preds = %13, %20
  %17 = load ptr, ptr %6, align 8, !tbaa !289
  %18 = load ptr, ptr %17, align 8, !tbaa !279
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %34, label %20, !prof !359

20:                                               ; preds = %16
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #25
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %16, !prof !360, !llvm.loop !361

23:                                               ; preds = %4
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %5, ptr noundef %0, i32 noundef %8) #25
  %24 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26, !prof !362

26:                                               ; preds = %23, %31
  %27 = load ptr, ptr %6, align 8, !tbaa !289
  %28 = getelementptr inbounds %struct._dep, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !285
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %34, label %31, !prof !363

31:                                               ; preds = %26
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #25
  %32 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %26, !prof !364, !llvm.loop !365

34:                                               ; preds = %26, %16
  %35 = phi ptr [ %17, %16 ], [ %27, %26 ]
  %36 = icmp eq ptr %3, null
  br i1 %36, label %38, label %37, !prof !366

37:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !367
  br label %38

38:                                               ; preds = %31, %20, %34, %37, %23, %13
  %39 = phi ptr [ null, %13 ], [ null, %23 ], [ %35, %37 ], [ %35, %34 ], [ null, %20 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_add_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !368 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @create_dep_node() #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !285
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %20, !prof !369

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !279
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -11
  %17 = icmp ult i32 %16, -4
  %18 = icmp eq ptr %7, %13
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %21, !prof !370

20:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %12, %20
  %22 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %23 = getelementptr inbounds %struct.haifa_sched_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !290
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27, !prof !371

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !287
  %30 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %7, i32 noundef %29) #25, !range !314
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 4, !tbaa !287
  %34 = and i32 %33, -16777216
  store i32 %34, ptr %28, align 4, !tbaa !287
  br label %35

35:                                               ; preds = %32, %27, %21
  %36 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  tail call fastcc void @copy_dep(ptr noundef nonnull %36, ptr noundef nonnull %0) #25
  call fastcc void @get_back_and_forw_lists(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %37 = load ptr, ptr %3, align 8, !tbaa !289
  tail call fastcc void @add_to_deps_list(ptr noundef %5, ptr noundef %37) #25
  %38 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 2
  %39 = load ptr, ptr %4, align 8, !tbaa !289
  tail call fastcc void @add_to_deps_list(ptr noundef nonnull %38, ptr noundef %39) #25
  %40 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !371

42:                                               ; preds = %35
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %0) #25
  br label %43

43:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_dep_node() unnamed_addr #0 !prof !368 !PGOFuncName !372 {
  %1 = load ptr, ptr @dn_pool, align 8, !tbaa !289
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #24
  %3 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 2
  store ptr %2, ptr %2, align 8, !tbaa !373
  %4 = getelementptr inbounds %struct._dep_link, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %2, ptr %3, align 8, !tbaa !373
  %5 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = load i32, ptr @dn_pool_diff, align 4, !tbaa !297
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @dn_pool_diff, align 4, !tbaa !297
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_dep(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !368 !PGOFuncName !375 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_back_and_forw_lists(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !376 !PGOFuncName !377 {
  %5 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !285
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %46, !prof !378

8:                                                ; preds = %4
  %9 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %10 = getelementptr inbounds %struct.haifa_sched_info, ptr %9, i64 0, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !290
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14, !prof !378

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !287
  %17 = and i32 %16, 16777215
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @h_d_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !295
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %23) #25
  %25 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %20, i32 noundef %24) #25
  %26 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %25, i64 0, i32 3
  br label %35

27:                                               ; preds = %14, %8
  %28 = load ptr, ptr @h_d_i_d, align 8
  %29 = load ptr, ptr @sched_luids, align 8
  %30 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !295
  %32 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %29, i32 noundef %31) #25
  %33 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %28, i32 noundef %32) #25
  %34 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %33, i64 0, i32 2
  br label %35

35:                                               ; preds = %27, %19
  %36 = phi ptr [ %34, %27 ], [ %26, %19 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !289
  store ptr %37, ptr %2, align 8, !tbaa !289
  %38 = load ptr, ptr @h_d_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = load ptr, ptr %0, align 8, !tbaa !279
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !295
  %43 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %42) #25
  %44 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %38, i32 noundef %43) #25
  %45 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %44, i64 0, i32 4
  br label %63

46:                                               ; preds = %4
  %47 = load ptr, ptr @h_d_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !295
  %51 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %48, i32 noundef %50) #25
  %52 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %47, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !336
  store ptr %54, ptr %2, align 8, !tbaa !289
  %55 = load ptr, ptr @h_d_i_d, align 8
  %56 = load ptr, ptr @sched_luids, align 8
  %57 = load ptr, ptr %0, align 8, !tbaa !279
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !295
  %60 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %59) #25
  %61 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %60) #25
  %62 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %61, i64 0, i32 6
  br label %63

63:                                               ; preds = %46, %35
  %64 = phi ptr [ %45, %35 ], [ %62, %46 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !289
  store ptr %65, ptr %3, align 8, !tbaa !289
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_deps_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !376 !PGOFuncName !379 {
  tail call fastcc void @attach_dep_link(ptr noundef %0, ptr noundef %1) #25
  %3 = tail call fastcc zeroext i8 @depl_on_debug_p(ptr noundef %0) #25, !range !314
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !378

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !341
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !341
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_dependency_caches(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !277 !PGOFuncName !380 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !279
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !295
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !285
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !295
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %10) #25
  %12 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %13 = getelementptr inbounds %struct.haifa_sched_info, ptr %12, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !290
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !286
  switch i32 %19, label %35 [
    i32 0, label %20
    i32 11, label %25
    i32 12, label %30
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %22 = sext i32 %11 to i64
  %23 = getelementptr inbounds %struct.bitmap_head_def, ptr %21, i64 %22
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %6) #24
  br label %77

25:                                               ; preds = %17
  %26 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %27 = sext i32 %11 to i64
  %28 = getelementptr inbounds %struct.bitmap_head_def, ptr %26, i64 %27
  %29 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %6) #24
  br label %77

30:                                               ; preds = %17
  %31 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
  %32 = sext i32 %11 to i64
  %33 = getelementptr inbounds %struct.bitmap_head_def, ptr %31, i64 %32
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %6) #24
  br label %77

35:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 963, ptr noundef nonnull @.str.1) #24
  br label %77

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !287
  %39 = and i32 %38, 16777216
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %43 = sext i32 %11 to i64
  %44 = getelementptr inbounds %struct.bitmap_head_def, ptr %42, i64 %43
  %45 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %44, i32 noundef %6) #24
  br label %46

46:                                               ; preds = %41, %36
  %47 = and i32 %38, 33554432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %51 = sext i32 %11 to i64
  %52 = getelementptr inbounds %struct.bitmap_head_def, ptr %50, i64 %51
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %52, i32 noundef %6) #24
  br label %54

54:                                               ; preds = %49, %46
  %55 = and i32 %38, 67108864
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
  %59 = sext i32 %11 to i64
  %60 = getelementptr inbounds %struct.bitmap_head_def, ptr %58, i64 %59
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %60, i32 noundef %6) #24
  br label %62

62:                                               ; preds = %57, %54
  %63 = and i32 %38, 16777215
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %67 = getelementptr inbounds %struct.haifa_sched_info, ptr %66, i64 0, i32 17
  %68 = load i32, ptr %67, align 8, !tbaa !290
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 979, ptr noundef nonnull @.str.1) #24
  br label %72

72:                                               ; preds = %65, %71
  %73 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !289
  %74 = sext i32 %11 to i64
  %75 = getelementptr inbounds %struct.bitmap_head_def, ptr %73, i64 %74
  %76 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %75, i32 noundef %6) #24
  br label %77

77:                                               ; preds = %62, %72, %20, %25, %30, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sd_add_or_update_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !277 {
  %3 = tail call fastcc i32 @add_or_update_dep_1(ptr noundef %0, i8 noundef zeroext %1, ptr noundef null, ptr noundef null) #25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @add_or_update_dep_1(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !354 !PGOFuncName !381 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !279
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %20, !prof !382

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -11
  %17 = icmp ult i32 %16, -4
  %18 = icmp eq ptr %6, %13
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %21, !prof !383

20:                                               ; preds = %11, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1125, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %11, %20
  %22 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !356

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  br label %32

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @ask_dependency_caches(ptr noundef nonnull %0) #25
  switch i32 %26, label %27 [
    i32 1, label %59
    i32 2, label %30
    i32 3, label %44
  ]

27:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1149, ptr noundef nonnull @.str.1) #24
  %28 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %31, !prof !384

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  br label %32

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1160, ptr noundef nonnull @.str.1) #24
  br label %32

32:                                               ; preds = %30, %24, %27, %31
  %33 = phi i1 [ true, %24 ], [ true, %27 ], [ true, %31 ], [ false, %30 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !279
  %35 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !285
  %37 = call fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %34, ptr noundef %36, i8 noundef zeroext %1, ptr noundef nonnull %5) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42, !prof !385

39:                                               ; preds = %32
  br i1 %33, label %41, label %40, !prof !371

40:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @.str.1) #24
  br label %41

41:                                               ; preds = %39, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %44

42:                                               ; preds = %32
  %43 = call fastcc i32 @update_dep(ptr noundef nonnull %37, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct._sd_iterator) align 8 %5, ptr noundef %2, ptr noundef %3) #25, !range !386
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %59

44:                                               ; preds = %41, %25
  %45 = icmp eq ptr %2, null
  br i1 %45, label %58, label %46, !prof !371

46:                                               ; preds = %44
  %47 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
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
  %55 = load i32, ptr %54, align 4, !tbaa !287
  %56 = call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3) #25, !range !387
  %57 = call i32 @set_dep_weak(i32 noundef %55, i32 noundef 63, i32 noundef %56) #25
  store i32 %57, ptr %54, align 4, !tbaa !287
  br label %58

58:                                               ; preds = %53, %44
  call void @sd_add_dep(ptr noundef nonnull %0, i8 noundef zeroext %1) #25
  br label %59

59:                                               ; preds = %42, %25, %58
  %60 = phi i32 [ 3, %58 ], [ %43, %42 ], [ %26, %25 ]
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_resolve_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #0 !prof !277 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !388
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = load ptr, ptr %4, align 8, !tbaa !373
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !279
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !285
  %10 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %11 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !290
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !287
  %18 = and i32 %17, 16777215
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @h_d_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !295
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %21, i32 noundef %25) #25
  %27 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 3
  br label %36

28:                                               ; preds = %15, %1
  %29 = load ptr, ptr @h_d_i_d, align 8
  %30 = load ptr, ptr @sched_luids, align 8
  %31 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !295
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #25
  %34 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #25
  %35 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %34, i64 0, i32 2
  br label %36

36:                                               ; preds = %28, %20
  %37 = phi ptr [ %35, %28 ], [ %27, %20 ]
  %38 = phi ptr [ %34, %28 ], [ %26, %20 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !289
  %40 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %38, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !336
  tail call fastcc void @move_dep_link(ptr noundef nonnull %5, ptr noundef %39, ptr noundef %41) #25
  %42 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 2
  %43 = load ptr, ptr @h_d_i_d, align 8
  %44 = load ptr, ptr @sched_luids, align 8
  %45 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !295
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %44, i32 noundef %46) #25
  %48 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %43, i32 noundef %47) #25
  %49 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !335
  %51 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !337
  tail call fastcc void @move_dep_link(ptr noundef nonnull %42, ptr noundef %50, ptr noundef %52) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_dep_link(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !277 !PGOFuncName !390 {
  tail call fastcc void @remove_from_deps_list(ptr noundef %0, ptr noundef %1) #25
  tail call fastcc void @add_to_deps_list(ptr noundef %0, ptr noundef %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_copy_back_deps(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !277 {
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
  %14 = load ptr, ptr %5, align 8, !tbaa !289
  call fastcc void @copy_dep(ptr noundef nonnull %6, ptr noundef %14) #25
  store ptr %0, ptr %12, align 8, !tbaa !285
  call void @sd_add_dep(ptr noundef nonnull %6, i8 noundef zeroext %2) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %15 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %13, !llvm.loop !391

17:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !392 !PGOFuncName !393 {
  store i32 %2, ptr %0, align 8, !tbaa !394
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %5, align 8, !tbaa !388
  %6 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !396
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sd_iterator_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !prof !397 !PGOFuncName !398 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !388
  %6 = load ptr, ptr %5, align 8, !tbaa !289
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !399

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  br label %15

11:                                               ; preds = %22, %2
  %12 = phi ptr [ %6, %2 ], [ %23, %22 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !373
  %14 = getelementptr inbounds %struct._dep_node, ptr %13, i64 0, i32 1
  br label %25

15:                                               ; preds = %8, %22
  %16 = load i32, ptr %0, align 8, !tbaa !394
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18, !prof !400

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %19 = load ptr, ptr %9, align 8, !tbaa !395
  call void @sd_next_list(ptr noundef %19, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %10) #25
  %20 = load ptr, ptr %3, align 8, !tbaa !289
  store ptr %20, ptr %4, align 8, !tbaa !388
  %21 = icmp eq ptr %20, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br i1 %21, label %25, label %22, !prof !401

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !289
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %11, !prof !402

25:                                               ; preds = %15, %18, %11
  %26 = phi ptr [ %14, %11 ], [ null, %18 ], [ null, %15 ]
  %27 = phi i8 [ 1, %11 ], [ 0, %18 ], [ 0, %15 ]
  store ptr %26, ptr %1, align 8, !tbaa !289
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !403 !PGOFuncName !404 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !388
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !388
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_delete_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #0 !prof !277 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !388
  %6 = load ptr, ptr %5, align 8, !tbaa !289
  %7 = load ptr, ptr %6, align 8, !tbaa !373
  %8 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !279
  %10 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !295
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #25
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !295
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %20) #25
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bitmap_head_def, ptr %12, i64 %22
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %23, i32 noundef %18) #24
  %25 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
  %26 = getelementptr inbounds %struct.bitmap_head_def, ptr %25, i64 %22
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %26, i32 noundef %18) #24
  %28 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %22
  %30 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %29, i32 noundef %18) #24
  %31 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %32 = getelementptr inbounds %struct.haifa_sched_info, ptr %31, i64 0, i32 17
  %33 = load i32, ptr %32, align 8, !tbaa !290
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %14
  %37 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !289
  %38 = getelementptr inbounds %struct.bitmap_head_def, ptr %37, i64 %22
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %38, i32 noundef %18) #24
  br label %40

40:                                               ; preds = %14, %36, %1
  %41 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  %42 = load i8, ptr %41, align 8, !tbaa !396
  call fastcc void @get_back_and_forw_lists(ptr noundef nonnull %8, i8 noundef zeroext %42, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %43 = load ptr, ptr %2, align 8, !tbaa !289
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %7, ptr noundef %43) #25
  %44 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 2
  %45 = load ptr, ptr %3, align 8, !tbaa !289
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %44, ptr noundef %45) #25
  tail call fastcc void @delete_dep_node(ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_deps_list(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !376 !PGOFuncName !405 {
  tail call fastcc void @detach_dep_link(ptr noundef %0) #25
  %3 = tail call fastcc zeroext i8 @depl_on_debug_p(ptr noundef %0) #25, !range !314
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !378

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !341
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !341
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dep_node(ptr noundef %0) unnamed_addr #0 !prof !368 !PGOFuncName !406 {
  %2 = tail call fastcc zeroext i8 @dep_link_is_detached_p(ptr noundef %0) #25, !range !314
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !407

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._dep_node, ptr %0, i64 0, i32 2
  %6 = tail call fastcc zeroext i8 @dep_link_is_detached_p(ptr noundef nonnull %5) #25, !range !314
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !407

8:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @dn_pool_diff, align 4, !tbaa !297
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr @dn_pool_diff, align 4, !tbaa !297
  %12 = load ptr, ptr @dn_pool, align 8, !tbaa !289
  tail call void @pool_free(ptr noundef %12, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_debug_lists(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !277 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !289
  tail call fastcc void @dump_lists(ptr noundef %3, ptr noundef %0, i32 noundef %1) #25
  %4 = load ptr, ptr @stderr, align 8, !tbaa !289
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_lists(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !277 !PGOFuncName !408 {
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
  %12 = load ptr, ptr %5, align 8, !tbaa !289
  tail call fastcc void @dump_dep(ptr noundef %0, ptr noundef %12, i32 noundef 7) #25
  %13 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %14 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !409

16:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_set(i32 noundef %0) #0 !prof !410 {
  %2 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_clobber(i32 noundef %0) #0 !prof !411 {
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !289
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_use(i32 noundef %0) #0 !prof !412 {
  %2 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ds_to_dt(i32 noundef %0) local_unnamed_addr #0 !prof !413 {
  %2 = and i32 %0, 16777216
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11, !prof !414

4:                                                ; preds = %1
  %5 = and i32 %0, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11, !prof !415

7:                                                ; preds = %4
  %8 = and i32 %0, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !416

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1726, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %10, %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 11, %4 ], [ 12, %7 ], [ 12, %10 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_extend_reg_info_p() local_unnamed_addr #0 !prof !417 {
  %1 = load i32, ptr @max_regno, align 4, !tbaa !297
  %2 = add i32 %1, -1
  %3 = zext i32 %2 to i64
  %4 = load i64, ptr @reg_info_p_size, align 8, !tbaa !418
  %5 = icmp ugt i64 %4, %3
  br i1 %5, label %20, label %6, !prof !420

6:                                                ; preds = %0
  %7 = add nsw i32 %1, 128
  %8 = sext i32 %7 to i64
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2095, ptr noundef nonnull @.str.1) #24
  %15 = load i64, ptr @reg_info_p_size, align 8, !tbaa !418
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi i64 [ %4, %11 ], [ %15, %14 ]
  %18 = load ptr, ptr @reg_info_p, align 8, !tbaa !289
  %19 = tail call ptr @xrecalloc(ptr noundef %18, i64 noundef %8, i64 noundef %17, i64 noundef 28) #24
  store ptr %19, ptr @reg_info_p, align 8, !tbaa !289
  store i64 %8, ptr @reg_info_p_size, align 8, !tbaa !418
  br label %20

20:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: optsize
declare ptr @xrecalloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_analyze_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !421 {
  %3 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %4 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !422
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !424

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
  ], !prof !425

11:                                               ; preds = %8, %8, %8
  %12 = and i32 %9, 65535
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = icmp eq i32 %12, 9
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %38, !prof !426

19:                                               ; preds = %11
  %20 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22, !prof !427

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %1) #24
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %38, !prof !428

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !429
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !429
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !289
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 14, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !432
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %34, !prof !427

33:                                               ; preds = %25
  tail call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1) #25
  br label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !434
  %37 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef %36) #24
  store ptr %37, ptr %35, align 8, !tbaa !434
  br label %38

38:                                               ; preds = %33, %34, %22, %11
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_insn(ptr noundef nonnull %0, ptr noundef %40, ptr noundef nonnull %1) #25
  br label %127

41:                                               ; preds = %8
  %42 = load ptr, ptr @h_d_i_d, align 8
  %43 = load ptr, ptr @sched_luids, align 8
  %44 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !295
  %46 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %45) #25
  %47 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %42, i32 noundef %46) #25
  %48 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %47, i64 0, i32 7
  %49 = load i8, ptr %48, align 8
  %50 = or i8 %49, 1
  store i8 %50, ptr %48, align 8
  %51 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 30, ptr noundef null) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !435

53:                                               ; preds = %41
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %96

54:                                               ; preds = %41, %93
  %55 = phi i64 [ %94, %93 ], [ 0, %41 ]
  %56 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !295
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59, !prof !436

59:                                               ; preds = %54
  %60 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  %61 = trunc i64 %55 to i32
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %60, i32 noundef %61) #24
  %63 = shl nuw nsw i64 1, %55
  %64 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  %65 = or i64 %64, %63
  store i64 %65, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  br label %93

66:                                               ; preds = %54
  %67 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !418
  %68 = shl nuw nsw i64 1, %55
  %69 = and i64 %67, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71, !prof !437

71:                                               ; preds = %66
  %72 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !289
  %73 = trunc i64 %55 to i32
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %72, i32 noundef %73) #24
  br label %93

75:                                               ; preds = %66
  %76 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %55
  %77 = load i8, ptr %76, align 1, !tbaa !295
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79, !prof !438

79:                                               ; preds = %75
  %80 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  %81 = or i64 %80, %68
  store i64 %81, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  br label %93

82:                                               ; preds = %75
  %83 = trunc i64 %55 to i32
  switch i32 %83, label %93 [
    i32 20, label %90
    i32 6, label %84
  ], !prof !439

84:                                               ; preds = %82
  %85 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %86 = icmp eq i32 %85, 0
  %87 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %88 = icmp ne i8 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %93, !prof !440

90:                                               ; preds = %82, %84
  %91 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  %92 = or i64 %91, %68
  store i64 %92, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  br label %93

93:                                               ; preds = %82, %59, %79, %84, %90, %71
  %94 = add nuw nsw i64 %55, 1
  %95 = icmp eq i64 %94, 53
  br i1 %95, label %96, label %54, !prof !441, !llvm.loop !442

96:                                               ; preds = %93, %53
  %97 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %97, i32 noundef 1, i32 noundef 12) #25
  %98 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %99, ptr noundef nonnull %1) #25
  %100 = load i32, ptr %1, align 8
  %101 = and i32 %100, 268435456
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103, !prof !435

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
  br i1 %113, label %114, label %127, !prof !443

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %115) #24
  %116 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #24
  store ptr %116, ptr %115, align 8, !tbaa !444
  %117 = tail call fastcc zeroext i8 @call_may_noreturn_p(ptr noundef nonnull %1) #25, !range !314
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119, !prof !445

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %120) #24
  %121 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #24
  store ptr %121, ptr %120, align 8, !tbaa !446
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127, !prof !445

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 1, ptr %126, align 8, !tbaa !447
  br label %127

127:                                              ; preds = %105, %125, %122, %8, %38
  %128 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %129 = getelementptr inbounds %struct.sched_deps_info_def, ptr %128, i64 0, i32 12
  %130 = load i8, ptr %129, align 8
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %134, label %133, !prof !448

133:                                              ; preds = %127
  tail call void @cselib_process_insn(ptr noundef nonnull %1) #24
  br label %134

134:                                              ; preds = %133, %127
  %135 = load i32, ptr %1, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %144, !prof !449

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %140 = load i32, ptr %139, align 8, !tbaa !295
  %141 = add i32 %140, -7
  %142 = icmp ult i32 %141, 2
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3347, ptr noundef nonnull @.str.1) #24
  br label %144

144:                                              ; preds = %138, %143, %134
  %145 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %146 = getelementptr inbounds %struct.sched_deps_info_def, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !450
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149, !prof !424

149:                                              ; preds = %144
  tail call void %147() #24
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32, ptr %1, align 8
  %152 = and i32 %151, 268500990
  %153 = icmp eq i32 %152, 268435464
  br i1 %153, label %154, label %158, !prof !451

154:                                              ; preds = %150
  %155 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call fastcc void @fixup_sched_groups(ptr noundef nonnull %1) #25
  br label %158

158:                                              ; preds = %150, %157, %154
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !452 !PGOFuncName !453 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %14, label %6, !prof !454

6:                                                ; preds = %4
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef %1, ptr noundef %0, i32 noundef 1, i32 noundef 12) #25
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14, !prof !455

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %12) #24
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  store i32 0, ptr %13, align 8, !tbaa !456
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
  br i1 %22, label %23, label %28, !prof !455

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %24) #24
  %25 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !457
  %26 = tail call ptr @alloc_INSN_LIST(ptr noundef %1, ptr noundef null) #24
  store ptr %26, ptr %18, align 8, !tbaa !434
  %27 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !429
  br label %28

28:                                               ; preds = %23, %14
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !421 !PGOFuncName !458 {
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
  %13 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !449

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  tail call void @extract_insn(ptr noundef %2) #24
  tail call void @preprocess_constraints() #24
  call void @ira_implicitly_set_insn_hard_regs(ptr noundef nonnull %6) #24
  %16 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !418
  %17 = xor i64 %16, -1
  %18 = load i64, ptr %6, align 8, !tbaa !418
  %19 = and i64 %18, %17
  %20 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !418
  %21 = or i64 %20, %19
  store i64 %21, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !418
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i32, ptr %2, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 8
  %26 = icmp eq i32 %12, 23
  %27 = select i1 %25, i1 %26, i1 false, !prof !459
  %28 = zext i1 %27 to i8
  store i8 %28, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
  %29 = call i32 @may_trap_p(ptr noundef nonnull %1) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !460

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !446
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %33, i32 noundef 1, i32 noundef 12) #25
  br label %34

34:                                               ; preds = %31, %22
  %35 = icmp eq i32 %12, 14
  br i1 %35, label %36, label %43, !prof !449

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !295
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %2) #25
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !295
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
  ], !prof !461

47:                                               ; preds = %43, %43
  %48 = icmp eq i32 %44, 25
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %2) #25
  br i1 %48, label %49, label %86, !prof !462

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !444
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %51, i32 noundef 1, i32 noundef 11) #25
  br label %86

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !295
  %55 = load i32, ptr %54, align 8, !tbaa !463
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57, !prof !465

57:                                               ; preds = %52
  %58 = add i32 %55, -1
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %57, %81
  %61 = phi i64 [ %59, %57 ], [ %82, %81 ]
  %62 = load ptr, ptr %53, align 8, !tbaa !295
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !289
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 14
  br i1 %67, label %68, label %75, !prof !466

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !295
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %2) #25
  %71 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !295
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
  br i1 %83, label %85, label %60, !prof !467, !llvm.loop !468

84:                                               ; preds = %43
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %2) #25
  br label %86

85:                                               ; preds = %81, %52
  store i32 -1, ptr %4, align 4, !tbaa !297
  br label %86

86:                                               ; preds = %85, %84, %47, %49
  %87 = load i32, ptr %2, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %111, !prof !469

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !295
  %93 = icmp eq ptr %92, null
  br i1 %93, label %107, label %94, !prof !470

94:                                               ; preds = %90, %103
  %95 = phi ptr [ %105, %103 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !295
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
  %105 = load ptr, ptr %104, align 8, !tbaa !295
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %94, !prof !471, !llvm.loop !472

107:                                              ; preds = %103, %90
  %108 = call ptr @find_reg_note(ptr noundef nonnull %2, i32 noundef 30, ptr noundef null) #24
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110, !prof !435

110:                                              ; preds = %107
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %111

111:                                              ; preds = %107, %110, %86
  %112 = load i32, ptr %2, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %115, label %208, !prof !473

115:                                              ; preds = %111
  %116 = call ptr @next_nonnote_insn(ptr noundef nonnull %2) #24
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118, !prof !474

118:                                              ; preds = %115, %122
  %119 = phi ptr [ %123, %122 ], [ %116, %115 ]
  %120 = load i32, ptr %119, align 8
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %126 [
    i16 7, label %122
    i16 11, label %125
  ], !prof !475

122:                                              ; preds = %118
  %123 = call ptr @next_nonnote_insn(ptr noundef nonnull %119) #24
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %118, !prof !476, !llvm.loop !477

125:                                              ; preds = %118
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %208

126:                                              ; preds = %122, %118, %115
  %127 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %128 = load ptr, ptr %127, align 8, !tbaa !478
  %129 = icmp eq ptr %128, null
  br i1 %129, label %163, label %130, !prof !479

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #26
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %7, ptr noundef nonnull @reg_obstack) #25
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %8, ptr noundef nonnull @reg_obstack) #25
  %131 = load ptr, ptr %127, align 8, !tbaa !478
  %132 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void %131(ptr noundef nonnull %2, ptr noundef nonnull %132, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %4) #25
  %133 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %160, label %135, !prof !480

135:                                              ; preds = %130, %157
  %136 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %137 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %138 = load ptr, ptr %136, align 8, !tbaa !481
  %139 = load i32, ptr %4, align 4, !tbaa !297
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %142, i32 noundef 0, i32 noundef 12) #25
  %143 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !484
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %144, i32 noundef 0, i32 noundef 12) #25
  %145 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !485
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %146, i32 noundef 0, i32 noundef 12) #25
  %147 = load i8, ptr %137, align 4
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %135
  %151 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140
  %152 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 4
  %153 = load i32, ptr %152, align 8, !tbaa !486
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !486
  %155 = load ptr, ptr %151, align 8, !tbaa !487
  %156 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %155) #24
  store ptr %156, ptr %151, align 8, !tbaa !487
  br label %157

157:                                              ; preds = %150, %135
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %158 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %135, !prof !471, !llvm.loop !488

160:                                              ; preds = %157, %130
  %161 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  %162 = call zeroext i8 @bitmap_ior_into(ptr noundef %161, ptr noundef nonnull %8) #24
  call void @bitmap_clear(ptr noundef nonnull %7) #24
  call void @bitmap_clear(ptr noundef nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  br label %163

163:                                              ; preds = %160, %126
  %164 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !295
  %166 = icmp eq ptr %165, null
  br i1 %166, label %179, label %167, !prof !489

167:                                              ; preds = %163, %175
  %168 = phi ptr [ %177, %175 ], [ %165, %163 ]
  %169 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !295
  %171 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %170) #25, !range !314
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %175, !prof !490

173:                                              ; preds = %167
  %174 = load ptr, ptr %169, align 8, !tbaa !295
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef %174, i32 noundef 11) #25
  br label %175

175:                                              ; preds = %173, %167
  %176 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !295
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %167, !prof !491, !llvm.loop !492

179:                                              ; preds = %175, %163
  %180 = load ptr, ptr %0, align 8, !tbaa !295
  %181 = icmp eq ptr %180, null
  br i1 %181, label %205, label %182, !prof !493

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %184

184:                                              ; preds = %182, %200
  %185 = phi ptr [ %203, %200 ], [ %180, %182 ]
  %186 = phi ptr [ %202, %200 ], [ %183, %182 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !295
  %188 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !295
  %190 = load i32, ptr %189, align 8
  %191 = and i32 %190, 134217728
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193, !prof !494

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !295
  %196 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %195) #25, !range !314
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load ptr, ptr %194, align 8, !tbaa !295
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef %199, i32 noundef 11) #25
  br label %200

200:                                              ; preds = %198, %193, %184
  %201 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %202 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %201, align 8, !tbaa !295
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %184, !prof !495, !llvm.loop !496

205:                                              ; preds = %200, %179
  %206 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %207 = load ptr, ptr %206, align 8, !tbaa !434
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %207, i32 noundef 1, i32 noundef 12) #25
  br label %208

208:                                              ; preds = %125, %205, %111
  %209 = load i32, ptr %2, align 8
  %210 = and i32 %209, 65535
  %211 = add nsw i32 %210, -9
  %212 = icmp ult i32 %211, 2
  br i1 %212, label %213, label %218, !prof !497

213:                                              ; preds = %208
  %214 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %2) #24
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %225, !prof !498

216:                                              ; preds = %213
  %217 = load i32, ptr %2, align 8
  br label %218

218:                                              ; preds = %216, %208
  %219 = phi i32 [ %217, %216 ], [ %209, %208 ]
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %226, !prof !459

222:                                              ; preds = %218
  %223 = call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %2) #24
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %226, label %225, !prof !499

225:                                              ; preds = %222, %213
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %226

226:                                              ; preds = %225, %222, %218
  %227 = load i8, ptr @sched_pressure_p, align 1, !tbaa !295
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %230, label %229, !prof !448

229:                                              ; preds = %226
  call fastcc void @setup_insn_reg_uses(ptr noundef %0, ptr noundef nonnull %2) #25
  call fastcc void @setup_insn_reg_pressure_info(ptr noundef nonnull %2) #25
  br label %230

230:                                              ; preds = %229, %226
  %231 = load i32, ptr %2, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 7
  br i1 %233, label %234, label %303, !prof !449

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 12
  %236 = load ptr, ptr %235, align 8, !tbaa !500
  %237 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %238 = load i8, ptr %237, align 4
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  store ptr %2, ptr %235, align 8, !tbaa !500
  br label %242

242:                                              ; preds = %241, %234
  %243 = icmp eq ptr %236, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %242
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %236, i32 noundef 12) #25
  br label %245

245:                                              ; preds = %244, %242
  %246 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %247 = load ptr, ptr %246, align 8, !tbaa !444
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %247, i32 noundef 1, i32 noundef 12) #25
  %248 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %249 = load ptr, ptr %248, align 8, !tbaa !295
  %250 = icmp eq ptr %249, null
  br i1 %250, label %266, label %251

251:                                              ; preds = %245, %262
  %252 = phi ptr [ %264, %262 ], [ %249, %245 ]
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !295
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 9
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258, %251
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %254, i32 noundef 12) #25
  br label %262

262:                                              ; preds = %258, %261
  %263 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1, i32 0, i32 0, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !295
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %251, !llvm.loop !501

266:                                              ; preds = %262, %245
  %267 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %267, ptr noundef nonnull %4) #25
  %268 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %292, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %272

272:                                              ; preds = %270, %287
  %273 = load ptr, ptr %271, align 8, !tbaa !481
  %274 = load i32, ptr %4, align 4, !tbaa !297
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.deps_reg, ptr %273, i64 %275, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %277, i32 noundef 1, i32 noundef 12) #25
  %278 = getelementptr inbounds %struct.deps_reg, ptr %273, i64 %275, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !485
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %279, i32 noundef 1, i32 noundef 12) #25
  %280 = load i8, ptr %237, align 4
  %281 = and i8 %280, 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %272
  %284 = getelementptr inbounds %struct.deps_reg, ptr %273, i64 %275
  %285 = load ptr, ptr %284, align 8, !tbaa !487
  %286 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %285) #24
  store ptr %286, ptr %284, align 8, !tbaa !487
  br label %287

287:                                              ; preds = %283, %272
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %288 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %272, !llvm.loop !502

290:                                              ; preds = %287
  %291 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  br label %292

292:                                              ; preds = %290, %266
  %293 = phi ptr [ %291, %290 ], [ %267, %266 ]
  call void @bitmap_clear(ptr noundef %293) #24
  %294 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !295
  %296 = icmp eq ptr %295, null
  br i1 %296, label %492, label %297

297:                                              ; preds = %292
  %298 = load i32, ptr %295, align 8
  %299 = and i32 %298, 65535
  %300 = add nsw i32 %299, -11
  %301 = icmp ult i32 %300, -3
  br i1 %301, label %492, label %302

302:                                              ; preds = %297
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %295, i32 noundef 12) #25
  br label %492

303:                                              ; preds = %230
  %304 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %304, ptr noundef nonnull %4) #25
  %305 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %310, label %307, !prof !503

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %309 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %313

310:                                              ; preds = %333, %303
  %311 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %312 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %336

313:                                              ; preds = %307, %333
  %314 = load ptr, ptr %308, align 8, !tbaa !481
  %315 = load i32, ptr %4, align 4, !tbaa !297
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %318, i32 noundef 0, i32 noundef 0) #25
  %319 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !484
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %320, i32 noundef 0, i32 noundef 12) #25
  %321 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !485
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %322, i32 noundef 0, i32 noundef 0) #25
  %323 = load i8, ptr %309, align 4
  %324 = and i8 %323, 1
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %333, !prof !504

326:                                              ; preds = %313
  %327 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316
  %328 = load ptr, ptr %327, align 8, !tbaa !487
  %329 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %328) #24
  store ptr %329, ptr %327, align 8, !tbaa !487
  %330 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 4
  %331 = load i32, ptr %330, align 8, !tbaa !486
  %332 = add nsw i32 %331, 1
  store i32 %332, ptr %330, align 8, !tbaa !486
  br label %333

333:                                              ; preds = %326, %313
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %334 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %310, label %313, !prof !505, !llvm.loop !506

336:                                              ; preds = %310, %360
  %337 = phi i64 [ 0, %310 ], [ %361, %360 ]
  %338 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  %339 = shl nuw nsw i64 1, %337
  %340 = and i64 %338, %339
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %360, label %342, !prof !507

342:                                              ; preds = %336
  %343 = load ptr, ptr %311, align 8, !tbaa !481
  %344 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %345, i32 noundef 0, i32 noundef 0) #25
  %346 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !484
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %347, i32 noundef 0, i32 noundef 12) #25
  %348 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !485
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %349, i32 noundef 0, i32 noundef 0) #25
  %350 = load i8, ptr %312, align 4
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %360, !prof !508

353:                                              ; preds = %342
  %354 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337
  %355 = load ptr, ptr %354, align 8, !tbaa !487
  %356 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %355) #24
  store ptr %356, ptr %354, align 8, !tbaa !487
  %357 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 4
  %358 = load i32, ptr %357, align 8, !tbaa !486
  %359 = add nsw i32 %358, 1
  store i32 %359, ptr %357, align 8, !tbaa !486
  br label %360

360:                                              ; preds = %342, %353, %336
  %361 = add nuw nsw i64 %337, 1
  %362 = icmp eq i64 %361, 53
  br i1 %362, label %363, label %336, !prof !509, !llvm.loop !510

363:                                              ; preds = %360
  store i32 53, ptr %4, align 4, !tbaa !297
  %364 = call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %2) #25, !range !314
  %365 = icmp eq i8 %364, 0
  %366 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !289
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %366, ptr noundef nonnull %4) #25
  %367 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %368 = icmp eq i8 %367, 0
  br i1 %365, label %420, label %369, !prof !511

369:                                              ; preds = %363
  br i1 %368, label %393, label %370, !prof !512

370:                                              ; preds = %369, %390
  %371 = load ptr, ptr %311, align 8, !tbaa !481
  %372 = load i32, ptr %4, align 4, !tbaa !297
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373
  %375 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %376, i32 noundef 0, i32 noundef 11) #25
  %377 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !484
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %378, i32 noundef 0, i32 noundef 12) #25
  %379 = load ptr, ptr %374, align 8, !tbaa !487
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %379, i32 noundef 0, i32 noundef 12) #25
  %380 = load i8, ptr %312, align 4
  %381 = and i8 %380, 1
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %370
  %384 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !485
  %386 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %385) #24
  store ptr %386, ptr %384, align 8, !tbaa !485
  %387 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 5
  %388 = load i32, ptr %387, align 4, !tbaa !513
  %389 = add nsw i32 %388, 1
  store i32 %389, ptr %387, align 4, !tbaa !513
  br label %390

390:                                              ; preds = %383, %370
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %391 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %370, !prof !471, !llvm.loop !514

393:                                              ; preds = %390, %369
  %394 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %394, ptr noundef nonnull %4) #25
  %395 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %492, label %397, !prof !512

397:                                              ; preds = %393, %417
  %398 = load ptr, ptr %311, align 8, !tbaa !481
  %399 = load i32, ptr %4, align 4, !tbaa !297
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400
  %402 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %403, i32 noundef 0, i32 noundef 11) #25
  %404 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !484
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %405, i32 noundef 0, i32 noundef 12) #25
  %406 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !485
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %407, i32 noundef 0, i32 noundef 11) #25
  %408 = load ptr, ptr %401, align 8, !tbaa !487
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %408, i32 noundef 0, i32 noundef 12) #25
  %409 = load i8, ptr %312, align 4
  %410 = and i8 %409, 1
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %397
  %413 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  %414 = load ptr, ptr %402, align 8, !tbaa !482
  %415 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %414) #24
  store ptr %415, ptr %402, align 8, !tbaa !482
  %416 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %413, i32 noundef %399) #24
  br label %417

417:                                              ; preds = %412, %397
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %418 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %492, label %397, !prof !471, !llvm.loop !515

420:                                              ; preds = %363
  br i1 %368, label %467, label %421, !prof !516

421:                                              ; preds = %420, %464
  %422 = load ptr, ptr %311, align 8, !tbaa !481
  %423 = load i32, ptr %4, align 4, !tbaa !297
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424
  %426 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 4
  %427 = load i32, ptr %426, align 8, !tbaa !486
  %428 = load ptr, ptr @compiler_params, align 8, !tbaa !289
  %429 = getelementptr inbounds %struct.param_info, ptr %428, i64 14, i32 1
  %430 = load i32, ptr %429, align 8, !tbaa !432
  %431 = icmp sgt i32 %427, %430
  br i1 %431, label %436, label %432, !prof !517

432:                                              ; preds = %421
  %433 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 5
  %434 = load i32, ptr %433, align 4, !tbaa !513
  %435 = icmp sgt i32 %434, %430
  br i1 %435, label %436, label %447, !prof !518

436:                                              ; preds = %432, %421
  %437 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 1
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %437, i32 noundef 0, i32 noundef 11) #25
  %438 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 2
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %438, i32 noundef 0, i32 noundef 12) #25
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %425, i32 noundef 0, i32 noundef 12) #25
  %439 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 3
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %439, i32 noundef 0, i32 noundef 11) #25
  %440 = load i8, ptr %312, align 4
  %441 = and i8 %440, 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %443, label %453, !prof !519

443:                                              ; preds = %436
  %444 = load ptr, ptr %437, align 8, !tbaa !482
  %445 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %444) #24
  store ptr %445, ptr %437, align 8, !tbaa !482
  %446 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 5
  store i32 0, ptr %446, align 4, !tbaa !513
  store i32 0, ptr %426, align 8, !tbaa !486
  br label %453

447:                                              ; preds = %432
  %448 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %449, i32 noundef 0, i32 noundef 11) #25
  %450 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !484
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %451, i32 noundef 0, i32 noundef 12) #25
  %452 = load ptr, ptr %425, align 8, !tbaa !487
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %452, i32 noundef 0, i32 noundef 12) #25
  br label %453

453:                                              ; preds = %436, %443, %447
  %454 = load i8, ptr %312, align 4
  %455 = and i8 %454, 1
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %457, label %464, !prof !520

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 5
  %459 = load i32, ptr %458, align 4, !tbaa !513
  %460 = add nsw i32 %459, 1
  store i32 %460, ptr %458, align 4, !tbaa !513
  %461 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 3
  %462 = load ptr, ptr %461, align 8, !tbaa !485
  %463 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %462) #24
  store ptr %463, ptr %461, align 8, !tbaa !485
  br label %464

464:                                              ; preds = %457, %453
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %465 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %467, label %421, !prof !521, !llvm.loop !522

467:                                              ; preds = %464, %420
  %468 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %468, ptr noundef nonnull %4) #25
  %469 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %492, label %471, !prof !523

471:                                              ; preds = %467, %489
  %472 = load ptr, ptr %311, align 8, !tbaa !481
  %473 = load i32, ptr %4, align 4, !tbaa !297
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474
  %476 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474, i32 1
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %476, i32 noundef 0, i32 noundef 11) #25
  %477 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474, i32 2
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %477, i32 noundef 0, i32 noundef 12) #25
  %478 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474, i32 3
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %478, i32 noundef 0, i32 noundef 11) #25
  call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %475, i32 noundef 0, i32 noundef 12) #25
  %479 = load i8, ptr %312, align 4
  %480 = and i8 %479, 1
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %482, label %489, !prof !524

482:                                              ; preds = %471
  %483 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  %484 = load ptr, ptr %476, align 8, !tbaa !482
  %485 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %484) #24
  store ptr %485, ptr %476, align 8, !tbaa !482
  %486 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474, i32 4
  store i32 0, ptr %486, align 8, !tbaa !486
  %487 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474, i32 5
  store i32 0, ptr %487, align 4, !tbaa !513
  %488 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %483, i32 noundef %473) #24
  br label %489

489:                                              ; preds = %482, %471
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %490 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %471, !prof !525, !llvm.loop !526

492:                                              ; preds = %417, %489, %393, %467, %297, %292, %302
  %493 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %494 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %495

495:                                              ; preds = %492, %516
  %496 = phi i64 [ 0, %492 ], [ %517, %516 ]
  %497 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !418
  %498 = shl nuw nsw i64 1, %496
  %499 = and i64 %497, %498
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %516, label %501, !prof !527

501:                                              ; preds = %495
  %502 = load ptr, ptr %493, align 8, !tbaa !481
  %503 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496
  %504 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !482
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %505, i32 noundef 0, i32 noundef 12) #25
  %506 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496, i32 3
  %507 = load ptr, ptr %506, align 8, !tbaa !485
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %507, i32 noundef 0, i32 noundef 12) #25
  %508 = load ptr, ptr %503, align 8, !tbaa !487
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %508, i32 noundef 0, i32 noundef 12) #25
  %509 = load i8, ptr %494, align 4
  %510 = and i8 %509, 1
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %512, label %516

512:                                              ; preds = %501
  %513 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !484
  %515 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %514) #24
  store ptr %515, ptr %513, align 8, !tbaa !484
  br label %516

516:                                              ; preds = %501, %512, %495
  %517 = add nuw nsw i64 %496, 1
  %518 = icmp eq i64 %517, 53
  br i1 %518, label %519, label %495, !prof !509, !llvm.loop !528

519:                                              ; preds = %516
  store i32 53, ptr %4, align 4, !tbaa !297
  %520 = load i8, ptr %494, align 4
  %521 = and i8 %520, 1
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %523, label %553, !prof !529

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %525 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  %526 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %524, ptr noundef %525) #24
  %527 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !289
  %528 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %524, ptr noundef %527) #24
  %529 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  %530 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %524, ptr noundef %529) #24
  %531 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  br label %532

532:                                              ; preds = %523, %546
  %533 = phi i64 [ %531, %523 ], [ %547, %546 ]
  %534 = phi i64 [ 0, %523 ], [ %548, %546 ]
  %535 = shl nuw nsw i64 1, %534
  %536 = and i64 %533, %535
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %542, !prof !530

538:                                              ; preds = %532
  %539 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !418
  %540 = and i64 %539, %535
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %546, label %542, !prof !531

542:                                              ; preds = %538, %532
  %543 = trunc i64 %534 to i32
  %544 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %524, i32 noundef %543) #24
  %545 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  br label %546

546:                                              ; preds = %538, %542
  %547 = phi i64 [ %533, %538 ], [ %545, %542 ]
  %548 = add nuw nsw i64 %534, 1
  %549 = icmp eq i64 %548, 53
  br i1 %549, label %550, label %532, !prof !532, !llvm.loop !533

550:                                              ; preds = %546
  store i32 53, ptr %4, align 4, !tbaa !297
  %551 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %552 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 %551, ptr %552, align 8, !tbaa !534
  br label %553

553:                                              ; preds = %550, %519
  %554 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  call void @bitmap_clear(ptr noundef %554) #24
  %555 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !289
  call void @bitmap_clear(ptr noundef %555) #24
  %556 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  call void @bitmap_clear(ptr noundef %556) #24
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !418
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  %557 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %650, label %559, !prof !535

559:                                              ; preds = %553
  %560 = call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %2) #25, !range !314
  %561 = icmp eq i8 %560, 0
  %562 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %562, ptr noundef nonnull %4) #25
  %563 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %564 = icmp eq i8 %563, 0
  br i1 %561, label %586, label %565, !prof !536

565:                                              ; preds = %559
  br i1 %564, label %610, label %566

566:                                              ; preds = %565, %566
  %567 = load ptr, ptr %493, align 8, !tbaa !481
  %568 = load i32, ptr %4, align 4, !tbaa !297
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !487
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %571, i32 noundef 0, i32 noundef 12) #25
  %572 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569, i32 1
  %573 = load ptr, ptr %572, align 8, !tbaa !482
  %574 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %575 = icmp eq i32 %574, 2
  %576 = select i1 %575, i32 0, i32 12
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %573, i32 noundef 0, i32 noundef %576) #25
  %577 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !484
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %578, i32 noundef 0, i32 noundef 12) #25
  %579 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569, i32 3
  %580 = load ptr, ptr %579, align 8, !tbaa !485
  %581 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %582 = icmp eq i32 %581, 2
  %583 = select i1 %582, i32 0, i32 12
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %580, i32 noundef 0, i32 noundef %583) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %584 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %610, label %566, !llvm.loop !537

586:                                              ; preds = %559
  br i1 %564, label %610, label %587, !prof !538

587:                                              ; preds = %586, %607
  %588 = load ptr, ptr %493, align 8, !tbaa !481
  %589 = load i32, ptr %4, align 4, !tbaa !297
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %591, i32 noundef 0, i32 noundef 12) #25
  %592 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590, i32 1
  %593 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %594 = icmp eq i32 %593, 2
  %595 = select i1 %594, i32 0, i32 12
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %592, i32 noundef 0, i32 noundef %595) #25
  %596 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590, i32 2
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %596, i32 noundef 0, i32 noundef 12) #25
  %597 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590, i32 3
  %598 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %599 = icmp eq i32 %598, 2
  %600 = select i1 %599, i32 0, i32 12
  call fastcc void @add_dependence_list_and_free(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %597, i32 noundef 0, i32 noundef %600) #25
  %601 = load i8, ptr %494, align 4
  %602 = and i8 %601, 1
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %604, label %607, !prof !539

604:                                              ; preds = %587
  %605 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590, i32 4
  store i32 0, ptr %605, align 8, !tbaa !486
  %606 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590, i32 5
  store i32 0, ptr %606, align 4, !tbaa !513
  br label %607

607:                                              ; preds = %604, %587
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %608 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %610, label %587, !prof !540, !llvm.loop !541

610:                                              ; preds = %566, %607, %565, %586
  %611 = load i8, ptr %494, align 4
  %612 = and i8 %611, 1
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %632, !prof !542

614:                                              ; preds = %610
  %615 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %616 = load i32, ptr %615, align 8, !tbaa !543
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %632, label %618, !prof !544

618:                                              ; preds = %614
  %619 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  br label %620

620:                                              ; preds = %618, %620
  %621 = phi i64 [ 0, %618 ], [ %628, %620 ]
  %622 = load ptr, ptr %493, align 8, !tbaa !481
  %623 = getelementptr inbounds %struct.deps_reg, ptr %622, i64 %621, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !482
  %625 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %624) #24
  store ptr %625, ptr %623, align 8, !tbaa !482
  %626 = trunc i64 %621 to i32
  %627 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %619, i32 noundef %626) #24
  %628 = add nuw nsw i64 %621, 1
  %629 = load i32, ptr %615, align 8, !tbaa !543
  %630 = zext i32 %629 to i64
  %631 = icmp ult i64 %628, %630
  br i1 %631, label %620, label %632, !prof !545, !llvm.loop !546

632:                                              ; preds = %620, %614, %610
  %633 = load i32, ptr %2, align 8
  %634 = and i32 %633, 65535
  %635 = icmp eq i32 %634, 9
  br i1 %635, label %636, label %643, !prof !536

636:                                              ; preds = %632
  %637 = call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %642, label %639, !prof !547

639:                                              ; preds = %636
  %640 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %2) #24
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %642, label %643, !prof !536

642:                                              ; preds = %639, %636
  call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1) #25
  br label %643

643:                                              ; preds = %642, %639, %632
  %644 = load i8, ptr %494, align 4
  %645 = and i8 %644, 1
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %647, label %649, !prof !542

647:                                              ; preds = %643
  %648 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void @bitmap_clear(ptr noundef nonnull %648) #24
  br label %649

649:                                              ; preds = %647, %643
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %650

650:                                              ; preds = %649, %553
  %651 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  %652 = load i32, ptr %651, align 8, !tbaa !447
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %756, label %654, !prof !448

654:                                              ; preds = %650
  %655 = load i32, ptr %2, align 8
  %656 = and i32 %655, 65535
  %657 = add nsw i32 %656, -7
  %658 = icmp ult i32 %657, 4
  br i1 %658, label %659, label %671

659:                                              ; preds = %654
  %660 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %661 = load ptr, ptr %660, align 8, !tbaa !295
  %662 = load i32, ptr %661, align 8
  %663 = and i32 %662, 65535
  %664 = icmp eq i32 %663, 23
  br i1 %664, label %674, label %665

665:                                              ; preds = %659
  %666 = call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %661) #24
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %674

668:                                              ; preds = %665
  %669 = load i32, ptr %2, align 8
  %670 = and i32 %669, 65535
  br label %671

671:                                              ; preds = %668, %654
  %672 = phi i32 [ %670, %668 ], [ %656, %654 ]
  %673 = icmp eq i32 %672, 7
  br i1 %673, label %756, label %751

674:                                              ; preds = %659, %665
  %675 = phi ptr [ %666, %665 ], [ %661, %659 ]
  %676 = getelementptr inbounds %struct.rtx_def, ptr %675, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !295
  %678 = load i32, ptr %677, align 8
  %679 = and i32 %678, 65535
  %680 = icmp eq i32 %679, 39
  br i1 %680, label %681, label %685

681:                                              ; preds = %674
  %682 = getelementptr inbounds %struct.rtx_def, ptr %677, i64 0, i32 1
  %683 = load ptr, ptr %682, align 8, !tbaa !295
  %684 = load i32, ptr %683, align 8
  br label %685

685:                                              ; preds = %681, %674
  %686 = phi i32 [ %684, %681 ], [ %678, %674 ]
  %687 = phi ptr [ %683, %681 ], [ %677, %674 ]
  %688 = and i32 %686, 65535
  %689 = icmp eq i32 %688, 37
  br i1 %689, label %690, label %751

690:                                              ; preds = %685
  %691 = call fastcc i32 @rhs_regno(ptr noundef nonnull %687) #25
  %692 = getelementptr inbounds %struct.rtx_def, ptr %675, i64 0, i32 1, i32 0, i32 0, i64 1
  %693 = load ptr, ptr %692, align 8, !tbaa !295
  %694 = load i32, ptr %693, align 8
  %695 = and i32 %694, 65535
  %696 = icmp eq i32 %695, 39
  br i1 %696, label %697, label %701

697:                                              ; preds = %690
  %698 = getelementptr inbounds %struct.rtx_def, ptr %693, i64 0, i32 1
  %699 = load ptr, ptr %698, align 8, !tbaa !295
  %700 = load i32, ptr %699, align 8
  br label %701

701:                                              ; preds = %697, %690
  %702 = phi i32 [ %700, %697 ], [ %694, %690 ]
  %703 = phi ptr [ %699, %697 ], [ %693, %690 ]
  %704 = and i32 %702, 65535
  %705 = add nsw i32 %704, -49
  %706 = icmp ult i32 %705, 2
  br i1 %706, label %707, label %718

707:                                              ; preds = %701
  %708 = getelementptr inbounds %struct.rtx_def, ptr %703, i64 0, i32 1
  %709 = load ptr, ptr %708, align 8, !tbaa !295
  %710 = load i32, ptr %709, align 8
  %711 = and i32 %710, 65535
  %712 = icmp eq i32 %711, 37
  br i1 %712, label %713, label %751

713:                                              ; preds = %707
  %714 = call fastcc i32 @rhs_regno(ptr noundef nonnull %709) #25
  %715 = icmp eq i32 %714, 7
  %716 = icmp eq i32 %691, 7
  %717 = select i1 %715, i1 %716, i1 false
  br i1 %717, label %725, label %751

718:                                              ; preds = %701
  %719 = icmp eq i32 %704, 37
  br i1 %719, label %720, label %751

720:                                              ; preds = %718
  %721 = call fastcc i32 @rhs_regno(ptr noundef nonnull %703) #25
  %722 = icmp slt i32 %721, 53
  %723 = icmp slt i32 %691, 53
  %724 = select i1 %722, i1 true, i1 %723
  br i1 %724, label %725, label %751

725:                                              ; preds = %713, %720
  %726 = load i8, ptr %494, align 4
  %727 = and i8 %726, 1
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %729, label %733

729:                                              ; preds = %725
  %730 = load i32, ptr %651, align 8, !tbaa !447
  %731 = icmp eq i32 %730, 2
  br i1 %731, label %732, label %733

732:                                              ; preds = %729
  store i32 1, ptr %651, align 8, !tbaa !447
  br label %733

733:                                              ; preds = %732, %729, %725
  %734 = call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %735 = icmp eq i8 %734, 0
  %736 = load i32, ptr @sched_emulate_haifa_p, align 4
  %737 = icmp ne i32 %736, 0
  %738 = select i1 %735, i1 true, i1 %737
  br i1 %738, label %739, label %756

739:                                              ; preds = %733
  %740 = load i32, ptr %2, align 8
  %741 = or i32 %740, 268435456
  store i32 %741, ptr %2, align 8
  %742 = load ptr, ptr @h_d_i_d, align 8
  %743 = load ptr, ptr @sched_luids, align 8
  %744 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %745 = load i32, ptr %744, align 8, !tbaa !295
  %746 = call fastcc i32 @VEC_int_base_index(ptr noundef %743, i32 noundef %745) #25
  %747 = call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %742, i32 noundef %746) #25
  %748 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %747, i64 0, i32 7
  %749 = load i8, ptr %748, align 8
  %750 = or i8 %749, 1
  store i8 %750, ptr %748, align 8
  br label %756

751:                                              ; preds = %707, %713, %720, %718, %685, %671
  %752 = load i8, ptr %494, align 4
  %753 = and i8 %752, 1
  %754 = icmp eq i8 %753, 0
  br i1 %754, label %755, label %756

755:                                              ; preds = %751
  store i32 0, ptr %651, align 8, !tbaa !447
  br label %756

756:                                              ; preds = %671, %751, %755, %739, %733, %650
  %757 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %758 = getelementptr inbounds %struct.haifa_sched_info, ptr %757, i64 0, i32 17
  %759 = load i32, ptr %758, align 8, !tbaa !290
  %760 = and i32 %759, 2
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %776, label %762, !prof !448

762:                                              ; preds = %756
  %763 = call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %2, i32 noundef 0) #25, !range !314
  %764 = icmp eq i8 %763, 0
  br i1 %764, label %765, label %776

765:                                              ; preds = %762
  %766 = call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %767 = icmp eq i8 %766, 0
  br i1 %767, label %769, label %768

768:                                              ; preds = %765
  call void @sel_mark_hard_insn(ptr noundef nonnull %2) #24
  br label %776

769:                                              ; preds = %765
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %9, ptr noundef nonnull %2, i32 noundef 2) #25
  %770 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  %771 = icmp eq i8 %770, 0
  br i1 %771, label %775, label %772

772:                                              ; preds = %769, %772
  call fastcc void @change_spec_dep_to_hard(ptr noundef nonnull byval(%struct._sd_iterator) align 8 %9) #25
  %773 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  %774 = icmp eq i8 %773, 0
  br i1 %774, label %775, label %772, !llvm.loop !548

775:                                              ; preds = %772, %769
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #26
  br label %776

776:                                              ; preds = %768, %775, %762, %756
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_dependence_list_and_free(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !549 !PGOFuncName !550 {
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %2, align 8, !tbaa !289
  br i1 %9, label %12, label %11, !prof !551

11:                                               ; preds = %5
  tail call fastcc void @add_dependence_list(ptr noundef %1, ptr noundef %10, i32 noundef %3, i32 noundef %4) #25
  br label %29

12:                                               ; preds = %5
  store ptr null, ptr %2, align 8, !tbaa !289
  %13 = icmp eq ptr %10, null
  br i1 %13, label %29, label %14, !prof !552

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 0
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi ptr [ %10, %14 ], [ %20, %27 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !295
  br i1 %15, label %21, label %25, !prof !553

21:                                               ; preds = %16
  %22 = load ptr, ptr %18, align 8, !tbaa !295
  %23 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %1, ptr noundef %22) #25, !range !314
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27, !prof !554

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr %18, align 8, !tbaa !295
  tail call void @add_dependence(ptr noundef %1, ptr noundef %26, i32 noundef %4) #25
  br label %27

27:                                               ; preds = %25, %21
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %17) #24
  %28 = icmp eq ptr %20, null
  br i1 %28, label %29, label %16, !prof !555, !llvm.loop !556

29:                                               ; preds = %27, %12, %11
  ret void
}

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @call_may_noreturn_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !557 !PGOFuncName !558 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -2080374784
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !559

5:                                                ; preds = %1
  %6 = and i32 %2, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %67, label %8

8:                                                ; preds = %1, %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !295
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %20, !prof !445

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !295
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !289
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i32 [ %19, %14 ], [ %11, %8 ]
  %22 = phi ptr [ %18, %14 ], [ %10, %8 ]
  %23 = and i32 %21, 65535
  %24 = icmp eq i32 %23, 23
  br i1 %24, label %25, label %29, !prof !560

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !295
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %28, %25 ], [ %21, %20 ]
  %31 = phi ptr [ %27, %25 ], [ %22, %20 ]
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, 26
  br i1 %33, label %34, label %67, !prof !561

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !295
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %67, !prof !561

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !295
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 67174399
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %67, !prof !559

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !295
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50, !prof !445

50:                                               ; preds = %46
  %51 = load i64, ptr %48, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 29
  br i1 %53, label %54, label %67, !prof !561

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_function_decl, ptr %48, i64 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 6144
  %58 = icmp eq i32 %57, 6144
  br i1 %58, label %59, label %67, !prof !445

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

67:                                               ; preds = %46, %50, %54, %59, %63, %29, %34, %40, %5
  %68 = phi i8 [ 0, %5 ], [ 1, %40 ], [ 1, %34 ], [ 1, %29 ], [ %66, %63 ], [ 1, %59 ], [ 1, %54 ], [ 1, %50 ], [ 1, %46 ]
  ret i8 %68
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fixup_sched_groups(ptr noundef %0) unnamed_addr #0 !prof !277 !PGOFuncName !562 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 3) #25
  %4 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1, %26
  %7 = load ptr, ptr %3, align 8, !tbaa !289
  %8 = load ptr, ptr %7, align 8, !tbaa !279
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
  br i1 %19, label %9, label %20, !llvm.loop !563

20:                                               ; preds = %13
  %21 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %11, ptr noundef %8) #25, !range !314
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._dep, ptr %7, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !286
  tail call void @add_dependence(ptr noundef nonnull %11, ptr noundef %8, i32 noundef %25) #25
  br label %26

26:                                               ; preds = %9, %20, %23
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %27 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %6, !llvm.loop !564

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
  br i1 %39, label %34, label %40, !llvm.loop !565

40:                                               ; preds = %34, %29
  %41 = phi ptr [ %30, %29 ], [ %36, %34 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !295
  %44 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !295
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %0, ptr noundef nonnull %41) #25, !range !314
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
define dso_local void @deps_start_bb(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !566 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !567

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3362, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27, !prof !568

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
  br i1 %24, label %27, label %18, !llvm.loop !569

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 2, ptr %26, align 8, !tbaa !447
  br label %27

27:                                               ; preds = %22, %18, %15, %25, %11, %8
  ret void
}

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_analyze(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 !prof !566 {
  %4 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %5 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4, i64 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !567

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
  br i1 %16, label %17, label %18, !prof !570

17:                                               ; preds = %11
  tail call void @sd_init_insn(ptr noundef nonnull %12) #25
  br label %18

18:                                               ; preds = %11, %17
  tail call void @deps_analyze_insn(ptr noundef %0, ptr noundef nonnull %12) #25
  %19 = icmp eq ptr %12, %2
  br i1 %19, label %20, label %28, !prof !571

20:                                               ; preds = %18
  %21 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %22 = getelementptr inbounds %struct.sched_deps_info_def, ptr %21, i64 0, i32 12
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !567

26:                                               ; preds = %20
  tail call void @cselib_finish() #24
  br label %27

27:                                               ; preds = %26, %20
  ret void

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !295
  br label %11
}

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_free_deps(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !566 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !295
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %38, label %7, !prof !572

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %34
  %10 = phi ptr [ %0, %7 ], [ %36, %34 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %34, !prof !570

15:                                               ; preds = %9
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !295
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #25
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34, !prof !573

21:                                               ; preds = %15
  tail call fastcc void @delete_dep_nodes_in_back_deps(ptr noundef nonnull %10, i8 noundef zeroext %2) #25
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %17, align 8, !tbaa !295
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #25
  br i1 %8, label %29, label %27, !prof !573

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 6
  br label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !289
  tail call fastcc void @clear_deps_list(ptr noundef %33) #25
  tail call void @sd_finish_insn(ptr noundef nonnull %10) #25
  br label %34

34:                                               ; preds = %9, %15, %31
  %35 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !295
  %37 = icmp eq ptr %36, %5
  br i1 %37, label %38, label %9, !prof !574, !llvm.loop !575

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dep_nodes_in_back_deps(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !348 !PGOFuncName !576 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %7 = icmp eq i8 %1, 0
  %8 = select i1 %7, i32 3, i32 8, !prof !573
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef %0, i32 noundef %8) #25
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11, !prof !577

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._sd_iterator, ptr %3, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %13
  %14 = load ptr, ptr %12, align 8, !tbaa !388
  %15 = load ptr, ptr %14, align 8, !tbaa !289
  %16 = load ptr, ptr %15, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %17 = load ptr, ptr %4, align 8, !tbaa !289
  call fastcc void @get_back_and_forw_lists(ptr noundef %17, i8 noundef zeroext %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %18 = load ptr, ptr %5, align 8, !tbaa !289
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %15, ptr noundef %18) #25
  tail call fastcc void @delete_dep_node(ptr noundef %16) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  %19 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %13, !prof !578, !llvm.loop !579

21:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_deps_list(ptr nocapture noundef %0) unnamed_addr #11 !prof !348 !PGOFuncName !580 {
  %2 = load ptr, ptr %0, align 8, !tbaa !351
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !577

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %5, ptr noundef nonnull %0) #25
  %6 = load ptr, ptr %0, align 8, !tbaa !351
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !prof !578

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !581 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !582

5:                                                ; preds = %2
  %6 = tail call i32 @max_reg_num() #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 53, %2 ]
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  store i32 %8, ptr %9, align 8, !tbaa !543
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %11, label %14, !prof !583

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
  store ptr null, ptr %20, align 8, !tbaa !500
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 0, ptr %21, align 8, !tbaa !534
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
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 !prof !584 !PGOFuncName !585 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !586
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps_reg_last(ptr noundef %0) local_unnamed_addr #0 !prof !587 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !588

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !543
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %8, label %7, !prof !589

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3503, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !481
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !589

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3504, ptr noundef nonnull @.str.1) #24
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !543
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 40) #24
  store ptr %17, ptr %9, align 8, !tbaa !481
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_deps(ptr noundef %0) local_unnamed_addr #0 !prof !581 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !543
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12, !prof !582

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3521, ptr noundef nonnull @.str.1) #24
  br label %55

12:                                               ; preds = %1
  store i32 0, ptr %4, align 8, !tbaa !543
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
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #25, !range !314
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %48, label %20, !prof !590

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %22

22:                                               ; preds = %20, %45
  %23 = load ptr, ptr %21, align 8, !tbaa !481
  %24 = load i32, ptr %2, align 4, !tbaa !297
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !487
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !591

29:                                               ; preds = %22
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %26) #24
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !482
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !592

34:                                               ; preds = %30
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %31) #24
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !484
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !593

39:                                               ; preds = %35
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %36) #24
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !485
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !594

44:                                               ; preds = %40
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %41) #24
  br label %45

45:                                               ; preds = %44, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #25, !range !314
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %22, !prof !595, !llvm.loop !596

48:                                               ; preds = %45, %12
  tail call void @bitmap_clear(ptr noundef nonnull %17) #24
  %49 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  tail call void @bitmap_clear(ptr noundef nonnull %49) #24
  %50 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %51 = load ptr, ptr %50, align 8, !tbaa !481
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !597

53:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %51) #25
  br label %54

54:                                               ; preds = %53, %48
  store ptr null, ptr %50, align 8, !tbaa !481
  br label %55

55:                                               ; preds = %11, %7, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  ret void
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !598 !PGOFuncName !599 {
  %4 = load ptr, ptr %1, align 8, !tbaa !600
  store ptr %4, ptr %0, align 8, !tbaa !601
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !603
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !604

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !601
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !605
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !607

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !608
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !418
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !609
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !297
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !610 !PGOFuncName !611 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !609
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !612

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !613

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !297
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !614, !llvm.loop !615

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !297
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !297
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !608
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !601
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !608
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !616

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !418
  store i64 %35, ptr %3, align 8, !tbaa !609
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !607

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !297
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !297
  %40 = load i32, ptr %23, align 8, !tbaa !608
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !608
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !617, !llvm.loop !618

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !619
  store ptr %44, ptr %0, align 8, !tbaa !601
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !607

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !605
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !297
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !609
  store i32 %16, ptr %1, align 4, !tbaa !297
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !620 !PGOFuncName !621 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !609
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !609
  %6 = load i32, ptr %1, align 4, !tbaa !297
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !297
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_from_deps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !622 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %6 = tail call fastcc i32 @remove_from_both_dependence_lists(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %5) #25
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %14, label %10, !prof !623

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !456
  %13 = sub nsw i32 %12, %6
  store i32 %13, ptr %11, align 8, !tbaa !456
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %17 = tail call fastcc i32 @remove_from_both_dependence_lists(ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull %16) #25
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !457
  %20 = sub nsw i32 %19, %17
  store i32 %20, ptr %18, align 4, !tbaa !457
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %22 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %21) #25
  %23 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !429
  %25 = sub nsw i32 %24, %22
  store i32 %25, ptr %23, align 8, !tbaa !429
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %26, ptr noundef nonnull %3) #25
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !314
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %75, label %29, !prof !624

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %31

31:                                               ; preds = %29, %72
  %32 = load ptr, ptr %30, align 8, !tbaa !481
  %33 = load i32, ptr %3, align 4, !tbaa !297
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !487
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !625

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %35) #25
  br label %40

40:                                               ; preds = %38, %31
  %41 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !482
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !626

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %41) #25
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !484
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !627

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %47) #25
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !485
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !628

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %53) #25
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %35, align 8, !tbaa !487
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %72, !prof !629

61:                                               ; preds = %58
  %62 = load ptr, ptr %41, align 8, !tbaa !482
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %72, !prof !630

64:                                               ; preds = %61
  %65 = load ptr, ptr %47, align 8, !tbaa !484
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %72, !prof !631

67:                                               ; preds = %64
  %68 = load ptr, ptr %53, align 8, !tbaa !485
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72, !prof !632

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %26, i32 noundef %33) #24
  br label %72

72:                                               ; preds = %70, %67, %64, %61, %58
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !314
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %31, !prof !633, !llvm.loop !634

75:                                               ; preds = %72, %14
  %76 = load i32, ptr %1, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %84, !prof !635

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
define internal fastcc i32 @remove_from_both_dependence_lists(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !636 !PGOFuncName !637 {
  %4 = load ptr, ptr %1, align 8, !tbaa !289
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6, !prof !638

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
  %15 = load ptr, ptr %14, align 8, !tbaa !295
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23, !prof !639

17:                                               ; preds = %11
  %18 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %10) #24
  %19 = tail call ptr @remove_free_EXPR_LIST_node(ptr noundef %9) #24
  %20 = add nsw i32 %13, 1
  %21 = load ptr, ptr %10, align 8, !tbaa !289
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %11, !prof !640, !llvm.loop !641

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %9, align 8, !tbaa !289
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %24, align 8, !tbaa !289
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !prof !640, !llvm.loop !641

29:                                               ; preds = %23, %17, %3
  %30 = phi i32 [ 0, %3 ], [ %20, %17 ], [ %13, %23 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @remove_from_dependence_list(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 !prof !642 !PGOFuncName !643 {
  %3 = load ptr, ptr %1, align 8, !tbaa !289
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5, !prof !644

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %22, %20 ], [ %3, %2 ]
  %7 = phi i32 [ %11, %20 ], [ 0, %2 ]
  %8 = phi ptr [ %21, %20 ], [ %1, %2 ]
  br label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %6, %5 ], [ %18, %15 ]
  %11 = phi i32 [ %7, %5 ], [ %17, %15 ]
  %12 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !295
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20, !prof !645

15:                                               ; preds = %9
  %16 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %8) #24
  %17 = add nsw i32 %11, 1
  %18 = load ptr, ptr %8, align 8, !tbaa !289
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %9, !prof !646, !llvm.loop !647

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !289
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !prof !648, !llvm.loop !647

24:                                               ; preds = %20, %15, %2
  %25 = phi i32 [ 0, %2 ], [ %17, %15 ], [ %11, %20 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_deps_init(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !649 {
  %2 = load i32, ptr @sched_max_luid, align 4, !tbaa !297
  %3 = load ptr, ptr @cfun, align 8, !tbaa !289
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !650
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !652
  %8 = sdiv i32 %2, %7
  %9 = add nsw i32 %8, 1
  tail call fastcc void @init_deps_data_vector() #25
  %10 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18, !prof !654

12:                                               ; preds = %1
  %13 = icmp ne i8 %0, 0
  %14 = icmp sgt i32 %8, 499
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i32 0, ptr @cache_size, align 4, !tbaa !297
  %17 = load i32, ptr @sched_max_luid, align 4, !tbaa !297
  tail call void @extend_dependency_caches(i32 noundef %17, i8 noundef zeroext 1) #25
  br label %20

18:                                               ; preds = %12, %1
  %19 = icmp eq i8 %0, 0
  br i1 %19, label %26, label %20, !prof !655

20:                                               ; preds = %16, %18
  %21 = sext i32 %9 to i64
  %22 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 16, i64 noundef %21) #24
  store ptr %22, ptr @dl_pool, align 8, !tbaa !289
  %23 = mul nsw i32 %9, 5
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 72, i64 noundef %24) #24
  store ptr %25, ptr @dn_pool, align 8, !tbaa !289
  br label %26

26:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_deps_data_vector() unnamed_addr #0 !prof !649 !PGOFuncName !656 {
  %1 = load i32, ptr @sched_max_luid, align 4, !tbaa !297
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef %3) #25
  %5 = sub i32 %2, %4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13, !prof !657

7:                                                ; preds = %0
  %8 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef %3, i32 noundef %5) #25, !range !303
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !prof !658

10:                                               ; preds = %7
  %11 = mul nsw i32 %1, 3
  %12 = sdiv i32 %11, 2
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared(i32 noundef %12) #25
  br label %13

13:                                               ; preds = %10, %7, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extend_dependency_caches(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !277 {
  %3 = icmp ne i8 %1, 0
  %4 = load ptr, ptr @true_dependency_cache, align 8
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  %8 = load i32, ptr @cache_size, align 4, !tbaa !297
  %9 = add nsw i32 %8, %0
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 5
  %12 = tail call ptr @xrealloc(ptr noundef %4, i64 noundef %11) #24
  store ptr %12, ptr @true_dependency_cache, align 8, !tbaa !289
  %13 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %14 = tail call ptr @xrealloc(ptr noundef %13, i64 noundef %11) #24
  store ptr %14, ptr @output_dependency_cache, align 8, !tbaa !289
  %15 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
  %16 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %11) #24
  store ptr %16, ptr @anti_dependency_cache, align 8, !tbaa !289
  %17 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %18 = getelementptr inbounds %struct.haifa_sched_info, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !290
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !289
  %24 = tail call ptr @xrealloc(ptr noundef %23, i64 noundef %11) #24
  store ptr %24, ptr @spec_dependency_cache, align 8, !tbaa !289
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32, ptr @cache_size, align 4, !tbaa !297
  %27 = icmp slt i32 %26, %9
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %30 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %31 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
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
  %39 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %40 = getelementptr inbounds %struct.haifa_sched_info, ptr %39, i64 0, i32 17
  %41 = load i32, ptr %40, align 8, !tbaa !290
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
  br i1 %48, label %49, label %34, !llvm.loop !659

49:                                               ; preds = %46, %25
  store i32 %9, ptr @cache_size, align 4, !tbaa !297
  br label %50

50:                                               ; preds = %2, %49
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_deps_finish() local_unnamed_addr #0 !prof !296 {
  %1 = tail call zeroext i8 @deps_pools_are_empty_p() #25, !range !314
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !660

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3691, ptr noundef nonnull @.str.1) #24
  br label %4

4:                                                ; preds = %0, %3
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dn_pool) #24
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dl_pool) #24
  %5 = load ptr, ptr @dn_pool, align 8, !tbaa !289
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr @dl_pool, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %11, label %10, !prof !661

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3694, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %4, %10
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_free() #25
  store i32 0, ptr @cache_size, align 4, !tbaa !297
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !298

14:                                               ; preds = %11
  %15 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
  %16 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  tail call void @free(ptr noundef nonnull %12) #25
  store ptr null, ptr @true_dependency_cache, align 8, !tbaa !289
  tail call void @free(ptr noundef %16) #25
  store ptr null, ptr @output_dependency_cache, align 8, !tbaa !289
  tail call void @free(ptr noundef %15) #25
  store ptr null, ptr @anti_dependency_cache, align 8, !tbaa !289
  %17 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %18 = getelementptr inbounds %struct.sched_deps_info_def, ptr %17, i64 0, i32 12
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !289
  tail call void @free(ptr noundef %23) #25
  store ptr null, ptr @spec_dependency_cache, align 8, !tbaa !289
  br label %24

24:                                               ; preds = %14, %22, %11
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool_if_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_free() unnamed_addr #16 !prof !296 !PGOFuncName !662 {
  %1 = load ptr, ptr @h_d_i_d, align 8, !tbaa !289
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !660

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @h_d_i_d, align 8, !tbaa !289
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps_global() local_unnamed_addr #0 !prof !663 {
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !418
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %1, ptr @reg_pending_sets, align 8, !tbaa !289
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %2, ptr @reg_pending_clobbers, align 8, !tbaa !289
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %3, ptr @reg_pending_uses, align 8, !tbaa !289
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !297
  %4 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %5 = icmp eq i8 %4, 0
  %6 = load i32, ptr @sched_emulate_haifa_p, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %18, !prof !664

9:                                                ; preds = %0
  %10 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %11 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 1
  store ptr @haifa_start_insn, ptr %11, align 8, !tbaa !422
  %12 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 2
  store ptr @haifa_finish_insn, ptr %12, align 8, !tbaa !450
  %13 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 7
  store ptr @haifa_note_reg_set, ptr %13, align 8, !tbaa !665
  %14 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 8
  store ptr @haifa_note_reg_clobber, ptr %14, align 8, !tbaa !666
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 9
  store ptr @haifa_note_reg_use, ptr %15, align 8, !tbaa !667
  %16 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 10
  store ptr @haifa_note_mem_dep, ptr %16, align 8, !tbaa !668
  %17 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 11
  store ptr @haifa_note_dep, ptr %17, align 8, !tbaa !669
  br label %18

18:                                               ; preds = %0, %9
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_start_insn(ptr noundef %0) #0 !prof !348 !PGOFuncName !670 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @cur_insn, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %6, label %7, !prof !671

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1621, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  store ptr %0, ptr @cur_insn, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @haifa_finish_insn() #17 !prof !348 !PGOFuncName !672 {
  store ptr null, ptr @cur_insn, align 8, !tbaa !289
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !673 !PGOFuncName !674 {
  %5 = alloca %struct._dep, align 8
  %6 = and i32 %3, 16777215
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !675

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
  %15 = load ptr, ptr @cur_insn, align 8, !tbaa !289
  %16 = tail call i32 @ds_to_dt(i32 noundef %3) #25, !range !676
  %17 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %18 = getelementptr inbounds %struct.haifa_sched_info, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !290
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !675

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %12, %22
  %24 = phi i32 [ %3, %22 ], [ -1, %12 ]
  call void @init_dep_1(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %15, i32 noundef %16, i32 noundef %24) #25
  call fastcc void @maybe_add_or_update_dep_1(ptr noundef nonnull %5, ptr noundef %13, ptr noundef %14) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_note_dep(ptr noundef %0, i32 noundef %1) #0 !prof !677 !PGOFuncName !678 {
  %3 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %4 = load ptr, ptr @cur_insn, align 8, !tbaa !289
  %5 = tail call i32 @ds_to_dt(i32 noundef %1) #25, !range !676
  call void @init_dep(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %4, i32 noundef %5) #25
  call fastcc void @maybe_add_or_update_dep_1(ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_deps_global() local_unnamed_addr #0 !prof !663 {
  %1 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  tail call void @bitmap_obstack_free(ptr noundef %1) #24
  store ptr null, ptr @reg_pending_sets, align 8, !tbaa !289
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !289
  tail call void @bitmap_obstack_free(ptr noundef %2) #24
  store ptr null, ptr @reg_pending_clobbers, align 8, !tbaa !289
  %3 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  tail call void @bitmap_obstack_free(ptr noundef %3) #24
  store ptr null, ptr @reg_pending_uses, align 8, !tbaa !289
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @estimate_dep_weak(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !679 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %24, label %4, !prof !680

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !295
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !295
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %24, label %10, !prof !680

10:                                               ; preds = %4
  %11 = load i32, ptr %6, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  %14 = load i32, ptr %8, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %13, label %17, label %22, !prof !681

17:                                               ; preds = %10
  br i1 %16, label %18, label %24, !prof !682

18:                                               ; preds = %17
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #25
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #25
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %24, label %23

22:                                               ; preds = %10
  br i1 %16, label %24, label %23, !prof !683

23:                                               ; preds = %18, %22
  br label %24

24:                                               ; preds = %17, %22, %4, %18, %2, %23
  %25 = phi i32 [ 47, %23 ], [ 1, %2 ], [ 1, %18 ], [ 1, %4 ], [ 55, %22 ], [ 55, %17 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !417 !PGOFuncName !684 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !295
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_dependence(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !685 {
  switch i32 %2, label %5 [
    i32 0, label %7
    i32 11, label %4
    i32 12, label %6
  ], !prof !686

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #24
  br label %6

6:                                                ; preds = %3, %5
  br label %7

7:                                                ; preds = %3, %4, %6
  %8 = phi i32 [ 33554432, %4 ], [ 67108864, %6 ], [ 16777216, %3 ]
  %9 = load ptr, ptr @cur_insn, align 8, !tbaa !289
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !687

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, %0
  br i1 %12, label %14, label %13, !prof !688

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #24
  br label %14

14:                                               ; preds = %13, %11
  tail call fastcc void @note_dep(ptr noundef %1, i32 noundef %8) #25
  br label %16

15:                                               ; preds = %7
  store ptr %0, ptr @cur_insn, align 8, !tbaa !289
  tail call fastcc void @note_dep(ptr noundef %1, i32 noundef %8) #25
  store ptr null, ptr @cur_insn, align 8, !tbaa !289
  br label %16

16:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_dep(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !685 !PGOFuncName !689 {
  %3 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %4 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !669
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !690

7:                                                ; preds = %2
  tail call void %5(ptr noundef %0, i32 noundef %1) #24
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !277 {
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
define dso_local noundef i32 @get_dep_weak(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !277 {
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
define dso_local noundef i32 @set_dep_weak(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !277 {
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
define dso_local i32 @ds_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !277 {
  %3 = tail call fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext 0) #25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !277 !PGOFuncName !691 {
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
define dso_local i32 @ds_full_merge(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !692 {
  %5 = or i32 %1, %0
  %6 = and i32 %5, 16777215
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8, !prof !693

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
  %23 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3) #25, !range !387
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
define dso_local i32 @ds_max_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !277 {
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
define dso_local i32 @ds_weak(i32 noundef %0) local_unnamed_addr #0 !prof !277 {
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
  br i1 %30, label %31, label %25, !llvm.loop !694

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
define dso_local i32 @ds_get_speculation_types(i32 noundef %0) local_unnamed_addr #6 !prof !695 {
  %2 = and i32 %0, 63
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !696

4:                                                ; preds = %1
  %5 = or i32 %0, 63
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  %8 = and i32 %7, 4032
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !696

10:                                               ; preds = %6
  %11 = or i32 %7, 4032
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %7, %6 ]
  %14 = and i32 %13, 258048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !696

16:                                               ; preds = %12
  %17 = or i32 %13, 258048
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ %13, %12 ]
  %20 = and i32 %19, 16515072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !696

22:                                               ; preds = %18
  %23 = or i32 %19, 16515072
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ %19, %18 ]
  %26 = and i32 %25, 16777215
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ds_get_max_dep_weak(i32 noundef %0) local_unnamed_addr #0 !prof !697 {
  %2 = and i32 %0, 63
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !698

4:                                                ; preds = %1
  %5 = tail call i32 @set_dep_weak(i32 noundef %0, i32 noundef 63, i32 noundef 62) #25
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %0, %1 ]
  %8 = and i32 %7, 4032
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !698

10:                                               ; preds = %6
  %11 = tail call i32 @set_dep_weak(i32 noundef %7, i32 noundef 4032, i32 noundef 62) #25
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %7, %6 ]
  %14 = and i32 %13, 258048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !698

16:                                               ; preds = %12
  %17 = tail call i32 @set_dep_weak(i32 noundef %13, i32 noundef 258048, i32 noundef 62) #25
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ %13, %12 ]
  %20 = and i32 %19, 16515072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !698

22:                                               ; preds = %18
  %23 = tail call i32 @set_dep_weak(i32 noundef %19, i32 noundef 16515072, i32 noundef 62) #25
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ %19, %18 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_ds(i32 noundef %0) local_unnamed_addr #0 !prof !277 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !289
  tail call fastcc void @dump_ds(ptr noundef %2, i32 noundef %0) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !289
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_ds(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !277 !PGOFuncName !699 {
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
define internal fastcc void @attach_dep_link(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !376 !PGOFuncName !700 {
  %3 = load ptr, ptr %1, align 8, !tbaa !289
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !701
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !378

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !702
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !378

11:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #24
  br label %12

12:                                               ; preds = %7, %11
  store ptr %1, ptr %4, align 8, !tbaa !701
  %13 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  store ptr %3, ptr %13, align 8, !tbaa !702
  %14 = icmp eq ptr %3, null
  br i1 %14, label %21, label %15, !prof !703

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._dep_link, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !701
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %20, label %19, !prof !704

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #24
  br label %20

20:                                               ; preds = %15, %19
  store ptr %13, ptr %16, align 8, !tbaa !701
  br label %21

21:                                               ; preds = %20, %12
  store ptr %0, ptr %1, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @depl_on_debug_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !705 !PGOFuncName !706 {
  %2 = load ptr, ptr %0, align 8, !tbaa !373
  %3 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !707
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %15, !prof !709

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !710
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
define internal fastcc noundef i32 @ask_dependency_caches(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !277 !PGOFuncName !711 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !279
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !295
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !285
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !295
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %10) #25
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
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
  %22 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %23 = getelementptr inbounds %struct.haifa_sched_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !290
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %27, i64 %28
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %6) #24
  %31 = icmp eq i32 %30, 0
  br i1 %26, label %32, label %48

32:                                               ; preds = %21
  br i1 %31, label %33, label %43

33:                                               ; preds = %32
  %34 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %35 = getelementptr inbounds %struct.bitmap_head_def, ptr %34, i64 %28
  %36 = tail call i32 @bitmap_bit_p(ptr noundef %35, i32 noundef %6) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
  %40 = getelementptr inbounds %struct.bitmap_head_def, ptr %39, i64 %28
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %6) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %32, %33, %38
  %44 = phi i32 [ 0, %32 ], [ 11, %33 ], [ 12, %38 ]
  %45 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !286
  %47 = icmp slt i32 %46, %44
  br i1 %47, label %84, label %85

48:                                               ; preds = %21
  %49 = select i1 %31, i32 0, i32 16777216
  %50 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %51 = getelementptr inbounds %struct.bitmap_head_def, ptr %50, i64 %28
  %52 = tail call i32 @bitmap_bit_p(ptr noundef %51, i32 noundef %6) #24
  %53 = icmp eq i32 %52, 0
  %54 = or disjoint i32 %49, 33554432
  %55 = select i1 %53, i32 %49, i32 %54
  %56 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
  %57 = getelementptr inbounds %struct.bitmap_head_def, ptr %56, i64 %28
  %58 = tail call i32 @bitmap_bit_p(ptr noundef %57, i32 noundef %6) #24
  %59 = icmp eq i32 %58, 0
  %60 = or disjoint i32 %55, 67108864
  %61 = select i1 %59, i32 %55, i32 %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %48
  %64 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %65 = getelementptr inbounds %struct.haifa_sched_info, ptr %64, i64 0, i32 17
  %66 = load i32, ptr %65, align 8, !tbaa !290
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !289
  %71 = getelementptr inbounds %struct.bitmap_head_def, ptr %70, i64 %28
  %72 = tail call i32 @bitmap_bit_p(ptr noundef %71, i32 noundef %6) #24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69, %63
  %75 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !287
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
define internal fastcc noundef i32 @update_dep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !712 !PGOFuncName !713 {
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !286
  %8 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !286
  %10 = icmp slt i32 %9, %7
  br i1 %10, label %11, label %12, !prof !714

11:                                               ; preds = %5
  store i32 %9, ptr %6, align 8, !tbaa !286
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ 2, %11 ], [ 1, %5 ]
  %14 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %15 = getelementptr inbounds %struct.haifa_sched_info, ptr %14, i64 0, i32 17
  %16 = load i32, ptr %15, align 8, !tbaa !290
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %47, label %19, !prof !715

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !287
  %22 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !287
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
  %39 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %3, ptr noundef %4) #25, !range !387
  %40 = tail call i32 @set_dep_weak(i32 noundef %23, i32 noundef 63, i32 noundef %39) #25
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %40, %38 ], [ %23, %36 ]
  %43 = tail call i32 @ds_merge(i32 noundef %21, i32 noundef %42) #25
  br label %44

44:                                               ; preds = %41, %35, %33, %19
  %45 = phi i32 [ %43, %41 ], [ %34, %35 ], [ %34, %33 ], [ %24, %19 ]
  %46 = icmp eq i32 %21, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %12
  %48 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %53, !prof !715

50:                                               ; preds = %44
  store i32 %45, ptr %20, align 4, !tbaa !287
  %51 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %54, !prof !715

53:                                               ; preds = %47
  br i1 %10, label %54, label %55

54:                                               ; preds = %50, %53
  tail call fastcc void @update_dependency_caches(ptr noundef nonnull %0, i32 noundef %7) #25
  br label %55

55:                                               ; preds = %50, %54, %53, %47
  %56 = phi i32 [ 2, %50 ], [ 2, %54 ], [ 1, %53 ], [ %13, %47 ]
  ret i32 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_spec_dep_to_hard(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) unnamed_addr #0 !prof !277 !PGOFuncName !716 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !388
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = load ptr, ptr %4, align 8, !tbaa !373
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !279
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !285
  %10 = load ptr, ptr @h_d_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !295
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %13) #25
  %15 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %10, i32 noundef %14) #25
  %16 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !333
  %18 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !331
  tail call fastcc void @move_dep_link(ptr noundef %5, ptr noundef %17, ptr noundef %19) #25
  %20 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !287
  %22 = and i32 %21, -16777216
  store i32 %22, ptr %20, align 4, !tbaa !287
  %23 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !289
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !289
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load i32, ptr %12, align 8, !tbaa !295
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #25
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bitmap_head_def, ptr %26, i64 %30
  %32 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !295
  %34 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %33) #25
  %35 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %31, i32 noundef %34) #24
  br label %36

36:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_dependency_caches(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !277 !PGOFuncName !717 {
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !279
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !295
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %6) #25
  %8 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !285
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !295
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %11) #25
  %13 = load ptr, ptr @current_sched_info, align 8, !tbaa !289
  %14 = getelementptr inbounds %struct.haifa_sched_info, ptr %13, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !290
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  switch i32 %1, label %29 [
    i32 11, label %19
    i32 12, label %24
  ]

19:                                               ; preds = %18
  %20 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !289
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds %struct.bitmap_head_def, ptr %20, i64 %21
  %23 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %22, i32 noundef %7) #24
  br label %30

24:                                               ; preds = %18
  %25 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !289
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
define internal fastcc void @detach_dep_link(ptr nocapture noundef %0) unnamed_addr #18 !prof !376 !PGOFuncName !718 {
  %2 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !701
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !702
  store ptr %5, ptr %3, align 8, !tbaa !289
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !703

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._dep_link, ptr %5, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !701
  br label %9

9:                                                ; preds = %7, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @dep_link_is_detached_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !376 !PGOFuncName !719 {
  %2 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !701
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
define internal fastcc void @add_dependence_list(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !720 !PGOFuncName !721 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %22, label %6, !prof !722

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 0
  br label %8

8:                                                ; preds = %6, %18
  %9 = phi ptr [ %1, %6 ], [ %20, %18 ]
  br i1 %7, label %10, label %15, !prof !723

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !295
  %13 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %0, ptr noundef %12) #25, !range !314
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18, !prof !724

15:                                               ; preds = %10, %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !295
  tail call void @add_dependence(ptr noundef %0, ptr noundef %17, i32 noundef %3) #25
  br label %18

18:                                               ; preds = %10, %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !295
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !725, !llvm.loop !726

22:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !727 !PGOFuncName !728 {
  %4 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !729

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2371, ptr noundef nonnull @.str.1) #24
  br label %282

7:                                                ; preds = %3
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %15, label %9, !prof !730

9:                                                ; preds = %7
  %10 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %11 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !731
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !732

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
  ], !prof !733

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  br i1 %8, label %282, label %20, !prof !734

20:                                               ; preds = %19
  %21 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %22 = getelementptr inbounds %struct.sched_deps_info_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !735
  %24 = icmp eq ptr %23, null
  br i1 %24, label %282, label %25, !prof !736

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
  br i1 %31, label %32, label %36, !prof !737

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
  br i1 %8, label %282, label %37, !prof !738

37:                                               ; preds = %36
  %38 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %39 = getelementptr inbounds %struct.sched_deps_info_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !735
  %41 = icmp eq ptr %40, null
  br i1 %41, label %282, label %42, !prof !739

42:                                               ; preds = %37
  tail call void %40() #24
  br label %282

43:                                               ; preds = %15
  %44 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %45 = getelementptr inbounds %struct.sched_deps_info_def, ptr %44, i64 0, i32 12
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %66, label %49, !prof !740

49:                                               ; preds = %43
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !741
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !295
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %52, i64 0, i32 5
  %56 = load i8, ptr %55, align 8, !tbaa !753
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi i8 [ %56, %54 ], [ 0, %49 ]
  %59 = tail call i32 %50(i8 noundef zeroext %58) #24
  %60 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %1) #24
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !295
  %63 = tail call ptr @cselib_lookup_from_insn(ptr noundef %62, i32 noundef %59, i32 noundef 1, ptr noundef %2) #24
  %64 = load ptr, ptr %61, align 8, !tbaa !295
  %65 = tail call ptr @cselib_subst_to_values(ptr noundef %64) #24
  store ptr %65, ptr %61, align 8, !tbaa !295
  br label %66

66:                                               ; preds = %57, %43
  %67 = phi ptr [ %60, %57 ], [ %1, %43 ]
  %68 = load i32, ptr %2, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %169, label %71, !prof !755

71:                                               ; preds = %66
  %72 = tail call ptr @canon_rtx(ptr noundef nonnull %67) #24
  %73 = load ptr, ptr %0, align 8, !tbaa !295
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75, !prof !756

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %77

77:                                               ; preds = %75, %93
  %78 = phi ptr [ %96, %93 ], [ %73, %75 ]
  %79 = phi ptr [ %95, %93 ], [ %76, %75 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !295
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !295
  %83 = tail call i32 @read_dependence(ptr noundef %82, ptr noundef %72) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85, !prof !757

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !295
  %88 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %87) #25, !range !314
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load ptr, ptr %81, align 8, !tbaa !295
  %92 = load ptr, ptr %86, align 8, !tbaa !295
  tail call fastcc void @note_mem_dep(ptr noundef %72, ptr noundef %91, ptr noundef %92, i32 noundef 67108864) #25
  br label %93

93:                                               ; preds = %90, %85, %77
  %94 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load ptr, ptr %94, align 8, !tbaa !295
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %77, !prof !758, !llvm.loop !759

98:                                               ; preds = %93, %71
  %99 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !295
  %101 = icmp eq ptr %100, null
  br i1 %101, label %131, label %102, !prof !760

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %104

104:                                              ; preds = %102, %126
  %105 = phi ptr [ %129, %126 ], [ %100, %102 ]
  %106 = phi ptr [ %128, %126 ], [ %103, %102 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !295
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !295
  %110 = tail call i32 @true_dependence(ptr noundef %109, i32 noundef 0, ptr noundef %72, ptr noundef nonnull @rtx_varies_p) #24
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112, !prof !761

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !295
  %115 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %114) #25, !range !314
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %126, !prof !762

117:                                              ; preds = %112
  %118 = load ptr, ptr %108, align 8, !tbaa !295
  %119 = load ptr, ptr %113, align 8, !tbaa !295
  %120 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
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
  %129 = load ptr, ptr %127, align 8, !tbaa !295
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %104, !prof !763, !llvm.loop !764

131:                                              ; preds = %126, %98
  %132 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !295
  %134 = icmp eq ptr %133, null
  br i1 %134, label %169, label %135, !prof !765

135:                                              ; preds = %131, %165
  %136 = phi ptr [ %167, %165 ], [ %133, %131 ]
  %137 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !295
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 9
  br i1 %141, label %143, label %142, !prof !766

142:                                              ; preds = %135
  tail call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %138, i32 noundef 12) #25
  br label %165

143:                                              ; preds = %135
  %144 = tail call fastcc i32 @deps_may_trap_p(ptr noundef nonnull %1) #25
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %165, label %146, !prof !767

146:                                              ; preds = %143
  %147 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %148 = getelementptr inbounds %struct.sched_deps_info_def, ptr %147, i64 0, i32 12
  %149 = load i8, ptr %148, align 8
  %150 = and i8 %149, 4
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %163, label %152, !prof !768

152:                                              ; preds = %146
  %153 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr @spec_info, align 8, !tbaa !289
  %157 = load i32, ptr %156, align 8, !tbaa !769
  %158 = and i32 %157, 258048
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = tail call i32 @set_dep_weak(i32 noundef 67108864, i32 noundef 258048, i32 noundef 62) #25
  %162 = load ptr, ptr %137, align 8, !tbaa !295
  tail call fastcc void @note_dep(ptr noundef %162, i32 noundef %161) #25
  br label %165

163:                                              ; preds = %155, %152, %146
  %164 = load ptr, ptr %137, align 8, !tbaa !295
  tail call void @add_dependence(ptr noundef nonnull %2, ptr noundef %164, i32 noundef 12) #25
  br label %165

165:                                              ; preds = %142, %160, %163, %143
  %166 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !295
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %135, !prof !771, !llvm.loop !772

169:                                              ; preds = %165, %131, %66
  %170 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %171 = load i8, ptr %170, align 4
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %175, !prof !773

174:                                              ; preds = %169
  tail call fastcc void @add_insn_mem_dependence(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %2, ptr noundef nonnull %1) #25
  br label %175

175:                                              ; preds = %174, %169
  %176 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %177, ptr noundef nonnull %2) #25
  br i1 %8, label %282, label %178, !prof !774

178:                                              ; preds = %175
  %179 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %180 = getelementptr inbounds %struct.sched_deps_info_def, ptr %179, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !735
  %182 = icmp eq ptr %181, null
  br i1 %182, label %282, label %183, !prof !775

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
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !297
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
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %198

197:                                              ; preds = %190
  store i32 2, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %240

198:                                              ; preds = %192, %196
  %199 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !295
  %201 = load i32, ptr %200, align 8, !tbaa !463
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198, %203
  %204 = phi i64 [ %208, %203 ], [ 0, %198 ]
  %205 = phi ptr [ %209, %203 ], [ %200, %198 ]
  %206 = getelementptr inbounds %struct.rtvec_def, ptr %205, i64 0, i32 1, i64 %204
  %207 = load ptr, ptr %206, align 8, !tbaa !289
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %207, ptr noundef %2) #25
  %208 = add nuw nsw i64 %204, 1
  %209 = load ptr, ptr %199, align 8, !tbaa !295
  %210 = load i32, ptr %209, align 8, !tbaa !463
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %208, %211
  br i1 %212, label %203, label %213, !llvm.loop !776

213:                                              ; preds = %203, %198
  br i1 %8, label %282, label %214

214:                                              ; preds = %213
  %215 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %216 = getelementptr inbounds %struct.sched_deps_info_def, ptr %215, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !735
  %218 = icmp eq ptr %217, null
  br i1 %218, label %282, label %219

219:                                              ; preds = %214
  tail call void %217() #24
  br label %282

220:                                              ; preds = %15, %15, %15, %15
  %221 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %222, ptr noundef %2) #25
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  br i1 %8, label %282, label %223, !prof !777

223:                                              ; preds = %220
  %224 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %225 = getelementptr inbounds %struct.sched_deps_info_def, ptr %224, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !735
  %227 = icmp eq ptr %226, null
  br i1 %227, label %282, label %228

228:                                              ; preds = %223
  tail call void %226() #24
  br label %282

229:                                              ; preds = %15, %15
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %231, ptr noundef %2) #25
  %232 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %233, ptr noundef %2) #25
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  br i1 %8, label %282, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %236 = getelementptr inbounds %struct.sched_deps_info_def, ptr %235, i64 0, i32 6
  %237 = load ptr, ptr %236, align 8, !tbaa !735
  %238 = icmp eq ptr %237, null
  br i1 %238, label %282, label %239

239:                                              ; preds = %234
  tail call void %237() #24
  br label %282

240:                                              ; preds = %197, %15, %185, %188, %184
  %241 = zext nneg i32 %17 to i64
  %242 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !289
  %244 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %241
  %245 = load i8, ptr %244, align 1, !tbaa !295
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %275, label %247, !prof !778

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %249 = zext i8 %245 to i64
  br label %250

250:                                              ; preds = %247, %273
  %251 = phi i64 [ %249, %247 ], [ %252, %273 ]
  %252 = add nsw i64 %251, -1
  %253 = getelementptr inbounds i8, ptr %243, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !295
  switch i8 %254, label %273 [
    i8 101, label %260
    i8 69, label %255
  ], !prof !779

255:                                              ; preds = %250
  %256 = getelementptr inbounds [1 x %union.rtunion_def], ptr %248, i64 0, i64 %252
  %257 = load ptr, ptr %256, align 8, !tbaa !295
  %258 = load i32, ptr %257, align 8, !tbaa !463
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %263, label %273

260:                                              ; preds = %250
  %261 = getelementptr inbounds [1 x %union.rtunion_def], ptr %248, i64 0, i64 %252
  %262 = load ptr, ptr %261, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %262, ptr noundef %2) #25
  br label %273

263:                                              ; preds = %255, %263
  %264 = phi i64 [ %268, %263 ], [ 0, %255 ]
  %265 = phi ptr [ %269, %263 ], [ %257, %255 ]
  %266 = getelementptr inbounds %struct.rtvec_def, ptr %265, i64 0, i32 1, i64 %264
  %267 = load ptr, ptr %266, align 8, !tbaa !289
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %267, ptr noundef %2) #25
  %268 = add nuw nsw i64 %264, 1
  %269 = load ptr, ptr %256, align 8, !tbaa !295
  %270 = load i32, ptr %269, align 8, !tbaa !463
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %263, label %273, !llvm.loop !780

273:                                              ; preds = %263, %255, %250, %260
  %274 = icmp sgt i64 %251, 1
  br i1 %274, label %250, label %275, !prof !781, !llvm.loop !782

275:                                              ; preds = %273, %240
  br i1 %8, label %282, label %276, !prof !783

276:                                              ; preds = %275
  %277 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %278 = getelementptr inbounds %struct.sched_deps_info_def, ptr %277, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !735
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281, !prof !784

281:                                              ; preds = %276
  tail call void %279() #24
  br label %282

282:                                              ; preds = %6, %275, %276, %281, %229, %234, %239, %220, %223, %228, %213, %214, %219, %175, %178, %183, %36, %37, %42, %19, %20, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !785 !PGOFuncName !786 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !295
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
  %9 = icmp eq ptr %5, null
  br i1 %9, label %10, label %11, !prof !787

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2197, ptr noundef nonnull @.str.1) #24
  br label %238

11:                                               ; preds = %3
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %19, label %13, !prof !788

13:                                               ; preds = %11
  %14 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !789
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !732

18:                                               ; preds = %13
  tail call void %16(ptr noundef nonnull %5) #24
  br label %19

19:                                               ; preds = %18, %13, %11
  %20 = load i32, ptr %5, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %55, !prof !790

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !295
  %26 = load i32, ptr %25, align 8, !tbaa !463
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %41
  %31 = phi i64 [ %29, %28 ], [ %32, %41 ]
  %32 = add nsw i64 %31, -1
  %33 = load ptr, ptr %24, align 8, !tbaa !295
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !289
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !295
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %37) #24
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef %40, ptr noundef %2) #25
  br label %41

41:                                               ; preds = %30, %39
  %42 = icmp ugt i64 %31, 1
  br i1 %42, label %30, label %43, !llvm.loop !791

43:                                               ; preds = %41, %23
  br i1 %12, label %50, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %46 = getelementptr inbounds %struct.sched_deps_info_def, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !792
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void %47() #24
  br label %50

50:                                               ; preds = %49, %44, %43
  %51 = icmp eq i32 %7, 23
  br i1 %51, label %52, label %238

52:                                               ; preds = %50
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %54, ptr noundef %2) #25
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
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
  ], !prof !793

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %57) #24
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55, %55, %59
  %63 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %64, ptr noundef %2) #25
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, ptr %57, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 120
  br i1 %68, label %69, label %74, !prof !794

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %71, ptr noundef %2) #25
  %72 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %73, ptr noundef %2) #25
  br label %74

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !295
  %77 = load i32, ptr %76, align 8
  br label %55, !llvm.loop !795

78:                                               ; preds = %55
  %79 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #25
  %80 = lshr i32 %56, 16
  %81 = and i32 %80, 255
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %79, i32 noundef %81, i32 noundef %7, ptr noundef %2) #25
  %82 = and i32 %79, -8
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %224, !prof !796

84:                                               ; preds = %78
  %85 = icmp eq i32 %79, 8
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %81, i32 noundef %7, ptr noundef %2) #25
  br label %87

87:                                               ; preds = %86, %84
  %88 = zext nneg i32 %81 to i64
  %89 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 8, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !295
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %224, label %92

92:                                               ; preds = %87
  %93 = zext i8 %90 to i64
  %94 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
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
  br i1 %112, label %113, label %104, !llvm.loop !797

113:                                              ; preds = %104
  %114 = insertelement <2 x i64> poison, i64 %105, i64 0
  %115 = shufflevector <2 x i64> %114, <2 x i64> poison, <2 x i32> zeroinitializer
  %116 = or disjoint <2 x i64> %115, <i64 0, i64 1>
  %117 = icmp ugt <2 x i64> %116, %99
  %118 = select <2 x i1> %117, <2 x i64> %107, <2 x i64> %109
  %119 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %118)
  store i64 %119, ptr @implicit_reg_pending_uses, align 8, !tbaa !418
  br label %224

120:                                              ; preds = %55
  %121 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %122 = getelementptr inbounds %struct.sched_deps_info_def, ptr %121, i64 0, i32 12
  %123 = load i8, ptr %122, align 8
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %143, label %126, !prof !800

126:                                              ; preds = %120
  %127 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !741
  %128 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !295
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.mem_attrs, ptr %129, i64 0, i32 5
  %133 = load i8, ptr %132, align 8, !tbaa !753
  br label %134

134:                                              ; preds = %126, %131
  %135 = phi i8 [ %133, %131 ], [ 0, %126 ]
  %136 = tail call i32 %127(i8 noundef zeroext %135) #24
  %137 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %57) #24
  %138 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !295
  %140 = tail call ptr @cselib_lookup_from_insn(ptr noundef %139, i32 noundef %136, i32 noundef 1, ptr noundef %2) #24
  %141 = load ptr, ptr %138, align 8, !tbaa !295
  %142 = tail call ptr @cselib_subst_to_values(ptr noundef %141) #24
  store ptr %142, ptr %138, align 8, !tbaa !295
  br label %143

143:                                              ; preds = %134, %120
  %144 = phi ptr [ %137, %134 ], [ %57, %120 ]
  %145 = tail call ptr @canon_rtx(ptr noundef nonnull %144) #24
  %146 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %147 = load i8, ptr %146, align 4
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %161, !prof !801

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %152 = load i32, ptr %151, align 8, !tbaa !456
  %153 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !457
  %155 = add nsw i32 %154, %152
  %156 = load ptr, ptr @compiler_params, align 8, !tbaa !289
  %157 = getelementptr inbounds %struct.param_info, ptr %156, i64 14, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !432
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %160, label %161, !prof !802

160:                                              ; preds = %150
  tail call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0, i32 noundef 1) #25
  br label %221

161:                                              ; preds = %150, %143
  %162 = load ptr, ptr %0, align 8, !tbaa !295
  %163 = icmp eq ptr %162, null
  br i1 %163, label %187, label %164, !prof !803

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %166

166:                                              ; preds = %164, %182
  %167 = phi ptr [ %185, %182 ], [ %162, %164 ]
  %168 = phi ptr [ %184, %182 ], [ %165, %164 ]
  %169 = load ptr, ptr %168, align 8, !tbaa !295
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !295
  %172 = tail call i32 @anti_dependence(ptr noundef %171, ptr noundef %145) #24
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %182, label %174, !prof !804

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !295
  %177 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %176) #25, !range !314
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %182, !prof !805

179:                                              ; preds = %174
  %180 = load ptr, ptr %170, align 8, !tbaa !295
  %181 = load ptr, ptr %175, align 8, !tbaa !295
  tail call fastcc void @note_mem_dep(ptr noundef %145, ptr noundef %180, ptr noundef %181, i32 noundef 67108864) #25
  br label %182

182:                                              ; preds = %179, %174, %166
  %183 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %183, align 8, !tbaa !295
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %166, !prof !806, !llvm.loop !807

187:                                              ; preds = %182, %161
  %188 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !295
  %190 = icmp eq ptr %189, null
  br i1 %190, label %214, label %191, !prof !808

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %193

193:                                              ; preds = %191, %209
  %194 = phi ptr [ %212, %209 ], [ %189, %191 ]
  %195 = phi ptr [ %211, %209 ], [ %192, %191 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !295
  %197 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !295
  %199 = tail call i32 @output_dependence(ptr noundef %198, ptr noundef %145) #24
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %209, label %201, !prof !809

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !295
  %204 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %203) #25, !range !314
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209, !prof !810

206:                                              ; preds = %201
  %207 = load ptr, ptr %197, align 8, !tbaa !295
  %208 = load ptr, ptr %202, align 8, !tbaa !295
  tail call fastcc void @note_mem_dep(ptr noundef %145, ptr noundef %207, ptr noundef %208, i32 noundef 33554432) #25
  br label %209

209:                                              ; preds = %206, %201, %193
  %210 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1, i32 0, i32 0, i64 1
  %212 = load ptr, ptr %210, align 8, !tbaa !295
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %193, !prof !811, !llvm.loop !812

214:                                              ; preds = %209, %187
  %215 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !434
  tail call fastcc void @add_dependence_list(ptr noundef %2, ptr noundef %216, i32 noundef 1, i32 noundef 12) #25
  %217 = load i8, ptr %146, align 4
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %221, !prof !801

220:                                              ; preds = %214
  tail call fastcc void @add_insn_mem_dependence(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef %2, ptr noundef nonnull %57) #25
  br label %221

221:                                              ; preds = %214, %220, %160
  %222 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %223, ptr noundef %2) #25
  br label %224

224:                                              ; preds = %55, %87, %113, %78, %221
  br i1 %12, label %231, label %225, !prof !788

225:                                              ; preds = %224
  %226 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %227 = getelementptr inbounds %struct.sched_deps_info_def, ptr %226, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !792
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230, !prof !732

230:                                              ; preds = %225
  tail call void %228() #24
  br label %231

231:                                              ; preds = %230, %225, %224
  %232 = load i32, ptr %1, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 23
  br i1 %234, label %235, label %238, !prof !813

235:                                              ; preds = %231
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
  %236 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %237, ptr noundef %2) #25
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !295
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
define internal fastcc void @setup_insn_reg_uses(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !277 !PGOFuncName !814 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  %5 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !289
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %3) #25
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !314
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %48
  %11 = load i32, ptr %3, align 4, !tbaa !297
  %12 = icmp ult i32 %11, 53
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !418
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
  %23 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !289
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %11) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !289
  %28 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %11) #24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26, %22, %19
  %31 = tail call fastcc ptr @create_insn_reg_use(i32 noundef %11, ptr noundef %1) #25
  %32 = getelementptr inbounds %struct.reg_use_data, ptr %31, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !815
  %33 = load ptr, ptr %9, align 8, !tbaa !481
  %34 = zext i32 %11 to i64
  %35 = getelementptr inbounds %struct.deps_reg, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !295
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %30, %38
  %39 = phi ptr [ %46, %38 ], [ %36, %30 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !295
  %42 = tail call fastcc ptr @create_insn_reg_use(i32 noundef %11, ptr noundef %41) #25
  %43 = load ptr, ptr %32, align 8, !tbaa !815
  store ptr %42, ptr %32, align 8, !tbaa !815
  %44 = getelementptr inbounds %struct.reg_use_data, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !815
  %45 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !295
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %38, !llvm.loop !817

48:                                               ; preds = %38, %30, %26, %13
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !314
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %10, !llvm.loop !818

51:                                               ; preds = %48, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_insn_reg_pressure_info(ptr noundef %0) unnamed_addr #0 !prof !277 !PGOFuncName !819 {
  %2 = load i8, ptr @sched_pressure_p, align 1, !tbaa !295
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
  %11 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = zext nneg i32 %11 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %21, %15 ]
  %17 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !297
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %19
  store i32 0, ptr %20, align 4
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, %14
  br i1 %22, label %23, label %15, !llvm.loop !820

23:                                               ; preds = %15, %10
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !295
  tail call void @note_stores(ptr noundef %26, ptr noundef nonnull @mark_insn_reg_clobber, ptr noundef nonnull %0) #24
  %27 = load ptr, ptr %25, align 8, !tbaa !295
  tail call void @note_stores(ptr noundef %27, ptr noundef nonnull @mark_insn_reg_store, ptr noundef nonnull %0) #24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !295
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
  %38 = load ptr, ptr %37, align 8, !tbaa !295
  tail call fastcc void @mark_reg_death(ptr noundef %38) #25
  br label %39

39:                                               ; preds = %31, %36
  %40 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !295
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %31, !llvm.loop !821

43:                                               ; preds = %39, %23
  %44 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %45 = shl i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @xmalloc(i64 noundef %46) #24
  %48 = load ptr, ptr @h_i_d, align 8
  %49 = load i32, ptr %24, align 8, !tbaa !295
  %50 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %48, i32 noundef %49) #25
  %51 = getelementptr inbounds %struct._haifa_insn_data, ptr %50, i64 0, i32 13
  store ptr %47, ptr %51, align 8, !tbaa !822
  store ptr %47, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !289
  %52 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 2
  %55 = tail call ptr @xcalloc(i64 noundef %54, i64 noundef 1) #24
  %56 = load ptr, ptr @h_i_d, align 8
  %57 = load i32, ptr %24, align 8, !tbaa !295
  %58 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %56, i32 noundef %57) #25
  %59 = getelementptr inbounds %struct._haifa_insn_data, ptr %58, i64 0, i32 14
  store ptr %55, ptr %59, align 8, !tbaa !823
  %60 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %43
  %63 = load ptr, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !289
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi i64 [ 0, %62 ], [ %72, %64 ]
  %66 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !297
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [27 x %struct.reg_pressure_data], ptr @reg_pressure_info, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.reg_pressure_data, ptr %63, i64 %65
  store i32 %70, ptr %71, align 4
  %72 = add nuw nsw i64 %65, 1
  %73 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %64, label %76, !llvm.loop !824

76:                                               ; preds = %64, %43, %5
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sel_mark_hard_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !417 !PGOFuncName !825 {
  %6 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20, !prof !826

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @max_reg_num() #24
  %13 = add nsw i32 %12, -1
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !543
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11
  tail call fastcc void @extend_deps_reg_info(ptr noundef %0, i32 noundef %1) #25
  br label %20

20:                                               ; preds = %19, %15, %8, %5
  tail call void @maybe_extend_reg_info_p() #25
  %21 = icmp slt i32 %1, 53
  br i1 %21, label %22, label %47, !prof !420

22:                                               ; preds = %20
  %23 = sext i32 %1 to i64
  %24 = zext nneg i32 %2 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !295
  %27 = zext i8 %26 to i32
  %28 = icmp eq i8 %26, 0
  switch i32 %3, label %31 [
    i32 23, label %30
    i32 24, label %29
  ], !prof !827

29:                                               ; preds = %22
  br i1 %28, label %100, label %37, !prof !828

30:                                               ; preds = %22
  br i1 %28, label %100, label %32, !prof !829

31:                                               ; preds = %22
  br i1 %28, label %100, label %42, !prof !830

32:                                               ; preds = %30, %32
  %33 = phi i32 [ %34, %32 ], [ %27, %30 ]
  %34 = add nsw i32 %33, -1
  %35 = add nsw i32 %34, %1
  tail call fastcc void @note_reg_set(i32 noundef %35) #25
  %36 = icmp ugt i32 %33, 1
  br i1 %36, label %32, label %100, !prof !829, !llvm.loop !831

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %39, %37 ], [ %27, %29 ]
  %39 = add nsw i32 %38, -1
  %40 = add nsw i32 %39, %1
  tail call fastcc void @note_reg_use(i32 noundef %40) #25
  %41 = icmp ugt i32 %38, 1
  br i1 %41, label %37, label %100, !prof !828, !llvm.loop !832

42:                                               ; preds = %31, %42
  %43 = phi i32 [ %44, %42 ], [ %27, %31 ]
  %44 = add nsw i32 %43, -1
  %45 = add nsw i32 %44, %1
  tail call fastcc void @note_reg_clobber(i32 noundef %45) #25
  %46 = icmp ugt i32 %43, 1
  br i1 %46, label %42, label %100, !prof !830, !llvm.loop !833

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !543
  %50 = icmp sgt i32 %49, %1
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !295
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
  %63 = load i32, ptr @reload_completed, align 4, !tbaa !297
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
  %75 = load ptr, ptr %74, align 8, !tbaa !295
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %75, ptr noundef %4) #25
  br label %76

76:                                               ; preds = %68, %73, %65, %62
  %77 = load ptr, ptr @reg_info_p, align 8, !tbaa !289
  %78 = zext nneg i32 %1 to i64
  %79 = getelementptr inbounds %struct.reg_info_t, ptr %77, i64 %78, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !834
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
  %95 = load ptr, ptr %94, align 8, !tbaa !836
  %96 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %4, ptr noundef %95) #24
  store ptr %96, ptr %94, align 8, !tbaa !836
  br label %100

97:                                               ; preds = %89, %82
  %98 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !444
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
define internal fastcc void @note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !837 !PGOFuncName !838 {
  %5 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %6 = getelementptr inbounds %struct.sched_deps_info_def, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !668
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !839

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
define internal fastcc i32 @deps_may_trap_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !840 !PGOFuncName !841 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !295
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %14, !prof !842

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
define internal fastcc void @add_insn_mem_dependence(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !843 !PGOFuncName !844 {
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !845

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1551, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %4, %9
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %21, label %12, !prof !846

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %27, label %17, !prof !847

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !456
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !456
  br label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !457
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !457
  br label %27

27:                                               ; preds = %12, %17, %21
  %28 = phi ptr [ %0, %12 ], [ %0, %17 ], [ %22, %21 ]
  %29 = phi ptr [ %13, %12 ], [ %13, %17 ], [ %23, %21 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !289
  %31 = tail call ptr @alloc_INSN_LIST(ptr noundef %2, ptr noundef %30) #24
  store ptr %31, ptr %28, align 8, !tbaa !289
  %32 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %33 = getelementptr inbounds %struct.sched_deps_info_def, ptr %32, i64 0, i32 12
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37, !prof !845

37:                                               ; preds = %27
  %38 = tail call ptr @shallow_copy_rtx_stat(ptr noundef %3) #24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !295
  %41 = tail call ptr @cselib_subst_to_values(ptr noundef %40) #24
  store ptr %41, ptr %39, align 8, !tbaa !295
  br label %42

42:                                               ; preds = %37, %27
  %43 = phi ptr [ %38, %37 ], [ %3, %27 ]
  %44 = tail call ptr @canon_rtx(ptr noundef %43) #24
  %45 = load ptr, ptr %29, align 8, !tbaa !289
  %46 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %44, ptr noundef %45) #24
  store ptr %46, ptr %29, align 8, !tbaa !289
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extend_deps_reg_info(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !277 !PGOFuncName !848 {
  %3 = add nsw i32 %1, 1
  %4 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2065, ptr noundef nonnull @.str.1) #24
  %7 = load i32, ptr @reload_completed, align 4, !tbaa !297
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
  %18 = load i32, ptr %17, align 8, !tbaa !543
  %19 = icmp sgt i32 %18, %1
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !481
  %23 = sext i32 %3 to i64
  %24 = mul nsw i64 %23, 40
  %25 = tail call ptr @xrealloc(ptr noundef %22, i64 noundef %24) #24
  store ptr %25, ptr %21, align 8, !tbaa !481
  %26 = load i32, ptr %17, align 8, !tbaa !543
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.deps_reg, ptr %25, i64 %27
  %29 = sub nsw i32 %3, %26
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %30, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %14, %20
  %33 = phi ptr [ %17, %20 ], [ %15, %14 ]
  store i32 %3, ptr %33, align 8, !tbaa !543
  br label %34

34:                                               ; preds = %32, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_set(i32 noundef %0) unnamed_addr #0 !prof !849 !PGOFuncName !850 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !665
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !851

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_use(i32 noundef %0) unnamed_addr #0 !prof !852 !PGOFuncName !853 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !667
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !854

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_clobber(i32 noundef %0) unnamed_addr #0 !prof !855 !PGOFuncName !856 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !666
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !857

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
define internal fastcc noundef ptr @create_insn_reg_use(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !277 !PGOFuncName !858 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #24
  store i32 %0, ptr %3, align 8, !tbaa !859
  %4 = getelementptr inbounds %struct.reg_use_data, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !860
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !295
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !861
  %11 = getelementptr inbounds %struct.reg_use_data, ptr %3, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !862
  %12 = load i32, ptr %6, align 8, !tbaa !295
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 15
  store ptr %3, ptr %14, align 8, !tbaa !861
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_insn_reg_clobber(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !277 !PGOFuncName !863 {
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
define internal void @mark_insn_reg_store(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 !prof !277 !PGOFuncName !864 {
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
define internal fastcc void @mark_reg_death(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !277 !PGOFuncName !865 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !295
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
  %23 = load i8, ptr %22, align 1, !tbaa !295
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
define internal fastcc void @mark_insn_reg_birth(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !277 !PGOFuncName !866 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !295
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
  %26 = load i8, ptr %25, align 1, !tbaa !295
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
define internal fastcc void @mark_insn_hard_regno_birth(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !277 !PGOFuncName !867 {
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
  %18 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !418
  %19 = shl nuw i64 1, %14
  %20 = and i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  %23 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !289
  %24 = getelementptr inbounds i32, ptr %23, i64 %14
  %25 = load i32, ptr %24, align 4, !tbaa !297
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
  %55 = tail call fastcc zeroext i8 @insn_use_p(ptr noundef %0, i32 noundef %54) #25, !range !314
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
  br i1 %69, label %13, label %70, !llvm.loop !868

70:                                               ; preds = %67, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn_pseudo_birth(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !277 !PGOFuncName !869 {
  %5 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !289
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !297
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64
  %12 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !289
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  %14 = load ptr, ptr %13, align 8, !tbaa !289
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %11, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !297
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
  %50 = tail call fastcc zeroext i8 @insn_use_p(ptr noundef %0, i32 noundef %1) #25, !range !314
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
define internal fastcc noundef zeroext i8 @insn_use_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #20 !prof !277 !PGOFuncName !870 {
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !295
  %6 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %3, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._haifa_insn_data, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.reg_use_data, ptr %15, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !289
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !llvm.loop !871

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %16 = load i32, ptr %15, align 8, !tbaa !859
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %14, %10, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_insn_reg_set(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !277 !PGOFuncName !872 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store i32 %0, ptr %3, align 8, !tbaa !873
  %4 = getelementptr inbounds %struct.reg_set_data, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !875
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !295
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !876
  %11 = getelementptr inbounds %struct.reg_set_data, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !877
  %12 = load i32, ptr %6, align 8, !tbaa !295
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 16
  store ptr %3, ptr %14, align 8, !tbaa !876
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_hard_regno_death(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !277 !PGOFuncName !878 {
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
  %13 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !418
  %14 = shl nuw i64 1, %9
  %15 = and i64 %13, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !289
  %19 = getelementptr inbounds i32, ptr %18, i64 %9
  %20 = load i32, ptr %19, align 4, !tbaa !297
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
  br i1 %32, label %8, label %33, !llvm.loop !879

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @mark_pseudo_death(i32 noundef %0) unnamed_addr #21 !prof !277 !PGOFuncName !880 {
  %2 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !289
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds i32, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !297
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = zext i32 %5 to i64
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !289
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !289
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %8, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !297
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
define internal fastcc void @delete_all_dependences(ptr noundef %0) unnamed_addr #0 !prof !277 !PGOFuncName !881 {
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
  br i1 %8, label %9, label %6, !llvm.loop !882

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
define internal fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !883 !PGOFuncName !884 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !885

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !886
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !888 !PGOFuncName !889 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !890

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !891
  %7 = load i32, ptr %0, align 8, !tbaa !886
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
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !892 !PGOFuncName !893 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !289
  %3 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef %2) #25
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow(i32 noundef %0) #25
  %4 = load ptr, ptr @h_d_i_d, align 8, !tbaa !289
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
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !892 !PGOFuncName !894 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !289
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !895

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !886
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_reserve_exact(i32 noundef %8) #25
  %9 = load ptr, ptr @h_d_i_d, align 8, !tbaa !289, !nonnull !896, !noundef !896
  store i32 %0, ptr %9, align 8, !tbaa !886
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_haifa_deps_insn_data_def_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !892 !PGOFuncName !897 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !898
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !892 !PGOFuncName !899 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !289
  %3 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef %2, i32 noundef %0) #25, !range !303
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !658

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 56) #24
  store ptr %6, ptr @h_d_i_d, align 8, !tbaa !289
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_add_or_update_dep_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !900 !PGOFuncName !901 {
  %4 = load ptr, ptr %0, align 8, !tbaa !279
  %5 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !285
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %16, !prof !902

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %17, label %16, !prof !903

16:                                               ; preds = %11, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 849, ptr noundef nonnull @.str.1) #24
  br label %17

17:                                               ; preds = %11, %16
  %18 = icmp eq ptr %6, %4
  br i1 %18, label %19, label %33, !prof !904

19:                                               ; preds = %17
  %20 = load ptr, ptr @sched_deps_info, align 8, !tbaa !289
  %21 = getelementptr inbounds %struct.sched_deps_info_def, ptr %20, i64 0, i32 12
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25, !prof !905

25:                                               ; preds = %19
  %26 = load ptr, ptr @h_d_i_d, align 8
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !295
  %30 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %29) #25
  %31 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %26, i32 noundef %30) #25
  %32 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %31, i64 0, i32 1
  store i32 1, ptr %32, align 4, !tbaa !312
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!276}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!35 = !{ptr @init_dep, ptr @dk_to_ds, i64 1}
!36 = !{ptr @init_dep, ptr @init_dep_1, i64 3208634}
!37 = !{ptr @sched_insns_conditions_mutex_p, ptr @sched_get_condition_with_rev, i64 6313274}
!38 = !{ptr @sched_insns_conditions_mutex_p, ptr @conditions_mutex_p, i64 1}
!39 = !{ptr @sched_insns_conditions_mutex_p, ptr @modified_in_p, i64 1}
!40 = !{ptr @sched_get_condition_with_rev, ptr @any_condjump_p, i64 9768148}
!41 = !{ptr @sched_get_condition_with_rev, ptr @onlyjump_p, i64 2102050}
!42 = !{ptr @sched_get_condition_with_rev, ptr @pc_set, i64 2102049}
!43 = !{ptr @sched_has_condition_p, ptr @sched_get_condition_with_rev, i64 3454874}
!44 = !{ptr @sd_next_list, ptr @VEC_int_base_index, i64 7350943}
!45 = !{ptr @sd_next_list, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 7350943}
!46 = !{ptr @sd_lists_size, ptr @sd_next_list, i64 4288384}
!47 = !{ptr @sd_init_insn, ptr @create_deps_list, i64 2952350}
!48 = !{ptr @sd_init_insn, ptr @VEC_int_base_index, i64 2952350}
!49 = !{ptr @sd_init_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 2952350}
!50 = !{ptr @create_deps_list, ptr @pool_alloc, i64 2952350}
!51 = !{ptr @sd_finish_insn, ptr @fancy_abort, i64 1}
!52 = !{ptr @sd_finish_insn, ptr @VEC_int_base_index, i64 5904700}
!53 = !{ptr @sd_finish_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 5904700}
!54 = !{ptr @sd_finish_insn, ptr @free_deps_list, i64 2952350}
!55 = !{ptr @free_deps_list, ptr @deps_list_empty_p, i64 2952350}
!56 = !{ptr @free_deps_list, ptr @fancy_abort, i64 1}
!57 = !{ptr @free_deps_list, ptr @pool_free, i64 2952350}
!58 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_lists_size, i64 2465276}
!59 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_iterator_start, i64 1232638}
!60 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_iterator_cond, i64 1736011}
!61 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_iterator_next, i64 503373}
!62 = !{ptr @sd_add_dep, ptr @create_dep_node, i64 787720}
!63 = !{ptr @sd_add_dep, ptr @fancy_abort, i64 3}
!64 = !{ptr @sd_add_dep, ptr @sched_insn_is_legitimate_for_speculation_p, i64 1}
!65 = !{ptr @sd_add_dep, ptr @copy_dep, i64 787720}
!66 = !{ptr @sd_add_dep, ptr @get_back_and_forw_lists, i64 787720}
!67 = !{ptr @sd_add_dep, ptr @add_to_deps_list, i64 1575440}
!68 = !{ptr @sd_add_dep, ptr @set_dependency_caches, i64 1}
!69 = !{ptr @create_dep_node, ptr @pool_alloc, i64 787720}
!70 = !{ptr @get_back_and_forw_lists, ptr @VEC_int_base_index, i64 3150880}
!71 = !{ptr @get_back_and_forw_lists, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 3150880}
!72 = !{ptr @add_to_deps_list, ptr @attach_dep_link, i64 1575440}
!73 = !{ptr @add_to_deps_list, ptr @depl_on_debug_p, i64 1575440}
!74 = !{ptr @add_or_update_dep_1, ptr @fancy_abort, i64 4}
!75 = !{ptr @add_or_update_dep_1, ptr @ask_dependency_caches, i64 1}
!76 = !{ptr @add_or_update_dep_1, ptr @sd_find_dep_between_no_cache, i64 1232638}
!77 = !{ptr @add_or_update_dep_1, ptr @update_dep, i64 444918}
!78 = !{ptr @add_or_update_dep_1, ptr @estimate_dep_weak, i64 1}
!79 = !{ptr @add_or_update_dep_1, ptr @set_dep_weak, i64 1}
!80 = !{ptr @add_or_update_dep_1, ptr @sd_add_dep, i64 787720}
!81 = !{ptr @sd_iterator_cond, ptr @sd_next_list, i64 6138463}
!82 = !{ptr @remove_from_deps_list, ptr @detach_dep_link, i64 1575440}
!83 = !{ptr @remove_from_deps_list, ptr @depl_on_debug_p, i64 1575440}
!84 = !{ptr @delete_dep_node, ptr @dep_link_is_detached_p, i64 1575439}
!85 = !{ptr @delete_dep_node, ptr @fancy_abort, i64 2}
!86 = !{ptr @delete_dep_node, ptr @pool_free, i64 787720}
!87 = !{ptr @haifa_note_reg_set, ptr @bitmap_set_bit, i64 1440459}
!88 = !{ptr @haifa_note_reg_clobber, ptr @bitmap_set_bit, i64 110917}
!89 = !{ptr @haifa_note_reg_use, ptr @bitmap_set_bit, i64 1942665}
!90 = !{ptr @ds_to_dt, ptr @fancy_abort, i64 1}
!91 = !{ptr @maybe_extend_reg_info_p, ptr @fancy_abort, i64 1}
!92 = !{ptr @maybe_extend_reg_info_p, ptr @xrecalloc, i64 1}
!93 = !{ptr @deps_analyze_insn, ptr @sel_sched_p, i64 422400}
!94 = !{ptr @deps_analyze_insn, ptr @sel_insn_is_speculation_check, i64 422398}
!95 = !{ptr @deps_analyze_insn, ptr @flush_pending_lists, i64 436966}
!96 = !{ptr @deps_analyze_insn, ptr @alloc_INSN_LIST, i64 834650}
!97 = !{ptr @deps_analyze_insn, ptr @sched_analyze_insn, i64 3338868}
!98 = !{ptr @deps_analyze_insn, ptr @VEC_int_base_index, i64 436965}
!99 = !{ptr @deps_analyze_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 436965}
!100 = !{ptr @deps_analyze_insn, ptr @find_reg_note, i64 436965}
!101 = !{ptr @deps_analyze_insn, ptr @bitmap_set_bit, i64 20100299}
!102 = !{ptr @deps_analyze_insn, ptr @add_dependence_list_and_free, i64 436965}
!103 = !{ptr @deps_analyze_insn, ptr @fancy_abort, i64 1}
!104 = !{ptr @deps_analyze_insn, ptr @free_INSN_LIST_list, i64 412253}
!105 = !{ptr @deps_analyze_insn, ptr @call_may_noreturn_p, i64 206127}
!106 = !{ptr @deps_analyze_insn, ptr @cselib_process_insn, i64 1}
!107 = !{ptr @flush_pending_lists, ptr @add_dependence_list_and_free, i64 1658912}
!108 = !{ptr @flush_pending_lists, ptr @free_EXPR_LIST_list, i64 566717}
!109 = !{ptr @flush_pending_lists, ptr @alloc_INSN_LIST, i64 283359}
!110 = !{ptr @sched_analyze_insn, ptr @extract_insn, i64 1}
!111 = !{ptr @sched_analyze_insn, ptr @preprocess_constraints, i64 1}
!112 = !{ptr @sched_analyze_insn, ptr @ira_implicitly_set_insn_hard_regs, i64 1}
!113 = !{ptr @sched_analyze_insn, ptr @may_trap_p, i64 3338869}
!114 = !{ptr @sched_analyze_insn, ptr @add_dependence_list, i64 72340811}
!115 = !{ptr @sched_analyze_insn, ptr @sched_analyze_2, i64 929172}
!116 = !{ptr @sched_analyze_insn, ptr @sched_analyze_1, i64 2965838}
!117 = !{ptr @sched_analyze_insn, ptr @find_reg_note, i64 436967}
!118 = !{ptr @sched_analyze_insn, ptr @next_nonnote_insn, i64 756376}
!119 = !{ptr @sched_analyze_insn, ptr @bitmap_initialize_stat, i64 296658}
!120 = !{ptr @sched_analyze_insn, ptr @bmp_iter_set_init, i64 10280940}
!121 = !{ptr @sched_analyze_insn, ptr @bmp_iter_set, i64 34056786}
!122 = !{ptr @sched_analyze_insn, ptr @alloc_INSN_LIST, i64 16449322}
!123 = !{ptr @sched_analyze_insn, ptr @bmp_iter_next, i64 23775846}
!124 = !{ptr @sched_analyze_insn, ptr @bitmap_ior_into, i64 5140452}
!125 = !{ptr @sched_analyze_insn, ptr @bitmap_clear, i64 10390498}
!126 = !{ptr @sched_analyze_insn, ptr @sched_insns_conditions_mutex_p, i64 153}
!127 = !{ptr @sched_analyze_insn, ptr @add_dependence, i64 166}
!128 = !{ptr @sched_analyze_insn, ptr @can_throw_internal, i64 1193341}
!129 = !{ptr @sched_analyze_insn, ptr @control_flow_insn_p, i64 2145528}
!130 = !{ptr @sched_analyze_insn, ptr @setup_insn_reg_uses, i64 1}
!131 = !{ptr @sched_analyze_insn, ptr @setup_insn_reg_pressure_info, i64 1}
!132 = !{ptr @sched_analyze_insn, ptr @sel_sched_p, i64 116015}
!133 = !{ptr @sched_analyze_insn, ptr @sched_has_condition_p, i64 3454874}
!134 = !{ptr @sched_analyze_insn, ptr @bitmap_set_bit, i64 4917770}
!135 = !{ptr @sched_analyze_insn, ptr @add_dependence_list_and_free, i64 6498088}
!136 = !{ptr @sched_analyze_insn, ptr @bitmap_clear_bit, i64 852426}
!137 = !{ptr @sched_analyze_insn, ptr @sel_insn_is_speculation_check, i64 116004}
!138 = !{ptr @sched_analyze_insn, ptr @flush_pending_lists, i64 116004}
!139 = !{ptr @sched_analyze_insn, ptr @sched_insn_is_legitimate_for_speculation_p, i64 1}
!140 = !{ptr @sched_analyze_insn, ptr @change_spec_dep_to_hard, i64 3}
!141 = !{ptr @sched_analyze_insn, ptr @sd_iterator_cond, i64 3}
!142 = !{ptr @add_dependence_list_and_free, ptr @add_dependence_list, i64 3550803}
!143 = !{ptr @add_dependence_list_and_free, ptr @sched_insns_conditions_mutex_p, i64 913587}
!144 = !{ptr @add_dependence_list_and_free, ptr @add_dependence, i64 1468720}
!145 = !{ptr @add_dependence_list_and_free, ptr @free_INSN_LIST_node, i64 1468721}
!146 = !{ptr @deps_start_bb, ptr @fancy_abort, i64 1}
!147 = !{ptr @deps_start_bb, ptr @prev_nonnote_insn, i64 3}
!148 = !{ptr @sched_analyze, ptr @cselib_init, i64 1}
!149 = !{ptr @sched_analyze, ptr @deps_start_bb, i64 187028}
!150 = !{ptr @sched_analyze, ptr @sd_init_insn, i64 590468}
!151 = !{ptr @sched_analyze, ptr @deps_analyze_insn, i64 590469}
!152 = !{ptr @sched_analyze, ptr @cselib_finish, i64 1}
!153 = !{ptr @sched_free_deps, ptr @VEC_int_base_index, i64 1180933}
!154 = !{ptr @sched_free_deps, ptr @delete_dep_nodes_in_back_deps, i64 590466}
!155 = !{ptr @sched_free_deps, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 590466}
!156 = !{ptr @sched_free_deps, ptr @clear_deps_list, i64 590466}
!157 = !{ptr @sched_free_deps, ptr @sd_finish_insn, i64 590466}
!158 = !{ptr @delete_dep_nodes_in_back_deps, ptr @sd_iterator_start, i64 590470}
!159 = !{ptr @delete_dep_nodes_in_back_deps, ptr @sd_iterator_cond, i64 1378190}
!160 = !{ptr @delete_dep_nodes_in_back_deps, ptr @get_back_and_forw_lists, i64 787720}
!161 = !{ptr @delete_dep_nodes_in_back_deps, ptr @remove_from_deps_list, i64 787720}
!162 = !{ptr @delete_dep_nodes_in_back_deps, ptr @delete_dep_node, i64 787720}
!163 = !{ptr @clear_deps_list, ptr @remove_from_deps_list, i64 787720}
!164 = !{ptr @init_deps, ptr @max_reg_num, i64 1}
!165 = !{ptr @init_deps, ptr @xcalloc, i64 518308}
!166 = !{ptr @init_deps, ptr @bitmap_initialize_stat, i64 2223356}
!167 = !{ptr @init_deps_reg_last, ptr @fancy_abort, i64 3}
!168 = !{ptr @init_deps_reg_last, ptr @xcalloc, i64 337394}
!169 = !{ptr @free_deps, ptr @fancy_abort, i64 1}
!170 = !{ptr @free_deps, ptr @free_INSN_LIST_list, i64 19460977}
!171 = !{ptr @free_deps, ptr @free_EXPR_LIST_list, i64 2223354}
!172 = !{ptr @free_deps, ptr @bmp_iter_set_init, i64 1111677}
!173 = !{ptr @free_deps, ptr @bmp_iter_set, i64 16705191}
!174 = !{ptr @free_deps, ptr @bmp_iter_next, i64 15593514}
!175 = !{ptr @free_deps, ptr @bitmap_clear, i64 2223354}
!176 = !{ptr @free_deps, ptr @free, i64 855701}
!177 = !{ptr @remove_from_deps, ptr @remove_from_both_dependence_lists, i64 538920}
!178 = !{ptr @remove_from_deps, ptr @remove_from_dependence_list, i64 8792062}
!179 = !{ptr @remove_from_deps, ptr @bmp_iter_set_init, i64 269460}
!180 = !{ptr @remove_from_deps, ptr @bmp_iter_set, i64 8357052}
!181 = !{ptr @remove_from_deps, ptr @bitmap_clear_bit, i64 1182413}
!182 = !{ptr @remove_from_deps, ptr @bmp_iter_next, i64 8087592}
!183 = !{ptr @remove_from_both_dependence_lists, ptr @remove_free_INSN_LIST_node, i64 57682}
!184 = !{ptr @remove_from_both_dependence_lists, ptr @remove_free_EXPR_LIST_node, i64 57682}
!185 = !{ptr @remove_from_dependence_list, ptr @remove_free_INSN_LIST_node, i64 8334646}
!186 = !{ptr @sched_deps_init, ptr @init_deps_data_vector, i64 641205}
!187 = !{ptr @sched_deps_init, ptr @sel_sched_p, i64 641205}
!188 = !{ptr @sched_deps_init, ptr @create_alloc_pool, i64 78}
!189 = !{ptr @init_deps_data_vector, ptr @VEC_haifa_deps_insn_data_def_base_length, i64 641205}
!190 = !{ptr @init_deps_data_vector, ptr @VEC_haifa_deps_insn_data_def_base_space, i64 134}
!191 = !{ptr @init_deps_data_vector, ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, i64 133}
!192 = !{ptr @sched_deps_finish, ptr @deps_pools_are_empty_p, i64 38}
!193 = !{ptr @sched_deps_finish, ptr @fancy_abort, i64 3}
!194 = !{ptr @sched_deps_finish, ptr @free_alloc_pool_if_empty, i64 76}
!195 = !{ptr @sched_deps_finish, ptr @VEC_haifa_deps_insn_data_def_heap_free, i64 38}
!196 = !{ptr @sched_deps_finish, ptr @free, i64 3}
!197 = !{ptr @VEC_haifa_deps_insn_data_def_heap_free, ptr @free, i64 37}
!198 = !{ptr @init_deps_global, ptr @bitmap_obstack_alloc_stat, i64 828594}
!199 = !{ptr @init_deps_global, ptr @sel_sched_p, i64 276198}
!200 = !{ptr @haifa_start_insn, ptr @fancy_abort, i64 2}
!201 = !{ptr @haifa_note_mem_dep, ptr @ds_to_dt, i64 756}
!202 = !{ptr @haifa_note_mem_dep, ptr @init_dep_1, i64 756}
!203 = !{ptr @haifa_note_mem_dep, ptr @maybe_add_or_update_dep_1, i64 756}
!204 = !{ptr @haifa_note_dep, ptr @ds_to_dt, i64 1590345}
!205 = !{ptr @haifa_note_dep, ptr @init_dep, i64 1590345}
!206 = !{ptr @haifa_note_dep, ptr @maybe_add_or_update_dep_1, i64 1590345}
!207 = !{ptr @finish_deps_global, ptr @bitmap_obstack_free, i64 828594}
!208 = !{ptr @estimate_dep_weak, ptr @rhs_regno, i64 2}
!209 = !{ptr @add_dependence, ptr @fancy_abort, i64 2}
!210 = !{ptr @add_dependence, ptr @note_dep, i64 4663175}
!211 = !{ptr @ds_get_max_dep_weak, ptr @set_dep_weak, i64 4}
!212 = !{ptr @attach_dep_link, ptr @fancy_abort, i64 3}
!213 = !{ptr @update_dep, ptr @update_dependency_caches, i64 1}
!214 = !{ptr @add_dependence_list, ptr @sched_insns_conditions_mutex_p, i64 1912186}
!215 = !{ptr @add_dependence_list, ptr @add_dependence, i64 3104153}
!216 = !{ptr @sched_analyze_2, ptr @fancy_abort, i64 1}
!217 = !{ptr @sched_analyze_2, ptr @rhs_regno, i64 2361412}
!218 = !{ptr @sched_analyze_2, ptr @sched_analyze_reg, i64 2361413}
!219 = !{ptr @sched_analyze_2, ptr @shallow_copy_rtx_stat, i64 1}
!220 = !{ptr @sched_analyze_2, ptr @cselib_lookup_from_insn, i64 1}
!221 = !{ptr @sched_analyze_2, ptr @cselib_subst_to_values, i64 1}
!222 = !{ptr @sched_analyze_2, ptr @canon_rtx, i64 842986}
!223 = !{ptr @sched_analyze_2, ptr @read_dependence, i64 115850}
!224 = !{ptr @sched_analyze_2, ptr @sched_insns_conditions_mutex_p, i64 1293}
!225 = !{ptr @sched_analyze_2, ptr @true_dependence, i64 408884}
!226 = !{ptr @sched_analyze_2, ptr @note_mem_dep, i64 1291}
!227 = !{ptr @sched_analyze_2, ptr @add_dependence, i64 90151}
!228 = !{ptr @sched_analyze_2, ptr @deps_may_trap_p, i64 192425}
!229 = !{ptr @sched_analyze_2, ptr @sel_sched_p, i64 1}
!230 = !{ptr @sched_analyze_2, ptr @add_insn_mem_dependence, i64 411232}
!231 = !{ptr @sched_analyze_2, ptr @sched_analyze_2, i64 7096359}
!232 = !{ptr @sched_analyze_2, ptr @flush_pending_lists, i64 2}
!233 = !{ptr @sched_analyze_2, ptr @sched_analyze_1, i64 458}
!234 = !{ptr @sched_analyze_1, ptr @fancy_abort, i64 1}
!235 = !{ptr @sched_analyze_1, ptr @gen_rtx_fmt_e_stat, i64 12}
!236 = !{ptr @sched_analyze_1, ptr @sched_analyze_1, i64 12}
!237 = !{ptr @sched_analyze_1, ptr @df_read_modify_subreg_p, i64 1}
!238 = !{ptr @sched_analyze_1, ptr @sched_analyze_2, i64 3960314}
!239 = !{ptr @sched_analyze_1, ptr @rhs_regno, i64 2133894}
!240 = !{ptr @sched_analyze_1, ptr @sched_analyze_reg, i64 2133894}
!241 = !{ptr @sched_analyze_1, ptr @shallow_copy_rtx_stat, i64 1}
!242 = !{ptr @sched_analyze_1, ptr @cselib_lookup_from_insn, i64 1}
!243 = !{ptr @sched_analyze_1, ptr @cselib_subst_to_values, i64 1}
!244 = !{ptr @sched_analyze_1, ptr @canon_rtx, i64 448418}
!245 = !{ptr @sched_analyze_1, ptr @flush_pending_lists, i64 1}
!246 = !{ptr @sched_analyze_1, ptr @anti_dependence, i64 173063}
!247 = !{ptr @sched_analyze_1, ptr @sched_insns_conditions_mutex_p, i64 1254}
!248 = !{ptr @sched_analyze_1, ptr @note_mem_dep, i64 1252}
!249 = !{ptr @sched_analyze_1, ptr @output_dependence, i64 30732}
!250 = !{ptr @sched_analyze_1, ptr @add_dependence_list, i64 448417}
!251 = !{ptr @sched_analyze_1, ptr @add_insn_mem_dependence, i64 245740}
!252 = !{ptr @sched_analyze_reg, ptr @sel_sched_p, i64 1}
!253 = !{ptr @sched_analyze_reg, ptr @max_reg_num, i64 1}
!254 = !{ptr @sched_analyze_reg, ptr @maybe_extend_reg_info_p, i64 4495312}
!255 = !{ptr @sched_analyze_reg, ptr @note_reg_set, i64 1985015}
!256 = !{ptr @sched_analyze_reg, ptr @note_reg_use, i64 2361414}
!257 = !{ptr @sched_analyze_reg, ptr @note_reg_clobber, i64 148882}
!258 = !{ptr @deps_may_trap_p, ptr @rhs_regno, i64 1}
!259 = !{ptr @deps_may_trap_p, ptr @rtx_addr_can_trap_p, i64 192425}
!260 = !{ptr @add_insn_mem_dependence, ptr @fancy_abort, i64 1}
!261 = !{ptr @add_insn_mem_dependence, ptr @alloc_INSN_LIST, i64 656973}
!262 = !{ptr @add_insn_mem_dependence, ptr @shallow_copy_rtx_stat, i64 1}
!263 = !{ptr @add_insn_mem_dependence, ptr @cselib_subst_to_values, i64 1}
!264 = !{ptr @add_insn_mem_dependence, ptr @canon_rtx, i64 656973}
!265 = !{ptr @add_insn_mem_dependence, ptr @alloc_EXPR_LIST, i64 656973}
!266 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, ptr @VEC_haifa_deps_insn_data_def_base_length, i64 133}
!267 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow, i64 133}
!268 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, ptr @VEC_haifa_deps_insn_data_def_base_address, i64 133}
!269 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow, ptr @VEC_haifa_deps_insn_data_def_heap_reserve_exact, i64 133}
!270 = !{ptr @VEC_haifa_deps_insn_data_def_heap_reserve_exact, ptr @VEC_haifa_deps_insn_data_def_base_space, i64 133}
!271 = !{ptr @VEC_haifa_deps_insn_data_def_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 132}
!272 = !{ptr @maybe_add_or_update_dep_1, ptr @fancy_abort, i64 2}
!273 = !{ptr @maybe_add_or_update_dep_1, ptr @VEC_int_base_index, i64 1}
!274 = !{ptr @maybe_add_or_update_dep_1, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 1}
!275 = !{ptr @maybe_add_or_update_dep_1, ptr @add_or_update_dep_1, i64 1232637}
!276 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!277 = !{!"function_entry_count", i64 0}
!278 = !{!"function_entry_count", i64 3209390}
!279 = !{!280, !281, i64 0}
!280 = !{!"_dep", !281, i64 0, !281, i64 8, !284, i64 16, !284, i64 20}
!281 = !{!"any pointer", !282, i64 0}
!282 = !{!"omnipotent char", !283, i64 0}
!283 = !{!"Simple C/C++ TBAA"}
!284 = !{!"int", !282, i64 0}
!285 = !{!280, !281, i64 8}
!286 = !{!280, !284, i64 16}
!287 = !{!280, !284, i64 20}
!288 = !{!"function_entry_count", i64 3208634}
!289 = !{!281, !281, i64 0}
!290 = !{!291, !284, i64 128}
!291 = !{!"haifa_sched_info", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !281, i64 88, !284, i64 96, !284, i64 100, !281, i64 104, !281, i64 112, !281, i64 120, !284, i64 128}
!292 = !{!"branch_weights", i32 3208635, i32 1}
!293 = !{i32 16777216, i32 67108865}
!294 = !{!"sched-deps.c:dump_dep"}
!295 = !{!282, !282, i64 0}
!296 = !{!"function_entry_count", i64 38}
!297 = !{!284, !284, i64 0}
!298 = !{!"branch_weights", i32 39, i32 1}
!299 = !{!"function_entry_count", i64 5083107}
!300 = !{!"branch_weights", i32 949537, i32 4133572}
!301 = !{!"branch_weights", i32 976934, i32 3156639}
!302 = !{!"branch_weights", i32 1282, i32 -245936587}
!303 = !{i32 0, i32 2}
!304 = !{!"function_entry_count", i64 9768150}
!305 = !{!"sched-deps.c:sched_get_condition_with_rev"}
!306 = !{!"branch_weights", i32 1, i32 9768151}
!307 = !{!"branch_weights", i32 3454875, i32 6313277}
!308 = !{!"branch_weights", i32 7666101, i32 2102051}
!309 = !{!"branch_weights", i32 1, i32 2102051}
!310 = !{!"branch_weights", i32 2102051, i32 1}
!311 = !{!"sched-deps.c:conditions_mutex_p"}
!312 = !{!313, !284, i64 4}
!313 = !{!"_haifa_deps_insn_data", !284, i64 0, !284, i64 4, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !284, i64 48}
!314 = !{i8 0, i8 2}
!315 = !{!316, !281, i64 40}
!316 = !{!"_haifa_insn_data", !284, i64 0, !284, i64 4, !284, i64 8, !284, i64 12, !284, i64 16, !317, i64 20, !284, i64 22, !284, i64 22, !282, i64 23, !284, i64 24, !284, i64 28, !284, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !284, i64 88}
!317 = !{!"short", !282, i64 0}
!318 = !{!"function_entry_count", i64 20386309}
!319 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_index"}
!320 = !{!"function_entry_count", i64 20976779}
!321 = !{!"sched-deps.c:VEC_int_base_index"}
!322 = !{!"function_entry_count", i64 1455807}
!323 = !{!"sched-deps.c:sel_sched_p"}
!324 = !{!325, !284, i64 32}
!325 = !{!"common_sched_info_def", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !284, i64 32}
!326 = !{!"sched-deps.c:VEC_haifa_insn_data_def_base_index"}
!327 = !{!"function_entry_count", i64 3454874}
!328 = !{!"sched-deps.c:sched_has_condition_p"}
!329 = !{!"function_entry_count", i64 7350943}
!330 = !{!"branch_weights", i32 5248056, i32 2102889}
!331 = !{!313, !281, i64 8}
!332 = !{!"branch_weights", i32 3191364, i32 2056693}
!333 = !{!313, !281, i64 16}
!334 = !{!"branch_weights", i32 1, i32 3191364}
!335 = !{!313, !281, i64 24}
!336 = !{!313, !281, i64 32}
!337 = !{!313, !281, i64 40}
!338 = !{!"function_entry_count", i64 3055746}
!339 = !{!"branch_weights", i32 1, i32 3055746}
!340 = !{!"branch_weights", i32 1, i32 4288385}
!341 = !{!342, !284, i64 8}
!342 = !{!"_deps_list", !281, i64 0, !284, i64 8}
!343 = !{!"branch_weights", i32 3055746, i32 1232639}
!344 = distinct !{!344, !345}
!345 = !{!"llvm.loop.mustprogress"}
!346 = !{!"function_entry_count", i64 2952350}
!347 = !{!"sched-deps.c:deps_list_empty_p"}
!348 = !{!"function_entry_count", i64 590470}
!349 = !{!"branch_weights", i32 1, i32 590471}
!350 = !{!"sched-deps.c:create_deps_list"}
!351 = !{!342, !281, i64 0}
!352 = !{!"sched-deps.c:free_deps_list"}
!353 = !{!"branch_weights", i32 1, i32 2952351}
!354 = !{!"function_entry_count", i64 1232638}
!355 = !{!"sched-deps.c:sd_find_dep_between_no_cache"}
!356 = !{!"branch_weights", i32 1232639, i32 1}
!357 = !{!"branch_weights", i32 279781, i32 952859}
!358 = !{!"branch_weights", i32 43470, i32 190115}
!359 = !{!"branch_weights", i32 46197, i32 143919}
!360 = !{!"branch_weights", i32 190115, i32 0}
!361 = distinct !{!361, !345}
!362 = !{!"branch_weights", i32 1, i32 554136}
!363 = !{!"branch_weights", i32 398723, i32 203562}
!364 = !{!"branch_weights", i32 554136, i32 48148}
!365 = distinct !{!365, !345}
!366 = !{!"branch_weights", i32 1, i32 444919}
!367 = !{i64 0, i64 4, !297, i64 8, i64 8, !289, i64 16, i64 8, !289, i64 24, i64 1, !295}
!368 = !{!"function_entry_count", i64 787720}
!369 = !{!"branch_weights", i32 -928800775, i32 4273}
!370 = !{!"branch_weights", i32 8873, i32 -799669647}
!371 = !{!"branch_weights", i32 787721, i32 1}
!372 = !{!"sched-deps.c:create_dep_node"}
!373 = !{!374, !281, i64 0}
!374 = !{!"_dep_link", !281, i64 0, !281, i64 8, !281, i64 16}
!375 = !{!"sched-deps.c:copy_dep"}
!376 = !{!"function_entry_count", i64 1575440}
!377 = !{!"sched-deps.c:get_back_and_forw_lists"}
!378 = !{!"branch_weights", i32 1575441, i32 1}
!379 = !{!"sched-deps.c:add_to_deps_list"}
!380 = !{!"sched-deps.c:set_dependency_caches"}
!381 = !{!"sched-deps.c:add_or_update_dep_1"}
!382 = !{!"branch_weights", i32 -407355210, i32 3153}
!383 = !{!"branch_weights", i32 3724, i32 -1999236668}
!384 = !{!"branch_weights", i32 0, i32 -2147483648}
!385 = !{!"branch_weights", i32 787721, i32 444919}
!386 = !{i32 1, i32 3}
!387 = !{i32 1, i32 56}
!388 = !{!389, !281, i64 16}
!389 = !{!"_sd_iterator", !284, i64 0, !281, i64 8, !281, i64 16, !282, i64 24}
!390 = !{!"sched-deps.c:move_dep_link"}
!391 = distinct !{!391, !345}
!392 = !{!"function_entry_count", i64 1823108}
!393 = !{!"sched-deps.c:sd_iterator_start"}
!394 = !{!389, !284, i64 0}
!395 = !{!389, !281, i64 8}
!396 = !{!389, !282, i64 24}
!397 = !{!"function_entry_count", i64 5605469}
!398 = !{!"sched-deps.c:sd_iterator_cond"}
!399 = !{!"branch_weights", i32 1580117, i32 1}
!400 = !{!"branch_weights", i32 1378191, i32 2647163}
!401 = !{!"branch_weights", i32 1, i32 2647163}
!402 = !{!"branch_weights", i32 2445236, i32 1580117}
!403 = !{!"function_entry_count", i64 347479}
!404 = !{!"sched-deps.c:sd_iterator_next"}
!405 = !{!"sched-deps.c:remove_from_deps_list"}
!406 = !{!"sched-deps.c:delete_dep_node"}
!407 = !{!"branch_weights", i32 1, i32 787721}
!408 = !{!"sched-deps.c:dump_lists"}
!409 = distinct !{!409, !345}
!410 = !{!"function_entry_count", i64 1440459}
!411 = !{!"function_entry_count", i64 110917}
!412 = !{!"function_entry_count", i64 1942665}
!413 = !{!"function_entry_count", i64 3210401}
!414 = !{!"branch_weights", i32 2394466, i32 815937}
!415 = !{!"branch_weights", i32 1745860, i32 648607}
!416 = !{!"branch_weights", i32 1, i32 1745860}
!417 = !{!"function_entry_count", i64 4495312}
!418 = !{!419, !419, i64 0}
!419 = !{!"long", !282, i64 0}
!420 = !{!"branch_weights", i32 4495313, i32 1}
!421 = !{!"function_entry_count", i64 3338869}
!422 = !{!423, !281, i64 8}
!423 = !{!"sched_deps_info_def", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !281, i64 88, !284, i64 96, !284, i64 96, !284, i64 96}
!424 = !{!"branch_weights", i32 2005023, i32 1333848}
!425 = !{!"branch_weights", i32 1105, i32 -1923351744, i32 1104, i32 836076729, i32 483010549}
!426 = !{!"branch_weights", i32 601389937, i32 -764781326}
!427 = !{!"branch_weights", i32 1, i32 422400}
!428 = !{!"branch_weights", i32 422400, i32 1}
!429 = !{!430, !284, i64 40}
!430 = !{!"deps", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !284, i64 32, !284, i64 36, !284, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !284, i64 80, !281, i64 88, !284, i64 96, !281, i64 104, !431, i64 112, !431, i64 144, !284, i64 176, !284, i64 180}
!431 = !{!"bitmap_head_def", !281, i64 0, !281, i64 8, !284, i64 16, !281, i64 24}
!432 = !{!433, !284, i64 8}
!433 = !{!"param_info", !281, i64 0, !284, i64 8, !282, i64 12, !284, i64 16, !284, i64 20, !281, i64 24}
!434 = !{!430, !281, i64 48}
!435 = !{!"branch_weights", i32 436967, i32 1}
!436 = !{!"branch_weights", i32 23159199, i32 1}
!437 = !{!"branch_weights", i32 3058763, i32 20100437}
!438 = !{!"branch_weights", i32 1747865, i32 1310899}
!439 = !{!"branch_weights", i32 -2057394562, i32 1706, i32 745858716}
!440 = !{!"branch_weights", i32 -1311520483, i32 6827}
!441 = !{!"branch_weights", i32 436967, i32 22722232}
!442 = distinct !{!442, !345}
!443 = !{!"branch_weights", i32 206128, i32 230840}
!444 = !{!430, !281, i64 56}
!445 = !{!"branch_weights", i32 1, i32 206128}
!446 = !{!430, !281, i64 64}
!447 = !{!430, !284, i64 80}
!448 = !{!"branch_weights", i32 3338870, i32 1}
!449 = !{!"branch_weights", i32 1, i32 3338870}
!450 = !{!423, !281, i64 16}
!451 = !{!"branch_weights", i32 806, i32 -1602888513}
!452 = !{!"function_entry_count", i64 552971}
!453 = !{!"sched-deps.c:flush_pending_lists"}
!454 = !{!"branch_weights", i32 1, i32 552972}
!455 = !{!"branch_weights", i32 283360, i32 269613}
!456 = !{!430, !284, i64 32}
!457 = !{!430, !284, i64 36}
!458 = !{!"sched-deps.c:sched_analyze_insn"}
!459 = !{!"branch_weights", i32 2145530, i32 1193341}
!460 = !{!"branch_weights", i32 3336905, i32 1966}
!461 = !{!"branch_weights", i32 151719, i32 301959, i32 301959, i32 150240}
!462 = !{!"branch_weights", i32 1, i32 3036913}
!463 = !{!464, !284, i64 0}
!464 = !{!"rtvec_def", !284, i64 0, !282, i64 8}
!465 = !{!"branch_weights", i32 1, i32 150239}
!466 = !{!"branch_weights", i32 1, i32 301126}
!467 = !{!"branch_weights", i32 150239, i32 150887}
!468 = distinct !{!468, !345}
!469 = !{!"branch_weights", i32 436967, i32 2901904}
!470 = !{!"branch_weights", i32 436966, i32 1}
!471 = !{!"branch_weights", i32 1, i32 0}
!472 = distinct !{!472, !345}
!473 = !{!"branch_weights", i32 756375, i32 2582496}
!474 = !{!"branch_weights", i32 1, i32 127}
!475 = !{!"branch_weights", i32 -510905900, i32 5909, i32 685500298}
!476 = !{!"branch_weights", i32 127, i32 96815873}
!477 = distinct !{!477, !345}
!478 = !{!423, !281, i64 0}
!479 = !{!"branch_weights", i32 492251, i32 148120}
!480 = !{!"branch_weights", i32 148119, i32 1}
!481 = !{!430, !281, i64 104}
!482 = !{!483, !281, i64 8}
!483 = !{!"deps_reg", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !284, i64 32, !284, i64 36}
!484 = !{!483, !281, i64 16}
!485 = !{!483, !281, i64 24}
!486 = !{!483, !284, i64 32}
!487 = !{!483, !281, i64 0}
!488 = distinct !{!488, !345}
!489 = !{!"branch_weights", i32 640218, i32 152}
!490 = !{!"branch_weights", i32 152, i32 1}
!491 = !{!"branch_weights", i32 152, i32 0}
!492 = distinct !{!492, !345}
!493 = !{!"branch_weights", i32 367982, i32 272388}
!494 = !{!"branch_weights", i32 272388, i32 1}
!495 = !{!"branch_weights", i32 272388, i32 0}
!496 = distinct !{!496, !345}
!497 = !{!"branch_weights", i32 1690900565, i32 -1254868620}
!498 = !{!"branch_weights", i32 1193341, i32 1}
!499 = !{!"branch_weights", i32 2145530, i32 1}
!500 = !{!430, !281, i64 88}
!501 = distinct !{!501, !345}
!502 = distinct !{!502, !345}
!503 = !{!"branch_weights", i32 1398746, i32 1940124}
!504 = !{!"branch_weights", i32 1134188, i32 805937}
!505 = !{!"branch_weights", i32 1940124, i32 0}
!506 = distinct !{!506, !345}
!507 = !{!"branch_weights", i32 175212194, i32 1747865}
!508 = !{!"branch_weights", i32 824509, i32 923357}
!509 = !{!"branch_weights", i32 3338870, i32 173621188}
!510 = distinct !{!510, !345}
!511 = !{!"branch_weights", i32 2698501, i32 640370}
!512 = !{!"branch_weights", i32 640369, i32 1}
!513 = !{!483, !284, i64 36}
!514 = distinct !{!514, !345}
!515 = distinct !{!515, !345}
!516 = !{!"branch_weights", i32 1, i32 2698500}
!517 = !{!"branch_weights", i32 1, i32 20211354}
!518 = !{!"branch_weights", i32 177, i32 20211178}
!519 = !{!"branch_weights", i32 89, i32 89}
!520 = !{!"branch_weights", i32 9544849, i32 10666506}
!521 = !{!"branch_weights", i32 2698500, i32 17512854}
!522 = distinct !{!522, !345}
!523 = !{!"branch_weights", i32 1258041, i32 1440460}
!524 = !{!"branch_weights", i32 852427, i32 588034}
!525 = !{!"branch_weights", i32 1440460, i32 0}
!526 = distinct !{!526, !345}
!527 = !{!"branch_weights", i32 176960058, i32 1}
!528 = distinct !{!528, !345}
!529 = !{!"branch_weights", i32 1664042, i32 1674829}
!530 = !{!"branch_weights", i32 87369666, i32 824509}
!531 = !{!"branch_weights", i32 87369666, i32 1}
!532 = !{!"branch_weights", i32 1664042, i32 86530132}
!533 = distinct !{!533, !345}
!534 = !{!430, !284, i64 176}
!535 = !{!"branch_weights", i32 3222865, i32 116006}
!536 = !{!"branch_weights", i32 116006, i32 1}
!537 = distinct !{!537, !345}
!538 = !{!"branch_weights", i32 1, i32 116005}
!539 = !{!"branch_weights", i32 144226, i32 39662}
!540 = !{!"branch_weights", i32 116005, i32 67882}
!541 = distinct !{!541, !345}
!542 = !{!"branch_weights", i32 77233, i32 38774}
!543 = !{!430, !284, i64 96}
!544 = !{!"branch_weights", i32 1, i32 77232}
!545 = !{!"branch_weights", i32 4016065, i32 77232}
!546 = distinct !{!546, !345}
!547 = !{!"branch_weights", i32 1, i32 116006}
!548 = distinct !{!548, !345}
!549 = !{!"function_entry_count", i64 8593963}
!550 = !{!"sched-deps.c:add_dependence_list_and_free"}
!551 = !{!"branch_weights", i32 5043161, i32 3550804}
!552 = !{!"branch_weights", i32 3574440, i32 1468721}
!553 = !{!"branch_weights", i32 913588, i32 555134}
!554 = !{!"branch_weights", i32 913588, i32 1}
!555 = !{!"branch_weights", i32 1468721, i32 0}
!556 = distinct !{!556, !345}
!557 = !{!"function_entry_count", i64 206127}
!558 = !{!"sched-deps.c:call_may_noreturn_p"}
!559 = !{!"branch_weights", i32 -1639420272, i32 25766}
!560 = !{!"branch_weights", i32 199827, i32 6302}
!561 = !{!"branch_weights", i32 206128, i32 1}
!562 = !{!"sched-deps.c:fixup_sched_groups"}
!563 = distinct !{!563, !345}
!564 = distinct !{!564, !345}
!565 = distinct !{!565, !345}
!566 = !{!"function_entry_count", i64 187028}
!567 = !{!"branch_weights", i32 187029, i32 1}
!568 = !{!"branch_weights", i32 1, i32 187029}
!569 = distinct !{!569, !345}
!570 = !{!"branch_weights", i32 -1886181471, i32 4079}
!571 = !{!"branch_weights", i32 187029, i32 403443}
!572 = !{!"branch_weights", i32 1, i32 187028}
!573 = !{!"branch_weights", i32 590471, i32 1}
!574 = !{!"branch_weights", i32 187028, i32 403443}
!575 = distinct !{!575, !345}
!576 = !{!"sched-deps.c:delete_dep_nodes_in_back_deps"}
!577 = !{!"branch_weights", i32 1, i32 590470}
!578 = !{!"branch_weights", i32 590470, i32 197251}
!579 = distinct !{!579, !345}
!580 = !{!"sched-deps.c:clear_deps_list"}
!581 = !{!"function_entry_count", i64 1111678}
!582 = !{!"branch_weights", i32 1, i32 1111679}
!583 = !{!"branch_weights", i32 518309, i32 593371}
!584 = !{!"function_entry_count", i64 2519594}
!585 = !{!"sched-deps.c:bitmap_initialize_stat"}
!586 = !{!431, !281, i64 24}
!587 = !{!"function_entry_count", i64 337394}
!588 = !{!"branch_weights", i32 1, i32 337395}
!589 = !{!"branch_weights", i32 337395, i32 1}
!590 = !{!"branch_weights", i32 1, i32 1111678}
!591 = !{!"branch_weights", i32 13891588, i32 1701955}
!592 = !{!"branch_weights", i32 10718733, i32 4874810}
!593 = !{!"branch_weights", i32 15593542, i32 1}
!594 = !{!"branch_weights", i32 6044333, i32 9549210}
!595 = !{!"branch_weights", i32 1111678, i32 14481864}
!596 = distinct !{!596, !345}
!597 = !{!"branch_weights", i32 255977, i32 855703}
!598 = !{!"function_entry_count", i64 11661869}
!599 = !{!"sched-deps.c:bmp_iter_set_init"}
!600 = !{!431, !281, i64 0}
!601 = !{!602, !281, i64 0}
!602 = !{!"", !281, i64 0, !281, i64 8, !284, i64 16, !419, i64 24}
!603 = !{!602, !281, i64 8}
!604 = !{!"branch_weights", i32 7085987, i32 4575884}
!605 = !{!606, !284, i64 16}
!606 = !{!"bitmap_element_def", !281, i64 0, !281, i64 8, !284, i64 16, !282, i64 24}
!607 = !{!"branch_weights", i32 11661870, i32 1}
!608 = !{!602, !284, i64 16}
!609 = !{!602, !419, i64 24}
!610 = !{!"function_entry_count", i64 59118852}
!611 = !{!"sched-deps.c:bmp_iter_set"}
!612 = !{!"branch_weights", i32 11661870, i32 47456984}
!613 = !{!"branch_weights", i32 36160155, i32 11296829}
!614 = !{!"branch_weights", i32 0, i32 36160155}
!615 = distinct !{!615, !345}
!616 = !{!"branch_weights", i32 1, i32 11661869}
!617 = !{!"branch_weights", i32 11661869, i32 1}
!618 = distinct !{!618, !345}
!619 = !{!606, !281, i64 0}
!620 = !{!"function_entry_count", i64 47456983}
!621 = !{!"sched-deps.c:bmp_iter_next"}
!622 = !{!"function_entry_count", i64 269460}
!623 = !{!"branch_weights", i32 1, i32 269461}
!624 = !{!"branch_weights", i32 1, i32 269460}
!625 = !{!"branch_weights", i32 7185696, i32 901927}
!626 = !{!"branch_weights", i32 7665175, i32 422448}
!627 = !{!"branch_weights", i32 8087622, i32 1}
!628 = !{!"branch_weights", i32 1203666, i32 6883957}
!629 = !{!"branch_weights", i32 7384392, i32 703231}
!630 = !{!"branch_weights", i32 7103652, i32 280741}
!631 = !{!"branch_weights", i32 7103652, i32 1}
!632 = !{!"branch_weights", i32 1182418, i32 5921235}
!633 = !{!"branch_weights", i32 269460, i32 7818162}
!634 = distinct !{!634, !345}
!635 = !{!"branch_weights", i32 22420, i32 247042}
!636 = !{!"function_entry_count", i64 538920}
!637 = !{!"sched-deps.c:remove_from_both_dependence_lists"}
!638 = !{!"branch_weights", i32 222509, i32 158206}
!639 = !{!"branch_weights", i32 40749, i32 117458}
!640 = !{!"branch_weights", i32 158206, i32 0}
!641 = distinct !{!641, !345}
!642 = !{!"function_entry_count", i64 8792087}
!643 = !{!"sched-deps.c:remove_from_dependence_list"}
!644 = !{!"branch_weights", i32 1, i32 96655}
!645 = !{!"branch_weights", i32 1464714, i32 7230719}
!646 = !{!"branch_weights", i32 8695432, i32 0}
!647 = distinct !{!647, !345}
!648 = !{!"branch_weights", i32 96655, i32 8598777}
!649 = !{!"function_entry_count", i64 641205}
!650 = !{!651, !281, i64 8}
!651 = !{!"function", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !281, i64 88, !281, i64 96, !284, i64 104, !284, i64 108, !284, i64 112, !284, i64 116, !284, i64 120, !284, i64 124, !281, i64 128, !284, i64 136, !284, i64 137, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 138, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139, !284, i64 139}
!652 = !{!653, !284, i64 24}
!653 = !{!"control_flow_graph", !281, i64 0, !281, i64 8, !281, i64 16, !284, i64 24, !284, i64 28, !284, i64 32, !281, i64 40, !284, i64 48, !282, i64 52, !282, i64 60, !284, i64 68, !284, i64 72}
!654 = !{!"branch_weights", i32 1, i32 641206}
!655 = !{!"branch_weights", i32 2147354707, i32 128941}
!656 = !{!"sched-deps.c:init_deps_data_vector"}
!657 = !{!"branch_weights", i32 134, i32 641073}
!658 = !{!"branch_weights", i32 134, i32 1}
!659 = distinct !{!659, !345}
!660 = !{!"branch_weights", i32 1, i32 39}
!661 = !{!"branch_weights", i32 1521, i32 79}
!662 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_free"}
!663 = !{!"function_entry_count", i64 276198}
!664 = !{!"branch_weights", i32 -1911007415, i32 -1911024678}
!665 = !{!423, !281, i64 56}
!666 = !{!423, !281, i64 64}
!667 = !{!423, !281, i64 72}
!668 = !{!423, !281, i64 80}
!669 = !{!423, !281, i64 88}
!670 = !{!"sched-deps.c:haifa_start_insn"}
!671 = !{!"branch_weights", i32 9226, i32 -1571092282}
!672 = !{!"sched-deps.c:haifa_finish_insn"}
!673 = !{!"function_entry_count", i64 756}
!674 = !{!"sched-deps.c:haifa_note_mem_dep"}
!675 = !{!"branch_weights", i32 757, i32 1}
!676 = !{i32 0, i32 13}
!677 = !{!"function_entry_count", i64 1590345}
!678 = !{!"sched-deps.c:haifa_note_dep"}
!679 = !{!"function_entry_count", i64 489}
!680 = !{!"branch_weights", i32 1, i32 490}
!681 = !{!"branch_weights", i32 244, i32 247}
!682 = !{!"branch_weights", i32 1, i32 244}
!683 = !{!"branch_weights", i32 1, i32 247}
!684 = !{!"sched-deps.c:rhs_regno"}
!685 = !{!"function_entry_count", i64 4663175}
!686 = !{!"branch_weights", i32 1104, i32 1192373635, i32 1034003049, i32 -1369593603}
!687 = !{!"branch_weights", i32 3072831, i32 1590346}
!688 = !{!"branch_weights", i32 1590346, i32 1}
!689 = !{!"sched-deps.c:note_dep"}
!690 = !{!"branch_weights", i32 1329637, i32 3333540}
!691 = !{!"sched-deps.c:ds_merge_1"}
!692 = !{!"function_entry_count", i64 1923577}
!693 = !{!"branch_weights", i32 1923578, i32 1}
!694 = distinct !{!694, !345}
!695 = !{!"function_entry_count", i64 591920}
!696 = !{!"branch_weights", i32 591921, i32 1}
!697 = !{!"function_entry_count", i64 28172}
!698 = !{!"branch_weights", i32 28173, i32 1}
!699 = !{!"sched-deps.c:dump_ds"}
!700 = !{!"sched-deps.c:attach_dep_link"}
!701 = !{!374, !281, i64 16}
!702 = !{!374, !281, i64 8}
!703 = !{!"branch_weights", i32 812182, i32 763260}
!704 = !{!"branch_weights", i32 763260, i32 1}
!705 = !{!"function_entry_count", i64 3150880}
!706 = !{!"sched-deps.c:depl_on_debug_p"}
!707 = !{!708, !281, i64 24}
!708 = !{!"_dep_node", !374, i64 0, !280, i64 24, !374, i64 48}
!709 = !{!"branch_weights", i32 1, i32 3150881}
!710 = !{!708, !281, i64 32}
!711 = !{!"sched-deps.c:ask_dependency_caches"}
!712 = !{!"function_entry_count", i64 444918}
!713 = !{!"sched-deps.c:update_dep"}
!714 = !{!"branch_weights", i32 31329, i32 413591}
!715 = !{!"branch_weights", i32 444919, i32 1}
!716 = !{!"sched-deps.c:change_spec_dep_to_hard"}
!717 = !{!"sched-deps.c:update_dependency_caches"}
!718 = !{!"sched-deps.c:detach_dep_link"}
!719 = !{!"sched-deps.c:dep_link_is_detached_p"}
!720 = !{!"function_entry_count", i64 76339047}
!721 = !{!"sched-deps.c:add_dependence_list"}
!722 = !{!"branch_weights", i32 73234894, i32 3104154}
!723 = !{!"branch_weights", i32 1912187, i32 1191968}
!724 = !{!"branch_weights", i32 1912187, i32 1}
!725 = !{!"branch_weights", i32 3104154, i32 0}
!726 = distinct !{!726, !345}
!727 = !{!"function_entry_count", i64 11043177}
!728 = !{!"sched-deps.c:sched_analyze_2"}
!729 = !{!"branch_weights", i32 337, i32 -573294313}
!730 = !{!"branch_weights", i32 9186179, i32 1857000}
!731 = !{!423, !281, i64 40}
!732 = !{!"branch_weights", i32 1359296, i32 497705}
!733 = !{!"branch_weights", i32 3422844, i32 2820580, i32 1, i32 1, i32 1, i32 781045, i32 57681, i32 756176, i32 2361417, i32 842989, i32 1, i32 1, i32 1, i32 1, i32 1, i32 453, i32 1, i32 1, i32 1, i32 1, i32 1}
!734 = !{!"branch_weights", i32 3892814, i32 522666}
!735 = !{!423, !281, i64 48}
!736 = !{!"branch_weights", i32 345268, i32 177399}
!737 = !{!"branch_weights", i32 1284, i32 -1261800954}
!738 = !{!"branch_weights", i32 1983731, i32 377687}
!739 = !{!"branch_weights", i32 322497, i32 55191}
!740 = !{!"branch_weights", i32 842989, i32 1}
!741 = !{!742, !281, i64 1184}
!742 = !{!"gcc_target", !743, i64 0, !745, i64 368, !746, i64 664, !284, i64 744, !281, i64 752, !281, i64 760, !281, i64 768, !281, i64 776, !281, i64 784, !281, i64 792, !281, i64 800, !281, i64 808, !281, i64 816, !281, i64 824, !281, i64 832, !281, i64 840, !281, i64 848, !281, i64 856, !281, i64 864, !281, i64 872, !281, i64 880, !281, i64 888, !281, i64 896, !281, i64 904, !281, i64 912, !281, i64 920, !281, i64 928, !281, i64 936, !281, i64 944, !281, i64 952, !281, i64 960, !281, i64 968, !281, i64 976, !281, i64 984, !281, i64 992, !281, i64 1000, !281, i64 1008, !281, i64 1016, !281, i64 1024, !281, i64 1032, !281, i64 1040, !281, i64 1048, !281, i64 1056, !419, i64 1064, !419, i64 1072, !281, i64 1080, !281, i64 1088, !281, i64 1096, !281, i64 1104, !281, i64 1112, !281, i64 1120, !281, i64 1128, !281, i64 1136, !281, i64 1144, !281, i64 1152, !281, i64 1160, !281, i64 1168, !747, i64 1176, !281, i64 1232, !281, i64 1240, !281, i64 1248, !281, i64 1256, !281, i64 1264, !281, i64 1272, !281, i64 1280, !281, i64 1288, !281, i64 1296, !281, i64 1304, !281, i64 1312, !281, i64 1320, !281, i64 1328, !281, i64 1336, !281, i64 1344, !281, i64 1352, !281, i64 1360, !281, i64 1368, !281, i64 1376, !281, i64 1384, !281, i64 1392, !281, i64 1400, !281, i64 1408, !281, i64 1416, !281, i64 1424, !281, i64 1432, !281, i64 1440, !281, i64 1448, !281, i64 1456, !419, i64 1464, !748, i64 1472, !281, i64 1664, !281, i64 1672, !281, i64 1680, !281, i64 1688, !281, i64 1696, !281, i64 1704, !281, i64 1712, !281, i64 1720, !281, i64 1728, !281, i64 1736, !281, i64 1744, !281, i64 1752, !281, i64 1760, !281, i64 1768, !281, i64 1776, !749, i64 1784, !750, i64 1792, !751, i64 1896, !752, i64 1968, !281, i64 2016, !282, i64 2024, !282, i64 2025, !282, i64 2026, !282, i64 2027, !282, i64 2028, !282, i64 2029, !282, i64 2030, !282, i64 2031, !282, i64 2032, !282, i64 2033, !282, i64 2034, !282, i64 2035}
!743 = !{!"asm_out", !281, i64 0, !281, i64 8, !281, i64 16, !744, i64 24, !744, i64 56, !281, i64 88, !281, i64 96, !281, i64 104, !281, i64 112, !281, i64 120, !281, i64 128, !281, i64 136, !281, i64 144, !281, i64 152, !281, i64 160, !281, i64 168, !281, i64 176, !281, i64 184, !281, i64 192, !281, i64 200, !281, i64 208, !281, i64 216, !281, i64 224, !281, i64 232, !281, i64 240, !281, i64 248, !281, i64 256, !281, i64 264, !281, i64 272, !281, i64 280, !281, i64 288, !281, i64 296, !281, i64 304, !281, i64 312, !281, i64 320, !281, i64 328, !281, i64 336, !281, i64 344, !281, i64 352, !281, i64 360}
!744 = !{!"asm_int_op", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24}
!745 = !{!"sched", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !281, i64 88, !281, i64 96, !281, i64 104, !281, i64 112, !281, i64 120, !281, i64 128, !281, i64 136, !281, i64 144, !281, i64 152, !281, i64 160, !281, i64 168, !281, i64 176, !281, i64 184, !281, i64 192, !281, i64 200, !281, i64 208, !281, i64 216, !281, i64 224, !281, i64 232, !281, i64 240, !281, i64 248, !281, i64 256, !281, i64 264, !281, i64 272, !281, i64 280, !281, i64 288}
!746 = !{!"vectorize", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72}
!747 = !{!"addr_space", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48}
!748 = !{!"calls", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !281, i64 88, !281, i64 96, !281, i64 104, !281, i64 112, !281, i64 120, !281, i64 128, !281, i64 136, !281, i64 144, !281, i64 152, !281, i64 160, !281, i64 168, !281, i64 176, !281, i64 184}
!749 = !{!"c", !281, i64 0}
!750 = !{!"cxx", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !281, i64 88, !281, i64 96}
!751 = !{!"emutls", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40, !281, i64 48, !281, i64 56, !282, i64 64, !282, i64 65}
!752 = !{!"target_option_hooks", !281, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !281, i64 32, !281, i64 40}
!753 = !{!754, !282, i64 32}
!754 = !{!"mem_attrs", !281, i64 0, !281, i64 8, !281, i64 16, !284, i64 24, !284, i64 28, !282, i64 32}
!755 = !{!"branch_weights", i32 1, i32 842989}
!756 = !{!"branch_weights", i32 727139, i32 115850}
!757 = !{!"branch_weights", i32 115850, i32 1}
!758 = !{!"branch_weights", i32 115850, i32 0}
!759 = distinct !{!759, !345}
!760 = !{!"branch_weights", i32 434104, i32 408885}
!761 = !{!"branch_weights", i32 407594, i32 1292}
!762 = !{!"branch_weights", i32 1292, i32 1}
!763 = !{!"branch_weights", i32 408885, i32 0}
!764 = distinct !{!764, !345}
!765 = !{!"branch_weights", i32 572515, i32 270474}
!766 = !{!"branch_weights", i32 192426, i32 78049}
!767 = !{!"branch_weights", i32 180323, i32 12104}
!768 = !{!"branch_weights", i32 12104, i32 1}
!769 = !{!770, !284, i64 0}
!770 = !{!"spec_info_def", !284, i64 0, !281, i64 8, !284, i64 16, !284, i64 20, !284, i64 24}
!771 = !{!"branch_weights", i32 270474, i32 0}
!772 = distinct !{!772, !345}
!773 = !{!"branch_weights", i32 411233, i32 431757}
!774 = !{!"branch_weights", i32 673941, i32 169049}
!775 = !{!"branch_weights", i32 129467, i32 39583}
!776 = distinct !{!776, !345}
!777 = !{!"branch_weights", i32 453, i32 1}
!778 = !{!"branch_weights", i32 1, i32 3422843}
!779 = !{!"branch_weights", i32 419904, i32 -236855315, i32 648}
!780 = distinct !{!780, !345}
!781 = !{!"branch_weights", i32 2830673, i32 3422843}
!782 = distinct !{!782, !345}
!783 = !{!"branch_weights", i32 2635244, i32 787601}
!784 = !{!"branch_weights", i32 562067, i32 225535}
!785 = !{!"function_entry_count", i64 3338420}
!786 = !{!"sched-deps.c:sched_analyze_1"}
!787 = !{!"branch_weights", i32 815, i32 -1574006659}
!788 = !{!"branch_weights", i32 1481422, i32 1857000}
!789 = !{!423, !281, i64 24}
!790 = !{!"branch_weights", i32 1, i32 3338421}
!791 = distinct !{!791, !345}
!792 = !{!423, !281, i64 32}
!793 = !{!"branch_weights", i32 896959249, i32 531953241, i32 -1763552774, i32 196009522, i32 187164132, i32 1240}
!794 = !{!"branch_weights", i32 1, i32 157773}
!795 = distinct !{!795, !345}
!796 = !{!"branch_weights", i32 1764, i32 -530635452}
!797 = distinct !{!797, !345, !798, !799}
!798 = !{!"llvm.loop.isvectorized", i32 1}
!799 = !{!"llvm.loop.unroll.runtime.disable"}
!800 = !{!"branch_weights", i32 448419, i32 1}
!801 = !{!"branch_weights", i32 245742, i32 202678}
!802 = !{!"branch_weights", i32 1, i32 245742}
!803 = !{!"branch_weights", i32 275355, i32 173064}
!804 = !{!"branch_weights", i32 172561, i32 504}
!805 = !{!"branch_weights", i32 504, i32 1}
!806 = !{!"branch_weights", i32 173064, i32 0}
!807 = distinct !{!807, !345}
!808 = !{!"branch_weights", i32 417687, i32 30732}
!809 = !{!"branch_weights", i32 29983, i32 750}
!810 = !{!"branch_weights", i32 750, i32 1}
!811 = !{!"branch_weights", i32 30732, i32 0}
!812 = distinct !{!812, !345}
!813 = !{!"branch_weights", i32 3188893, i32 149529}
!814 = !{!"sched-deps.c:setup_insn_reg_uses"}
!815 = !{!816, !281, i64 16}
!816 = !{!"reg_use_data", !284, i64 0, !281, i64 8, !281, i64 16, !281, i64 24}
!817 = distinct !{!817, !345}
!818 = distinct !{!818, !345}
!819 = !{!"sched-deps.c:setup_insn_reg_pressure_info"}
!820 = distinct !{!820, !345}
!821 = distinct !{!821, !345}
!822 = !{!316, !281, i64 56}
!823 = !{!316, !281, i64 64}
!824 = distinct !{!824, !345}
!825 = !{!"sched-deps.c:sched_analyze_reg"}
!826 = !{!"branch_weights", i32 1, i32 4495313}
!827 = !{!"branch_weights", i32 182489349, i32 -1861869797, i32 -1400504224}
!828 = !{!"branch_weights", i32 1, i32 2361416}
!829 = !{!"branch_weights", i32 1, i32 1985015}
!830 = !{!"branch_weights", i32 1, i32 148881}
!831 = distinct !{!831, !345}
!832 = distinct !{!832, !345}
!833 = distinct !{!833, !345}
!834 = !{!835, !284, i64 12}
!835 = !{!"reg_info_t", !284, i64 0, !284, i64 4, !284, i64 8, !284, i64 12, !284, i64 16, !284, i64 20, !284, i64 24}
!836 = !{!430, !281, i64 72}
!837 = !{!"function_entry_count", i64 2543}
!838 = !{!"sched-deps.c:note_mem_dep"}
!839 = !{!"branch_weights", i32 476, i32 2069}
!840 = !{!"function_entry_count", i64 192425}
!841 = !{!"sched-deps.c:deps_may_trap_p"}
!842 = !{!"branch_weights", i32 1, i32 192426}
!843 = !{!"function_entry_count", i64 656973}
!844 = !{!"sched-deps.c:add_insn_mem_dependence"}
!845 = !{!"branch_weights", i32 656974, i32 1}
!846 = !{!"branch_weights", i32 245742, i32 411233}
!847 = !{!"branch_weights", i32 1, i32 411233}
!848 = !{!"sched-deps.c:extend_deps_reg_info"}
!849 = !{!"function_entry_count", i64 1985015}
!850 = !{!"sched-deps.c:note_reg_set"}
!851 = !{!"branch_weights", i32 1, i32 1985016}
!852 = !{!"function_entry_count", i64 2361416}
!853 = !{!"sched-deps.c:note_reg_use"}
!854 = !{!"branch_weights", i32 1, i32 2361417}
!855 = !{!"function_entry_count", i64 148881}
!856 = !{!"sched-deps.c:note_reg_clobber"}
!857 = !{!"branch_weights", i32 1, i32 148882}
!858 = !{!"sched-deps.c:create_insn_reg_use"}
!859 = !{!816, !284, i64 0}
!860 = !{!816, !281, i64 8}
!861 = !{!316, !281, i64 72}
!862 = !{!816, !281, i64 24}
!863 = !{!"sched-deps.c:mark_insn_reg_clobber"}
!864 = !{!"sched-deps.c:mark_insn_reg_store"}
!865 = !{!"sched-deps.c:mark_reg_death"}
!866 = !{!"sched-deps.c:mark_insn_reg_birth"}
!867 = !{!"sched-deps.c:mark_insn_hard_regno_birth"}
!868 = distinct !{!868, !345}
!869 = !{!"sched-deps.c:mark_insn_pseudo_birth"}
!870 = !{!"sched-deps.c:insn_use_p"}
!871 = distinct !{!871, !345}
!872 = !{!"sched-deps.c:create_insn_reg_set"}
!873 = !{!874, !284, i64 0}
!874 = !{!"reg_set_data", !284, i64 0, !281, i64 8, !281, i64 16}
!875 = !{!874, !281, i64 8}
!876 = !{!316, !281, i64 80}
!877 = !{!874, !281, i64 16}
!878 = !{!"sched-deps.c:mark_hard_regno_death"}
!879 = distinct !{!879, !345}
!880 = !{!"sched-deps.c:mark_pseudo_death"}
!881 = !{!"sched-deps.c:delete_all_dependences"}
!882 = distinct !{!882, !345}
!883 = !{!"function_entry_count", i64 641471}
!884 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_length"}
!885 = !{!"branch_weights", i32 115, i32 641358}
!886 = !{!887, !284, i64 0}
!887 = !{!"VEC_haifa_deps_insn_data_def_base", !284, i64 0, !284, i64 4, !282, i64 8}
!888 = !{!"function_entry_count", i64 266}
!889 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_space"}
!890 = !{!"branch_weights", i32 77, i32 191}
!891 = !{!887, !284, i64 4}
!892 = !{!"function_entry_count", i64 133}
!893 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared"}
!894 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_safe_grow"}
!895 = !{!"branch_weights", i32 39, i32 96}
!896 = !{}
!897 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_address"}
!898 = !{!"branch_weights", i32 1, i32 134}
!899 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_reserve_exact"}
!900 = !{!"function_entry_count", i64 1591101}
!901 = !{!"sched-deps.c:maybe_add_or_update_dep_1"}
!902 = !{!"branch_weights", i32 -851699638, i32 2164}
!903 = !{!"branch_weights", i32 -791790081, i32 2201}
!904 = !{!"branch_weights", i32 358464, i32 1232639}
!905 = !{!"branch_weights", i32 358464, i32 1}
