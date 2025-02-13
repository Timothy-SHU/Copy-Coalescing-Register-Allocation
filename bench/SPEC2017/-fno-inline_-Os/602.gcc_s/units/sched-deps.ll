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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.reg_pressure_data = type { i32 }
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
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.reg_use_data = type { i32, ptr, ptr, ptr }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.reg_set_data = type { i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@sched_deps_info = dso_local local_unnamed_addr global ptr null, align 8
@h_d_i_d = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"sched-deps.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_sched_info = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%d; \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%c; \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"BEGIN_DATA: %d; \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"BE_IN_DATA: %d; \00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"BEGIN_CONTROL: %d; \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"BE_IN_CONTROL: %d; \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"HARD_DEP; \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DEP_TRUE; \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DEP_ANTI; \00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DEP_OUTPUT; \00", align 1
@dn_pool_diff = internal unnamed_addr global i32 0, align 4
@dl_pool_diff = internal unnamed_addr global i32 0, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@sched_luids = external local_unnamed_addr global ptr, align 8
@h_i_d = external local_unnamed_addr global ptr, align 8
@common_sched_info = external local_unnamed_addr global ptr, align 8
@dl_pool = internal global ptr null, align 8
@true_dependency_cache = internal unnamed_addr global ptr null, align 8
@output_dependency_cache = internal unnamed_addr global ptr null, align 8
@anti_dependency_cache = internal unnamed_addr global ptr null, align 8
@sd_iterator_start.null_link = internal global ptr null, align 8
@dn_pool = internal global ptr null, align 8
@spec_dependency_cache = internal unnamed_addr global ptr null, align 8
@reg_pending_sets = internal unnamed_addr global ptr null, align 8
@reg_pending_clobbers = internal unnamed_addr global ptr null, align 8
@reg_pending_uses = internal unnamed_addr global ptr null, align 8
@max_regno = external local_unnamed_addr global i32, align 4
@reg_info_p_size = external local_unnamed_addr global i64, align 8
@reload_completed = external local_unnamed_addr global i32, align 4
@reg_info_p = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@reg_pending_barrier = internal unnamed_addr global i32 0, align 4
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@implicit_reg_pending_uses = internal unnamed_addr global i64 0, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@implicit_reg_pending_clobbers = internal unnamed_addr global i64 0, align 8
@can_start_lhs_rhs_p = internal unnamed_addr global i8 0, align 1
@reg_obstack = external global %struct.bitmap_obstack, align 8
@sched_pressure_p = external local_unnamed_addr global i8, align 1
@sched_emulate_haifa_p = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@spec_info = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@setup_insn_reg_pressure_info.pressure_info = internal unnamed_addr global ptr null, align 8
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@reg_pressure_info = internal unnamed_addr global [27 x %struct.reg_pressure_data] zeroinitializer, align 16
@sched_regno_cover_class = external local_unnamed_addr global ptr, align 8
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@sched_max_luid = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@cache_size = internal unnamed_addr global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"deps_list\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"dep_node\00", align 1
@cur_insn = internal unnamed_addr global ptr null, align 8
@switch.table.call_may_noreturn_p = private unnamed_addr constant [30 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\01\01\00\01\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ds_to_dk(i32 noundef %0) local_unnamed_addr #0 !prof !276 {
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
define dso_local noundef i32 @dk_to_ds(i32 noundef %0) local_unnamed_addr #0 !prof !276 {
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
define dso_local void @init_dep_1(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 !prof !277 {
  store ptr %1, ptr %0, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !284
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 8, !tbaa !285
  %8 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  store i32 %4, ptr %8, align 4, !tbaa !286
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_dep(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !287 {
  %5 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %6 = getelementptr inbounds %struct.haifa_sched_info, ptr %5, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !289
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !291

10:                                               ; preds = %4
  %11 = tail call i32 @dk_to_ds(i32 noundef %3) #25, !range !292
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
define dso_local void @sd_debug_dep(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !276 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !288
  tail call fastcc void @dump_dep(ptr noundef %2, ptr noundef %0, i32 noundef 1) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !288
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_dep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !276 !PGOFuncName !293 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %2, i32 30
  %7 = tail call i32 @fputc(i32 60, ptr %0)
  %8 = and i32 %6, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !278
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !294
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %13) #25
  br label %15

15:                                               ; preds = %10, %3
  %16 = and i32 %6, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !284
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !294
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %22) #25
  br label %24

24:                                               ; preds = %18, %15
  %25 = and i32 %6, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !285
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
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %34) #25
  br label %36

36:                                               ; preds = %33, %24
  %37 = and i32 %6, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %41 = getelementptr inbounds %struct.haifa_sched_info, ptr %40, i64 0, i32 17
  %42 = load i32, ptr %41, align 8, !tbaa !289
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !286
  tail call fastcc void @dump_ds(ptr noundef %0, i32 noundef %47) #25
  br label %48

48:                                               ; preds = %39, %45, %36
  %49 = tail call i32 @fputc(i32 62, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_ds(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !295 {
  %3 = tail call i32 @fputc(i32 123, ptr %0)
  %4 = and i32 %1, 63
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 63) #25
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %7) #25
  br label %9

9:                                                ; preds = %6, %2
  %10 = and i32 %1, 4032
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 4032) #25
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %13) #25
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i32 %1, 258048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 258048) #25
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %19) #25
  br label %21

21:                                               ; preds = %18, %15
  %22 = and i32 %1, 16515072
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @get_dep_weak_1(i32 noundef %1, i32 noundef 16515072) #25
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %25) #25
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i32 %1, 134217728
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 10, i64 1, ptr %0)
  br label %32

32:                                               ; preds = %30, %27
  %33 = and i32 %1, 16777216
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr %0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = and i32 %1, 67108864
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 10, i64 1, ptr %0)
  br label %42

42:                                               ; preds = %40, %37
  %43 = and i32 %1, 33554432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 12, i64 1, ptr %0)
  br label %47

47:                                               ; preds = %45, %42
  %48 = tail call i32 @fputc(i32 125, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_dep_weak_1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !276 {
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
  store i8 0, ptr %3, align 1, !tbaa !294
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #26
  store i8 0, ptr %4, align 1, !tbaa !294
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
  %19 = load i8, ptr %3, align 1, !tbaa !294
  %20 = load i8, ptr %4, align 1, !tbaa !294
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
  %4 = load ptr, ptr %3, align 8, !tbaa !294
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6, !prof !306

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %9, label %8, !prof !307

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !tbaa !294
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i32, ptr %4, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %16, !prof !306

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !294
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
  %25 = load ptr, ptr %24, align 8, !tbaa !294
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !294
  %29 = load ptr, ptr @global_rtl, align 16, !tbaa !288
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %33, !prof !310

31:                                               ; preds = %22
  %32 = load ptr, ptr %26, align 8, !tbaa !294
  br label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !294
  %36 = icmp eq ptr %35, %29
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load ptr, ptr %26, align 8, !tbaa !294
  %39 = tail call i32 @reversed_comparison_code(ptr noundef %38, ptr noundef nonnull %0) #24
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %7, %40
  %42 = select i1 %40, ptr null, ptr %38
  br i1 %41, label %44, label %43

43:                                               ; preds = %37
  store i8 1, ptr %1, align 1, !tbaa !294
  br label %44

44:                                               ; preds = %37, %33, %43, %16, %19, %2, %31, %13
  %45 = phi ptr [ %15, %13 ], [ %32, %31 ], [ null, %2 ], [ null, %19 ], [ null, %16 ], [ %42, %37 ], [ %38, %43 ], [ null, %33 ]
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @conditions_mutex_p(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !276 !PGOFuncName !311 {
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
  %27 = load ptr, ptr %26, align 8, !tbaa !294
  %28 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !294
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !294
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !294
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

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !276 {
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !294
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
  %30 = load ptr, ptr %29, align 8, !tbaa !294
  %31 = tail call i32 @side_effects_p(ptr noundef %30) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = and i32 %1, 16519104
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %29, align 8, !tbaa !294
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
  %1 = load ptr, ptr @common_sched_info, align 8, !tbaa !288
  %2 = getelementptr inbounds %struct.common_sched_info_def, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !324
  %4 = icmp eq i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @sel_insn_is_speculation_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_haifa_insn_data_def_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !276 !PGOFuncName !326 {
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
  %12 = load i32, ptr %11, align 8, !tbaa !294
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %10, i32 noundef %12) #25
  %14 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %9, i32 noundef %13) #25
  %15 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !331
  store ptr %16, ptr %2, align 8, !tbaa !288
  store i8 0, ptr %3, align 1, !tbaa !294
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
  %25 = load i32, ptr %24, align 8, !tbaa !294
  %26 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %25) #25
  %27 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %26) #25
  %28 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !333
  store ptr %29, ptr %2, align 8, !tbaa !288
  store i8 0, ptr %3, align 1, !tbaa !294
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
  %38 = load i32, ptr %37, align 8, !tbaa !294
  %39 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %36, i32 noundef %38) #25
  %40 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %35, i32 noundef %39) #25
  %41 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !335
  store ptr %42, ptr %2, align 8, !tbaa !288
  store i8 0, ptr %3, align 1, !tbaa !294
  %43 = and i32 %5, -8
  br label %71

44:                                               ; preds = %31
  %45 = and i32 %5, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47, !prof !336

47:                                               ; preds = %44
  %48 = load ptr, ptr @h_d_i_d, align 8
  %49 = load ptr, ptr @sched_luids, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !294
  %52 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %49, i32 noundef %51) #25
  %53 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %48, i32 noundef %52) #25
  %54 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !337
  store ptr %55, ptr %2, align 8, !tbaa !288
  store i8 1, ptr %3, align 1, !tbaa !294
  %56 = and i32 %5, -16
  br label %71

57:                                               ; preds = %44
  %58 = and i32 %5, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60, !prof !338

60:                                               ; preds = %57
  %61 = load ptr, ptr @h_d_i_d, align 8
  %62 = load ptr, ptr @sched_luids, align 8
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !294
  %65 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %62, i32 noundef %64) #25
  %66 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %61, i32 noundef %65) #25
  %67 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %66, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !339
  store ptr %68, ptr %2, align 8, !tbaa !288
  store i8 1, ptr %3, align 1, !tbaa !294
  %69 = and i32 %5, -32
  br label %71

70:                                               ; preds = %57
  store ptr null, ptr %2, align 8, !tbaa !288
  store i8 0, ptr %3, align 1, !tbaa !294
  br label %71

71:                                               ; preds = %21, %47, %70, %60, %34, %8
  %72 = phi i32 [ %30, %21 ], [ %56, %47 ], [ 0, %70 ], [ %69, %60 ], [ %43, %34 ], [ %17, %8 ]
  store i32 %72, ptr %1, align 4, !tbaa !297
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @sd_lists_size(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !340 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4, !tbaa !297
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %19, label %7, !prof !341

7:                                                ; preds = %2, %15
  %8 = phi i32 [ %16, %15 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %9 = load ptr, ptr %4, align 8, !tbaa !288
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !342

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._deps_list, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !343
  %14 = add nsw i32 %13, %8
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %14, %11 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  %17 = load i32, ptr %3, align 4, !tbaa !297
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %7, !prof !345, !llvm.loop !346

19:                                               ; preds = %15, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @sd_lists_empty_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !348 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i32 %1, ptr %3, align 4, !tbaa !297
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %14, label %10, !prof !349

7:                                                ; preds = %10
  %8 = load i32, ptr %3, align 4, !tbaa !297
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !350

10:                                               ; preds = %2, %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  call void @sd_next_list(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %11 = load ptr, ptr %4, align 8, !tbaa !288
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
define internal fastcc zeroext i8 @deps_list_empty_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !351 !PGOFuncName !352 {
  %2 = getelementptr inbounds %struct._deps_list, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !343
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_init_insn(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !353 {
  %2 = tail call fastcc ptr @create_deps_list() #25
  %3 = load ptr, ptr @h_d_i_d, align 8
  %4 = load ptr, ptr @sched_luids, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !294
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %4, i32 noundef %6) #25
  %8 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %3, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %8, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !331
  %10 = tail call fastcc ptr @create_deps_list() #25
  %11 = load ptr, ptr @h_d_i_d, align 8
  %12 = load ptr, ptr @sched_luids, align 8
  %13 = load i32, ptr %5, align 8, !tbaa !294
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %12, i32 noundef %13) #25
  %15 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %11, i32 noundef %14) #25
  %16 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 3
  store ptr %10, ptr %16, align 8, !tbaa !333
  %17 = tail call fastcc ptr @create_deps_list() #25
  %18 = load ptr, ptr @h_d_i_d, align 8
  %19 = load ptr, ptr @sched_luids, align 8
  %20 = load i32, ptr %5, align 8, !tbaa !294
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %19, i32 noundef %20) #25
  %22 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %18, i32 noundef %21) #25
  %23 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %22, i64 0, i32 5
  store ptr %17, ptr %23, align 8, !tbaa !337
  %24 = tail call fastcc ptr @create_deps_list() #25
  %25 = load ptr, ptr @h_d_i_d, align 8
  %26 = load ptr, ptr @sched_luids, align 8
  %27 = load i32, ptr %5, align 8, !tbaa !294
  %28 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %26, i32 noundef %27) #25
  %29 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %25, i32 noundef %28) #25
  %30 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %29, i64 0, i32 4
  store ptr %24, ptr %30, align 8, !tbaa !335
  %31 = tail call fastcc ptr @create_deps_list() #25
  %32 = load ptr, ptr @h_d_i_d, align 8
  %33 = load ptr, ptr @sched_luids, align 8
  %34 = load i32, ptr %5, align 8, !tbaa !294
  %35 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %33, i32 noundef %34) #25
  %36 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %32, i32 noundef %35) #25
  %37 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %36, i64 0, i32 6
  store ptr %31, ptr %37, align 8, !tbaa !339
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %43, !prof !354

41:                                               ; preds = %1
  %42 = or i32 %38, 67108864
  store i32 %42, ptr %0, align 8
  br label %43

43:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_deps_list() unnamed_addr #0 !prof !355 !PGOFuncName !356 {
  %1 = load ptr, ptr @dl_pool, align 8, !tbaa !288
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #24
  store ptr null, ptr %2, align 8, !tbaa !357
  %3 = getelementptr inbounds %struct._deps_list, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !343
  %4 = load i32, ptr @dl_pool_diff, align 4, !tbaa !297
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @dl_pool_diff, align 4, !tbaa !297
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_finish_insn(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !353 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %13, !prof !354

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
  %17 = load i32, ptr %16, align 8, !tbaa !294
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #25
  %19 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %14, i32 noundef %18) #25
  %20 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !331
  tail call fastcc void @free_deps_list(ptr noundef %21) #25
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %16, align 8, !tbaa !294
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #25
  %27 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 2
  store ptr null, ptr %27, align 8, !tbaa !331
  %28 = load i32, ptr %16, align 8, !tbaa !294
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %28) #25
  %30 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %29) #25
  %31 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !333
  tail call fastcc void @free_deps_list(ptr noundef %32) #25
  %33 = load ptr, ptr @h_d_i_d, align 8
  %34 = load ptr, ptr @sched_luids, align 8
  %35 = load i32, ptr %16, align 8, !tbaa !294
  %36 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %35) #25
  %37 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %33, i32 noundef %36) #25
  %38 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %37, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !333
  %39 = load i32, ptr %16, align 8, !tbaa !294
  %40 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %34, i32 noundef %39) #25
  %41 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %33, i32 noundef %40) #25
  %42 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !337
  tail call fastcc void @free_deps_list(ptr noundef %43) #25
  %44 = load ptr, ptr @h_d_i_d, align 8
  %45 = load ptr, ptr @sched_luids, align 8
  %46 = load i32, ptr %16, align 8, !tbaa !294
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %46) #25
  %48 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %44, i32 noundef %47) #25
  %49 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 5
  store ptr null, ptr %49, align 8, !tbaa !337
  %50 = load i32, ptr %16, align 8, !tbaa !294
  %51 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %45, i32 noundef %50) #25
  %52 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %44, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !335
  tail call fastcc void @free_deps_list(ptr noundef %54) #25
  %55 = load ptr, ptr @h_d_i_d, align 8
  %56 = load ptr, ptr @sched_luids, align 8
  %57 = load i32, ptr %16, align 8, !tbaa !294
  %58 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %57) #25
  %59 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %58) #25
  %60 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %59, i64 0, i32 4
  store ptr null, ptr %60, align 8, !tbaa !335
  %61 = load i32, ptr %16, align 8, !tbaa !294
  %62 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %61) #25
  %63 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %62) #25
  %64 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %63, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !339
  tail call fastcc void @free_deps_list(ptr noundef %65) #25
  %66 = load ptr, ptr @h_d_i_d, align 8
  %67 = load ptr, ptr @sched_luids, align 8
  %68 = load i32, ptr %16, align 8, !tbaa !294
  %69 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %67, i32 noundef %68) #25
  %70 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %66, i32 noundef %69) #25
  %71 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %70, i64 0, i32 6
  store ptr null, ptr %71, align 8, !tbaa !339
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_deps_list(ptr noundef %0) unnamed_addr #0 !prof !355 !PGOFuncName !358 {
  %2 = tail call fastcc zeroext i8 @deps_list_empty_p(ptr noundef %0) #25, !range !314
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !359

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @.str.1) #24
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @dl_pool_diff, align 4, !tbaa !297
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr @dl_pool_diff, align 4, !tbaa !297
  %8 = load ptr, ptr @dl_pool, align 8, !tbaa !288
  tail call void @pool_free(ptr noundef %8, ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sd_find_dep_between(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !360 {
  %4 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6, !prof !361

6:                                                ; preds = %3
  %7 = load ptr, ptr @sched_luids, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !294
  %10 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %9) #25
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !294
  %13 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %7, i32 noundef %12) #25
  %14 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %15 = icmp ne ptr %14, null
  %16 = load ptr, ptr @anti_dependency_cache, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 822, ptr noundef nonnull @.str.1) #24
  %20 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  br label %21

21:                                               ; preds = %6, %19
  %22 = phi ptr [ %4, %6 ], [ %20, %19 ]
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds %struct.bitmap_head_def, ptr %22, i64 %23
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %10) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %23
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %10) #24
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
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
define internal fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #11 !prof !362 !PGOFuncName !363 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %7 = icmp eq i8 %2, 0
  %8 = select i1 %7, i32 4, i32 16, !prof !364
  %9 = select i1 %7, i32 3, i32 8, !prof !364
  %10 = tail call i32 @sd_lists_size(ptr noundef %1, i32 noundef %9) #25
  %11 = tail call i32 @sd_lists_size(ptr noundef %0, i32 noundef %8) #25
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23, !prof !365

13:                                               ; preds = %4
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %5, ptr noundef %1, i32 noundef %9) #25
  %14 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16, !prof !366

16:                                               ; preds = %13, %20
  %17 = load ptr, ptr %6, align 8, !tbaa !288
  %18 = load ptr, ptr %17, align 8, !tbaa !278
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %34, label %20, !prof !367

20:                                               ; preds = %16
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #25
  %21 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %16, !prof !368, !llvm.loop !369

23:                                               ; preds = %4
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %5, ptr noundef %0, i32 noundef %8) #25
  %24 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26, !prof !370

26:                                               ; preds = %23, %31
  %27 = load ptr, ptr %6, align 8, !tbaa !288
  %28 = getelementptr inbounds %struct._dep, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !284
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %34, label %31, !prof !371

31:                                               ; preds = %26
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #25
  %32 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %26, !prof !372, !llvm.loop !373

34:                                               ; preds = %26, %16
  %35 = phi ptr [ %17, %16 ], [ %27, %26 ]
  %36 = icmp eq ptr %3, null
  br i1 %36, label %38, label %37, !prof !374

37:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !375
  br label %38

38:                                               ; preds = %31, %20, %34, %37, %23, %13
  %39 = phi ptr [ null, %13 ], [ null, %23 ], [ %35, %37 ], [ %35, %34 ], [ null, %20 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  ret ptr %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !376 !PGOFuncName !377 {
  store i32 %2, ptr %0, align 8, !tbaa !378
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !380
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %5, align 8, !tbaa !381
  %6 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !382
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sd_iterator_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !prof !383 !PGOFuncName !384 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !381
  %6 = load ptr, ptr %5, align 8, !tbaa !288
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !385

8:                                                ; preds = %21, %2
  %9 = phi ptr [ %6, %2 ], [ %22, %21 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !386
  %11 = getelementptr inbounds %struct._dep_node, ptr %10, i64 0, i32 1
  br label %24

12:                                               ; preds = %2, %21
  %13 = load i32, ptr %0, align 8, !tbaa !378
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15, !prof !388

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %18 = load ptr, ptr %16, align 8, !tbaa !380
  call void @sd_next_list(ptr noundef %18, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #25
  %19 = load ptr, ptr %3, align 8, !tbaa !288
  store ptr %19, ptr %4, align 8, !tbaa !381
  %20 = icmp eq ptr %19, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br i1 %20, label %24, label %21, !prof !389

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !288
  %23 = icmp eq ptr %22, null
  br i1 %23, label %12, label %8, !prof !390

24:                                               ; preds = %12, %15, %8
  %25 = phi ptr [ %11, %8 ], [ null, %15 ], [ null, %12 ]
  %26 = phi i8 [ 1, %8 ], [ 0, %15 ], [ 0, %12 ]
  store ptr %25, ptr %1, align 8, !tbaa !288
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #9 !prof !391 !PGOFuncName !392 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !381
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_add_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !393 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @create_dep_node() #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !284
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %20, !prof !394

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !278
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -11
  %17 = icmp ult i32 %16, -4
  %18 = icmp eq ptr %7, %13
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %21, !prof !395

20:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %12, %20
  %22 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %23 = getelementptr inbounds %struct.haifa_sched_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !289
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27, !prof !396

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !286
  %30 = tail call zeroext i8 @sched_insn_is_legitimate_for_speculation_p(ptr noundef nonnull %7, i32 noundef %29) #25, !range !314
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 4, !tbaa !286
  %34 = and i32 %33, -16777216
  store i32 %34, ptr %28, align 4, !tbaa !286
  br label %35

35:                                               ; preds = %32, %27, %21
  %36 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  tail call fastcc void @copy_dep(ptr noundef nonnull %36, ptr noundef nonnull %0) #25
  call fastcc void @get_back_and_forw_lists(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %37 = load ptr, ptr %3, align 8, !tbaa !288
  tail call fastcc void @add_to_deps_list(ptr noundef %5, ptr noundef %37) #25
  %38 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 2
  %39 = load ptr, ptr %4, align 8, !tbaa !288
  tail call fastcc void @add_to_deps_list(ptr noundef nonnull %38, ptr noundef %39) #25
  %40 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !396

42:                                               ; preds = %35
  tail call fastcc void @set_dependency_caches(ptr noundef nonnull %0) #25
  br label %43

43:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_dep_node() unnamed_addr #0 !prof !393 !PGOFuncName !397 {
  %1 = load ptr, ptr @dn_pool, align 8, !tbaa !288
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #24
  %3 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 2
  store ptr %2, ptr %2, align 8, !tbaa !386
  %4 = getelementptr inbounds %struct._dep_link, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %2, ptr %3, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = load i32, ptr @dn_pool_diff, align 4, !tbaa !297
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @dn_pool_diff, align 4, !tbaa !297
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_dep(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !prof !393 !PGOFuncName !398 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_back_and_forw_lists(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !399 !PGOFuncName !400 {
  %5 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !284
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %46, !prof !401

8:                                                ; preds = %4
  %9 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %10 = getelementptr inbounds %struct.haifa_sched_info, ptr %9, i64 0, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !289
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14, !prof !396

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !286
  %17 = and i32 %16, 16777215
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @h_d_i_d, align 8
  %21 = load ptr, ptr @sched_luids, align 8
  %22 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !294
  %24 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %21, i32 noundef %23) #25
  %25 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %20, i32 noundef %24) #25
  %26 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %25, i64 0, i32 3
  br label %35

27:                                               ; preds = %14, %8
  %28 = load ptr, ptr @h_d_i_d, align 8
  %29 = load ptr, ptr @sched_luids, align 8
  %30 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !294
  %32 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %29, i32 noundef %31) #25
  %33 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %28, i32 noundef %32) #25
  %34 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %33, i64 0, i32 2
  br label %35

35:                                               ; preds = %27, %19
  %36 = phi ptr [ %34, %27 ], [ %26, %19 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !288
  store ptr %37, ptr %2, align 8, !tbaa !288
  %38 = load ptr, ptr @h_d_i_d, align 8
  %39 = load ptr, ptr @sched_luids, align 8
  %40 = load ptr, ptr %0, align 8, !tbaa !278
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !294
  %43 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %39, i32 noundef %42) #25
  %44 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %38, i32 noundef %43) #25
  %45 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %44, i64 0, i32 4
  br label %63

46:                                               ; preds = %4
  %47 = load ptr, ptr @h_d_i_d, align 8
  %48 = load ptr, ptr @sched_luids, align 8
  %49 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !294
  %51 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %48, i32 noundef %50) #25
  %52 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %47, i32 noundef %51) #25
  %53 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !337
  store ptr %54, ptr %2, align 8, !tbaa !288
  %55 = load ptr, ptr @h_d_i_d, align 8
  %56 = load ptr, ptr @sched_luids, align 8
  %57 = load ptr, ptr %0, align 8, !tbaa !278
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !294
  %60 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %56, i32 noundef %59) #25
  %61 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %55, i32 noundef %60) #25
  %62 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %61, i64 0, i32 6
  br label %63

63:                                               ; preds = %46, %35
  %64 = phi ptr [ %45, %35 ], [ %62, %46 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !288
  store ptr %65, ptr %3, align 8, !tbaa !288
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_deps_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !402 !PGOFuncName !403 {
  tail call fastcc void @attach_dep_link(ptr noundef %0, ptr noundef %1) #25
  %3 = tail call fastcc zeroext i8 @depl_on_debug_p(ptr noundef %0) #25, !range !314
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !404

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !343
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !343
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_dependency_caches(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !276 !PGOFuncName !405 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !278
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !294
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !284
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !294
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %10) #25
  %12 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %13 = getelementptr inbounds %struct.haifa_sched_info, ptr %12, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !289
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !285
  switch i32 %19, label %35 [
    i32 0, label %20
    i32 11, label %25
    i32 12, label %30
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %22 = sext i32 %11 to i64
  %23 = getelementptr inbounds %struct.bitmap_head_def, ptr %21, i64 %22
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %6) #24
  br label %77

25:                                               ; preds = %17
  %26 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %27 = sext i32 %11 to i64
  %28 = getelementptr inbounds %struct.bitmap_head_def, ptr %26, i64 %27
  %29 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %28, i32 noundef %6) #24
  br label %77

30:                                               ; preds = %17
  %31 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
  %32 = sext i32 %11 to i64
  %33 = getelementptr inbounds %struct.bitmap_head_def, ptr %31, i64 %32
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %33, i32 noundef %6) #24
  br label %77

35:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 963, ptr noundef nonnull @.str.1) #24
  br label %77

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !286
  %39 = and i32 %38, 16777216
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %43 = sext i32 %11 to i64
  %44 = getelementptr inbounds %struct.bitmap_head_def, ptr %42, i64 %43
  %45 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %44, i32 noundef %6) #24
  br label %46

46:                                               ; preds = %41, %36
  %47 = and i32 %38, 33554432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %51 = sext i32 %11 to i64
  %52 = getelementptr inbounds %struct.bitmap_head_def, ptr %50, i64 %51
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %52, i32 noundef %6) #24
  br label %54

54:                                               ; preds = %49, %46
  %55 = and i32 %38, 67108864
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
  %59 = sext i32 %11 to i64
  %60 = getelementptr inbounds %struct.bitmap_head_def, ptr %58, i64 %59
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %60, i32 noundef %6) #24
  br label %62

62:                                               ; preds = %57, %54
  %63 = and i32 %38, 16777215
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %67 = getelementptr inbounds %struct.haifa_sched_info, ptr %66, i64 0, i32 17
  %68 = load i32, ptr %67, align 8, !tbaa !289
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 979, ptr noundef nonnull @.str.1) #24
  br label %72

72:                                               ; preds = %65, %71
  %73 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !288
  %74 = sext i32 %11 to i64
  %75 = getelementptr inbounds %struct.bitmap_head_def, ptr %73, i64 %74
  %76 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %75, i32 noundef %6) #24
  br label %77

77:                                               ; preds = %62, %72, %20, %25, %30, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attach_dep_link(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !402 !PGOFuncName !406 {
  %3 = load ptr, ptr %1, align 8, !tbaa !288
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !407
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !404

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !408
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !404

11:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.1) #24
  br label %12

12:                                               ; preds = %7, %11
  store ptr %1, ptr %4, align 8, !tbaa !407
  %13 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  store ptr %3, ptr %13, align 8, !tbaa !408
  %14 = icmp eq ptr %3, null
  br i1 %14, label %21, label %15, !prof !409

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._dep_link, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !407
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %20, label %19, !prof !410

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 245, ptr noundef nonnull @.str.1) #24
  br label %20

20:                                               ; preds = %15, %19
  store ptr %13, ptr %16, align 8, !tbaa !407
  br label %21

21:                                               ; preds = %20, %12
  store ptr %0, ptr %1, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @depl_on_debug_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !411 !PGOFuncName !412 {
  %2 = load ptr, ptr %0, align 8, !tbaa !386
  %3 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !413
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %15, !prof !415

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._dep_node, ptr %2, i64 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !416
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp ne i32 %12, 7
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i8 [ 0, %1 ], [ %14, %8 ]
  ret i8 %16
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @sd_add_or_update_dep(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !276 {
  %3 = tail call fastcc i32 @add_or_update_dep_1(ptr noundef %0, i8 noundef zeroext %1, ptr noundef null, ptr noundef null) #25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @add_or_update_dep_1(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !417 !PGOFuncName !418 {
  %5 = alloca %struct._sd_iterator, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !278
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %20, !prof !419

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !284
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -11
  %17 = icmp ult i32 %16, -4
  %18 = icmp eq ptr %6, %13
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %21, !prof !420

20:                                               ; preds = %11, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1125, ptr noundef nonnull @.str.1) #24
  br label %21

21:                                               ; preds = %11, %20
  %22 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !421

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
  %28 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %31, !prof !422

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  br label %32

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1160, ptr noundef nonnull @.str.1) #24
  br label %32

32:                                               ; preds = %30, %24, %27, %31
  %33 = phi i1 [ true, %24 ], [ true, %27 ], [ true, %31 ], [ false, %30 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !278
  %35 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !284
  %37 = call fastcc ptr @sd_find_dep_between_no_cache(ptr noundef %34, ptr noundef %36, i8 noundef zeroext %1, ptr noundef nonnull %5) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42, !prof !423

39:                                               ; preds = %32
  br i1 %33, label %41, label %40, !prof !396

40:                                               ; preds = %39
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @.str.1) #24
  br label %41

41:                                               ; preds = %39, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %44

42:                                               ; preds = %32
  %43 = call fastcc i32 @update_dep(ptr noundef nonnull %37, ptr noundef nonnull %0, ptr noundef nonnull byval(%struct._sd_iterator) align 8 %5, ptr noundef %2, ptr noundef %3) #25, !range !424
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %59

44:                                               ; preds = %41, %25
  %45 = icmp eq ptr %2, null
  br i1 %45, label %58, label %46, !prof !396

46:                                               ; preds = %44
  %47 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
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
  %55 = load i32, ptr %54, align 4, !tbaa !286
  %56 = call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3) #25, !range !425
  %57 = call i32 @set_dep_weak(i32 noundef %55, i32 noundef 63, i32 noundef %56) #25
  store i32 %57, ptr %54, align 4, !tbaa !286
  br label %58

58:                                               ; preds = %53, %44
  call void @sd_add_dep(ptr noundef nonnull %0, i8 noundef zeroext %1) #25
  br label %59

59:                                               ; preds = %42, %25, %58
  %60 = phi i32 [ 3, %58 ], [ %43, %42 ], [ %26, %25 ]
  ret i32 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ask_dependency_caches(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !276 !PGOFuncName !426 {
  %2 = load ptr, ptr @sched_luids, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !278
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !294
  %6 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !284
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !294
  %11 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %2, i32 noundef %10) #25
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
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
  %22 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %23 = getelementptr inbounds %struct.haifa_sched_info, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !289
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %27, i64 %28
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %6) #24
  %31 = icmp eq i32 %30, 0
  br i1 %26, label %32, label %48

32:                                               ; preds = %21
  br i1 %31, label %33, label %43

33:                                               ; preds = %32
  %34 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %35 = getelementptr inbounds %struct.bitmap_head_def, ptr %34, i64 %28
  %36 = tail call i32 @bitmap_bit_p(ptr noundef %35, i32 noundef %6) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
  %40 = getelementptr inbounds %struct.bitmap_head_def, ptr %39, i64 %28
  %41 = tail call i32 @bitmap_bit_p(ptr noundef %40, i32 noundef %6) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %43

43:                                               ; preds = %32, %33, %38
  %44 = phi i32 [ 0, %32 ], [ 11, %33 ], [ 12, %38 ]
  %45 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !285
  %47 = icmp slt i32 %46, %44
  br i1 %47, label %84, label %85

48:                                               ; preds = %21
  %49 = select i1 %31, i32 0, i32 16777216
  %50 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %51 = getelementptr inbounds %struct.bitmap_head_def, ptr %50, i64 %28
  %52 = tail call i32 @bitmap_bit_p(ptr noundef %51, i32 noundef %6) #24
  %53 = icmp eq i32 %52, 0
  %54 = or disjoint i32 %49, 33554432
  %55 = select i1 %53, i32 %49, i32 %54
  %56 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
  %57 = getelementptr inbounds %struct.bitmap_head_def, ptr %56, i64 %28
  %58 = tail call i32 @bitmap_bit_p(ptr noundef %57, i32 noundef %6) #24
  %59 = icmp eq i32 %58, 0
  %60 = or disjoint i32 %55, 67108864
  %61 = select i1 %59, i32 %55, i32 %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %48
  %64 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %65 = getelementptr inbounds %struct.haifa_sched_info, ptr %64, i64 0, i32 17
  %66 = load i32, ptr %65, align 8, !tbaa !289
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !288
  %71 = getelementptr inbounds %struct.bitmap_head_def, ptr %70, i64 %28
  %72 = tail call i32 @bitmap_bit_p(ptr noundef %71, i32 noundef %6) #24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69, %63
  %75 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !286
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
define internal fastcc noundef i32 @update_dep(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !427 !PGOFuncName !428 {
  %6 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !285
  %8 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !285
  %10 = icmp slt i32 %9, %7
  br i1 %10, label %11, label %12, !prof !429

11:                                               ; preds = %5
  store i32 %9, ptr %6, align 8, !tbaa !285
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ 2, %11 ], [ 1, %5 ]
  %14 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %15 = getelementptr inbounds %struct.haifa_sched_info, ptr %14, i64 0, i32 17
  %16 = load i32, ptr %15, align 8, !tbaa !289
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %47, label %19, !prof !430

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !286
  %22 = getelementptr inbounds %struct._dep, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !286
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
  %39 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %3, ptr noundef %4) #25, !range !425
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
  %48 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %53, !prof !430

50:                                               ; preds = %44
  store i32 %45, ptr %20, align 4, !tbaa !286
  %51 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %54, !prof !430

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
define dso_local noundef i32 @set_dep_weak(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !276 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @estimate_dep_weak(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 !prof !276 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !294
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !294
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_spec_dep_to_hard(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) unnamed_addr #0 !prof !276 !PGOFuncName !431 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = load ptr, ptr %4, align 8, !tbaa !386
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  %10 = load ptr, ptr @h_d_i_d, align 8
  %11 = load ptr, ptr @sched_luids, align 8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !294
  %14 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %11, i32 noundef %13) #25
  %15 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %10, i32 noundef %14) #25
  %16 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !333
  %18 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !331
  tail call fastcc void @move_dep_link(ptr noundef %5, ptr noundef %17, ptr noundef %19) #25
  %20 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !286
  %22 = and i32 %21, -16777216
  store i32 %22, ptr %20, align 4, !tbaa !286
  %23 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !288
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = load i32, ptr %12, align 8, !tbaa !294
  %29 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %28) #25
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bitmap_head_def, ptr %26, i64 %30
  %32 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !294
  %34 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %27, i32 noundef %33) #25
  %35 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %31, i32 noundef %34) #24
  br label %36

36:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ds_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !276 {
  %3 = tail call fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext 0) #25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_dependency_caches(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !432 {
  %3 = load ptr, ptr @sched_luids, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !278
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !294
  %7 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %6) #25
  %8 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !294
  %12 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %3, i32 noundef %11) #25
  %13 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %14 = getelementptr inbounds %struct.haifa_sched_info, ptr %13, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !289
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  switch i32 %1, label %29 [
    i32 11, label %19
    i32 12, label %24
  ]

19:                                               ; preds = %18
  %20 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds %struct.bitmap_head_def, ptr %20, i64 %21
  %23 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %22, i32 noundef %7) #24
  br label %30

24:                                               ; preds = %18
  %25 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_dep_link(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !prof !399 !PGOFuncName !433 {
  tail call fastcc void @remove_from_deps_list(ptr noundef %0, ptr noundef %1) #25
  tail call fastcc void @add_to_deps_list(ptr noundef %0, ptr noundef %2) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @remove_from_deps_list(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !402 !PGOFuncName !434 {
  tail call fastcc void @detach_dep_link(ptr noundef %0) #25
  %3 = tail call fastcc zeroext i8 @depl_on_debug_p(ptr noundef %0) #25, !range !314
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !404

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._deps_list, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !343
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !343
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @detach_dep_link(ptr nocapture noundef %0) unnamed_addr #15 !prof !402 !PGOFuncName !435 {
  %2 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !407
  %4 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !408
  store ptr %5, ptr %3, align 8, !tbaa !288
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !436

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._dep_link, ptr %5, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !407
  br label %9

9:                                                ; preds = %7, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_resolve_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #0 !prof !393 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = load ptr, ptr %4, align 8, !tbaa !386
  %6 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !284
  %10 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct.haifa_sched_info, ptr %10, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !289
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15, !prof !396

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 1, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !286
  %18 = and i32 %17, 16777215
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @h_d_i_d, align 8
  %22 = load ptr, ptr @sched_luids, align 8
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !294
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %22, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %21, i32 noundef %25) #25
  %27 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 3
  br label %36

28:                                               ; preds = %15, %1
  %29 = load ptr, ptr @h_d_i_d, align 8
  %30 = load ptr, ptr @sched_luids, align 8
  %31 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !294
  %33 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %30, i32 noundef %32) #25
  %34 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %29, i32 noundef %33) #25
  %35 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %34, i64 0, i32 2
  br label %36

36:                                               ; preds = %28, %20
  %37 = phi ptr [ %35, %28 ], [ %27, %20 ]
  %38 = phi ptr [ %34, %28 ], [ %26, %20 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !288
  %40 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %38, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !337
  tail call fastcc void @move_dep_link(ptr noundef nonnull %5, ptr noundef %39, ptr noundef %41) #25
  %42 = getelementptr inbounds %struct._dep_node, ptr %5, i64 0, i32 2
  %43 = load ptr, ptr @h_d_i_d, align 8
  %44 = load ptr, ptr @sched_luids, align 8
  %45 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !294
  %47 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %44, i32 noundef %46) #25
  %48 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %43, i32 noundef %47) #25
  %49 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !335
  %51 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %48, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !339
  tail call fastcc void @move_dep_link(ptr noundef nonnull %42, ptr noundef %50, ptr noundef %52) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_copy_back_deps(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !276 {
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
  %14 = load ptr, ptr %5, align 8, !tbaa !288
  call fastcc void @copy_dep(ptr noundef nonnull %6, ptr noundef %14) #25
  store ptr %0, ptr %12, align 8, !tbaa !284
  call void @sd_add_dep(ptr noundef nonnull %6, i8 noundef zeroext %2) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %15 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %13, !llvm.loop !437

17:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_delete_dep(ptr nocapture noundef readonly byval(%struct._sd_iterator) align 8 %0) local_unnamed_addr #0 !prof !276 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !381
  %6 = load ptr, ptr %5, align 8, !tbaa !288
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr @sched_luids, align 8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !294
  %18 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %17) #25
  %19 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !294
  %21 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %15, i32 noundef %20) #25
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bitmap_head_def, ptr %12, i64 %22
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %23, i32 noundef %18) #24
  %25 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
  %26 = getelementptr inbounds %struct.bitmap_head_def, ptr %25, i64 %22
  %27 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %26, i32 noundef %18) #24
  %28 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %29 = getelementptr inbounds %struct.bitmap_head_def, ptr %28, i64 %22
  %30 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %29, i32 noundef %18) #24
  %31 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %32 = getelementptr inbounds %struct.haifa_sched_info, ptr %31, i64 0, i32 17
  %33 = load i32, ptr %32, align 8, !tbaa !289
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %14
  %37 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !288
  %38 = getelementptr inbounds %struct.bitmap_head_def, ptr %37, i64 %22
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %38, i32 noundef %18) #24
  br label %40

40:                                               ; preds = %14, %36, %1
  %41 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  %42 = load i8, ptr %41, align 8, !tbaa !382
  call fastcc void @get_back_and_forw_lists(ptr noundef nonnull %8, i8 noundef zeroext %42, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %43 = load ptr, ptr %2, align 8, !tbaa !288
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %7, ptr noundef %43) #25
  %44 = getelementptr inbounds %struct._dep_node, ptr %7, i64 0, i32 2
  %45 = load ptr, ptr %3, align 8, !tbaa !288
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %44, ptr noundef %45) #25
  tail call fastcc void @delete_dep_node(ptr noundef nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dep_node(ptr noundef %0) unnamed_addr #0 !prof !393 !PGOFuncName !438 {
  %2 = tail call fastcc zeroext i8 @dep_link_is_detached_p(ptr noundef %0) #25, !range !314
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !439

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._dep_node, ptr %0, i64 0, i32 2
  %6 = tail call fastcc zeroext i8 @dep_link_is_detached_p(ptr noundef nonnull %5) #25, !range !314
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !439

8:                                                ; preds = %4, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 339, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %4, %8
  %10 = load i32, ptr @dn_pool_diff, align 4, !tbaa !297
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr @dn_pool_diff, align 4, !tbaa !297
  %12 = load ptr, ptr @dn_pool, align 8, !tbaa !288
  tail call void @pool_free(ptr noundef %12, ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @dep_link_is_detached_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !399 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct._dep_link, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !407
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sd_debug_lists(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !276 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !288
  tail call fastcc void @dump_lists(ptr noundef %3, ptr noundef %0, i32 noundef %1) #25
  %4 = load ptr, ptr @stderr, align 8, !tbaa !288
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_lists(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !276 !PGOFuncName !441 {
  %4 = alloca %struct._sd_iterator, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %6 = tail call i32 @fputc(i32 91, ptr %0)
  %7 = tail call i32 @sd_lists_size(ptr noundef %1, i32 noundef %2) #25
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %7) #25
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %4, ptr noundef %1, i32 noundef %2) #25
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3, %11
  %12 = load ptr, ptr %5, align 8, !tbaa !288
  tail call fastcc void @dump_dep(ptr noundef %0, ptr noundef %12, i32 noundef 7) #25
  %13 = tail call i32 @fputc(i32 32, ptr %0)
  call fastcc void @sd_iterator_next(ptr noundef nonnull %4) #25
  %14 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !442

16:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_set(i32 noundef %0) #0 !prof !443 {
  %2 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_clobber(i32 noundef %0) #0 !prof !444 {
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !288
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @haifa_note_reg_use(i32 noundef %0) #0 !prof !445 {
  %2 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
  %3 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ds_to_dt(i32 noundef %0) local_unnamed_addr #0 !prof !277 {
  %2 = and i32 %0, 16777216
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11, !prof !446

4:                                                ; preds = %1
  %5 = and i32 %0, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11, !prof !447

7:                                                ; preds = %4
  %8 = and i32 %0, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !448

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1726, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %10, %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 11, %4 ], [ 12, %7 ], [ 12, %10 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_extend_reg_info_p() local_unnamed_addr #0 !prof !449 {
  %1 = load i32, ptr @max_regno, align 4, !tbaa !297
  %2 = add i32 %1, -1
  %3 = zext i32 %2 to i64
  %4 = load i64, ptr @reg_info_p_size, align 8, !tbaa !450
  %5 = icmp ugt i64 %4, %3
  br i1 %5, label %20, label %6, !prof !452

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
  %15 = load i64, ptr @reg_info_p_size, align 8, !tbaa !450
  br label %16

16:                                               ; preds = %11, %14
  %17 = phi i64 [ %4, %11 ], [ %15, %14 ]
  %18 = load ptr, ptr @reg_info_p, align 8, !tbaa !288
  %19 = tail call ptr @xrecalloc(ptr noundef %18, i64 noundef %8, i64 noundef %17, i64 noundef 28) #24
  store ptr %19, ptr @reg_info_p, align 8, !tbaa !288
  store i64 %8, ptr @reg_info_p_size, align 8, !tbaa !450
  br label %20

20:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: optsize
declare ptr @xrecalloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_analyze_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !453 {
  %3 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %4 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !454
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !456

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
  ], !prof !457

11:                                               ; preds = %8, %8, %8
  %12 = and i32 %9, 65535
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = icmp eq i32 %12, 9
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %38, !prof !458

19:                                               ; preds = %11
  %20 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22, !prof !459

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %1) #24
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !460
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !460
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !288
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 14, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !463
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %34, !prof !465

33:                                               ; preds = %25
  tail call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 1) #25
  br label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !466
  %37 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef %36) #24
  store ptr %37, ptr %35, align 8, !tbaa !466
  br label %38

38:                                               ; preds = %33, %34, %22, %11
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_insn(ptr noundef nonnull %0, ptr noundef %40, ptr noundef nonnull %1) #25
  br label %127

41:                                               ; preds = %8
  %42 = load ptr, ptr @h_d_i_d, align 8
  %43 = load ptr, ptr @sched_luids, align 8
  %44 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !294
  %46 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %43, i32 noundef %45) #25
  %47 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %42, i32 noundef %46) #25
  %48 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %47, i64 0, i32 7
  %49 = load i8, ptr %48, align 8
  %50 = or i8 %49, 1
  store i8 %50, ptr %48, align 8
  %51 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 30, ptr noundef null) #24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !467

53:                                               ; preds = %41
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %96

54:                                               ; preds = %41, %93
  %55 = phi i64 [ %94, %93 ], [ 0, %41 ]
  %56 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !294
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59, !prof !468

59:                                               ; preds = %54
  %60 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  %61 = trunc i64 %55 to i32
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %60, i32 noundef %61) #24
  %63 = shl nuw nsw i64 1, %55
  %64 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  %65 = or i64 %64, %63
  store i64 %65, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  br label %93

66:                                               ; preds = %54
  %67 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !450
  %68 = shl nuw nsw i64 1, %55
  %69 = and i64 %67, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71, !prof !469

71:                                               ; preds = %66
  %72 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !288
  %73 = trunc i64 %55 to i32
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %72, i32 noundef %73) #24
  br label %93

75:                                               ; preds = %66
  %76 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %55
  %77 = load i8, ptr %76, align 1, !tbaa !294
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79, !prof !470

79:                                               ; preds = %75
  %80 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  %81 = or i64 %80, %68
  store i64 %81, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  br label %93

82:                                               ; preds = %75
  %83 = trunc i64 %55 to i32
  switch i32 %83, label %93 [
    i32 20, label %90
    i32 6, label %84
  ], !prof !471

84:                                               ; preds = %82
  %85 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %86 = icmp eq i32 %85, 0
  %87 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %88 = icmp ne i8 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %93, !prof !472

90:                                               ; preds = %82, %84
  %91 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  %92 = or i64 %91, %68
  store i64 %92, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  br label %93

93:                                               ; preds = %82, %59, %79, %84, %90, %71
  %94 = add nuw nsw i64 %55, 1
  %95 = icmp eq i64 %94, 53
  br i1 %95, label %96, label %54, !prof !473, !llvm.loop !474

96:                                               ; preds = %93, %53
  %97 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 10
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %97, i32 noundef 1, i32 noundef 12) #25
  %98 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %99, ptr noundef nonnull %1) #25
  %100 = load i32, ptr %1, align 8
  %101 = and i32 %100, 268435456
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103, !prof !475

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
  br i1 %113, label %114, label %127, !prof !475

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %115) #24
  %116 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #24
  store ptr %116, ptr %115, align 8, !tbaa !476
  %117 = tail call fastcc zeroext i8 @call_may_noreturn_p(ptr noundef nonnull %1) #25, !range !314
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119, !prof !477

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %120) #24
  %121 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %1, ptr noundef null) #24
  store ptr %121, ptr %120, align 8, !tbaa !478
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127, !prof !479

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 1, ptr %126, align 8, !tbaa !480
  br label %127

127:                                              ; preds = %105, %125, %122, %8, %38
  %128 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %129 = getelementptr inbounds %struct.sched_deps_info_def, ptr %128, i64 0, i32 12
  %130 = load i8, ptr %129, align 8
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %134, label %133, !prof !481

133:                                              ; preds = %127
  tail call void @cselib_process_insn(ptr noundef nonnull %1) #24
  br label %134

134:                                              ; preds = %133, %127
  %135 = load i32, ptr %1, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %144, !prof !482

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %140 = load i32, ptr %139, align 8, !tbaa !294
  %141 = add i32 %140, -7
  %142 = icmp ult i32 %141, 2
  br i1 %142, label %143, label %144, !prof !483

143:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3347, ptr noundef nonnull @.str.1) #24
  br label %144

144:                                              ; preds = %138, %143, %134
  %145 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %146 = getelementptr inbounds %struct.sched_deps_info_def, ptr %145, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !484
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149, !prof !456

149:                                              ; preds = %144
  tail call void %147() #24
  br label %150

150:                                              ; preds = %149, %144
  %151 = load i32, ptr %1, align 8
  %152 = and i32 %151, 268500990
  %153 = icmp eq i32 %152, 268435464
  br i1 %153, label %154, label %158, !prof !485

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
define internal fastcc void @flush_pending_lists(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !486 !PGOFuncName !487 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %14, label %6, !prof !488

6:                                                ; preds = %4
  tail call fastcc void @add_dependence_list_and_free(ptr noundef %0, ptr noundef %1, ptr noundef %0, i32 noundef 1, i32 noundef 12) #25
  %7 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14, !prof !489

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %12) #24
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  store i32 0, ptr %13, align 8, !tbaa !490
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
  br i1 %22, label %23, label %28, !prof !491

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  tail call void @free_EXPR_LIST_list(ptr noundef nonnull %24) #24
  %25 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !492
  %26 = tail call ptr @alloc_INSN_LIST(ptr noundef %1, ptr noundef null) #24
  store ptr %26, ptr %18, align 8, !tbaa !466
  %27 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !460
  br label %28

28:                                               ; preds = %23, %14
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !353 !PGOFuncName !493 {
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
  br i1 %14, label %15, label %22, !prof !354

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  tail call void @extract_insn(ptr noundef %2) #24
  tail call void @preprocess_constraints() #24
  call void @ira_implicitly_set_insn_hard_regs(ptr noundef nonnull %6) #24
  %16 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !450
  %17 = xor i64 %16, -1
  %18 = load i64, ptr %6, align 8, !tbaa !450
  %19 = and i64 %18, %17
  %20 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !450
  %21 = or i64 %20, %19
  store i64 %21, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !450
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i32, ptr %2, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 8
  %26 = icmp eq i32 %12, 23
  %27 = select i1 %25, i1 %26, i1 false, !prof !494
  %28 = zext i1 %27 to i8
  store i8 %28, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  %29 = call i32 @may_trap_p(ptr noundef nonnull %1) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !495

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !478
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %33, i32 noundef 1, i32 noundef 12) #25
  br label %34

34:                                               ; preds = %31, %22
  %35 = icmp eq i32 %12, 14
  br i1 %35, label %36, label %43, !prof !354

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !294
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %2) #25
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !294
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
  ], !prof !496

47:                                               ; preds = %43, %43
  %48 = icmp eq i32 %44, 25
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %2) #25
  br i1 %48, label %49, label %86, !prof !497

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !476
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %51, i32 noundef 1, i32 noundef 11) #25
  br label %86

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !294
  %55 = load i32, ptr %54, align 8, !tbaa !498
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57, !prof !500

57:                                               ; preds = %52
  %58 = add i32 %55, -1
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %57, %81
  %61 = phi i64 [ %59, %57 ], [ %82, %81 ]
  %62 = load ptr, ptr %53, align 8, !tbaa !294
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %62, i64 0, i32 1, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !288
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 14
  br i1 %67, label %68, label %75, !prof !501

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !294
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %2) #25
  %71 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !294
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
  br i1 %83, label %85, label %60, !prof !502, !llvm.loop !503

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
  br i1 %89, label %90, label %111, !prof !504

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !294
  %93 = icmp eq ptr %92, null
  br i1 %93, label %107, label %94, !prof !505

94:                                               ; preds = %90, %103
  %95 = phi ptr [ %105, %103 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !294
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 25
  br i1 %100, label %101, label %102, !prof !506

101:                                              ; preds = %94
  call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %97, ptr noundef nonnull %2) #25
  br label %103

102:                                              ; preds = %94
  call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef nonnull %97, ptr noundef nonnull %2) #25
  br label %103

103:                                              ; preds = %101, %102
  %104 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !294
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %94, !prof !507, !llvm.loop !508

107:                                              ; preds = %103, %90
  %108 = call ptr @find_reg_note(ptr noundef nonnull %2, i32 noundef 30, ptr noundef null) #24
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110, !prof !467

110:                                              ; preds = %107
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %111

111:                                              ; preds = %107, %110, %86
  %112 = load i32, ptr %2, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %115, label %208, !prof !509

115:                                              ; preds = %111
  %116 = call ptr @next_nonnote_insn(ptr noundef nonnull %2) #24
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118, !prof !510

118:                                              ; preds = %115, %122
  %119 = phi ptr [ %123, %122 ], [ %116, %115 ]
  %120 = load i32, ptr %119, align 8
  %121 = trunc i32 %120 to i16
  switch i16 %121, label %126 [
    i16 7, label %122
    i16 11, label %125
  ], !prof !511

122:                                              ; preds = %118
  %123 = call ptr @next_nonnote_insn(ptr noundef nonnull %119) #24
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %118, !prof !512, !llvm.loop !513

125:                                              ; preds = %118
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %208

126:                                              ; preds = %122, %118, %115
  %127 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %128 = load ptr, ptr %127, align 8, !tbaa !514
  %129 = icmp eq ptr %128, null
  br i1 %129, label %163, label %130, !prof !515

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #26
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %7, ptr noundef nonnull @reg_obstack) #25
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %8, ptr noundef nonnull @reg_obstack) #25
  %131 = load ptr, ptr %127, align 8, !tbaa !514
  %132 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void %131(ptr noundef nonnull %2, ptr noundef nonnull %132, ptr noundef nonnull %7, ptr noundef nonnull %8) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %4) #25
  %133 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %160, label %135, !prof !516

135:                                              ; preds = %130, %157
  %136 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %137 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %138 = load ptr, ptr %136, align 8, !tbaa !517
  %139 = load i32, ptr %4, align 4, !tbaa !297
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %142, i32 noundef 0, i32 noundef 12) #25
  %143 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !520
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %144, i32 noundef 0, i32 noundef 12) #25
  %145 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !521
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %146, i32 noundef 0, i32 noundef 12) #25
  %147 = load i8, ptr %137, align 4
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %135
  %151 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140
  %152 = getelementptr inbounds %struct.deps_reg, ptr %138, i64 %140, i32 4
  %153 = load i32, ptr %152, align 8, !tbaa !522
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !522
  %155 = load ptr, ptr %151, align 8, !tbaa !523
  %156 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %155) #24
  store ptr %156, ptr %151, align 8, !tbaa !523
  br label %157

157:                                              ; preds = %150, %135
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %158 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %135, !prof !524, !llvm.loop !525

160:                                              ; preds = %157, %130
  %161 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  %162 = call zeroext i8 @bitmap_ior_into(ptr noundef %161, ptr noundef nonnull %8) #24
  call void @bitmap_clear(ptr noundef nonnull %7) #24
  call void @bitmap_clear(ptr noundef nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  br label %163

163:                                              ; preds = %160, %126
  %164 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !294
  %166 = icmp eq ptr %165, null
  br i1 %166, label %179, label %167, !prof !526

167:                                              ; preds = %163, %175
  %168 = phi ptr [ %177, %175 ], [ %165, %163 ]
  %169 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !294
  %171 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %170) #25, !range !314
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %175, !prof !527

173:                                              ; preds = %167
  %174 = load ptr, ptr %169, align 8, !tbaa !294
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef %174, i32 noundef 11) #25
  br label %175

175:                                              ; preds = %173, %167
  %176 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !294
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %167, !prof !528, !llvm.loop !529

179:                                              ; preds = %175, %163
  %180 = load ptr, ptr %0, align 8, !tbaa !294
  %181 = icmp eq ptr %180, null
  br i1 %181, label %205, label %182, !prof !530

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %184

184:                                              ; preds = %182, %200
  %185 = phi ptr [ %203, %200 ], [ %180, %182 ]
  %186 = phi ptr [ %202, %200 ], [ %183, %182 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !294
  %188 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !294
  %190 = load i32, ptr %189, align 8
  %191 = and i32 %190, 134217728
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193, !prof !531

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !294
  %196 = call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %195) #25, !range !314
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %200, !prof !532

198:                                              ; preds = %193
  %199 = load ptr, ptr %194, align 8, !tbaa !294
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef %199, i32 noundef 11) #25
  br label %200

200:                                              ; preds = %198, %193, %184
  %201 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %202 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %201, align 8, !tbaa !294
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %184, !prof !533, !llvm.loop !534

205:                                              ; preds = %200, %179
  %206 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %207 = load ptr, ptr %206, align 8, !tbaa !466
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %207, i32 noundef 1, i32 noundef 12) #25
  br label %208

208:                                              ; preds = %125, %205, %111
  %209 = load i32, ptr %2, align 8
  %210 = and i32 %209, 65535
  %211 = add nsw i32 %210, -9
  %212 = icmp ult i32 %211, 2
  br i1 %212, label %213, label %218, !prof !535

213:                                              ; preds = %208
  %214 = call zeroext i8 @can_throw_internal(ptr noundef nonnull %2) #24
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %225, !prof !536

216:                                              ; preds = %213
  %217 = load i32, ptr %2, align 8
  br label %218

218:                                              ; preds = %216, %208
  %219 = phi i32 [ %217, %216 ], [ %209, %208 ]
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %226, !prof !494

222:                                              ; preds = %218
  %223 = call zeroext i8 @control_flow_insn_p(ptr noundef nonnull %2) #24
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %226, label %225, !prof !537

225:                                              ; preds = %222, %213
  store i32 1, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %226

226:                                              ; preds = %225, %222, %218
  %227 = load i8, ptr @sched_pressure_p, align 1, !tbaa !294
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %230, label %229, !prof !538

229:                                              ; preds = %226
  call fastcc void @setup_insn_reg_uses(ptr noundef %0, ptr noundef nonnull %2) #25
  call fastcc void @setup_insn_reg_pressure_info(ptr noundef nonnull %2) #25
  br label %230

230:                                              ; preds = %229, %226
  %231 = load i32, ptr %2, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 7
  br i1 %233, label %234, label %303, !prof !354

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 12
  %236 = load ptr, ptr %235, align 8, !tbaa !539
  %237 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %238 = load i8, ptr %237, align 4
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  store ptr %2, ptr %235, align 8, !tbaa !539
  br label %242

242:                                              ; preds = %241, %234
  %243 = icmp eq ptr %236, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %242
  call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %236, i32 noundef 12) #25
  br label %245

245:                                              ; preds = %244, %242
  %246 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %247 = load ptr, ptr %246, align 8, !tbaa !476
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %247, i32 noundef 1, i32 noundef 12) #25
  %248 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %249 = load ptr, ptr %248, align 8, !tbaa !294
  %250 = icmp eq ptr %249, null
  br i1 %250, label %266, label %251

251:                                              ; preds = %245, %262
  %252 = phi ptr [ %264, %262 ], [ %249, %245 ]
  %253 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !294
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
  %264 = load ptr, ptr %263, align 8, !tbaa !294
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %251, !llvm.loop !540

266:                                              ; preds = %262, %245
  %267 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %267, ptr noundef nonnull %4) #25
  %268 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %292, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %272

272:                                              ; preds = %270, %287
  %273 = load ptr, ptr %271, align 8, !tbaa !517
  %274 = load i32, ptr %4, align 4, !tbaa !297
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.deps_reg, ptr %273, i64 %275, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %277, i32 noundef 1, i32 noundef 12) #25
  %278 = getelementptr inbounds %struct.deps_reg, ptr %273, i64 %275, i32 3
  %279 = load ptr, ptr %278, align 8, !tbaa !521
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %279, i32 noundef 1, i32 noundef 12) #25
  %280 = load i8, ptr %237, align 4
  %281 = and i8 %280, 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %272
  %284 = getelementptr inbounds %struct.deps_reg, ptr %273, i64 %275
  %285 = load ptr, ptr %284, align 8, !tbaa !523
  %286 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %285) #24
  store ptr %286, ptr %284, align 8, !tbaa !523
  br label %287

287:                                              ; preds = %283, %272
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %288 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %272, !llvm.loop !541

290:                                              ; preds = %287
  %291 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
  br label %292

292:                                              ; preds = %290, %266
  %293 = phi ptr [ %291, %290 ], [ %267, %266 ]
  call void @bitmap_clear(ptr noundef %293) #24
  %294 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !294
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
  %304 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %304, ptr noundef nonnull %4) #25
  %305 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %310, label %307, !prof !542

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %309 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %313

310:                                              ; preds = %333, %303
  %311 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %312 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %336

313:                                              ; preds = %307, %333
  %314 = load ptr, ptr %308, align 8, !tbaa !517
  %315 = load i32, ptr %4, align 4, !tbaa !297
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %318, i32 noundef 0, i32 noundef 0) #25
  %319 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !520
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %320, i32 noundef 0, i32 noundef 12) #25
  %321 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !521
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %322, i32 noundef 0, i32 noundef 0) #25
  %323 = load i8, ptr %309, align 4
  %324 = and i8 %323, 1
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %333, !prof !543

326:                                              ; preds = %313
  %327 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316
  %328 = load ptr, ptr %327, align 8, !tbaa !523
  %329 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %328) #24
  store ptr %329, ptr %327, align 8, !tbaa !523
  %330 = getelementptr inbounds %struct.deps_reg, ptr %314, i64 %316, i32 4
  %331 = load i32, ptr %330, align 8, !tbaa !522
  %332 = add nsw i32 %331, 1
  store i32 %332, ptr %330, align 8, !tbaa !522
  br label %333

333:                                              ; preds = %326, %313
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %334 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %310, label %313, !prof !544, !llvm.loop !545

336:                                              ; preds = %310, %360
  %337 = phi i64 [ 0, %310 ], [ %361, %360 ]
  %338 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  %339 = shl nuw nsw i64 1, %337
  %340 = and i64 %338, %339
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %360, label %342, !prof !546

342:                                              ; preds = %336
  %343 = load ptr, ptr %311, align 8, !tbaa !517
  %344 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %345, i32 noundef 0, i32 noundef 0) #25
  %346 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !520
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %347, i32 noundef 0, i32 noundef 12) #25
  %348 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !521
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %349, i32 noundef 0, i32 noundef 0) #25
  %350 = load i8, ptr %312, align 4
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %360, !prof !547

353:                                              ; preds = %342
  %354 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337
  %355 = load ptr, ptr %354, align 8, !tbaa !523
  %356 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %355) #24
  store ptr %356, ptr %354, align 8, !tbaa !523
  %357 = getelementptr inbounds %struct.deps_reg, ptr %343, i64 %337, i32 4
  %358 = load i32, ptr %357, align 8, !tbaa !522
  %359 = add nsw i32 %358, 1
  store i32 %359, ptr %357, align 8, !tbaa !522
  br label %360

360:                                              ; preds = %342, %353, %336
  %361 = add nuw nsw i64 %337, 1
  %362 = icmp eq i64 %361, 53
  br i1 %362, label %363, label %336, !prof !548, !llvm.loop !549

363:                                              ; preds = %360
  store i32 53, ptr %4, align 4, !tbaa !297
  %364 = call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %2) #25, !range !314
  %365 = icmp eq i8 %364, 0
  %366 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !288
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %366, ptr noundef nonnull %4) #25
  %367 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %368 = icmp eq i8 %367, 0
  br i1 %365, label %420, label %369, !prof !550

369:                                              ; preds = %363
  br i1 %368, label %393, label %370, !prof !516

370:                                              ; preds = %369, %390
  %371 = load ptr, ptr %311, align 8, !tbaa !517
  %372 = load i32, ptr %4, align 4, !tbaa !297
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373
  %375 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %376, i32 noundef 0, i32 noundef 11) #25
  %377 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !520
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %378, i32 noundef 0, i32 noundef 12) #25
  %379 = load ptr, ptr %374, align 8, !tbaa !523
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %379, i32 noundef 0, i32 noundef 12) #25
  %380 = load i8, ptr %312, align 4
  %381 = and i8 %380, 1
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %390

383:                                              ; preds = %370
  %384 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !521
  %386 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %385) #24
  store ptr %386, ptr %384, align 8, !tbaa !521
  %387 = getelementptr inbounds %struct.deps_reg, ptr %371, i64 %373, i32 5
  %388 = load i32, ptr %387, align 4, !tbaa !551
  %389 = add nsw i32 %388, 1
  store i32 %389, ptr %387, align 4, !tbaa !551
  br label %390

390:                                              ; preds = %383, %370
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %391 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %370, !prof !524, !llvm.loop !552

393:                                              ; preds = %390, %369
  %394 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %394, ptr noundef nonnull %4) #25
  %395 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %492, label %397, !prof !516

397:                                              ; preds = %393, %417
  %398 = load ptr, ptr %311, align 8, !tbaa !517
  %399 = load i32, ptr %4, align 4, !tbaa !297
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400
  %402 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %403, i32 noundef 0, i32 noundef 11) #25
  %404 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !520
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %405, i32 noundef 0, i32 noundef 12) #25
  %406 = getelementptr inbounds %struct.deps_reg, ptr %398, i64 %400, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !521
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %407, i32 noundef 0, i32 noundef 11) #25
  %408 = load ptr, ptr %401, align 8, !tbaa !523
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %408, i32 noundef 0, i32 noundef 12) #25
  %409 = load i8, ptr %312, align 4
  %410 = and i8 %409, 1
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %397
  %413 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  %414 = load ptr, ptr %402, align 8, !tbaa !518
  %415 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %414) #24
  store ptr %415, ptr %402, align 8, !tbaa !518
  %416 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %413, i32 noundef %399) #24
  br label %417

417:                                              ; preds = %412, %397
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %418 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %492, label %397, !prof !524, !llvm.loop !553

420:                                              ; preds = %363
  br i1 %368, label %467, label %421, !prof !554

421:                                              ; preds = %420, %464
  %422 = load ptr, ptr %311, align 8, !tbaa !517
  %423 = load i32, ptr %4, align 4, !tbaa !297
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424
  %426 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 4
  %427 = load i32, ptr %426, align 8, !tbaa !522
  %428 = load ptr, ptr @compiler_params, align 8, !tbaa !288
  %429 = getelementptr inbounds %struct.param_info, ptr %428, i64 14, i32 1
  %430 = load i32, ptr %429, align 8, !tbaa !463
  %431 = icmp sgt i32 %427, %430
  br i1 %431, label %436, label %432, !prof !555

432:                                              ; preds = %421
  %433 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 5
  %434 = load i32, ptr %433, align 4, !tbaa !551
  %435 = icmp sgt i32 %434, %430
  br i1 %435, label %436, label %447, !prof !556

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
  br i1 %442, label %443, label %453, !prof !557

443:                                              ; preds = %436
  %444 = load ptr, ptr %437, align 8, !tbaa !518
  %445 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %444) #24
  store ptr %445, ptr %437, align 8, !tbaa !518
  %446 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 5
  store i32 0, ptr %446, align 4, !tbaa !551
  store i32 0, ptr %426, align 8, !tbaa !522
  br label %453

447:                                              ; preds = %432
  %448 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %449, i32 noundef 0, i32 noundef 11) #25
  %450 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !520
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %451, i32 noundef 0, i32 noundef 12) #25
  %452 = load ptr, ptr %425, align 8, !tbaa !523
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %452, i32 noundef 0, i32 noundef 12) #25
  br label %453

453:                                              ; preds = %436, %443, %447
  %454 = load i8, ptr %312, align 4
  %455 = and i8 %454, 1
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %457, label %464, !prof !558

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 5
  %459 = load i32, ptr %458, align 4, !tbaa !551
  %460 = add nsw i32 %459, 1
  store i32 %460, ptr %458, align 4, !tbaa !551
  %461 = getelementptr inbounds %struct.deps_reg, ptr %422, i64 %424, i32 3
  %462 = load ptr, ptr %461, align 8, !tbaa !521
  %463 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %462) #24
  store ptr %463, ptr %461, align 8, !tbaa !521
  br label %464

464:                                              ; preds = %457, %453
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %465 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %467, label %421, !prof !559, !llvm.loop !560

467:                                              ; preds = %464, %420
  %468 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %468, ptr noundef nonnull %4) #25
  %469 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %492, label %471, !prof !561

471:                                              ; preds = %467, %489
  %472 = load ptr, ptr %311, align 8, !tbaa !517
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
  br i1 %481, label %482, label %489, !prof !562

482:                                              ; preds = %471
  %483 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  %484 = load ptr, ptr %476, align 8, !tbaa !518
  %485 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %484) #24
  store ptr %485, ptr %476, align 8, !tbaa !518
  %486 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474, i32 4
  store i32 0, ptr %486, align 8, !tbaa !522
  %487 = getelementptr inbounds %struct.deps_reg, ptr %472, i64 %474, i32 5
  store i32 0, ptr %487, align 4, !tbaa !551
  %488 = call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %483, i32 noundef %473) #24
  br label %489

489:                                              ; preds = %482, %471
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %490 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %471, !prof !563, !llvm.loop !564

492:                                              ; preds = %417, %489, %393, %467, %297, %292, %302
  %493 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %494 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  br label %495

495:                                              ; preds = %492, %516
  %496 = phi i64 [ 0, %492 ], [ %517, %516 ]
  %497 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !450
  %498 = shl nuw nsw i64 1, %496
  %499 = and i64 %497, %498
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %516, label %501, !prof !565

501:                                              ; preds = %495
  %502 = load ptr, ptr %493, align 8, !tbaa !517
  %503 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496
  %504 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496, i32 1
  %505 = load ptr, ptr %504, align 8, !tbaa !518
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %505, i32 noundef 0, i32 noundef 12) #25
  %506 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496, i32 3
  %507 = load ptr, ptr %506, align 8, !tbaa !521
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %507, i32 noundef 0, i32 noundef 12) #25
  %508 = load ptr, ptr %503, align 8, !tbaa !523
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %508, i32 noundef 0, i32 noundef 12) #25
  %509 = load i8, ptr %494, align 4
  %510 = and i8 %509, 1
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %512, label %516

512:                                              ; preds = %501
  %513 = getelementptr inbounds %struct.deps_reg, ptr %502, i64 %496, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !520
  %515 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %514) #24
  store ptr %515, ptr %513, align 8, !tbaa !520
  br label %516

516:                                              ; preds = %501, %512, %495
  %517 = add nuw nsw i64 %496, 1
  %518 = icmp eq i64 %517, 53
  br i1 %518, label %519, label %495, !prof !548, !llvm.loop !566

519:                                              ; preds = %516
  store i32 53, ptr %4, align 4, !tbaa !297
  %520 = load i8, ptr %494, align 4
  %521 = and i8 %520, 1
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %523, label %553, !prof !538

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  %525 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
  %526 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %524, ptr noundef %525) #24
  %527 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !288
  %528 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %524, ptr noundef %527) #24
  %529 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  %530 = call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %524, ptr noundef %529) #24
  %531 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  br label %532

532:                                              ; preds = %523, %546
  %533 = phi i64 [ %531, %523 ], [ %547, %546 ]
  %534 = phi i64 [ 0, %523 ], [ %548, %546 ]
  %535 = shl nuw nsw i64 1, %534
  %536 = and i64 %533, %535
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %542, !prof !546

538:                                              ; preds = %532
  %539 = load i64, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !450
  %540 = and i64 %539, %535
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %546, label %542, !prof !567

542:                                              ; preds = %538, %532
  %543 = trunc i64 %534 to i32
  %544 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %524, i32 noundef %543) #24
  %545 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  br label %546

546:                                              ; preds = %538, %542
  %547 = phi i64 [ %533, %538 ], [ %545, %542 ]
  %548 = add nuw nsw i64 %534, 1
  %549 = icmp eq i64 %548, 53
  br i1 %549, label %550, label %532, !prof !548, !llvm.loop !568

550:                                              ; preds = %546
  store i32 53, ptr %4, align 4, !tbaa !297
  %551 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %552 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 %551, ptr %552, align 8, !tbaa !569
  br label %553

553:                                              ; preds = %550, %519
  %554 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
  call void @bitmap_clear(ptr noundef %554) #24
  %555 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !288
  call void @bitmap_clear(ptr noundef %555) #24
  %556 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  call void @bitmap_clear(ptr noundef %556) #24
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !450
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  %557 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %650, label %559, !prof !570

559:                                              ; preds = %553
  %560 = call fastcc zeroext i8 @sched_has_condition_p(ptr noundef nonnull %2) #25, !range !314
  %561 = icmp eq i8 %560, 0
  %562 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %562, ptr noundef nonnull %4) #25
  %563 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %564 = icmp eq i8 %563, 0
  br i1 %561, label %586, label %565, !prof !571

565:                                              ; preds = %559
  br i1 %564, label %610, label %566

566:                                              ; preds = %565, %566
  %567 = load ptr, ptr %493, align 8, !tbaa !517
  %568 = load i32, ptr %4, align 4, !tbaa !297
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !523
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %571, i32 noundef 0, i32 noundef 12) #25
  %572 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569, i32 1
  %573 = load ptr, ptr %572, align 8, !tbaa !518
  %574 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %575 = icmp eq i32 %574, 2
  %576 = select i1 %575, i32 0, i32 12
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %573, i32 noundef 0, i32 noundef %576) #25
  %577 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !520
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %578, i32 noundef 0, i32 noundef 12) #25
  %579 = getelementptr inbounds %struct.deps_reg, ptr %567, i64 %569, i32 3
  %580 = load ptr, ptr %579, align 8, !tbaa !521
  %581 = load i32, ptr @reg_pending_barrier, align 4, !tbaa !297
  %582 = icmp eq i32 %581, 2
  %583 = select i1 %582, i32 0, i32 12
  call fastcc void @add_dependence_list(ptr noundef nonnull %2, ptr noundef %580, i32 noundef 0, i32 noundef %583) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %584 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %610, label %566, !llvm.loop !572

586:                                              ; preds = %559
  br i1 %564, label %610, label %587, !prof !573

587:                                              ; preds = %586, %607
  %588 = load ptr, ptr %493, align 8, !tbaa !517
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
  br i1 %603, label %604, label %607, !prof !574

604:                                              ; preds = %587
  %605 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590, i32 4
  store i32 0, ptr %605, align 8, !tbaa !522
  %606 = getelementptr inbounds %struct.deps_reg, ptr %588, i64 %590, i32 5
  store i32 0, ptr %606, align 4, !tbaa !551
  br label %607

607:                                              ; preds = %604, %587
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %608 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #25, !range !314
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %610, label %587, !prof !575, !llvm.loop !576

610:                                              ; preds = %566, %607, %565, %586
  %611 = load i8, ptr %494, align 4
  %612 = and i8 %611, 1
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %632, !prof !571

614:                                              ; preds = %610
  %615 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %616 = load i32, ptr %615, align 8, !tbaa !577
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %632, label %618, !prof !573

618:                                              ; preds = %614
  %619 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  br label %620

620:                                              ; preds = %618, %620
  %621 = phi i64 [ 0, %618 ], [ %628, %620 ]
  %622 = load ptr, ptr %493, align 8, !tbaa !517
  %623 = getelementptr inbounds %struct.deps_reg, ptr %622, i64 %621, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !518
  %625 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %2, ptr noundef %624) #24
  store ptr %625, ptr %623, align 8, !tbaa !518
  %626 = trunc i64 %621 to i32
  %627 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %619, i32 noundef %626) #24
  %628 = add nuw nsw i64 %621, 1
  %629 = load i32, ptr %615, align 8, !tbaa !577
  %630 = zext i32 %629 to i64
  %631 = icmp ult i64 %628, %630
  br i1 %631, label %620, label %632, !prof !578, !llvm.loop !579

632:                                              ; preds = %620, %614, %610
  %633 = load i32, ptr %2, align 8
  %634 = and i32 %633, 65535
  %635 = icmp eq i32 %634, 9
  br i1 %635, label %636, label %643, !prof !580

636:                                              ; preds = %632
  %637 = call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %642, label %639, !prof !581

639:                                              ; preds = %636
  %640 = call zeroext i8 @sel_insn_is_speculation_check(ptr noundef nonnull %2) #24
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %642, label %643

642:                                              ; preds = %639, %636
  call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1) #25
  br label %643

643:                                              ; preds = %642, %639, %632
  %644 = load i8, ptr %494, align 4
  %645 = and i8 %644, 1
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %647, label %649, !prof !571

647:                                              ; preds = %643
  %648 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  call void @bitmap_clear(ptr noundef nonnull %648) #24
  br label %649

649:                                              ; preds = %647, %643
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !297
  br label %650

650:                                              ; preds = %649, %553
  %651 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  %652 = load i32, ptr %651, align 8, !tbaa !480
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %756, label %654, !prof !538

654:                                              ; preds = %650
  %655 = load i32, ptr %2, align 8
  %656 = and i32 %655, 65535
  %657 = add nsw i32 %656, -7
  %658 = icmp ult i32 %657, 4
  br i1 %658, label %659, label %671

659:                                              ; preds = %654
  %660 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %661 = load ptr, ptr %660, align 8, !tbaa !294
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
  %677 = load ptr, ptr %676, align 8, !tbaa !294
  %678 = load i32, ptr %677, align 8
  %679 = and i32 %678, 65535
  %680 = icmp eq i32 %679, 39
  br i1 %680, label %681, label %685

681:                                              ; preds = %674
  %682 = getelementptr inbounds %struct.rtx_def, ptr %677, i64 0, i32 1
  %683 = load ptr, ptr %682, align 8, !tbaa !294
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
  %693 = load ptr, ptr %692, align 8, !tbaa !294
  %694 = load i32, ptr %693, align 8
  %695 = and i32 %694, 65535
  %696 = icmp eq i32 %695, 39
  br i1 %696, label %697, label %701

697:                                              ; preds = %690
  %698 = getelementptr inbounds %struct.rtx_def, ptr %693, i64 0, i32 1
  %699 = load ptr, ptr %698, align 8, !tbaa !294
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
  %709 = load ptr, ptr %708, align 8, !tbaa !294
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
  %730 = load i32, ptr %651, align 8, !tbaa !480
  %731 = icmp eq i32 %730, 2
  br i1 %731, label %732, label %733

732:                                              ; preds = %729
  store i32 1, ptr %651, align 8, !tbaa !480
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
  %745 = load i32, ptr %744, align 8, !tbaa !294
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
  store i32 0, ptr %651, align 8, !tbaa !480
  br label %756

756:                                              ; preds = %671, %751, %755, %739, %733, %650
  %757 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %758 = getelementptr inbounds %struct.haifa_sched_info, ptr %757, i64 0, i32 17
  %759 = load i32, ptr %758, align 8, !tbaa !289
  %760 = and i32 %759, 2
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %776, label %762, !prof !538

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
  br i1 %774, label %775, label %772, !llvm.loop !582

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
define internal fastcc void @add_dependence_list_and_free(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !583 !PGOFuncName !584 {
  %6 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %2, align 8, !tbaa !288
  br i1 %9, label %12, label %11, !prof !585

11:                                               ; preds = %5
  tail call fastcc void @add_dependence_list(ptr noundef %1, ptr noundef %10, i32 noundef %3, i32 noundef %4) #25
  br label %29

12:                                               ; preds = %5
  store ptr null, ptr %2, align 8, !tbaa !288
  %13 = icmp eq ptr %10, null
  br i1 %13, label %29, label %14, !prof !586

14:                                               ; preds = %12
  %15 = icmp eq i32 %3, 0
  br label %16

16:                                               ; preds = %14, %27
  %17 = phi ptr [ %10, %14 ], [ %20, %27 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !294
  br i1 %15, label %21, label %25, !prof !587

21:                                               ; preds = %16
  %22 = load ptr, ptr %18, align 8, !tbaa !294
  %23 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %1, ptr noundef %22) #25, !range !314
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27, !prof !588

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr %18, align 8, !tbaa !294
  tail call void @add_dependence(ptr noundef %1, ptr noundef %26, i32 noundef %4) #25
  br label %27

27:                                               ; preds = %25, %21
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %17) #24
  %28 = icmp eq ptr %20, null
  br i1 %28, label %29, label %16, !prof !589, !llvm.loop !590

29:                                               ; preds = %27, %12, %11
  ret void
}

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @call_may_noreturn_p(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !591 !PGOFuncName !592 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -2080374784
  %4 = icmp ne i32 %3, 0
  %5 = and i32 %2, 33554432
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %4, %6
  br i1 %7, label %67, label %8, !prof !593

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !294
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %20, !prof !594

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !294
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !288
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i32 [ %19, %14 ], [ %11, %8 ]
  %22 = phi ptr [ %18, %14 ], [ %10, %8 ]
  %23 = and i32 %21, 65535
  %24 = icmp eq i32 %23, 23
  br i1 %24, label %25, label %29, !prof !595

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !294
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %28, %25 ], [ %21, %20 ]
  %31 = phi ptr [ %27, %25 ], [ %22, %20 ]
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, 26
  br i1 %33, label %34, label %67, !prof !596

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !294
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %67, !prof !596

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !294
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 67174399
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %67, !prof !597

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !294
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50, !prof !598

50:                                               ; preds = %46
  %51 = load i64, ptr %48, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 29
  br i1 %53, label %54, label %67, !prof !599

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_function_decl, ptr %48, i64 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 6144
  %58 = icmp eq i32 %57, 6144
  br i1 %58, label %59, label %67, !prof !600

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
define internal fastcc void @fixup_sched_groups(ptr noundef %0) unnamed_addr #0 !prof !276 !PGOFuncName !601 {
  %2 = alloca %struct._sd_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %2, ptr noundef %0, i32 noundef 3) #25
  %4 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1, %26
  %7 = load ptr, ptr %3, align 8, !tbaa !288
  %8 = load ptr, ptr %7, align 8, !tbaa !278
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
  br i1 %19, label %9, label %20, !llvm.loop !602

20:                                               ; preds = %13
  %21 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %11, ptr noundef %8) #25, !range !314
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._dep, ptr %7, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !285
  tail call void @add_dependence(ptr noundef nonnull %11, ptr noundef %8, i32 noundef %25) #25
  br label %26

26:                                               ; preds = %9, %20, %23
  call fastcc void @sd_iterator_next(ptr noundef nonnull %2) #25
  %27 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %6, !llvm.loop !603

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
  br i1 %39, label %34, label %40, !llvm.loop !604

40:                                               ; preds = %34, %29
  %41 = phi ptr [ %30, %29 ], [ %36, %34 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !294
  %44 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !294
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

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @preprocess_constraints() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ira_implicitly_set_insn_hard_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_dependence_list(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !605 !PGOFuncName !606 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %22, label %6, !prof !607

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 0
  br label %8

8:                                                ; preds = %6, %18
  %9 = phi ptr [ %1, %6 ], [ %20, %18 ]
  br i1 %7, label %10, label %15, !prof !608

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !294
  %13 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %0, ptr noundef %12) #25, !range !314
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18, !prof !609

15:                                               ; preds = %10, %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !294
  tail call void @add_dependence(ptr noundef %0, ptr noundef %17, i32 noundef %3) #25
  br label %18

18:                                               ; preds = %10, %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !294
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !prof !610, !llvm.loop !611

22:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !612 !PGOFuncName !613 {
  %4 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !614

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2371, ptr noundef nonnull @.str.1) #24
  br label %282

7:                                                ; preds = %3
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %15, label %9, !prof !615

9:                                                ; preds = %7
  %10 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !616
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !617

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
  ], !prof !618

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  br i1 %8, label %282, label %20, !prof !619

20:                                               ; preds = %19
  %21 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %22 = getelementptr inbounds %struct.sched_deps_info_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !620
  %24 = icmp eq ptr %23, null
  br i1 %24, label %282, label %25, !prof !621

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
  br i1 %31, label %32, label %36, !prof !622

32:                                               ; preds = %26
  %33 = icmp eq i32 %27, 8
  br i1 %33, label %35, label %34, !prof !623

34:                                               ; preds = %32
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %29, i32 noundef 24, ptr noundef %2) #25
  br label %35

35:                                               ; preds = %34, %32
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %29, i32 noundef 23, ptr noundef %2) #25
  br label %36

36:                                               ; preds = %35, %26
  br i1 %8, label %282, label %37, !prof !624

37:                                               ; preds = %36
  %38 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %39 = getelementptr inbounds %struct.sched_deps_info_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !620
  %41 = icmp eq ptr %40, null
  br i1 %41, label %282, label %42, !prof !625

42:                                               ; preds = %37
  tail call void %40() #24
  br label %282

43:                                               ; preds = %15
  %44 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %45 = getelementptr inbounds %struct.sched_deps_info_def, ptr %44, i64 0, i32 12
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %66, label %49, !prof !626

49:                                               ; preds = %43
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !627
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !294
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %52, i64 0, i32 5
  %56 = load i8, ptr %55, align 8, !tbaa !639
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi i8 [ %56, %54 ], [ 0, %49 ]
  %59 = tail call i32 %50(i8 noundef zeroext %58) #24
  %60 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %1) #24
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !294
  %63 = tail call ptr @cselib_lookup_from_insn(ptr noundef %62, i32 noundef %59, i32 noundef 1, ptr noundef %2) #24
  %64 = load ptr, ptr %61, align 8, !tbaa !294
  %65 = tail call ptr @cselib_subst_to_values(ptr noundef %64) #24
  store ptr %65, ptr %61, align 8, !tbaa !294
  br label %66

66:                                               ; preds = %57, %43
  %67 = phi ptr [ %60, %57 ], [ %1, %43 ]
  %68 = load i32, ptr %2, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %169, label %71, !prof !641

71:                                               ; preds = %66
  %72 = tail call ptr @canon_rtx(ptr noundef nonnull %67) #24
  %73 = load ptr, ptr %0, align 8, !tbaa !294
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75, !prof !642

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %77

77:                                               ; preds = %75, %93
  %78 = phi ptr [ %96, %93 ], [ %73, %75 ]
  %79 = phi ptr [ %95, %93 ], [ %76, %75 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !294
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !294
  %83 = tail call i32 @read_dependence(ptr noundef %82, ptr noundef %72) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85, !prof !643

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !294
  %88 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %87) #25, !range !314
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93, !prof !644

90:                                               ; preds = %85
  %91 = load ptr, ptr %81, align 8, !tbaa !294
  %92 = load ptr, ptr %86, align 8, !tbaa !294
  tail call fastcc void @note_mem_dep(ptr noundef %72, ptr noundef %91, ptr noundef %92, i32 noundef 67108864) #25
  br label %93

93:                                               ; preds = %90, %85, %77
  %94 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %95 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load ptr, ptr %94, align 8, !tbaa !294
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %77, !prof !645, !llvm.loop !646

98:                                               ; preds = %93, %71
  %99 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !294
  %101 = icmp eq ptr %100, null
  br i1 %101, label %131, label %102, !prof !647

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %104

104:                                              ; preds = %102, %126
  %105 = phi ptr [ %129, %126 ], [ %100, %102 ]
  %106 = phi ptr [ %128, %126 ], [ %103, %102 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !294
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !294
  %110 = tail call i32 @true_dependence(ptr noundef %109, i32 noundef 0, ptr noundef %72, ptr noundef nonnull @rtx_varies_p) #24
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112, !prof !648

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !294
  %115 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef nonnull %2, ptr noundef %114) #25, !range !314
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %126, !prof !649

117:                                              ; preds = %112
  %118 = load ptr, ptr %108, align 8, !tbaa !294
  %119 = load ptr, ptr %113, align 8, !tbaa !294
  %120 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
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
  %129 = load ptr, ptr %127, align 8, !tbaa !294
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %104, !prof !650, !llvm.loop !651

131:                                              ; preds = %126, %98
  %132 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !294
  %134 = icmp eq ptr %133, null
  br i1 %134, label %169, label %135, !prof !652

135:                                              ; preds = %131, %165
  %136 = phi ptr [ %167, %165 ], [ %133, %131 ]
  %137 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !294
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, 9
  br i1 %141, label %143, label %142, !prof !653

142:                                              ; preds = %135
  tail call void @add_dependence(ptr noundef nonnull %2, ptr noundef nonnull %138, i32 noundef 12) #25
  br label %165

143:                                              ; preds = %135
  %144 = tail call fastcc i32 @deps_may_trap_p(ptr noundef nonnull %1) #25
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %165, label %146, !prof !654

146:                                              ; preds = %143
  %147 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %148 = getelementptr inbounds %struct.sched_deps_info_def, ptr %147, i64 0, i32 12
  %149 = load i8, ptr %148, align 8
  %150 = and i8 %149, 4
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %163, label %152, !prof !655

152:                                              ; preds = %146
  %153 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr @spec_info, align 8, !tbaa !288
  %157 = load i32, ptr %156, align 8, !tbaa !656
  %158 = and i32 %157, 258048
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = tail call i32 @set_dep_weak(i32 noundef 67108864, i32 noundef 258048, i32 noundef 62) #25
  %162 = load ptr, ptr %137, align 8, !tbaa !294
  tail call fastcc void @note_dep(ptr noundef %162, i32 noundef %161) #25
  br label %165

163:                                              ; preds = %155, %152, %146
  %164 = load ptr, ptr %137, align 8, !tbaa !294
  tail call void @add_dependence(ptr noundef nonnull %2, ptr noundef %164, i32 noundef 12) #25
  br label %165

165:                                              ; preds = %142, %160, %163, %143
  %166 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !294
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %135, !prof !658, !llvm.loop !659

169:                                              ; preds = %165, %131, %66
  %170 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %171 = load i8, ptr %170, align 4
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %175, !prof !626

174:                                              ; preds = %169
  tail call fastcc void @add_insn_mem_dependence(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %2, ptr noundef nonnull %1) #25
  br label %175

175:                                              ; preds = %174, %169
  %176 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %177, ptr noundef nonnull %2) #25
  br i1 %8, label %282, label %178, !prof !660

178:                                              ; preds = %175
  %179 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %180 = getelementptr inbounds %struct.sched_deps_info_def, ptr %179, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !620
  %182 = icmp eq ptr %181, null
  br i1 %182, label %282, label %183, !prof !661

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
  %200 = load ptr, ptr %199, align 8, !tbaa !294
  %201 = load i32, ptr %200, align 8, !tbaa !498
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198, %203
  %204 = phi i64 [ %208, %203 ], [ 0, %198 ]
  %205 = phi ptr [ %209, %203 ], [ %200, %198 ]
  %206 = getelementptr inbounds %struct.rtvec_def, ptr %205, i64 0, i32 1, i64 %204
  %207 = load ptr, ptr %206, align 8, !tbaa !288
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %207, ptr noundef %2) #25
  %208 = add nuw nsw i64 %204, 1
  %209 = load ptr, ptr %199, align 8, !tbaa !294
  %210 = load i32, ptr %209, align 8, !tbaa !498
  %211 = sext i32 %210 to i64
  %212 = icmp slt i64 %208, %211
  br i1 %212, label %203, label %213, !llvm.loop !662

213:                                              ; preds = %203, %198
  br i1 %8, label %282, label %214

214:                                              ; preds = %213
  %215 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %216 = getelementptr inbounds %struct.sched_deps_info_def, ptr %215, i64 0, i32 6
  %217 = load ptr, ptr %216, align 8, !tbaa !620
  %218 = icmp eq ptr %217, null
  br i1 %218, label %282, label %219

219:                                              ; preds = %214
  tail call void %217() #24
  br label %282

220:                                              ; preds = %15, %15, %15, %15
  %221 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %222, ptr noundef %2) #25
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  br i1 %8, label %282, label %223, !prof !663

223:                                              ; preds = %220
  %224 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %225 = getelementptr inbounds %struct.sched_deps_info_def, ptr %224, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !620
  %227 = icmp eq ptr %226, null
  br i1 %227, label %282, label %228

228:                                              ; preds = %223
  tail call void %226() #24
  br label %282

229:                                              ; preds = %15, %15
  %230 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %231, ptr noundef %2) #25
  %232 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %233, ptr noundef %2) #25
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #25
  br i1 %8, label %282, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %236 = getelementptr inbounds %struct.sched_deps_info_def, ptr %235, i64 0, i32 6
  %237 = load ptr, ptr %236, align 8, !tbaa !620
  %238 = icmp eq ptr %237, null
  br i1 %238, label %282, label %239

239:                                              ; preds = %234
  tail call void %237() #24
  br label %282

240:                                              ; preds = %197, %15, %185, %188, %184
  %241 = zext nneg i32 %17 to i64
  %242 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !288
  %244 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %241
  %245 = load i8, ptr %244, align 1, !tbaa !294
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %275, label %247, !prof !664

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %249 = zext i8 %245 to i64
  br label %250

250:                                              ; preds = %247, %273
  %251 = phi i64 [ %249, %247 ], [ %252, %273 ]
  %252 = add nsw i64 %251, -1
  %253 = getelementptr inbounds i8, ptr %243, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !294
  switch i8 %254, label %273 [
    i8 101, label %260
    i8 69, label %255
  ], !prof !665

255:                                              ; preds = %250
  %256 = getelementptr inbounds [1 x %union.rtunion_def], ptr %248, i64 0, i64 %252
  %257 = load ptr, ptr %256, align 8, !tbaa !294
  %258 = load i32, ptr %257, align 8, !tbaa !498
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %263, label %273, !prof !666

260:                                              ; preds = %250
  %261 = getelementptr inbounds [1 x %union.rtunion_def], ptr %248, i64 0, i64 %252
  %262 = load ptr, ptr %261, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %262, ptr noundef %2) #25
  br label %273

263:                                              ; preds = %255, %263
  %264 = phi i64 [ %268, %263 ], [ 0, %255 ]
  %265 = phi ptr [ %269, %263 ], [ %257, %255 ]
  %266 = getelementptr inbounds %struct.rtvec_def, ptr %265, i64 0, i32 1, i64 %264
  %267 = load ptr, ptr %266, align 8, !tbaa !288
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %267, ptr noundef %2) #25
  %268 = add nuw nsw i64 %264, 1
  %269 = load ptr, ptr %256, align 8, !tbaa !294
  %270 = load i32, ptr %269, align 8, !tbaa !498
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %263, label %273, !prof !667, !llvm.loop !668

273:                                              ; preds = %263, %255, %250, %260
  %274 = icmp sgt i64 %251, 1
  br i1 %274, label %250, label %275, !prof !669, !llvm.loop !670

275:                                              ; preds = %273, %240
  br i1 %8, label %282, label %276, !prof !671

276:                                              ; preds = %275
  %277 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %278 = getelementptr inbounds %struct.sched_deps_info_def, ptr %277, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !620
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281, !prof !672

281:                                              ; preds = %276
  tail call void %279() #24
  br label %282

282:                                              ; preds = %6, %275, %276, %281, %229, %234, %239, %220, %223, %228, %213, %214, %219, %175, %178, %183, %36, %37, %42, %19, %20, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !673 !PGOFuncName !674 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = load i8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  %9 = icmp eq ptr %5, null
  br i1 %9, label %10, label %11, !prof !675

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2197, ptr noundef nonnull @.str.1) #24
  br label %238

11:                                               ; preds = %3
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %19, label %13, !prof !676

13:                                               ; preds = %11
  %14 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !677
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !617

18:                                               ; preds = %13
  tail call void %16(ptr noundef nonnull %5) #24
  br label %19

19:                                               ; preds = %18, %13, %11
  %20 = load i32, ptr %5, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %55, !prof !678

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !294
  %26 = load i32, ptr %25, align 8, !tbaa !498
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %41
  %31 = phi i64 [ %29, %28 ], [ %32, %41 ]
  %32 = add nsw i64 %31, -1
  %33 = load ptr, ptr %24, align 8, !tbaa !294
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !288
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !294
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %30
  %40 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %37) #24
  tail call fastcc void @sched_analyze_1(ptr noundef %0, ptr noundef %40, ptr noundef %2) #25
  br label %41

41:                                               ; preds = %30, %39
  %42 = icmp ugt i64 %31, 1
  br i1 %42, label %30, label %43, !llvm.loop !679

43:                                               ; preds = %41, %23
  br i1 %12, label %50, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %46 = getelementptr inbounds %struct.sched_deps_info_def, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !680
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void %47() #24
  br label %50

50:                                               ; preds = %49, %44, %43
  %51 = icmp eq i32 %7, 23
  br i1 %51, label %52, label %238

52:                                               ; preds = %50
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %54, ptr noundef %2) #25
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
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
  ], !prof !681

59:                                               ; preds = %55
  %60 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %57) #24
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55, %55, %59
  %63 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %64, ptr noundef %2) #25
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, ptr %57, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 120
  br i1 %68, label %69, label %74, !prof !682

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %71, ptr noundef %2) #25
  %72 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %73, ptr noundef %2) #25
  br label %74

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !294
  %77 = load i32, ptr %76, align 8
  br label %55, !llvm.loop !683

78:                                               ; preds = %55
  %79 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #25
  %80 = lshr i32 %56, 16
  %81 = and i32 %80, 255
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %79, i32 noundef %81, i32 noundef %7, ptr noundef %2) #25
  %82 = and i32 %79, -8
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %224, !prof !684

84:                                               ; preds = %78
  %85 = icmp eq i32 %79, 8
  br i1 %85, label %87, label %86, !prof !685

86:                                               ; preds = %84
  tail call fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef 8, i32 noundef %81, i32 noundef %7, ptr noundef %2) #25
  br label %87

87:                                               ; preds = %86, %84
  %88 = zext nneg i32 %81 to i64
  %89 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 8, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !294
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %224, label %92, !prof !686

92:                                               ; preds = %87
  %93 = zext i8 %90 to i64
  %94 = load i64, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
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
  br i1 %112, label %113, label %104, !prof !687, !llvm.loop !688

113:                                              ; preds = %104
  %114 = insertelement <2 x i64> poison, i64 %105, i64 0
  %115 = shufflevector <2 x i64> %114, <2 x i64> poison, <2 x i32> zeroinitializer
  %116 = or disjoint <2 x i64> %115, <i64 0, i64 1>
  %117 = icmp ugt <2 x i64> %116, %99
  %118 = select <2 x i1> %117, <2 x i64> %107, <2 x i64> %109
  %119 = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %118)
  store i64 %119, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  br label %224

120:                                              ; preds = %55
  %121 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %122 = getelementptr inbounds %struct.sched_deps_info_def, ptr %121, i64 0, i32 12
  %123 = load i8, ptr %122, align 8
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %143, label %126, !prof !691

126:                                              ; preds = %120
  %127 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !627
  %128 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !294
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.mem_attrs, ptr %129, i64 0, i32 5
  %133 = load i8, ptr %132, align 8, !tbaa !639
  br label %134

134:                                              ; preds = %126, %131
  %135 = phi i8 [ %133, %131 ], [ 0, %126 ]
  %136 = tail call i32 %127(i8 noundef zeroext %135) #24
  %137 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %57) #24
  %138 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !294
  %140 = tail call ptr @cselib_lookup_from_insn(ptr noundef %139, i32 noundef %136, i32 noundef 1, ptr noundef %2) #24
  %141 = load ptr, ptr %138, align 8, !tbaa !294
  %142 = tail call ptr @cselib_subst_to_values(ptr noundef %141) #24
  store ptr %142, ptr %138, align 8, !tbaa !294
  br label %143

143:                                              ; preds = %134, %120
  %144 = phi ptr [ %137, %134 ], [ %57, %120 ]
  %145 = tail call ptr @canon_rtx(ptr noundef nonnull %144) #24
  %146 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %147 = load i8, ptr %146, align 4
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %161, !prof !691

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %152 = load i32, ptr %151, align 8, !tbaa !490
  %153 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !492
  %155 = add nsw i32 %154, %152
  %156 = load ptr, ptr @compiler_params, align 8, !tbaa !288
  %157 = getelementptr inbounds %struct.param_info, ptr %156, i64 14, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !463
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %160, label %161, !prof !692

160:                                              ; preds = %150
  tail call fastcc void @flush_pending_lists(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0, i32 noundef 1) #25
  br label %221

161:                                              ; preds = %150, %143
  %162 = load ptr, ptr %0, align 8, !tbaa !294
  %163 = icmp eq ptr %162, null
  br i1 %163, label %187, label %164, !prof !693

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  br label %166

166:                                              ; preds = %164, %182
  %167 = phi ptr [ %185, %182 ], [ %162, %164 ]
  %168 = phi ptr [ %184, %182 ], [ %165, %164 ]
  %169 = load ptr, ptr %168, align 8, !tbaa !294
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !294
  %172 = tail call i32 @anti_dependence(ptr noundef %171, ptr noundef %145) #24
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %182, label %174, !prof !694

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !294
  %177 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %176) #25, !range !314
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %182, !prof !695

179:                                              ; preds = %174
  %180 = load ptr, ptr %170, align 8, !tbaa !294
  %181 = load ptr, ptr %175, align 8, !tbaa !294
  tail call fastcc void @note_mem_dep(ptr noundef %145, ptr noundef %180, ptr noundef %181, i32 noundef 67108864) #25
  br label %182

182:                                              ; preds = %179, %174, %166
  %183 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %185 = load ptr, ptr %183, align 8, !tbaa !294
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %166, !prof !696, !llvm.loop !697

187:                                              ; preds = %182, %161
  %188 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !294
  %190 = icmp eq ptr %189, null
  br i1 %190, label %214, label %191, !prof !698

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  br label %193

193:                                              ; preds = %191, %209
  %194 = phi ptr [ %212, %209 ], [ %189, %191 ]
  %195 = phi ptr [ %211, %209 ], [ %192, %191 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !294
  %197 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !294
  %199 = tail call i32 @output_dependence(ptr noundef %198, ptr noundef %145) #24
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %209, label %201, !prof !699

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !294
  %204 = tail call zeroext i8 @sched_insns_conditions_mutex_p(ptr noundef %2, ptr noundef %203) #25, !range !314
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209, !prof !700

206:                                              ; preds = %201
  %207 = load ptr, ptr %197, align 8, !tbaa !294
  %208 = load ptr, ptr %202, align 8, !tbaa !294
  tail call fastcc void @note_mem_dep(ptr noundef %145, ptr noundef %207, ptr noundef %208, i32 noundef 33554432) #25
  br label %209

209:                                              ; preds = %206, %201, %193
  %210 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 0, i32 1, i32 0, i32 0, i64 1
  %211 = getelementptr inbounds %struct.rtx_def, ptr %196, i64 0, i32 1, i32 0, i32 0, i64 1
  %212 = load ptr, ptr %210, align 8, !tbaa !294
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %193, !prof !701, !llvm.loop !702

214:                                              ; preds = %209, %187
  %215 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !466
  tail call fastcc void @add_dependence_list(ptr noundef %2, ptr noundef %216, i32 noundef 1, i32 noundef 12) #25
  %217 = load i8, ptr %146, align 4
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %221, !prof !703

220:                                              ; preds = %214
  tail call fastcc void @add_insn_mem_dependence(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef %2, ptr noundef nonnull %57) #25
  br label %221

221:                                              ; preds = %214, %220, %160
  %222 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %223, ptr noundef %2) #25
  br label %224

224:                                              ; preds = %55, %87, %113, %78, %221
  br i1 %12, label %231, label %225, !prof !676

225:                                              ; preds = %224
  %226 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %227 = getelementptr inbounds %struct.sched_deps_info_def, ptr %226, i64 0, i32 4
  %228 = load ptr, ptr %227, align 8, !tbaa !680
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230, !prof !617

230:                                              ; preds = %225
  tail call void %228() #24
  br label %231

231:                                              ; preds = %230, %225, %224
  %232 = load i32, ptr %1, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 23
  br i1 %234, label %235, label %238, !prof !704

235:                                              ; preds = %231
  store i8 %8, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  %236 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef %0, ptr noundef %237, ptr noundef %2) #25
  store i8 0, ptr @can_start_lhs_rhs_p, align 1, !tbaa !294
  br label %238

238:                                              ; preds = %10, %231, %235, %50, %52
  ret void
}

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 !prof !705 !PGOFuncName !706 {
  %3 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !707
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !708 !PGOFuncName !709 {
  %4 = load ptr, ptr %1, align 8, !tbaa !710
  store ptr %4, ptr %0, align 8, !tbaa !711
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !713
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !714

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !711
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !715
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !717

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !718
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !450
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !719
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !297
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !720 !PGOFuncName !721 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !719
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !722

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !723

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
  br i1 %18, label %12, label %50, !prof !724, !llvm.loop !725

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !297
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !297
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !718
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !711
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !718
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !726

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !450
  store i64 %35, ptr %3, align 8, !tbaa !719
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !717

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !297
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !297
  %40 = load i32, ptr %23, align 8, !tbaa !718
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !718
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !727, !llvm.loop !728

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !729
  store ptr %44, ptr %0, align 8, !tbaa !711
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !717

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !715
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !297
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !719
  store i32 %16, ptr %1, align 4, !tbaa !297
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 !prof !730 !PGOFuncName !731 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !719
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !719
  %6 = load i32, ptr %1, align 4, !tbaa !297
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !297
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_dependence(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !287 {
  switch i32 %2, label %5 [
    i32 0, label %7
    i32 11, label %4
    i32 12, label %6
  ], !prof !732

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #24
  br label %6

6:                                                ; preds = %3, %5
  br label %7

7:                                                ; preds = %3, %4, %6
  %8 = phi i32 [ 33554432, %4 ], [ 67108864, %6 ], [ 16777216, %3 ]
  %9 = load ptr, ptr @cur_insn, align 8, !tbaa !288
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !733

11:                                               ; preds = %7
  %12 = icmp eq ptr %9, %0
  br i1 %12, label %14, label %13, !prof !734

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3816, ptr noundef nonnull @.str.1) #24
  br label %14

14:                                               ; preds = %13, %11
  tail call fastcc void @note_dep(ptr noundef %1, i32 noundef %8) #25
  br label %16

15:                                               ; preds = %7
  store ptr %0, ptr @cur_insn, align 8, !tbaa !288
  tail call fastcc void @note_dep(ptr noundef %1, i32 noundef %8) #25
  store ptr null, ptr @cur_insn, align 8, !tbaa !288
  br label %16

16:                                               ; preds = %14, %15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_insn_reg_uses(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !735 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  %5 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
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
  %14 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !450
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
  %23 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %11) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !288
  %28 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %11) #24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26, %22, %19
  %31 = tail call fastcc ptr @create_insn_reg_use(i32 noundef %11, ptr noundef %1) #25
  %32 = getelementptr inbounds %struct.reg_use_data, ptr %31, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !736
  %33 = load ptr, ptr %9, align 8, !tbaa !517
  %34 = zext i32 %11 to i64
  %35 = getelementptr inbounds %struct.deps_reg, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !294
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %30, %38
  %39 = phi ptr [ %46, %38 ], [ %36, %30 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !294
  %42 = tail call fastcc ptr @create_insn_reg_use(i32 noundef %11, ptr noundef %41) #25
  %43 = load ptr, ptr %32, align 8, !tbaa !736
  store ptr %42, ptr %32, align 8, !tbaa !736
  %44 = getelementptr inbounds %struct.reg_use_data, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !736
  %45 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !294
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %38, !llvm.loop !738

48:                                               ; preds = %38, %30, %26, %13
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !314
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %10, !llvm.loop !739

51:                                               ; preds = %48, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_insn_reg_pressure_info(ptr noundef %0) unnamed_addr #0 !prof !276 !PGOFuncName !740 {
  %2 = load i8, ptr @sched_pressure_p, align 1, !tbaa !294
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
  br i1 %22, label %23, label %15, !llvm.loop !741

23:                                               ; preds = %15, %10
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !294
  tail call void @note_stores(ptr noundef %26, ptr noundef nonnull @mark_insn_reg_clobber, ptr noundef nonnull %0) #24
  %27 = load ptr, ptr %25, align 8, !tbaa !294
  tail call void @note_stores(ptr noundef %27, ptr noundef nonnull @mark_insn_reg_store, ptr noundef nonnull %0) #24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !294
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
  %38 = load ptr, ptr %37, align 8, !tbaa !294
  tail call fastcc void @mark_reg_death(ptr noundef %38) #25
  br label %39

39:                                               ; preds = %31, %36
  %40 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !294
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %31, !llvm.loop !742

43:                                               ; preds = %39, %23
  %44 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %45 = shl i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = tail call ptr @xmalloc(i64 noundef %46) #24
  %48 = load ptr, ptr @h_i_d, align 8
  %49 = load i32, ptr %24, align 8, !tbaa !294
  %50 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %48, i32 noundef %49) #25
  %51 = getelementptr inbounds %struct._haifa_insn_data, ptr %50, i64 0, i32 13
  store ptr %47, ptr %51, align 8, !tbaa !743
  store ptr %47, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !288
  %52 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 2
  %55 = tail call ptr @xcalloc(i64 noundef %54, i64 noundef 1) #24
  %56 = load ptr, ptr @h_i_d, align 8
  %57 = load i32, ptr %24, align 8, !tbaa !294
  %58 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %56, i32 noundef %57) #25
  %59 = getelementptr inbounds %struct._haifa_insn_data, ptr %58, i64 0, i32 14
  store ptr %55, ptr %59, align 8, !tbaa !744
  %60 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !297
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %43
  %63 = load ptr, ptr @setup_insn_reg_pressure_info.pressure_info, align 8, !tbaa !288
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
  br i1 %75, label %64, label %76, !llvm.loop !745

76:                                               ; preds = %64, %43, %5
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !746 !PGOFuncName !747 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !294
  ret i32 %3
}

; Function Attrs: optsize
declare void @sel_mark_hard_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sched_analyze_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !449 !PGOFuncName !748 {
  %6 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20, !prof !749

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
  %17 = load i32, ptr %16, align 8, !tbaa !577
  %18 = icmp sgt i32 %17, %1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11
  tail call fastcc void @extend_deps_reg_info(ptr noundef %0, i32 noundef %1) #25
  br label %20

20:                                               ; preds = %19, %15, %8, %5
  tail call void @maybe_extend_reg_info_p() #25
  %21 = icmp slt i32 %1, 53
  br i1 %21, label %22, label %47, !prof !452

22:                                               ; preds = %20
  %23 = sext i32 %1 to i64
  %24 = zext nneg i32 %2 to i64
  %25 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !294
  %27 = zext i8 %26 to i32
  %28 = icmp eq i8 %26, 0
  switch i32 %3, label %31 [
    i32 23, label %30
    i32 24, label %29
  ], !prof !750

29:                                               ; preds = %22
  br i1 %28, label %100, label %37, !prof !751

30:                                               ; preds = %22
  br i1 %28, label %100, label %32, !prof !752

31:                                               ; preds = %22
  br i1 %28, label %100, label %42, !prof !753

32:                                               ; preds = %30, %32
  %33 = phi i32 [ %34, %32 ], [ %27, %30 ]
  %34 = add nsw i32 %33, -1
  %35 = add nsw i32 %34, %1
  tail call fastcc void @note_reg_set(i32 noundef %35) #25
  %36 = icmp ugt i32 %33, 1
  br i1 %36, label %32, label %100, !prof !754, !llvm.loop !755

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %39, %37 ], [ %27, %29 ]
  %39 = add nsw i32 %38, -1
  %40 = add nsw i32 %39, %1
  tail call fastcc void @note_reg_use(i32 noundef %40) #25
  %41 = icmp ugt i32 %38, 1
  br i1 %41, label %37, label %100, !prof !756, !llvm.loop !757

42:                                               ; preds = %31, %42
  %43 = phi i32 [ %44, %42 ], [ %27, %31 ]
  %44 = add nsw i32 %43, -1
  %45 = add nsw i32 %44, %1
  tail call fastcc void @note_reg_clobber(i32 noundef %45) #25
  %46 = icmp ugt i32 %43, 1
  br i1 %46, label %42, label %100, !prof !753, !llvm.loop !758

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !577
  %50 = icmp sgt i32 %49, %1
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !294
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
  %75 = load ptr, ptr %74, align 8, !tbaa !294
  tail call fastcc void @sched_analyze_2(ptr noundef nonnull %0, ptr noundef %75, ptr noundef %4) #25
  br label %76

76:                                               ; preds = %68, %73, %65, %62
  %77 = load ptr, ptr @reg_info_p, align 8, !tbaa !288
  %78 = zext nneg i32 %1 to i64
  %79 = getelementptr inbounds %struct.reg_info_t, ptr %77, i64 %78, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !759
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
  %95 = load ptr, ptr %94, align 8, !tbaa !761
  %96 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %4, ptr noundef %95) #24
  store ptr %96, ptr %94, align 8, !tbaa !761
  br label %100

97:                                               ; preds = %89, %82
  %98 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 8
  %99 = load ptr, ptr %98, align 8, !tbaa !476
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
define internal fastcc void @note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !762 !PGOFuncName !763 {
  %5 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %6 = getelementptr inbounds %struct.sched_deps_info_def, ptr %5, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !764
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !765

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
define internal fastcc i32 @deps_may_trap_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !766 !PGOFuncName !767 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %14, !prof !654

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
define internal fastcc void @note_dep(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !287 !PGOFuncName !768 {
  %3 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %4 = getelementptr inbounds %struct.sched_deps_info_def, ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !769
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !770

7:                                                ; preds = %2
  tail call void %5(ptr noundef %0, i32 noundef %1) #24
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_insn_mem_dependence(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !771 !PGOFuncName !772 {
  %5 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !773

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1551, ptr noundef nonnull @.str.1) #24
  br label %10

10:                                               ; preds = %4, %9
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %21, label %12, !prof !774

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %27, label %17, !prof !641

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !490
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !490
  br label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !492
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !492
  br label %27

27:                                               ; preds = %12, %17, %21
  %28 = phi ptr [ %0, %12 ], [ %0, %17 ], [ %22, %21 ]
  %29 = phi ptr [ %13, %12 ], [ %13, %17 ], [ %23, %21 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !288
  %31 = tail call ptr @alloc_INSN_LIST(ptr noundef %2, ptr noundef %30) #24
  store ptr %31, ptr %28, align 8, !tbaa !288
  %32 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %33 = getelementptr inbounds %struct.sched_deps_info_def, ptr %32, i64 0, i32 12
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37, !prof !773

37:                                               ; preds = %27
  %38 = tail call ptr @shallow_copy_rtx_stat(ptr noundef %3) #24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !294
  %41 = tail call ptr @cselib_subst_to_values(ptr noundef %40) #24
  store ptr %41, ptr %39, align 8, !tbaa !294
  br label %42

42:                                               ; preds = %37, %27
  %43 = phi ptr [ %38, %37 ], [ %3, %27 ]
  %44 = tail call ptr @canon_rtx(ptr noundef %43) #24
  %45 = load ptr, ptr %29, align 8, !tbaa !288
  %46 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %44, ptr noundef %45) #24
  store ptr %46, ptr %29, align 8, !tbaa !288
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extend_deps_reg_info(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !775 {
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
  %18 = load i32, ptr %17, align 8, !tbaa !577
  %19 = icmp sgt i32 %18, %1
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !517
  %23 = sext i32 %3 to i64
  %24 = mul nsw i64 %23, 40
  %25 = tail call ptr @xrealloc(ptr noundef %22, i64 noundef %24) #24
  store ptr %25, ptr %21, align 8, !tbaa !517
  %26 = load i32, ptr %17, align 8, !tbaa !577
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.deps_reg, ptr %25, i64 %27
  %29 = sub nsw i32 %3, %26
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %30, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %14, %20
  %33 = phi ptr [ %17, %20 ], [ %15, %14 ]
  store i32 %3, ptr %33, align 8, !tbaa !577
  br label %34

34:                                               ; preds = %32, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_set(i32 noundef %0) unnamed_addr #0 !prof !443 !PGOFuncName !776 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !777
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !778

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_use(i32 noundef %0) unnamed_addr #0 !prof !445 !PGOFuncName !779 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !780
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !781

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #24
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_reg_clobber(i32 noundef %0) unnamed_addr #0 !prof !444 !PGOFuncName !782 {
  %2 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %3 = getelementptr inbounds %struct.sched_deps_info_def, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !783
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !784

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

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

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
define internal fastcc noundef ptr @create_insn_reg_use(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !785 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #24
  store i32 %0, ptr %3, align 8, !tbaa !786
  %4 = getelementptr inbounds %struct.reg_use_data, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !787
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !294
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !788
  %11 = getelementptr inbounds %struct.reg_use_data, ptr %3, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !789
  %12 = load i32, ptr %6, align 8, !tbaa !294
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 15
  store ptr %3, ptr %14, align 8, !tbaa !788
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_insn_reg_clobber(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !prof !276 !PGOFuncName !790 {
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
define internal void @mark_insn_reg_store(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 !prof !276 !PGOFuncName !791 {
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
define internal fastcc void @mark_reg_death(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !276 !PGOFuncName !792 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !294
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
  %23 = load i8, ptr %22, align 1, !tbaa !294
  %24 = zext i8 %23 to i32
  tail call fastcc void @mark_hard_regno_death(i32 noundef %15, i32 noundef %24) #25
  br label %26

25:                                               ; preds = %14
  tail call fastcc void @mark_pseudo_death(i32 noundef %15) #25
  br label %26

26:                                               ; preds = %17, %25, %9
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn_reg_birth(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !276 !PGOFuncName !793 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !294
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
  %26 = load i8, ptr %25, align 1, !tbaa !294
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
define internal fastcc void @mark_insn_hard_regno_birth(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !276 !PGOFuncName !794 {
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
  %18 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !450
  %19 = shl nuw i64 1, %14
  %20 = and i64 %18, %19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  %23 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !288
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
  br i1 %69, label %13, label %70, !llvm.loop !795

70:                                               ; preds = %67, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_insn_pseudo_birth(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !276 !PGOFuncName !796 {
  %5 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !288
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !297
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %4
  %11 = zext i32 %8 to i64
  %12 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !288
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  %14 = load ptr, ptr %13, align 8, !tbaa !288
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
define internal fastcc noundef zeroext i8 @insn_use_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !prof !276 !PGOFuncName !797 {
  %3 = load ptr, ptr @h_i_d, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !294
  %6 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %3, i32 noundef %5) #25
  %7 = getelementptr inbounds %struct._haifa_insn_data, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !288
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.reg_use_data, ptr %15, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !288
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !llvm.loop !798

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %16 = load i32, ptr %15, align 8, !tbaa !786
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %14, %10, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_insn_reg_set(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !799 {
  %3 = tail call ptr @xmalloc(i64 noundef 24) #24
  store i32 %0, ptr %3, align 8, !tbaa !800
  %4 = getelementptr inbounds %struct.reg_set_data, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !802
  %5 = load ptr, ptr @h_i_d, align 8
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !294
  %8 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %7) #25
  %9 = getelementptr inbounds %struct._haifa_insn_data, ptr %8, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !803
  %11 = getelementptr inbounds %struct.reg_set_data, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !804
  %12 = load i32, ptr %6, align 8, !tbaa !294
  %13 = tail call fastcc ptr @VEC_haifa_insn_data_def_base_index(ptr noundef %5, i32 noundef %12) #25
  %14 = getelementptr inbounds %struct._haifa_insn_data, ptr %13, i64 0, i32 16
  store ptr %3, ptr %14, align 8, !tbaa !803
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_hard_regno_death(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !805 {
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
  %13 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !450
  %14 = shl nuw i64 1, %9
  %15 = and i64 %13, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !288
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
  br i1 %32, label %8, label %33, !llvm.loop !806

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @mark_pseudo_death(i32 noundef %0) unnamed_addr #18 !prof !276 !PGOFuncName !807 {
  %2 = load ptr, ptr @sched_regno_cover_class, align 8, !tbaa !288
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds i32, ptr %2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !297
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = zext i32 %5 to i64
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !288
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !288
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

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_all_dependences(ptr noundef %0) unnamed_addr #0 !prof !276 !PGOFuncName !808 {
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
  br i1 %8, label %9, label %6, !llvm.loop !809

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @deps_start_bb(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !810 {
  %3 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7, !prof !811

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3362, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27, !prof !812

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
  br i1 %24, label %27, label %18, !llvm.loop !813

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 11
  store i32 2, ptr %26, align 8, !tbaa !480
  br label %27

27:                                               ; preds = %22, %18, %15, %25, %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_analyze(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 !prof !810 {
  %4 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %5 = getelementptr inbounds %struct.sched_deps_info_def, ptr %4, i64 0, i32 12
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !811

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
  br i1 %16, label %17, label %18, !prof !814

17:                                               ; preds = %11
  tail call void @sd_init_insn(ptr noundef nonnull %12) #25
  br label %18

18:                                               ; preds = %11, %17
  tail call void @deps_analyze_insn(ptr noundef %0, ptr noundef nonnull %12) #25
  %19 = icmp eq ptr %12, %2
  br i1 %19, label %20, label %28, !prof !815

20:                                               ; preds = %18
  %21 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %22 = getelementptr inbounds %struct.sched_deps_info_def, ptr %21, i64 0, i32 12
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !811

26:                                               ; preds = %20
  tail call void @cselib_finish() #24
  br label %27

27:                                               ; preds = %26, %20
  ret void

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !294
  br label %11
}

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_free_deps(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !816 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %38, label %7, !prof !817

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %34
  %10 = phi ptr [ %0, %7 ], [ %36, %34 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -7
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %15, label %34, !prof !818

15:                                               ; preds = %9
  %16 = load ptr, ptr @sched_luids, align 8
  %17 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !294
  %19 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %16, i32 noundef %18) #25
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34, !prof !538

21:                                               ; preds = %15
  tail call fastcc void @delete_dep_nodes_in_back_deps(ptr noundef nonnull %10, i8 noundef zeroext %2) #25
  %22 = load ptr, ptr @h_d_i_d, align 8
  %23 = load ptr, ptr @sched_luids, align 8
  %24 = load i32, ptr %17, align 8, !tbaa !294
  %25 = tail call fastcc i32 @VEC_int_base_index(ptr noundef %23, i32 noundef %24) #25
  %26 = tail call fastcc ptr @VEC_haifa_deps_insn_data_def_base_index(ptr noundef %22, i32 noundef %25) #25
  br i1 %8, label %29, label %27, !prof !354

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 6
  br label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct._haifa_deps_insn_data, ptr %26, i64 0, i32 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !288
  tail call fastcc void @clear_deps_list(ptr noundef %33) #25
  tail call void @sd_finish_insn(ptr noundef nonnull %10) #25
  br label %34

34:                                               ; preds = %9, %15, %31
  %35 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !294
  %37 = icmp eq ptr %36, %5
  br i1 %37, label %38, label %9, !prof !819, !llvm.loop !820

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_dep_nodes_in_back_deps(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !353 !PGOFuncName !821 {
  %3 = alloca %struct._sd_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %7 = icmp eq i8 %1, 0
  %8 = select i1 %7, i32 3, i32 8, !prof !354
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %3, ptr noundef %0, i32 noundef %8) #25
  %9 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11, !prof !542

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._sd_iterator, ptr %3, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %13
  %14 = load ptr, ptr %12, align 8, !tbaa !381
  %15 = load ptr, ptr %14, align 8, !tbaa !288
  %16 = load ptr, ptr %15, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  %17 = load ptr, ptr %4, align 8, !tbaa !288
  call fastcc void @get_back_and_forw_lists(ptr noundef %17, i8 noundef zeroext %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %18 = load ptr, ptr %5, align 8, !tbaa !288
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %15, ptr noundef %18) #25
  tail call fastcc void @delete_dep_node(ptr noundef %16) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  %19 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %13, !prof !822, !llvm.loop !823

21:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_deps_list(ptr nocapture noundef %0) unnamed_addr #11 !prof !353 !PGOFuncName !824 {
  %2 = load ptr, ptr %0, align 8, !tbaa !357
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !542

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @remove_from_deps_list(ptr noundef nonnull %5, ptr noundef nonnull %0) #25
  %6 = load ptr, ptr %0, align 8, !tbaa !357
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !prof !822

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !810 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !297
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !812

5:                                                ; preds = %2
  %6 = tail call i32 @max_reg_num() #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 53, %2 ]
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  store i32 %8, ptr %9, align 8, !tbaa !577
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %11, label %14, !prof !811

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
  store ptr null, ptr %20, align 8, !tbaa !539
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 17
  store i32 0, ptr %21, align 8, !tbaa !569
  %22 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %19, i8 0, i64 36, i1 false)
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps_reg_last(ptr noundef %0) local_unnamed_addr #0 !prof !276 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !577
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3503, ptr noundef nonnull @.str.1) #24
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !517
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3504, ptr noundef nonnull @.str.1) #24
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !577
  %16 = sext i32 %15 to i64
  %17 = tail call ptr @xcalloc(i64 noundef %16, i64 noundef 40) #24
  store ptr %17, ptr %9, align 8, !tbaa !517
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_deps(ptr noundef %0) local_unnamed_addr #0 !prof !810 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !577
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12, !prof !812

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !517
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3521, ptr noundef nonnull @.str.1) #24
  br label %55

12:                                               ; preds = %1
  store i32 0, ptr %4, align 8, !tbaa !577
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
  br i1 %19, label %48, label %20, !prof !825

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %22

22:                                               ; preds = %20, %45
  %23 = load ptr, ptr %21, align 8, !tbaa !517
  %24 = load i32, ptr %2, align 4, !tbaa !297
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !523
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !826

29:                                               ; preds = %22
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %26) #24
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !518
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !827

34:                                               ; preds = %30
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %31) #24
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !520
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !828

39:                                               ; preds = %35
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %36) #24
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.deps_reg, ptr %23, i64 %25, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !521
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !829

44:                                               ; preds = %40
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %41) #24
  br label %45

45:                                               ; preds = %44, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %46 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #25, !range !314
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %22, !prof !830, !llvm.loop !831

48:                                               ; preds = %45, %12
  tail call void @bitmap_clear(ptr noundef nonnull %17) #24
  %49 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 16
  tail call void @bitmap_clear(ptr noundef nonnull %49) #24
  %50 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  %51 = load ptr, ptr %50, align 8, !tbaa !517
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !812

53:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %51) #25
  br label %54

54:                                               ; preds = %53, %48
  store ptr null, ptr %50, align 8, !tbaa !517
  br label %55

55:                                               ; preds = %11, %7, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_from_deps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !276 {
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
  %12 = load i32, ptr %11, align 8, !tbaa !490
  %13 = sub nsw i32 %12, %6
  store i32 %13, ptr %11, align 8, !tbaa !490
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 3
  %17 = tail call fastcc i32 @remove_from_both_dependence_lists(ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull %16) #25
  %18 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !492
  %20 = sub nsw i32 %19, %17
  store i32 %20, ptr %18, align 4, !tbaa !492
  %21 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 7
  %22 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %21) #25
  %23 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !460
  %25 = sub nsw i32 %24, %22
  store i32 %25, ptr %23, align 8, !tbaa !460
  %26 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %26, ptr noundef nonnull %3) #25
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !314
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.deps, ptr %0, i64 0, i32 14
  br label %31

31:                                               ; preds = %29, %72
  %32 = load ptr, ptr %30, align 8, !tbaa !517
  %33 = load i32, ptr %3, align 4, !tbaa !297
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !523
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %35) #25
  br label %40

40:                                               ; preds = %38, %31
  %41 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !518
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %41) #25
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !520
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %47) #25
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.deps_reg, ptr %32, i64 %34, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !521
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @remove_from_dependence_list(ptr noundef nonnull %1, ptr noundef nonnull %53) #25
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %35, align 8, !tbaa !523
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load ptr, ptr %41, align 8, !tbaa !518
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load ptr, ptr %47, align 8, !tbaa !520
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load ptr, ptr %53, align 8, !tbaa !521
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %26, i32 noundef %33) #24
  br label %72

72:                                               ; preds = %70, %67, %64, %61, %58
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %73 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #25, !range !314
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %31, !llvm.loop !832

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
define internal fastcc i32 @remove_from_both_dependence_lists(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !276 !PGOFuncName !833 {
  %4 = load ptr, ptr %1, align 8, !tbaa !288
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
  %15 = load ptr, ptr %14, align 8, !tbaa !294
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %10) #24
  %19 = tail call ptr @remove_free_EXPR_LIST_node(ptr noundef %9) #24
  %20 = add nsw i32 %13, 1
  %21 = load ptr, ptr %10, align 8, !tbaa !288
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %11, !llvm.loop !834

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %9, align 8, !tbaa !288
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %24, align 8, !tbaa !288
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %6, !llvm.loop !834

29:                                               ; preds = %23, %17, %3
  %30 = phi i32 [ 0, %3 ], [ %20, %17 ], [ %13, %23 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @remove_from_dependence_list(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 !prof !276 !PGOFuncName !835 {
  %3 = load ptr, ptr %1, align 8, !tbaa !288
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
  %13 = load ptr, ptr %12, align 8, !tbaa !294
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = tail call ptr @remove_free_INSN_LIST_node(ptr noundef nonnull %8) #24
  %17 = add nsw i32 %11, 1
  %18 = load ptr, ptr %8, align 8, !tbaa !288
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %9, !llvm.loop !836

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !288
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !836

24:                                               ; preds = %20, %15, %2
  %25 = phi i32 [ 0, %2 ], [ %17, %15 ], [ %11, %20 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @remove_free_INSN_LIST_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @remove_free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_deps_init(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !837 {
  %2 = load i32, ptr @sched_max_luid, align 4, !tbaa !297
  %3 = load ptr, ptr @cfun, align 8, !tbaa !288
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !838
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !840
  %8 = sdiv i32 %2, %7
  %9 = add nsw i32 %8, 1
  tail call fastcc void @init_deps_data_vector() #25
  %10 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %11 = icmp eq i8 %10, 0
  %12 = icmp ne i8 %0, 0
  %13 = and i1 %12, %11
  %14 = icmp sgt i32 %8, 499
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !842

16:                                               ; preds = %1
  store i32 0, ptr @cache_size, align 4, !tbaa !297
  %17 = load i32, ptr @sched_max_luid, align 4, !tbaa !297
  tail call void @extend_dependency_caches(i32 noundef %17, i8 noundef zeroext 1) #25
  br label %20

18:                                               ; preds = %1
  %19 = icmp eq i8 %0, 0
  br i1 %19, label %26, label %20, !prof !843

20:                                               ; preds = %16, %18
  %21 = sext i32 %9 to i64
  %22 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.19, i64 noundef 16, i64 noundef %21) #24
  store ptr %22, ptr @dl_pool, align 8, !tbaa !288
  %23 = mul nsw i32 %9, 5
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.20, i64 noundef 72, i64 noundef %24) #24
  store ptr %25, ptr @dn_pool, align 8, !tbaa !288
  br label %26

26:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_deps_data_vector() unnamed_addr #0 !prof !837 !PGOFuncName !844 {
  %1 = load i32, ptr @sched_max_luid, align 4, !tbaa !297
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @h_d_i_d, align 8, !tbaa !288
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !845

5:                                                ; preds = %0
  %6 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef null) #25
  %7 = sub i32 %2, %6
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %13, label %20, !prof !845

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef nonnull %3) #25
  %11 = sub i32 %2, %10
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20, !prof !845

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %7, %5 ], [ %11, %9 ]
  %15 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef %3, i32 noundef %14) #25, !range !303
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20, !prof !845

17:                                               ; preds = %13
  %18 = mul nsw i32 %1, 3
  %19 = sdiv i32 %18, 2
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared(i32 noundef %19) #25
  br label %20

20:                                               ; preds = %9, %17, %13, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extend_dependency_caches(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !276 {
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
  store ptr %12, ptr @true_dependency_cache, align 8, !tbaa !288
  %13 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %14 = tail call ptr @xrealloc(ptr noundef %13, i64 noundef %11) #24
  store ptr %14, ptr @output_dependency_cache, align 8, !tbaa !288
  %15 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
  %16 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %11) #24
  store ptr %16, ptr @anti_dependency_cache, align 8, !tbaa !288
  %17 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %18 = getelementptr inbounds %struct.haifa_sched_info, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !289
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !288
  %24 = tail call ptr @xrealloc(ptr noundef %23, i64 noundef %11) #24
  store ptr %24, ptr @spec_dependency_cache, align 8, !tbaa !288
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32, ptr @cache_size, align 4, !tbaa !297
  %27 = icmp slt i32 %26, %9
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %30 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  %31 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
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
  %39 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %40 = getelementptr inbounds %struct.haifa_sched_info, ptr %39, i64 0, i32 17
  %41 = load i32, ptr %40, align 8, !tbaa !289
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
  br i1 %48, label %49, label %34, !llvm.loop !846

49:                                               ; preds = %46, %25
  store i32 %9, ptr @cache_size, align 4, !tbaa !297
  br label %50

50:                                               ; preds = %2, %49
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !847 !PGOFuncName !848 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !849

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !850
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !852 !PGOFuncName !853 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !854

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !855
  %7 = load i32, ptr %0, align 8, !tbaa !850
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
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !837 !PGOFuncName !856 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !288
  %3 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_length(ptr noundef %2) #25
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow(i32 noundef %0) #25
  %4 = load ptr, ptr @h_d_i_d, align 8, !tbaa !288
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
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !837 !PGOFuncName !857 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !288
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !845

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !850
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_reserve_exact(i32 noundef %8) #25
  %9 = load ptr, ptr @h_d_i_d, align 8, !tbaa !288, !nonnull !858, !noundef !858
  store i32 %0, ptr %9, align 8, !tbaa !850
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_haifa_deps_insn_data_def_base_address(ptr noundef readnone %0) unnamed_addr #6 !prof !837 !PGOFuncName !859 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_haifa_deps_insn_data_def_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !860
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !837 !PGOFuncName !861 {
  %2 = load ptr, ptr @h_d_i_d, align 8, !tbaa !288
  %3 = tail call fastcc i32 @VEC_haifa_deps_insn_data_def_base_space(ptr noundef %2, i32 noundef %0) #25, !range !303
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !845

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 56) #24
  store ptr %6, ptr @h_d_i_d, align 8, !tbaa !288
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sched_deps_finish() local_unnamed_addr #0 !prof !837 {
  %1 = tail call zeroext i8 @deps_pools_are_empty_p() #25, !range !314
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !860

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3691, ptr noundef nonnull @.str.1) #24
  br label %4

4:                                                ; preds = %0, %3
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dn_pool) #24
  tail call void @free_alloc_pool_if_empty(ptr noundef nonnull @dl_pool) #24
  %5 = load ptr, ptr @dn_pool, align 8, !tbaa !288
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr @dl_pool, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %11, label %10, !prof !862

10:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3694, ptr noundef nonnull @.str.1) #24
  br label %11

11:                                               ; preds = %4, %10
  tail call fastcc void @VEC_haifa_deps_insn_data_def_heap_free() #25
  store i32 0, ptr @cache_size, align 4, !tbaa !297
  %12 = load ptr, ptr @true_dependency_cache, align 8, !tbaa !288
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14, !prof !845

14:                                               ; preds = %11
  %15 = load ptr, ptr @anti_dependency_cache, align 8, !tbaa !288
  %16 = load ptr, ptr @output_dependency_cache, align 8, !tbaa !288
  tail call void @free(ptr noundef nonnull %12) #25
  store ptr null, ptr @true_dependency_cache, align 8, !tbaa !288
  tail call void @free(ptr noundef %16) #25
  store ptr null, ptr @output_dependency_cache, align 8, !tbaa !288
  tail call void @free(ptr noundef %15) #25
  store ptr null, ptr @anti_dependency_cache, align 8, !tbaa !288
  %17 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %18 = getelementptr inbounds %struct.sched_deps_info_def, ptr %17, i64 0, i32 12
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr @spec_dependency_cache, align 8, !tbaa !288
  tail call void @free(ptr noundef %23) #25
  store ptr null, ptr @spec_dependency_cache, align 8, !tbaa !288
  br label %24

24:                                               ; preds = %14, %22, %11
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool_if_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_haifa_deps_insn_data_def_heap_free() unnamed_addr #20 !prof !837 !PGOFuncName !863 {
  %1 = load ptr, ptr @h_d_i_d, align 8, !tbaa !288
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !860

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @h_d_i_d, align 8, !tbaa !288
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_deps_global() local_unnamed_addr #0 !prof !810 {
  store i64 0, ptr @implicit_reg_pending_clobbers, align 8, !tbaa !450
  store i64 0, ptr @implicit_reg_pending_uses, align 8, !tbaa !450
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %1, ptr @reg_pending_sets, align 8, !tbaa !288
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %2, ptr @reg_pending_clobbers, align 8, !tbaa !288
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #24
  store ptr %3, ptr @reg_pending_uses, align 8, !tbaa !288
  store i32 0, ptr @reg_pending_barrier, align 4, !tbaa !297
  %4 = tail call fastcc zeroext i8 @sel_sched_p() #25, !range !314
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !811

6:                                                ; preds = %0
  %7 = load i32, ptr @sched_emulate_haifa_p, align 4, !tbaa !297
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6, %0
  %10 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %11 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 1
  store ptr @haifa_start_insn, ptr %11, align 8, !tbaa !454
  %12 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 2
  store ptr @haifa_finish_insn, ptr %12, align 8, !tbaa !484
  %13 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 7
  store ptr @haifa_note_reg_set, ptr %13, align 8, !tbaa !777
  %14 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 8
  store ptr @haifa_note_reg_clobber, ptr %14, align 8, !tbaa !783
  %15 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 9
  store ptr @haifa_note_reg_use, ptr %15, align 8, !tbaa !780
  %16 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 10
  store ptr @haifa_note_mem_dep, ptr %16, align 8, !tbaa !764
  %17 = getelementptr inbounds %struct.sched_deps_info_def, ptr %10, i64 0, i32 11
  store ptr @haifa_note_dep, ptr %17, align 8, !tbaa !769
  br label %18

18:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_start_insn(ptr noundef %0) #0 !prof !453 !PGOFuncName !864 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @cur_insn, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %6, label %7, !prof !865

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1621, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  store ptr %0, ptr @cur_insn, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @haifa_finish_insn() #21 !prof !453 !PGOFuncName !866 {
  store ptr null, ptr @cur_insn, align 8, !tbaa !288
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @haifa_note_mem_dep(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !762 !PGOFuncName !867 {
  %5 = alloca %struct._dep, align 8
  %6 = and i32 %3, 16777215
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !868

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
  %15 = load ptr, ptr @cur_insn, align 8, !tbaa !288
  %16 = tail call i32 @ds_to_dt(i32 noundef %3) #25, !range !869
  %17 = load ptr, ptr @current_sched_info, align 8, !tbaa !288
  %18 = getelementptr inbounds %struct.haifa_sched_info, ptr %17, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !289
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !868

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
define internal void @haifa_note_dep(ptr noundef %0, i32 noundef %1) #0 !prof !287 !PGOFuncName !870 {
  %3 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %4 = load ptr, ptr @cur_insn, align 8, !tbaa !288
  %5 = tail call i32 @ds_to_dt(i32 noundef %1) #25, !range !869
  call void @init_dep(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %4, i32 noundef %5) #25
  call fastcc void @maybe_add_or_update_dep_1(ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_add_or_update_dep_1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !277 !PGOFuncName !871 {
  %4 = load ptr, ptr %0, align 8, !tbaa !278
  %5 = getelementptr inbounds %struct._dep, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !284
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %16, !prof !872

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 8
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -7
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %17, label %16, !prof !873

16:                                               ; preds = %11, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 849, ptr noundef nonnull @.str.1) #24
  br label %17

17:                                               ; preds = %11, %16
  %18 = icmp eq ptr %6, %4
  br i1 %18, label %19, label %33, !prof !874

19:                                               ; preds = %17
  %20 = load ptr, ptr @sched_deps_info, align 8, !tbaa !288
  %21 = getelementptr inbounds %struct.sched_deps_info_def, ptr %20, i64 0, i32 12
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25, !prof !875

25:                                               ; preds = %19
  %26 = load ptr, ptr @h_d_i_d, align 8
  %27 = load ptr, ptr @sched_luids, align 8
  %28 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !294
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_deps_global() local_unnamed_addr #0 !prof !810 {
  %1 = load ptr, ptr @reg_pending_sets, align 8, !tbaa !288
  tail call void @bitmap_obstack_free(ptr noundef %1) #24
  store ptr null, ptr @reg_pending_sets, align 8, !tbaa !288
  %2 = load ptr, ptr @reg_pending_clobbers, align 8, !tbaa !288
  tail call void @bitmap_obstack_free(ptr noundef %2) #24
  store ptr null, ptr @reg_pending_clobbers, align 8, !tbaa !288
  %3 = load ptr, ptr @reg_pending_uses, align 8, !tbaa !288
  tail call void @bitmap_obstack_free(ptr noundef %3) #24
  store ptr null, ptr @reg_pending_uses, align 8, !tbaa !288
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_dep_weak(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !276 {
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
define internal fastcc i32 @ds_merge_1(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !276 !PGOFuncName !876 {
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
define dso_local i32 @ds_full_merge(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !276 {
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
  %23 = tail call i32 @estimate_dep_weak(ptr noundef nonnull %2, ptr noundef %3) #25, !range !425
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
define dso_local i32 @ds_max_merge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !276 {
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
define dso_local i32 @ds_weak(i32 noundef %0) local_unnamed_addr #0 !prof !276 {
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
  br i1 %30, label %31, label %25, !llvm.loop !877

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
define dso_local i32 @ds_get_speculation_types(i32 noundef %0) local_unnamed_addr #6 !prof !276 {
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
define dso_local noundef i32 @ds_get_max_dep_weak(i32 noundef %0) local_unnamed_addr #0 !prof !276 {
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
define dso_local void @debug_ds(i32 noundef %0) local_unnamed_addr #0 !prof !276 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !288
  tail call fastcc void @dump_ds(ptr noundef %2, i32 noundef %0) #25
  %3 = load ptr, ptr @stderr, align 8, !tbaa !288
  %4 = tail call i32 @fputc(i32 10, ptr %3)
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
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!275}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!36 = !{ptr @init_dep, ptr @dk_to_ds, i64 1}
!37 = !{ptr @init_dep, ptr @init_dep_1, i64 5336930}
!38 = !{ptr @sched_insns_conditions_mutex_p, ptr @sched_get_condition_with_rev, i64 4983282}
!39 = !{ptr @sched_insns_conditions_mutex_p, ptr @conditions_mutex_p, i64 1}
!40 = !{ptr @sched_insns_conditions_mutex_p, ptr @modified_in_p, i64 1}
!41 = !{ptr @sched_get_condition_with_rev, ptr @any_condjump_p, i64 6245596}
!42 = !{ptr @sched_get_condition_with_rev, ptr @onlyjump_p, i64 882383}
!43 = !{ptr @sched_get_condition_with_rev, ptr @pc_set, i64 882382}
!44 = !{ptr @sched_has_condition_p, ptr @sched_get_condition_with_rev, i64 1262314}
!45 = !{ptr @sd_next_list, ptr @VEC_int_base_index, i64 41007906}
!46 = !{ptr @sd_next_list, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 41007906}
!47 = !{ptr @sd_lists_size, ptr @sd_next_list, i64 19475150}
!48 = !{ptr @sd_lists_empty_p, ptr @sd_next_list, i64 29643622}
!49 = !{ptr @sd_lists_empty_p, ptr @deps_list_empty_p, i64 29643622}
!50 = !{ptr @sd_init_insn, ptr @create_deps_list, i64 6013115}
!51 = !{ptr @sd_init_insn, ptr @VEC_int_base_index, i64 6013115}
!52 = !{ptr @sd_init_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 6013115}
!53 = !{ptr @create_deps_list, ptr @pool_alloc, i64 6013115}
!54 = !{ptr @sd_finish_insn, ptr @fancy_abort, i64 1}
!55 = !{ptr @sd_finish_insn, ptr @VEC_int_base_index, i64 12026230}
!56 = !{ptr @sd_finish_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 12026230}
!57 = !{ptr @sd_finish_insn, ptr @free_deps_list, i64 6013115}
!58 = !{ptr @free_deps_list, ptr @deps_list_empty_p, i64 6013115}
!59 = !{ptr @free_deps_list, ptr @fancy_abort, i64 1}
!60 = !{ptr @free_deps_list, ptr @pool_free, i64 6013115}
!61 = !{ptr @sd_find_dep_between, ptr @VEC_int_base_index, i64 2}
!62 = !{ptr @sd_find_dep_between, ptr @fancy_abort, i64 1}
!63 = !{ptr @sd_find_dep_between, ptr @bitmap_bit_p, i64 1}
!64 = !{ptr @sd_find_dep_between, ptr @sd_find_dep_between_no_cache, i64 958273}
!65 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_lists_size, i64 12123746}
!66 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_iterator_start, i64 6061873}
!67 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_iterator_cond, i64 10067889}
!68 = !{ptr @sd_find_dep_between_no_cache, ptr @sd_iterator_next, i64 4006016}
!69 = !{ptr @sd_iterator_cond, ptr @sd_next_list, i64 16497581}
!70 = !{ptr @sd_add_dep, ptr @create_dep_node, i64 2351999}
!71 = !{ptr @sd_add_dep, ptr @fancy_abort, i64 3}
!72 = !{ptr @sd_add_dep, ptr @sched_insn_is_legitimate_for_speculation_p, i64 1}
!73 = !{ptr @sd_add_dep, ptr @copy_dep, i64 2351999}
!74 = !{ptr @sd_add_dep, ptr @get_back_and_forw_lists, i64 2351999}
!75 = !{ptr @sd_add_dep, ptr @add_to_deps_list, i64 4703998}
!76 = !{ptr @sd_add_dep, ptr @set_dependency_caches, i64 1}
!77 = !{ptr @create_dep_node, ptr @pool_alloc, i64 2351999}
!78 = !{ptr @get_back_and_forw_lists, ptr @VEC_int_base_index, i64 9407996}
!79 = !{ptr @get_back_and_forw_lists, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 9407996}
!80 = !{ptr @add_to_deps_list, ptr @attach_dep_link, i64 9407996}
!81 = !{ptr @add_to_deps_list, ptr @depl_on_debug_p, i64 9407996}
!82 = !{ptr @attach_dep_link, ptr @fancy_abort, i64 3}
!83 = !{ptr @add_or_update_dep_1, ptr @fancy_abort, i64 4}
!84 = !{ptr @add_or_update_dep_1, ptr @ask_dependency_caches, i64 1}
!85 = !{ptr @add_or_update_dep_1, ptr @sd_find_dep_between_no_cache, i64 5103599}
!86 = !{ptr @add_or_update_dep_1, ptr @update_dep, i64 2751601}
!87 = !{ptr @add_or_update_dep_1, ptr @estimate_dep_weak, i64 1}
!88 = !{ptr @add_or_update_dep_1, ptr @set_dep_weak, i64 1}
!89 = !{ptr @add_or_update_dep_1, ptr @sd_add_dep, i64 2351999}
!90 = !{ptr @move_dep_link, ptr @remove_from_deps_list, i64 4703998}
!91 = !{ptr @move_dep_link, ptr @add_to_deps_list, i64 4703998}
!92 = !{ptr @remove_from_deps_list, ptr @detach_dep_link, i64 9407996}
!93 = !{ptr @remove_from_deps_list, ptr @depl_on_debug_p, i64 9407996}
!94 = !{ptr @sd_resolve_dep, ptr @VEC_int_base_index, i64 4703998}
!95 = !{ptr @sd_resolve_dep, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 4703998}
!96 = !{ptr @sd_resolve_dep, ptr @move_dep_link, i64 4703998}
!97 = !{ptr @delete_dep_node, ptr @dep_link_is_detached_p, i64 4703997}
!98 = !{ptr @delete_dep_node, ptr @fancy_abort, i64 2}
!99 = !{ptr @delete_dep_node, ptr @pool_free, i64 2351999}
!100 = !{ptr @haifa_note_reg_set, ptr @bitmap_set_bit, i64 691117}
!101 = !{ptr @haifa_note_reg_clobber, ptr @bitmap_set_bit, i64 97752}
!102 = !{ptr @haifa_note_reg_use, ptr @bitmap_set_bit, i64 1294542}
!103 = !{ptr @ds_to_dt, ptr @fancy_abort, i64 1}
!104 = !{ptr @maybe_extend_reg_info_p, ptr @fancy_abort, i64 1}
!105 = !{ptr @maybe_extend_reg_info_p, ptr @xrecalloc, i64 1}
!106 = !{ptr @deps_analyze_insn, ptr @sel_sched_p, i64 213836}
!107 = !{ptr @deps_analyze_insn, ptr @sel_insn_is_speculation_check, i64 1}
!108 = !{ptr @deps_analyze_insn, ptr @flush_pending_lists, i64 88304}
!109 = !{ptr @deps_analyze_insn, ptr @alloc_INSN_LIST, i64 385132}
!110 = !{ptr @deps_analyze_insn, ptr @sched_analyze_insn, i64 1202623}
!111 = !{ptr @deps_analyze_insn, ptr @VEC_int_base_index, i64 88303}
!112 = !{ptr @deps_analyze_insn, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 88303}
!113 = !{ptr @deps_analyze_insn, ptr @find_reg_note, i64 88303}
!114 = !{ptr @deps_analyze_insn, ptr @bitmap_set_bit, i64 4061790}
!115 = !{ptr @deps_analyze_insn, ptr @add_dependence_list_and_free, i64 88303}
!116 = !{ptr @deps_analyze_insn, ptr @fancy_abort, i64 3}
!117 = !{ptr @deps_analyze_insn, ptr @free_INSN_LIST_list, i64 171298}
!118 = !{ptr @deps_analyze_insn, ptr @call_may_noreturn_p, i64 88302}
!119 = !{ptr @deps_analyze_insn, ptr @cselib_process_insn, i64 1}
!120 = !{ptr @flush_pending_lists, ptr @add_dependence_list_and_free, i64 438827}
!121 = !{ptr @flush_pending_lists, ptr @free_EXPR_LIST_list, i64 290760}
!122 = !{ptr @flush_pending_lists, ptr @alloc_INSN_LIST, i64 148064}
!123 = !{ptr @sched_analyze_insn, ptr @extract_insn, i64 1}
!124 = !{ptr @sched_analyze_insn, ptr @preprocess_constraints, i64 1}
!125 = !{ptr @sched_analyze_insn, ptr @ira_implicitly_set_insn_hard_regs, i64 1}
!126 = !{ptr @sched_analyze_insn, ptr @may_trap_p, i64 1202623}
!127 = !{ptr @sched_analyze_insn, ptr @add_dependence_list, i64 17669975}
!128 = !{ptr @sched_analyze_insn, ptr @sched_analyze_2, i64 346339}
!129 = !{ptr @sched_analyze_insn, ptr @sched_analyze_1, i64 1222560}
!130 = !{ptr @sched_analyze_insn, ptr @find_reg_note, i64 88304}
!131 = !{ptr @sched_analyze_insn, ptr @next_nonnote_insn, i64 213837}
!132 = !{ptr @sched_analyze_insn, ptr @bitmap_initialize_stat, i64 309220}
!133 = !{ptr @sched_analyze_insn, ptr @bmp_iter_set_init, i64 3822169}
!134 = !{ptr @sched_analyze_insn, ptr @bmp_iter_set, i64 10875422}
!135 = !{ptr @sched_analyze_insn, ptr @alloc_INSN_LIST, i64 9623077}
!136 = !{ptr @sched_analyze_insn, ptr @bmp_iter_next, i64 7053253}
!137 = !{ptr @sched_analyze_insn, ptr @bitmap_ior_into, i64 3762476}
!138 = !{ptr @sched_analyze_insn, ptr @bitmap_clear, i64 3976781}
!139 = !{ptr @sched_analyze_insn, ptr @sched_insns_conditions_mutex_p, i64 46449}
!140 = !{ptr @sched_analyze_insn, ptr @add_dependence, i64 46462}
!141 = !{ptr @sched_analyze_insn, ptr @can_throw_internal, i64 302139}
!142 = !{ptr @sched_analyze_insn, ptr @control_flow_insn_p, i64 900484}
!143 = !{ptr @sched_analyze_insn, ptr @setup_insn_reg_uses, i64 1}
!144 = !{ptr @sched_analyze_insn, ptr @setup_insn_reg_pressure_info, i64 1}
!145 = !{ptr @sched_analyze_insn, ptr @sel_sched_p, i64 59700}
!146 = !{ptr @sched_analyze_insn, ptr @sched_has_condition_p, i64 1262314}
!147 = !{ptr @sched_analyze_insn, ptr @add_dependence_list_and_free, i64 6564016}
!148 = !{ptr @sched_analyze_insn, ptr @bitmap_clear_bit, i64 690667}
!149 = !{ptr @sched_analyze_insn, ptr @bitmap_set_bit, i64 3517353}
!150 = !{ptr @sched_analyze_insn, ptr @sel_insn_is_speculation_check, i64 1}
!151 = !{ptr @sched_analyze_insn, ptr @flush_pending_lists, i64 59689}
!152 = !{ptr @sched_analyze_insn, ptr @sched_insn_is_legitimate_for_speculation_p, i64 1}
!153 = !{ptr @sched_analyze_insn, ptr @change_spec_dep_to_hard, i64 3}
!154 = !{ptr @sched_analyze_insn, ptr @sd_iterator_cond, i64 3}
!155 = !{ptr @add_dependence_list_and_free, ptr @add_dependence_list, i64 1}
!156 = !{ptr @add_dependence_list_and_free, ptr @sched_insns_conditions_mutex_p, i64 2453349}
!157 = !{ptr @add_dependence_list_and_free, ptr @add_dependence, i64 3023638}
!158 = !{ptr @add_dependence_list_and_free, ptr @free_INSN_LIST_node, i64 3023639}
!159 = !{ptr @add_dependence_list, ptr @sched_insns_conditions_mutex_p, i64 966859}
!160 = !{ptr @add_dependence_list, ptr @add_dependence, i64 1287924}
!161 = !{ptr @sched_analyze_2, ptr @fancy_abort, i64 1}
!162 = !{ptr @sched_analyze_2, ptr @rhs_regno, i64 1294212}
!163 = !{ptr @sched_analyze_2, ptr @sched_analyze_reg, i64 1295209}
!164 = !{ptr @sched_analyze_2, ptr @shallow_copy_rtx_stat, i64 1}
!165 = !{ptr @sched_analyze_2, ptr @cselib_lookup_from_insn, i64 1}
!166 = !{ptr @sched_analyze_2, ptr @cselib_subst_to_values, i64 1}
!167 = !{ptr @sched_analyze_2, ptr @canon_rtx, i64 438124}
!168 = !{ptr @sched_analyze_2, ptr @read_dependence, i64 401169}
!169 = !{ptr @sched_analyze_2, ptr @sched_insns_conditions_mutex_p, i64 123463}
!170 = !{ptr @sched_analyze_2, ptr @note_mem_dep, i64 123461}
!171 = !{ptr @sched_analyze_2, ptr @true_dependence, i64 486473}
!172 = !{ptr @sched_analyze_2, ptr @add_dependence, i64 97093}
!173 = !{ptr @sched_analyze_2, ptr @deps_may_trap_p, i64 854}
!174 = !{ptr @sched_analyze_2, ptr @sel_sched_p, i64 1}
!175 = !{ptr @sched_analyze_2, ptr @add_insn_mem_dependence, i64 438124}
!176 = !{ptr @sched_analyze_2, ptr @sched_analyze_2, i64 2930269}
!177 = !{ptr @sched_analyze_2, ptr @flush_pending_lists, i64 2}
!178 = !{ptr @sched_analyze_2, ptr @sched_analyze_1, i64 15822}
!179 = !{ptr @sched_analyze_1, ptr @fancy_abort, i64 1}
!180 = !{ptr @sched_analyze_1, ptr @gen_rtx_fmt_e_stat, i64 12}
!181 = !{ptr @sched_analyze_1, ptr @sched_analyze_1, i64 12}
!182 = !{ptr @sched_analyze_1, ptr @df_read_modify_subreg_p, i64 1}
!183 = !{ptr @sched_analyze_1, ptr @sched_analyze_2, i64 1510213}
!184 = !{ptr @sched_analyze_1, ptr @rhs_regno, i64 787837}
!185 = !{ptr @sched_analyze_1, ptr @sched_analyze_reg, i64 788063}
!186 = !{ptr @sched_analyze_1, ptr @shallow_copy_rtx_stat, i64 1}
!187 = !{ptr @sched_analyze_1, ptr @cselib_lookup_from_insn, i64 1}
!188 = !{ptr @sched_analyze_1, ptr @cselib_subst_to_values, i64 1}
!189 = !{ptr @sched_analyze_1, ptr @canon_rtx, i64 309899}
!190 = !{ptr @sched_analyze_1, ptr @flush_pending_lists, i64 73}
!191 = !{ptr @sched_analyze_1, ptr @anti_dependence, i64 283383}
!192 = !{ptr @sched_analyze_1, ptr @sched_insns_conditions_mutex_p, i64 191434}
!193 = !{ptr @sched_analyze_1, ptr @note_mem_dep, i64 191432}
!194 = !{ptr @sched_analyze_1, ptr @output_dependence, i64 405059}
!195 = !{ptr @sched_analyze_1, ptr @add_dependence_list, i64 309826}
!196 = !{ptr @sched_analyze_1, ptr @add_insn_mem_dependence, i64 309825}
!197 = !{ptr @add_dependence, ptr @fancy_abort, i64 2}
!198 = !{ptr @add_dependence, ptr @note_dep, i64 5336930}
!199 = !{ptr @sched_analyze_reg, ptr @sel_sched_p, i64 1}
!200 = !{ptr @sched_analyze_reg, ptr @max_reg_num, i64 1}
!201 = !{ptr @sched_analyze_reg, ptr @maybe_extend_reg_info_p, i64 2083275}
!202 = !{ptr @sched_analyze_reg, ptr @note_reg_set, i64 691117}
!203 = !{ptr @sched_analyze_reg, ptr @note_reg_use, i64 1294540}
!204 = !{ptr @sched_analyze_reg, ptr @note_reg_clobber, i64 97753}
!205 = !{ptr @deps_may_trap_p, ptr @rhs_regno, i64 1}
!206 = !{ptr @deps_may_trap_p, ptr @rtx_addr_can_trap_p, i64 853}
!207 = !{ptr @add_insn_mem_dependence, ptr @fancy_abort, i64 1}
!208 = !{ptr @add_insn_mem_dependence, ptr @alloc_INSN_LIST, i64 747954}
!209 = !{ptr @add_insn_mem_dependence, ptr @shallow_copy_rtx_stat, i64 1}
!210 = !{ptr @add_insn_mem_dependence, ptr @cselib_subst_to_values, i64 1}
!211 = !{ptr @add_insn_mem_dependence, ptr @canon_rtx, i64 747954}
!212 = !{ptr @add_insn_mem_dependence, ptr @alloc_EXPR_LIST, i64 747954}
!213 = !{ptr @deps_start_bb, ptr @fancy_abort, i64 1}
!214 = !{ptr @deps_start_bb, ptr @prev_nonnote_insn, i64 4}
!215 = !{ptr @sched_analyze, ptr @cselib_init, i64 1}
!216 = !{ptr @sched_analyze, ptr @deps_start_bb, i64 248414}
!217 = !{ptr @sched_analyze, ptr @sd_init_insn, i64 1202620}
!218 = !{ptr @sched_analyze, ptr @deps_analyze_insn, i64 1261795}
!219 = !{ptr @sched_analyze, ptr @cselib_finish, i64 1}
!220 = !{ptr @sched_free_deps, ptr @VEC_int_base_index, i64 2405235}
!221 = !{ptr @sched_free_deps, ptr @delete_dep_nodes_in_back_deps, i64 1202617}
!222 = !{ptr @sched_free_deps, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 1202617}
!223 = !{ptr @sched_free_deps, ptr @clear_deps_list, i64 1202617}
!224 = !{ptr @sched_free_deps, ptr @sd_finish_insn, i64 1202617}
!225 = !{ptr @delete_dep_nodes_in_back_deps, ptr @sd_iterator_start, i64 1202623}
!226 = !{ptr @delete_dep_nodes_in_back_deps, ptr @sd_iterator_cond, i64 3554621}
!227 = !{ptr @delete_dep_nodes_in_back_deps, ptr @get_back_and_forw_lists, i64 2351998}
!228 = !{ptr @delete_dep_nodes_in_back_deps, ptr @remove_from_deps_list, i64 2351998}
!229 = !{ptr @delete_dep_nodes_in_back_deps, ptr @delete_dep_node, i64 2351998}
!230 = !{ptr @clear_deps_list, ptr @remove_from_deps_list, i64 2351998}
!231 = !{ptr @init_deps, ptr @max_reg_num, i64 1}
!232 = !{ptr @init_deps, ptr @xcalloc, i64 248413}
!233 = !{ptr @init_deps, ptr @bitmap_initialize_stat, i64 496828}
!234 = !{ptr @free_deps, ptr @fancy_abort, i64 1}
!235 = !{ptr @free_deps, ptr @free_INSN_LIST_list, i64 7036794}
!236 = !{ptr @free_deps, ptr @free_EXPR_LIST_list, i64 496826}
!237 = !{ptr @free_deps, ptr @bmp_iter_set_init, i64 248413}
!238 = !{ptr @free_deps, ptr @bmp_iter_set, i64 6184726}
!239 = !{ptr @free_deps, ptr @bmp_iter_next, i64 5936313}
!240 = !{ptr @free_deps, ptr @bitmap_clear, i64 496826}
!241 = !{ptr @free_deps, ptr @free, i64 248412}
!242 = !{ptr @sched_deps_init, ptr @init_deps_data_vector, i64 6652}
!243 = !{ptr @sched_deps_init, ptr @sel_sched_p, i64 6652}
!244 = !{ptr @sched_deps_init, ptr @extend_dependency_caches, i64 1}
!245 = !{ptr @sched_deps_init, ptr @create_alloc_pool, i64 13302}
!246 = !{ptr @init_deps_data_vector, ptr @VEC_haifa_deps_insn_data_def_base_length, i64 6652}
!247 = !{ptr @init_deps_data_vector, ptr @VEC_haifa_deps_insn_data_def_base_space, i64 6651}
!248 = !{ptr @init_deps_data_vector, ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, i64 6650}
!249 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, ptr @VEC_haifa_deps_insn_data_def_base_length, i64 6652}
!250 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow, i64 6652}
!251 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared, ptr @VEC_haifa_deps_insn_data_def_base_address, i64 6652}
!252 = !{ptr @VEC_haifa_deps_insn_data_def_heap_safe_grow, ptr @VEC_haifa_deps_insn_data_def_heap_reserve_exact, i64 6652}
!253 = !{ptr @VEC_haifa_deps_insn_data_def_heap_reserve_exact, ptr @VEC_haifa_deps_insn_data_def_base_space, i64 6652}
!254 = !{ptr @VEC_haifa_deps_insn_data_def_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 6651}
!255 = !{ptr @sched_deps_finish, ptr @deps_pools_are_empty_p, i64 6652}
!256 = !{ptr @sched_deps_finish, ptr @fancy_abort, i64 3}
!257 = !{ptr @sched_deps_finish, ptr @free_alloc_pool_if_empty, i64 13304}
!258 = !{ptr @sched_deps_finish, ptr @VEC_haifa_deps_insn_data_def_heap_free, i64 6652}
!259 = !{ptr @sched_deps_finish, ptr @free, i64 3}
!260 = !{ptr @VEC_haifa_deps_insn_data_def_heap_free, ptr @free, i64 6651}
!261 = !{ptr @init_deps_global, ptr @bitmap_obstack_alloc_stat, i64 745242}
!262 = !{ptr @init_deps_global, ptr @sel_sched_p, i64 248414}
!263 = !{ptr @haifa_start_insn, ptr @fancy_abort, i64 2}
!264 = !{ptr @haifa_note_mem_dep, ptr @ds_to_dt, i64 314896}
!265 = !{ptr @haifa_note_mem_dep, ptr @init_dep_1, i64 314896}
!266 = !{ptr @haifa_note_mem_dep, ptr @maybe_add_or_update_dep_1, i64 314896}
!267 = !{ptr @haifa_note_dep, ptr @ds_to_dt, i64 5336930}
!268 = !{ptr @haifa_note_dep, ptr @init_dep, i64 5336930}
!269 = !{ptr @haifa_note_dep, ptr @maybe_add_or_update_dep_1, i64 5336930}
!270 = !{ptr @maybe_add_or_update_dep_1, ptr @fancy_abort, i64 2}
!271 = !{ptr @maybe_add_or_update_dep_1, ptr @VEC_int_base_index, i64 1}
!272 = !{ptr @maybe_add_or_update_dep_1, ptr @VEC_haifa_deps_insn_data_def_base_index, i64 1}
!273 = !{ptr @maybe_add_or_update_dep_1, ptr @add_or_update_dep_1, i64 5103599}
!274 = !{ptr @finish_deps_global, ptr @bitmap_obstack_free, i64 745242}
!275 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!276 = !{!"function_entry_count", i64 0}
!277 = !{!"function_entry_count", i64 5651826}
!278 = !{!279, !280, i64 0}
!279 = !{!"_dep", !280, i64 0, !280, i64 8, !283, i64 16, !283, i64 20}
!280 = !{!"any pointer", !281, i64 0}
!281 = !{!"omnipotent char", !282, i64 0}
!282 = !{!"Simple C/C++ TBAA"}
!283 = !{!"int", !281, i64 0}
!284 = !{!279, !280, i64 8}
!285 = !{!279, !283, i64 16}
!286 = !{!279, !283, i64 20}
!287 = !{!"function_entry_count", i64 5336930}
!288 = !{!280, !280, i64 0}
!289 = !{!290, !283, i64 128}
!290 = !{!"haifa_sched_info", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !280, i64 88, !283, i64 96, !283, i64 100, !280, i64 104, !280, i64 112, !280, i64 120, !283, i64 128}
!291 = !{!"branch_weights", i32 5336931, i32 1}
!292 = !{i32 16777216, i32 67108865}
!293 = !{!"sched-deps.c:dump_dep"}
!294 = !{!281, !281, i64 0}
!295 = !{!"sched-deps.c:dump_ds"}
!296 = !{!"function_entry_count", i64 255066}
!297 = !{!283, !283, i64 0}
!298 = !{!"branch_weights", i32 255067, i32 1}
!299 = !{!"function_entry_count", i64 4663378}
!300 = !{!"branch_weights", i32 567048, i32 4096332}
!301 = !{!"branch_weights", i32 1604690, i32 2491643}
!302 = !{!"branch_weights", i32 1422, i32 -750994448}
!303 = !{i32 0, i32 2}
!304 = !{!"function_entry_count", i64 6245598}
!305 = !{!"sched-deps.c:sched_get_condition_with_rev"}
!306 = !{!"branch_weights", i32 1, i32 6245599}
!307 = !{!"branch_weights", i32 1262315, i32 4983285}
!308 = !{!"branch_weights", i32 5363216, i32 882384}
!309 = !{!"branch_weights", i32 1, i32 882384}
!310 = !{!"branch_weights", i32 882384, i32 1}
!311 = !{!"sched-deps.c:conditions_mutex_p"}
!312 = !{!313, !283, i64 4}
!313 = !{!"_haifa_deps_insn_data", !283, i64 0, !283, i64 4, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !283, i64 48}
!314 = !{i8 0, i8 2}
!315 = !{!316, !280, i64 40}
!316 = !{!"_haifa_insn_data", !283, i64 0, !283, i64 4, !283, i64 8, !283, i64 12, !283, i64 16, !317, i64 20, !283, i64 22, !283, i64 22, !281, i64 23, !283, i64 24, !283, i64 28, !283, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !283, i64 88}
!317 = !{!"short", !281, i64 0}
!318 = !{!"function_entry_count", i64 79154170}
!319 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_index"}
!320 = !{!"function_entry_count", i64 80356793}
!321 = !{!"sched-deps.c:VEC_int_base_index"}
!322 = !{!"function_entry_count", i64 528591}
!323 = !{!"sched-deps.c:sel_sched_p"}
!324 = !{!325, !283, i64 32}
!325 = !{!"common_sched_info_def", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !283, i64 32}
!326 = !{!"sched-deps.c:VEC_haifa_insn_data_def_base_index"}
!327 = !{!"function_entry_count", i64 1262314}
!328 = !{!"sched-deps.c:sched_has_condition_p"}
!329 = !{!"function_entry_count", i64 41007907}
!330 = !{!"branch_weights", i32 28029892, i32 12978017}
!331 = !{!313, !280, i64 8}
!332 = !{!"branch_weights", i32 19964108, i32 8065785}
!333 = !{!313, !280, i64 16}
!334 = !{!"branch_weights", i32 6117336, i32 13846773}
!335 = !{!313, !280, i64 24}
!336 = !{!"branch_weights", i32 1118524, i32 4998813}
!337 = !{!313, !280, i64 32}
!338 = !{!"branch_weights", i32 1, i32 1118524}
!339 = !{!313, !280, i64 40}
!340 = !{!"function_entry_count", i64 14366759}
!341 = !{!"branch_weights", i32 1, i32 14366759}
!342 = !{!"branch_weights", i32 1, i32 19475151}
!343 = !{!344, !283, i64 8}
!344 = !{!"_deps_list", !280, i64 0, !283, i64 8}
!345 = !{!"branch_weights", i32 14366759, i32 5108392}
!346 = distinct !{!346, !347}
!347 = !{!"llvm.loop.mustprogress"}
!348 = !{!"function_entry_count", i64 8311867}
!349 = !{!"branch_weights", i32 1, i32 2756226}
!350 = !{!"branch_weights", i32 2756226, i32 7960888}
!351 = !{!"function_entry_count", i64 16730228}
!352 = !{!"sched-deps.c:deps_list_empty_p"}
!353 = !{!"function_entry_count", i64 1202623}
!354 = !{!"branch_weights", i32 1, i32 1202624}
!355 = !{!"function_entry_count", i64 6013115}
!356 = !{!"sched-deps.c:create_deps_list"}
!357 = !{!344, !280, i64 0}
!358 = !{!"sched-deps.c:free_deps_list"}
!359 = !{!"branch_weights", i32 1, i32 6013116}
!360 = !{!"function_entry_count", i64 958273}
!361 = !{!"branch_weights", i32 958274, i32 1}
!362 = !{!"function_entry_count", i64 6061873}
!363 = !{!"sched-deps.c:sd_find_dep_between_no_cache"}
!364 = !{!"branch_weights", i32 5108392, i32 953483}
!365 = !{!"branch_weights", i32 1548823, i32 4513052}
!366 = !{!"branch_weights", i32 1, i32 1157296}
!367 = !{!"branch_weights", i32 391527, i32 1146036}
!368 = !{!"branch_weights", i32 1157296, i32 380266}
!369 = distinct !{!369, !347}
!370 = !{!"branch_weights", i32 1, i32 1952237}
!371 = !{!"branch_weights", i32 2560815, i32 1955213}
!372 = !{!"branch_weights", i32 1952237, i32 2563790}
!373 = distinct !{!373, !347}
!374 = !{!"branch_weights", i32 200740, i32 2751602}
!375 = !{i64 0, i64 4, !297, i64 8, i64 8, !288, i64 16, i64 8, !288, i64 24, i64 1, !294}
!376 = !{!"function_entry_count", i64 7264496}
!377 = !{!"sched-deps.c:sd_iterator_start"}
!378 = !{!379, !283, i64 0}
!379 = !{!"_sd_iterator", !283, i64 0, !280, i64 8, !280, i64 16, !281, i64 24}
!380 = !{!379, !280, i64 8}
!381 = !{!379, !280, i64 16}
!382 = !{!379, !281, i64 24}
!383 = !{!"function_entry_count", i64 20534385}
!384 = !{!"sched-deps.c:sd_iterator_cond"}
!385 = !{!"branch_weights", i32 8405586, i32 1}
!386 = !{!387, !280, i64 0}
!387 = !{!"_dep_link", !280, i64 0, !280, i64 8, !280, i64 16}
!388 = !{!"branch_weights", i32 4312157, i32 7816644}
!389 = !{!"branch_weights", i32 1, i32 7816644}
!390 = !{!"branch_weights", i32 3723214, i32 8405586}
!391 = !{!"function_entry_count", i64 3101247}
!392 = !{!"sched-deps.c:sd_iterator_next"}
!393 = !{!"function_entry_count", i64 2351999}
!394 = !{!"branch_weights", i32 -1780124869, i32 1069}
!395 = !{!"branch_weights", i32 2772, i32 -1033757906}
!396 = !{!"branch_weights", i32 2352000, i32 1}
!397 = !{!"sched-deps.c:create_dep_node"}
!398 = !{!"sched-deps.c:copy_dep"}
!399 = !{!"function_entry_count", i64 4703998}
!400 = !{!"sched-deps.c:get_back_and_forw_lists"}
!401 = !{!"branch_weights", i32 2352000, i32 2352000}
!402 = !{!"function_entry_count", i64 9407996}
!403 = !{!"sched-deps.c:add_to_deps_list"}
!404 = !{!"branch_weights", i32 9407997, i32 1}
!405 = !{!"sched-deps.c:set_dependency_caches"}
!406 = !{!"sched-deps.c:attach_dep_link"}
!407 = !{!387, !280, i64 16}
!408 = !{!387, !280, i64 8}
!409 = !{!"branch_weights", i32 3592757, i32 5815241}
!410 = !{!"branch_weights", i32 5815241, i32 1}
!411 = !{!"function_entry_count", i64 18815992}
!412 = !{!"sched-deps.c:depl_on_debug_p"}
!413 = !{!414, !280, i64 24}
!414 = !{!"_dep_node", !387, i64 0, !279, i64 24, !387, i64 48}
!415 = !{!"branch_weights", i32 1, i32 18815993}
!416 = !{!414, !280, i64 32}
!417 = !{!"function_entry_count", i64 5103600}
!418 = !{!"sched-deps.c:add_or_update_dep_1"}
!419 = !{!"branch_weights", i32 -1971470495, i32 455}
!420 = !{!"branch_weights", i32 1414, i32 -686063686}
!421 = !{!"branch_weights", i32 5103601, i32 1}
!422 = !{!"branch_weights", i32 0, i32 -2147483648}
!423 = !{!"branch_weights", i32 2352000, i32 2751602}
!424 = !{i32 1, i32 3}
!425 = !{i32 1, i32 56}
!426 = !{!"sched-deps.c:ask_dependency_caches"}
!427 = !{!"function_entry_count", i64 2751601}
!428 = !{!"sched-deps.c:update_dep"}
!429 = !{!"branch_weights", i32 152693, i32 2598910}
!430 = !{!"branch_weights", i32 2751602, i32 1}
!431 = !{!"sched-deps.c:change_spec_dep_to_hard"}
!432 = !{!"sched-deps.c:update_dependency_caches"}
!433 = !{!"sched-deps.c:move_dep_link"}
!434 = !{!"sched-deps.c:remove_from_deps_list"}
!435 = !{!"sched-deps.c:detach_dep_link"}
!436 = !{!"branch_weights", i32 3907453, i32 5500545}
!437 = distinct !{!437, !347}
!438 = !{!"sched-deps.c:delete_dep_node"}
!439 = !{!"branch_weights", i32 1, i32 2352000}
!440 = !{!"sched-deps.c:dep_link_is_detached_p"}
!441 = !{!"sched-deps.c:dump_lists"}
!442 = distinct !{!442, !347}
!443 = !{!"function_entry_count", i64 691117}
!444 = !{!"function_entry_count", i64 97752}
!445 = !{!"function_entry_count", i64 1294542}
!446 = !{!"branch_weights", i32 4855823, i32 796005}
!447 = !{!"branch_weights", i32 4163046, i32 692778}
!448 = !{!"branch_weights", i32 1, i32 4163046}
!449 = !{!"function_entry_count", i64 2083275}
!450 = !{!451, !451, i64 0}
!451 = !{!"long", !281, i64 0}
!452 = !{!"branch_weights", i32 2083276, i32 1}
!453 = !{!"function_entry_count", i64 1261798}
!454 = !{!455, !280, i64 8}
!455 = !{!"sched_deps_info_def", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !280, i64 88, !283, i64 96, !283, i64 96, !283, i64 96}
!456 = !{!"branch_weights", i32 1, i32 1261799}
!457 = !{!"branch_weights", i32 259051165, i32 -352916108, i32 4375, i32 936103161, i32 386563034}
!458 = !{!"branch_weights", i32 930788849, i32 -375312709}
!459 = !{!"branch_weights", i32 213836, i32 1}
!460 = !{!461, !283, i64 40}
!461 = !{!"deps", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !283, i64 32, !283, i64 36, !283, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !283, i64 80, !280, i64 88, !283, i64 96, !280, i64 104, !462, i64 112, !462, i64 144, !283, i64 176, !283, i64 180}
!462 = !{!"bitmap_head_def", !280, i64 0, !280, i64 8, !283, i64 16, !280, i64 24}
!463 = !{!464, !283, i64 8}
!464 = !{!"param_info", !280, i64 0, !283, i64 8, !281, i64 12, !283, i64 16, !283, i64 20, !280, i64 24}
!465 = !{!"branch_weights", i32 1, i32 213836}
!466 = !{!461, !280, i64 48}
!467 = !{!"branch_weights", i32 88303, i32 2}
!468 = !{!"branch_weights", i32 4680007, i32 1}
!469 = !{!"branch_weights", i32 618115, i32 4061893}
!470 = !{!"branch_weights", i32 353209, i32 264907}
!471 = !{!"branch_weights", i32 -1370981779, i32 11037, i32 974669197}
!472 = !{!"branch_weights", i32 -396213240, i32 44151}
!473 = !{!"branch_weights", i32 88303, i32 4591704}
!474 = distinct !{!474, !347}
!475 = !{!"branch_weights", i32 88304, i32 1}
!476 = !{!461, !280, i64 56}
!477 = !{!"branch_weights", i32 5306, i32 82999}
!478 = !{!461, !280, i64 64}
!479 = !{!"branch_weights", i32 1, i32 88304}
!480 = !{!461, !283, i64 80}
!481 = !{!"branch_weights", i32 1261799, i32 1}
!482 = !{!"branch_weights", i32 59176, i32 1202624}
!483 = !{!"branch_weights", i32 118353, i32 -793168320}
!484 = !{!455, !280, i64 16}
!485 = !{!"branch_weights", i32 2999, i32 -509870482}
!486 = !{!"function_entry_count", i64 148065}
!487 = !{!"sched-deps.c:flush_pending_lists"}
!488 = !{!"branch_weights", i32 5368, i32 142699}
!489 = !{!"branch_weights", i32 142699, i32 1}
!490 = !{!461, !283, i64 32}
!491 = !{!"branch_weights", i32 148066, i32 1}
!492 = !{!461, !283, i64 36}
!493 = !{!"sched-deps.c:sched_analyze_insn"}
!494 = !{!"branch_weights", i32 900486, i32 302139}
!495 = !{!"branch_weights", i32 985376, i32 217249}
!496 = !{!"branch_weights", i32 39904, i32 149528, i32 149528, i32 109624}
!497 = !{!"branch_weights", i32 7, i32 1053092}
!498 = !{!499, !283, i64 0}
!499 = !{!"rtvec_def", !283, i64 0, !281, i64 8}
!500 = !{!"branch_weights", i32 1, i32 109623}
!501 = !{!"branch_weights", i32 1, i32 235446}
!502 = !{!"branch_weights", i32 109623, i32 125823}
!503 = distinct !{!503, !347}
!504 = !{!"branch_weights", i32 88304, i32 1114321}
!505 = !{!"branch_weights", i32 59353, i32 28951}
!506 = !{!"branch_weights", i32 1, i32 28951}
!507 = !{!"branch_weights", i32 28951, i32 0}
!508 = distinct !{!508, !347}
!509 = !{!"branch_weights", i32 213836, i32 988789}
!510 = !{!"branch_weights", i32 1, i32 127}
!511 = !{!"branch_weights", i32 -174721789, i32 26729, i32 1595510584}
!512 = !{!"branch_weights", i32 127, i32 27370881}
!513 = distinct !{!513, !347}
!514 = !{!455, !280, i64 0}
!515 = !{!"branch_weights", i32 1, i32 154146}
!516 = !{!"branch_weights", i32 154145, i32 1}
!517 = !{!461, !280, i64 104}
!518 = !{!519, !280, i64 8}
!519 = !{!"deps_reg", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !283, i64 32, !283, i64 36}
!520 = !{!519, !280, i64 16}
!521 = !{!519, !280, i64 24}
!522 = !{!519, !283, i64 32}
!523 = !{!519, !280, i64 0}
!524 = !{!"branch_weights", i32 1, i32 0}
!525 = distinct !{!525, !347}
!526 = !{!"branch_weights", i32 107842, i32 46304}
!527 = !{!"branch_weights", i32 46304, i32 1}
!528 = !{!"branch_weights", i32 46304, i32 0}
!529 = distinct !{!529, !347}
!530 = !{!"branch_weights", i32 1, i32 154145}
!531 = !{!"branch_weights", i32 187467, i32 5}
!532 = !{!"branch_weights", i32 5, i32 1}
!533 = !{!"branch_weights", i32 154145, i32 33326}
!534 = distinct !{!534, !347}
!535 = !{!"branch_weights", i32 1315160293, i32 -375317062}
!536 = !{!"branch_weights", i32 302139, i32 1}
!537 = !{!"branch_weights", i32 900486, i32 1}
!538 = !{!"branch_weights", i32 1202624, i32 1}
!539 = !{!461, !280, i64 88}
!540 = distinct !{!540, !347}
!541 = distinct !{!541, !347}
!542 = !{!"branch_weights", i32 1, i32 1202623}
!543 = !{!"branch_weights", i32 1253995, i32 1}
!544 = !{!"branch_weights", i32 1202623, i32 51372}
!545 = distinct !{!545, !347}
!546 = !{!"branch_weights", i32 63385234, i32 353787}
!547 = !{!"branch_weights", i32 353787, i32 1}
!548 = !{!"branch_weights", i32 1202624, i32 62536396}
!549 = distinct !{!549, !347}
!550 = !{!"branch_weights", i32 1048479, i32 154146}
!551 = !{!519, !283, i64 36}
!552 = distinct !{!552, !347}
!553 = distinct !{!553, !347}
!554 = !{!"branch_weights", i32 1, i32 1048478}
!555 = !{!"branch_weights", i32 1, i32 4159645}
!556 = !{!"branch_weights", i32 1421, i32 4158225}
!557 = !{!"branch_weights", i32 1421, i32 1}
!558 = !{!"branch_weights", i32 4159645, i32 1}
!559 = !{!"branch_weights", i32 1048478, i32 3111167}
!560 = distinct !{!560, !347}
!561 = !{!"branch_weights", i32 357809, i32 690670}
!562 = !{!"branch_weights", i32 690670, i32 1}
!563 = !{!"branch_weights", i32 690670, i32 0}
!564 = distinct !{!564, !347}
!565 = !{!"branch_weights", i32 63739020, i32 1}
!566 = distinct !{!566, !347}
!567 = !{!"branch_weights", i32 63385234, i32 1}
!568 = distinct !{!568, !347}
!569 = !{!461, !283, i64 176}
!570 = !{!"branch_weights", i32 1142933, i32 59692}
!571 = !{!"branch_weights", i32 59692, i32 1}
!572 = distinct !{!572, !347}
!573 = !{!"branch_weights", i32 1, i32 59691}
!574 = !{!"branch_weights", i32 948931, i32 1}
!575 = !{!"branch_weights", i32 59691, i32 889240}
!576 = distinct !{!576, !347}
!577 = !{!461, !283, i64 96}
!578 = !{!"branch_weights", i32 3103933, i32 59691}
!579 = distinct !{!579, !347}
!580 = !{!"branch_weights", i32 59691, i32 2}
!581 = !{!"branch_weights", i32 59691, i32 1}
!582 = distinct !{!582, !347}
!583 = !{!"function_entry_count", i64 7091207}
!584 = !{!"sched-deps.c:add_dependence_list_and_free"}
!585 = !{!"branch_weights", i32 7091208, i32 1}
!586 = !{!"branch_weights", i32 4067568, i32 3023640}
!587 = !{!"branch_weights", i32 2453351, i32 570290}
!588 = !{!"branch_weights", i32 2453351, i32 1}
!589 = !{!"branch_weights", i32 3023640, i32 0}
!590 = distinct !{!590, !347}
!591 = !{!"function_entry_count", i64 88303}
!592 = !{!"sched-deps.c:call_may_noreturn_p"}
!593 = !{!"branch_weights", i32 83944233, i32 -1834189895}
!594 = !{!"branch_weights", i32 15, i32 85378}
!595 = !{!"branch_weights", i32 59892, i32 25501}
!596 = !{!"branch_weights", i32 85392, i32 1}
!597 = !{!"branch_weights", i32 -902641216, i32 124584624}
!598 = !{!"branch_weights", i32 1, i32 82369}
!599 = !{!"branch_weights", i32 82369, i32 1}
!600 = !{!"branch_weights", i32 8981, i32 73389}
!601 = !{!"sched-deps.c:fixup_sched_groups"}
!602 = distinct !{!602, !347}
!603 = distinct !{!603, !347}
!604 = distinct !{!604, !347}
!605 = !{!"function_entry_count", i64 17979239}
!606 = !{!"sched-deps.c:add_dependence_list"}
!607 = !{!"branch_weights", i32 16691315, i32 1287925}
!608 = !{!"branch_weights", i32 966860, i32 321066}
!609 = !{!"branch_weights", i32 966860, i32 1}
!610 = !{!"branch_weights", i32 1287925, i32 0}
!611 = distinct !{!611, !347}
!612 = !{!"function_entry_count", i64 4505850}
!613 = !{!"sched-deps.c:sched_analyze_2"}
!614 = !{!"branch_weights", i32 550, i32 -1816611189}
!615 = !{!"branch_weights", i32 3719827, i32 786025}
!616 = !{!455, !280, i64 40}
!617 = !{!"branch_weights", i32 786025, i32 1}
!618 = !{!"branch_weights", i32 1362560, i32 1018085, i32 31, i32 1, i32 1, i32 150218, i32 20832, i32 205971, i32 1294218, i32 438127, i32 1, i32 1, i32 1, i32 1, i32 1, i32 15817, i32 1, i32 1, i32 1, i32 1, i32 1}
!619 = !{!"branch_weights", i32 1289188, i32 105946}
!620 = !{!455, !280, i64 48}
!621 = !{!"branch_weights", i32 105946, i32 1}
!622 = !{!"branch_weights", i32 1730649, i32 -1050533806}
!623 = !{!"branch_weights", i32 384, i32 307}
!624 = !{!"branch_weights", i32 1047554, i32 246665}
!625 = !{!"branch_weights", i32 246665, i32 1}
!626 = !{!"branch_weights", i32 438127, i32 1}
!627 = !{!628, !280, i64 1184}
!628 = !{!"gcc_target", !629, i64 0, !631, i64 368, !632, i64 664, !283, i64 744, !280, i64 752, !280, i64 760, !280, i64 768, !280, i64 776, !280, i64 784, !280, i64 792, !280, i64 800, !280, i64 808, !280, i64 816, !280, i64 824, !280, i64 832, !280, i64 840, !280, i64 848, !280, i64 856, !280, i64 864, !280, i64 872, !280, i64 880, !280, i64 888, !280, i64 896, !280, i64 904, !280, i64 912, !280, i64 920, !280, i64 928, !280, i64 936, !280, i64 944, !280, i64 952, !280, i64 960, !280, i64 968, !280, i64 976, !280, i64 984, !280, i64 992, !280, i64 1000, !280, i64 1008, !280, i64 1016, !280, i64 1024, !280, i64 1032, !280, i64 1040, !280, i64 1048, !280, i64 1056, !451, i64 1064, !451, i64 1072, !280, i64 1080, !280, i64 1088, !280, i64 1096, !280, i64 1104, !280, i64 1112, !280, i64 1120, !280, i64 1128, !280, i64 1136, !280, i64 1144, !280, i64 1152, !280, i64 1160, !280, i64 1168, !633, i64 1176, !280, i64 1232, !280, i64 1240, !280, i64 1248, !280, i64 1256, !280, i64 1264, !280, i64 1272, !280, i64 1280, !280, i64 1288, !280, i64 1296, !280, i64 1304, !280, i64 1312, !280, i64 1320, !280, i64 1328, !280, i64 1336, !280, i64 1344, !280, i64 1352, !280, i64 1360, !280, i64 1368, !280, i64 1376, !280, i64 1384, !280, i64 1392, !280, i64 1400, !280, i64 1408, !280, i64 1416, !280, i64 1424, !280, i64 1432, !280, i64 1440, !280, i64 1448, !280, i64 1456, !451, i64 1464, !634, i64 1472, !280, i64 1664, !280, i64 1672, !280, i64 1680, !280, i64 1688, !280, i64 1696, !280, i64 1704, !280, i64 1712, !280, i64 1720, !280, i64 1728, !280, i64 1736, !280, i64 1744, !280, i64 1752, !280, i64 1760, !280, i64 1768, !280, i64 1776, !635, i64 1784, !636, i64 1792, !637, i64 1896, !638, i64 1968, !280, i64 2016, !281, i64 2024, !281, i64 2025, !281, i64 2026, !281, i64 2027, !281, i64 2028, !281, i64 2029, !281, i64 2030, !281, i64 2031, !281, i64 2032, !281, i64 2033, !281, i64 2034, !281, i64 2035}
!629 = !{!"asm_out", !280, i64 0, !280, i64 8, !280, i64 16, !630, i64 24, !630, i64 56, !280, i64 88, !280, i64 96, !280, i64 104, !280, i64 112, !280, i64 120, !280, i64 128, !280, i64 136, !280, i64 144, !280, i64 152, !280, i64 160, !280, i64 168, !280, i64 176, !280, i64 184, !280, i64 192, !280, i64 200, !280, i64 208, !280, i64 216, !280, i64 224, !280, i64 232, !280, i64 240, !280, i64 248, !280, i64 256, !280, i64 264, !280, i64 272, !280, i64 280, !280, i64 288, !280, i64 296, !280, i64 304, !280, i64 312, !280, i64 320, !280, i64 328, !280, i64 336, !280, i64 344, !280, i64 352, !280, i64 360}
!630 = !{!"asm_int_op", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24}
!631 = !{!"sched", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !280, i64 88, !280, i64 96, !280, i64 104, !280, i64 112, !280, i64 120, !280, i64 128, !280, i64 136, !280, i64 144, !280, i64 152, !280, i64 160, !280, i64 168, !280, i64 176, !280, i64 184, !280, i64 192, !280, i64 200, !280, i64 208, !280, i64 216, !280, i64 224, !280, i64 232, !280, i64 240, !280, i64 248, !280, i64 256, !280, i64 264, !280, i64 272, !280, i64 280, !280, i64 288}
!632 = !{!"vectorize", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72}
!633 = !{!"addr_space", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48}
!634 = !{!"calls", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !280, i64 88, !280, i64 96, !280, i64 104, !280, i64 112, !280, i64 120, !280, i64 128, !280, i64 136, !280, i64 144, !280, i64 152, !280, i64 160, !280, i64 168, !280, i64 176, !280, i64 184}
!635 = !{!"c", !280, i64 0}
!636 = !{!"cxx", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !280, i64 88, !280, i64 96}
!637 = !{!"emutls", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !281, i64 64, !281, i64 65}
!638 = !{!"target_option_hooks", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40}
!639 = !{!640, !281, i64 32}
!640 = !{!"mem_attrs", !280, i64 0, !280, i64 8, !280, i64 16, !283, i64 24, !283, i64 28, !281, i64 32}
!641 = !{!"branch_weights", i32 1, i32 438127}
!642 = !{!"branch_weights", i32 36955, i32 401172}
!643 = !{!"branch_weights", i32 401169, i32 4}
!644 = !{!"branch_weights", i32 4, i32 1}
!645 = !{!"branch_weights", i32 401172, i32 0}
!646 = distinct !{!646, !347}
!647 = !{!"branch_weights", i32 1, i32 438126}
!648 = !{!"branch_weights", i32 363017, i32 123460}
!649 = !{!"branch_weights", i32 123460, i32 1}
!650 = !{!"branch_weights", i32 438126, i32 48350}
!651 = distinct !{!651, !347}
!652 = !{!"branch_weights", i32 341032, i32 97095}
!653 = !{!"branch_weights", i32 854, i32 96242}
!654 = !{!"branch_weights", i32 1, i32 854}
!655 = !{!"branch_weights", i32 854, i32 1}
!656 = !{!657, !283, i64 0}
!657 = !{!"spec_info_def", !283, i64 0, !280, i64 8, !283, i64 16, !283, i64 20, !283, i64 24}
!658 = !{!"branch_weights", i32 97095, i32 0}
!659 = distinct !{!659, !347}
!660 = !{!"branch_weights", i32 192620, i32 245508}
!661 = !{!"branch_weights", i32 245508, i32 1}
!662 = distinct !{!662, !347}
!663 = !{!"branch_weights", i32 15817, i32 1}
!664 = !{!"branch_weights", i32 1, i32 1362559}
!665 = !{!"branch_weights", i32 14530335, i32 -1915574541, i32 245039}
!666 = !{!"branch_weights", i32 254, i32 1}
!667 = !{!"branch_weights", i32 88, i32 254}
!668 = distinct !{!668, !347}
!669 = !{!"branch_weights", i32 1128770, i32 1362559}
!670 = distinct !{!670, !347}
!671 = !{!"branch_weights", i32 1174652, i32 187909}
!672 = !{!"branch_weights", i32 187909, i32 1}
!673 = !{!"function_entry_count", i64 1302855}
!674 = !{!"sched-deps.c:sched_analyze_1"}
!675 = !{!"branch_weights", i32 2544, i32 -979666990}
!676 = !{!"branch_weights", i32 516832, i32 786025}
!677 = !{!455, !280, i64 24}
!678 = !{!"branch_weights", i32 1, i32 1302856}
!679 = distinct !{!679, !347}
!680 = !{!455, !280, i64 32}
!681 = !{!"branch_weights", i32 791753009, i32 1196214127, i32 -1253912341, i32 17849786, i32 18446930, i32 3871}
!682 = !{!"branch_weights", i32 172, i32 4608}
!683 = distinct !{!683, !347}
!684 = !{!"branch_weights", i32 2156955, i32 -1362161742}
!685 = !{!"branch_weights", i32 354, i32 226}
!686 = !{!"branch_weights", i32 1, i32 578}
!687 = !{!"branch_weights", i32 0, i32 0}
!688 = distinct !{!688, !347, !689, !690}
!689 = !{!"llvm.loop.isvectorized", i32 1}
!690 = !{!"llvm.loop.unroll.runtime.disable"}
!691 = !{!"branch_weights", i32 309901, i32 1}
!692 = !{!"branch_weights", i32 73, i32 309829}
!693 = !{!"branch_weights", i32 26444, i32 283385}
!694 = !{!"branch_weights", i32 170914, i32 112472}
!695 = !{!"branch_weights", i32 112472, i32 1}
!696 = !{!"branch_weights", i32 283385, i32 0}
!697 = distinct !{!697, !347}
!698 = !{!"branch_weights", i32 1, i32 309828}
!699 = !{!"branch_weights", i32 326099, i32 78964}
!700 = !{!"branch_weights", i32 78964, i32 1}
!701 = !{!"branch_weights", i32 309828, i32 95234}
!702 = distinct !{!702, !347}
!703 = !{!"branch_weights", i32 309829, i32 1}
!704 = !{!"branch_weights", i32 1190238, i32 112619}
!705 = !{!"function_entry_count", i64 805118}
!706 = !{!"sched-deps.c:bitmap_initialize_stat"}
!707 = !{!462, !280, i64 24}
!708 = !{!"function_entry_count", i64 4070119}
!709 = !{!"sched-deps.c:bmp_iter_set_init"}
!710 = !{!462, !280, i64 0}
!711 = !{!712, !280, i64 0}
!712 = !{!"", !280, i64 0, !280, i64 8, !283, i64 16, !451, i64 24}
!713 = !{!712, !280, i64 8}
!714 = !{!"branch_weights", i32 1929866, i32 2140255}
!715 = !{!716, !283, i64 16}
!716 = !{!"bitmap_element_def", !280, i64 0, !280, i64 8, !283, i64 16, !281, i64 24}
!717 = !{!"branch_weights", i32 4070120, i32 1}
!718 = !{!712, !283, i64 16}
!719 = !{!712, !451, i64 24}
!720 = !{!"function_entry_count", i64 17059716}
!721 = !{!"sched-deps.c:bmp_iter_set"}
!722 = !{!"branch_weights", i32 4070120, i32 12989598}
!723 = !{!"branch_weights", i32 12989597, i32 1}
!724 = !{!"branch_weights", i32 817172, i32 12989597}
!725 = distinct !{!725, !347}
!726 = !{!"branch_weights", i32 1, i32 4070119}
!727 = !{!"branch_weights", i32 4070119, i32 1}
!728 = distinct !{!728, !347}
!729 = !{!716, !280, i64 0}
!730 = !{!"function_entry_count", i64 12989597}
!731 = !{!"sched-deps.c:bmp_iter_next"}
!732 = !{!"branch_weights", i32 549, i32 369813861, i32 337519286, i32 -2067674321}
!733 = !{!"branch_weights", i32 881967, i32 4454965}
!734 = !{!"branch_weights", i32 4454965, i32 1}
!735 = !{!"sched-deps.c:setup_insn_reg_uses"}
!736 = !{!737, !280, i64 16}
!737 = !{!"reg_use_data", !283, i64 0, !280, i64 8, !280, i64 16, !280, i64 24}
!738 = distinct !{!738, !347}
!739 = distinct !{!739, !347}
!740 = !{!"sched-deps.c:setup_insn_reg_pressure_info"}
!741 = distinct !{!741, !347}
!742 = distinct !{!742, !347}
!743 = !{!316, !280, i64 56}
!744 = !{!316, !280, i64 64}
!745 = distinct !{!745, !347}
!746 = !{!"function_entry_count", i64 2082055}
!747 = !{!"sched-deps.c:rhs_regno"}
!748 = !{!"sched-deps.c:sched_analyze_reg"}
!749 = !{!"branch_weights", i32 1, i32 2083276}
!750 = !{!"branch_weights", i32 265818663, i32 1879032811, i32 -774782342}
!751 = !{!"branch_weights", i32 1, i32 1294523}
!752 = !{!"branch_weights", i32 1, i32 691000}
!753 = !{!"branch_weights", i32 1, i32 97752}
!754 = !{!"branch_weights", i32 118, i32 691000}
!755 = distinct !{!755, !347}
!756 = !{!"branch_weights", i32 20, i32 1294523}
!757 = distinct !{!757, !347}
!758 = distinct !{!758, !347}
!759 = !{!760, !283, i64 12}
!760 = !{!"reg_info_t", !283, i64 0, !283, i64 4, !283, i64 8, !283, i64 12, !283, i64 16, !283, i64 20, !283, i64 24}
!761 = !{!461, !280, i64 72}
!762 = !{!"function_entry_count", i64 314896}
!763 = !{!"sched-deps.c:note_mem_dep"}
!764 = !{!455, !280, i64 80}
!765 = !{!"branch_weights", i32 1, i32 314897}
!766 = !{!"function_entry_count", i64 853}
!767 = !{!"sched-deps.c:deps_may_trap_p"}
!768 = !{!"sched-deps.c:note_dep"}
!769 = !{!455, !280, i64 88}
!770 = !{!"branch_weights", i32 1, i32 5336931}
!771 = !{!"function_entry_count", i64 747954}
!772 = !{!"sched-deps.c:add_insn_mem_dependence"}
!773 = !{!"branch_weights", i32 747955, i32 1}
!774 = !{!"branch_weights", i32 309829, i32 438127}
!775 = !{!"sched-deps.c:extend_deps_reg_info"}
!776 = !{!"sched-deps.c:note_reg_set"}
!777 = !{!455, !280, i64 56}
!778 = !{!"branch_weights", i32 1, i32 691118}
!779 = !{!"sched-deps.c:note_reg_use"}
!780 = !{!455, !280, i64 72}
!781 = !{!"branch_weights", i32 1, i32 1294543}
!782 = !{!"sched-deps.c:note_reg_clobber"}
!783 = !{!455, !280, i64 64}
!784 = !{!"branch_weights", i32 1, i32 97753}
!785 = !{!"sched-deps.c:create_insn_reg_use"}
!786 = !{!737, !283, i64 0}
!787 = !{!737, !280, i64 8}
!788 = !{!316, !280, i64 72}
!789 = !{!737, !280, i64 24}
!790 = !{!"sched-deps.c:mark_insn_reg_clobber"}
!791 = !{!"sched-deps.c:mark_insn_reg_store"}
!792 = !{!"sched-deps.c:mark_reg_death"}
!793 = !{!"sched-deps.c:mark_insn_reg_birth"}
!794 = !{!"sched-deps.c:mark_insn_hard_regno_birth"}
!795 = distinct !{!795, !347}
!796 = !{!"sched-deps.c:mark_insn_pseudo_birth"}
!797 = !{!"sched-deps.c:insn_use_p"}
!798 = distinct !{!798, !347}
!799 = !{!"sched-deps.c:create_insn_reg_set"}
!800 = !{!801, !283, i64 0}
!801 = !{!"reg_set_data", !283, i64 0, !280, i64 8, !280, i64 16}
!802 = !{!801, !280, i64 8}
!803 = !{!316, !280, i64 80}
!804 = !{!801, !280, i64 16}
!805 = !{!"sched-deps.c:mark_hard_regno_death"}
!806 = distinct !{!806, !347}
!807 = !{!"sched-deps.c:mark_pseudo_death"}
!808 = !{!"sched-deps.c:delete_all_dependences"}
!809 = distinct !{!809, !347}
!810 = !{!"function_entry_count", i64 248414}
!811 = !{!"branch_weights", i32 248415, i32 1}
!812 = !{!"branch_weights", i32 1, i32 248415}
!813 = distinct !{!813, !347}
!814 = !{!"branch_weights", i32 -1662606417, i32 129525582}
!815 = !{!"branch_weights", i32 248415, i32 1013385}
!816 = !{!"function_entry_count", i64 248411}
!817 = !{!"branch_weights", i32 1, i32 248411}
!818 = !{!"branch_weights", i32 -1812684626, i32 14045657}
!819 = !{!"branch_weights", i32 248411, i32 961017}
!820 = distinct !{!820, !347}
!821 = !{!"sched-deps.c:delete_dep_nodes_in_back_deps"}
!822 = !{!"branch_weights", i32 1202623, i32 1149377}
!823 = distinct !{!823, !347}
!824 = !{!"sched-deps.c:clear_deps_list"}
!825 = !{!"branch_weights", i32 1, i32 248414}
!826 = !{!"branch_weights", i32 5243663, i32 692699}
!827 = !{!"branch_weights", i32 2372042, i32 3564320}
!828 = !{!"branch_weights", i32 5936361, i32 1}
!829 = !{!"branch_weights", i32 3901775, i32 2034587}
!830 = !{!"branch_weights", i32 248414, i32 5687947}
!831 = distinct !{!831, !347}
!832 = distinct !{!832, !347}
!833 = !{!"sched-deps.c:remove_from_both_dependence_lists"}
!834 = distinct !{!834, !347}
!835 = !{!"sched-deps.c:remove_from_dependence_list"}
!836 = distinct !{!836, !347}
!837 = !{!"function_entry_count", i64 6652}
!838 = !{!839, !280, i64 8}
!839 = !{!"function", !280, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !280, i64 32, !280, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !280, i64 88, !280, i64 96, !283, i64 104, !283, i64 108, !283, i64 112, !283, i64 116, !283, i64 120, !283, i64 124, !280, i64 128, !283, i64 136, !283, i64 137, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 138, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139, !283, i64 139}
!840 = !{!841, !283, i64 24}
!841 = !{!"control_flow_graph", !280, i64 0, !280, i64 8, !280, i64 16, !283, i64 24, !283, i64 28, !283, i64 32, !280, i64 40, !283, i64 48, !281, i64 52, !281, i64 60, !283, i64 68, !283, i64 72}
!842 = !{!"branch_weights", i32 345800, i32 -1993667673}
!843 = !{!"branch_weights", i32 322784, i32 2147160864}
!844 = !{!"sched-deps.c:init_deps_data_vector"}
!845 = !{!"branch_weights", i32 6653, i32 1}
!846 = distinct !{!846, !347}
!847 = !{!"function_entry_count", i64 19956}
!848 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_length"}
!849 = !{!"branch_weights", i32 19957, i32 1}
!850 = !{!851, !283, i64 0}
!851 = !{!"VEC_haifa_deps_insn_data_def_base", !283, i64 0, !283, i64 4, !281, i64 8}
!852 = !{!"function_entry_count", i64 13304}
!853 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_space"}
!854 = !{!"branch_weights", i32 13305, i32 1}
!855 = !{!851, !283, i64 4}
!856 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_safe_grow_cleared"}
!857 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_safe_grow"}
!858 = !{}
!859 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_base_address"}
!860 = !{!"branch_weights", i32 1, i32 6653}
!861 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_reserve_exact"}
!862 = !{!"branch_weights", i32 44262409, i32 13307}
!863 = !{!"sched-deps.c:VEC_haifa_deps_insn_data_def_heap_free"}
!864 = !{!"sched-deps.c:haifa_start_insn"}
!865 = !{!"branch_weights", i32 4928, i32 -1185325272}
!866 = !{!"sched-deps.c:haifa_finish_insn"}
!867 = !{!"sched-deps.c:haifa_note_mem_dep"}
!868 = !{!"branch_weights", i32 314897, i32 1}
!869 = !{i32 0, i32 13}
!870 = !{!"sched-deps.c:haifa_note_dep"}
!871 = !{!"sched-deps.c:maybe_add_or_update_dep_1"}
!872 = !{!"branch_weights", i32 -1839678032, i32 434}
!873 = !{!"branch_weights", i32 -307767377, i32 705}
!874 = !{!"branch_weights", i32 548227, i32 5103601}
!875 = !{!"branch_weights", i32 548227, i32 1}
!876 = !{!"sched-deps.c:ds_merge_1"}
!877 = distinct !{!877, !347}
