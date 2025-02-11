; ModuleID = 'reload.c'
source_filename = "reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
%struct.reload = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8 }
%struct.replacement = type { ptr, ptr, i32, i32 }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.secondary_reload_info = type { i32, i32, ptr, i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.decomposition = type { i32, i32, ptr, i64, i64 }

@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str = private unnamed_addr constant [9 x i8] c"reload.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@secondary_memlocs_elim = internal unnamed_addr global [87 x [30 x ptr]] zeroinitializer, align 16
@secondary_memlocs = internal unnamed_addr global [87 x ptr] zeroinitializer, align 16
@secondary_memlocs_elim_used = internal unnamed_addr global i32 0, align 4
@reg_renumber = external local_unnamed_addr global ptr, align 8
@reg_equiv_constant = external local_unnamed_addr global ptr, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@this_insn_is_asm = internal unnamed_addr global i32 0, align 4
@this_insn = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"cannot reload integer constant operand in %<asm%>\00", align 1
@word_mode = external local_unnamed_addr global i32, align 4
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@.str.3 = private unnamed_addr constant [42 x i8] c"impossible register constraint in %<asm%>\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@n_reloads = dso_local local_unnamed_addr global i32 0, align 4
@rld = dso_local local_unnamed_addr global [180 x %struct.reload] zeroinitializer, align 16
@replace_reloads = internal unnamed_addr global i32 0, align 4
@replacements = internal global [150 x %struct.replacement] zeroinitializer, align 16
@n_replacements = internal unnamed_addr global i32 0, align 4
@static_reload_reg_p = internal unnamed_addr global ptr null, align 8
@hard_regs_live_known = internal unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@output_reloadnum = internal unnamed_addr global i32 0, align 4
@n_earlyclobbers = dso_local local_unnamed_addr global i32 0, align 4
@reload_earlyclobbers = dso_local local_unnamed_addr global [30 x ptr] zeroinitializer, align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@reload_n_operands = dso_local local_unnamed_addr global i32 0, align 4
@reg_equiv_memory_loc = external local_unnamed_addr global ptr, align 8
@reg_equiv_address = external local_unnamed_addr global ptr, align 8
@num_not_at_initial_offset = external local_unnamed_addr global i32, align 4
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@reg_equiv_mem = external local_unnamed_addr global ptr, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@.str.4 = private unnamed_addr constant [45 x i8] c"%<&%> constraint used with no register class\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to generate reloads for:\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"inconsistent operand constraints in an %<asm%>\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@compiler_params = external local_unnamed_addr global ptr, align 8
@reload_first_uid = external local_unnamed_addr global i32, align 4
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"Reload %d: \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"reload_in (%s) = \00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"reload_out (%s) = \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"%s (opnum = %d)\00", align 1
@reltable.debug_reload_to_stream = internal unnamed_addr constant [11 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.debug_reload_to_stream to i64)) to i32)], align 4
@.str.13 = private unnamed_addr constant [11 x i8] c", optional\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c", nongroup\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c", inc by %d\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c", can't combine\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c", secondary_reload_p\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"\0A\09reload_in_reg: \00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"\0A\09reload_out_reg: \00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"\0A\09reload_reg_rtx: \00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"%ssecondary_in_reload = %d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"%ssecondary_out_reload = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"%ssecondary_in_icode = %s\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"%ssecondary_out_icode = %s\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@reg_equiv_alt_mem_list = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@subst_reg_equivs_changed = internal unnamed_addr global i1 false, align 4
@indirect_symref_ok = external local_unnamed_addr global i8, align 1
@double_reg_address_ok = external local_unnamed_addr global i8, align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@reg_equiv_invariant = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"RELOAD_FOR_INPUT\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"RELOAD_FOR_OUTPUT\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"RELOAD_FOR_INSN\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"RELOAD_FOR_INPUT_ADDRESS\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"RELOAD_FOR_INPADDR_ADDRESS\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"RELOAD_FOR_OUTPUT_ADDRESS\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"RELOAD_FOR_OUTADDR_ADDRESS\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"RELOAD_FOR_OPERAND_ADDRESS\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"RELOAD_FOR_OPADDR_ADDR\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"RELOAD_OTHER\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"RELOAD_FOR_OTHER_ADDRESS\00", align 1
@switch.table.find_reloads = private unnamed_addr constant [17 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @secondary_reload_class(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  store i32 2956, ptr %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.secondary_reload_info, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !11
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !12
  %8 = call i32 %7(i8 noundef zeroext %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #24
  %9 = load i32, ptr %5, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 2956
  %11 = icmp ne i32 %8, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = call i32 @scratch_reload_class(i32 noundef %9) #25
  br label %15

15:                                               ; preds = %4, %13
  %16 = phi i32 [ %14, %13 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @scratch_reload_class(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 4
  %4 = load i8, ptr %3, align 8, !tbaa !25
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 554, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %9, i64 2, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = load i8, ptr %11, align 1, !tbaa !30
  %13 = icmp eq i8 %12, 61
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 556, ptr noundef nonnull @.str.1) #24
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds i8, ptr %11, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !30
  %18 = icmp eq i8 %17, 38
  %19 = getelementptr inbounds i8, ptr %11, i64 2
  %20 = select i1 %18, ptr %19, ptr %16
  %21 = load i8, ptr %20, align 1, !tbaa !30
  %22 = icmp eq i8 %21, 114
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @lookup_constraint(ptr noundef nonnull %20) #24
  %25 = tail call i32 @regclass_for_constraint(i32 noundef %24) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 565, ptr noundef nonnull @.str.1) #24
  br label %28

28:                                               ; preds = %27, %23, %15
  %29 = phi i32 [ 13, %15 ], [ %25, %23 ], [ 0, %27 ]
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_secondary_mem(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !30
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !30
  switch i8 %12, label %16 [
    i8 2, label %13
    i8 3, label %13
    i8 10, label %13
    i8 12, label %13
  ]

13:                                               ; preds = %10, %10, %10, %10
  %14 = zext nneg i8 %12 to i32
  %15 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef %14, i32 noundef 0) #24
  br label %16

16:                                               ; preds = %4, %10, %13
  %17 = phi i32 [ %15, %13 ], [ %1, %10 ], [ %1, %4 ]
  %18 = sext i32 %17 to i64
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %16
  %24 = getelementptr inbounds [87 x ptr], ptr @secondary_memlocs, i64 0, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = zext i32 %17 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !30
  %31 = zext i8 %30 to i64
  %32 = tail call ptr @assign_stack_local(i32 noundef %17, i64 noundef %31, i32 noundef 0) #24
  store ptr %32, ptr %24, align 8, !tbaa !31
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi ptr [ %32, %27 ], [ %25, %23 ]
  %35 = tail call ptr @eliminate_regs(ptr noundef %34, i32 noundef 0, ptr noundef null) #24
  store ptr %35, ptr %5, align 8, !tbaa !31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !32
  br label %44

44:                                               ; preds = %33, %41
  %45 = phi i8 [ %43, %41 ], [ 0, %33 ]
  %46 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %17, ptr noundef %37, i8 noundef zeroext %45) #25, !range !34
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load ptr, ptr %24, align 8, !tbaa !31
  %50 = icmp eq ptr %35, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call ptr @copy_rtx(ptr noundef nonnull %35) #24
  store ptr %52, ptr %5, align 8, !tbaa !31
  br label %53

53:                                               ; preds = %48, %51
  %54 = phi ptr [ %35, %48 ], [ %52, %51 ]
  %55 = icmp eq i32 %3, 0
  %56 = icmp eq i32 %3, 1
  %57 = select i1 %56, i32 5, i32 9
  %58 = select i1 %55, i32 3, i32 %57
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !30
  %61 = call fastcc i32 @find_reloads_address(i32 noundef %17, ptr noundef nonnull %5, ptr noundef %60, ptr noundef nonnull %59, i32 noundef %2, i32 noundef %58, i32 noundef 0, ptr noundef null) #25
  %62 = load ptr, ptr %5, align 8, !tbaa !31
  br label %63

63:                                               ; preds = %44, %53
  %64 = phi ptr [ %35, %44 ], [ %62, %53 ]
  store ptr %64, ptr %20, align 8, !tbaa !31
  %65 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !35
  %66 = icmp sgt i32 %65, %17
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = add nsw i32 %17, 1
  store i32 %68, ptr @secondary_memlocs_elim_used, align 4, !tbaa !35
  br label %69

69:                                               ; preds = %63, %67, %16
  %70 = phi ptr [ %21, %16 ], [ %64, %67 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret ptr %70
}

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @assign_stack_local(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @eliminate_regs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !36
  %5 = tail call zeroext i8 %4(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %2) #24
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_reloads_address(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = icmp ne ptr %1, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !31
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !32
  br label %19

19:                                               ; preds = %8, %16, %11
  %20 = phi i8 [ %18, %16 ], [ 0, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %141

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %26 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = lshr i32 %21, 16
  %33 = and i32 %32, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %29, ptr noundef %3, i32 noundef 13, i32 noundef %33, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  br label %419

34:                                               ; preds = %24
  %35 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %36 = getelementptr inbounds ptr, ptr %35, i64 %27
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  store ptr %37, ptr %9, align 8, !tbaa !31
  %38 = icmp eq ptr %37, null
  br i1 %38, label %126, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %41 = getelementptr inbounds ptr, ptr %40, i64 %27
  %42 = load ptr, ptr %41, align 8, !tbaa !31
  %43 = icmp ne ptr %42, null
  %44 = load i32, ptr @num_not_at_initial_offset, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %135

47:                                               ; preds = %39
  %48 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %2, i32 noundef %25) #25
  store ptr %48, ptr %9, align 8, !tbaa !31
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !30
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 5
  %59 = load i8, ptr %58, align 8, !tbaa !32
  br label %60

60:                                               ; preds = %47, %57
  %61 = phi i8 [ %59, %57 ], [ 0, %47 ]
  %62 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %51, ptr noundef %53, i8 noundef zeroext %61) #25, !range !34
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, ptr %48, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = load ptr, ptr %52, align 8, !tbaa !30
  %69 = icmp eq i32 %5, 3
  %70 = icmp eq i32 %5, 5
  %71 = select i1 %70, i32 6, i32 %5
  %72 = select i1 %69, i32 4, i32 %71
  %73 = call fastcc i32 @find_reloads_address(i32 noundef %67, ptr noundef nonnull %9, ptr noundef %68, ptr noundef nonnull %52, i32 noundef %4, i32 noundef %72, i32 noundef %6, ptr noundef %7) #25
  %74 = load ptr, ptr %9, align 8, !tbaa !31
  %75 = call i32 @rtx_equal_p(ptr noundef %74, ptr noundef nonnull %48) #24
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr %9, align 8, !tbaa !31
  br i1 %76, label %78, label %80

78:                                               ; preds = %64
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %25, ptr noundef %77) #25
  %79 = load ptr, ptr %9, align 8, !tbaa !31
  br label %80

80:                                               ; preds = %64, %78, %60
  %81 = phi ptr [ %77, %64 ], [ %79, %78 ], [ %48, %60 ]
  %82 = icmp sgt i32 %6, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %80
  %84 = call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %81, i8 noundef zeroext %20) #25, !range !34
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %9, align 8, !tbaa !31
  br i1 %85, label %135, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !30
  %90 = load i32, ptr %89, align 8
  %91 = trunc i32 %90 to i16
  switch i16 %91, label %135 [
    i16 37, label %107
    i16 49, label %92
  ]

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !30
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %135

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !30
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !35
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %107, label %135

107:                                              ; preds = %87, %98
  %108 = load i32, ptr @replace_reloads, align 4, !tbaa !35
  %109 = icmp ne i32 %108, 0
  %110 = load i32, ptr @num_not_at_initial_offset, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %419

113:                                              ; preds = %107
  %114 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %115 = getelementptr inbounds ptr, ptr %114, i64 %27
  %116 = load ptr, ptr %115, align 8, !tbaa !31
  %117 = call i32 @rtx_equal_p(ptr noundef nonnull %86, ptr noundef %116) #24
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %419

119:                                              ; preds = %113
  %120 = load ptr, ptr %9, align 8, !tbaa !31
  store ptr %120, ptr %3, align 8, !tbaa !31
  %121 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %2) #24
  %122 = call ptr @emit_insn_before(ptr noundef %121, ptr noundef %7) #24
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, -16711681
  %125 = or disjoint i32 %124, 917504
  store i32 %125, ptr %122, align 8
  br label %419

126:                                              ; preds = %34
  %127 = icmp slt i32 %25, 53
  br i1 %127, label %128, label %135

128:                                              ; preds = %126
  %129 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %25) #25
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %133 = tail call i32 @regno_clobbered_p(i32 noundef %25, ptr noundef %132, i32 noundef %0, i32 noundef 0) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %419, label %135

135:                                              ; preds = %80, %83, %92, %98, %87, %126, %128, %131, %39
  %136 = phi ptr [ %2, %39 ], [ %2, %131 ], [ %2, %128 ], [ %2, %126 ], [ %86, %87 ], [ %86, %98 ], [ %86, %92 ], [ %86, %83 ], [ %81, %80 ]
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = call i32 @push_reload(ptr noundef nonnull %136, ptr noundef null, ptr noundef %3, ptr noundef null, i32 noundef 13, i32 noundef %139, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #25
  br label %419

141:                                              ; preds = %19
  %142 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %20) #25, !range !34
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %173, label %144

144:                                              ; preds = %141
  %145 = load i32, ptr %2, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 49
  br i1 %147, label %148, label %167

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !30
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 30
  br i1 %153, label %154, label %167

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !30
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 37
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %162 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %156) #25
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !31
  %166 = icmp eq ptr %165, null
  br i1 %166, label %419, label %167

167:                                              ; preds = %160, %154, %148, %144
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %168 = tail call fastcc ptr @subst_reg_equivs(ptr noundef nonnull %2, ptr noundef %7) #25
  store ptr %168, ptr %3, align 8, !tbaa !31
  %169 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %169, label %170, label %419

170:                                              ; preds = %167
  %171 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %20) #25, !range !34
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %419

173:                                              ; preds = %170, %141
  %174 = load i32, ptr %2, align 8
  %175 = and i32 %174, 65535
  %176 = icmp ne i32 %175, 61
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !31
  %180 = load i32, ptr %179, align 8
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi i32 [ %180, %177 ], [ %174, %173 ]
  %183 = phi ptr [ %178, %177 ], [ %3, %173 ]
  %184 = phi ptr [ %179, %177 ], [ %2, %173 ]
  %185 = trunc i32 %182 to i16
  switch i16 %185, label %290 [
    i16 43, label %186
    i16 49, label %247
  ]

186:                                              ; preds = %181
  store ptr %184, ptr %9, align 8, !tbaa !31
  %187 = load i32, ptr %184, align 8
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  %190 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !30
  %192 = icmp eq i32 %5, 3
  %193 = icmp eq i32 %5, 5
  %194 = select i1 %193, i32 6, i32 %5
  %195 = select i1 %192, i32 4, i32 %194
  %196 = icmp eq i32 %6, 0
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 1)
  %198 = call fastcc i32 @find_reloads_address(i32 noundef %189, ptr noundef nonnull %9, ptr noundef %191, ptr noundef nonnull %190, i32 noundef %4, i32 noundef %195, i32 noundef %197, ptr noundef %7) #25
  %199 = load ptr, ptr %9, align 8, !tbaa !31
  %200 = icmp ne ptr %199, %184
  %201 = and i1 %10, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %186
  %203 = load ptr, ptr %1, align 8, !tbaa !31
  %204 = call ptr @copy_rtx(ptr noundef %203) #24
  store ptr %204, ptr %1, align 8, !tbaa !31
  %205 = load ptr, ptr %9, align 8, !tbaa !31
  %206 = getelementptr inbounds %struct.rtx_def, ptr %204, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !30
  call void @copy_replacements(ptr noundef %205, ptr noundef %207) #25
  %208 = load ptr, ptr %1, align 8, !tbaa !31
  %209 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  br i1 %176, label %213, label %210

210:                                              ; preds = %202
  %211 = load ptr, ptr %209, align 8, !tbaa !31
  %212 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  br label %213

213:                                              ; preds = %202, %210, %186
  %214 = phi ptr [ %212, %210 ], [ %209, %202 ], [ %183, %186 ]
  %215 = load ptr, ptr %9, align 8, !tbaa !31
  br i1 %196, label %241, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !30
  %219 = load i32, ptr %218, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 45
  %222 = load i8, ptr @indirect_symref_ok, align 1
  %223 = icmp eq i8 %222, 0
  %224 = select i1 %221, i1 %223, i1 false
  %225 = icmp eq i32 %220, 43
  %226 = or i1 %225, %224
  br i1 %226, label %241, label %227

227:                                              ; preds = %216
  %228 = trunc i32 %219 to i16
  switch i16 %228, label %241 [
    i16 37, label %419
    i16 49, label %229
  ]

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !30
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 37
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !30
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 65535
  %240 = icmp eq i32 %239, 30
  br i1 %240, label %419, label %241

241:                                              ; preds = %227, %216, %235, %229, %213
  %242 = load i32, ptr %215, align 8
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  %245 = call i32 @push_reload(ptr noundef nonnull %215, ptr noundef null, ptr noundef %214, ptr noundef null, i32 noundef 13, i32 noundef %244, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #25
  %246 = zext i1 %176 to i32
  br label %419

247:                                              ; preds = %181
  %248 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !30
  %250 = load i32, ptr %249, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 37
  br i1 %252, label %253, label %290

253:                                              ; preds = %247
  %254 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %249) #25
  %255 = icmp ult i32 %254, 53
  br i1 %255, label %256, label %290

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !30
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 30
  br i1 %261, label %262, label %290

262:                                              ; preds = %256
  %263 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %249) #25
  %264 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %263) #25
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %290, label %266

266:                                              ; preds = %262
  br i1 %10, label %267, label %274

267:                                              ; preds = %266
  %268 = load ptr, ptr %1, align 8, !tbaa !31
  %269 = tail call ptr @copy_rtx(ptr noundef %268) #24
  store ptr %269, ptr %1, align 8, !tbaa !31
  %270 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  br i1 %176, label %274, label %271

271:                                              ; preds = %267
  %272 = load ptr, ptr %270, align 8, !tbaa !31
  %273 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1
  br label %274

274:                                              ; preds = %267, %271, %266
  %275 = phi ptr [ %273, %271 ], [ %270, %267 ], [ %183, %266 ]
  %276 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !30
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %274
  %279 = tail call ptr @copy_rtx(ptr noundef nonnull %184) #24
  store ptr %279, ptr %275, align 8, !tbaa !31
  %280 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !30
  %282 = load i32, ptr %279, align 8
  %283 = lshr i32 %282, 16
  %284 = and i32 %283, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef %281, ptr noundef nonnull %280, i32 noundef 11, i32 noundef %284, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  br label %419

285:                                              ; preds = %274
  %286 = load i32, ptr %184, align 8
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %184, ptr noundef %275, i32 noundef 13, i32 noundef %288, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  %289 = zext i1 %176 to i32
  br label %419

290:                                              ; preds = %181, %247, %253, %256, %262
  %291 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %292 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %293

293:                                              ; preds = %290, %365
  %294 = phi i1 [ true, %290 ], [ false, %365 ]
  %295 = phi i64 [ 0, %290 ], [ 1, %365 ]
  %296 = load i32, ptr %184, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 49
  br i1 %298, label %299, label %365

299:                                              ; preds = %293
  %300 = load ptr, ptr %291, align 8, !tbaa !30
  %301 = load ptr, ptr %292, align 8, !tbaa !30
  %302 = load i32, ptr %301, align 8
  %303 = and i32 %302, 65535
  %304 = icmp eq i32 %303, 30
  br i1 %304, label %305, label %365

305:                                              ; preds = %299
  %306 = load i32, ptr %300, align 8
  %307 = trunc i32 %306 to i16
  switch i16 %307, label %365 [
    i16 122, label %308
    i16 49, label %308
  ]

308:                                              ; preds = %305, %305
  %309 = getelementptr inbounds %struct.rtx_def, ptr %300, i64 0, i32 1
  %310 = getelementptr inbounds [1 x %union.rtunion_def], ptr %309, i64 0, i64 %295
  %311 = load ptr, ptr %310, align 8, !tbaa !30
  %312 = load i32, ptr %311, align 8
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 37
  br i1 %314, label %315, label %365

315:                                              ; preds = %308
  %316 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %311) #25
  %317 = icmp ugt i32 %316, 52
  br i1 %317, label %365, label %318

318:                                              ; preds = %315
  %319 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %316) #25
  %320 = icmp ne i8 %319, 0
  %321 = load <4 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %322 = insertelement <4 x ptr> poison, ptr %311, i64 0
  %323 = shufflevector <4 x ptr> %322, <4 x ptr> poison, <4 x i32> zeroinitializer
  %324 = icmp eq <4 x ptr> %323, %321
  %325 = freeze <4 x i1> %324
  %326 = bitcast <4 x i1> %325 to i4
  %327 = icmp ne i4 %326, 0
  %328 = or i1 %320, %327
  br i1 %328, label %329, label %365

329:                                              ; preds = %318
  %330 = xor i64 %295, 1
  %331 = getelementptr inbounds [1 x %union.rtunion_def], ptr %309, i64 0, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !30
  %333 = tail call fastcc i32 @maybe_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %184, i8 noundef zeroext %20, ptr noundef nonnull %331) #25
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %365

335:                                              ; preds = %329
  %336 = load ptr, ptr %292, align 8, !tbaa !30
  %337 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %338 = load i64, ptr %337, align 8, !tbaa !30
  %339 = tail call ptr @plus_constant(ptr noundef nonnull %311, i64 noundef %338) #24
  %340 = load ptr, ptr %291, align 8, !tbaa !30
  %341 = load i32, ptr %340, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 49
  %344 = load i32, ptr %184, align 8
  %345 = lshr i32 %344, 16
  %346 = and i32 %345, 255
  %347 = select i1 %294, ptr %339, ptr %332
  %348 = select i1 %294, ptr %332, ptr %339
  %349 = select i1 %343, i32 49, i32 122
  %350 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %349, i32 noundef %346, ptr noundef %347, ptr noundef %348) #24
  store ptr %350, ptr %183, align 8, !tbaa !31
  %351 = getelementptr inbounds %struct.rtx_def, ptr %350, i64 0, i32 1
  %352 = getelementptr inbounds [1 x %union.rtunion_def], ptr %351, i64 0, i64 %295
  %353 = load ptr, ptr %352, align 8, !tbaa !30
  %354 = load i32, ptr %350, align 8
  %355 = lshr i32 %354, 16
  %356 = and i32 %355, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef %353, ptr noundef nonnull %352, i32 noundef 13, i32 noundef %356, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  %357 = getelementptr inbounds [1 x %union.rtunion_def], ptr %351, i64 0, i64 %330
  %358 = load ptr, ptr %357, align 8, !tbaa !30
  %359 = load i32, ptr %350, align 8
  %360 = and i32 %359, 65535
  %361 = load ptr, ptr %352, align 8, !tbaa !30
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %358, i32 noundef 1, i32 noundef %360, i32 noundef %363, ptr noundef nonnull %357, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %7) #25
  br label %419

365:                                              ; preds = %293, %305, %299, %315, %308, %318, %329
  br i1 %294, label %293, label %366, !llvm.loop !37

366:                                              ; preds = %365
  store ptr %184, ptr %9, align 8, !tbaa !31
  %367 = load i32, ptr %184, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 49
  br i1 %369, label %370, label %383

370:                                              ; preds = %366
  %371 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %184) #25
  store ptr %371, ptr %9, align 8, !tbaa !31
  %372 = icmp eq ptr %371, %184
  br i1 %372, label %383, label %373

373:                                              ; preds = %370
  %374 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %371, i8 noundef zeroext %20) #25, !range !34
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %373
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %377 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %371, ptr noundef %7) #25
  store ptr %377, ptr %9, align 8, !tbaa !31
  %378 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %377, i8 noundef zeroext %20) #25, !range !34
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %379, %376
  store ptr %377, ptr %183, align 8, !tbaa !31
  br label %419

383:                                              ; preds = %366, %379, %373, %370
  %384 = load i32, ptr %184, align 8
  %385 = and i32 %384, 65535
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !35
  %389 = icmp eq i32 %388, 9
  br i1 %389, label %390, label %417

390:                                              ; preds = %383
  %391 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %184, i8 noundef zeroext %20) #25, !range !34
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %417

393:                                              ; preds = %390
  %394 = load i32, ptr %184, align 8
  %395 = lshr i32 %394, 16
  %396 = and i32 %395, 255
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %393
  %399 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !39
  %400 = tail call i32 %399(i8 noundef zeroext %20) #24
  br label %401

401:                                              ; preds = %398, %393
  %402 = phi i32 [ %400, %398 ], [ %396, %393 ]
  br i1 %10, label %403, label %414

403:                                              ; preds = %401
  %404 = load i32, ptr %184, align 8
  %405 = and i32 %404, 67174399
  %406 = icmp eq i32 %405, 67108909
  br i1 %406, label %407, label %414

407:                                              ; preds = %403
  %408 = load ptr, ptr %1, align 8, !tbaa !31
  %409 = tail call ptr @copy_rtx(ptr noundef %408) #24
  store ptr %409, ptr %1, align 8, !tbaa !31
  %410 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1
  br i1 %176, label %414, label %411

411:                                              ; preds = %407
  %412 = load ptr, ptr %410, align 8, !tbaa !31
  %413 = getelementptr inbounds %struct.rtx_def, ptr %412, i64 0, i32 1
  br label %414

414:                                              ; preds = %407, %411, %403, %401
  %415 = phi ptr [ %413, %411 ], [ %410, %407 ], [ %183, %403 ], [ %183, %401 ]
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %184, ptr noundef %415, i32 noundef 13, i32 noundef %402, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  %416 = zext i1 %176 to i32
  br label %419

417:                                              ; preds = %390, %383
  %418 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %184, i32 noundef 0, i32 noundef 43, i32 noundef 38, ptr noundef %183, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #25
  br label %419

419:                                              ; preds = %335, %235, %227, %170, %167, %160, %131, %107, %113, %119, %417, %414, %382, %285, %278, %241, %135, %31
  %420 = phi i32 [ 1, %31 ], [ 1, %135 ], [ %246, %241 ], [ 0, %278 ], [ %289, %285 ], [ 0, %335 ], [ 0, %382 ], [ %418, %417 ], [ %416, %414 ], [ 0, %119 ], [ 0, %113 ], [ 0, %107 ], [ 0, %131 ], [ 0, %160 ], [ 0, %167 ], [ 0, %170 ], [ 0, %227 ], [ 0, %235 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  ret i32 %420
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @clear_secondary_mem() local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @secondary_memlocs, i8 0, i64 696, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @push_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %12, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  store i32 2956, ptr %13, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #23
  store i32 2956, ptr %14, align 4, !tbaa !35
  %15 = icmp eq i32 %5, 0
  %16 = icmp ne ptr %0, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, ptr %0, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %21, %18 ], [ %5, %11 ]
  %24 = icmp eq i32 %6, 0
  %25 = icmp ne ptr %1, null
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, ptr %1, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %30, %27 ], [ %6, %22 ]
  %33 = icmp eq ptr %0, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %40 = icmp slt i32 %39, 53
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %43 = zext nneg i32 %39 to i64
  %44 = getelementptr inbounds i16, ptr %42, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !40
  %46 = icmp sgt i16 %45, -1
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %49 = getelementptr inbounds ptr, ptr %48, i64 %43
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #24
  br label %53

53:                                               ; preds = %52, %47, %41, %38, %34, %31
  br i1 %25, label %54, label %96

54:                                               ; preds = %53
  %55 = load i32, ptr %1, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %60 = icmp slt i32 %59, 53
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %63 = zext nneg i32 %59 to i64
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !40
  %66 = icmp sgt i16 %65, -1
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %69 = getelementptr inbounds ptr, ptr %68, i64 %63
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #24
  br label %73

73:                                               ; preds = %72, %67, %61, %58, %54
  br i1 %16, label %74, label %267

74:                                               ; preds = %73
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !30
  %84 = load i32, ptr %83, align 8
  %85 = trunc i32 %84 to i16
  switch i16 %85, label %99 [
    i16 77, label %86
    i16 76, label %86
    i16 79, label %86
    i16 75, label %90
    i16 74, label %90
    i16 78, label %90
  ]

86:                                               ; preds = %81, %81, %81
  %87 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !30
  %89 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %88) #24
  store ptr %89, ptr %12, align 8, !tbaa !31
  br label %96

90:                                               ; preds = %81, %81, %81
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !30
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !30
  %95 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %1, ptr noundef %94) #24
  br label %99

96:                                               ; preds = %53, %86
  %97 = phi ptr [ %89, %86 ], [ %0, %53 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %258, label %99

99:                                               ; preds = %90, %81, %78, %74, %96
  %100 = phi ptr [ %1, %96 ], [ %1, %81 ], [ %95, %90 ], [ %1, %78 ], [ %1, %74 ]
  %101 = phi ptr [ %97, %96 ], [ %0, %81 ], [ %0, %90 ], [ %0, %78 ], [ %0, %74 ]
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 39
  br i1 %104, label %105, label %227

105:                                              ; preds = %99
  %106 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %101) #24
  %107 = icmp ne i32 %7, 0
  %108 = or i32 %106, %7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %227, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !30
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %115, i32 noundef %23, i32 noundef %4) #24
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %227

118:                                              ; preds = %110
  %119 = load ptr, ptr %111, align 8, !tbaa !30
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !35
  %125 = icmp eq i32 %124, 9
  %126 = icmp eq i32 %121, 49
  %127 = or i1 %107, %126
  %128 = or i1 %125, %127
  br i1 %128, label %206, label %129

129:                                              ; preds = %118
  %130 = icmp eq i32 %121, 37
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %119) #25
  %133 = icmp ugt i32 %132, 52
  br i1 %133, label %136, label %147

134:                                              ; preds = %129
  %135 = icmp eq i32 %121, 43
  br i1 %135, label %136, label %180

136:                                              ; preds = %134, %131
  %137 = zext i32 %23 to i64
  %138 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !30
  %140 = lshr i32 %120, 16
  %141 = and i32 %140, 255
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !30
  %145 = icmp ugt i8 %139, %144
  br i1 %145, label %206, label %146

146:                                              ; preds = %136
  br i1 %130, label %147, label %180

147:                                              ; preds = %131, %146
  %148 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %119) #25
  %149 = icmp ult i32 %148, 53
  br i1 %149, label %150, label %180

150:                                              ; preds = %147
  %151 = icmp eq ptr %100, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %150
  %153 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %101) #24
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %180, label %155

155:                                              ; preds = %152, %150
  %156 = zext i32 %23 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !30
  %159 = icmp ult i8 %158, 5
  br i1 %159, label %160, label %176

160:                                              ; preds = %155
  %161 = load ptr, ptr %111, align 8, !tbaa !30
  %162 = load i32, ptr %161, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !30
  %168 = icmp ugt i8 %167, 4
  br i1 %168, label %169, label %176

169:                                              ; preds = %160
  %170 = lshr i8 %167, 2
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %161) #25
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %172, i64 %165
  %174 = load i8, ptr %173, align 1, !tbaa !30
  %175 = icmp eq i8 %170, %174
  br i1 %175, label %176, label %206

176:                                              ; preds = %169, %160, %155
  %177 = tail call i32 @subreg_regno(ptr noundef nonnull %101) #24
  %178 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %177, i32 noundef %23) #24
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %206, label %180

180:                                              ; preds = %134, %176, %152, %147, %146
  %181 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %4, i32 noundef %23, ptr noundef nonnull %101) #25
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %111, align 8, !tbaa !30
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %4, i32 noundef %187, ptr noundef nonnull %184) #25
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %206, label %190

190:                                              ; preds = %183, %180
  %191 = load ptr, ptr %111, align 8, !tbaa !30
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 37
  br i1 %194, label %195, label %227

195:                                              ; preds = %190
  %196 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %191) #25
  %197 = icmp ult i32 %196, 53
  br i1 %197, label %198, label %227

198:                                              ; preds = %195
  %199 = lshr i32 %192, 16
  %200 = and i32 %199, 255
  %201 = zext nneg i32 %196 to i64
  %202 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !35
  %204 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %200, i32 noundef %23, i32 noundef %203) #24
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %227, label %206

206:                                              ; preds = %198, %183, %176, %169, %136, %118
  %207 = load ptr, ptr %111, align 8, !tbaa !31
  store ptr %207, ptr %12, align 8, !tbaa !31
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 43
  br i1 %210, label %211, label %223

211:                                              ; preds = %206
  %212 = lshr i32 %208, 16
  %213 = and i32 %212, 255
  %214 = zext nneg i32 %213 to i64
  %215 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !30
  %217 = zext i32 %23 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !30
  %220 = icmp ugt i8 %216, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1069, ptr noundef nonnull @.str.1) #24
  %222 = load i32, ptr %207, align 8
  br label %223

223:                                              ; preds = %221, %211, %206
  %224 = phi i32 [ %222, %221 ], [ %208, %211 ], [ %208, %206 ]
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  br label %227

227:                                              ; preds = %110, %223, %198, %195, %190, %105, %99
  %228 = phi ptr [ %101, %99 ], [ %101, %105 ], [ %101, %190 ], [ %101, %195 ], [ %101, %198 ], [ %207, %223 ], [ %101, %110 ]
  %229 = phi ptr [ null, %99 ], [ null, %105 ], [ null, %190 ], [ null, %195 ], [ null, %198 ], [ %2, %223 ], [ null, %110 ]
  %230 = phi i32 [ %23, %99 ], [ %23, %105 ], [ %23, %190 ], [ %23, %195 ], [ %23, %198 ], [ %226, %223 ], [ %23, %110 ]
  %231 = phi ptr [ %2, %99 ], [ %2, %105 ], [ %2, %190 ], [ %2, %195 ], [ %2, %198 ], [ %111, %223 ], [ %2, %110 ]
  %232 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef nonnull %228, i32 noundef %230, i32 noundef 0) #25, !range !42
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %258, label %234

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !30
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 37
  br i1 %239, label %240, label %254

240:                                              ; preds = %234
  %241 = lshr i32 %237, 16
  %242 = and i32 %241, 255
  %243 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %236) #25
  %244 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1, i32 0, i32 0, i64 1
  %245 = load i32, ptr %244, align 8, !tbaa !30
  %246 = load i32, ptr %228, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = tail call i32 @subreg_regno_offset(i32 noundef %243, i32 noundef %242, i32 noundef %245, i32 noundef %248) #24
  %250 = load ptr, ptr %235, align 8, !tbaa !30
  %251 = tail call fastcc i32 @rhs_regno(ptr noundef %250) #25
  %252 = tail call fastcc i32 @find_valid_class(i32 noundef %230, i32 noundef %242, i32 noundef %249, i32 noundef %251) #25, !range !43
  %253 = load ptr, ptr %235, align 8, !tbaa !30
  br label %254

254:                                              ; preds = %240, %234
  %255 = phi ptr [ %253, %240 ], [ %236, %234 ]
  %256 = phi i32 [ %252, %240 ], [ %4, %234 ]
  %257 = tail call i32 @push_reload(ptr noundef %255, ptr noundef null, ptr noundef nonnull %235, ptr noundef null, i32 noundef %256, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef %10) #25
  br label %258

258:                                              ; preds = %96, %254, %227
  %259 = phi i1 [ false, %254 ], [ false, %227 ], [ true, %96 ]
  %260 = phi ptr [ %231, %254 ], [ %231, %227 ], [ %2, %96 ]
  %261 = phi i32 [ %230, %254 ], [ %230, %227 ], [ %23, %96 ]
  %262 = phi ptr [ %229, %254 ], [ %229, %227 ], [ null, %96 ]
  %263 = phi ptr [ %228, %254 ], [ %228, %227 ], [ null, %96 ]
  %264 = phi ptr [ %100, %254 ], [ %100, %227 ], [ %1, %96 ]
  %265 = phi i32 [ 1, %254 ], [ 0, %227 ], [ 0, %96 ]
  %266 = icmp eq ptr %264, null
  br i1 %266, label %429, label %267

267:                                              ; preds = %73, %258
  %268 = phi i32 [ %265, %258 ], [ 0, %73 ]
  %269 = phi ptr [ %264, %258 ], [ %1, %73 ]
  %270 = phi ptr [ %263, %258 ], [ null, %73 ]
  %271 = phi ptr [ %262, %258 ], [ null, %73 ]
  %272 = phi i32 [ %261, %258 ], [ %23, %73 ]
  %273 = phi ptr [ %260, %258 ], [ %2, %73 ]
  %274 = phi i1 [ %259, %258 ], [ true, %73 ]
  %275 = load i32, ptr %269, align 8
  %276 = and i32 %275, 65535
  %277 = icmp eq i32 %276, 39
  br i1 %277, label %278, label %390

278:                                              ; preds = %267
  %279 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %269) #24
  %280 = icmp ne i32 %7, 0
  %281 = or i32 %279, %7
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %390, label %283

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !30
  %286 = load i32, ptr %285, align 8
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %288, i32 noundef %32, i32 noundef %4) #24
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %390

291:                                              ; preds = %283
  %292 = load ptr, ptr %284, align 8, !tbaa !30
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 65535
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !35
  %298 = icmp eq i32 %297, 9
  %299 = or i1 %280, %298
  br i1 %299, label %369, label %300

300:                                              ; preds = %291
  %301 = icmp eq i32 %294, 37
  br i1 %301, label %302, label %305

302:                                              ; preds = %300
  %303 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %292) #25
  %304 = icmp ugt i32 %303, 52
  br i1 %304, label %307, label %318

305:                                              ; preds = %300
  %306 = icmp eq i32 %294, 43
  br i1 %306, label %307, label %343

307:                                              ; preds = %305, %302
  %308 = zext i32 %32 to i64
  %309 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !30
  %311 = lshr i32 %293, 16
  %312 = and i32 %311, 255
  %313 = zext nneg i32 %312 to i64
  %314 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !30
  %316 = icmp ugt i8 %310, %315
  br i1 %316, label %369, label %317

317:                                              ; preds = %307
  br i1 %301, label %318, label %343

318:                                              ; preds = %302, %317
  %319 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %292) #25
  %320 = icmp ult i32 %319, 53
  br i1 %320, label %321, label %343

321:                                              ; preds = %318
  %322 = zext i32 %32 to i64
  %323 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !30
  %325 = icmp ult i8 %324, 5
  br i1 %325, label %326, label %339

326:                                              ; preds = %321
  %327 = lshr i32 %293, 16
  %328 = and i32 %327, 255
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !30
  %332 = icmp ugt i8 %331, 4
  br i1 %332, label %333, label %339

333:                                              ; preds = %326
  %334 = lshr i8 %331, 2
  %335 = zext nneg i32 %319 to i64
  %336 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %335, i64 %329
  %337 = load i8, ptr %336, align 1, !tbaa !30
  %338 = icmp eq i8 %334, %337
  br i1 %338, label %339, label %369

339:                                              ; preds = %333, %326, %321
  %340 = tail call i32 @subreg_regno(ptr noundef nonnull %269) #24
  %341 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %340, i32 noundef %32) #24
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %369, label %343

343:                                              ; preds = %305, %339, %318, %317
  %344 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %4, i32 noundef %32, ptr noundef nonnull %269) #25
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %353, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr %284, align 8, !tbaa !30
  %348 = load i32, ptr %347, align 8
  %349 = lshr i32 %348, 16
  %350 = and i32 %349, 255
  %351 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %4, i32 noundef %350, ptr noundef nonnull %347) #25
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %369, label %353

353:                                              ; preds = %346, %343
  %354 = load ptr, ptr %284, align 8, !tbaa !30
  %355 = load i32, ptr %354, align 8
  %356 = and i32 %355, 65535
  %357 = icmp eq i32 %356, 37
  br i1 %357, label %358, label %390

358:                                              ; preds = %353
  %359 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %354) #25
  %360 = icmp ult i32 %359, 53
  br i1 %360, label %361, label %390

361:                                              ; preds = %358
  %362 = lshr i32 %355, 16
  %363 = and i32 %362, 255
  %364 = zext nneg i32 %359 to i64
  %365 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !35
  %367 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %363, i32 noundef %32, i32 noundef %366) #24
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %390, label %369

369:                                              ; preds = %361, %346, %339, %333, %307, %291
  %370 = load ptr, ptr %284, align 8, !tbaa !31
  %371 = load i32, ptr %370, align 8
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 43
  br i1 %373, label %374, label %386

374:                                              ; preds = %369
  %375 = lshr i32 %371, 16
  %376 = and i32 %375, 255
  %377 = zext nneg i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !30
  %380 = zext i32 %32 to i64
  %381 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !30
  %383 = icmp ugt i8 %379, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %374
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1162, ptr noundef nonnull @.str.1) #24
  %385 = load i32, ptr %370, align 8
  br label %386

386:                                              ; preds = %369, %374, %384
  %387 = phi i32 [ %371, %369 ], [ %371, %374 ], [ %385, %384 ]
  %388 = lshr i32 %387, 16
  %389 = and i32 %388, 255
  br label %390

390:                                              ; preds = %283, %386, %361, %358, %353, %278, %267
  %391 = phi i32 [ %32, %267 ], [ %32, %278 ], [ %32, %353 ], [ %32, %358 ], [ %32, %361 ], [ %389, %386 ], [ %32, %283 ]
  %392 = phi ptr [ null, %267 ], [ null, %278 ], [ null, %353 ], [ null, %358 ], [ null, %361 ], [ %3, %386 ], [ null, %283 ]
  %393 = phi ptr [ %3, %267 ], [ %3, %278 ], [ %3, %353 ], [ %3, %358 ], [ %3, %361 ], [ %284, %386 ], [ %3, %283 ]
  %394 = phi ptr [ %269, %267 ], [ %269, %278 ], [ %269, %353 ], [ %269, %358 ], [ %269, %361 ], [ %370, %386 ], [ %269, %283 ]
  %395 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef nonnull %394, i32 noundef %391, i32 noundef 1) #25, !range !42
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %414, label %397

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !30
  %400 = load i32, ptr %399, align 8
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  %403 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %399) #25
  %404 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 1
  %405 = load i32, ptr %404, align 8, !tbaa !30
  %406 = load i32, ptr %394, align 8
  %407 = lshr i32 %406, 16
  %408 = and i32 %407, 255
  %409 = tail call i32 @subreg_regno_offset(i32 noundef %403, i32 noundef %402, i32 noundef %405, i32 noundef %408) #24
  %410 = load ptr, ptr %398, align 8, !tbaa !30
  %411 = tail call fastcc i32 @rhs_regno(ptr noundef %410) #25
  %412 = tail call fastcc i32 @find_valid_class(i32 noundef %391, i32 noundef %402, i32 noundef %409, i32 noundef %411) #25, !range !43
  %413 = tail call i32 @push_reload(ptr noundef nonnull %399, ptr noundef nonnull %399, ptr noundef nonnull %398, ptr noundef nonnull %398, i32 noundef %412, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef 9) #25
  br label %414

414:                                              ; preds = %397, %390
  %415 = phi i32 [ 1, %397 ], [ %268, %390 ]
  br i1 %274, label %463, label %416

416:                                              ; preds = %414
  %417 = load i32, ptr %394, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 43
  br i1 %419, label %420, label %431

420:                                              ; preds = %416
  %421 = load i32, ptr %270, align 8
  %422 = trunc i32 %421 to i16
  switch i16 %422, label %431 [
    i16 37, label %423
    i16 43, label %423
    i16 49, label %423
  ]

423:                                              ; preds = %420, %420, %420
  %424 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !30
  %426 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %270, ptr noundef %425) #25
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i32
  br label %431

429:                                              ; preds = %258
  %430 = icmp eq ptr %263, null
  br i1 %430, label %493, label %431

431:                                              ; preds = %423, %420, %416, %429
  %432 = phi ptr [ %262, %429 ], [ %271, %423 ], [ %271, %420 ], [ %271, %416 ]
  %433 = phi i32 [ %261, %429 ], [ %272, %423 ], [ %272, %420 ], [ %272, %416 ]
  %434 = phi ptr [ %260, %429 ], [ %273, %423 ], [ %273, %420 ], [ %273, %416 ]
  %435 = phi ptr [ %263, %429 ], [ %270, %423 ], [ %270, %420 ], [ %270, %416 ]
  %436 = phi i32 [ 0, %429 ], [ %428, %423 ], [ 0, %420 ], [ 0, %416 ]
  %437 = phi i1 [ false, %429 ], [ true, %423 ], [ true, %420 ], [ true, %416 ]
  %438 = phi ptr [ null, %429 ], [ %394, %423 ], [ %394, %420 ], [ %394, %416 ]
  %439 = phi ptr [ %3, %429 ], [ %393, %423 ], [ %393, %420 ], [ %393, %416 ]
  %440 = phi ptr [ null, %429 ], [ %392, %423 ], [ %392, %420 ], [ %392, %416 ]
  %441 = phi i32 [ %32, %429 ], [ %391, %423 ], [ %391, %420 ], [ %391, %416 ]
  %442 = phi i32 [ %265, %429 ], [ %415, %423 ], [ %415, %420 ], [ %415, %416 ]
  %443 = load i32, ptr %435, align 8
  %444 = and i32 %443, 65535
  %445 = icmp eq i32 %444, 39
  br i1 %445, label %446, label %462

446:                                              ; preds = %431
  %447 = getelementptr inbounds %struct.rtx_def, ptr %435, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !30
  %449 = load i32, ptr %448, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 37
  br i1 %451, label %452, label %462

452:                                              ; preds = %446
  %453 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %448) #25
  %454 = icmp ugt i32 %453, 52
  %455 = icmp ne i32 %442, 0
  %456 = or i1 %455, %454
  br i1 %456, label %462, label %457

457:                                              ; preds = %452
  %458 = lshr i32 %443, 16
  %459 = and i32 %458, 255
  %460 = tail call i32 @subreg_regno(ptr noundef nonnull %435) #24
  %461 = tail call ptr @gen_rtx_REG(i32 noundef %459, i32 noundef %460) #24
  store ptr %461, ptr %12, align 8, !tbaa !31
  br i1 %437, label %463, label %493

462:                                              ; preds = %452, %446, %431
  br i1 %437, label %463, label %493

463:                                              ; preds = %414, %457, %462
  %464 = phi ptr [ %432, %457 ], [ %432, %462 ], [ %271, %414 ]
  %465 = phi i32 [ %433, %457 ], [ %433, %462 ], [ %272, %414 ]
  %466 = phi ptr [ %434, %457 ], [ %434, %462 ], [ %273, %414 ]
  %467 = phi ptr [ %461, %457 ], [ %435, %462 ], [ %270, %414 ]
  %468 = phi i32 [ 0, %457 ], [ %442, %462 ], [ %415, %414 ]
  %469 = phi i32 [ %441, %457 ], [ %441, %462 ], [ %391, %414 ]
  %470 = phi ptr [ %440, %457 ], [ %440, %462 ], [ %392, %414 ]
  %471 = phi ptr [ %439, %457 ], [ %439, %462 ], [ %393, %414 ]
  %472 = phi ptr [ %438, %457 ], [ %438, %462 ], [ %394, %414 ]
  %473 = phi i32 [ %436, %457 ], [ %436, %462 ], [ 0, %414 ]
  %474 = load i32, ptr %472, align 8
  %475 = and i32 %474, 65535
  %476 = icmp eq i32 %475, 39
  br i1 %476, label %477, label %493

477:                                              ; preds = %463
  %478 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !30
  %480 = load i32, ptr %479, align 8
  %481 = and i32 %480, 65535
  %482 = icmp eq i32 %481, 37
  br i1 %482, label %483, label %493

483:                                              ; preds = %477
  %484 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %479) #25
  %485 = icmp ugt i32 %484, 52
  %486 = icmp ne i32 %468, 0
  %487 = or i1 %486, %485
  br i1 %487, label %493, label %488

488:                                              ; preds = %483
  %489 = lshr i32 %474, 16
  %490 = and i32 %489, 255
  %491 = tail call i32 @subreg_regno(ptr noundef nonnull %472) #24
  %492 = tail call ptr @gen_rtx_REG(i32 noundef %490, i32 noundef %491) #24
  br label %493

493:                                              ; preds = %429, %488, %483, %477, %463, %462, %457
  %494 = phi ptr [ %432, %457 ], [ %432, %462 ], [ %464, %463 ], [ %464, %477 ], [ %464, %488 ], [ %464, %483 ], [ %262, %429 ]
  %495 = phi i32 [ %433, %457 ], [ %433, %462 ], [ %465, %463 ], [ %465, %477 ], [ %465, %488 ], [ %465, %483 ], [ %261, %429 ]
  %496 = phi ptr [ %434, %457 ], [ %434, %462 ], [ %466, %463 ], [ %466, %477 ], [ %466, %488 ], [ %466, %483 ], [ %260, %429 ]
  %497 = phi ptr [ %461, %457 ], [ %435, %462 ], [ %467, %463 ], [ %467, %477 ], [ %467, %488 ], [ %467, %483 ], [ %263, %429 ]
  %498 = phi i32 [ %441, %457 ], [ %441, %462 ], [ %469, %463 ], [ %469, %477 ], [ %469, %488 ], [ %469, %483 ], [ %32, %429 ]
  %499 = phi ptr [ %440, %457 ], [ %440, %462 ], [ %470, %463 ], [ %470, %477 ], [ %470, %488 ], [ %470, %483 ], [ null, %429 ]
  %500 = phi ptr [ %439, %457 ], [ %439, %462 ], [ %471, %463 ], [ %471, %477 ], [ %471, %488 ], [ %471, %483 ], [ %3, %429 ]
  %501 = phi i32 [ %436, %457 ], [ %436, %462 ], [ %473, %463 ], [ %473, %477 ], [ %473, %488 ], [ %473, %483 ], [ 0, %429 ]
  %502 = phi ptr [ null, %457 ], [ null, %462 ], [ %472, %463 ], [ %472, %477 ], [ %492, %488 ], [ %472, %483 ], [ null, %429 ]
  %503 = icmp eq ptr %497, null
  br i1 %503, label %506, label %504

504:                                              ; preds = %493
  %505 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %497, i32 noundef %4) #24
  br label %506

506:                                              ; preds = %504, %493
  %507 = phi i32 [ %505, %504 ], [ %4, %493 ]
  %508 = icmp eq ptr %502, null
  br i1 %508, label %511, label %509

509:                                              ; preds = %506
  %510 = tail call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %502, i32 noundef %507) #24
  br label %511

511:                                              ; preds = %509, %506
  %512 = phi i32 [ %510, %509 ], [ %507, %506 ]
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %511
  %515 = icmp ne i32 %8, 0
  %516 = icmp eq i32 %10, 1
  %517 = and i1 %515, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %514, %511
  br label %519

519:                                              ; preds = %518, %514
  %520 = phi i32 [ %512, %518 ], [ %4, %514 ]
  %521 = icmp eq ptr %494, null
  br i1 %521, label %526, label %522

522:                                              ; preds = %519
  %523 = icmp eq i32 %495, 14
  br i1 %523, label %524, label %525

524:                                              ; preds = %522
  switch i32 %520, label %525 [
    i32 26, label %539
    i32 13, label %539
    i32 12, label %539
    i32 11, label %539
  ]

525:                                              ; preds = %524, %522
  br label %539

526:                                              ; preds = %519
  br i1 %503, label %539, label %527

527:                                              ; preds = %526
  %528 = load i32, ptr %497, align 8
  %529 = and i32 %528, 65535
  %530 = icmp eq i32 %529, 39
  br i1 %530, label %531, label %539

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !30
  %534 = load i32, ptr %533, align 8
  %535 = and i32 %534, 16711680
  %536 = icmp eq i32 %535, 917504
  br i1 %536, label %537, label %538

537:                                              ; preds = %531
  switch i32 %520, label %538 [
    i32 26, label %539
    i32 13, label %539
    i32 12, label %539
    i32 11, label %539
  ]

538:                                              ; preds = %537, %531
  br label %539

539:                                              ; preds = %538, %537, %537, %537, %537, %525, %524, %524, %524, %524, %526, %527
  %540 = phi i32 [ %520, %527 ], [ %520, %526 ], [ %520, %525 ], [ 9, %524 ], [ 9, %524 ], [ 9, %524 ], [ 9, %524 ], [ %520, %538 ], [ 9, %537 ], [ 9, %537 ], [ 9, %537 ], [ 9, %537 ]
  %541 = icmp eq ptr %499, null
  br i1 %541, label %546, label %542

542:                                              ; preds = %539
  %543 = icmp eq i32 %498, 14
  br i1 %543, label %544, label %545

544:                                              ; preds = %542
  switch i32 %540, label %545 [
    i32 26, label %546
    i32 13, label %546
    i32 12, label %546
    i32 11, label %546
  ]

545:                                              ; preds = %544, %542
  br label %546

546:                                              ; preds = %545, %544, %544, %544, %544, %539
  %547 = phi i32 [ %540, %539 ], [ %540, %545 ], [ 9, %544 ], [ 9, %544 ], [ 9, %544 ], [ 9, %544 ]
  br i1 %508, label %560, label %548

548:                                              ; preds = %546
  %549 = load i32, ptr %502, align 8
  %550 = and i32 %549, 65535
  %551 = icmp eq i32 %550, 39
  br i1 %551, label %552, label %560

552:                                              ; preds = %548
  %553 = getelementptr inbounds %struct.rtx_def, ptr %502, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !30
  %555 = load i32, ptr %554, align 8
  %556 = and i32 %555, 16711680
  %557 = icmp eq i32 %556, 917504
  br i1 %557, label %558, label %559

558:                                              ; preds = %552
  switch i32 %547, label %559 [
    i32 26, label %560
    i32 13, label %560
    i32 12, label %560
    i32 11, label %560
  ]

559:                                              ; preds = %558, %552
  br label %560

560:                                              ; preds = %559, %558, %558, %558, %558, %548, %546
  %561 = phi i32 [ %547, %548 ], [ %547, %546 ], [ %547, %559 ], [ 9, %558 ], [ 9, %558 ], [ 9, %558 ], [ 9, %558 ]
  %562 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !35
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %602, label %564

564:                                              ; preds = %560
  %565 = zext i32 %495 to i64
  %566 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !30
  %568 = zext i32 %498 to i64
  %569 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %568
  %570 = load i8, ptr %569, align 1, !tbaa !30
  %571 = icmp ugt i8 %567, %570
  %572 = select i1 %571, i32 %495, i32 %498
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %564
  %575 = load ptr, ptr @this_insn, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %575, ptr noundef nonnull @.str.2) #24
  %576 = load i32, ptr @word_mode, align 4
  %577 = select i1 %503, i32 %495, i32 %576
  %578 = select i1 %508, i32 %498, i32 %576
  br label %579

579:                                              ; preds = %574, %564
  %580 = phi i32 [ %498, %564 ], [ %578, %574 ]
  %581 = phi i32 [ %495, %564 ], [ %577, %574 ]
  %582 = phi i32 [ %572, %564 ], [ %576, %574 ]
  %583 = sext i32 %561 to i64
  %584 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %583
  br label %585

585:                                              ; preds = %579, %593
  %586 = phi i32 [ 0, %579 ], [ %594, %593 ]
  %587 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %586, i32 noundef %582) #24
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %593, label %589

589:                                              ; preds = %585
  %590 = load i64, ptr %584, align 8, !tbaa !44
  %591 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %590, i32 noundef %582, i32 noundef %586) #25, !range !45
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %593, label %602

593:                                              ; preds = %585, %589
  %594 = add nuw nsw i32 %586, 1
  %595 = icmp eq i32 %594, 53
  br i1 %595, label %596, label %585, !llvm.loop !46

596:                                              ; preds = %593
  %597 = load ptr, ptr @this_insn, align 8, !tbaa !31
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %597, ptr noundef nonnull @.str.3) #24
  %598 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !31
  %599 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %598) #24
  %600 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %601 = getelementptr inbounds %struct.rtx_def, ptr %600, i64 1
  store ptr %599, ptr %601, align 8, !tbaa !30
  br label %1145

602:                                              ; preds = %589, %560
  %603 = phi i32 [ %498, %560 ], [ %580, %589 ]
  %604 = phi i32 [ %495, %560 ], [ %581, %589 ]
  %605 = icmp eq i32 %561, 0
  br i1 %605, label %606, label %611

606:                                              ; preds = %602
  %607 = icmp ne i32 %8, 0
  %608 = icmp eq i32 %10, 1
  %609 = and i1 %607, %608
  br i1 %609, label %611, label %610

610:                                              ; preds = %606
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @.str.1) #24
  br label %611

611:                                              ; preds = %602, %606, %610
  %612 = call fastcc i32 @find_reusable_reload(ptr noundef nonnull %12, ptr noundef %502, i32 noundef %561, i32 noundef %10, i32 noundef %9, i32 noundef %501) #25
  %613 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %614 = icmp eq i32 %612, %613
  br i1 %614, label %615, label %714

615:                                              ; preds = %611
  %616 = load ptr, ptr %12, align 8
  %617 = icmp eq ptr %616, null
  br i1 %617, label %620, label %618

618:                                              ; preds = %615
  %619 = call fastcc i32 @push_secondary_reload(i32 noundef 1, ptr noundef nonnull %616, i32 noundef %9, i32 noundef %8, i32 noundef %561, i32 noundef %604, i32 noundef %10, ptr noundef nonnull %13, ptr noundef null) #25
  br label %620

620:                                              ; preds = %618, %615
  %621 = phi i32 [ %619, %618 ], [ -1, %615 ]
  br i1 %508, label %629, label %622

622:                                              ; preds = %620
  %623 = load i32, ptr %502, align 8
  %624 = and i32 %623, 65535
  %625 = icmp eq i32 %624, 38
  br i1 %625, label %629, label %626

626:                                              ; preds = %622
  %627 = call fastcc i32 @push_secondary_reload(i32 noundef 0, ptr noundef nonnull %502, i32 noundef %9, i32 noundef %8, i32 noundef %561, i32 noundef %603, i32 noundef %10, ptr noundef nonnull %14, ptr noundef null) #25
  %628 = load ptr, ptr %12, align 8
  br label %629

629:                                              ; preds = %626, %622, %620
  %630 = phi ptr [ %628, %626 ], [ %616, %622 ], [ %616, %620 ]
  %631 = phi i32 [ %627, %626 ], [ -1, %622 ], [ -1, %620 ]
  %632 = icmp eq ptr %630, null
  br i1 %632, label %654, label %633

633:                                              ; preds = %629
  %634 = load i32, ptr %630, align 8
  %635 = trunc i32 %634 to i16
  switch i16 %635, label %654 [
    i16 37, label %642
    i16 39, label %636
  ]

636:                                              ; preds = %633
  %637 = getelementptr inbounds %struct.rtx_def, ptr %630, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !30
  %639 = load i32, ptr %638, align 8
  %640 = and i32 %639, 65535
  %641 = icmp eq i32 %640, 37
  br i1 %641, label %642, label %654

642:                                              ; preds = %633, %636
  %643 = tail call i32 @reg_or_subregno(ptr noundef nonnull %630) #24
  %644 = icmp ult i32 %643, 53
  br i1 %644, label %645, label %654

645:                                              ; preds = %642
  %646 = tail call i32 @reg_or_subregno(ptr noundef nonnull %630) #24
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %647
  %649 = load i32, ptr %648, align 4, !tbaa !35
  %650 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %649, i32 noundef %561, i32 noundef %604, i32 noundef 1) #24
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %654, label %652

652:                                              ; preds = %645
  %653 = tail call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %604, i32 noundef %9, i32 noundef %10) #25
  br label %654

654:                                              ; preds = %633, %652, %645, %642, %636, %629
  %655 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656
  store ptr %630, ptr %657, align 8, !tbaa !47
  %658 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 1
  store ptr %502, ptr %658, align 8, !tbaa !49
  %659 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 2
  store i32 %561, ptr %659, align 8, !tbaa !50
  %660 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 3
  store i32 %604, ptr %660, align 4, !tbaa !51
  %661 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 4
  store i32 %603, ptr %661, align 8, !tbaa !52
  %662 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 11
  store ptr null, ptr %662, align 8, !tbaa !53
  %663 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 18
  %664 = trunc i32 %8 to i8
  %665 = load i8, ptr %663, align 8
  %666 = and i8 %664, 1
  %667 = and i8 %665, -2
  %668 = or disjoint i8 %667, %666
  %669 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 7
  store i32 0, ptr %669, align 4, !tbaa !54
  %670 = and i8 %668, -3
  store i8 %670, ptr %663, align 8
  %671 = icmp eq ptr %496, null
  br i1 %671, label %674, label %672

672:                                              ; preds = %654
  %673 = load ptr, ptr %496, align 8, !tbaa !31
  br label %674

674:                                              ; preds = %654, %672
  %675 = phi ptr [ %673, %672 ], [ null, %654 ]
  %676 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 8
  store ptr %675, ptr %676, align 8, !tbaa !55
  %677 = icmp eq ptr %500, null
  br i1 %677, label %680, label %678

678:                                              ; preds = %674
  %679 = load ptr, ptr %500, align 8, !tbaa !31
  br label %680

680:                                              ; preds = %674, %678
  %681 = phi ptr [ %679, %678 ], [ null, %674 ]
  %682 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 9
  store ptr %681, ptr %682, align 8, !tbaa !56
  %683 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 12
  store i32 %9, ptr %683, align 8, !tbaa !57
  %684 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 17
  store i32 %10, ptr %684, align 4, !tbaa !58
  %685 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 13
  store i32 %621, ptr %685, align 4, !tbaa !59
  %686 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 14
  store i32 %631, ptr %686, align 8, !tbaa !60
  %687 = load i32, ptr %13, align 4, !tbaa !35
  %688 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 15
  store i32 %687, ptr %688, align 4, !tbaa !61
  %689 = load i32, ptr %14, align 4, !tbaa !35
  %690 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 16
  store i32 %689, ptr %690, align 8, !tbaa !62
  %691 = and i8 %668, -7
  store i8 %691, ptr %663, align 8
  %692 = add nsw i32 %655, 1
  store i32 %692, ptr @n_reloads, align 4, !tbaa !35
  br i1 %508, label %896, label %693

693:                                              ; preds = %680
  %694 = load i32, ptr %502, align 8
  %695 = trunc i32 %694 to i16
  switch i16 %695, label %896 [
    i16 37, label %702
    i16 39, label %696
  ]

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.rtx_def, ptr %502, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !30
  %699 = load i32, ptr %698, align 8
  %700 = and i32 %699, 65535
  %701 = icmp eq i32 %700, 37
  br i1 %701, label %702, label %896

702:                                              ; preds = %693, %696
  %703 = tail call i32 @reg_or_subregno(ptr noundef nonnull %502) #24
  %704 = icmp ult i32 %703, 53
  br i1 %704, label %705, label %896

705:                                              ; preds = %702
  %706 = tail call i32 @reg_or_subregno(ptr noundef nonnull %502) #24
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %707
  %709 = load i32, ptr %708, align 4, !tbaa !35
  %710 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %561, i32 noundef %709, i32 noundef %603, i32 noundef 1) #24
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %896, label %712

712:                                              ; preds = %705
  %713 = tail call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %603, i32 noundef %9, i32 noundef %10) #25
  br label %896

714:                                              ; preds = %611
  %715 = icmp eq i32 %604, 0
  br i1 %715, label %728, label %716

716:                                              ; preds = %714
  %717 = zext i32 %604 to i64
  %718 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !30
  %720 = sext i32 %612 to i64
  %721 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %720, i32 3
  %722 = load i32, ptr %721, align 4, !tbaa !51
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !30
  %726 = icmp ugt i8 %719, %725
  br i1 %726, label %727, label %728

727:                                              ; preds = %716
  store i32 %604, ptr %721, align 4, !tbaa !51
  br label %728

728:                                              ; preds = %727, %716, %714
  %729 = icmp eq i32 %603, 0
  br i1 %729, label %742, label %730

730:                                              ; preds = %728
  %731 = zext i32 %603 to i64
  %732 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !30
  %734 = sext i32 %612 to i64
  %735 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %734, i32 4
  %736 = load i32, ptr %735, align 8, !tbaa !52
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !30
  %740 = icmp ugt i8 %733, %739
  br i1 %740, label %741, label %742

741:                                              ; preds = %730
  store i32 %603, ptr %735, align 8, !tbaa !52
  br label %742

742:                                              ; preds = %741, %730, %728
  %743 = load ptr, ptr %12, align 8
  %744 = icmp eq ptr %743, null
  br i1 %744, label %827, label %745

745:                                              ; preds = %742
  %746 = icmp eq ptr %496, null
  br i1 %746, label %749, label %747

747:                                              ; preds = %745
  %748 = load ptr, ptr %496, align 8, !tbaa !31
  br label %749

749:                                              ; preds = %745, %747
  %750 = phi ptr [ %748, %747 ], [ null, %745 ]
  %751 = sext i32 %612 to i64
  %752 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751
  %753 = load ptr, ptr %752, align 8, !tbaa !47
  %754 = icmp eq ptr %753, %743
  br i1 %754, label %784, label %755

755:                                              ; preds = %749
  %756 = tail call i32 @rtx_equal_p(ptr noundef nonnull %743, ptr noundef %753) #24
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %777, label %758

758:                                              ; preds = %755
  %759 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 18
  %760 = load i8, ptr %759, align 8
  %761 = and i8 %760, 1
  %762 = icmp ne i8 %761, 0
  %763 = icmp ne i32 %8, 0
  %764 = and i1 %763, %762
  br i1 %764, label %777, label %765

765:                                              ; preds = %758
  %766 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 12
  %767 = load i32, ptr %766, align 8, !tbaa !57
  %768 = icmp slt i32 %767, %9
  br i1 %768, label %769, label %774

769:                                              ; preds = %765
  %770 = tail call i32 @remove_address_replacements(ptr noundef nonnull %743) #25, !range !42
  %771 = load ptr, ptr %752, align 8, !tbaa !47
  store ptr %771, ptr %12, align 8, !tbaa !31
  %772 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 8
  %773 = load ptr, ptr %772, align 8, !tbaa !55
  br label %779

774:                                              ; preds = %765
  %775 = load ptr, ptr %752, align 8, !tbaa !47
  %776 = tail call i32 @remove_address_replacements(ptr noundef %775) #25, !range !42
  br label %777

777:                                              ; preds = %755, %758, %774
  %778 = load ptr, ptr %752, align 8, !tbaa !47
  br label %779

779:                                              ; preds = %777, %769
  %780 = phi ptr [ %743, %777 ], [ %771, %769 ]
  %781 = phi ptr [ %778, %777 ], [ %771, %769 ]
  %782 = phi ptr [ %750, %777 ], [ %773, %769 ]
  %783 = icmp eq ptr %781, null
  br i1 %783, label %801, label %784

784:                                              ; preds = %749, %779
  %785 = phi ptr [ %782, %779 ], [ %750, %749 ]
  %786 = phi ptr [ %781, %779 ], [ %743, %749 ]
  %787 = phi ptr [ %780, %779 ], [ %743, %749 ]
  %788 = load i32, ptr %787, align 8
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  %791 = zext nneg i32 %790 to i64
  %792 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %791
  %793 = load i8, ptr %792, align 1, !tbaa !30
  %794 = load i32, ptr %786, align 8
  %795 = lshr i32 %794, 16
  %796 = and i32 %795, 255
  %797 = zext nneg i32 %796 to i64
  %798 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !30
  %800 = icmp ugt i8 %793, %799
  br i1 %800, label %801, label %804

801:                                              ; preds = %784, %779
  %802 = phi ptr [ %785, %784 ], [ %782, %779 ]
  %803 = phi ptr [ %787, %784 ], [ %780, %779 ]
  store ptr %803, ptr %752, align 8, !tbaa !47
  br label %804

804:                                              ; preds = %801, %784
  %805 = phi ptr [ %802, %801 ], [ %785, %784 ]
  %806 = phi ptr [ %803, %801 ], [ %787, %784 ]
  %807 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 8
  %808 = load ptr, ptr %807, align 8, !tbaa !55
  %809 = icmp eq ptr %808, null
  br i1 %809, label %826, label %810

810:                                              ; preds = %804
  %811 = icmp eq ptr %805, null
  br i1 %811, label %827, label %812

812:                                              ; preds = %810
  %813 = load i32, ptr %805, align 8
  %814 = lshr i32 %813, 16
  %815 = and i32 %814, 255
  %816 = zext nneg i32 %815 to i64
  %817 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %816
  %818 = load i8, ptr %817, align 1, !tbaa !30
  %819 = load i32, ptr %808, align 8
  %820 = lshr i32 %819, 16
  %821 = and i32 %820, 255
  %822 = zext nneg i32 %821 to i64
  %823 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !30
  %825 = icmp ugt i8 %818, %824
  br i1 %825, label %826, label %827

826:                                              ; preds = %812, %804
  store ptr %805, ptr %807, align 8, !tbaa !55
  br label %827

827:                                              ; preds = %810, %812, %826, %742
  %828 = phi ptr [ %806, %810 ], [ %806, %812 ], [ %806, %826 ], [ null, %742 ]
  %829 = sext i32 %612 to i64
  br i1 %508, label %871, label %830

830:                                              ; preds = %827
  %831 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 1
  %832 = load ptr, ptr %831, align 8, !tbaa !49
  %833 = icmp eq ptr %832, null
  br i1 %833, label %848, label %834

834:                                              ; preds = %830
  %835 = load i32, ptr %502, align 8
  %836 = lshr i32 %835, 16
  %837 = and i32 %836, 255
  %838 = zext nneg i32 %837 to i64
  %839 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %838
  %840 = load i8, ptr %839, align 1, !tbaa !30
  %841 = load i32, ptr %832, align 8
  %842 = lshr i32 %841, 16
  %843 = and i32 %842, 255
  %844 = zext nneg i32 %843 to i64
  %845 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %844
  %846 = load i8, ptr %845, align 1, !tbaa !30
  %847 = icmp ugt i8 %840, %846
  br i1 %847, label %848, label %849

848:                                              ; preds = %834, %830
  store ptr %502, ptr %831, align 8, !tbaa !49
  br label %849

849:                                              ; preds = %848, %834
  %850 = icmp eq ptr %500, null
  br i1 %850, label %871, label %851

851:                                              ; preds = %849
  %852 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 9
  %853 = load ptr, ptr %852, align 8, !tbaa !56
  %854 = icmp eq ptr %853, null
  %855 = load ptr, ptr %500, align 8, !tbaa !31
  br i1 %854, label %870, label %856

856:                                              ; preds = %851
  %857 = load i32, ptr %855, align 8
  %858 = lshr i32 %857, 16
  %859 = and i32 %858, 255
  %860 = zext nneg i32 %859 to i64
  %861 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %860
  %862 = load i8, ptr %861, align 1, !tbaa !30
  %863 = load i32, ptr %853, align 8
  %864 = lshr i32 %863, 16
  %865 = and i32 %864, 255
  %866 = zext nneg i32 %865 to i64
  %867 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %866
  %868 = load i8, ptr %867, align 1, !tbaa !30
  %869 = icmp ugt i8 %862, %868
  br i1 %869, label %870, label %871

870:                                              ; preds = %856, %851
  store ptr %855, ptr %852, align 8, !tbaa !56
  br label %871

871:                                              ; preds = %827, %849, %856, %870
  %872 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 2
  %873 = load i32, ptr %872, align 8, !tbaa !50
  %874 = tail call i32 @reg_class_subset_p(i32 noundef %561, i32 noundef %873) #24
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %877, label %876

876:                                              ; preds = %871
  store i32 %561, ptr %872, align 8, !tbaa !50
  br label %877

877:                                              ; preds = %876, %871
  %878 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 18
  %879 = load i8, ptr %878, align 8
  %880 = trunc i32 %8 to i8
  %881 = or i8 %880, -2
  %882 = and i8 %881, %879
  store i8 %882, ptr %878, align 8
  %883 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 17
  %884 = load i32, ptr %883, align 4, !tbaa !58
  %885 = icmp eq i32 %884, %10
  %886 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 12
  %887 = load i32, ptr %886, align 8, !tbaa !57
  %888 = freeze i32 %887
  br i1 %885, label %889, label %892

889:                                              ; preds = %877
  %890 = icmp eq i32 %888, %9
  br i1 %890, label %893, label %891

891:                                              ; preds = %889
  switch i32 %10, label %892 [
    i32 10, label %893
    i32 7, label %893
    i32 0, label %893
  ]

892:                                              ; preds = %877, %891
  store i32 9, ptr %883, align 4, !tbaa !58
  br label %893

893:                                              ; preds = %891, %891, %891, %889, %892
  %894 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 12
  %895 = tail call i32 @llvm.smin.i32(i32 %888, i32 %9)
  store i32 %895, ptr %894, align 8, !tbaa !57
  br label %896

896:                                              ; preds = %693, %680, %696, %702, %705, %712, %893
  %897 = phi ptr [ %630, %712 ], [ %630, %705 ], [ %630, %702 ], [ %630, %696 ], [ %630, %680 ], [ %828, %893 ], [ %630, %693 ]
  %898 = phi i32 [ %655, %712 ], [ %655, %705 ], [ %655, %702 ], [ %655, %696 ], [ %655, %680 ], [ %612, %893 ], [ %655, %693 ]
  %899 = icmp eq ptr %897, null
  br i1 %899, label %908, label %900

900:                                              ; preds = %896
  %901 = load ptr, ptr %496, align 8, !tbaa !31
  %902 = icmp eq ptr %897, %901
  br i1 %902, label %908, label %903

903:                                              ; preds = %900
  %904 = sext i32 %898 to i64
  %905 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %904, i32 18
  %906 = load i8, ptr %905, align 8
  %907 = or i8 %906, 2
  store i8 %907, ptr %905, align 8
  br label %908

908:                                              ; preds = %903, %900, %896
  %909 = load i32, ptr @replace_reloads, align 4, !tbaa !35
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %933, label %911

911:                                              ; preds = %908
  %912 = icmp eq ptr %496, null
  br i1 %912, label %921, label %913

913:                                              ; preds = %911
  %914 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %915 = add nsw i32 %914, 1
  store i32 %915, ptr @n_replacements, align 4, !tbaa !35
  %916 = sext i32 %914 to i64
  %917 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916
  %918 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 2
  store i32 %898, ptr %918, align 8, !tbaa !63
  %919 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 1
  store ptr %494, ptr %919, align 8, !tbaa !65
  store ptr %496, ptr %917, align 8, !tbaa !66
  %920 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 3
  store i32 %604, ptr %920, align 4, !tbaa !67
  br label %921

921:                                              ; preds = %913, %911
  %922 = icmp eq ptr %500, null
  %923 = icmp eq ptr %500, %496
  %924 = or i1 %922, %923
  br i1 %924, label %933, label %925

925:                                              ; preds = %921
  %926 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %927 = add nsw i32 %926, 1
  store i32 %927, ptr @n_replacements, align 4, !tbaa !35
  %928 = sext i32 %926 to i64
  %929 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928
  %930 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 2
  store i32 %898, ptr %930, align 8, !tbaa !63
  store ptr %500, ptr %929, align 8, !tbaa !66
  %931 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 1
  store ptr %499, ptr %931, align 8, !tbaa !65
  %932 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 3
  store i32 %603, ptr %932, align 4, !tbaa !67
  br label %933

933:                                              ; preds = %921, %925, %908
  %934 = icmp eq ptr %897, %502
  %935 = or i1 %899, %934
  %936 = or i1 %508, %935
  %937 = sext i32 %898 to i64
  br i1 %936, label %965, label %938

938:                                              ; preds = %933
  %939 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937
  %940 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937, i32 11
  %941 = load ptr, ptr %940, align 8, !tbaa !53
  %942 = icmp eq ptr %941, null
  br i1 %942, label %943, label %965

943:                                              ; preds = %938
  %944 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937, i32 2
  %945 = load i32, ptr %944, align 8, !tbaa !50
  %946 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %502) #25, !range !42
  %947 = tail call fastcc ptr @find_dummy_reload(ptr noundef nonnull %897, ptr noundef nonnull %502, ptr noundef %496, ptr noundef %500, i32 noundef %604, i32 noundef %603, i32 noundef %945, i32 noundef %898, i32 noundef %946) #25
  store ptr %947, ptr %940, align 8, !tbaa !53
  %948 = icmp eq ptr %947, %502
  br i1 %948, label %949, label %965

949:                                              ; preds = %943
  %950 = load i32, ptr %897, align 8
  %951 = and i32 %950, 65535
  %952 = icmp eq i32 %951, 37
  br i1 %952, label %958, label %953

953:                                              ; preds = %949
  %954 = zext nneg i32 %951 to i64
  %955 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !35
  %957 = icmp eq i32 %956, 9
  br i1 %957, label %958, label %965

958:                                              ; preds = %953, %949
  %959 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %960 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %502) #25
  %961 = load ptr, ptr @static_reload_reg_p, align 8, !tbaa !31
  %962 = tail call ptr @find_equiv_reg(ptr noundef nonnull %897, ptr noundef %959, i32 noundef 0, i32 noundef %960, ptr noundef %961, i32 noundef %898, i32 noundef %604) #25
  %963 = icmp eq ptr %962, null
  br i1 %963, label %965, label %964

964:                                              ; preds = %958
  store ptr %502, ptr %939, align 8, !tbaa !47
  br label %965

965:                                              ; preds = %933, %943, %953, %958, %964, %938
  %966 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937, i32 11
  %967 = load ptr, ptr %966, align 8, !tbaa !53
  %968 = icmp eq ptr %967, null
  %969 = icmp ne ptr %897, null
  %970 = and i1 %968, %969
  %971 = load i32, ptr @hard_regs_live_known, align 4
  %972 = icmp ne i32 %971, 0
  %973 = select i1 %970, i1 %972, i1 false
  br i1 %973, label %974, label %1143

974:                                              ; preds = %965
  br i1 %508, label %984, label %975

975:                                              ; preds = %974
  %976 = zext i32 %603 to i64
  %977 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %976
  %978 = load i8, ptr %977, align 1, !tbaa !30
  %979 = zext i32 %604 to i64
  %980 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %979
  %981 = load i8, ptr %980, align 1, !tbaa !30
  %982 = icmp ugt i8 %978, %981
  %983 = select i1 %982, i32 %603, i32 %604
  br label %984

984:                                              ; preds = %975, %974
  %985 = phi i32 [ %604, %974 ], [ %983, %975 ]
  %986 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %987 = getelementptr inbounds %struct.rtx_def, ptr %986, i64 1, i32 1, i32 0, i32 0, i64 1
  %988 = load ptr, ptr %987, align 8, !tbaa !30
  %989 = icmp eq ptr %988, null
  br i1 %989, label %1143, label %990

990:                                              ; preds = %984
  %991 = or i1 %508, %934
  %992 = getelementptr inbounds %struct.rtx_def, ptr %897, i64 0, i32 1
  %993 = zext i32 %985 to i64
  %994 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %993
  %995 = zext i32 %604 to i64
  %996 = zext i32 %603 to i64
  %997 = sext i32 %561 to i64
  %998 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %997
  br label %999

999:                                              ; preds = %990, %1139
  %1000 = phi ptr [ %988, %990 ], [ %1141, %1139 ]
  %1001 = load i32, ptr %1000, align 8
  %1002 = and i32 %1001, 16711680
  %1003 = icmp eq i32 %1002, 65536
  br i1 %1003, label %1004, label %1139

1004:                                             ; preds = %999
  %1005 = getelementptr inbounds %struct.rtx_def, ptr %1000, i64 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !30
  %1007 = load i32, ptr %1006, align 8
  %1008 = and i32 %1007, 65535
  %1009 = icmp eq i32 %1008, 37
  br i1 %1009, label %1010, label %1139

1010:                                             ; preds = %1004
  %1011 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1006) #25
  %1012 = icmp slt i32 %1011, 53
  br i1 %1012, label %1013, label %1139

1013:                                             ; preds = %1010
  %1014 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %1006, ptr noundef nonnull %897) #24
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1139, label %1016

1016:                                             ; preds = %1013
  %1017 = load ptr, ptr %1005, align 8, !tbaa !30
  %1018 = getelementptr inbounds %struct.rtx_def, ptr %1017, i64 0, i32 1, i32 0, i32 0, i64 1
  %1019 = load i32, ptr %1018, align 8, !tbaa !30
  %1020 = icmp ult i32 %1019, 53
  br i1 %1020, label %1043, label %1021

1021:                                             ; preds = %1016
  %1022 = load ptr, ptr @cfun, align 8, !tbaa !31
  %1023 = getelementptr inbounds %struct.function, ptr %1022, i64 0, i32 1
  %1024 = load ptr, ptr %1023, align 8, !tbaa !68
  %1025 = load ptr, ptr %1024, align 8, !tbaa !70
  %1026 = getelementptr inbounds %struct.basic_block_def, ptr %1025, i64 0, i32 9
  %1027 = load i32, ptr %1026, align 8, !tbaa !72
  %1028 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %1027) #25
  %1029 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1028, i64 0, i32 3
  %1030 = load ptr, ptr %1029, align 8, !tbaa !74
  %1031 = tail call i32 @bitmap_bit_p(ptr noundef %1030, i32 noundef %1019) #24
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1139

1033:                                             ; preds = %1021
  %1034 = sext i32 %1011 to i64
  %1035 = load ptr, ptr %1005, align 8, !tbaa !30
  %1036 = load i32, ptr %1035, align 8
  %1037 = lshr i32 %1036, 16
  %1038 = and i32 %1037, 255
  %1039 = zext nneg i32 %1038 to i64
  %1040 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1034, i64 %1039
  %1041 = load i8, ptr %1040, align 1, !tbaa !30
  %1042 = icmp eq i8 %1041, 1
  br i1 %1042, label %1043, label %1139

1043:                                             ; preds = %1033, %1016
  %1044 = tail call fastcc i32 @end_hard_regno(i32 noundef %985, i32 noundef %1011) #25
  %1045 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %1046 = getelementptr inbounds %struct.rtx_def, ptr %1045, i64 1
  %1047 = load ptr, ptr %1046, align 8, !tbaa !30
  %1048 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1011, i32 noundef %1044, ptr noundef %1047, ptr noundef %496) #25
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1050, label %1139

1050:                                             ; preds = %1043
  br i1 %991, label %1058, label %1051

1051:                                             ; preds = %1050
  %1052 = tail call fastcc i32 @end_hard_regno(i32 noundef %985, i32 noundef %1011) #25
  %1053 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %1054 = getelementptr inbounds %struct.rtx_def, ptr %1053, i64 1
  %1055 = load ptr, ptr %1054, align 8, !tbaa !30
  %1056 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %1011, i32 noundef %1052, ptr noundef %1055) #25, !range !42
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1058, label %1139

1058:                                             ; preds = %1051, %1050
  br i1 %934, label %1059, label %1082

1059:                                             ; preds = %1058
  %1060 = load i32, ptr %502, align 8
  %1061 = and i32 %1060, 65535
  %1062 = icmp eq i32 %1061, 39
  br i1 %1062, label %1063, label %1139

1063:                                             ; preds = %1059
  %1064 = lshr i32 %1060, 16
  %1065 = and i32 %1064, 255
  %1066 = zext nneg i32 %1065 to i64
  %1067 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1066
  %1068 = load i8, ptr %1067, align 1, !tbaa !30
  %1069 = zext i8 %1068 to i32
  %1070 = add nuw nsw i32 %1069, 3
  %1071 = load ptr, ptr %992, align 8, !tbaa !30
  %1072 = load i32, ptr %1071, align 8
  %1073 = lshr i32 %1072, 16
  %1074 = and i32 %1073, 255
  %1075 = zext nneg i32 %1074 to i64
  %1076 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1075
  %1077 = load i8, ptr %1076, align 1, !tbaa !30
  %1078 = zext i8 %1077 to i32
  %1079 = add nuw nsw i32 %1078, 3
  %1080 = xor i32 %1079, %1070
  %1081 = icmp ult i32 %1080, 4
  br i1 %1081, label %1082, label %1139

1082:                                             ; preds = %1063, %1058
  %1083 = load i8, ptr %994, align 1, !tbaa !30
  %1084 = load ptr, ptr %1005, align 8, !tbaa !30
  %1085 = load i32, ptr %1084, align 8
  %1086 = lshr i32 %1085, 16
  %1087 = and i32 %1086, 255
  %1088 = zext nneg i32 %1087 to i64
  %1089 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1088
  %1090 = load i8, ptr %1089, align 1, !tbaa !30
  %1091 = icmp ugt i8 %1083, %1090
  br i1 %1091, label %1139, label %1092

1092:                                             ; preds = %1082
  %1093 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1011, i32 noundef %604) #24
  %1094 = icmp eq i8 %1093, 0
  br i1 %1094, label %1139, label %1095

1095:                                             ; preds = %1092
  %1096 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1011, i32 noundef %603) #24
  %1097 = icmp eq i8 %1096, 0
  br i1 %1097, label %1139, label %1098

1098:                                             ; preds = %1095
  %1099 = sext i32 %1011 to i64
  %1100 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1099, i64 %995
  %1101 = load i8, ptr %1100, align 1, !tbaa !30
  %1102 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1099, i64 %996
  %1103 = load i8, ptr %1102, align 1, !tbaa !30
  %1104 = tail call i8 @llvm.umax.i8(i8 %1101, i8 %1103)
  %1105 = zext i8 %1104 to i32
  %1106 = icmp eq i8 %1104, 0
  br i1 %1106, label %1127, label %1107

1107:                                             ; preds = %1098
  %1108 = zext i8 %1104 to i64
  br label %1109

1109:                                             ; preds = %1107, %1122
  %1110 = phi i64 [ 0, %1107 ], [ %1123, %1122 ]
  %1111 = trunc i64 %1110 to i32
  %1112 = add i32 %1011, %1111
  %1113 = zext i32 %1112 to i64
  %1114 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1113
  %1115 = load i8, ptr %1114, align 1, !tbaa !30
  %1116 = icmp eq i8 %1115, 0
  br i1 %1116, label %1117, label %1125

1117:                                             ; preds = %1109
  %1118 = load i64, ptr %998, align 8, !tbaa !44
  %1119 = shl nuw i64 1, %1113
  %1120 = and i64 %1118, %1119
  %1121 = icmp eq i64 %1120, 0
  br i1 %1121, label %1125, label %1122

1122:                                             ; preds = %1117
  %1123 = add nuw nsw i64 %1110, 1
  %1124 = icmp eq i64 %1123, %1108
  br i1 %1124, label %1130, label %1109, !llvm.loop !76

1125:                                             ; preds = %1109, %1117
  %1126 = trunc i64 %1110 to i32
  br label %1127

1127:                                             ; preds = %1125, %1098
  %1128 = phi i32 [ 0, %1098 ], [ %1126, %1125 ]
  %1129 = icmp eq i32 %1128, %1105
  br i1 %1129, label %1130, label %1139

1130:                                             ; preds = %1122, %1127
  %1131 = tail call fastcc i32 @end_hard_regno(i32 noundef %604, i32 noundef %1011) #25
  %1132 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1011, i32 noundef %1131, ptr noundef nonnull %897, ptr noundef null) #25
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1137, label %1134

1134:                                             ; preds = %1130
  %1135 = tail call fastcc i32 @can_reload_into(ptr noundef nonnull %897, i32 noundef %1011, i32 noundef %604) #25
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1139, label %1137

1137:                                             ; preds = %1130, %1134
  %1138 = tail call ptr @gen_rtx_REG(i32 noundef %985, i32 noundef %1011) #24
  store ptr %1138, ptr %966, align 8, !tbaa !53
  br label %1143

1139:                                             ; preds = %1127, %1134, %999, %1004, %1010, %1013, %1021, %1033, %1043, %1051, %1059, %1063, %1082, %1092, %1095
  %1140 = getelementptr inbounds %struct.rtx_def, ptr %1000, i64 0, i32 1, i32 0, i32 0, i64 1
  %1141 = load ptr, ptr %1140, align 8, !tbaa !30
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1143, label %999, !llvm.loop !77

1143:                                             ; preds = %1139, %984, %1137, %965
  br i1 %508, label %1145, label %1144

1144:                                             ; preds = %1143
  store i32 %898, ptr @output_reloadnum, align 4, !tbaa !35
  br label %1145

1145:                                             ; preds = %596, %1143, %1144
  %1146 = phi i32 [ 0, %596 ], [ %898, %1144 ], [ %898, %1143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  ret i32 %1146
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !30
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %50

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !35
  %15 = icmp eq i32 %14, 9
  %16 = icmp eq i32 %11, 49
  %17 = or i1 %15, %16
  br i1 %17, label %50, label %18

18:                                               ; preds = %7
  %19 = icmp eq i32 %11, 37
  br i1 %19, label %20, label %50

20:                                               ; preds = %18
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %22 = icmp ugt i32 %21, 52
  br i1 %22, label %50, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @subreg_regno(ptr noundef nonnull %0) #24
  %25 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %24, i32 noundef %1) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  %28 = zext i32 %1 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !30
  %31 = icmp ult i8 %30, 5
  %32 = icmp ne i32 %2, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load i32, ptr %9, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = icmp ugt i8 %40, 4
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = lshr i8 %40, 2
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %45, i64 %38
  %47 = load i8, ptr %46, align 1, !tbaa !30
  %48 = icmp ne i8 %43, %47
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %27, %34, %42, %23, %18, %20, %7, %3
  %51 = phi i32 [ 0, %3 ], [ 1, %7 ], [ 0, %20 ], [ 0, %18 ], [ 1, %23 ], [ 0, %34 ], [ 0, %27 ], [ %49, %42 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_valid_class(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !35
  %8 = sub nsw i32 53, %2
  %9 = icmp slt i32 %2, 53
  %10 = sext i32 %2 to i64
  %11 = sext i32 %8 to i64
  br label %12

12:                                               ; preds = %4, %62
  %13 = phi i64 [ 1, %4 ], [ %66, %62 ]
  %14 = phi i32 [ -1, %4 ], [ %65, %62 ]
  %15 = phi i32 [ 0, %4 ], [ %64, %62 ]
  %16 = phi i32 [ 0, %4 ], [ %63, %62 ]
  br i1 %9, label %17, label %62

17:                                               ; preds = %12
  %18 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %13
  br label %19

19:                                               ; preds = %17, %40
  %20 = phi i64 [ 0, %17 ], [ %42, %40 ]
  %21 = phi i32 [ 0, %17 ], [ %41, %40 ]
  %22 = load i64, ptr %18, align 8, !tbaa !44
  %23 = shl nuw i64 1, %20
  %24 = and i64 %22, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = trunc i64 %20 to i32
  %28 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %27, i32 noundef %1) #24
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load i64, ptr %18, align 8, !tbaa !44
  %32 = add nsw i64 %20, %10
  %33 = shl nuw i64 1, %32
  %34 = and i64 %31, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %30
  %37 = trunc i64 %32 to i32
  %38 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %37, i32 noundef %0) #24
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %19, %36, %26
  %41 = phi i32 [ 1, %36 ], [ %21, %26 ], [ %21, %19 ]
  %42 = add nuw nsw i64 %20, 1
  %43 = icmp slt i64 %42, %11
  br i1 %43, label %19, label %44, !llvm.loop !78

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %44
  %47 = trunc i64 %13 to i32
  %48 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %47, i32 noundef %7) #24
  %49 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %13
  %50 = load i32, ptr %49, align 4, !tbaa !35
  %51 = icmp ugt i32 %50, %15
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = icmp slt i32 %14, 0
  %54 = icmp sge i32 %14, %48
  %55 = select i1 %53, i1 true, i1 %54
  %56 = icmp sgt i32 %14, %48
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %60, label %62

58:                                               ; preds = %46
  %59 = icmp sgt i32 %14, %48
  br i1 %59, label %60, label %62

60:                                               ; preds = %58, %52
  %61 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %47, i32 noundef %7) #24
  br label %62

62:                                               ; preds = %36, %30, %12, %58, %60, %52, %44
  %63 = phi i32 [ %16, %44 ], [ %47, %60 ], [ %16, %58 ], [ %16, %52 ], [ %16, %12 ], [ %16, %30 ], [ %16, %36 ]
  %64 = phi i32 [ %15, %44 ], [ %50, %60 ], [ %15, %58 ], [ %15, %52 ], [ %15, %12 ], [ %15, %30 ], [ %15, %36 ]
  %65 = phi i32 [ %14, %44 ], [ %61, %60 ], [ %14, %58 ], [ %14, %52 ], [ %14, %12 ], [ %14, %30 ], [ %14, %36 ]
  %66 = add nuw nsw i64 %13, 1
  %67 = icmp eq i64 %66, 27
  br i1 %67, label %68, label %12, !llvm.loop !79

68:                                               ; preds = %62
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #24
  br label %71

71:                                               ; preds = %68, %70
  ret i32 %63
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !35
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %17

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i64 [ %16, %11 ], [ %7, %6 ]
  %19 = phi i32 [ %14, %11 ], [ %3, %6 ]
  %20 = phi ptr [ %13, %11 ], [ %0, %6 ]
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %22 = load i32, ptr %21, align 4, !tbaa !35
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %104, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !35
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %104, label %31

31:                                               ; preds = %24
  %32 = trunc i32 %19 to i16
  switch i16 %32, label %87 [
    i16 39, label %33
    i16 49, label %88
    i16 37, label %61
    i16 43, label %83
    i16 38, label %85
    i16 36, label %85
    i16 46, label %85
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !30
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !42
  br label %104

41:                                               ; preds = %33
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #25
  %43 = icmp slt i32 %42, 53
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = lshr i32 %36, 16
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load i32, ptr %47, align 8, !tbaa !30
  %49 = lshr i32 %19, 16
  %50 = and i32 %49, 255
  %51 = tail call i32 @subreg_regno_offset(i32 noundef %42, i32 noundef %46, i32 noundef %48, i32 noundef %50) #24
  %52 = add i32 %51, %42
  %53 = icmp slt i32 %52, 53
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = tail call i32 @subreg_nregs(ptr noundef nonnull %20) #24
  br label %56

56:                                               ; preds = %41, %44, %54
  %57 = phi i32 [ %52, %54 ], [ %52, %44 ], [ %42, %41 ]
  %58 = phi i32 [ %55, %54 ], [ 1, %44 ], [ 1, %41 ]
  %59 = add i32 %58, %57
  %60 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %57, i32 noundef %59, ptr noundef nonnull %1, ptr noundef null) #25
  br label %104

61:                                               ; preds = %31
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #25
  %63 = icmp sgt i32 %62, 52
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %66 = zext nneg i32 %62 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !31
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !42
  br label %104

72:                                               ; preds = %64
  %73 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %74 = getelementptr inbounds ptr, ptr %73, i64 %66
  %75 = load ptr, ptr %74, align 8, !tbaa !31
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %104

77:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6637, ptr noundef nonnull @.str.1) #24
  br label %104

78:                                               ; preds = %61
  %79 = lshr i32 %19, 16
  %80 = and i32 %79, 255
  %81 = tail call fastcc i32 @end_hard_regno(i32 noundef %80, i32 noundef %62) #25
  %82 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %62, i32 noundef %81, ptr noundef nonnull %1, ptr noundef null) #25
  br label %104

83:                                               ; preds = %31
  %84 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !42
  br label %104

85:                                               ; preds = %31, %31, %31
  %86 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %20, ptr noundef nonnull %1) #24
  br label %104

87:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6652, ptr noundef nonnull @.str.1) #24
  br label %88

88:                                               ; preds = %31, %87
  br label %89

89:                                               ; preds = %88, %93
  %90 = phi ptr [ %95, %93 ], [ %1, %88 ]
  %91 = load i32, ptr %90, align 8
  %92 = trunc i32 %91 to i16
  switch i16 %92, label %112 [
    i16 43, label %93
    i16 37, label %104
    i16 49, label %96
  ]

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !30
  br label %89, !llvm.loop !80

96:                                               ; preds = %89
  %97 = tail call i32 @rtx_equal_p(ptr noundef nonnull %20, ptr noundef nonnull %90) #24
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !30
  %102 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %20, ptr noundef %101) #25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %112, %96, %99, %77, %72, %17, %24, %85, %83, %78, %70, %56, %39, %89, %117, %106
  %105 = phi i32 [ %111, %106 ], [ %122, %117 ], [ %40, %39 ], [ %60, %56 ], [ %71, %70 ], [ %82, %78 ], [ %84, %83 ], [ %86, %85 ], [ 0, %24 ], [ 0, %17 ], [ 0, %72 ], [ 0, %77 ], [ 1, %99 ], [ 1, %96 ], [ 1, %112 ], [ 0, %89 ]
  ret i32 %105

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !30
  %109 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %20, ptr noundef %108) #25
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  br label %104

112:                                              ; preds = %89
  %113 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !30
  %115 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %114, ptr noundef nonnull %90) #25
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %104

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !30
  %120 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %119, ptr noundef nonnull %90) #25
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  br label %104
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_preferred_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_preferred_output_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @in_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #25
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %2, %8 ], [ %12, %14 ]
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %0
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !81

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 0, %3 ], [ 1, %10 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_reusable_reload(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr %0, align 8, !tbaa !31
  %8 = tail call i32 @earlyclobber_operand_p(ptr noundef %1) #25, !range !42
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %11 = icmp sgt i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %322

13:                                               ; preds = %6
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %14
  %16 = icmp eq ptr %7, null
  %17 = icmp eq i32 %5, 0
  %18 = icmp eq ptr %1, null
  %19 = icmp eq i32 %3, 9
  br label %28

20:                                               ; preds = %180
  %21 = icmp sgt i32 %182, 0
  br i1 %21, label %22, label %322

22:                                               ; preds = %20
  %23 = sext i32 %2 to i64
  %24 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %23
  %25 = icmp eq ptr %1, null
  %26 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %27 = icmp eq i32 %3, 9
  br label %185

28:                                               ; preds = %13, %180
  %29 = phi i64 [ 0, %13 ], [ %181, %180 ]
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29
  %31 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !50
  %33 = tail call i32 @reg_class_subset_p(i32 noundef %2, i32 noundef %32) #24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, ptr %31, align 8, !tbaa !50
  %37 = tail call i32 @reg_class_subset_p(i32 noundef %36, i32 noundef %2) #24
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %180, label %39

39:                                               ; preds = %35, %28
  %40 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %15, align 8, !tbaa !44
  %45 = tail call i32 @true_regnum(ptr noundef nonnull %41) #24
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %47, %44
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %180, label %50

50:                                               ; preds = %43, %39
  br i1 %16, label %104, label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %30, align 8, !tbaa !47
  %53 = icmp eq ptr %52, %7
  br i1 %53, label %77, label %54

54:                                               ; preds = %51
  %55 = icmp eq ptr %52, null
  br i1 %55, label %104, label %56

56:                                               ; preds = %54
  %57 = load i32, ptr %52, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, ptr %7, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %64, label %104

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %52) #25
  %66 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %67 = icmp eq i32 %65, %66
  %68 = and i1 %17, %67
  br i1 %68, label %78, label %104

69:                                               ; preds = %56
  %70 = tail call i32 @rtx_equal_p(ptr noundef nonnull %52, ptr noundef nonnull %7) #24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %30, align 8, !tbaa !47
  %74 = tail call i32 @side_effects_p(ptr noundef %73) #24
  %75 = or i32 %74, %5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %104

77:                                               ; preds = %51
  br i1 %17, label %78, label %104

78:                                               ; preds = %64, %72, %77
  br i1 %18, label %155, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !49
  %82 = icmp eq ptr %81, null
  %83 = icmp eq ptr %81, %1
  %84 = or i1 %82, %83
  br i1 %84, label %155, label %85

85:                                               ; preds = %79
  %86 = load i32, ptr %81, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, ptr %1, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %81) #25
  %95 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %155, label %105

97:                                               ; preds = %85
  %98 = tail call i32 @rtx_equal_p(ptr noundef nonnull %81, ptr noundef nonnull %1) #24
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %80, align 8, !tbaa !49
  %102 = tail call i32 @side_effects_p(ptr noundef %101) #24
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %155, label %105

104:                                              ; preds = %77, %72, %69, %64, %60, %54, %50
  br i1 %18, label %180, label %105

105:                                              ; preds = %89, %93, %97, %100, %104
  %106 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !49
  %108 = icmp eq ptr %107, %1
  br i1 %108, label %130, label %109

109:                                              ; preds = %105
  %110 = icmp eq ptr %107, null
  br i1 %110, label %180, label %111

111:                                              ; preds = %109
  %112 = load i32, ptr %107, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 37
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32, ptr %1, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 37
  br i1 %118, label %119, label %180

119:                                              ; preds = %115
  %120 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %107) #25
  %121 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %130, label %180

123:                                              ; preds = %111
  %124 = tail call i32 @rtx_equal_p(ptr noundef nonnull %107, ptr noundef nonnull %1) #24
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %180, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %106, align 8, !tbaa !49
  %128 = tail call i32 @side_effects_p(ptr noundef %127) #24
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %180

130:                                              ; preds = %126, %119, %105
  br i1 %16, label %155, label %131

131:                                              ; preds = %130
  %132 = load ptr, ptr %30, align 8, !tbaa !47
  %133 = icmp eq ptr %132, null
  %134 = icmp eq ptr %132, %7
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %155, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %132, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 37
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32, ptr %7, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 37
  br i1 %143, label %144, label %180

144:                                              ; preds = %140
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %132) #25
  %146 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %155, label %180

148:                                              ; preds = %136
  %149 = tail call i32 @rtx_equal_p(ptr noundef nonnull %132, ptr noundef nonnull %7) #24
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %180, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %30, align 8, !tbaa !47
  %153 = tail call i32 @side_effects_p(ptr noundef %152) #24
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %180

155:                                              ; preds = %151, %144, %131, %130, %100, %93, %79, %78
  %156 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !49
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %157) #25, !range !42
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %159, %155
  br i1 %19, label %320, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 17
  %165 = load i32, ptr %164, align 4, !tbaa !58
  %166 = icmp eq i32 %165, 9
  br i1 %166, label %320, label %167

167:                                              ; preds = %163
  %168 = icmp eq i32 %165, %3
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  %170 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %29, i32 12
  %171 = load i32, ptr %170, align 8, !tbaa !57
  %172 = icmp eq i32 %171, %4
  br i1 %172, label %320, label %173

173:                                              ; preds = %169, %167
  switch i32 %3, label %180 [
    i32 0, label %174
    i32 7, label %176
    i32 10, label %178
  ]

174:                                              ; preds = %173
  %175 = icmp eq i32 %165, 0
  br i1 %175, label %320, label %180

176:                                              ; preds = %173
  %177 = icmp eq i32 %165, 7
  br i1 %177, label %320, label %180

178:                                              ; preds = %173
  %179 = icmp eq i32 %165, 10
  br i1 %179, label %320, label %180

180:                                              ; preds = %176, %174, %173, %35, %43, %104, %109, %115, %119, %123, %126, %140, %144, %148, %151, %159, %178
  %181 = add nuw nsw i64 %29, 1
  %182 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %28, label %20, !llvm.loop !82

185:                                              ; preds = %22, %315
  %186 = phi i64 [ 0, %22 ], [ %316, %315 ]
  %187 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %186
  %188 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %186, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !50
  %190 = tail call i32 @reg_class_subset_p(i32 noundef %2, i32 noundef %189) #24
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i32, ptr %188, align 8, !tbaa !50
  %194 = tail call i32 @reg_class_subset_p(i32 noundef %193, i32 noundef %2) #24
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %315, label %196

196:                                              ; preds = %192, %185
  %197 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %186, i32 11
  %198 = load ptr, ptr %197, align 8, !tbaa !53
  %199 = icmp eq ptr %198, null
  br i1 %199, label %208, label %200

200:                                              ; preds = %196
  %201 = load i64, ptr %24, align 8, !tbaa !44
  %202 = tail call i32 @true_regnum(ptr noundef nonnull %198) #24
  %203 = zext nneg i32 %202 to i64
  %204 = shl nuw i64 1, %203
  %205 = and i64 %204, %201
  %206 = icmp ne i64 %205, 0
  %207 = and i1 %25, %206
  br i1 %207, label %209, label %315

208:                                              ; preds = %196
  br i1 %25, label %209, label %315

209:                                              ; preds = %200, %208
  %210 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %186, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !49
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %315

213:                                              ; preds = %209
  %214 = load ptr, ptr %187, align 8, !tbaa !47
  %215 = icmp eq ptr %214, null
  br i1 %215, label %315, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr %7, align 8
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 37
  br i1 %219, label %220, label %252

220:                                              ; preds = %216
  %221 = load i32, ptr %214, align 8
  %222 = and i32 %221, 65535
  %223 = zext nneg i32 %222 to i64
  %224 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !35
  %226 = icmp eq i32 %225, 12
  br i1 %226, label %227, label %252

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !30
  %230 = icmp eq ptr %229, %7
  br i1 %230, label %284, label %231

231:                                              ; preds = %227
  %232 = icmp eq ptr %229, null
  br i1 %232, label %252, label %233

233:                                              ; preds = %231
  %234 = load i32, ptr %229, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 37
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %229) #25
  %239 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %284, label %252

241:                                              ; preds = %233
  %242 = tail call i32 @rtx_equal_p(ptr noundef nonnull %229, ptr noundef nonnull %7) #24
  %243 = icmp eq i32 %242, 0
  %244 = load ptr, ptr %187, align 8, !tbaa !47
  br i1 %243, label %252, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.rtx_def, ptr %244, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !30
  %248 = tail call i32 @side_effects_p(ptr noundef %247) #24
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %284, label %250

250:                                              ; preds = %245
  %251 = load ptr, ptr %187, align 8, !tbaa !47
  br label %252

252:                                              ; preds = %250, %241, %237, %231, %220, %216
  %253 = phi ptr [ %251, %250 ], [ %244, %241 ], [ %214, %237 ], [ %214, %231 ], [ %214, %220 ], [ %214, %216 ]
  %254 = load i32, ptr %253, align 8
  %255 = and i32 %254, 65535
  %256 = icmp eq i32 %255, 37
  br i1 %256, label %257, label %315

257:                                              ; preds = %252
  %258 = load i32, ptr %7, align 8
  %259 = and i32 %258, 65535
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !35
  %263 = icmp eq i32 %262, 12
  br i1 %263, label %264, label %315

264:                                              ; preds = %257
  %265 = load ptr, ptr %26, align 8, !tbaa !30
  %266 = icmp eq ptr %265, %253
  br i1 %266, label %284, label %267

267:                                              ; preds = %264
  %268 = icmp eq ptr %265, null
  br i1 %268, label %315, label %269

269:                                              ; preds = %267
  %270 = load i32, ptr %265, align 8
  %271 = and i32 %270, 65535
  %272 = icmp eq i32 %271, 37
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %265) #25
  %275 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %253) #25
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %284, label %315

277:                                              ; preds = %269
  %278 = tail call i32 @rtx_equal_p(ptr noundef nonnull %265, ptr noundef nonnull %253) #24
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %315, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr %26, align 8, !tbaa !30
  %282 = tail call i32 @side_effects_p(ptr noundef %281) #24
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %315

284:                                              ; preds = %280, %273, %264, %245, %237, %227
  %285 = load ptr, ptr %210, align 8, !tbaa !49
  %286 = icmp eq ptr %285, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %285) #25, !range !42
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %315

290:                                              ; preds = %287, %284
  br i1 %27, label %308, label %291

291:                                              ; preds = %290
  %292 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %186, i32 17
  %293 = load i32, ptr %292, align 4, !tbaa !58
  %294 = icmp eq i32 %293, 9
  br i1 %294, label %308, label %295

295:                                              ; preds = %291
  %296 = icmp eq i32 %293, %3
  br i1 %296, label %297, label %301

297:                                              ; preds = %295
  %298 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %186, i32 12
  %299 = load i32, ptr %298, align 8, !tbaa !57
  %300 = icmp eq i32 %299, %4
  br i1 %300, label %308, label %301

301:                                              ; preds = %297, %295
  switch i32 %3, label %315 [
    i32 0, label %302
    i32 7, label %304
    i32 10, label %306
  ]

302:                                              ; preds = %301
  %303 = icmp eq i32 %293, 0
  br i1 %303, label %308, label %315

304:                                              ; preds = %301
  %305 = icmp eq i32 %293, 7
  br i1 %305, label %308, label %315

306:                                              ; preds = %301
  %307 = icmp eq i32 %293, 10
  br i1 %307, label %308, label %315

308:                                              ; preds = %306, %304, %302, %297, %291, %290
  %309 = trunc i64 %186 to i32
  %310 = load i32, ptr %7, align 8
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %311, 37
  br i1 %312, label %313, label %322

313:                                              ; preds = %308
  %314 = load ptr, ptr %187, align 8, !tbaa !47
  store ptr %314, ptr %0, align 8, !tbaa !31
  br label %322

315:                                              ; preds = %304, %302, %301, %192, %200, %208, %209, %213, %252, %257, %267, %273, %277, %280, %287, %306
  %316 = add nuw nsw i64 %186, 1
  %317 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %318 = sext i32 %317 to i64
  %319 = icmp slt i64 %316, %318
  br i1 %319, label %185, label %322, !llvm.loop !83

320:                                              ; preds = %178, %176, %174, %169, %163, %162
  %321 = trunc i64 %29 to i32
  br label %322

322:                                              ; preds = %315, %6, %320, %20, %308, %313
  %323 = phi i32 [ %309, %313 ], [ %309, %308 ], [ %182, %20 ], [ %321, %320 ], [ %10, %6 ], [ %317, %315 ]
  ret i32 %323
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @push_secondary_reload(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  store i32 2956, ptr %10, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  %12 = add i32 %6, -3
  %13 = icmp ult i32 %12, 4
  %14 = icmp eq i32 %0, 0
  %15 = select i1 %14, i32 5, i32 3
  %16 = select i1 %13, i32 %6, i32 %15
  store i32 2956, ptr %7, align 4, !tbaa !35
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %38

20:                                               ; preds = %9
  %21 = lshr i32 %17, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !30
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !30
  %34 = icmp ugt i8 %25, %33
  %35 = select i1 %34, i32 %30, i32 %5
  %36 = select i1 %34, i32 %28, i32 %17
  %37 = select i1 %34, ptr %27, ptr %1
  br label %38

38:                                               ; preds = %20, %9
  %39 = phi i32 [ %17, %9 ], [ %36, %20 ]
  %40 = phi i32 [ %5, %9 ], [ %35, %20 ]
  %41 = phi ptr [ %1, %9 ], [ %37, %20 ]
  %42 = and i32 %39, 65535
  %43 = icmp eq i32 %42, 37
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %41) #25
  %46 = icmp ugt i32 %45, 52
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr %41, ptr %51
  br label %54

54:                                               ; preds = %47, %44, %38
  %55 = phi ptr [ %41, %44 ], [ %41, %38 ], [ %53, %47 ]
  store i32 2956, ptr %11, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.secondary_reload_info, ptr %11, i64 0, i32 2
  store ptr %8, ptr %56, align 8, !tbaa !11
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !12
  %58 = trunc i32 %0 to i8
  %59 = call i32 %57(i8 noundef zeroext %58, ptr noundef nonnull %55, i32 noundef %4, i32 noundef %40, ptr noundef nonnull %11) #24
  %60 = load i32, ptr %11, align 8, !tbaa !5
  %61 = icmp eq i32 %59, 0
  %62 = icmp eq i32 %60, 2956
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %264, label %64

64:                                               ; preds = %54
  br i1 %61, label %67, label %65

65:                                               ; preds = %64
  %66 = call fastcc i32 @push_secondary_reload(i32 noundef %0, ptr noundef nonnull %55, i32 noundef %2, i32 noundef %3, i32 noundef %59, i32 noundef %40, i32 noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ %66, %65 ], [ -1, %64 ]
  %69 = icmp ne i32 %60, 2956
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = sext i32 %60 to i64
  %72 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %71, i32 4
  %73 = load i8, ptr %72, align 8, !tbaa !25
  %74 = icmp eq i8 %73, 3
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 391, ptr noundef nonnull @.str.1) #24
  br label %76

76:                                               ; preds = %70, %75
  br i1 %61, label %78, label %77

77:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 397, ptr noundef nonnull @.str.1) #24
  br label %78

78:                                               ; preds = %76, %77
  %79 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %71, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !27
  %81 = getelementptr inbounds %struct.insn_operand_data, ptr %80, i64 2, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !28
  %83 = load i8, ptr %82, align 1, !tbaa !30
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #24
  br label %86

86:                                               ; preds = %78, %85
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !30
  %89 = icmp eq i8 %88, 38
  %90 = getelementptr inbounds i8, ptr %82, i64 2
  %91 = select i1 %89, ptr %90, ptr %87
  %92 = load i8, ptr %91, align 1, !tbaa !30
  %93 = icmp eq i8 %92, 114
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = call i32 @lookup_constraint(ptr noundef nonnull %91) #24
  %96 = call i32 @regclass_for_constraint(i32 noundef %95) #24
  br label %97

97:                                               ; preds = %86, %94
  %98 = phi i32 [ %96, %94 ], [ 13, %86 ]
  %99 = getelementptr inbounds %struct.insn_operand_data, ptr %80, i64 2, i32 2
  %100 = load i16, ptr %99, align 8
  %101 = zext i16 %100 to i32
  br label %102

102:                                              ; preds = %97, %67
  %103 = phi i32 [ %98, %97 ], [ %59, %67 ]
  %104 = phi i32 [ %101, %97 ], [ %5, %67 ]
  %105 = icmp ne i32 %0, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = icmp ne i32 %103, %4
  %108 = or i1 %69, %107
  %109 = load i32, ptr %10, align 4
  %110 = icmp ne i32 %109, 2956
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 428, ptr noundef nonnull @.str.1) #24
  br label %113

113:                                              ; preds = %102, %106, %112
  %114 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %210

116:                                              ; preds = %113
  %117 = load i32, ptr %10, align 4
  br label %118

118:                                              ; preds = %116, %203
  %119 = phi i64 [ 0, %116 ], [ %204, %203 ]
  %120 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 18
  %121 = load i8, ptr %120, align 8
  %122 = and i8 %121, 4
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %203, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !50
  %127 = call i32 @reg_class_subset_p(i32 noundef %103, i32 noundef %126) #24
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, ptr %125, align 8, !tbaa !50
  %131 = call i32 @reg_class_subset_p(i32 noundef %130, i32 noundef %103) #24
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %203, label %133

133:                                              ; preds = %129, %124
  br i1 %105, label %134, label %138

134:                                              ; preds = %133
  %135 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 3
  %136 = load i32, ptr %135, align 4, !tbaa !51
  %137 = icmp eq i32 %136, %104
  br i1 %137, label %142, label %203

138:                                              ; preds = %133
  %139 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !52
  %141 = icmp eq i32 %140, %104
  br i1 %141, label %146, label %203

142:                                              ; preds = %134
  %143 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !59
  %145 = icmp eq i32 %144, %68
  br i1 %145, label %150, label %203

146:                                              ; preds = %138
  %147 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 14
  %148 = load i32, ptr %147, align 8, !tbaa !60
  %149 = icmp eq i32 %148, %68
  br i1 %149, label %154, label %203

150:                                              ; preds = %142
  %151 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 15
  %152 = load i32, ptr %151, align 4, !tbaa !61
  %153 = icmp eq i32 %152, %117
  br i1 %153, label %158, label %203

154:                                              ; preds = %146
  %155 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 16
  %156 = load i32, ptr %155, align 8, !tbaa !62
  %157 = icmp eq i32 %156, %117
  br i1 %157, label %158, label %203

158:                                              ; preds = %150, %154
  %159 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 17
  %160 = load i32, ptr %159, align 4, !tbaa !58
  %161 = icmp eq i32 %160, 9
  br i1 %161, label %175, label %162

162:                                              ; preds = %158
  %163 = icmp eq i32 %16, %160
  br i1 %163, label %164, label %168

164:                                              ; preds = %162
  %165 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 12
  %166 = load i32, ptr %165, align 8, !tbaa !57
  %167 = icmp eq i32 %166, %2
  br i1 %167, label %175, label %168

168:                                              ; preds = %164, %162
  switch i32 %16, label %203 [
    i32 0, label %169
    i32 7, label %171
    i32 10, label %173
  ]

169:                                              ; preds = %168
  %170 = icmp eq i32 %160, 0
  br i1 %170, label %175, label %203

171:                                              ; preds = %168
  %172 = icmp eq i32 %160, 7
  br i1 %172, label %175, label %203

173:                                              ; preds = %168
  %174 = icmp eq i32 %160, 10
  br i1 %174, label %175, label %203

175:                                              ; preds = %173, %171, %169, %164, %158
  %176 = trunc i64 %119 to i32
  br i1 %105, label %177, label %179

177:                                              ; preds = %175
  %178 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 3
  store i32 %104, ptr %178, align 4, !tbaa !51
  br label %181

179:                                              ; preds = %175
  %180 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 4
  store i32 %104, ptr %180, align 8, !tbaa !52
  br label %181

181:                                              ; preds = %177, %179
  %182 = load i32, ptr %125, align 8, !tbaa !50
  %183 = call i32 @reg_class_subset_p(i32 noundef %103, i32 noundef %182) #24
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  store i32 %103, ptr %125, align 8, !tbaa !50
  br label %186

186:                                              ; preds = %185, %181
  %187 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 12
  %188 = load i32, ptr %187, align 8, !tbaa !57
  %189 = freeze i32 %188
  %190 = call i32 @llvm.smin.i32(i32 %189, i32 %2)
  store i32 %190, ptr %187, align 8, !tbaa !57
  %191 = load i8, ptr %120, align 8
  %192 = trunc i32 %3 to i8
  %193 = or i8 %192, -6
  %194 = and i8 %191, %193
  %195 = or i8 %194, 4
  store i8 %195, ptr %120, align 8
  %196 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 17
  %197 = load i32, ptr %196, align 4, !tbaa !58
  %198 = icmp eq i32 %16, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %186
  %200 = icmp slt i32 %189, %2
  br i1 %200, label %201, label %210

201:                                              ; preds = %199
  switch i32 %16, label %202 [
    i32 10, label %210
    i32 7, label %210
    i32 0, label %210
  ]

202:                                              ; preds = %201, %186
  store i32 9, ptr %196, align 4, !tbaa !58
  br label %210

203:                                              ; preds = %171, %169, %150, %142, %134, %168, %118, %129, %138, %146, %154, %173
  %204 = add nuw nsw i64 %119, 1
  %205 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %206 = sext i32 %205 to i64
  %207 = icmp slt i64 %204, %206
  br i1 %207, label %118, label %208, !llvm.loop !84

208:                                              ; preds = %203
  %209 = trunc i64 %204 to i32
  br label %210

210:                                              ; preds = %208, %113, %201, %201, %201, %199, %202
  %211 = phi i32 [ %176, %201 ], [ %176, %201 ], [ %176, %201 ], [ %176, %199 ], [ %176, %202 ], [ 0, %113 ], [ %209, %208 ]
  %212 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %262

214:                                              ; preds = %210
  %215 = select i1 %105, i1 %62, i1 false
  br i1 %215, label %216, label %224

216:                                              ; preds = %214
  %217 = call i32 @ix86_secondary_memory_needed(i32 noundef %103, i32 noundef %4, i32 noundef %104, i32 noundef 1) #24
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32, ptr @n_reloads, align 4, !tbaa !35
  br label %224

221:                                              ; preds = %216
  %222 = call ptr @get_secondary_mem(ptr poison, i32 noundef %40, i32 noundef %2, i32 noundef %6) #25
  %223 = load i32, ptr @n_reloads, align 4, !tbaa !35
  br label %224

224:                                              ; preds = %219, %221, %214
  %225 = phi i32 [ %223, %221 ], [ %220, %219 ], [ %211, %214 ]
  %226 = phi i32 [ %223, %221 ], [ %211, %219 ], [ %211, %214 ]
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227
  %229 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %228, i8 0, i64 16, i1 false)
  store i32 %103, ptr %229, align 8, !tbaa !50
  %230 = select i1 %105, i32 %104, i32 0
  %231 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 3
  store i32 %230, ptr %231, align 4, !tbaa !51
  %232 = select i1 %105, i32 0, i32 %104
  %233 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 4
  store i32 %232, ptr %233, align 8, !tbaa !52
  %234 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 11
  store ptr null, ptr %234, align 8, !tbaa !53
  %235 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 18
  %236 = trunc i32 %3 to i8
  %237 = load i8, ptr %235, align 8
  %238 = and i8 %236, 1
  %239 = and i8 %237, -8
  %240 = or disjoint i8 %239, %238
  %241 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 7
  store i32 0, ptr %241, align 4, !tbaa !54
  %242 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 8
  %243 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %242, i8 0, i64 16, i1 false)
  store i32 %2, ptr %243, align 8, !tbaa !57
  %244 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 17
  store i32 %16, ptr %244, align 4, !tbaa !58
  %245 = select i1 %105, i32 %68, i32 -1
  %246 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 13
  store i32 %245, ptr %246, align 4, !tbaa !59
  %247 = select i1 %105, i32 -1, i32 %68
  %248 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 14
  store i32 %247, ptr %248, align 8, !tbaa !60
  %249 = load i32, ptr %10, align 4
  %250 = select i1 %105, i32 %249, i32 2956
  %251 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 15
  store i32 %250, ptr %251, align 4, !tbaa !61
  %252 = select i1 %105, i32 2956, i32 %249
  %253 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 16
  store i32 %252, ptr %253, align 8, !tbaa !62
  %254 = or disjoint i8 %240, 6
  store i8 %254, ptr %235, align 8
  %255 = add nsw i32 %225, 1
  store i32 %255, ptr @n_reloads, align 4, !tbaa !35
  %256 = select i1 %14, i1 %62, i1 false
  br i1 %256, label %257, label %262

257:                                              ; preds = %224
  %258 = call i32 @ix86_secondary_memory_needed(i32 noundef %4, i32 noundef %103, i32 noundef %104, i32 noundef 1) #24
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %257
  %261 = call ptr @get_secondary_mem(ptr poison, i32 noundef %104, i32 noundef %2, i32 noundef %6) #25
  br label %262

262:                                              ; preds = %224, %257, %260, %210
  %263 = phi i32 [ %226, %260 ], [ %226, %257 ], [ %226, %224 ], [ %211, %210 ]
  store i32 %60, ptr %7, align 4, !tbaa !35
  br label %264

264:                                              ; preds = %54, %262
  %265 = phi i32 [ %263, %262 ], [ -1, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  ret i32 %265
}

; Function Attrs: optsize
declare i32 @reg_or_subregno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_secondary_memory_needed(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @remove_address_replacements(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [180 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) %2, i8 0, i64 180, i1 false)
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1, %16
  %6 = phi i64 [ %25, %16 ], [ 0, %1 ]
  %7 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %8 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call i32 @loc_mentioned_in_p(ptr noundef %9, ptr noundef %0) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = add nsw i32 %7, 1
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !85
  br label %16

16:                                               ; preds = %5, %12
  %17 = phi i8 [ 2, %12 ], [ 1, %5 ]
  %18 = phi i32 [ %13, %12 ], [ %7, %5 ]
  %19 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [180 x i8], ptr %2, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !30
  %24 = or i8 %23, %17
  store i8 %24, ptr %22, align 1, !tbaa !30
  %25 = add nuw nsw i64 %6, 1
  %26 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %5, label %29, !llvm.loop !86

29:                                               ; preds = %16, %1
  %30 = phi i32 [ 0, %1 ], [ %18, %16 ]
  store i32 %30, ptr @n_replacements, align 4, !tbaa !35
  %31 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = zext nneg i32 %31 to i64
  br label %35

35:                                               ; preds = %33, %47
  %36 = phi i64 [ %34, %33 ], [ %38, %47 ]
  %37 = phi i32 [ 0, %33 ], [ %48, %47 ]
  %38 = add nsw i64 %36, -1
  %39 = getelementptr inbounds [180 x i8], ptr %2, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !30
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = trunc i64 %38 to i32
  tail call void @deallocate_reload_reg(i32 noundef %43) #24
  %44 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %38
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = tail call i32 @remove_address_replacements(ptr noundef %45) #25, !range !42
  store ptr null, ptr %44, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %35, %42
  %48 = phi i32 [ 1, %42 ], [ %37, %35 ]
  %49 = icmp ugt i64 %36, 1
  br i1 %49, label %35, label %50, !llvm.loop !87

50:                                               ; preds = %47, %29
  %51 = phi i32 [ 0, %29 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %2) #23
  ret i32 %51
}

; Function Attrs: optsize
declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_dummy_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !30
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !30
  %16 = icmp eq i8 %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = icmp ugt i8 %12, 4
  %19 = icmp ugt i8 %15, 4
  %20 = or i1 %18, %19
  br i1 %20, label %267, label %21

21:                                               ; preds = %17, %9
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %31, label %25

25:                                               ; preds = %40, %55, %21
  %26 = phi i32 [ 0, %21 ], [ %34, %40 ], [ %59, %55 ]
  %27 = phi ptr [ %1, %21 ], [ %36, %40 ], [ %58, %55 ]
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 39
  br i1 %30, label %61, label %91

31:                                               ; preds = %21, %55
  %32 = phi i32 [ %57, %55 ], [ %22, %21 ]
  %33 = phi ptr [ %58, %55 ], [ %1, %21 ]
  %34 = phi i32 [ %59, %55 ], [ 0, %21 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !30
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #25
  %42 = icmp ult i32 %41, 53
  br i1 %42, label %43, label %25

43:                                               ; preds = %40
  %44 = lshr i32 %37, 16
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load i32, ptr %46, align 8, !tbaa !30
  %48 = lshr i32 %32, 16
  %49 = and i32 %48, 255
  %50 = tail call i32 @subreg_regno_offset(i32 noundef %41, i32 noundef %45, i32 noundef %47, i32 noundef %49) #24
  %51 = add i32 %50, %34
  %52 = load ptr, ptr %35, align 8, !tbaa !30
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  br label %55

55:                                               ; preds = %43, %31
  %56 = phi i32 [ %54, %43 ], [ %38, %31 ]
  %57 = phi i32 [ %53, %43 ], [ %37, %31 ]
  %58 = phi ptr [ %52, %43 ], [ %36, %31 ]
  %59 = phi i32 [ %51, %43 ], [ %34, %31 ]
  %60 = icmp eq i32 %56, 39
  br i1 %60, label %31, label %25, !llvm.loop !88

61:                                               ; preds = %25, %85
  %62 = phi i32 [ %87, %85 ], [ %28, %25 ]
  %63 = phi ptr [ %88, %85 ], [ %0, %25 ]
  %64 = phi i32 [ %89, %85 ], [ 0, %25 ]
  %65 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %85

70:                                               ; preds = %61
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = lshr i32 %67, 16
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load i32, ptr %76, align 8, !tbaa !30
  %78 = lshr i32 %62, 16
  %79 = and i32 %78, 255
  %80 = tail call i32 @subreg_regno_offset(i32 noundef %71, i32 noundef %75, i32 noundef %77, i32 noundef %79) #24
  %81 = add i32 %80, %64
  %82 = load ptr, ptr %65, align 8, !tbaa !30
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  br label %85

85:                                               ; preds = %73, %61
  %86 = phi i32 [ %84, %73 ], [ %68, %61 ]
  %87 = phi i32 [ %83, %73 ], [ %67, %61 ]
  %88 = phi ptr [ %82, %73 ], [ %66, %61 ]
  %89 = phi i32 [ %81, %73 ], [ %64, %61 ]
  %90 = icmp eq i32 %86, 39
  br i1 %90, label %61, label %91, !llvm.loop !89

91:                                               ; preds = %70, %85, %25
  %92 = phi i32 [ 0, %25 ], [ %64, %70 ], [ %89, %85 ]
  %93 = phi ptr [ %0, %25 ], [ %66, %70 ], [ %88, %85 ]
  %94 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %93, i32 noundef %6) #24
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 %6, i32 %94
  %97 = load i32, ptr %27, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %151

100:                                              ; preds = %91
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #25
  %102 = icmp ult i32 %101, 53
  br i1 %102, label %103, label %151

103:                                              ; preds = %100
  %104 = add i32 %101, %26
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %105, i64 %10
  %107 = load i8, ptr %106, align 1, !tbaa !30
  %108 = zext i8 %107 to i32
  %109 = load ptr, ptr %2, align 8, !tbaa !31
  %110 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !31
  store ptr %110, ptr %2, align 8, !tbaa !31
  %111 = icmp ult i32 %104, 53
  br i1 %111, label %112, label %149

112:                                              ; preds = %103
  %113 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %104, i32 noundef %5) #24
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %149, label %115

115:                                              ; preds = %112
  %116 = add nuw nsw i32 %104, %108
  %117 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !30
  %120 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %104, i32 noundef %116, ptr noundef %119, ptr noundef %3) #25
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %115
  %123 = icmp eq i8 %107, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %122
  %125 = sext i32 %96 to i64
  %126 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !44
  %128 = zext i8 %107 to i64
  br label %129

129:                                              ; preds = %124, %135
  %130 = phi i64 [ 0, %124 ], [ %136, %135 ]
  %131 = add nuw nsw i64 %130, %105
  %132 = shl nuw i64 1, %131
  %133 = and i64 %127, %132
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %143, label %129, !llvm.loop !90

138:                                              ; preds = %129
  %139 = trunc i64 %130 to i32
  br label %140

140:                                              ; preds = %138, %122
  %141 = phi i32 [ 0, %122 ], [ %139, %138 ]
  %142 = icmp eq i32 %141, %108
  br i1 %142, label %143, label %149

143:                                              ; preds = %135, %140
  %144 = load i32, ptr %1, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 37
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = tail call ptr @gen_rtx_REG(i32 noundef %5, i32 noundef %104) #24
  br label %149

149:                                              ; preds = %140, %147, %143, %115, %112, %103
  %150 = phi ptr [ null, %115 ], [ null, %112 ], [ null, %103 ], [ %148, %147 ], [ null, %140 ], [ %1, %143 ]
  store ptr %109, ptr %2, align 8, !tbaa !31
  br label %151

151:                                              ; preds = %149, %100, %91
  %152 = phi ptr [ %150, %149 ], [ null, %100 ], [ null, %91 ]
  %153 = load i32, ptr @hard_regs_live_known, align 4, !tbaa !35
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %267, label %155

155:                                              ; preds = %151
  %156 = load i32, ptr %93, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 37
  br i1 %158, label %159, label %267

159:                                              ; preds = %155
  %160 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %161 = icmp ult i32 %160, 53
  br i1 %161, label %162, label %267

162:                                              ; preds = %159
  %163 = icmp eq ptr %152, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %162
  %165 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %166 = tail call ptr @find_reg_note(ptr noundef %165, i32 noundef 6, ptr noundef nonnull %1) #24
  %167 = icmp eq ptr %166, null
  br i1 %167, label %267, label %168

168:                                              ; preds = %164, %162
  %169 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %170 = tail call ptr @find_reg_note(ptr noundef %169, i32 noundef 1, ptr noundef nonnull %0) #24
  %171 = icmp eq ptr %170, null
  br i1 %171, label %267, label %172

172:                                              ; preds = %168
  %173 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !30
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %267

178:                                              ; preds = %172
  %179 = load i32, ptr %27, align 8
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 %5, i32 %181
  %184 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %173, i32 noundef %183) #24
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %267, label %186

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load i32, ptr %187, align 8, !tbaa !30
  %189 = icmp ult i32 %188, 53
  br i1 %189, label %212, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr @cfun, align 8, !tbaa !31
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !68
  %194 = load ptr, ptr %193, align 8, !tbaa !70
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %194, i64 0, i32 9
  %196 = load i32, ptr %195, align 8, !tbaa !72
  %197 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %196) #25
  %198 = getelementptr inbounds %struct.df_lr_bb_info, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !74
  %200 = tail call i32 @bitmap_bit_p(ptr noundef %199, i32 noundef %188) #24
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %267

202:                                              ; preds = %190
  %203 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %204 = zext i32 %203 to i64
  %205 = load i32, ptr %93, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %204, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !30
  %211 = icmp eq i8 %210, 1
  br i1 %211, label %212, label %267

212:                                              ; preds = %202, %186
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %214 = add i32 %213, %92
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %215, i64 %13
  %217 = load i8, ptr %216, align 1, !tbaa !30
  %218 = zext i8 %217 to i32
  %219 = add i32 %214, %218
  %220 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %214, i32 noundef %219, ptr noundef nonnull %27, ptr noundef null) #25
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %267

222:                                              ; preds = %212
  %223 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !30
  %226 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %214, i32 noundef %219, ptr noundef %225) #25, !range !42
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %267

228:                                              ; preds = %222
  %229 = icmp eq i32 %8, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %228
  %231 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %214, i32 noundef %219, ptr noundef %225, ptr noundef %2) #25
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %267

233:                                              ; preds = %230, %228
  %234 = icmp eq i8 %217, 0
  br i1 %234, label %251, label %235

235:                                              ; preds = %233
  %236 = sext i32 %96 to i64
  %237 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8, !tbaa !44
  %239 = zext i8 %217 to i64
  br label %240

240:                                              ; preds = %235, %248
  %241 = phi i64 [ 0, %235 ], [ %249, %248 ]
  %242 = trunc i64 %241 to i32
  %243 = add i32 %214, %242
  %244 = zext nneg i32 %243 to i64
  %245 = shl nuw i64 1, %244
  %246 = and i64 %238, %245
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %240
  %249 = add nuw nsw i64 %241, 1
  %250 = icmp eq i64 %249, %239
  br i1 %250, label %254, label %240, !llvm.loop !91

251:                                              ; preds = %240, %233
  %252 = phi i32 [ 0, %233 ], [ %242, %240 ]
  %253 = icmp eq i32 %252, %218
  br i1 %253, label %254, label %267

254:                                              ; preds = %248, %251
  %255 = icmp sgt i32 %7, -1
  %256 = icmp eq ptr %152, %1
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = zext nneg i32 %7 to i64
  %260 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %259, i32 1
  store ptr null, ptr %260, align 8, !tbaa !49
  br label %261

261:                                              ; preds = %258, %254
  %262 = load i32, ptr %0, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 37
  br i1 %264, label %267, label %265

265:                                              ; preds = %261
  %266 = tail call ptr @gen_rtx_REG(i32 noundef %4, i32 noundef %214) #24
  br label %267

267:                                              ; preds = %151, %155, %159, %164, %168, %172, %178, %190, %202, %251, %265, %261, %230, %222, %212, %17
  %268 = phi ptr [ null, %17 ], [ %152, %172 ], [ %152, %190 ], [ %152, %202 ], [ %152, %178 ], [ %152, %168 ], [ %152, %164 ], [ %152, %159 ], [ %152, %155 ], [ %152, %151 ], [ %152, %212 ], [ %152, %222 ], [ %152, %230 ], [ %266, %265 ], [ %152, %251 ], [ %0, %261 ]
  ret ptr %268
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @earlyclobber_operand_p(ptr noundef readnone %0) local_unnamed_addr #7 {
  %2 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !35
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9, !llvm.loop !92

9:                                                ; preds = %4, %6
  %10 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %11 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %6

14:                                               ; preds = %9, %6, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 1, %9 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_equiv_reg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %40 [
    i16 37, label %13
    i16 43, label %15
  ]

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  br label %73

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %10, 134217728
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %716

21:                                               ; preds = %15
  %22 = load i32, ptr @flag_float_store, align 4, !tbaa !35
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = lshr i32 %10, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !30
  %30 = and i8 %29, -2
  %31 = icmp ne i8 %30, 8
  %32 = trunc i32 %18 to i16
  %33 = add i16 %32, -80
  %34 = icmp ult i16 %33, -6
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %73, label %716

36:                                               ; preds = %21
  %37 = trunc i32 %18 to i16
  %38 = add i16 %37, -80
  %39 = icmp ult i16 %38, -6
  br i1 %39, label %73, label %716

40:                                               ; preds = %9
  %41 = zext nneg i32 %11 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !35
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %73, label %45

45:                                               ; preds = %40
  %46 = icmp eq i32 %11, 49
  br i1 %46, label %47, label %716

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !30
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !31
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !30
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !35
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %73, label %61

61:                                               ; preds = %52, %47
  %62 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !31
  %63 = icmp eq ptr %49, %62
  br i1 %63, label %64, label %716

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !35
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %716

73:                                               ; preds = %24, %64, %52, %40, %7, %13, %36
  %74 = phi i1 [ true, %13 ], [ false, %36 ], [ true, %7 ], [ true, %40 ], [ true, %52 ], [ true, %64 ], [ false, %24 ]
  %75 = phi i32 [ 0, %13 ], [ 1, %36 ], [ 0, %7 ], [ 0, %40 ], [ 0, %52 ], [ 0, %64 ], [ 1, %24 ]
  %76 = phi i1 [ true, %13 ], [ true, %36 ], [ true, %7 ], [ false, %40 ], [ false, %52 ], [ false, %64 ], [ true, %24 ]
  %77 = phi i1 [ false, %13 ], [ false, %36 ], [ false, %7 ], [ true, %40 ], [ true, %52 ], [ true, %64 ], [ false, %24 ]
  %78 = phi i32 [ 0, %13 ], [ 0, %36 ], [ 0, %7 ], [ 0, %40 ], [ 1, %52 ], [ 0, %64 ], [ 0, %24 ]
  %79 = phi i32 [ %14, %13 ], [ -1, %36 ], [ %5, %7 ], [ -1, %40 ], [ -1, %52 ], [ -1, %64 ], [ -1, %24 ]
  %80 = icmp ult ptr %4, inttoptr (i64 2 to ptr)
  %81 = icmp sgt i32 %79, -1
  %82 = icmp sgt i32 %3, -1
  %83 = sext i32 %2 to i64
  %84 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %83
  br label %85

85:                                               ; preds = %107, %73
  %86 = phi i32 [ 0, %73 ], [ %98, %107 ]
  %87 = phi ptr [ %1, %73 ], [ %91, %107 ]
  br label %88

88:                                               ; preds = %85, %93
  %89 = phi ptr [ %91, %93 ], [ %87, %85 ]
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !30
  %92 = icmp eq ptr %91, null
  br i1 %92, label %716, label %93

93:                                               ; preds = %88
  %94 = load i32, ptr %91, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 7
  br i1 %96, label %88, label %97

97:                                               ; preds = %93
  %98 = add nuw nsw i32 %86, 1
  %99 = icmp eq i32 %95, 12
  br i1 %99, label %716, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @compiler_params, align 8, !tbaa !31
  %102 = getelementptr inbounds %struct.param_info, ptr %101, i64 76, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !93
  %104 = icmp slt i32 %86, %103
  br i1 %104, label %105, label %716

105:                                              ; preds = %100
  %106 = icmp eq i32 %95, 8
  br i1 %106, label %108, label %107

107:                                              ; preds = %105, %109, %248, %270, %266, %263, %260, %256, %242, %236, %233, %120, %179, %276, %278, %280
  br label %85

108:                                              ; preds = %105
  br i1 %80, label %114, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !30
  %112 = load i32, ptr @reload_first_uid, align 4, !tbaa !35
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %107

114:                                              ; preds = %109, %108
  %115 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !30
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 23
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = tail call ptr @single_set_2(ptr noundef nonnull %91, ptr noundef nonnull %116) #24
  %122 = icmp eq ptr %121, null
  br i1 %122, label %107, label %123

123:                                              ; preds = %114, %120
  %124 = phi ptr [ %121, %120 ], [ %116, %114 ]
  br i1 %81, label %125, label %144

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !30
  %128 = tail call i32 @true_regnum(ptr noundef %127) #24
  %129 = icmp eq i32 %128, %79
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !30
  %133 = tail call i32 @true_regnum(ptr noundef %132) #24
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %273, label %135

135:                                              ; preds = %130, %125
  %136 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !30
  %138 = tail call i32 @true_regnum(ptr noundef %137) #24
  %139 = icmp eq i32 %138, %79
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load ptr, ptr %126, align 8, !tbaa !30
  %142 = tail call i32 @true_regnum(ptr noundef %141) #24
  %143 = icmp sgt i32 %142, -1
  br i1 %143, label %273, label %144

144:                                              ; preds = %123, %140, %135
  br i1 %76, label %159, label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %147 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !30
  %149 = tail call i32 @rtx_equal_p(ptr noundef %148, ptr noundef %0) #24
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %146, align 8, !tbaa !30
  %153 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %152, ptr noundef %0) #25
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load ptr, ptr %146, align 8, !tbaa !30
  %157 = tail call i32 @true_regnum(ptr noundef %156) #24
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %273, label %159

159:                                              ; preds = %155, %151, %145, %144
  br i1 %74, label %179, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !30
  %163 = tail call i32 @true_regnum(ptr noundef %162) #24
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !30
  %168 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %167) #24
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %273

170:                                              ; preds = %165, %160
  %171 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !30
  %173 = tail call i32 @true_regnum(ptr noundef %172) #24
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load ptr, ptr %161, align 8, !tbaa !30
  %177 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %176) #24
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %273

179:                                              ; preds = %159, %175, %170
  br i1 %76, label %107, label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1, i32 0, i32 0, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !30
  %183 = icmp eq ptr %182, null
  br i1 %183, label %233, label %184

184:                                              ; preds = %180
  %185 = tail call ptr @find_reg_note(ptr noundef nonnull %91, i32 noundef 3, ptr noundef null) #24
  %186 = icmp eq ptr %185, null
  br i1 %186, label %233, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !30
  %190 = tail call i32 @rtx_equal_p(ptr noundef %189, ptr noundef %0) #24
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !30
  %195 = tail call i32 @true_regnum(ptr noundef %194) #24
  %196 = icmp sgt i32 %195, -1
  br i1 %196, label %273, label %197

197:                                              ; preds = %192, %187
  %198 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !30
  %200 = load i32, ptr %199, align 8
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 37
  br i1 %202, label %203, label %233

203:                                              ; preds = %197
  %204 = load ptr, ptr %188, align 8, !tbaa !30
  %205 = load i32, ptr %204, align 8
  %206 = and i32 %205, 65535
  %207 = icmp eq i32 %206, 32
  br i1 %207, label %208, label %233

208:                                              ; preds = %203
  %209 = lshr i32 %205, 16
  %210 = and i32 %209, 255
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !30
  %214 = and i8 %213, -2
  %215 = icmp eq i8 %214, 8
  br i1 %215, label %216, label %233

216:                                              ; preds = %208
  %217 = load i32, ptr %0, align 8
  %218 = and i32 %217, 65535
  %219 = icmp eq i32 %218, 30
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = tail call ptr @operand_subword(ptr noundef nonnull %204, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %222 = icmp eq ptr %221, null
  br i1 %222, label %233, label %223

223:                                              ; preds = %220
  %224 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %221) #24
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr %198, align 8, !tbaa !30
  %228 = tail call ptr @operand_subword(ptr noundef %227, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = tail call i32 @true_regnum(ptr noundef nonnull %228) #24
  %232 = icmp sgt i32 %231, -1
  br i1 %232, label %273, label %233

233:                                              ; preds = %208, %230, %226, %223, %220, %216, %203, %197, %184, %180
  %234 = tail call ptr @find_reg_note(ptr noundef nonnull %91, i32 noundef 3, ptr noundef null) #24
  %235 = icmp eq ptr %234, null
  br i1 %235, label %107, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !30
  %239 = load i32, ptr %238, align 8
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 37
  br i1 %241, label %242, label %107

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !30
  %245 = load i32, ptr %244, align 8
  %246 = and i32 %245, 65535
  %247 = icmp eq i32 %246, 32
  br i1 %247, label %248, label %107

248:                                              ; preds = %242
  %249 = lshr i32 %245, 16
  %250 = and i32 %249, 255
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !30
  %254 = and i8 %253, -2
  %255 = icmp eq i8 %254, 8
  br i1 %255, label %256, label %107

256:                                              ; preds = %248
  %257 = load i32, ptr %0, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 30
  br i1 %259, label %260, label %107

260:                                              ; preds = %256
  %261 = tail call ptr @operand_subword(ptr noundef nonnull %244, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %262 = icmp eq ptr %261, null
  br i1 %262, label %107, label %263

263:                                              ; preds = %260
  %264 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %261) #24
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %107, label %266

266:                                              ; preds = %263
  %267 = load ptr, ptr %237, align 8, !tbaa !30
  %268 = tail call ptr @operand_subword(ptr noundef %267, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %269 = icmp eq ptr %268, null
  br i1 %269, label %107, label %270

270:                                              ; preds = %266
  %271 = tail call i32 @true_regnum(ptr noundef nonnull %268) #24
  %272 = icmp sgt i32 %271, -1
  br i1 %272, label %273, label %107

273:                                              ; preds = %270, %230, %192, %175, %165, %155, %140, %130
  %274 = phi i32 [ %133, %130 ], [ %142, %140 ], [ %163, %165 ], [ %173, %175 ], [ %195, %192 ], [ %231, %230 ], [ %271, %270 ], [ %157, %155 ]
  %275 = phi ptr [ %132, %130 ], [ %141, %140 ], [ %162, %165 ], [ %172, %175 ], [ %194, %192 ], [ %228, %230 ], [ %268, %270 ], [ %156, %155 ]
  br i1 %82, label %276, label %278

276:                                              ; preds = %273
  %277 = icmp eq i32 %274, %3
  br i1 %277, label %284, label %107

278:                                              ; preds = %273
  %279 = icmp ugt i32 %274, 52
  br i1 %279, label %107, label %280

280:                                              ; preds = %278
  %281 = load i64, ptr %84, align 8, !tbaa !44
  %282 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %281, i32 noundef %6, i32 noundef %274) #25, !range !45
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %107, label %284

284:                                              ; preds = %276, %280
  %285 = phi i32 [ %3, %276 ], [ %274, %280 ]
  %286 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1
  %287 = icmp eq ptr %4, null
  %288 = ptrtoint ptr %4 to i64
  %289 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1, i32 0, i32 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !30
  %291 = icmp eq ptr %290, null
  br i1 %291, label %295, label %292

292:                                              ; preds = %284
  %293 = tail call ptr @find_reg_note(ptr noundef nonnull %91, i32 noundef 6, ptr noundef %275) #24
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %716

295:                                              ; preds = %292, %284
  %296 = icmp eq i32 %285, 7
  %297 = icmp eq i32 %79, 7
  %298 = select i1 %296, i1 true, i1 %297
  br i1 %298, label %309, label %299

299:                                              ; preds = %295
  br i1 %74, label %314, label %300

300:                                              ; preds = %299
  %301 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !31
  %302 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %301, ptr noundef %0) #25
  %303 = icmp eq i32 %302, 0
  %304 = load i32, ptr %275, align 8
  %305 = lshr i32 %304, 16
  %306 = and i32 %305, 255
  %307 = icmp eq i32 %306, %6
  %308 = select i1 %303, i32 %78, i32 1
  br i1 %307, label %320, label %716

309:                                              ; preds = %295
  %310 = load i32, ptr %275, align 8
  %311 = lshr i32 %310, 16
  %312 = and i32 %311, 255
  %313 = icmp eq i32 %312, %6
  br i1 %313, label %319, label %716

314:                                              ; preds = %299
  %315 = load i32, ptr %275, align 8
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  %318 = icmp eq i32 %317, %6
  br i1 %318, label %344, label %716

319:                                              ; preds = %309
  br i1 %74, label %344, label %320

320:                                              ; preds = %300, %319
  %321 = phi i32 [ 1, %319 ], [ %308, %300 ]
  %322 = load i32, ptr %91, align 8
  %323 = and i32 %322, 65535
  %324 = add nsw i32 %323, -7
  %325 = icmp ult i32 %324, 3
  br i1 %325, label %328, label %326

326:                                              ; preds = %320
  %327 = icmp eq i32 %323, 10
  tail call void @llvm.assume(i1 %327)
  br label %328

328:                                              ; preds = %320, %326
  %329 = load ptr, ptr %286, align 8, !tbaa !30
  %330 = load i32, ptr %329, align 8
  %331 = and i32 %330, 65535
  %332 = icmp eq i32 %331, 23
  br i1 %332, label %335, label %333

333:                                              ; preds = %328
  %334 = tail call ptr @single_set_2(ptr noundef nonnull %91, ptr noundef nonnull %329) #24
  br label %335

335:                                              ; preds = %328, %333
  %336 = phi ptr [ %334, %333 ], [ %329, %328 ]
  %337 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !30
  %339 = icmp eq ptr %275, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %335
  %341 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %285) #25
  %342 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %285, i32 noundef %341, ptr noundef %0, ptr noundef null) #25
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %716

344:                                              ; preds = %314, %340, %335, %319
  %345 = phi i1 [ true, %340 ], [ true, %335 ], [ false, %319 ], [ false, %314 ]
  %346 = phi i32 [ %321, %340 ], [ %321, %335 ], [ 1, %319 ], [ %78, %314 ]
  %347 = icmp ugt i32 %79, 52
  br i1 %347, label %348, label %350

348:                                              ; preds = %344
  %349 = zext nneg i32 %6 to i64
  br label %356

350:                                              ; preds = %344
  %351 = zext nneg i32 %79 to i64
  %352 = zext nneg i32 %6 to i64
  %353 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %351, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !30
  %355 = zext i8 %354 to i32
  br label %356

356:                                              ; preds = %348, %350
  %357 = phi i64 [ %349, %348 ], [ %352, %350 ]
  %358 = phi i32 [ 1, %348 ], [ %355, %350 ]
  %359 = zext nneg i32 %285 to i64
  %360 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %359, i64 %357
  %361 = load i8, ptr %360, align 1, !tbaa !30
  %362 = zext i8 %361 to i32
  %363 = or i1 %77, %345
  %364 = xor i1 %363, true
  %365 = add nsw i32 %358, %79
  %366 = icmp sgt i32 %365, %285
  %367 = select i1 %364, i1 %366, i1 false
  %368 = add nuw nsw i32 %285, %362
  %369 = icmp slt i32 %79, %368
  %370 = select i1 %367, i1 %369, i1 false
  br i1 %370, label %716, label %371

371:                                              ; preds = %356
  switch i64 %288, label %372 [
    i64 0, label %417
    i64 1, label %386
  ]

372:                                              ; preds = %371
  %373 = icmp eq i8 %361, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %372
  %375 = zext i8 %361 to i64
  %376 = getelementptr i16, ptr %4, i64 %359
  br label %380

377:                                              ; preds = %380
  %378 = add nuw nsw i64 %381, 1
  %379 = icmp eq i64 %378, %375
  br i1 %379, label %386, label %380, !llvm.loop !95

380:                                              ; preds = %374, %377
  %381 = phi i64 [ 0, %374 ], [ %378, %377 ]
  %382 = getelementptr i16, ptr %376, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !40
  %384 = icmp sgt i16 %383, -1
  br i1 %384, label %716, label %377

385:                                              ; preds = %372
  br i1 %287, label %417, label %386

386:                                              ; preds = %377, %371, %385
  %387 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %417

389:                                              ; preds = %386
  %390 = zext nneg i32 %387 to i64
  br label %391

391:                                              ; preds = %389, %414
  %392 = phi i64 [ 0, %389 ], [ %415, %414 ]
  %393 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %392, i32 11
  %394 = load ptr, ptr %393, align 8, !tbaa !53
  %395 = icmp eq ptr %394, null
  br i1 %395, label %414, label %396

396:                                              ; preds = %391
  %397 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %392
  %398 = load ptr, ptr %397, align 8, !tbaa !47
  %399 = icmp eq ptr %398, null
  br i1 %399, label %414, label %400

400:                                              ; preds = %396
  %401 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %394) #25
  %402 = icmp slt i32 %401, %368
  br i1 %402, label %403, label %414

403:                                              ; preds = %400
  %404 = sext i32 %401 to i64
  %405 = load i32, ptr %394, align 8
  %406 = lshr i32 %405, 16
  %407 = and i32 %406, 255
  %408 = zext nneg i32 %407 to i64
  %409 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %404, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !30
  %411 = zext i8 %410 to i32
  %412 = add nsw i32 %401, %411
  %413 = icmp sgt i32 %412, %285
  br i1 %413, label %716, label %414

414:                                              ; preds = %400, %403, %391, %396
  %415 = add nuw nsw i64 %392, 1
  %416 = icmp eq i64 %415, %390
  br i1 %416, label %417, label %391, !llvm.loop !96

417:                                              ; preds = %414, %386, %371, %385
  br i1 %345, label %418, label %423

418:                                              ; preds = %417
  %419 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !30
  %421 = tail call zeroext i8 @constant_address_p(ptr noundef %420) #24
  %422 = icmp ne i8 %421, 0
  br label %423

423:                                              ; preds = %418, %417
  %424 = phi i1 [ %422, %418 ], [ true, %417 ]
  %425 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %426 = load ptr, ptr %425, align 8, !tbaa !30
  %427 = icmp eq ptr %426, %91
  br i1 %427, label %716, label %428

428:                                              ; preds = %423
  %429 = or i32 %346, %75
  %430 = icmp eq i32 %429, 0
  %431 = icmp eq i32 %358, 0
  %432 = icmp ugt i32 %285, 52
  %433 = icmp eq i8 %361, 0
  %434 = icmp eq i32 %346, 0
  %435 = icmp sgt i32 %79, 52
  %436 = zext i32 %79 to i64
  %437 = select i1 %347, i1 true, i1 %431
  %438 = zext nneg i32 %358 to i64
  %439 = select i1 %432, i1 true, i1 %433
  %440 = zext i8 %361 to i64
  br label %441

441:                                              ; preds = %428, %712
  %442 = phi ptr [ %426, %428 ], [ %714, %712 ]
  %443 = load i32, ptr %442, align 8
  %444 = and i32 %443, 65535
  %445 = icmp eq i32 %444, 10
  br i1 %445, label %446, label %467

446:                                              ; preds = %441
  br i1 %430, label %447, label %716

447:                                              ; preds = %446
  br i1 %437, label %457, label %451

448:                                              ; preds = %451
  %449 = add nuw nsw i64 %452, 1
  %450 = icmp eq i64 %449, %438
  br i1 %450, label %457, label %451, !llvm.loop !97

451:                                              ; preds = %447, %448
  %452 = phi i64 [ %449, %448 ], [ 0, %447 ]
  %453 = add nuw nsw i64 %452, %436
  %454 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %453
  %455 = load i8, ptr %454, align 1, !tbaa !30
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %448, label %716

457:                                              ; preds = %448, %447
  br i1 %439, label %467, label %461

458:                                              ; preds = %461
  %459 = add nuw nsw i64 %462, 1
  %460 = icmp eq i64 %459, %440
  br i1 %460, label %467, label %461, !llvm.loop !98

461:                                              ; preds = %457, %458
  %462 = phi i64 [ %459, %458 ], [ 0, %457 ]
  %463 = add nuw nsw i64 %462, %359
  %464 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %463
  %465 = load i8, ptr %464, align 1, !tbaa !30
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %458, label %716

467:                                              ; preds = %458, %457, %441
  %468 = add nsw i32 %444, -7
  %469 = icmp ult i32 %468, 4
  br i1 %469, label %470, label %712

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.rtx_def, ptr %442, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !30
  %473 = tail call i32 @volatile_insn_p(ptr noundef %472) #24
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %716

475:                                              ; preds = %470
  %476 = load i32, ptr %472, align 8
  %477 = and i32 %476, 65535
  %478 = icmp eq i32 %477, 14
  br i1 %478, label %479, label %483

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1, i32 0, i32 0, i64 1
  %481 = load ptr, ptr %480, align 8, !tbaa !30
  %482 = load i32, ptr %481, align 8
  br label %483

483:                                              ; preds = %479, %475
  %484 = phi i32 [ %482, %479 ], [ %476, %475 ]
  %485 = phi ptr [ %481, %479 ], [ %472, %475 ]
  %486 = trunc i32 %484 to i16
  switch i16 %486, label %645 [
    i16 23, label %487
    i16 25, label %487
    i16 15, label %553
  ]

487:                                              ; preds = %483, %483
  br label %488

488:                                              ; preds = %494, %487
  %489 = phi ptr [ %485, %487 ], [ %491, %494 ]
  %490 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !30
  %492 = load i32, ptr %491, align 8
  %493 = trunc i32 %492 to i16
  switch i16 %493, label %526 [
    i16 39, label %494
    i16 120, label %494
    i16 40, label %494
    i16 37, label %495
  ]

494:                                              ; preds = %488, %488, %488
  br label %488, !llvm.loop !99

495:                                              ; preds = %488
  %496 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %491) #25
  %497 = icmp ult i32 %496, 53
  br i1 %497, label %498, label %506

498:                                              ; preds = %495
  %499 = zext nneg i32 %496 to i64
  %500 = lshr i32 %492, 16
  %501 = and i32 %500, 255
  %502 = zext nneg i32 %501 to i64
  %503 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %499, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !30
  %505 = zext i8 %504 to i32
  br label %506

506:                                              ; preds = %495, %498
  %507 = phi i32 [ %505, %498 ], [ 1, %495 ]
  %508 = icmp slt i32 %496, %365
  %509 = add nsw i32 %507, %496
  %510 = icmp sgt i32 %509, %79
  %511 = select i1 %508, i1 %510, i1 false
  br i1 %511, label %716, label %512

512:                                              ; preds = %506
  %513 = icmp slt i32 %496, %368
  %514 = icmp sgt i32 %509, %285
  %515 = select i1 %513, i1 %514, i1 false
  br i1 %515, label %716, label %516

516:                                              ; preds = %512
  br i1 %424, label %523, label %517

517:                                              ; preds = %516
  %518 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %491, ptr noundef %0) #25
  %519 = icmp eq i32 %518, 0
  %520 = icmp ne i32 %496, 7
  %521 = or i1 %434, %520
  %522 = and i1 %519, %521
  br i1 %522, label %645, label %716

523:                                              ; preds = %516
  %524 = icmp ne i32 %496, 7
  %525 = or i1 %434, %524
  br i1 %525, label %645, label %716

526:                                              ; preds = %488
  %527 = and i32 %492, 65535
  %528 = icmp eq i32 %527, 43
  %529 = and i1 %345, %528
  br i1 %529, label %530, label %537

530:                                              ; preds = %526
  %531 = lshr i32 %492, 16
  %532 = and i32 %531, 255
  %533 = tail call i32 @push_operand(ptr noundef nonnull %491, i32 noundef %532) #24
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %716, label %535

535:                                              ; preds = %530
  %536 = load i32, ptr %491, align 8
  br label %537

537:                                              ; preds = %535, %526
  %538 = phi i32 [ %536, %535 ], [ %492, %526 ]
  %539 = and i32 %538, 65535
  %540 = icmp eq i32 %539, 43
  %541 = select i1 %540, i1 %435, i1 false
  br i1 %541, label %542, label %547

542:                                              ; preds = %537
  %543 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %544 = getelementptr inbounds ptr, ptr %543, i64 %436
  %545 = load ptr, ptr %544, align 8, !tbaa !31
  %546 = icmp eq ptr %545, null
  br i1 %546, label %547, label %716

547:                                              ; preds = %542, %537
  br i1 %434, label %645, label %548

548:                                              ; preds = %547
  %549 = lshr i32 %538, 16
  %550 = and i32 %549, 255
  %551 = tail call i32 @push_operand(ptr noundef nonnull %491, i32 noundef %550) #24
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %645, label %716

553:                                              ; preds = %483
  %554 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 0, i32 1
  %555 = load ptr, ptr %554, align 8, !tbaa !30
  %556 = load i32, ptr %555, align 8, !tbaa !100
  %557 = icmp slt i32 %556, 1
  br i1 %557, label %645, label %558

558:                                              ; preds = %553
  %559 = zext nneg i32 %556 to i64
  br label %560

560:                                              ; preds = %558, %643
  %561 = phi i64 [ %559, %558 ], [ %562, %643 ]
  %562 = add nsw i64 %561, -1
  %563 = load ptr, ptr %554, align 8, !tbaa !30
  %564 = getelementptr inbounds %struct.rtvec_def, ptr %563, i64 0, i32 1, i64 %562
  %565 = load ptr, ptr %564, align 8, !tbaa !31
  %566 = load i32, ptr %565, align 8
  %567 = and i32 %566, 65535
  %568 = icmp eq i32 %567, 14
  br i1 %568, label %569, label %573

569:                                              ; preds = %560
  %570 = getelementptr inbounds %struct.rtx_def, ptr %565, i64 0, i32 1, i32 0, i32 0, i64 1
  %571 = load ptr, ptr %570, align 8, !tbaa !30
  %572 = load i32, ptr %571, align 8
  br label %573

573:                                              ; preds = %569, %560
  %574 = phi i32 [ %572, %569 ], [ %566, %560 ]
  %575 = phi ptr [ %571, %569 ], [ %565, %560 ]
  %576 = trunc i32 %574 to i16
  switch i16 %576, label %643 [
    i16 23, label %577
    i16 25, label %577
  ]

577:                                              ; preds = %573, %573
  br label %578

578:                                              ; preds = %584, %577
  %579 = phi ptr [ %575, %577 ], [ %581, %584 ]
  %580 = getelementptr inbounds %struct.rtx_def, ptr %579, i64 0, i32 1
  %581 = load ptr, ptr %580, align 8, !tbaa !30
  %582 = load i32, ptr %581, align 8
  %583 = trunc i32 %582 to i16
  switch i16 %583, label %616 [
    i16 39, label %584
    i16 120, label %584
    i16 40, label %584
    i16 37, label %585
  ]

584:                                              ; preds = %578, %578, %578
  br label %578, !llvm.loop !102

585:                                              ; preds = %578
  %586 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %581) #25
  %587 = icmp ult i32 %586, 53
  br i1 %587, label %588, label %596

588:                                              ; preds = %585
  %589 = zext nneg i32 %586 to i64
  %590 = lshr i32 %582, 16
  %591 = and i32 %590, 255
  %592 = zext nneg i32 %591 to i64
  %593 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %589, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !30
  %595 = zext i8 %594 to i32
  br label %596

596:                                              ; preds = %585, %588
  %597 = phi i32 [ %595, %588 ], [ 1, %585 ]
  %598 = icmp slt i32 %586, %365
  %599 = add nsw i32 %597, %586
  %600 = icmp sgt i32 %599, %79
  %601 = select i1 %598, i1 %600, i1 false
  br i1 %601, label %716, label %602

602:                                              ; preds = %596
  %603 = icmp slt i32 %586, %368
  %604 = icmp sgt i32 %599, %285
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %716, label %606

606:                                              ; preds = %602
  br i1 %424, label %613, label %607

607:                                              ; preds = %606
  %608 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %581, ptr noundef %0) #25
  %609 = icmp eq i32 %608, 0
  %610 = icmp ne i32 %586, 7
  %611 = or i1 %434, %610
  %612 = and i1 %609, %611
  br i1 %612, label %643, label %716

613:                                              ; preds = %606
  %614 = icmp ne i32 %586, 7
  %615 = or i1 %434, %614
  br i1 %615, label %643, label %716

616:                                              ; preds = %578
  %617 = and i32 %582, 65535
  %618 = icmp eq i32 %617, 43
  %619 = and i1 %345, %618
  br i1 %619, label %620, label %627

620:                                              ; preds = %616
  %621 = lshr i32 %582, 16
  %622 = and i32 %621, 255
  %623 = tail call i32 @push_operand(ptr noundef nonnull %581, i32 noundef %622) #24
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %716, label %625

625:                                              ; preds = %620
  %626 = load i32, ptr %581, align 8
  br label %627

627:                                              ; preds = %625, %616
  %628 = phi i32 [ %626, %625 ], [ %582, %616 ]
  %629 = and i32 %628, 65535
  %630 = icmp eq i32 %629, 43
  %631 = select i1 %630, i1 %435, i1 false
  br i1 %631, label %632, label %637

632:                                              ; preds = %627
  %633 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %634 = getelementptr inbounds ptr, ptr %633, i64 %436
  %635 = load ptr, ptr %634, align 8, !tbaa !31
  %636 = icmp eq ptr %635, null
  br i1 %636, label %637, label %716

637:                                              ; preds = %632, %627
  br i1 %434, label %643, label %638

638:                                              ; preds = %637
  %639 = lshr i32 %628, 16
  %640 = and i32 %639, 255
  %641 = tail call i32 @push_operand(ptr noundef nonnull %581, i32 noundef %640) #24
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %716

643:                                              ; preds = %607, %613, %638, %637, %573
  %644 = icmp slt i64 %561, 2
  br i1 %644, label %645, label %560, !llvm.loop !103

645:                                              ; preds = %643, %517, %553, %523, %548, %547, %483
  %646 = load i32, ptr %442, align 8
  %647 = and i32 %646, 65535
  %648 = icmp eq i32 %647, 10
  br i1 %648, label %649, label %712

649:                                              ; preds = %645
  %650 = getelementptr inbounds %struct.rtx_def, ptr %442, i64 1, i32 1, i32 0, i32 0, i64 2
  %651 = load ptr, ptr %650, align 8, !tbaa !30
  %652 = icmp eq ptr %651, null
  br i1 %652, label %712, label %653

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.rtx_def, ptr %651, i64 0, i32 1, i32 0, i32 0, i64 1
  %655 = load ptr, ptr %654, align 8, !tbaa !30
  %656 = icmp eq ptr %655, null
  br i1 %656, label %712, label %657

657:                                              ; preds = %653, %707
  %658 = phi ptr [ %709, %707 ], [ %654, %653 ]
  %659 = phi ptr [ %708, %707 ], [ %651, %653 ]
  %660 = getelementptr inbounds %struct.rtx_def, ptr %659, i64 0, i32 1
  %661 = load ptr, ptr %660, align 8, !tbaa !30
  %662 = load i32, ptr %661, align 8
  %663 = and i32 %662, 65535
  %664 = icmp eq i32 %663, 25
  br i1 %664, label %665, label %707

665:                                              ; preds = %657
  %666 = getelementptr inbounds %struct.rtx_def, ptr %661, i64 0, i32 1
  %667 = load ptr, ptr %666, align 8, !tbaa !30
  %668 = load i32, ptr %667, align 8
  %669 = and i32 %668, 65535
  %670 = icmp eq i32 %669, 37
  br i1 %670, label %671, label %692

671:                                              ; preds = %665
  %672 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %667) #25
  %673 = sext i32 %672 to i64
  %674 = lshr i32 %668, 16
  %675 = and i32 %674, 255
  %676 = zext nneg i32 %675 to i64
  %677 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %673, i64 %676
  %678 = load i8, ptr %677, align 1, !tbaa !30
  %679 = zext i8 %678 to i32
  %680 = icmp slt i32 %672, %365
  %681 = add nsw i32 %672, %679
  %682 = icmp sgt i32 %681, %79
  %683 = select i1 %680, i1 %682, i1 false
  br i1 %683, label %716, label %684

684:                                              ; preds = %671
  %685 = icmp slt i32 %672, %368
  %686 = icmp sgt i32 %681, %285
  %687 = select i1 %685, i1 %686, i1 false
  br i1 %687, label %716, label %688

688:                                              ; preds = %684
  br i1 %424, label %707, label %689

689:                                              ; preds = %688
  %690 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %667, ptr noundef %0) #25
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %707, label %716

692:                                              ; preds = %665
  %693 = icmp eq i32 %669, 43
  %694 = and i1 %345, %693
  br i1 %694, label %695, label %700

695:                                              ; preds = %692
  %696 = lshr i32 %668, 16
  %697 = and i32 %696, 255
  %698 = tail call i32 @push_operand(ptr noundef nonnull %667, i32 noundef %697) #24
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %716, label %700

700:                                              ; preds = %695, %692
  br i1 %434, label %707, label %701

701:                                              ; preds = %700
  %702 = load i32, ptr %667, align 8
  %703 = lshr i32 %702, 16
  %704 = and i32 %703, 255
  %705 = tail call i32 @push_operand(ptr noundef nonnull %667, i32 noundef %704) #24
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %707, label %716

707:                                              ; preds = %700, %701, %689, %688, %657
  %708 = load ptr, ptr %658, align 8, !tbaa !30
  %709 = getelementptr inbounds %struct.rtx_def, ptr %708, i64 0, i32 1, i32 0, i32 0, i64 1
  %710 = load ptr, ptr %709, align 8, !tbaa !30
  %711 = icmp eq ptr %710, null
  br i1 %711, label %712, label %657, !llvm.loop !104

712:                                              ; preds = %707, %653, %467, %645, %649
  %713 = getelementptr inbounds %struct.rtx_def, ptr %442, i64 0, i32 1, i32 0, i32 0, i64 1
  %714 = load ptr, ptr %713, align 8, !tbaa !30
  %715 = icmp eq ptr %714, %91
  br i1 %715, label %716, label %441

716:                                              ; preds = %97, %100, %88, %380, %403, %712, %470, %506, %512, %517, %548, %542, %530, %523, %446, %451, %461, %613, %620, %632, %638, %607, %602, %596, %701, %695, %671, %684, %689, %300, %423, %24, %15, %314, %45, %356, %340, %309, %292, %61, %64, %36
  %717 = phi ptr [ null, %36 ], [ null, %64 ], [ null, %61 ], [ null, %292 ], [ null, %309 ], [ null, %340 ], [ null, %356 ], [ null, %45 ], [ null, %314 ], [ null, %15 ], [ null, %24 ], [ %275, %423 ], [ null, %300 ], [ null, %689 ], [ null, %684 ], [ null, %671 ], [ null, %695 ], [ null, %701 ], [ null, %596 ], [ null, %602 ], [ null, %607 ], [ null, %638 ], [ null, %632 ], [ null, %620 ], [ null, %613 ], [ null, %461 ], [ null, %451 ], [ %275, %712 ], [ null, %470 ], [ null, %506 ], [ null, %512 ], [ null, %517 ], [ null, %548 ], [ null, %542 ], [ null, %530 ], [ null, %523 ], [ null, %446 ], [ null, %403 ], [ null, %380 ], [ null, %88 ], [ null, %100 ], [ null, %97 ]
  ret ptr %717
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @df, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !105
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi ptr [ %2, %4 ], [ %22, %18 ]
  %7 = phi ptr [ %3, %4 ], [ null, %18 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %156, label %9

9:                                                ; preds = %5, %108
  %10 = phi ptr [ %110, %108 ], [ %6, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -23
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 31)
  switch i32 %14, label %111 [
    i32 7, label %15
    i32 8, label %47
    i32 1, label %67
    i32 0, label %67
  ]

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %17 = icmp ugt i32 %16, 52
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5

24:                                               ; preds = %18
  %25 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %26 = getelementptr inbounds ptr, ptr %25, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %156

29:                                               ; preds = %24
  %30 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !31
  %31 = getelementptr inbounds ptr, ptr %30, i64 %20
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %156

34:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6505, ptr noundef nonnull @.str.1) #24
  br label %156

35:                                               ; preds = %15
  %36 = icmp ult i32 %16, %1
  br i1 %36, label %37, label %156

37:                                               ; preds = %35
  %38 = zext nneg i32 %16 to i64
  %39 = lshr i32 %11, 16
  %40 = and i32 %39, 255
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !30
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %16, %44
  %46 = icmp ugt i32 %45, %0
  br label %156

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !30
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  %54 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %49) #25
  %55 = icmp ult i32 %54, 53
  br i1 %55, label %56, label %111

56:                                               ; preds = %53
  %57 = tail call i32 @subreg_regno(ptr noundef nonnull %10) #24
  %58 = icmp ult i32 %57, 53
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call i32 @subreg_nregs(ptr noundef nonnull %10) #24
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i32 [ %60, %59 ], [ 1, %56 ]
  %63 = add i32 %62, %57
  %64 = icmp ult i32 %57, %1
  %65 = icmp ugt i32 %63, %0
  %66 = select i1 %64, i1 %65, i1 false
  br label %156

67:                                               ; preds = %9, %9
  %68 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %69 = icmp eq ptr %68, %7
  br i1 %69, label %103, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %68, align 8, !tbaa !30
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 39
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %77 = icmp eq ptr %76, %7
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %76, align 8, !tbaa !30
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 37
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %79) #25
  %85 = icmp ugt i32 %84, 52
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %79, ptr noundef %7) #25
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %156

89:                                               ; preds = %86
  %90 = load ptr, ptr %68, align 8, !tbaa !30
  %91 = load i32, ptr %90, align 8
  br label %92

92:                                               ; preds = %89, %83, %78, %75, %70
  %93 = phi i32 [ %91, %89 ], [ %72, %83 ], [ %72, %78 ], [ %72, %75 ], [ %72, %70 ]
  %94 = phi ptr [ %90, %89 ], [ %71, %83 ], [ %71, %78 ], [ %71, %75 ], [ %71, %70 ]
  %95 = and i32 %93, 65535
  %96 = icmp eq i32 %95, 37
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %94) #25, !range !42
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97, %92
  %101 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %94, ptr noundef %7) #25
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %156

103:                                              ; preds = %100, %97, %67
  %104 = icmp eq i32 %12, 25
  %105 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = icmp eq ptr %105, %7
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %156, label %108

108:                                              ; preds = %129, %103
  %109 = phi ptr [ %105, %103 ], [ %119, %129 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !30
  br label %9

111:                                              ; preds = %9, %47, %53
  %112 = zext nneg i32 %12 to i64
  %113 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !31
  %115 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %112
  %116 = load i8, ptr %115, align 1, !tbaa !30
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %156, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %120 = zext i8 %116 to i64
  br label %121

121:                                              ; preds = %118, %154
  %122 = phi i64 [ %120, %118 ], [ %123, %154 ]
  %123 = add nsw i64 %122, -1
  %124 = getelementptr inbounds i8, ptr %114, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !30
  switch i8 %125, label %154 [
    i8 101, label %126
    i8 69, label %135
  ]

126:                                              ; preds = %121
  %127 = getelementptr inbounds [1 x %union.rtunion_def], ptr %119, i64 0, i64 %123
  %128 = icmp eq ptr %127, %7
  br i1 %128, label %154, label %129

129:                                              ; preds = %126
  %130 = icmp eq i64 %123, 0
  br i1 %130, label %108, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr %127, align 8, !tbaa !30
  %133 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %132, ptr noundef %7) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %154, label %156

135:                                              ; preds = %121
  %136 = getelementptr inbounds [1 x %union.rtunion_def], ptr %119, i64 0, i64 %123
  %137 = load ptr, ptr %136, align 8, !tbaa !30
  %138 = load i32, ptr %137, align 8, !tbaa !100
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %154, label %140

140:                                              ; preds = %135
  %141 = zext nneg i32 %138 to i64
  br label %142

142:                                              ; preds = %140, %152
  %143 = phi i64 [ %141, %140 ], [ %144, %152 ]
  %144 = add nsw i64 %143, -1
  %145 = load ptr, ptr %136, align 8, !tbaa !30
  %146 = getelementptr inbounds %struct.rtvec_def, ptr %145, i64 0, i32 1, i64 %144
  %147 = icmp eq ptr %146, %7
  br i1 %147, label %152, label %148

148:                                              ; preds = %142
  %149 = load ptr, ptr %146, align 8, !tbaa !31
  %150 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %149, ptr noundef %7) #25
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %142, %148
  %153 = icmp ult i64 %143, 2
  br i1 %153, label %154, label %142, !llvm.loop !108

154:                                              ; preds = %152, %135, %121, %126, %131
  %155 = icmp sgt i64 %122, 1
  br i1 %155, label %121, label %156, !llvm.loop !109

156:                                              ; preds = %5, %103, %86, %100, %111, %131, %154, %148, %35, %37, %34, %29, %24, %61
  %157 = phi i1 [ %66, %61 ], [ false, %24 ], [ false, %29 ], [ false, %34 ], [ false, %35 ], [ %46, %37 ], [ true, %148 ], [ true, %131 ], [ false, %154 ], [ false, %111 ], [ false, %103 ], [ true, %86 ], [ true, %100 ], [ false, %5 ]
  %158 = zext i1 %157 to i32
  ret i32 %158
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !30
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = load i32, ptr %2, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %37 [
    i16 23, label %6
    i16 25, label %6
    i16 15, label %22
  ]

6:                                                ; preds = %3, %3
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi ptr [ %10, %7 ], [ %2, %6 ]
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %21 [
    i16 39, label %7
    i16 37, label %13
  ]

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = lshr i32 %11, 16
  %18 = and i32 %17, 255
  %19 = tail call fastcc i32 @end_hard_regno(i32 noundef %18, i32 noundef %14) #25
  %20 = icmp ugt i32 %19, %0
  br i1 %20, label %37, label %21

21:                                               ; preds = %7, %16, %13
  br label %37

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  %25 = load i32, ptr %24, align 8, !tbaa !100
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %31, %22
  %28 = phi i64 [ %32, %31 ], [ %26, %22 ]
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = add nsw i64 %28, -1
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr noundef %34) #25, !range !42
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %27, label %37, !llvm.loop !110

37:                                               ; preds = %27, %31, %3, %21, %16
  %38 = phi i32 [ 1, %16 ], [ 0, %21 ], [ 0, %3 ], [ 0, %27 ], [ 1, %31 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @can_reload_into(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.recog_data, align 8
  call void @llvm.lifetime.start.p0(i64 1128, ptr nonnull %4)
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %17
    i16 43, label %17
  ]

7:                                                ; preds = %3
  %8 = tail call ptr @gen_rtx_REG(i32 noundef %2, i32 noundef %1) #24
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %8, ptr noundef nonnull %0) #24
  %10 = tail call ptr @make_insn_raw(ptr noundef %9) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) %4, ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, i64 1128, i1 false), !tbaa.struct !111
  %11 = tail call fastcc i32 @recog_memoized(ptr noundef %10) #25
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @extract_insn(ptr noundef %10) #24
  %14 = tail call i32 @constrain_operands(i32 noundef 1) #24
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, ptr noundef nonnull align 8 dereferenceable(1128) %4, i64 1128, i1 false), !tbaa.struct !111
  br label %17

17:                                               ; preds = %3, %3, %15
  %18 = phi i32 [ %16, %15 ], [ 1, %3 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %4)
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @transfer_replacements(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %13
  %8 = phi i64 [ 0, %5 ], [ %14, %13 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %0, ptr %9, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !112

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: optsize
declare i32 @loc_mentioned_in_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @deallocate_reload_reg(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @operands_match_p(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %82, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %75
  %7 = phi ptr [ %0, %4 ], [ %77, %75 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %70 [
    i16 37, label %17
    i16 39, label %11
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %70

17:                                               ; preds = %6, %11
  %18 = load i32, ptr %1, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %70 [
    i16 37, label %25
    i16 39, label %20
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8, !tbaa !30
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %70

25:                                               ; preds = %17, %20
  %26 = icmp eq i32 %9, 39
  br i1 %26, label %27, label %43

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #25
  %31 = icmp sgt i32 %30, 52
  br i1 %31, label %89, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %29, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !30
  %38 = lshr i32 %8, 16
  %39 = and i32 %38, 255
  %40 = tail call i32 @subreg_regno_offset(i32 noundef %30, i32 noundef %35, i32 noundef %37, i32 noundef %39) #24
  %41 = add i32 %40, %30
  %42 = load i32, ptr %1, align 8
  br label %45

43:                                               ; preds = %25
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  br label %45

45:                                               ; preds = %43, %32
  %46 = phi i32 [ %42, %32 ], [ %18, %43 ]
  %47 = phi i32 [ %41, %32 ], [ %44, %43 ]
  %48 = and i32 %46, 65535
  %49 = icmp eq i32 %48, 39
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !tbaa !30
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef %51) #25
  %53 = icmp sgt i32 %52, 52
  br i1 %53, label %89, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %51, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load i32, ptr %58, align 8, !tbaa !30
  %60 = lshr i32 %46, 16
  %61 = and i32 %60, 255
  %62 = tail call i32 @subreg_regno_offset(i32 noundef %52, i32 noundef %57, i32 noundef %59, i32 noundef %61) #24
  %63 = add i32 %62, %52
  br label %66

64:                                               ; preds = %45
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  br label %66

66:                                               ; preds = %54, %64
  %67 = phi i32 [ %63, %54 ], [ %65, %64 ]
  %68 = icmp eq i32 %47, %67
  %69 = zext i1 %68 to i32
  br label %82

70:                                               ; preds = %17, %6, %20, %11
  %71 = and i32 %8, 65534
  %72 = icmp eq i32 %71, 76
  %73 = icmp eq i32 %9, 79
  %74 = or i1 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !30
  %78 = icmp eq ptr %77, %1
  br i1 %78, label %82, label %6

79:                                               ; preds = %70
  %80 = load i32, ptr %1, align 8
  %81 = trunc i32 %80 to i16
  switch i16 %81, label %89 [
    i16 74, label %84
    i16 75, label %84
    i16 78, label %84
  ]

82:                                               ; preds = %66, %120, %120, %120, %117, %93, %89, %127, %121, %2, %199, %133, %180, %168, %161, %155, %149, %75, %84
  %83 = phi i32 [ %88, %84 ], [ %132, %127 ], [ %126, %121 ], [ %69, %66 ], [ 0, %89 ], [ 0, %93 ], [ 0, %117 ], [ 0, %120 ], [ 0, %120 ], [ 0, %120 ], [ 1, %2 ], [ 1, %133 ], [ %200, %199 ], [ %190, %180 ], [ 0, %149 ], [ 0, %155 ], [ %166, %161 ], [ 0, %168 ], [ 1, %75 ]
  ret i32 %83

84:                                               ; preds = %79, %79, %79
  %85 = load ptr, ptr %5, align 8, !tbaa !30
  %86 = tail call i32 @operands_match_p(ptr noundef nonnull %7, ptr noundef %85) #25
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 0, i32 2
  br label %82

89:                                               ; preds = %50, %27, %79
  %90 = phi i32 [ %46, %50 ], [ %18, %27 ], [ %80, %79 ]
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %9, %91
  br i1 %92, label %93, label %82

93:                                               ; preds = %89
  %94 = load i32, ptr %7, align 8
  %95 = xor i32 %94, %90
  %96 = and i32 %95, 16711680
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %82

98:                                               ; preds = %93
  %99 = icmp eq i32 %9, 43
  br i1 %99, label %100, label %120

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !30
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.mem_attrs, ptr %102, i64 0, i32 5
  %106 = load i8, ptr %105, align 8, !tbaa !32
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %100, %104
  %109 = phi i32 [ %107, %104 ], [ 0, %100 ]
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !30
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.mem_attrs, ptr %111, i64 0, i32 5
  %115 = load i8, ptr %114, align 8, !tbaa !32
  %116 = zext i8 %115 to i32
  br label %117

117:                                              ; preds = %108, %113
  %118 = phi i32 [ %116, %113 ], [ 0, %108 ]
  %119 = icmp eq i32 %109, %118
  br i1 %119, label %120, label %82

120:                                              ; preds = %117, %98
  switch i16 %10, label %133 [
    i16 30, label %82
    i16 32, label %82
    i16 31, label %82
    i16 44, label %121
    i16 45, label %127
  ]

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !30
  %124 = load ptr, ptr %5, align 8, !tbaa !30
  %125 = icmp eq ptr %123, %124
  %126 = zext i1 %125 to i32
  br label %82

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !30
  %130 = load ptr, ptr %5, align 8, !tbaa !30
  %131 = icmp eq ptr %129, %130
  %132 = zext i1 %131 to i32
  br label %82

133:                                              ; preds = %120
  %134 = zext nneg i32 %9 to i64
  %135 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !31
  %137 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %134
  %138 = load i8, ptr %137, align 1, !tbaa !30
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %82, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %142 = zext i8 %138 to i64
  br label %143

143:                                              ; preds = %140, %196
  %144 = phi i64 [ %142, %140 ], [ %146, %196 ]
  %145 = phi i32 [ 0, %140 ], [ %197, %196 ]
  %146 = add nsw i64 %144, -1
  %147 = getelementptr inbounds i8, ptr %136, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !30
  switch i8 %148, label %195 [
    i8 119, label %149
    i8 105, label %155
    i8 101, label %161
    i8 48, label %196
    i8 69, label %168
  ]

149:                                              ; preds = %143
  %150 = getelementptr inbounds [1 x i64], ptr %141, i64 0, i64 %146
  %151 = load i64, ptr %150, align 8, !tbaa !30
  %152 = getelementptr inbounds [1 x i64], ptr %5, i64 0, i64 %146
  %153 = load i64, ptr %152, align 8, !tbaa !30
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %196, label %82

155:                                              ; preds = %143
  %156 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %157 = load i32, ptr %156, align 8, !tbaa !30
  %158 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %159 = load i32, ptr %158, align 8, !tbaa !30
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %196, label %82

161:                                              ; preds = %143
  %162 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %163 = load ptr, ptr %162, align 8, !tbaa !30
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %165 = load ptr, ptr %164, align 8, !tbaa !30
  %166 = tail call i32 @operands_match_p(ptr noundef %163, ptr noundef %165) #25
  switch i32 %166, label %196 [
    i32 0, label %82
    i32 2, label %167
  ]

167:                                              ; preds = %161
  br label %196

168:                                              ; preds = %143
  %169 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %170 = load ptr, ptr %169, align 8, !tbaa !30
  %171 = load i32, ptr %170, align 8, !tbaa !100
  %172 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %173 = load ptr, ptr %172, align 8, !tbaa !30
  %174 = load i32, ptr %173, align 8, !tbaa !100
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %82

176:                                              ; preds = %168
  %177 = icmp sgt i32 %171, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %176
  %179 = zext nneg i32 %171 to i64
  br label %180

180:                                              ; preds = %178, %192
  %181 = phi i64 [ %179, %178 ], [ %183, %192 ]
  %182 = phi i32 [ %145, %178 ], [ %193, %192 ]
  %183 = add nsw i64 %181, -1
  %184 = load ptr, ptr %169, align 8, !tbaa !30
  %185 = getelementptr inbounds %struct.rtvec_def, ptr %184, i64 0, i32 1, i64 %183
  %186 = load ptr, ptr %185, align 8, !tbaa !31
  %187 = load ptr, ptr %172, align 8, !tbaa !30
  %188 = getelementptr inbounds %struct.rtvec_def, ptr %187, i64 0, i32 1, i64 %183
  %189 = load ptr, ptr %188, align 8, !tbaa !31
  %190 = tail call i32 @operands_match_p(ptr noundef %186, ptr noundef %189) #25
  switch i32 %190, label %192 [
    i32 0, label %82
    i32 2, label %191
  ]

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %180, %191
  %193 = phi i32 [ 1, %191 ], [ %182, %180 ]
  %194 = icmp ugt i64 %181, 1
  br i1 %194, label %180, label %196, !llvm.loop !113

195:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2324, ptr noundef nonnull @.str.1) #24
  br label %196

196:                                              ; preds = %192, %176, %143, %195, %149, %155, %167, %161
  %197 = phi i32 [ %145, %195 ], [ %145, %143 ], [ 1, %167 ], [ %145, %155 ], [ %145, %149 ], [ %145, %161 ], [ %145, %176 ], [ %193, %192 ]
  %198 = icmp sgt i64 %144, 1
  br i1 %198, label %143, label %199, !llvm.loop !114

199:                                              ; preds = %196
  %200 = add nuw nsw i32 %197, 1
  br label %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @safe_from_earlyclobber(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.decomposition, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %3, ptr noundef %1) #25
  %4 = tail call fastcc i32 @immune_p(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.decomposition) align 8 %3) #25, !range !42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decompose(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.decomposition) align 8 %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %187, %2
  %4 = phi ptr [ %1, %2 ], [ %188, %187 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %194 [
    i16 43, label %7
    i16 37, label %162
    i16 39, label %176
    i16 38, label %201
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %55 [
    i16 74, label %12
    i16 75, label %12
    i16 76, label %12
    i16 77, label %12
    i16 78, label %24
    i16 79, label %24
    i16 35, label %51
  ]

12:                                               ; preds = %7, %7, %7, %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  %15 = lshr i32 %5, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !30
  %20 = zext i8 %19 to i64
  %21 = sub nsw i64 0, %20
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #25
  %23 = icmp eq i32 %22, 7
  br label %201

24:                                               ; preds = %7, %7
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 49
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !35
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !30
  %48 = sub nsw i64 0, %47
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #25
  %50 = icmp eq i32 %49, 7
  br label %201

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  %54 = load i32, ptr %53, align 8
  br label %55

55:                                               ; preds = %7, %36, %30, %24, %51
  %56 = phi i32 [ %54, %51 ], [ %10, %24 ], [ %10, %30 ], [ %10, %36 ], [ %10, %7 ]
  %57 = phi i1 [ true, %51 ], [ false, %24 ], [ false, %30 ], [ false, %36 ], [ false, %7 ]
  %58 = phi ptr [ %53, %51 ], [ %9, %24 ], [ %9, %30 ], [ %9, %36 ], [ %9, %7 ]
  %59 = and i32 %56, 65535
  %60 = icmp eq i32 %59, 49
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !30
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !35
  %69 = icmp eq i32 %68, 9
  %70 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !30
  br i1 %69, label %81, label %72

72:                                               ; preds = %61
  %73 = load i32, ptr %71, align 8
  %74 = and i32 %73, 65535
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !35
  %78 = icmp eq i32 %77, 9
  %79 = select i1 %78, ptr %63, ptr null
  %80 = select i1 %78, ptr %71, ptr null
  br label %81

81:                                               ; preds = %61, %72, %55
  %82 = phi ptr [ null, %55 ], [ %79, %72 ], [ %71, %61 ]
  %83 = phi ptr [ null, %55 ], [ %80, %72 ], [ %63, %61 ]
  %84 = icmp eq ptr %83, null
  %85 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %86 = select i1 %84, ptr %58, ptr %82
  %87 = select i1 %84, ptr %85, ptr %83
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 35
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !30
  %94 = load i32, ptr %93, align 8
  br label %95

95:                                               ; preds = %91, %81
  %96 = phi i32 [ %94, %91 ], [ %88, %81 ]
  %97 = phi ptr [ %93, %91 ], [ %87, %81 ]
  %98 = trunc i32 %96 to i16
  switch i16 %98, label %128 [
    i16 49, label %99
    i16 30, label %134
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !30
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 30
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i32, ptr %86, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !30
  %111 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %108, ptr noundef nonnull %86, ptr noundef %110) #24
  %112 = load ptr, ptr %100, align 8, !tbaa !30
  br label %134

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !30
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 30
  %119 = load i32, ptr %86, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  br i1 %118, label %122, label %125

122:                                              ; preds = %113
  %123 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %121, ptr noundef nonnull %86, ptr noundef nonnull %101) #24
  %124 = load ptr, ptr %114, align 8, !tbaa !30
  br label %134

125:                                              ; preds = %113
  %126 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %121, ptr noundef nonnull %86, ptr noundef nonnull %97) #24
  %127 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !31
  br label %134

128:                                              ; preds = %95
  %129 = load i32, ptr %86, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %131, ptr noundef nonnull %86, ptr noundef nonnull %97) #24
  %133 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !31
  br label %134

134:                                              ; preds = %95, %128, %105, %125, %122
  %135 = phi ptr [ %111, %105 ], [ %123, %122 ], [ %126, %125 ], [ %132, %128 ], [ %86, %95 ]
  %136 = phi ptr [ %112, %105 ], [ %124, %122 ], [ %127, %125 ], [ %133, %128 ], [ %97, %95 ]
  br i1 %57, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, ptr %135, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 49
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = lshr i32 %138, 16
  %143 = and i32 %142, 255
  %144 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %143, ptr noundef nonnull %135) #24
  br label %145

145:                                              ; preds = %141, %137, %134
  %146 = phi ptr [ %144, %141 ], [ %135, %137 ], [ %135, %134 ]
  %147 = load i32, ptr %136, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 30
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2430, ptr noundef nonnull @.str.1) #24
  br label %151

151:                                              ; preds = %150, %145
  %152 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !30
  %154 = load i32, ptr %4, align 8
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !30
  %160 = zext i8 %159 to i64
  %161 = add nsw i64 %153, %160
  br label %201

162:                                              ; preds = %3
  %163 = tail call i32 @true_regnum(ptr noundef nonnull %4) #24
  %164 = icmp ugt i32 %163, 52
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #25
  %167 = zext i32 %166 to i64
  %168 = add nuw nsw i64 %167, 1
  br label %201

169:                                              ; preds = %162
  %170 = zext nneg i32 %163 to i64
  %171 = load i32, ptr %4, align 8
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 255
  %174 = tail call fastcc i32 @end_hard_regno(i32 noundef %173, i32 noundef %163) #25
  %175 = zext i32 %174 to i64
  br label %201

176:                                              ; preds = %3
  %177 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !30
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 37
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = tail call i32 @true_regnum(ptr noundef nonnull %4) #24
  %184 = icmp ugt i32 %183, 52
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load ptr, ptr %177, align 8, !tbaa !30
  br label %187

187:                                              ; preds = %185, %176
  %188 = phi ptr [ %186, %185 ], [ %178, %176 ]
  br label %3

189:                                              ; preds = %182
  %190 = zext nneg i32 %183 to i64
  %191 = tail call i32 @subreg_nregs(ptr noundef nonnull %4) #24
  %192 = zext i32 %191 to i64
  %193 = add nuw nsw i64 %192, %190
  br label %201

194:                                              ; preds = %3
  %195 = and i32 %5, 65535
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !35
  %199 = icmp eq i32 %198, 9
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2471, ptr noundef nonnull @.str.1) #24
  br label %201

201:                                              ; preds = %3, %189, %169, %165, %194, %200, %151, %45, %12
  %202 = phi i32 [ 0, %45 ], [ 0, %12 ], [ 1, %189 ], [ 1, %165 ], [ 1, %169 ], [ 0, %151 ], [ 0, %194 ], [ 0, %200 ], [ 0, %3 ]
  %203 = phi i1 [ %50, %45 ], [ %23, %12 ], [ false, %189 ], [ false, %165 ], [ false, %169 ], [ false, %151 ], [ true, %194 ], [ true, %200 ], [ true, %3 ]
  %204 = phi ptr [ %32, %45 ], [ %14, %12 ], [ null, %189 ], [ null, %165 ], [ null, %169 ], [ %146, %151 ], [ null, %194 ], [ null, %200 ], [ null, %3 ]
  %205 = phi i64 [ %48, %45 ], [ %21, %12 ], [ %190, %189 ], [ %167, %165 ], [ %170, %169 ], [ %153, %151 ], [ 0, %194 ], [ 0, %200 ], [ 0, %3 ]
  %206 = phi i64 [ %47, %45 ], [ %20, %12 ], [ %193, %189 ], [ %168, %165 ], [ %175, %169 ], [ %161, %151 ], [ 0, %194 ], [ 0, %200 ], [ 0, %3 ]
  %207 = zext i1 %203 to i32
  store i32 %202, ptr %0, align 8
  %208 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %207, ptr %208, align 4
  %209 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %204, ptr %209, align 8
  %210 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %205, ptr %210, align 8
  %211 = getelementptr inbounds i8, ptr %0, i64 24
  store i64 %206, ptr %211, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @immune_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct.decomposition) align 8 %2) unnamed_addr #0 {
  %4 = alloca %struct.decomposition, align 8
  %5 = load i32, ptr %2, align 8, !tbaa !115
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !117
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !118
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %10, i32 noundef %13, ptr noundef %0, ptr noundef null) #25
  %15 = icmp eq i32 %14, 0
  br label %85

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !119
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %85

20:                                               ; preds = %16
  %21 = load i32, ptr %1, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 43
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2491, ptr noundef nonnull @.str.1) #24
  br label %25

25:                                               ; preds = %20, %24
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %4, ptr noundef nonnull %0) #25
  %30 = getelementptr inbounds i8, ptr %4, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa.struct !120
  %32 = getelementptr inbounds i8, ptr %4, i64 16
  %33 = load i64, ptr %32, align 8, !tbaa.struct !121
  %34 = getelementptr inbounds i8, ptr %4, i64 24
  %35 = load i64, ptr %34, align 8, !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  %36 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !123
  %38 = tail call i32 @rtx_equal_p(ptr noundef %31, ptr noundef %37) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %29
  %41 = load i32, ptr %31, align 8
  %42 = and i32 %41, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !35
  %46 = icmp eq i32 %45, 9
  %47 = load i32, ptr %37, align 8
  %48 = and i32 %47, 65535
  %49 = zext nneg i32 %48 to i64
  br i1 %46, label %50, label %63

50:                                               ; preds = %40
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %49
  %52 = load i32, ptr %51, align 4, !tbaa !35
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !31
  %56 = icmp eq ptr %37, %55
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %58 = icmp eq ptr %37, %57
  %59 = select i1 %56, i1 true, i1 %58
  %60 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %61 = icmp eq ptr %37, %60
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %85, label %63

63:                                               ; preds = %40, %54
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %49
  %65 = load i32, ptr %64, align 4, !tbaa !35
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !31
  %69 = icmp eq ptr %31, %68
  %70 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %71 = icmp eq ptr %31, %70
  %72 = select i1 %69, i1 true, i1 %71
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %74 = icmp eq ptr %31, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %67, %63
  br label %85

77:                                               ; preds = %29
  %78 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !118
  %80 = icmp sge i64 %33, %79
  %81 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 3
  %82 = load i64, ptr %81, align 8
  %83 = icmp sge i64 %82, %35
  %84 = select i1 %80, i1 true, i1 %83
  br label %85

85:                                               ; preds = %67, %54, %50, %25, %16, %77, %76, %7
  %86 = phi i1 [ %15, %7 ], [ %84, %77 ], [ false, %76 ], [ true, %16 ], [ true, %25 ], [ true, %50 ], [ true, %54 ], [ true, %67 ]
  %87 = zext i1 %86 to i32
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @find_reloads(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [30 x ptr], align 16
  %7 = alloca [30 x i32], align 16
  %8 = alloca [30 x i8], align 16
  %9 = alloca [30 x i32], align 16
  %10 = alloca [30 x i32], align 16
  %11 = alloca [30 x i32], align 16
  %12 = alloca [30 x i32], align 16
  %13 = alloca [30 x i32], align 16
  %14 = alloca [30 x i32], align 16
  %15 = alloca [30 x i8], align 16
  %16 = alloca [30 x i8], align 16
  %17 = alloca [30 x i8], align 16
  %18 = alloca [30 x i8], align 16
  %19 = alloca [30 x i32], align 16
  %20 = alloca [30 x i32], align 16
  %21 = alloca [30 x i32], align 16
  %22 = alloca [30 x i32], align 16
  %23 = alloca [30 x i32], align 16
  %24 = alloca [30 x i8], align 16
  %25 = alloca [30 x i8], align 16
  %26 = alloca [30 x i8], align 16
  %27 = alloca [30 x i8], align 16
  %28 = alloca [30 x [30 x i8]], align 16
  %29 = alloca [30 x ptr], align 16
  %30 = alloca [30 x i32], align 16
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca %struct.decomposition, align 8
  %34 = alloca i32, align 4
  %35 = alloca [30 x i32], align 16
  %36 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(i64 900, ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %29) #23
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %49

43:                                               ; preds = %5
  %44 = load i32, ptr %38, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 23
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %38) #24
  br label %49

49:                                               ; preds = %5, %43, %47
  %50 = phi ptr [ %48, %47 ], [ null, %5 ], [ %38, %43 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %30) #23
  store ptr %0, ptr @this_insn, align 8, !tbaa !31
  store i32 0, ptr @n_reloads, align 4, !tbaa !35
  store i32 0, ptr @n_replacements, align 4, !tbaa !35
  store i32 0, ptr @n_earlyclobbers, align 4, !tbaa !35
  store i32 %1, ptr @replace_reloads, align 4, !tbaa !35
  store i32 %3, ptr @hard_regs_live_known, align 4, !tbaa !35
  store ptr %4, ptr @static_reload_reg_p, align 8, !tbaa !31
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -9
  %54 = icmp ult i32 %53, 2
  %55 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !35
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = sext i32 %55 to i64
  %59 = mul nsw i64 %58, 240
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @secondary_memlocs_elim, i8 0, i64 %59, i1 false)
  store i32 0, ptr @secondary_memlocs_elim_used, align 4, !tbaa !35
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, ptr %38, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !30
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #25
  %81 = icmp ult i32 %80, 53
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = lshr i32 %76, 16
  %84 = and i32 %83, 255
  %85 = zext nneg i32 %80 to i64
  %86 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !35
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !35
  %92 = tail call i32 @ix86_register_move_cost(i32 noundef %84, i32 noundef %87, i32 noundef %91) #24
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %2693, label %94

94:                                               ; preds = %82, %79, %73, %70, %64, %60
  tail call void @extract_insn(ptr noundef nonnull %0) #24
  %95 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !124
  %96 = sext i8 %95 to i32
  store i32 %96, ptr @reload_n_operands, align 4, !tbaa !35
  %97 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !126
  %98 = sext i8 %97 to i64
  %99 = icmp eq i8 %95, 0
  %100 = icmp eq i8 %97, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %2693, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !30
  %105 = icmp slt i32 %104, 0
  %106 = lshr i32 %104, 31
  store i32 %106, ptr @this_insn_is_asm, align 4, !tbaa !35
  %107 = sext i8 %95 to i64
  %108 = shl nsw i64 %107, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %30, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), i64 %108, i1 false)
  %109 = shl nsw i64 %107, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %109, i1 false)
  %110 = icmp sgt i8 %95, 0
  br i1 %110, label %111, label %433

111:                                              ; preds = %102
  %112 = add nsw i32 %96, -1
  %113 = zext i32 %112 to i64
  %114 = zext nneg i32 %96 to i64
  br label %121

115:                                              ; preds = %208
  br i1 %110, label %116, label %433

116:                                              ; preds = %115
  %117 = icmp eq ptr %50, null
  %118 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %119 = icmp eq i32 %1, 0
  %120 = zext nneg i32 %96 to i64
  br label %212

121:                                              ; preds = %111, %208
  %122 = phi i64 [ 0, %111 ], [ %210, %208 ]
  %123 = phi i32 [ -1, %111 ], [ %209, %208 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #23
  %124 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %122
  %125 = load ptr, ptr %124, align 8, !tbaa !31
  %126 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %122
  store ptr %125, ptr %126, align 8, !tbaa !31
  %127 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %122
  %128 = load ptr, ptr %127, align 8, !tbaa !31
  %129 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %122
  store i32 0, ptr %129, align 4, !tbaa !35
  %130 = load i8, ptr %128, align 1, !tbaa !30
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %208, label %132

132:                                              ; preds = %121
  %133 = icmp eq i64 %122, %113
  %134 = trunc i64 %122 to i32
  br label %135

135:                                              ; preds = %132, %203
  %136 = phi i8 [ %130, %132 ], [ %206, %203 ]
  %137 = phi i32 [ %123, %132 ], [ %205, %203 ]
  %138 = phi ptr [ %128, %132 ], [ %204, %203 ]
  %139 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %136) #25
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  switch i8 %136, label %203 [
    i8 61, label %141
    i8 43, label %142
    i8 37, label %143
    i8 48, label %151
    i8 49, label %151
    i8 50, label %151
    i8 51, label %151
    i8 52, label %151
    i8 53, label %151
    i8 54, label %151
    i8 55, label %151
    i8 56, label %151
    i8 57, label %151
  ]

141:                                              ; preds = %135
  store i32 2, ptr %129, align 4, !tbaa !35
  br label %203

142:                                              ; preds = %135
  store i32 1, ptr %129, align 4, !tbaa !35
  br label %203

143:                                              ; preds = %135
  br i1 %133, label %144, label %145

144:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2709, ptr noundef nonnull @.str.1) #24
  br label %145

145:                                              ; preds = %143, %144
  %146 = icmp slt i32 %137, 0
  br i1 %146, label %203, label %147

147:                                              ; preds = %145
  %148 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !35
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %203

150:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2721, ptr noundef nonnull @.str.1) #24
  br label %203

151:                                              ; preds = %135, %135, %135, %135, %135, %135, %135, %135, %135, %135
  %152 = getelementptr inbounds i8, ptr %140, i64 -1
  %153 = call i64 @strtoul(ptr noundef nonnull %152, ptr noundef nonnull %31, i32 noundef 10) #25
  %154 = trunc i64 %153 to i32
  %155 = load ptr, ptr %31, align 8, !tbaa !31
  %156 = shl i64 %153, 32
  %157 = ashr exact i64 %156, 32
  %158 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !31
  %160 = load ptr, ptr %124, align 8, !tbaa !31
  %161 = tail call i32 @operands_match_p(ptr noundef %159, ptr noundef %160) #25
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %157, i64 %122
  store i8 %162, ptr %163, align 1, !tbaa !30
  %164 = and i64 %153, 4294967295
  %165 = icmp eq i64 %122, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2737, ptr noundef nonnull @.str.1) #24
  br label %167

167:                                              ; preds = %151, %166
  %168 = icmp sgt i32 %137, -1
  br i1 %168, label %169, label %203

169:                                              ; preds = %167
  %170 = icmp eq i32 %137, %154
  br i1 %170, label %174, label %171

171:                                              ; preds = %169
  %172 = add nuw nsw i32 %137, 1
  %173 = icmp eq i32 %172, %154
  br i1 %173, label %174, label %185

174:                                              ; preds = %171, %169
  %175 = phi i64 [ -1, %171 ], [ 1, %169 ]
  %176 = add i64 %175, %153
  %177 = shl i64 %176, 32
  %178 = ashr exact i64 %177, 32
  %179 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !31
  %181 = load ptr, ptr %124, align 8, !tbaa !31
  %182 = tail call i32 @operands_match_p(ptr noundef %180, ptr noundef %181) #25
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %178, i64 %122
  store i8 %183, ptr %184, align 1, !tbaa !30
  br label %185

185:                                              ; preds = %174, %171
  %186 = zext nneg i32 %137 to i64
  %187 = icmp eq i64 %122, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = add nuw nsw i32 %137, 1
  %190 = zext nneg i32 %189 to i64
  %191 = icmp eq i64 %122, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %188, %185
  %193 = phi i64 [ -1, %188 ], [ 1, %185 ]
  %194 = add nsw i64 %193, %122
  %195 = load ptr, ptr %158, align 8, !tbaa !31
  %196 = shl i64 %194, 32
  %197 = ashr exact i64 %196, 32
  %198 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !31
  %200 = tail call i32 @operands_match_p(ptr noundef %195, ptr noundef %199) #25
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %157, i64 %197
  store i8 %201, ptr %202, align 1, !tbaa !30
  br label %203

203:                                              ; preds = %145, %150, %147, %167, %192, %188, %135, %142, %141
  %204 = phi ptr [ %140, %135 ], [ %155, %192 ], [ %155, %188 ], [ %155, %167 ], [ %140, %147 ], [ %140, %150 ], [ %140, %142 ], [ %140, %141 ], [ %140, %145 ]
  %205 = phi i32 [ %137, %135 ], [ %137, %192 ], [ %137, %188 ], [ %137, %167 ], [ %137, %147 ], [ %137, %150 ], [ %137, %142 ], [ %137, %141 ], [ %134, %145 ]
  %206 = load i8, ptr %204, align 1, !tbaa !30
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %135, !llvm.loop !127

208:                                              ; preds = %203, %121
  %209 = phi i32 [ %123, %121 ], [ %205, %203 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #23
  %210 = add nuw nsw i64 %122, 1
  %211 = icmp eq i64 %210, %114
  br i1 %211, label %115, label %121, !llvm.loop !128

212:                                              ; preds = %116, %401
  %213 = phi i64 [ 0, %116 ], [ %405, %401 ]
  %214 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !31
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %213
  store i32 0, ptr %218, align 4, !tbaa !35
  %219 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %213
  store i32 0, ptr %219, align 4, !tbaa !35
  %220 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %213
  %221 = load i32, ptr %220, align 4, !tbaa !35
  %222 = icmp eq i32 %221, 0
  %223 = icmp eq i32 %221, 2
  %224 = select i1 %223, i32 1, i32 9
  %225 = select i1 %222, i32 0, i32 %224
  %226 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %213
  store i32 %225, ptr %226, align 4, !tbaa !35
  %227 = select i1 %223, i32 5, i32 9
  %228 = select i1 %222, i32 3, i32 %227
  %229 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %213
  store i32 %228, ptr %229, align 4, !tbaa !35
  %230 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %213
  %231 = load ptr, ptr %230, align 8, !tbaa !31
  %232 = load i8, ptr %231, align 1, !tbaa !30
  switch i8 %232, label %261 [
    i8 0, label %377
    i8 112, label %233
  ]

233:                                              ; preds = %212
  %234 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %213
  %235 = load i32, ptr %234, align 4, !tbaa !35
  %236 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %213
  %237 = load ptr, ptr %236, align 8, !tbaa !31
  %238 = trunc i64 %213 to i32
  %239 = call fastcc i32 @find_reloads_address(i32 noundef %235, ptr noundef null, ptr noundef nonnull %215, ptr noundef %237, i32 noundef %238, i32 noundef %225, i32 noundef %2, ptr noundef nonnull %0) #25
  store i32 %239, ptr %219, align 4, !tbaa !35
  %240 = load ptr, ptr %236, align 8, !tbaa !31
  %241 = load ptr, ptr %240, align 8, !tbaa !31
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !35
  %247 = and i32 %246, -2
  %248 = icmp eq i32 %247, 8
  %249 = icmp eq i32 %243, 39
  %250 = or i1 %249, %248
  br i1 %250, label %251, label %255

251:                                              ; preds = %233
  %252 = load ptr, ptr %214, align 8, !tbaa !31
  %253 = load i32, ptr %252, align 8
  %254 = trunc i32 %253 to i16
  switch i16 %254, label %255 [
    i16 52, label %399
    i16 49, label %399
  ]

255:                                              ; preds = %251, %233
  store ptr %241, ptr %214, align 8, !tbaa !31
  %256 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %213
  store ptr %241, ptr %256, align 8, !tbaa !31
  %257 = load i32, ptr %241, align 8
  %258 = lshr i32 %257, 16
  %259 = and i32 %258, 255
  %260 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %213
  store i32 %259, ptr %260, align 4, !tbaa !35
  br label %377

261:                                              ; preds = %212
  %262 = trunc i32 %216 to i16
  switch i16 %262, label %326 [
    i16 43, label %263
    i16 39, label %276
    i16 49, label %331
  ]

263:                                              ; preds = %261
  %264 = load i32, ptr %215, align 8
  %265 = lshr i32 %264, 16
  %266 = and i32 %265, 255
  %267 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %213
  %268 = load ptr, ptr %267, align 8, !tbaa !31
  %269 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !30
  %271 = trunc i64 %213 to i32
  %272 = call fastcc i32 @find_reloads_address(i32 noundef %266, ptr noundef %268, ptr noundef %270, ptr noundef nonnull %269, i32 noundef %271, i32 noundef %228, i32 noundef %2, ptr noundef nonnull %0) #25
  store i32 %272, ptr %218, align 4, !tbaa !35
  %273 = load ptr, ptr %267, align 8, !tbaa !31
  %274 = load ptr, ptr %273, align 8, !tbaa !31
  store ptr %274, ptr %214, align 8, !tbaa !31
  %275 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %213
  store ptr %274, ptr %275, align 8, !tbaa !31
  br label %377

276:                                              ; preds = %261
  %277 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !30
  br i1 %117, label %283, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %213
  %281 = load ptr, ptr %280, align 8, !tbaa !31
  %282 = icmp eq ptr %118, %281
  br label %283

283:                                              ; preds = %279, %276
  %284 = phi i1 [ false, %276 ], [ %282, %279 ]
  %285 = zext i1 %284 to i32
  %286 = trunc i64 %213 to i32
  %287 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %215, i32 noundef %286, i32 noundef %228, i32 noundef %2, i32 noundef %285, ptr noundef nonnull %0, ptr noundef nonnull %218) #25
  br i1 %119, label %324, label %288

288:                                              ; preds = %283
  %289 = load i32, ptr %287, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 43
  br i1 %291, label %292, label %324

292:                                              ; preds = %288
  %293 = load i32, ptr %278, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 37
  br i1 %295, label %296, label %324

296:                                              ; preds = %292
  %297 = lshr i32 %293, 16
  %298 = and i32 %297, 255
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !30
  %302 = lshr i32 %289, 16
  %303 = and i32 %302, 255
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !30
  %307 = icmp ult i8 %301, %306
  br i1 %307, label %324, label %308

308:                                              ; preds = %296
  %309 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %310 = call fastcc i32 @rhs_regno(ptr noundef nonnull %278) #25
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds ptr, ptr %309, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !31
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %324

315:                                              ; preds = %308
  %316 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %278) #24
  %317 = call ptr @emit_insn_before(ptr noundef %316, ptr noundef nonnull %0) #24
  %318 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %319 = call fastcc i32 @rhs_regno(ptr noundef nonnull %278) #25
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds ptr, ptr %318, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !31
  %323 = call ptr @set_unique_reg_note(ptr noundef %317, i32 noundef 4, ptr noundef %322) #24
  br label %324

324:                                              ; preds = %315, %308, %296, %292, %288, %283
  store ptr %287, ptr %214, align 8, !tbaa !31
  %325 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %213
  store ptr %287, ptr %325, align 8, !tbaa !31
  br label %377

326:                                              ; preds = %261
  %327 = zext nneg i32 %217 to i64
  %328 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !35
  %330 = icmp eq i32 %329, 4
  br i1 %330, label %331, label %335

331:                                              ; preds = %261, %326
  %332 = trunc i64 %213 to i32
  %333 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %215, i32 noundef %332, i32 noundef %228, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %218) #25
  store ptr %333, ptr %214, align 8, !tbaa !31
  %334 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %213
  store ptr %333, ptr %334, align 8, !tbaa !31
  br label %377

335:                                              ; preds = %326
  %336 = icmp eq i32 %217, 37
  br i1 %336, label %337, label %377

337:                                              ; preds = %335
  %338 = call fastcc i32 @rhs_regno(ptr noundef nonnull %215) #25
  %339 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds ptr, ptr %339, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !31
  %343 = icmp eq ptr %342, null
  br i1 %343, label %359, label %344

344:                                              ; preds = %337
  br i1 %117, label %349, label %345

345:                                              ; preds = %344
  %346 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %213
  %347 = load ptr, ptr %346, align 8, !tbaa !31
  %348 = icmp eq ptr %118, %347
  br i1 %348, label %359, label %349

349:                                              ; preds = %345, %344
  %350 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %213
  %351 = load i32, ptr %350, align 4, !tbaa !35
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %349
  %354 = load i32, ptr %215, align 8
  %355 = lshr i32 %354, 16
  %356 = and i32 %355, 255
  store i32 %356, ptr %350, align 4, !tbaa !35
  br label %357

357:                                              ; preds = %353, %349
  store ptr %342, ptr %214, align 8, !tbaa !31
  %358 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %213
  store ptr %342, ptr %358, align 8, !tbaa !31
  br label %359

359:                                              ; preds = %357, %345, %337
  %360 = phi ptr [ %342, %357 ], [ %215, %345 ], [ %215, %337 ]
  %361 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %362 = getelementptr inbounds ptr, ptr %361, i64 %340
  %363 = load ptr, ptr %362, align 8, !tbaa !31
  %364 = icmp eq ptr %363, null
  br i1 %364, label %377, label %365

365:                                              ; preds = %359
  %366 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %367 = getelementptr inbounds ptr, ptr %366, i64 %340
  %368 = load ptr, ptr %367, align 8, !tbaa !31
  %369 = icmp ne ptr %368, null
  %370 = load i32, ptr @num_not_at_initial_offset, align 4
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %369, i1 true, i1 %371
  br i1 %372, label %373, label %377

373:                                              ; preds = %365
  %374 = trunc i64 %213 to i32
  %375 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %360, i32 noundef %374, i32 noundef %228, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %218) #25
  store ptr %375, ptr %214, align 8, !tbaa !31
  %376 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %213
  store ptr %375, ptr %376, align 8, !tbaa !31
  br label %377

377:                                              ; preds = %359, %373, %365, %212, %255, %324, %335, %331, %263
  %378 = phi ptr [ %360, %359 ], [ %375, %373 ], [ %360, %365 ], [ %215, %212 ], [ %241, %255 ], [ %287, %324 ], [ %215, %335 ], [ %333, %331 ], [ %274, %263 ]
  %379 = load i32, ptr %378, align 8
  %380 = and i32 %379, 65535
  %381 = icmp eq i32 %380, 37
  br i1 %381, label %382, label %397

382:                                              ; preds = %377
  %383 = call fastcc i32 @rhs_regno(ptr noundef nonnull %378) #25
  %384 = icmp ugt i32 %383, 52
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = call i32 @reg_preferred_class(i32 noundef %383) #24
  %387 = load ptr, ptr %214, align 8, !tbaa !31
  br label %388

388:                                              ; preds = %385, %382
  %389 = phi ptr [ %387, %385 ], [ %378, %382 ]
  %390 = phi i32 [ %386, %385 ], [ 0, %382 ]
  %391 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %213
  store i32 %390, ptr %391, align 4, !tbaa !35
  %392 = call fastcc i32 @rhs_regno(ptr noundef %389) #25
  %393 = icmp ugt i32 %392, 52
  br i1 %393, label %394, label %401

394:                                              ; preds = %388
  %395 = call i32 @reg_alternate_class(i32 noundef %392) #24
  %396 = icmp eq i32 %395, 0
  br label %401

397:                                              ; preds = %377
  %398 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %213
  store i32 0, ptr %398, align 4, !tbaa !35
  br label %401

399:                                              ; preds = %251, %251
  store i32 -1, ptr %103, align 8, !tbaa !30
  %400 = call i32 @find_reloads(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #25
  br label %2693

401:                                              ; preds = %388, %394, %397
  %402 = phi i1 [ false, %388 ], [ %396, %394 ], [ false, %397 ]
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %213
  store i8 %403, ptr %404, align 1, !tbaa !30
  %405 = add nuw nsw i64 %213, 1
  %406 = icmp eq i64 %405, %120
  br i1 %406, label %407, label %212, !llvm.loop !129

407:                                              ; preds = %401
  %408 = icmp ne ptr %50, null
  %409 = icmp ne i8 %95, 1
  %410 = and i1 %408, %409
  br i1 %410, label %411, label %433

411:                                              ; preds = %407
  %412 = load ptr, ptr @recog_data, align 8, !tbaa !31
  %413 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !30
  %415 = icmp eq ptr %412, %414
  br i1 %415, label %416, label %433

416:                                              ; preds = %411
  %417 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !31
  %418 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %419 = load ptr, ptr %418, align 8, !tbaa !30
  %420 = icmp eq ptr %417, %419
  br i1 %420, label %421, label %433

421:                                              ; preds = %416
  %422 = load i32, ptr %7, align 16, !tbaa !35
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 1
  %425 = load i32, ptr %424, align 4, !tbaa !35
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %423, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !35
  store i32 %428, ptr %424, align 4, !tbaa !35
  store i32 %428, ptr %7, align 16, !tbaa !35
  %429 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 1
  %430 = load i8, ptr %429, align 1, !tbaa !30
  %431 = load i8, ptr %8, align 16, !tbaa !30
  %432 = or i8 %431, %430
  store i8 %432, ptr %8, align 16, !tbaa !30
  store i8 %432, ptr %429, align 1, !tbaa !30
  br label %433

433:                                              ; preds = %102, %115, %421, %416, %411, %407
  %434 = phi i32 [ %209, %421 ], [ %209, %416 ], [ %209, %411 ], [ %209, %407 ], [ %209, %115 ], [ -1, %102 ]
  %435 = icmp sgt i8 %97, 0
  %436 = icmp eq i32 %2, 0
  %437 = add nsw i32 %434, 1
  %438 = shl nsw i32 %434, 1
  %439 = or disjoint i32 %438, 1
  %440 = icmp sgt i32 %434, -1
  %441 = zext i32 %437 to i64
  %442 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %441
  %443 = zext i32 %434 to i64
  %444 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %443
  %445 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %443
  %446 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %441
  %447 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %443
  %448 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %441
  %449 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %443
  %450 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %441
  %451 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %443
  %452 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %441
  %453 = zext i32 %96 to i64
  %454 = shl nuw nsw i64 %453, 2
  br label %455

455:                                              ; preds = %1442, %433
  %456 = phi i32 [ 0, %433 ], [ %1410, %1442 ]
  %457 = phi i32 [ 0, %433 ], [ %1411, %1442 ]
  %458 = phi i32 [ 660, %433 ], [ %1412, %1442 ]
  %459 = phi i32 [ 0, %433 ], [ %1413, %1442 ]
  %460 = phi i32 [ 0, %433 ], [ %1414, %1442 ]
  %461 = phi i32 [ 0, %433 ], [ %1417, %1442 ]
  br i1 %435, label %462, label %1409

462:                                              ; preds = %455
  %463 = icmp ne i32 %461, 0
  br label %464

464:                                              ; preds = %462, %1401
  %465 = phi i64 [ 0, %462 ], [ %1407, %1401 ]
  %466 = phi i32 [ %460, %462 ], [ %1406, %1401 ]
  %467 = phi i32 [ %459, %462 ], [ %1405, %1401 ]
  %468 = phi i32 [ %458, %462 ], [ %1404, %1401 ]
  %469 = phi i32 [ %457, %462 ], [ %1403, %1401 ]
  %470 = phi i32 [ %456, %462 ], [ %1402, %1401 ]
  %471 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %465
  %472 = load i8, ptr %471, align 1, !tbaa !30
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %475, label %474

474:                                              ; preds = %464
  br i1 %110, label %488, label %1355

475:                                              ; preds = %464
  %476 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !124
  %477 = icmp sgt i8 %476, 0
  br i1 %477, label %478, label %1401

478:                                              ; preds = %475
  %479 = zext nneg i8 %476 to i64
  br label %480

480:                                              ; preds = %478, %480
  %481 = phi i64 [ 0, %478 ], [ %485, %480 ]
  %482 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %481
  %483 = load ptr, ptr %482, align 8, !tbaa !31
  %484 = call fastcc ptr @skip_alternative(ptr noundef %483) #25
  store ptr %484, ptr %482, align 8, !tbaa !31
  %485 = add nuw nsw i64 %481, 1
  %486 = icmp eq i64 %485, %479
  br i1 %486, label %1401, label %480, !llvm.loop !130

487:                                              ; preds = %1229
  br i1 %110, label %1235, label %1352

488:                                              ; preds = %474, %1229
  %489 = phi i64 [ %1233, %1229 ], [ 0, %474 ]
  %490 = phi i32 [ %1068, %1229 ], [ 0, %474 ]
  %491 = phi i32 [ %1232, %1229 ], [ 0, %474 ]
  %492 = phi i32 [ %1230, %1229 ], [ 0, %474 ]
  %493 = phi i32 [ %1231, %1229 ], [ 0, %474 ]
  %494 = trunc i64 %489 to i32
  %495 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %489
  %496 = load ptr, ptr %495, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #23
  %497 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %489
  %498 = load ptr, ptr %497, align 8, !tbaa !31
  %499 = load i32, ptr %498, align 8
  %500 = and i32 %499, 65535
  %501 = zext nneg i32 %500 to i64
  %502 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !35
  %504 = icmp eq i32 %503, 4
  br i1 %504, label %505, label %512

505:                                              ; preds = %488
  %506 = load i8, ptr %496, align 1, !tbaa !30
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %512, label %508

508:                                              ; preds = %505
  %509 = getelementptr inbounds %struct.rtx_def, ptr %498, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !30
  %511 = load i32, ptr %510, align 8
  br label %512

512:                                              ; preds = %508, %505, %488
  %513 = phi i32 [ %511, %508 ], [ %499, %505 ], [ %499, %488 ]
  %514 = phi ptr [ %510, %508 ], [ %498, %505 ], [ %498, %488 ]
  %515 = and i32 %513, 65535
  %516 = icmp eq i32 %515, 39
  br i1 %516, label %517, label %596

517:                                              ; preds = %512
  %518 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %489
  br label %519

519:                                              ; preds = %517, %593
  %520 = phi i32 [ %513, %517 ], [ %558, %593 ]
  %521 = phi i32 [ 0, %517 ], [ %594, %593 ]
  %522 = phi i32 [ 0, %517 ], [ %560, %593 ]
  %523 = phi ptr [ %514, %517 ], [ %559, %593 ]
  %524 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 0, i32 1
  %525 = load ptr, ptr %524, align 8, !tbaa !30
  %526 = load i32, ptr %525, align 8
  %527 = and i32 %526, 65535
  %528 = icmp eq i32 %527, 37
  br i1 %528, label %529, label %556

529:                                              ; preds = %519
  %530 = call fastcc i32 @rhs_regno(ptr noundef nonnull %525) #25
  %531 = icmp ult i32 %530, 53
  br i1 %531, label %532, label %556

532:                                              ; preds = %529
  %533 = lshr i32 %526, 16
  %534 = and i32 %533, 255
  %535 = getelementptr inbounds %struct.rtx_def, ptr %523, i64 0, i32 1, i32 0, i32 0, i64 1
  %536 = load i32, ptr %535, align 8, !tbaa !30
  %537 = lshr i32 %520, 16
  %538 = and i32 %537, 255
  %539 = call i32 @simplify_subreg_regno(i32 noundef %530, i32 noundef %534, i32 noundef %536, i32 noundef %538) #24
  %540 = icmp slt i32 %539, 0
  %541 = select i1 %540, i32 1, i32 %521
  %542 = load ptr, ptr %524, align 8, !tbaa !30
  %543 = call fastcc i32 @rhs_regno(ptr noundef %542) #25
  %544 = load i32, ptr %542, align 8
  %545 = lshr i32 %544, 16
  %546 = and i32 %545, 255
  %547 = load i32, ptr %535, align 8, !tbaa !30
  %548 = load i32, ptr %523, align 8
  %549 = lshr i32 %548, 16
  %550 = and i32 %549, 255
  %551 = call i32 @subreg_regno_offset(i32 noundef %543, i32 noundef %546, i32 noundef %547, i32 noundef %550) #24
  %552 = add i32 %551, %522
  %553 = load ptr, ptr %524, align 8, !tbaa !30
  %554 = load i32, ptr %553, align 8
  %555 = and i32 %554, 65535
  br label %556

556:                                              ; preds = %532, %529, %519
  %557 = phi i32 [ %555, %532 ], [ 37, %529 ], [ %527, %519 ]
  %558 = phi i32 [ %554, %532 ], [ %526, %529 ], [ %526, %519 ]
  %559 = phi ptr [ %553, %532 ], [ %525, %529 ], [ %525, %519 ]
  %560 = phi i32 [ %552, %532 ], [ %522, %529 ], [ %522, %519 ]
  %561 = phi i32 [ %541, %532 ], [ %521, %529 ], [ %521, %519 ]
  %562 = zext nneg i32 %557 to i64
  %563 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %562
  %564 = load i32, ptr %563, align 4, !tbaa !35
  %565 = icmp eq i32 %564, 9
  %566 = icmp eq i32 %557, 49
  %567 = or i1 %565, %566
  br i1 %567, label %592, label %568

568:                                              ; preds = %556
  %569 = trunc i32 %558 to i16
  switch i16 %569, label %593 [
    i16 43, label %573
    i16 37, label %570
  ]

570:                                              ; preds = %568
  %571 = call fastcc i32 @rhs_regno(ptr noundef nonnull %559) #25
  %572 = icmp ugt i32 %571, 52
  br i1 %572, label %573, label %593

573:                                              ; preds = %568, %570
  %574 = lshr i32 %558, 16
  %575 = and i32 %574, 255
  %576 = zext nneg i32 %575 to i64
  %577 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %576
  %578 = load i8, ptr %577, align 1, !tbaa !30
  %579 = zext i8 %578 to i32
  %580 = shl nuw nsw i32 %579, 3
  %581 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !35
  %582 = and i32 %581, 32
  %583 = icmp eq i32 %582, 0
  %584 = select i1 %583, i32 128, i32 256
  %585 = icmp ult i32 %580, %584
  br i1 %585, label %586, label %593

586:                                              ; preds = %573
  %587 = load i32, ptr %518, align 4, !tbaa !35
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !30
  %591 = icmp ugt i8 %590, %578
  br i1 %591, label %592, label %593

592:                                              ; preds = %586, %556
  br label %593

593:                                              ; preds = %568, %592, %586, %573, %570
  %594 = phi i32 [ 1, %592 ], [ %561, %586 ], [ %561, %573 ], [ %561, %570 ], [ %561, %568 ]
  %595 = icmp eq i32 %557, 39
  br i1 %595, label %519, label %596, !llvm.loop !131

596:                                              ; preds = %593, %512
  %597 = phi ptr [ %514, %512 ], [ %559, %593 ]
  %598 = phi i32 [ 0, %512 ], [ %560, %593 ]
  %599 = phi i32 [ 0, %512 ], [ %594, %593 ]
  %600 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %489
  store i32 0, ptr %600, align 4, !tbaa !35
  %601 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %489
  store i8 0, ptr %601, align 1, !tbaa !30
  %602 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %489
  store i8 0, ptr %602, align 1, !tbaa !30
  %603 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %489
  store i8 0, ptr %603, align 1, !tbaa !30
  %604 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %489
  store i8 0, ptr %604, align 1, !tbaa !30
  %605 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %489
  store i32 -1, ptr %605, align 4, !tbaa !35
  %606 = load i8, ptr %496, align 1, !tbaa !30
  switch i8 %606, label %608 [
    i8 0, label %607
    i8 44, label %607
  ]

607:                                              ; preds = %596, %596
  br label %608

608:                                              ; preds = %596, %607
  %609 = phi i32 [ 1, %607 ], [ 0, %596 ]
  %610 = phi i32 [ 0, %607 ], [ 1, %596 ]
  %611 = getelementptr inbounds %struct.rtx_def, ptr %597, i64 0, i32 1
  %612 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %489
  %613 = icmp eq i64 %489, %441
  %614 = icmp eq i64 %489, %443
  %615 = select i1 %614, i1 true, i1 %613
  %616 = sub nsw i32 %439, %494
  %617 = select i1 %615, i32 %616, i32 %494
  %618 = sext i32 %617 to i64
  %619 = select i1 %463, i1 %614, i1 false
  %620 = select i1 %463, i1 %613, i1 false
  %621 = select i1 %620, i32 %434, i32 %494
  %622 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %489
  %623 = icmp eq i64 %489, 0
  %624 = select i1 %619, i32 %437, i32 %621
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %625
  br label %627

627:                                              ; preds = %1044, %608
  %628 = phi i32 [ %493, %608 ], [ %1045, %1044 ]
  %629 = phi i32 [ %492, %608 ], [ %1046, %1044 ]
  %630 = phi i32 [ %491, %608 ], [ %1047, %1044 ]
  %631 = phi ptr [ %496, %608 ], [ %1060, %1044 ]
  %632 = phi i32 [ %609, %608 ], [ %1050, %1044 ]
  %633 = phi i32 [ 0, %608 ], [ %1051, %1044 ]
  %634 = phi i32 [ %610, %608 ], [ %1052, %1044 ]
  %635 = phi i32 [ 0, %608 ], [ %1053, %1044 ]
  %636 = phi i32 [ %490, %608 ], [ %1055, %1044 ]
  %637 = phi i32 [ %599, %608 ], [ %1056, %1044 ]
  %638 = phi i8 [ 0, %608 ], [ %1057, %1044 ]
  %639 = phi i32 [ 0, %608 ], [ %1058, %1044 ]
  %640 = phi i8 [ 0, %608 ], [ %1059, %1044 ]
  %641 = load i8, ptr %631, align 1, !tbaa !30
  %642 = sext i8 %641 to i32
  %643 = call fastcc i64 @insn_constraint_len(i8 noundef signext %641) #25
  switch i8 %641, label %1006 [
    i8 0, label %1040
    i8 44, label %1041
    i8 61, label %1044
    i8 43, label %1044
    i8 42, label %1044
    i8 37, label %1044
    i8 63, label %646
    i8 33, label %648
    i8 35, label %649
    i8 48, label %653
    i8 49, label %653
    i8 50, label %653
    i8 51, label %653
    i8 52, label %653
    i8 53, label %653
    i8 54, label %653
    i8 55, label %653
    i8 56, label %653
    i8 57, label %653
    i8 112, label %756
    i8 109, label %757
    i8 60, label %786
    i8 62, label %798
    i8 86, label %810
    i8 111, label %841
    i8 38, label %909
    i8 69, label %910
    i8 70, label %910
    i8 71, label %921
    i8 72, label %921
    i8 115, label %930
    i8 105, label %644
    i8 110, label %950
    i8 73, label %957
    i8 74, label %957
    i8 75, label %957
    i8 76, label %957
    i8 77, label %957
    i8 78, label %957
    i8 79, label %957
    i8 80, label %957
    i8 88, label %967
    i8 103, label %968
    i8 114, label %1001
  ]

644:                                              ; preds = %627
  %645 = load i32, ptr %597, align 8
  br label %936

646:                                              ; preds = %627
  %647 = add nsw i32 %630, 6
  br label %1044

648:                                              ; preds = %627
  br label %1044

649:                                              ; preds = %627, %649
  %650 = phi ptr [ %651, %649 ], [ %631, %627 ]
  %651 = getelementptr inbounds i8, ptr %650, i64 1
  %652 = load i8, ptr %651, align 1, !tbaa !30
  switch i8 %652, label %649 [
    i8 0, label %1044
    i8 44, label %1044
  ]

653:                                              ; preds = %627, %627, %627, %627, %627, %627, %627, %627, %627, %627
  %654 = call i64 @strtoul(ptr noundef nonnull %631, ptr noundef nonnull %32, i32 noundef 10) #25
  %655 = trunc i64 %654 to i32
  %656 = load ptr, ptr %32, align 8, !tbaa !31
  store i32 %655, ptr %605, align 4, !tbaa !35
  br i1 %463, label %657, label %671

657:                                              ; preds = %653
  %658 = icmp eq i32 %434, %655
  %659 = select i1 %658, i1 %613, i1 false
  br i1 %659, label %671, label %660

660:                                              ; preds = %657
  %661 = icmp eq i32 %437, %655
  %662 = select i1 %658, i1 true, i1 %661
  %663 = sub nsw i32 %439, %655
  %664 = select i1 %662, i32 %663, i32 %655
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %665, i64 %618
  %667 = load i8, ptr %666, align 1, !tbaa !30
  %668 = icmp eq i8 %667, 0
  %669 = shl i64 %654, 32
  %670 = ashr exact i64 %669, 32
  br i1 %668, label %704, label %677

671:                                              ; preds = %657, %653
  %672 = shl i64 %654, 32
  %673 = ashr exact i64 %672, 32
  %674 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %673, i64 %489
  %675 = load i8, ptr %674, align 1, !tbaa !30
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %704, label %677

677:                                              ; preds = %660, %671
  %678 = phi i64 [ %673, %671 ], [ %670, %660 ]
  %679 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %678
  %680 = load i8, ptr %679, align 1, !tbaa !30
  %681 = icmp eq i8 %680, 0
  br i1 %681, label %697, label %682

682:                                              ; preds = %677
  %683 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %678
  %684 = load ptr, ptr %683, align 8, !tbaa !31
  %685 = load i32, ptr %684, align 8
  %686 = and i32 %685, 65535
  %687 = icmp eq i32 %686, 43
  br i1 %687, label %688, label %697

688:                                              ; preds = %682
  %689 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %678
  %690 = load i32, ptr %689, align 4, !tbaa !35
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %697

692:                                              ; preds = %688
  %693 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %678
  %694 = load i8, ptr %693, align 1, !tbaa !30
  %695 = icmp eq i8 %694, 0
  %696 = select i1 %695, i32 1, i32 %629
  br label %697

697:                                              ; preds = %692, %688, %682, %677
  %698 = phi i32 [ %629, %688 ], [ %629, %682 ], [ %629, %677 ], [ %696, %692 ]
  %699 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %678
  %700 = load i8, ptr %699, align 1, !tbaa !30
  %701 = sext i8 %700 to i32
  %702 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %678
  %703 = load i32, ptr %702, align 4, !tbaa !35
  br label %738

704:                                              ; preds = %660, %671
  %705 = phi i64 [ %673, %671 ], [ %670, %660 ]
  %706 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %705
  %707 = load i8, ptr %706, align 1, !tbaa !30
  %708 = icmp ne i8 %707, 0
  %709 = zext i1 %708 to i32
  %710 = add nsw i32 %628, %709
  store i8 0, ptr %706, align 1, !tbaa !30
  %711 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %705
  %712 = load i32, ptr %711, align 4, !tbaa !35
  %713 = icmp eq i32 %712, 0
  %714 = select i1 %713, i32 1, i32 %629
  %715 = icmp eq i32 %434, %655
  %716 = select i1 %463, i1 %715, i1 false
  %717 = icmp eq i32 %437, %655
  %718 = select i1 %463, i1 %717, i1 false
  %719 = select i1 %718, i32 %434, i32 %655
  %720 = select i1 %716, i32 %437, i32 %719
  %721 = load ptr, ptr %497, align 8, !tbaa !31
  %722 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %705
  %723 = load ptr, ptr %722, align 8, !tbaa !31
  %724 = load ptr, ptr %626, align 8, !tbaa !31
  %725 = sext i32 %720 to i64
  %726 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %725
  %727 = load ptr, ptr %726, align 8, !tbaa !31
  %728 = load i32, ptr %622, align 4, !tbaa !35
  %729 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %705
  %730 = load i32, ptr %729, align 4, !tbaa !35
  %731 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %705
  %732 = load i8, ptr %731, align 1, !tbaa !30
  %733 = sext i8 %732 to i32
  %734 = call fastcc ptr @find_dummy_reload(ptr noundef %721, ptr noundef %723, ptr noundef %724, ptr noundef %727, i32 noundef %728, i32 noundef %730, i32 noundef %712, i32 noundef -1, i32 noundef %733) #25
  %735 = icmp ne ptr %734, null
  %736 = sext i1 %735 to i32
  %737 = add nsw i32 %710, %736
  br label %738

738:                                              ; preds = %704, %697
  %739 = phi i32 [ %712, %704 ], [ %703, %697 ]
  %740 = phi i32 [ %737, %704 ], [ %628, %697 ]
  %741 = phi i32 [ %714, %704 ], [ %698, %697 ]
  %742 = phi i32 [ %633, %704 ], [ %701, %697 ]
  store i32 %739, ptr %600, align 4, !tbaa !35
  %743 = icmp eq i32 %742, 0
  %744 = icmp ne i32 %637, 0
  %745 = select i1 %743, i1 true, i1 %744
  br i1 %745, label %746, label %1044

746:                                              ; preds = %738
  br i1 %623, label %1044, label %747

747:                                              ; preds = %746, %747
  %748 = phi i64 [ %754, %747 ], [ 0, %746 ]
  %749 = phi i32 [ %753, %747 ], [ 0, %746 ]
  %750 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %748
  %751 = load i32, ptr %750, align 4, !tbaa !35
  %752 = icmp eq i32 %751, %655
  %753 = select i1 %752, i32 1, i32 %749
  %754 = add nuw nsw i64 %748, 1
  %755 = icmp eq i64 %754, %489
  br i1 %755, label %1044, label %747, !llvm.loop !132

756:                                              ; preds = %627
  store i32 13, ptr %600, align 4, !tbaa !35
  br label %1044

757:                                              ; preds = %627
  %758 = icmp eq i32 %637, 0
  br i1 %758, label %759, label %1044

759:                                              ; preds = %757
  %760 = load i32, ptr %597, align 8
  %761 = and i32 %760, 65535
  %762 = trunc i32 %760 to i16
  switch i16 %762, label %773 [
    i16 43, label %772
    i16 37, label %763
  ]

763:                                              ; preds = %759
  %764 = call fastcc i32 @rhs_regno(ptr noundef nonnull %597) #25
  %765 = icmp ugt i32 %764, 52
  br i1 %765, label %766, label %773

766:                                              ; preds = %763
  %767 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %768 = zext i32 %764 to i64
  %769 = getelementptr inbounds i16, ptr %767, i64 %768
  %770 = load i16, ptr %769, align 2, !tbaa !40
  %771 = icmp slt i16 %770, 0
  br i1 %771, label %772, label %773

772:                                              ; preds = %759, %766
  br label %773

773:                                              ; preds = %759, %772, %766, %763
  %774 = phi i32 [ 1, %772 ], [ %632, %766 ], [ %632, %763 ], [ %632, %759 ]
  %775 = zext nneg i32 %761 to i64
  %776 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %775
  %777 = load i32, ptr %776, align 4, !tbaa !35
  %778 = icmp ne i32 %777, 9
  %779 = icmp eq i32 %761, 121
  %780 = or i1 %779, %778
  br i1 %780, label %1044, label %781

781:                                              ; preds = %773
  %782 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !133
  %783 = call zeroext i8 %782(ptr noundef nonnull %597) #24
  %784 = icmp eq i8 %783, 0
  %785 = select i1 %784, i32 0, i32 %634
  br label %1044

786:                                              ; preds = %627
  %787 = load i32, ptr %597, align 8
  %788 = and i32 %787, 65535
  %789 = icmp eq i32 %788, 43
  br i1 %789, label %790, label %1044

790:                                              ; preds = %786
  %791 = load i32, ptr %612, align 4, !tbaa !35
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %1044

793:                                              ; preds = %790
  %794 = load ptr, ptr %611, align 8, !tbaa !30
  %795 = load i32, ptr %794, align 8
  %796 = trunc i32 %795 to i16
  switch i16 %796, label %1044 [
    i16 74, label %797
    i16 76, label %797
  ]

797:                                              ; preds = %793, %793
  br label %1044

798:                                              ; preds = %627
  %799 = load i32, ptr %597, align 8
  %800 = and i32 %799, 65535
  %801 = icmp eq i32 %800, 43
  br i1 %801, label %802, label %1044

802:                                              ; preds = %798
  %803 = load i32, ptr %612, align 4, !tbaa !35
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %1044

805:                                              ; preds = %802
  %806 = load ptr, ptr %611, align 8, !tbaa !30
  %807 = load i32, ptr %806, align 8
  %808 = trunc i32 %807 to i16
  switch i16 %808, label %1044 [
    i16 75, label %809
    i16 77, label %809
  ]

809:                                              ; preds = %805, %805
  br label %1044

810:                                              ; preds = %627
  %811 = icmp eq i32 %637, 0
  br i1 %811, label %812, label %1044

812:                                              ; preds = %810
  %813 = load i32, ptr %597, align 8
  %814 = and i32 %813, 65535
  %815 = icmp eq i32 %814, 43
  br i1 %815, label %816, label %1044

816:                                              ; preds = %812
  br i1 %436, label %820, label %817

817:                                              ; preds = %816
  %818 = call i32 @offsettable_memref_p(ptr noundef nonnull %597) #24
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %828, label %1044

820:                                              ; preds = %816
  %821 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %597) #24
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %1044

823:                                              ; preds = %820
  %824 = load ptr, ptr %611, align 8, !tbaa !30
  %825 = load i32, ptr %824, align 8
  %826 = and i32 %825, 65535
  %827 = icmp eq i32 %826, 37
  br i1 %827, label %1044, label %840

828:                                              ; preds = %817
  %829 = load ptr, ptr %611, align 8, !tbaa !30
  %830 = load i32, ptr %829, align 8
  %831 = and i32 %830, 65535
  %832 = icmp eq i32 %831, 37
  br i1 %832, label %833, label %840

833:                                              ; preds = %828
  %834 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %835 = call fastcc i32 @rhs_regno(ptr noundef nonnull %829) #25
  %836 = zext i32 %835 to i64
  %837 = getelementptr inbounds ptr, ptr %834, i64 %836
  %838 = load ptr, ptr %837, align 8, !tbaa !31
  %839 = icmp eq ptr %838, null
  br i1 %839, label %840, label %1044

840:                                              ; preds = %828, %833, %823
  br label %1044

841:                                              ; preds = %627
  %842 = icmp eq i32 %637, 0
  br i1 %842, label %843, label %1044

843:                                              ; preds = %841
  %844 = load i32, ptr %597, align 8
  %845 = and i32 %844, 65535
  %846 = icmp eq i32 %845, 43
  br i1 %846, label %847, label %859

847:                                              ; preds = %843
  br i1 %436, label %851, label %848

848:                                              ; preds = %847
  %849 = call i32 @offsettable_memref_p(ptr noundef nonnull %597) #24
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %854, label %887

851:                                              ; preds = %847
  %852 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %597) #24
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %887

854:                                              ; preds = %851, %848
  %855 = load i32, ptr %612, align 4, !tbaa !35
  %856 = icmp eq i32 %855, 1
  br i1 %856, label %887, label %857

857:                                              ; preds = %854
  %858 = load i32, ptr %597, align 8
  br label %859

859:                                              ; preds = %857, %843
  %860 = phi i32 [ %858, %857 ], [ %844, %843 ]
  %861 = and i32 %860, 65535
  %862 = icmp eq i32 %861, 37
  br i1 %862, label %863, label %888

863:                                              ; preds = %859
  %864 = call fastcc i32 @rhs_regno(ptr noundef nonnull %597) #25
  %865 = icmp ugt i32 %864, 52
  br i1 %865, label %866, label %888

866:                                              ; preds = %863
  %867 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %868 = zext i32 %864 to i64
  %869 = getelementptr inbounds i16, ptr %867, i64 %868
  %870 = load i16, ptr %869, align 2, !tbaa !40
  %871 = icmp slt i16 %870, 0
  br i1 %871, label %872, label %888

872:                                              ; preds = %866
  %873 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %874 = getelementptr inbounds ptr, ptr %873, i64 %868
  %875 = load ptr, ptr %874, align 8, !tbaa !31
  %876 = icmp eq ptr %875, null
  br i1 %876, label %880, label %877

877:                                              ; preds = %872
  %878 = call i32 @offsettable_memref_p(ptr noundef nonnull %875) #24
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %880, label %887

880:                                              ; preds = %877, %872
  %881 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %882 = call fastcc i32 @rhs_regno(ptr noundef nonnull %597) #25
  %883 = zext i32 %882 to i64
  %884 = getelementptr inbounds ptr, ptr %881, i64 %883
  %885 = load ptr, ptr %884, align 8, !tbaa !31
  %886 = icmp eq ptr %885, null
  br i1 %886, label %888, label %887

887:                                              ; preds = %880, %877, %854, %851, %848
  br label %888

888:                                              ; preds = %887, %880, %866, %863, %859
  %889 = phi i32 [ 1, %887 ], [ %632, %880 ], [ %632, %866 ], [ %632, %863 ], [ %632, %859 ]
  %890 = load i32, ptr %597, align 8
  %891 = and i32 %890, 65535
  %892 = zext nneg i32 %891 to i64
  %893 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %892
  %894 = load i32, ptr %893, align 4, !tbaa !35
  %895 = icmp ne i32 %894, 9
  %896 = icmp eq i32 %891, 121
  %897 = or i1 %895, %896
  br i1 %897, label %905, label %898

898:                                              ; preds = %888
  %899 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !133
  %900 = call zeroext i8 %899(ptr noundef nonnull %597) #24
  %901 = icmp eq i8 %900, 0
  br i1 %901, label %908, label %902

902:                                              ; preds = %898
  %903 = load i32, ptr %597, align 8
  %904 = and i32 %903, 65535
  br label %905

905:                                              ; preds = %902, %888
  %906 = phi i32 [ %904, %902 ], [ %891, %888 ]
  %907 = icmp eq i32 %906, 43
  br i1 %907, label %908, label %1044

908:                                              ; preds = %905, %898
  br label %1044

909:                                              ; preds = %627
  br label %1044

910:                                              ; preds = %627, %627
  %911 = load i32, ptr %597, align 8
  %912 = trunc i32 %911 to i16
  switch i16 %912, label %1044 [
    i16 32, label %920
    i16 33, label %913
  ]

913:                                              ; preds = %910
  %914 = lshr i32 %911, 16
  %915 = and i32 %914, 255
  %916 = zext nneg i32 %915 to i64
  %917 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %916
  %918 = load i8, ptr %917, align 1, !tbaa !30
  %919 = icmp eq i8 %918, 17
  br i1 %919, label %920, label %1044

920:                                              ; preds = %910, %913
  br label %1044

921:                                              ; preds = %627, %627
  %922 = load i32, ptr %597, align 8
  %923 = and i32 %922, 65535
  %924 = icmp eq i32 %923, 32
  br i1 %924, label %925, label %1044

925:                                              ; preds = %921
  %926 = call i32 @lookup_constraint(ptr noundef nonnull %631) #24
  %927 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %597, i32 noundef %926) #24
  %928 = icmp eq i8 %927, 0
  %929 = select i1 %928, i32 %632, i32 1
  br label %1044

930:                                              ; preds = %627
  %931 = load i32, ptr %597, align 8
  %932 = trunc i32 %931 to i16
  switch i16 %932, label %936 [
    i16 30, label %1044
    i16 32, label %933
  ]

933:                                              ; preds = %930
  %934 = and i32 %931, 16711680
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %1044, label %936

936:                                              ; preds = %644, %930, %933
  %937 = phi i32 [ %645, %644 ], [ %931, %930 ], [ %931, %933 ]
  %938 = and i32 %937, 65535
  %939 = zext nneg i32 %938 to i64
  %940 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %939
  %941 = load i32, ptr %940, align 4, !tbaa !35
  %942 = icmp eq i32 %941, 9
  br i1 %942, label %943, label %1044

943:                                              ; preds = %936
  %944 = load i32, ptr @flag_pic, align 4, !tbaa !35
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %949, label %946

946:                                              ; preds = %943
  %947 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %597) #24
  %948 = icmp eq i8 %947, 0
  br i1 %948, label %1044, label %949

949:                                              ; preds = %946, %943
  br label %1044

950:                                              ; preds = %627
  %951 = load i32, ptr %597, align 8
  %952 = trunc i32 %951 to i16
  switch i16 %952, label %1044 [
    i16 30, label %956
    i16 32, label %953
  ]

953:                                              ; preds = %950
  %954 = and i32 %951, 16711680
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %1044

956:                                              ; preds = %950, %953
  br label %1044

957:                                              ; preds = %627, %627, %627, %627, %627, %627, %627, %627
  %958 = load i32, ptr %597, align 8
  %959 = and i32 %958, 65535
  %960 = icmp eq i32 %959, 30
  br i1 %960, label %961, label %1044

961:                                              ; preds = %957
  %962 = load i64, ptr %611, align 8, !tbaa !30
  %963 = call i32 @lookup_constraint(ptr noundef nonnull %631) #24
  %964 = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %962, i32 noundef %963) #24
  %965 = icmp eq i8 %964, 0
  %966 = select i1 %965, i32 %632, i32 1
  br label %1044

967:                                              ; preds = %627
  br label %1044

968:                                              ; preds = %627
  %969 = icmp eq i32 %637, 0
  br i1 %969, label %970, label %1001

970:                                              ; preds = %968
  %971 = load i32, ptr %597, align 8
  %972 = trunc i32 %971 to i16
  switch i16 %972, label %973 [
    i16 49, label %1001
    i16 38, label %1001
  ]

973:                                              ; preds = %970
  %974 = and i32 %971, 65535
  %975 = zext nneg i32 %974 to i64
  %976 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %975
  %977 = load i32, ptr %976, align 4, !tbaa !35
  %978 = icmp eq i32 %977, 9
  %979 = load i32, ptr @flag_pic, align 4
  %980 = icmp ne i32 %979, 0
  %981 = select i1 %978, i1 %980, i1 false
  br i1 %981, label %982, label %987

982:                                              ; preds = %973
  %983 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %597) #24
  %984 = icmp eq i8 %983, 0
  br i1 %984, label %1001, label %985

985:                                              ; preds = %982
  %986 = load i32, ptr %597, align 8
  br label %987

987:                                              ; preds = %985, %973
  %988 = phi i32 [ %986, %985 ], [ %971, %973 ]
  %989 = and i32 %988, 65535
  %990 = icmp eq i32 %989, 37
  br i1 %990, label %991, label %1000

991:                                              ; preds = %987
  %992 = call fastcc i32 @rhs_regno(ptr noundef nonnull %597) #25
  %993 = icmp ugt i32 %992, 52
  br i1 %993, label %994, label %1001

994:                                              ; preds = %991
  %995 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %996 = zext i32 %992 to i64
  %997 = getelementptr inbounds i16, ptr %995, i64 %996
  %998 = load i16, ptr %997, align 2, !tbaa !40
  %999 = icmp slt i16 %998, 0
  br i1 %999, label %1000, label %1001

1000:                                             ; preds = %994, %987
  br label %1001

1001:                                             ; preds = %970, %970, %968, %982, %991, %994, %1000, %627
  %1002 = phi i32 [ %632, %627 ], [ %632, %968 ], [ 1, %1000 ], [ %632, %994 ], [ %632, %991 ], [ %632, %982 ], [ %632, %970 ], [ %632, %970 ]
  %1003 = load i32, ptr %600, align 4, !tbaa !35
  %1004 = zext i32 %1003 to i64
  %1005 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1004, i64 13
  br label %1022

1006:                                             ; preds = %627
  %1007 = call i32 @lookup_constraint(ptr noundef nonnull %631) #24
  %1008 = call i32 @regclass_for_constraint(i32 noundef %1007) #24
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %1015

1010:                                             ; preds = %1006
  %1011 = call i32 @lookup_constraint(ptr noundef nonnull %631) #24
  %1012 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %597, i32 noundef %1011) #24
  %1013 = icmp eq i8 %1012, 0
  %1014 = select i1 %1013, i32 %632, i32 1
  br label %1044

1015:                                             ; preds = %1006
  %1016 = load i32, ptr %600, align 4, !tbaa !35
  %1017 = zext i32 %1016 to i64
  %1018 = call i32 @lookup_constraint(ptr noundef nonnull %631) #24
  %1019 = call i32 @regclass_for_constraint(i32 noundef %1018) #24
  %1020 = sext i32 %1019 to i64
  %1021 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1017, i64 %1020
  br label %1022

1022:                                             ; preds = %1015, %1001
  %1023 = phi ptr [ %1005, %1001 ], [ %1021, %1015 ]
  %1024 = phi i32 [ %1002, %1001 ], [ %632, %1015 ]
  %1025 = load i32, ptr %1023, align 4, !tbaa !35
  store i32 %1025, ptr %600, align 4, !tbaa !35
  %1026 = load i32, ptr %597, align 8
  %1027 = and i32 %1026, 16711680
  %1028 = icmp eq i32 %1027, 65536
  br i1 %1028, label %1044, label %1029

1029:                                             ; preds = %1022
  %1030 = and i32 %1026, 65535
  %1031 = icmp eq i32 %1030, 37
  br i1 %1031, label %1032, label %1044

1032:                                             ; preds = %1029
  %1033 = load ptr, ptr %497, align 8, !tbaa !31
  %1034 = load i32, ptr %1033, align 8
  %1035 = lshr i32 %1034, 16
  %1036 = and i32 %1035, 255
  %1037 = call i32 @reg_fits_class_p(ptr noundef nonnull %597, i32 noundef %1025, i32 noundef %598, i32 noundef %1036) #24
  %1038 = icmp eq i32 %1037, 0
  %1039 = select i1 %1038, i32 %1024, i32 1
  br label %1044

1040:                                             ; preds = %627
  br label %1041

1041:                                             ; preds = %627, %1040
  %1042 = phi i64 [ 0, %1040 ], [ %643, %627 ]
  %1043 = getelementptr inbounds i8, ptr %631, i64 %1042
  br label %1062

1044:                                             ; preds = %747, %649, %649, %746, %823, %1032, %1010, %961, %925, %781, %950, %930, %910, %905, %908, %805, %793, %773, %646, %648, %756, %909, %627, %967, %627, %627, %627, %738, %757, %797, %790, %786, %809, %802, %798, %810, %840, %833, %820, %817, %812, %841, %920, %913, %921, %933, %949, %946, %936, %956, %953, %957, %1022, %1029
  %1045 = phi i32 [ %628, %1022 ], [ %628, %1029 ], [ %628, %967 ], [ %628, %957 ], [ %628, %956 ], [ %628, %953 ], [ %628, %949 ], [ %628, %946 ], [ %628, %936 ], [ %628, %930 ], [ %628, %933 ], [ %628, %921 ], [ %628, %920 ], [ %628, %913 ], [ %628, %909 ], [ %628, %841 ], [ %628, %810 ], [ %628, %817 ], [ %628, %833 ], [ %628, %840 ], [ %628, %820 ], [ %628, %812 ], [ %628, %802 ], [ %628, %809 ], [ %628, %798 ], [ %628, %790 ], [ %628, %797 ], [ %628, %786 ], [ %628, %757 ], [ %628, %756 ], [ %740, %738 ], [ %628, %648 ], [ %628, %646 ], [ %628, %627 ], [ %628, %627 ], [ %628, %627 ], [ %628, %627 ], [ %628, %781 ], [ %628, %773 ], [ %628, %793 ], [ %628, %805 ], [ %628, %908 ], [ %628, %905 ], [ %628, %910 ], [ %628, %925 ], [ %628, %950 ], [ %628, %961 ], [ %628, %1010 ], [ %628, %1032 ], [ %628, %823 ], [ %740, %746 ], [ %628, %649 ], [ %628, %649 ], [ %740, %747 ]
  %1046 = phi i32 [ %629, %1022 ], [ %629, %1029 ], [ %629, %967 ], [ %629, %957 ], [ %629, %956 ], [ %629, %953 ], [ %629, %949 ], [ %629, %946 ], [ %629, %936 ], [ %629, %930 ], [ %629, %933 ], [ %629, %921 ], [ %629, %920 ], [ %629, %913 ], [ %629, %909 ], [ %629, %841 ], [ %629, %810 ], [ %629, %817 ], [ %629, %833 ], [ %629, %840 ], [ %629, %820 ], [ %629, %812 ], [ %629, %802 ], [ %629, %809 ], [ %629, %798 ], [ %629, %790 ], [ %629, %797 ], [ %629, %786 ], [ %629, %757 ], [ %629, %756 ], [ %741, %738 ], [ %629, %648 ], [ %629, %646 ], [ %629, %627 ], [ %629, %627 ], [ %629, %627 ], [ %629, %627 ], [ %629, %781 ], [ %629, %773 ], [ %629, %793 ], [ %629, %805 ], [ %629, %908 ], [ %629, %905 ], [ %629, %910 ], [ %629, %925 ], [ %629, %950 ], [ %629, %961 ], [ %629, %1010 ], [ %629, %1032 ], [ %629, %823 ], [ %741, %746 ], [ %629, %649 ], [ %629, %649 ], [ %741, %747 ]
  %1047 = phi i32 [ %630, %1022 ], [ %630, %1029 ], [ %630, %967 ], [ %630, %957 ], [ %630, %956 ], [ %630, %953 ], [ %630, %949 ], [ %630, %946 ], [ %630, %936 ], [ %630, %930 ], [ %630, %933 ], [ %630, %921 ], [ %630, %920 ], [ %630, %913 ], [ %630, %909 ], [ %630, %841 ], [ %630, %810 ], [ %630, %817 ], [ %630, %833 ], [ %630, %840 ], [ %630, %820 ], [ %630, %812 ], [ %630, %802 ], [ %630, %809 ], [ %630, %798 ], [ %630, %790 ], [ %630, %797 ], [ %630, %786 ], [ %630, %757 ], [ %630, %756 ], [ %630, %738 ], [ 600, %648 ], [ %647, %646 ], [ %630, %627 ], [ %630, %627 ], [ %630, %627 ], [ %630, %627 ], [ %630, %781 ], [ %630, %773 ], [ %630, %793 ], [ %630, %805 ], [ %630, %908 ], [ %630, %905 ], [ %630, %910 ], [ %630, %925 ], [ %630, %950 ], [ %630, %961 ], [ %630, %1010 ], [ %630, %1032 ], [ %630, %823 ], [ %630, %746 ], [ %630, %649 ], [ %630, %649 ], [ %630, %747 ]
  %1048 = phi ptr [ %631, %1022 ], [ %631, %1029 ], [ %631, %967 ], [ %631, %957 ], [ %631, %956 ], [ %631, %953 ], [ %631, %949 ], [ %631, %946 ], [ %631, %936 ], [ %631, %930 ], [ %631, %933 ], [ %631, %921 ], [ %631, %920 ], [ %631, %913 ], [ %631, %909 ], [ %631, %841 ], [ %631, %810 ], [ %631, %817 ], [ %631, %833 ], [ %631, %840 ], [ %631, %820 ], [ %631, %812 ], [ %631, %802 ], [ %631, %809 ], [ %631, %798 ], [ %631, %790 ], [ %631, %797 ], [ %631, %786 ], [ %631, %757 ], [ %631, %756 ], [ %656, %738 ], [ %631, %648 ], [ %631, %646 ], [ %631, %627 ], [ %631, %627 ], [ %631, %627 ], [ %631, %627 ], [ %631, %781 ], [ %631, %773 ], [ %631, %793 ], [ %631, %805 ], [ %631, %908 ], [ %631, %905 ], [ %631, %910 ], [ %631, %925 ], [ %631, %950 ], [ %631, %961 ], [ %631, %1010 ], [ %631, %1032 ], [ %631, %823 ], [ %656, %746 ], [ %651, %649 ], [ %651, %649 ], [ %656, %747 ]
  %1049 = phi i64 [ %643, %1022 ], [ %643, %1029 ], [ %643, %967 ], [ %643, %957 ], [ %643, %956 ], [ %643, %953 ], [ %643, %949 ], [ %643, %946 ], [ %643, %936 ], [ %643, %930 ], [ %643, %933 ], [ %643, %921 ], [ %643, %920 ], [ %643, %913 ], [ %643, %909 ], [ %643, %841 ], [ %643, %810 ], [ %643, %817 ], [ %643, %833 ], [ %643, %840 ], [ %643, %820 ], [ %643, %812 ], [ %643, %802 ], [ %643, %809 ], [ %643, %798 ], [ %643, %790 ], [ %643, %797 ], [ %643, %786 ], [ %643, %757 ], [ %643, %756 ], [ 0, %738 ], [ %643, %648 ], [ %643, %646 ], [ %643, %627 ], [ %643, %627 ], [ %643, %627 ], [ %643, %627 ], [ %643, %781 ], [ %643, %773 ], [ %643, %793 ], [ %643, %805 ], [ %643, %908 ], [ %643, %905 ], [ %643, %910 ], [ %643, %925 ], [ %643, %950 ], [ %643, %961 ], [ %643, %1010 ], [ %643, %1032 ], [ %643, %823 ], [ 0, %746 ], [ 0, %649 ], [ 0, %649 ], [ 0, %747 ]
  %1050 = phi i32 [ %1024, %1022 ], [ %1024, %1029 ], [ 1, %967 ], [ %632, %957 ], [ 1, %956 ], [ %632, %953 ], [ 1, %949 ], [ %632, %946 ], [ %632, %936 ], [ %632, %930 ], [ %632, %933 ], [ %632, %921 ], [ 1, %920 ], [ %632, %913 ], [ %632, %909 ], [ %632, %841 ], [ %632, %810 ], [ %632, %817 ], [ %632, %833 ], [ 1, %840 ], [ %632, %820 ], [ %632, %812 ], [ %632, %802 ], [ 1, %809 ], [ %632, %798 ], [ %632, %790 ], [ 1, %797 ], [ %632, %786 ], [ %632, %757 ], [ 1, %756 ], [ %632, %738 ], [ %632, %648 ], [ %632, %646 ], [ %632, %627 ], [ %632, %627 ], [ %632, %627 ], [ %632, %627 ], [ %774, %781 ], [ %774, %773 ], [ %632, %793 ], [ %632, %805 ], [ %889, %908 ], [ %889, %905 ], [ %632, %910 ], [ %929, %925 ], [ %632, %950 ], [ %966, %961 ], [ %1014, %1010 ], [ %1039, %1032 ], [ %632, %823 ], [ %632, %746 ], [ %632, %649 ], [ %632, %649 ], [ %632, %747 ]
  %1051 = phi i32 [ %633, %1022 ], [ %633, %1029 ], [ %633, %967 ], [ %633, %957 ], [ %633, %956 ], [ %633, %953 ], [ %633, %949 ], [ %633, %946 ], [ %633, %936 ], [ %633, %930 ], [ %633, %933 ], [ %633, %921 ], [ %633, %920 ], [ %633, %913 ], [ %633, %909 ], [ %633, %841 ], [ %633, %810 ], [ %633, %817 ], [ %633, %833 ], [ %633, %840 ], [ %633, %820 ], [ %633, %812 ], [ %633, %802 ], [ %633, %809 ], [ %633, %798 ], [ %633, %790 ], [ %633, %797 ], [ %633, %786 ], [ %633, %757 ], [ %633, %756 ], [ %742, %738 ], [ %633, %648 ], [ %633, %646 ], [ %633, %627 ], [ %633, %627 ], [ %633, %627 ], [ %633, %627 ], [ %633, %781 ], [ %633, %773 ], [ %633, %793 ], [ %633, %805 ], [ %633, %908 ], [ %633, %905 ], [ %633, %910 ], [ %633, %925 ], [ %633, %950 ], [ %633, %961 ], [ %633, %1010 ], [ %633, %1032 ], [ %633, %823 ], [ %742, %746 ], [ %633, %649 ], [ %633, %649 ], [ %742, %747 ]
  %1052 = phi i32 [ %634, %1022 ], [ %634, %1029 ], [ %634, %967 ], [ %634, %957 ], [ %634, %956 ], [ %634, %953 ], [ %634, %949 ], [ %634, %946 ], [ %634, %936 ], [ %634, %930 ], [ %634, %933 ], [ %634, %921 ], [ %634, %920 ], [ %634, %913 ], [ %634, %909 ], [ %634, %841 ], [ %634, %810 ], [ %634, %817 ], [ %634, %833 ], [ %634, %840 ], [ %634, %820 ], [ %634, %812 ], [ %634, %802 ], [ %634, %809 ], [ %634, %798 ], [ %634, %790 ], [ %634, %797 ], [ %634, %786 ], [ %634, %757 ], [ 0, %756 ], [ 0, %738 ], [ %634, %648 ], [ %634, %646 ], [ %634, %627 ], [ %634, %627 ], [ %634, %627 ], [ %634, %627 ], [ %785, %781 ], [ %634, %773 ], [ %634, %793 ], [ %634, %805 ], [ 0, %908 ], [ %634, %905 ], [ %634, %910 ], [ %634, %925 ], [ %634, %950 ], [ %634, %961 ], [ %634, %1010 ], [ %634, %1032 ], [ %634, %823 ], [ 0, %746 ], [ %634, %649 ], [ %634, %649 ], [ %753, %747 ]
  %1053 = phi i32 [ %635, %1022 ], [ 1, %1029 ], [ %635, %967 ], [ %635, %957 ], [ %635, %956 ], [ %635, %953 ], [ %635, %949 ], [ %635, %946 ], [ %635, %936 ], [ %635, %930 ], [ %635, %933 ], [ %635, %921 ], [ %635, %920 ], [ %635, %913 ], [ %635, %909 ], [ %635, %841 ], [ %635, %810 ], [ %635, %817 ], [ %635, %833 ], [ %635, %840 ], [ %635, %820 ], [ %635, %812 ], [ %635, %802 ], [ %635, %809 ], [ %635, %798 ], [ %635, %790 ], [ %635, %797 ], [ %635, %786 ], [ %635, %757 ], [ %635, %756 ], [ %635, %738 ], [ %635, %648 ], [ %635, %646 ], [ %635, %627 ], [ %635, %627 ], [ %635, %627 ], [ %635, %627 ], [ %635, %781 ], [ %635, %773 ], [ %635, %793 ], [ %635, %805 ], [ %635, %908 ], [ %635, %905 ], [ %635, %910 ], [ %635, %925 ], [ %635, %950 ], [ %635, %961 ], [ %635, %1010 ], [ 1, %1032 ], [ %635, %823 ], [ %635, %746 ], [ %635, %649 ], [ %635, %649 ], [ %635, %747 ]
  %1054 = phi i32 [ %642, %1022 ], [ %642, %1029 ], [ 88, %967 ], [ %642, %957 ], [ 88, %956 ], [ 88, %953 ], [ %642, %949 ], [ %642, %946 ], [ %642, %936 ], [ 88, %930 ], [ 88, %933 ], [ %642, %921 ], [ %642, %920 ], [ %642, %913 ], [ 88, %909 ], [ 88, %841 ], [ 88, %810 ], [ 88, %817 ], [ 88, %833 ], [ 88, %840 ], [ 88, %820 ], [ 88, %812 ], [ 88, %802 ], [ 88, %809 ], [ 88, %798 ], [ 88, %790 ], [ 88, %797 ], [ 88, %786 ], [ 88, %757 ], [ 88, %756 ], [ %642, %738 ], [ 88, %648 ], [ 88, %646 ], [ %642, %627 ], [ %642, %627 ], [ %642, %627 ], [ %642, %627 ], [ 88, %781 ], [ 88, %773 ], [ 88, %793 ], [ 88, %805 ], [ 88, %908 ], [ 88, %905 ], [ %642, %910 ], [ %642, %925 ], [ 88, %950 ], [ %642, %961 ], [ %642, %1010 ], [ %642, %1032 ], [ 88, %823 ], [ %642, %746 ], [ %642, %649 ], [ %642, %649 ], [ %642, %747 ]
  %1055 = phi i32 [ %636, %1022 ], [ %636, %1029 ], [ %636, %967 ], [ %636, %957 ], [ %636, %956 ], [ %636, %953 ], [ %636, %949 ], [ %636, %946 ], [ %636, %936 ], [ %636, %930 ], [ %636, %933 ], [ %636, %921 ], [ %636, %920 ], [ %636, %913 ], [ 1, %909 ], [ %636, %841 ], [ %636, %810 ], [ %636, %817 ], [ %636, %833 ], [ %636, %840 ], [ %636, %820 ], [ %636, %812 ], [ %636, %802 ], [ %636, %809 ], [ %636, %798 ], [ %636, %790 ], [ %636, %797 ], [ %636, %786 ], [ %636, %757 ], [ %636, %756 ], [ %636, %738 ], [ %636, %648 ], [ %636, %646 ], [ %636, %627 ], [ %636, %627 ], [ %636, %627 ], [ %636, %627 ], [ %636, %781 ], [ %636, %773 ], [ %636, %793 ], [ %636, %805 ], [ %636, %908 ], [ %636, %905 ], [ %636, %910 ], [ %636, %925 ], [ %636, %950 ], [ %636, %961 ], [ %636, %1010 ], [ %636, %1032 ], [ %636, %823 ], [ %636, %746 ], [ %636, %649 ], [ %636, %649 ], [ %636, %747 ]
  %1056 = phi i32 [ %637, %1022 ], [ %637, %1029 ], [ 0, %967 ], [ %637, %957 ], [ %637, %956 ], [ %637, %953 ], [ %637, %949 ], [ %637, %946 ], [ %637, %936 ], [ %637, %930 ], [ %637, %933 ], [ %637, %921 ], [ %637, %920 ], [ %637, %913 ], [ %637, %909 ], [ 1, %841 ], [ 1, %810 ], [ 0, %817 ], [ 0, %833 ], [ 0, %840 ], [ 0, %820 ], [ 0, %812 ], [ %637, %802 ], [ %637, %809 ], [ %637, %798 ], [ %637, %790 ], [ %637, %797 ], [ %637, %786 ], [ 1, %757 ], [ %637, %756 ], [ 0, %738 ], [ %637, %648 ], [ %637, %646 ], [ %637, %627 ], [ %637, %627 ], [ %637, %627 ], [ %637, %627 ], [ 0, %781 ], [ 0, %773 ], [ %637, %793 ], [ %637, %805 ], [ 0, %908 ], [ 0, %905 ], [ %637, %910 ], [ %637, %925 ], [ %637, %950 ], [ %637, %961 ], [ %637, %1010 ], [ %637, %1032 ], [ 0, %823 ], [ %637, %746 ], [ %637, %649 ], [ %637, %649 ], [ %637, %747 ]
  %1057 = phi i8 [ %638, %1022 ], [ %638, %1029 ], [ %638, %967 ], [ %638, %957 ], [ %638, %956 ], [ %638, %953 ], [ %638, %949 ], [ %638, %946 ], [ %638, %936 ], [ %638, %930 ], [ %638, %933 ], [ %638, %921 ], [ %638, %920 ], [ %638, %913 ], [ %638, %909 ], [ %638, %841 ], [ %638, %810 ], [ %638, %817 ], [ %638, %833 ], [ %638, %840 ], [ %638, %820 ], [ %638, %812 ], [ %638, %802 ], [ %638, %809 ], [ %638, %798 ], [ %638, %790 ], [ %638, %797 ], [ %638, %786 ], [ %638, %757 ], [ %638, %756 ], [ %638, %738 ], [ %638, %648 ], [ %638, %646 ], [ %638, %627 ], [ %638, %627 ], [ %638, %627 ], [ %638, %627 ], [ %638, %781 ], [ %638, %773 ], [ %638, %793 ], [ %638, %805 ], [ 1, %908 ], [ 1, %905 ], [ %638, %910 ], [ %638, %925 ], [ %638, %950 ], [ %638, %961 ], [ %638, %1010 ], [ %638, %1032 ], [ %638, %823 ], [ %638, %746 ], [ %638, %649 ], [ %638, %649 ], [ %638, %747 ]
  %1058 = phi i32 [ %639, %1022 ], [ %639, %1029 ], [ %639, %967 ], [ %639, %957 ], [ %639, %956 ], [ %639, %953 ], [ %639, %949 ], [ %639, %946 ], [ %639, %936 ], [ %639, %930 ], [ %639, %933 ], [ %639, %921 ], [ %639, %920 ], [ %639, %913 ], [ %639, %909 ], [ %639, %841 ], [ %639, %810 ], [ %639, %817 ], [ %639, %833 ], [ %639, %840 ], [ %639, %820 ], [ %639, %812 ], [ %639, %802 ], [ %639, %809 ], [ %639, %798 ], [ %639, %790 ], [ %639, %797 ], [ %639, %786 ], [ %639, %757 ], [ %639, %756 ], [ %639, %738 ], [ %639, %648 ], [ %639, %646 ], [ %639, %627 ], [ %639, %627 ], [ %639, %627 ], [ %639, %627 ], [ 1, %781 ], [ 1, %773 ], [ %639, %793 ], [ %639, %805 ], [ 1, %908 ], [ 1, %905 ], [ %639, %910 ], [ %639, %925 ], [ %639, %950 ], [ %639, %961 ], [ %639, %1010 ], [ %639, %1032 ], [ %639, %823 ], [ %639, %746 ], [ %639, %649 ], [ %639, %649 ], [ %639, %747 ]
  %1059 = phi i8 [ %640, %1022 ], [ %640, %1029 ], [ %640, %967 ], [ %640, %957 ], [ %640, %956 ], [ %640, %953 ], [ %640, %949 ], [ %640, %946 ], [ %640, %936 ], [ %640, %930 ], [ %640, %933 ], [ %640, %921 ], [ %640, %920 ], [ %640, %913 ], [ 1, %909 ], [ %640, %841 ], [ %640, %810 ], [ %640, %817 ], [ %640, %833 ], [ %640, %840 ], [ %640, %820 ], [ %640, %812 ], [ %640, %802 ], [ %640, %809 ], [ %640, %798 ], [ %640, %790 ], [ %640, %797 ], [ %640, %786 ], [ %640, %757 ], [ %640, %756 ], [ %640, %738 ], [ %640, %648 ], [ %640, %646 ], [ %640, %627 ], [ %640, %627 ], [ %640, %627 ], [ %640, %627 ], [ %640, %781 ], [ %640, %773 ], [ %640, %793 ], [ %640, %805 ], [ %640, %908 ], [ %640, %905 ], [ %640, %910 ], [ %640, %925 ], [ %640, %950 ], [ %640, %961 ], [ %640, %1010 ], [ %640, %1032 ], [ %640, %823 ], [ %640, %746 ], [ %640, %649 ], [ %640, %649 ], [ %640, %747 ]
  %1060 = getelementptr inbounds i8, ptr %1048, i64 %1049
  %1061 = icmp eq i32 %1054, 0
  br i1 %1061, label %1062, label %627, !llvm.loop !134

1062:                                             ; preds = %1044, %1041
  %1063 = phi ptr [ %1043, %1041 ], [ %1060, %1044 ]
  %1064 = phi i8 [ %640, %1041 ], [ %1059, %1044 ]
  %1065 = phi i32 [ %639, %1041 ], [ %1058, %1044 ]
  %1066 = phi i8 [ %638, %1041 ], [ %1057, %1044 ]
  %1067 = phi i32 [ %637, %1041 ], [ %1056, %1044 ]
  %1068 = phi i32 [ %636, %1041 ], [ %1055, %1044 ]
  %1069 = phi i32 [ %635, %1041 ], [ %1053, %1044 ]
  %1070 = phi i32 [ %634, %1041 ], [ %1052, %1044 ]
  %1071 = phi i32 [ %633, %1041 ], [ %1051, %1044 ]
  %1072 = phi i32 [ %632, %1041 ], [ %1050, %1044 ]
  %1073 = phi i32 [ %630, %1041 ], [ %1047, %1044 ]
  %1074 = phi i32 [ %629, %1041 ], [ %1046, %1044 ]
  %1075 = phi i32 [ %628, %1041 ], [ %1045, %1044 ]
  store ptr %1063, ptr %495, align 8, !tbaa !31
  %1076 = icmp eq i32 %1069, 0
  br i1 %1076, label %1081, label %1077

1077:                                             ; preds = %1062
  %1078 = load i32, ptr %600, align 4, !tbaa !35
  %1079 = icmp eq i32 %1078, 0
  %1080 = select i1 %1079, i32 %1070, i32 0
  br label %1081

1081:                                             ; preds = %1077, %1062
  %1082 = phi i32 [ %1070, %1062 ], [ %1080, %1077 ]
  store i8 %1064, ptr %604, align 1, !tbaa !30
  %1083 = icmp eq i32 %1072, 0
  %1084 = icmp ne i32 %1067, 0
  %1085 = select i1 %1083, i1 true, i1 %1084
  br i1 %1085, label %1087, label %1086

1086:                                             ; preds = %1081
  store i8 1, ptr %601, align 1, !tbaa !30
  br label %1229

1087:                                             ; preds = %1081
  %1088 = icmp eq i32 %1071, 0
  %1089 = select i1 %1088, i1 true, i1 %1084
  br i1 %1089, label %1091, label %1090

1090:                                             ; preds = %1087
  store i8 1, ptr %602, align 1, !tbaa !30
  br label %1229

1091:                                             ; preds = %1087
  store i8 %1066, ptr %603, align 1, !tbaa !30
  %1092 = add nsw i32 %1075, 1
  %1093 = icmp eq i32 %1082, 0
  %1094 = select i1 %1093, i32 %1074, i32 1
  %1095 = load i32, ptr %597, align 8
  %1096 = and i32 %1095, 65535
  %1097 = icmp eq i32 %1096, 37
  br i1 %1097, label %1098, label %1105

1098:                                             ; preds = %1091
  %1099 = load i32, ptr %600, align 4, !tbaa !35
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1101, label %1105

1101:                                             ; preds = %1098
  %1102 = load i32, ptr %605, align 4, !tbaa !35
  %1103 = icmp slt i32 %1102, 0
  %1104 = select i1 %1103, i32 1, i32 %1094
  br label %1105

1105:                                             ; preds = %1101, %1098, %1091
  %1106 = phi i32 [ %1094, %1098 ], [ %1094, %1091 ], [ %1104, %1101 ]
  %1107 = zext nneg i32 %1096 to i64
  %1108 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1107
  %1109 = load i32, ptr %1108, align 4, !tbaa !35
  %1110 = icmp ne i32 %1109, 9
  %1111 = icmp eq i32 %1096, 121
  %1112 = or i1 %1111, %1110
  br i1 %1112, label %1129, label %1113

1113:                                             ; preds = %1105
  %1114 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !133
  %1115 = call zeroext i8 %1114(ptr noundef nonnull %597) #24
  %1116 = icmp eq i8 %1115, 0
  br i1 %1116, label %1117, label %1129

1117:                                             ; preds = %1113
  %1118 = load i32, ptr %600, align 4, !tbaa !35
  %1119 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %597, i32 noundef %1118) #24
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %1129

1121:                                             ; preds = %1117
  %1122 = load i32, ptr %622, align 4, !tbaa !35
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1129, label %1124

1124:                                             ; preds = %1121
  %1125 = load i32, ptr %600, align 4, !tbaa !35
  %1126 = icmp eq i32 %1125, 0
  %1127 = add nsw i32 %1075, 2
  %1128 = select i1 %1126, i32 %1092, i32 %1127
  br label %1129

1129:                                             ; preds = %1124, %1117, %1121, %1113, %1105
  %1130 = phi i32 [ %1092, %1113 ], [ %1092, %1121 ], [ %1092, %1117 ], [ %1092, %1105 ], [ %1128, %1124 ]
  %1131 = phi i1 [ false, %1113 ], [ false, %1121 ], [ false, %1117 ], [ false, %1105 ], [ true, %1124 ]
  %1132 = load i32, ptr %597, align 8
  %1133 = and i32 %1132, 65535
  %1134 = icmp eq i32 %1133, 38
  br i1 %1134, label %1143, label %1135

1135:                                             ; preds = %1129
  %1136 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %489
  %1137 = load i32, ptr %1136, align 4, !tbaa !35
  %1138 = icmp ne i32 %1137, 0
  %1139 = and i1 %54, %1138
  br i1 %1139, label %1140, label %1143

1140:                                             ; preds = %1135
  %1141 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %597) #24
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1144, label %1143

1143:                                             ; preds = %1140, %1135, %1129
  br label %1144

1144:                                             ; preds = %1140, %1143
  %1145 = phi i32 [ %1106, %1143 ], [ 1, %1140 ]
  %1146 = load i32, ptr %597, align 8
  %1147 = and i32 %1146, 65535
  %1148 = zext nneg i32 %1147 to i64
  %1149 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1148
  %1150 = load i32, ptr %1149, align 4, !tbaa !35
  %1151 = icmp eq i32 %1150, 9
  br i1 %1151, label %1167, label %1152

1152:                                             ; preds = %1144
  %1153 = load i32, ptr %600, align 4, !tbaa !35
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1167, label %1155

1155:                                             ; preds = %1152
  %1156 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %597, i32 noundef %1153) #24
  %1157 = icmp eq i32 %1156, 0
  %1158 = select i1 %1157, i32 600, i32 %1073
  %1159 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %489
  %1160 = load i32, ptr %1159, align 4, !tbaa !35
  %1161 = icmp eq i32 %1160, 1
  br i1 %1161, label %1162, label %1167

1162:                                             ; preds = %1155
  %1163 = load i32, ptr %600, align 4, !tbaa !35
  %1164 = call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %597, i32 noundef %1163) #24
  %1165 = icmp eq i32 %1164, 0
  %1166 = select i1 %1165, i32 600, i32 %1158
  br label %1167

1167:                                             ; preds = %1162, %1155, %1152, %1144
  %1168 = phi i32 [ %1073, %1144 ], [ %1158, %1155 ], [ %1073, %1152 ], [ %1166, %1162 ]
  %1169 = load i32, ptr %597, align 8
  %1170 = and i32 %1169, 65535
  %1171 = icmp eq i32 %1170, 37
  br i1 %1171, label %1172, label %1175

1172:                                             ; preds = %1167
  %1173 = call fastcc i32 @rhs_regno(ptr noundef nonnull %597) #25
  %1174 = icmp ugt i32 %1173, 52
  br i1 %1174, label %1182, label %1175

1175:                                             ; preds = %1172, %1167
  %1176 = icmp eq i32 %1170, 38
  %1177 = icmp ne i32 %1065, 0
  %1178 = select i1 %1131, i1 %1177, i1 false
  %1179 = select i1 %1176, i1 true, i1 %1178
  %1180 = add nsw i32 %1168, 2
  %1181 = select i1 %1179, i32 %1168, i32 %1180
  br label %1182

1182:                                             ; preds = %1175, %1172
  %1183 = phi i32 [ %1168, %1172 ], [ %1181, %1175 ]
  %1184 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %489
  %1185 = load i32, ptr %1184, align 4, !tbaa !35
  %1186 = icmp ne i32 %1185, 0
  %1187 = icmp ne i32 %1170, 38
  %1188 = and i1 %1187, %1186
  %1189 = zext i1 %1188 to i32
  %1190 = add nsw i32 %1183, %1189
  %1191 = icmp ne i32 %1072, 0
  %1192 = icmp ne i32 %1071, 0
  %1193 = select i1 %1191, i1 true, i1 %1192
  br i1 %1193, label %1229, label %1194

1194:                                             ; preds = %1182
  %1195 = load i32, ptr %600, align 4, !tbaa !35
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1229, label %1197

1197:                                             ; preds = %1194
  %1198 = load i32, ptr %622, align 4, !tbaa !35
  %1199 = zext i32 %1198 to i64
  %1200 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1199
  %1201 = load i8, ptr %1200, align 1, !tbaa !30
  %1202 = icmp ult i8 %1201, 5
  br i1 %1202, label %1203, label %1229

1203:                                             ; preds = %1197
  %1204 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %489
  %1205 = load i32, ptr %1204, align 4, !tbaa !35
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1206
  %1208 = load i32, ptr %1207, align 4, !tbaa !35
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1229, label %1210

1210:                                             ; preds = %1203
  %1211 = zext i32 %1205 to i64
  %1212 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1211
  %1213 = load i32, ptr %1212, align 4, !tbaa !35
  switch i32 %1213, label %1214 [
    i32 1, label %1229
    i32 0, label %1215
  ]

1214:                                             ; preds = %1210
  switch i32 %1205, label %1215 [
    i32 1, label %1229
    i32 2, label %1229
    i32 3, label %1229
    i32 4, label %1229
    i32 7, label %1229
    i32 5, label %1229
    i32 6, label %1229
    i32 17, label %1229
    i32 14, label %1229
    i32 15, label %1229
  ]

1215:                                             ; preds = %1214, %1210
  %1216 = call i32 @reg_class_subset_p(i32 noundef %1195, i32 noundef %1205) #24
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1218, label %1229

1218:                                             ; preds = %1215
  %1219 = call i32 @reg_class_subset_p(i32 noundef %1205, i32 noundef %1195) #24
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1222, label %1221

1221:                                             ; preds = %1218
  store i32 %1205, ptr %600, align 4, !tbaa !35
  br label %1229

1222:                                             ; preds = %1218
  %1223 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %489
  %1224 = load i8, ptr %1223, align 1, !tbaa !30
  %1225 = sext i8 %1224 to i32
  %1226 = shl nsw i32 %1225, 1
  %1227 = add i32 %1190, 2
  %1228 = add i32 %1227, %1226
  br label %1229

1229:                                             ; preds = %1090, %1086, %1214, %1214, %1214, %1214, %1214, %1214, %1214, %1214, %1214, %1214, %1210, %1215, %1222, %1221, %1203, %1197, %1194, %1182
  %1230 = phi i32 [ %1145, %1182 ], [ %1145, %1210 ], [ %1145, %1214 ], [ %1145, %1215 ], [ %1145, %1221 ], [ %1145, %1222 ], [ %1145, %1203 ], [ %1145, %1197 ], [ %1145, %1194 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1145, %1214 ], [ %1074, %1086 ], [ %1074, %1090 ]
  %1231 = phi i32 [ %1130, %1182 ], [ %1130, %1210 ], [ %1130, %1214 ], [ %1130, %1215 ], [ %1130, %1221 ], [ %1130, %1222 ], [ %1130, %1203 ], [ %1130, %1197 ], [ %1130, %1194 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1130, %1214 ], [ %1075, %1086 ], [ %1075, %1090 ]
  %1232 = phi i32 [ %1190, %1182 ], [ %1190, %1210 ], [ %1190, %1214 ], [ %1190, %1215 ], [ %1190, %1221 ], [ %1228, %1222 ], [ %1190, %1203 ], [ %1190, %1197 ], [ %1190, %1194 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1190, %1214 ], [ %1073, %1086 ], [ %1073, %1090 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #23
  %1233 = add nuw nsw i64 %489, 1
  %1234 = icmp eq i64 %1233, %453
  br i1 %1234, label %487, label %488, !llvm.loop !135

1235:                                             ; preds = %487, %1348
  %1236 = phi i64 [ %1350, %1348 ], [ 0, %487 ]
  %1237 = phi i32 [ %1349, %1348 ], [ %1231, %487 ]
  %1238 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %1236
  %1239 = load i8, ptr %1238, align 1, !tbaa !30
  %1240 = icmp eq i8 %1239, 0
  br i1 %1240, label %1348, label %1241

1241:                                             ; preds = %1235
  %1242 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1236
  %1243 = load i8, ptr %1242, align 1, !tbaa !30
  %1244 = icmp eq i8 %1243, 0
  br i1 %1244, label %1245, label %1249

1245:                                             ; preds = %1241
  %1246 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1236
  %1247 = load i8, ptr %1246, align 1, !tbaa !30
  %1248 = icmp eq i8 %1247, 0
  br i1 %1248, label %1348, label %1249

1249:                                             ; preds = %1245, %1241
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #23
  %1250 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1236
  %1251 = load ptr, ptr %1250, align 8, !tbaa !31
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %33, ptr noundef %1251) #25
  %1252 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1236
  %1253 = load i32, ptr %1252, align 4, !tbaa !35
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1255, label %1256

1255:                                             ; preds = %1249
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3618, ptr noundef nonnull @.str.1) #24
  br label %1256

1256:                                             ; preds = %1249, %1255
  %1257 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1236
  %1258 = load i32, ptr %1257, align 4, !tbaa !35
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1260, label %1266

1260:                                             ; preds = %1256
  store i8 0, ptr %1238, align 1, !tbaa !30
  %1261 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !35
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1263, label %1264

1263:                                             ; preds = %1260
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3623, ptr noundef nonnull @.str.1) #24
  br label %1264

1264:                                             ; preds = %1260, %1263
  %1265 = load ptr, ptr @this_insn, align 8, !tbaa !31
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %1265, ptr noundef nonnull @.str.4) #24
  br label %1266

1266:                                             ; preds = %1256, %1264
  %1267 = zext i32 %1258 to i64
  %1268 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1267
  br label %1269

1269:                                             ; preds = %1266, %1317
  %1270 = phi i64 [ 0, %1266 ], [ %1319, %1317 ]
  %1271 = phi i32 [ %1237, %1266 ], [ %1318, %1317 ]
  %1272 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1270
  %1273 = load ptr, ptr %1272, align 8, !tbaa !31
  %1274 = load i32, ptr %1273, align 8
  %1275 = and i32 %1274, 65535
  %1276 = icmp eq i32 %1275, 43
  br i1 %1276, label %1283, label %1277

1277:                                             ; preds = %1269
  %1278 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1270
  %1279 = load i32, ptr %1278, align 4, !tbaa !35
  %1280 = icmp eq i32 %1279, 2
  %1281 = icmp eq i64 %1270, %1236
  %1282 = or i1 %1281, %1280
  br i1 %1282, label %1317, label %1285

1283:                                             ; preds = %1269
  %1284 = icmp eq i64 %1270, %1236
  br i1 %1284, label %1317, label %1285

1285:                                             ; preds = %1277, %1283
  %1286 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1270
  %1287 = load ptr, ptr %1286, align 8, !tbaa !31
  %1288 = load i8, ptr %1287, align 1, !tbaa !30
  %1289 = icmp eq i8 %1288, 0
  br i1 %1289, label %1317, label %1290

1290:                                             ; preds = %1285
  %1291 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1270
  %1292 = load i32, ptr %1291, align 4, !tbaa !35
  %1293 = zext i32 %1292 to i64
  %1294 = icmp eq i64 %1236, %1293
  br i1 %1294, label %1295, label %1301

1295:                                             ; preds = %1290
  %1296 = load ptr, ptr %1250, align 8, !tbaa !31
  %1297 = call i32 @rtx_equal_p(ptr noundef %1296, ptr noundef nonnull %1273) #24
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1299, label %1317

1299:                                             ; preds = %1295
  %1300 = load ptr, ptr %1272, align 8, !tbaa !31
  br label %1301

1301:                                             ; preds = %1299, %1290
  %1302 = phi ptr [ %1300, %1299 ], [ %1273, %1290 ]
  %1303 = load ptr, ptr %1250, align 8, !tbaa !31
  %1304 = call fastcc i32 @immune_p(ptr noundef %1302, ptr noundef %1303, ptr noundef nonnull byval(%struct.decomposition) align 8 %33) #25, !range !42
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1306, label %1317

1306:                                             ; preds = %1301
  %1307 = load i32, ptr %1268, align 4, !tbaa !35
  switch i32 %1307, label %1308 [
    i32 1, label %1309
    i32 0, label %1321
  ]

1308:                                             ; preds = %1306
  switch i32 %1258, label %1321 [
    i32 1, label %1309
    i32 2, label %1309
    i32 3, label %1309
    i32 4, label %1309
    i32 7, label %1309
    i32 5, label %1309
    i32 6, label %1309
    i32 17, label %1309
    i32 14, label %1309
    i32 15, label %1309
  ]

1309:                                             ; preds = %1308, %1308, %1308, %1308, %1308, %1308, %1308, %1308, %1308, %1308, %1306
  %1310 = load ptr, ptr %1272, align 8, !tbaa !31
  %1311 = load i32, ptr %1310, align 8
  %1312 = trunc i32 %1311 to i16
  switch i16 %1312, label %1321 [
    i16 37, label %1313
    i16 39, label %1313
  ]

1313:                                             ; preds = %1309, %1309
  %1314 = add nsw i32 %1271, 1
  %1315 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1270
  store i8 0, ptr %1315, align 1, !tbaa !30
  %1316 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1270
  store i8 0, ptr %1316, align 1, !tbaa !30
  br label %1317

1317:                                             ; preds = %1277, %1283, %1285, %1295, %1301, %1313
  %1318 = phi i32 [ %1271, %1295 ], [ %1271, %1301 ], [ %1314, %1313 ], [ %1271, %1285 ], [ %1271, %1283 ], [ %1271, %1277 ]
  %1319 = add nuw nsw i64 %1270, 1
  %1320 = icmp eq i64 %1319, %453
  br i1 %1320, label %1346, label %1269, !llvm.loop !136

1321:                                             ; preds = %1306, %1308, %1309
  %1322 = trunc i64 %1270 to i32
  %1323 = icmp eq i32 %1322, %96
  br i1 %1323, label %1346, label %1324

1324:                                             ; preds = %1321
  %1325 = add nsw i32 %1271, 1
  store i8 0, ptr %1242, align 1, !tbaa !30
  %1326 = and i64 %1270, 4294967295
  %1327 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1326
  store i8 0, ptr %1327, align 1, !tbaa !30
  br label %1328

1328:                                             ; preds = %1324, %1342
  %1329 = phi i64 [ 0, %1324 ], [ %1344, %1342 ]
  %1330 = phi i32 [ %1325, %1324 ], [ %1343, %1342 ]
  %1331 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1329
  %1332 = load i32, ptr %1331, align 4, !tbaa !35
  %1333 = zext i32 %1332 to i64
  %1334 = icmp eq i64 %1236, %1333
  br i1 %1334, label %1335, label %1342

1335:                                             ; preds = %1328
  %1336 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1329
  %1337 = load i8, ptr %1336, align 1, !tbaa !30
  %1338 = icmp eq i8 %1337, 0
  br i1 %1338, label %1342, label %1339

1339:                                             ; preds = %1335
  %1340 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1329
  store i8 0, ptr %1340, align 1, !tbaa !30
  store i8 0, ptr %1336, align 1, !tbaa !30
  %1341 = add nsw i32 %1330, 1
  br label %1342

1342:                                             ; preds = %1328, %1335, %1339
  %1343 = phi i32 [ %1341, %1339 ], [ %1330, %1335 ], [ %1330, %1328 ]
  %1344 = add nuw nsw i64 %1329, 1
  %1345 = icmp eq i64 %1344, %453
  br i1 %1345, label %1346, label %1328, !llvm.loop !137

1346:                                             ; preds = %1317, %1342, %1321
  %1347 = phi i32 [ %1271, %1321 ], [ %1343, %1342 ], [ %1318, %1317 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #23
  br label %1348

1348:                                             ; preds = %1235, %1245, %1346
  %1349 = phi i32 [ %1347, %1346 ], [ %1237, %1245 ], [ %1237, %1235 ]
  %1350 = add nuw nsw i64 %1236, 1
  %1351 = icmp eq i64 %1350, %453
  br i1 %1351, label %1352, label %1235, !llvm.loop !138

1352:                                             ; preds = %1348, %487
  %1353 = phi i32 [ %1231, %487 ], [ %1349, %1348 ]
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1355, label %1363

1355:                                             ; preds = %474, %1352
  %1356 = phi i32 [ %1068, %1352 ], [ 0, %474 ]
  %1357 = trunc i64 %465 to i32
  br i1 %440, label %1358, label %1361

1358:                                             ; preds = %1355
  %1359 = load ptr, ptr %445, align 8, !tbaa !31
  store ptr %1359, ptr %444, align 8, !tbaa !31
  %1360 = load ptr, ptr %442, align 8, !tbaa !31
  store ptr %1360, ptr %446, align 8, !tbaa !31
  br label %1361

1361:                                             ; preds = %1358, %1355
  br i1 %110, label %1362, label %1512

1362:                                             ; preds = %1361
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %453, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %453, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %454, i1 false), !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %26, ptr nonnull align 16 %17, i64 %453, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr nonnull align 16 %19, i64 %454, i1 false), !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %27, ptr nonnull align 16 %18, i64 %453, i1 false), !tbaa !30
  br label %1482

1363:                                             ; preds = %1352
  %1364 = mul nsw i32 %1353, 6
  %1365 = add nsw i32 %1364, %1232
  %1366 = icmp ne i32 %1230, 0
  %1367 = icmp slt i32 %468, %1365
  %1368 = select i1 %1366, i1 true, i1 %1367
  br i1 %1368, label %1401, label %1369

1369:                                             ; preds = %1363
  br i1 %110, label %1370, label %1391

1370:                                             ; preds = %1369, %1386
  %1371 = phi i64 [ %1389, %1386 ], [ 0, %1369 ]
  %1372 = phi i32 [ %1388, %1386 ], [ 0, %1369 ]
  %1373 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1371
  %1374 = load i32, ptr %1373, align 4, !tbaa !35
  %1375 = zext i32 %1374 to i64
  %1376 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1375
  %1377 = load i32, ptr %1376, align 4, !tbaa !35
  switch i32 %1377, label %1378 [
    i32 1, label %1386
    i32 0, label %1381
  ]

1378:                                             ; preds = %1370
  %1379 = add i32 %1374, -1
  %1380 = icmp ult i32 %1379, 17
  br i1 %1380, label %1382, label %1386

1381:                                             ; preds = %1370
  br label %1386

1382:                                             ; preds = %1378
  %1383 = zext nneg i32 %1379 to i64
  %1384 = getelementptr inbounds [17 x i32], ptr @switch.table.find_reloads, i64 0, i64 %1383
  %1385 = load i32, ptr %1384, align 4
  br label %1386

1386:                                             ; preds = %1378, %1382, %1370, %1381
  %1387 = phi i32 [ %1377, %1370 ], [ 0, %1381 ], [ %1385, %1382 ], [ 0, %1378 ]
  %1388 = add nuw nsw i32 %1387, %1372
  %1389 = add nuw nsw i64 %1371, 1
  %1390 = icmp eq i64 %1389, %453
  br i1 %1390, label %1391, label %1370, !llvm.loop !139

1391:                                             ; preds = %1386, %1369
  %1392 = phi i32 [ 0, %1369 ], [ %1388, %1386 ]
  %1393 = icmp sgt i32 %468, %1365
  br i1 %1393, label %1398, label %1394

1394:                                             ; preds = %1391
  %1395 = icmp eq i32 %468, %1365
  %1396 = icmp slt i32 %1392, %469
  %1397 = select i1 %1395, i1 %1396, i1 false
  br i1 %1397, label %1398, label %1401

1398:                                             ; preds = %1391, %1394
  %1399 = trunc i64 %465 to i32
  br i1 %110, label %1400, label %1401

1400:                                             ; preds = %1398
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %454, i1 false), !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %453, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %453, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %26, ptr nonnull align 16 %17, i64 %453, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr nonnull align 16 %19, i64 %454, i1 false), !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %27, ptr nonnull align 16 %18, i64 %453, i1 false), !tbaa !30
  br label %1401

1401:                                             ; preds = %480, %1400, %1398, %475, %1394, %1363
  %1402 = phi i32 [ %470, %1363 ], [ %470, %1394 ], [ %470, %475 ], [ %1068, %1398 ], [ %1068, %1400 ], [ %470, %480 ]
  %1403 = phi i32 [ %469, %1363 ], [ %469, %1394 ], [ %469, %475 ], [ %1392, %1398 ], [ %1392, %1400 ], [ %469, %480 ]
  %1404 = phi i32 [ %468, %1363 ], [ %468, %1394 ], [ %468, %475 ], [ %1365, %1398 ], [ %1365, %1400 ], [ %468, %480 ]
  %1405 = phi i32 [ %467, %1363 ], [ %467, %1394 ], [ %467, %475 ], [ %461, %1398 ], [ %461, %1400 ], [ %467, %480 ]
  %1406 = phi i32 [ %466, %1363 ], [ %466, %1394 ], [ %466, %475 ], [ %1399, %1398 ], [ %1399, %1400 ], [ %466, %480 ]
  %1407 = add nuw nsw i64 %465, 1
  %1408 = icmp eq i64 %1407, %98
  br i1 %1408, label %1409, label %464, !llvm.loop !140

1409:                                             ; preds = %1401, %455
  %1410 = phi i32 [ %456, %455 ], [ %1402, %1401 ]
  %1411 = phi i32 [ %457, %455 ], [ %1403, %1401 ]
  %1412 = phi i32 [ %458, %455 ], [ %1404, %1401 ]
  %1413 = phi i32 [ %459, %455 ], [ %1405, %1401 ]
  %1414 = phi i32 [ %460, %455 ], [ %1406, %1401 ]
  br i1 %440, label %1415, label %1473

1415:                                             ; preds = %1409
  %1416 = icmp eq i32 %461, 0
  %1417 = xor i32 %461, 1
  br i1 %1416, label %1418, label %1449

1418:                                             ; preds = %1415
  %1419 = load ptr, ptr %442, align 8, !tbaa !31
  store ptr %1419, ptr %444, align 8, !tbaa !31
  %1420 = load ptr, ptr %445, align 8, !tbaa !31
  store ptr %1420, ptr %446, align 8, !tbaa !31
  %1421 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !141
  %1422 = icmp sgt i8 %1421, 0
  br i1 %1422, label %1423, label %1442

1423:                                             ; preds = %1418
  %1424 = zext nneg i8 %1421 to i64
  br label %1425

1425:                                             ; preds = %1423, %1439
  %1426 = phi i64 [ 0, %1423 ], [ %1440, %1439 ]
  %1427 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1426
  %1428 = load i8, ptr %1427, align 1, !tbaa !30
  %1429 = sext i8 %1428 to i32
  %1430 = icmp eq i32 %434, %1429
  %1431 = icmp eq i32 %437, %1429
  %1432 = or i1 %1430, %1431
  br i1 %1432, label %1433, label %1439

1433:                                             ; preds = %1425
  %1434 = sext i8 %1428 to i64
  %1435 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1434
  %1436 = load ptr, ptr %1435, align 8, !tbaa !31
  %1437 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1426
  %1438 = load ptr, ptr %1437, align 8, !tbaa !31
  store ptr %1436, ptr %1438, align 8, !tbaa !31
  br label %1439

1439:                                             ; preds = %1425, %1433
  %1440 = add nuw nsw i64 %1426, 1
  %1441 = icmp eq i64 %1440, %1424
  br i1 %1441, label %1442, label %1425, !llvm.loop !142

1442:                                             ; preds = %1439, %1418
  %1443 = load i32, ptr %447, align 4, !tbaa !35
  %1444 = load i32, ptr %448, align 4, !tbaa !35
  store i32 %1444, ptr %447, align 4, !tbaa !35
  store i32 %1443, ptr %448, align 4, !tbaa !35
  %1445 = load i8, ptr %449, align 1, !tbaa !30
  %1446 = load i8, ptr %450, align 1, !tbaa !30
  store i8 %1446, ptr %449, align 1, !tbaa !30
  store i8 %1445, ptr %450, align 1, !tbaa !30
  %1447 = load i32, ptr %451, align 4, !tbaa !35
  %1448 = load i32, ptr %452, align 4, !tbaa !35
  store i32 %1448, ptr %451, align 4, !tbaa !35
  store i32 %1447, ptr %452, align 4, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %109, i1 false)
  br label %455

1449:                                             ; preds = %1415
  %1450 = load ptr, ptr %445, align 8, !tbaa !31
  store ptr %1450, ptr %444, align 8, !tbaa !31
  %1451 = load ptr, ptr %442, align 8, !tbaa !31
  store ptr %1451, ptr %446, align 8, !tbaa !31
  %1452 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !141
  %1453 = icmp sgt i8 %1452, 0
  br i1 %1453, label %1454, label %1473

1454:                                             ; preds = %1449
  %1455 = zext nneg i8 %1452 to i64
  br label %1456

1456:                                             ; preds = %1454, %1470
  %1457 = phi i64 [ 0, %1454 ], [ %1471, %1470 ]
  %1458 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1457
  %1459 = load i8, ptr %1458, align 1, !tbaa !30
  %1460 = sext i8 %1459 to i32
  %1461 = icmp eq i32 %434, %1460
  %1462 = icmp eq i32 %437, %1460
  %1463 = or i1 %1461, %1462
  br i1 %1463, label %1464, label %1470

1464:                                             ; preds = %1456
  %1465 = sext i8 %1459 to i64
  %1466 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1465
  %1467 = load ptr, ptr %1466, align 8, !tbaa !31
  %1468 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1457
  %1469 = load ptr, ptr %1468, align 8, !tbaa !31
  store ptr %1467, ptr %1469, align 8, !tbaa !31
  br label %1470

1470:                                             ; preds = %1456, %1464
  %1471 = add nuw nsw i64 %1457, 1
  %1472 = icmp eq i64 %1471, %1455
  br i1 %1472, label %1473, label %1456, !llvm.loop !143

1473:                                             ; preds = %1409, %1470, %1449
  %1474 = icmp eq i32 %1412, 660
  br i1 %1474, label %1475, label %1481

1475:                                             ; preds = %1473
  %1476 = icmp sgt i32 %104, -1
  br i1 %1476, label %1477, label %1478

1477:                                             ; preds = %1475
  call void @_fatal_insn(ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 3821, ptr noundef nonnull @.str.1) #24
  br label %1478

1478:                                             ; preds = %1477, %1475
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %1479 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !31
  %1480 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %1479) #24
  store ptr %1480, ptr %37, align 8, !tbaa !30
  store i32 0, ptr @n_reloads, align 4, !tbaa !35
  br label %2693

1481:                                             ; preds = %1473
  br i1 %110, label %1482, label %1512

1482:                                             ; preds = %1362, %1481
  %1483 = phi i32 [ %1357, %1362 ], [ %1414, %1481 ]
  %1484 = phi i32 [ %461, %1362 ], [ %1413, %1481 ]
  %1485 = phi i32 [ %1356, %1362 ], [ %1410, %1481 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %23, i8 -1, i64 %454, i1 false), !tbaa !35
  br label %1487

1486:                                             ; preds = %1500
  br i1 %110, label %1503, label %1512

1487:                                             ; preds = %1482, %1500
  %1488 = phi i64 [ 0, %1482 ], [ %1501, %1500 ]
  %1489 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1488
  %1490 = load i8, ptr %1489, align 1, !tbaa !30
  %1491 = icmp eq i8 %1490, 0
  br i1 %1491, label %1492, label %1500

1492:                                             ; preds = %1487
  %1493 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1488
  %1494 = load i32, ptr %1493, align 4, !tbaa !35
  %1495 = icmp sgt i32 %1494, -1
  br i1 %1495, label %1496, label %1500

1496:                                             ; preds = %1492
  %1497 = zext nneg i32 %1494 to i64
  %1498 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1497
  %1499 = trunc i64 %1488 to i32
  store i32 %1499, ptr %1498, align 4, !tbaa !35
  br label %1500

1500:                                             ; preds = %1487, %1492, %1496
  %1501 = add nuw nsw i64 %1488, 1
  %1502 = icmp eq i64 %1501, %453
  br i1 %1502, label %1486, label %1487, !llvm.loop !144

1503:                                             ; preds = %1486, %1503
  %1504 = phi i64 [ %1510, %1503 ], [ 0, %1486 ]
  %1505 = getelementptr inbounds [30 x i8], ptr %24, i64 0, i64 %1504
  %1506 = load i8, ptr %1505, align 1, !tbaa !30
  %1507 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1504
  %1508 = load i8, ptr %1507, align 1, !tbaa !30
  %1509 = or i8 %1508, %1506
  store i8 %1509, ptr %1507, align 1, !tbaa !30
  %1510 = add nuw nsw i64 %1504, 1
  %1511 = icmp eq i64 %1510, %453
  br i1 %1511, label %1512, label %1503, !llvm.loop !145

1512:                                             ; preds = %1503, %1481, %1361, %1486
  %1513 = phi i32 [ %1483, %1486 ], [ %1414, %1481 ], [ %1357, %1361 ], [ %1483, %1503 ]
  %1514 = phi i32 [ %1484, %1486 ], [ %1413, %1481 ], [ %461, %1361 ], [ %1484, %1503 ]
  %1515 = phi i32 [ %1485, %1486 ], [ %1410, %1481 ], [ %1356, %1361 ], [ %1485, %1503 ]
  %1516 = icmp eq i32 %1514, 0
  br i1 %1516, label %1551, label %1517

1517:                                             ; preds = %1512
  %1518 = sext i32 %434 to i64
  %1519 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1518
  %1520 = load ptr, ptr %1519, align 8, !tbaa !31
  %1521 = sext i32 %437 to i64
  %1522 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1521
  %1523 = load ptr, ptr %1522, align 8, !tbaa !31
  store ptr %1523, ptr %1519, align 8, !tbaa !31
  store ptr %1520, ptr %1522, align 8, !tbaa !31
  %1524 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1518
  %1525 = load ptr, ptr %1524, align 8, !tbaa !31
  %1526 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1521
  %1527 = load ptr, ptr %1526, align 8, !tbaa !31
  store ptr %1527, ptr %1524, align 8, !tbaa !31
  store ptr %1525, ptr %1526, align 8, !tbaa !31
  %1528 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1518
  %1529 = load ptr, ptr %1528, align 8, !tbaa !31
  %1530 = load ptr, ptr %1529, align 8, !tbaa !31
  %1531 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1521
  %1532 = load ptr, ptr %1531, align 8, !tbaa !31
  %1533 = load ptr, ptr %1532, align 8, !tbaa !31
  store ptr %1533, ptr %1529, align 8, !tbaa !31
  %1534 = load ptr, ptr %1531, align 8, !tbaa !31
  store ptr %1530, ptr %1534, align 8, !tbaa !31
  %1535 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %1536 = icmp sgt i32 %1535, 0
  br i1 %1536, label %1537, label %1551

1537:                                             ; preds = %1517
  %1538 = zext nneg i32 %1535 to i64
  br label %1539

1539:                                             ; preds = %1537, %1548
  %1540 = phi i64 [ 0, %1537 ], [ %1549, %1548 ]
  %1541 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1540, i32 12
  %1542 = load i32, ptr %1541, align 8, !tbaa !57
  %1543 = icmp eq i32 %1542, %434
  br i1 %1543, label %1546, label %1544

1544:                                             ; preds = %1539
  %1545 = icmp eq i32 %1542, %437
  br i1 %1545, label %1546, label %1548

1546:                                             ; preds = %1544, %1539
  %1547 = phi i32 [ %437, %1539 ], [ %434, %1544 ]
  store i32 %1547, ptr %1541, align 8, !tbaa !57
  br label %1548

1548:                                             ; preds = %1546, %1544
  %1549 = add nuw nsw i64 %1540, 1
  %1550 = icmp eq i64 %1549, %1538
  br i1 %1550, label %1551, label %1539, !llvm.loop !146

1551:                                             ; preds = %1548, %1517, %1512
  br i1 %110, label %1553, label %1657

1552:                                             ; preds = %1569
  br i1 %110, label %1572, label %1657

1553:                                             ; preds = %1551, %1569
  %1554 = phi i64 [ %1570, %1569 ], [ 0, %1551 ]
  %1555 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1554
  store i32 -1, ptr %1555, align 4, !tbaa !35
  %1556 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1554
  %1557 = load i8, ptr %1556, align 1, !tbaa !30
  %1558 = icmp eq i8 %1557, 0
  br i1 %1558, label %1569, label %1559

1559:                                             ; preds = %1553
  %1560 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1554
  %1561 = load i32, ptr %1560, align 4, !tbaa !35
  %1562 = icmp eq i32 %1561, 9
  br i1 %1562, label %1569, label %1563

1563:                                             ; preds = %1559
  %1564 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1554
  %1565 = load ptr, ptr %1564, align 8, !tbaa !31
  %1566 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %1565) #24
  %1567 = icmp eq ptr %1566, null
  %1568 = select i1 %1567, i32 9, i32 2
  store i32 %1568, ptr %1560, align 4, !tbaa !35
  br label %1569

1569:                                             ; preds = %1553, %1559, %1563
  %1570 = add nuw nsw i64 %1554, 1
  %1571 = icmp eq i64 %1570, %453
  br i1 %1571, label %1552, label %1553, !llvm.loop !147

1572:                                             ; preds = %1552, %1654
  %1573 = phi i64 [ %1655, %1654 ], [ 0, %1552 ]
  %1574 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1573
  %1575 = load i8, ptr %1574, align 1, !tbaa !30
  %1576 = icmp eq i8 %1575, 0
  br i1 %1576, label %1577, label %1654

1577:                                             ; preds = %1572
  %1578 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1573
  %1579 = load ptr, ptr %1578, align 8, !tbaa !31
  %1580 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1573
  %1581 = load i32, ptr %1580, align 4, !tbaa !35
  %1582 = load i32, ptr %1579, align 8
  %1583 = and i32 %1582, 65535
  %1584 = icmp eq i32 %1583, 39
  br i1 %1584, label %1585, label %1591

1585:                                             ; preds = %1577
  %1586 = getelementptr inbounds %struct.rtx_def, ptr %1579, i64 0, i32 1
  %1587 = load ptr, ptr %1586, align 8, !tbaa !30
  %1588 = load i32, ptr %1587, align 8
  %1589 = lshr i32 %1588, 16
  %1590 = and i32 %1589, 255
  br label %1591

1591:                                             ; preds = %1585, %1577
  %1592 = phi i32 [ %1588, %1585 ], [ %1582, %1577 ]
  %1593 = phi ptr [ %1587, %1585 ], [ %1579, %1577 ]
  %1594 = phi ptr [ %1579, %1585 ], [ null, %1577 ]
  %1595 = phi i32 [ %1590, %1585 ], [ %1581, %1577 ]
  %1596 = and i32 %1592, 65535
  %1597 = icmp eq i32 %1596, 49
  br i1 %1597, label %1598, label %1603

1598:                                             ; preds = %1591
  %1599 = getelementptr inbounds %struct.rtx_def, ptr %1593, i64 0, i32 1, i32 0, i32 0, i64 1
  %1600 = load ptr, ptr %1599, align 8, !tbaa !30
  %1601 = load i32, ptr %1600, align 8
  %1602 = and i32 %1601, 65535
  br label %1603

1603:                                             ; preds = %1598, %1591
  %1604 = phi i32 [ %1602, %1598 ], [ %1596, %1591 ]
  %1605 = phi ptr [ %1600, %1598 ], [ %1593, %1591 ]
  %1606 = phi ptr [ %1593, %1598 ], [ null, %1591 ]
  %1607 = zext nneg i32 %1604 to i64
  %1608 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1607
  %1609 = load i32, ptr %1608, align 4, !tbaa !35
  %1610 = icmp ne i32 %1609, 9
  %1611 = icmp eq i32 %1604, 121
  %1612 = or i1 %1610, %1611
  br i1 %1612, label %1654, label %1613

1613:                                             ; preds = %1603
  %1614 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !133
  %1615 = call zeroext i8 %1614(ptr noundef nonnull %1605) #24
  %1616 = icmp eq i8 %1615, 0
  br i1 %1616, label %1617, label %1654

1617:                                             ; preds = %1613
  %1618 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1573
  %1619 = load i32, ptr %1618, align 4, !tbaa !35
  %1620 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %1605, i32 noundef %1619) #24
  %1621 = icmp eq i32 %1620, 0
  %1622 = icmp ne i32 %1595, 0
  %1623 = select i1 %1621, i1 %1622, i1 false
  br i1 %1623, label %1624, label %1654

1624:                                             ; preds = %1617
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #23
  %1625 = call ptr @force_const_mem(i32 noundef %1595, ptr noundef nonnull %1605) #24
  %1626 = icmp eq ptr %1606, null
  br i1 %1626, label %1631, label %1627

1627:                                             ; preds = %1624
  %1628 = getelementptr inbounds %struct.rtx_def, ptr %1606, i64 0, i32 1
  %1629 = load ptr, ptr %1628, align 8, !tbaa !30
  %1630 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1595, ptr noundef %1629, ptr noundef %1625) #24
  br label %1631

1631:                                             ; preds = %1627, %1624
  %1632 = phi ptr [ %1630, %1627 ], [ %1625, %1624 ]
  %1633 = icmp eq ptr %1594, null
  br i1 %1633, label %1639, label %1634

1634:                                             ; preds = %1631
  %1635 = load i32, ptr %1580, align 4, !tbaa !35
  %1636 = getelementptr inbounds %struct.rtx_def, ptr %1594, i64 0, i32 1, i32 0, i32 0, i64 1
  %1637 = load i32, ptr %1636, align 8, !tbaa !30
  %1638 = call ptr @gen_rtx_SUBREG(i32 noundef %1635, ptr noundef %1632, i32 noundef %1637) #24
  br label %1639

1639:                                             ; preds = %1634, %1631
  %1640 = phi ptr [ %1638, %1634 ], [ %1632, %1631 ]
  store i32 0, ptr %34, align 4, !tbaa !35
  %1641 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %1573
  %1642 = load i32, ptr %1641, align 4, !tbaa !35
  %1643 = trunc i64 %1573 to i32
  %1644 = call fastcc ptr @find_reloads_toplev(ptr noundef %1640, i32 noundef %1643, i32 noundef %1642, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %34) #25
  store ptr %1644, ptr %1578, align 8, !tbaa !31
  %1645 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1573
  store ptr %1644, ptr %1645, align 8, !tbaa !31
  %1646 = and i1 %1633, %1626
  br i1 %1646, label %1647, label %1653

1647:                                             ; preds = %1639
  %1648 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1573
  %1649 = load ptr, ptr %1648, align 8, !tbaa !31
  %1650 = call fastcc zeroext i8 @alternative_allows_const_pool_ref(ptr noundef %1649, i32 noundef %1513) #25
  %1651 = icmp eq i8 %1650, 0
  br i1 %1651, label %1653, label %1652

1652:                                             ; preds = %1647
  store i8 1, ptr %1574, align 1, !tbaa !30
  br label %1653

1653:                                             ; preds = %1652, %1647, %1639
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #23
  br label %1654

1654:                                             ; preds = %1603, %1613, %1653, %1617, %1572
  %1655 = add nuw nsw i64 %1573, 1
  %1656 = icmp eq i64 %1655, %453
  br i1 %1656, label %1659, label %1572, !llvm.loop !148

1657:                                             ; preds = %1551, %1552
  %1658 = icmp ne i32 %1515, 0
  br label %2081

1659:                                             ; preds = %1654
  %1660 = icmp ne i32 %1515, 0
  %1661 = and i1 %1660, %110
  br i1 %1661, label %1662, label %1680

1662:                                             ; preds = %1659
  %1663 = load i32, ptr @n_earlyclobbers, align 4
  br label %1664

1664:                                             ; preds = %1662, %1676
  %1665 = phi i64 [ 0, %1662 ], [ %1678, %1676 ]
  %1666 = phi i32 [ %1663, %1662 ], [ %1677, %1676 ]
  %1667 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1665
  %1668 = load i8, ptr %1667, align 1, !tbaa !30
  %1669 = icmp eq i8 %1668, 0
  br i1 %1669, label %1676, label %1670

1670:                                             ; preds = %1664
  %1671 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1665
  %1672 = load ptr, ptr %1671, align 8, !tbaa !31
  %1673 = add nsw i32 %1666, 1
  store i32 %1673, ptr @n_earlyclobbers, align 4, !tbaa !35
  %1674 = sext i32 %1666 to i64
  %1675 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %1674
  store ptr %1672, ptr %1675, align 8, !tbaa !31
  br label %1676

1676:                                             ; preds = %1664, %1670
  %1677 = phi i32 [ %1666, %1664 ], [ %1673, %1670 ]
  %1678 = add nuw nsw i64 %1665, 1
  %1679 = icmp eq i64 %1678, %453
  br i1 %1679, label %1680, label %1664, !llvm.loop !149

1680:                                             ; preds = %1676, %1659
  br i1 %110, label %1681, label %2081

1681:                                             ; preds = %1680
  %1682 = zext nneg i32 %104 to i64
  %1683 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %1682, i32 3
  %1684 = icmp eq i32 %1, 0
  br label %1688

1685:                                             ; preds = %2043
  br i1 %110, label %1686, label %2081

1686:                                             ; preds = %1685
  %1687 = icmp eq i32 %1, 0
  br label %2046

1688:                                             ; preds = %1681, %2043
  %1689 = phi i64 [ 0, %1681 ], [ %2044, %2043 ]
  %1690 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1689
  %1691 = load i8, ptr %1690, align 1, !tbaa !30
  %1692 = icmp eq i8 %1691, 0
  br i1 %1692, label %1693, label %1874

1693:                                             ; preds = %1688
  %1694 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1689
  %1695 = load i32, ptr %1694, align 4, !tbaa !35
  %1696 = icmp sgt i32 %1695, -1
  br i1 %1696, label %2043, label %1697

1697:                                             ; preds = %1693
  %1698 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1689
  %1699 = load i32, ptr %1698, align 4, !tbaa !35
  %1700 = icmp eq i32 %1699, -1
  br i1 %1700, label %1701, label %1816

1701:                                             ; preds = %1697
  %1702 = getelementptr inbounds [30 x i8], ptr %26, i64 0, i64 %1689
  %1703 = load i8, ptr %1702, align 1, !tbaa !30
  %1704 = icmp eq i8 %1703, 0
  br i1 %1704, label %1773, label %1705

1705:                                             ; preds = %1701
  %1706 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1689
  %1707 = load ptr, ptr %1706, align 8, !tbaa !31
  %1708 = load i32, ptr %1707, align 8
  %1709 = and i32 %1708, 65535
  %1710 = icmp eq i32 %1709, 43
  br i1 %1710, label %1711, label %1773

1711:                                             ; preds = %1705
  %1712 = getelementptr inbounds %struct.rtx_def, ptr %1707, i64 0, i32 1
  %1713 = load ptr, ptr %1712, align 8, !tbaa !30
  %1714 = load i32, ptr %1713, align 8
  %1715 = lshr i32 %1714, 16
  %1716 = and i32 %1715, 255
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1718, label %1732

1718:                                             ; preds = %1711
  %1719 = getelementptr inbounds %struct.rtx_def, ptr %1707, i64 0, i32 1, i32 0, i32 0, i64 1
  %1720 = load ptr, ptr %1719, align 8, !tbaa !30
  %1721 = icmp eq ptr %1720, null
  br i1 %1721, label %1725, label %1722

1722:                                             ; preds = %1718
  %1723 = getelementptr inbounds %struct.mem_attrs, ptr %1720, i64 0, i32 5
  %1724 = load i8, ptr %1723, align 8, !tbaa !32
  br label %1725

1725:                                             ; preds = %1718, %1722
  %1726 = phi i8 [ %1724, %1722 ], [ 0, %1718 ]
  %1727 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !39
  %1728 = call i32 %1727(i8 noundef zeroext %1726) #24
  %1729 = load ptr, ptr %1706, align 8, !tbaa !31
  %1730 = getelementptr inbounds %struct.rtx_def, ptr %1729, i64 0, i32 1
  %1731 = load ptr, ptr %1730, align 8, !tbaa !30
  br label %1732

1732:                                             ; preds = %1725, %1711
  %1733 = phi ptr [ %1731, %1725 ], [ %1713, %1711 ]
  %1734 = phi ptr [ %1729, %1725 ], [ %1707, %1711 ]
  %1735 = phi i32 [ %1728, %1725 ], [ %1716, %1711 ]
  %1736 = getelementptr inbounds %struct.rtx_def, ptr %1734, i64 0, i32 1
  %1737 = trunc i64 %1689 to i32
  %1738 = call i32 @push_reload(ptr noundef %1733, ptr noundef null, ptr noundef nonnull %1736, ptr noundef null, i32 noundef 13, i32 noundef %1735, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1737, i32 noundef 0) #25
  %1739 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1689
  store i32 %1738, ptr %1739, align 4, !tbaa !35
  %1740 = load ptr, ptr %1706, align 8, !tbaa !31
  %1741 = load i32, ptr %1740, align 8
  %1742 = lshr i32 %1741, 16
  %1743 = and i32 %1742, 255
  %1744 = zext nneg i32 %1743 to i64
  %1745 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1744
  %1746 = load i8, ptr %1745, align 1, !tbaa !30
  %1747 = zext i8 %1746 to i32
  %1748 = sext i32 %1738 to i64
  %1749 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1748, i32 7
  store i32 %1747, ptr %1749, align 4, !tbaa !54
  %1750 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1689
  %1751 = load i32, ptr %1750, align 4, !tbaa !35
  %1752 = icmp eq i32 %1751, 2
  br i1 %1752, label %1753, label %2043

1753:                                             ; preds = %1732
  %1754 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %1755 = icmp sgt i32 %1754, 0
  br i1 %1755, label %1756, label %2043

1756:                                             ; preds = %1753
  %1757 = zext nneg i32 %1754 to i64
  br label %1758

1758:                                             ; preds = %1756, %1770
  %1759 = phi i64 [ 0, %1756 ], [ %1771, %1770 ]
  %1760 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1759, i32 12
  %1761 = load i32, ptr %1760, align 8, !tbaa !57
  %1762 = zext i32 %1761 to i64
  %1763 = icmp eq i64 %1689, %1762
  br i1 %1763, label %1764, label %1770

1764:                                             ; preds = %1758
  %1765 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1759, i32 17
  %1766 = load i32, ptr %1765, align 4, !tbaa !58
  switch i32 %1766, label %1770 [
    i32 5, label %1768
    i32 6, label %1767
  ]

1767:                                             ; preds = %1764
  br label %1768

1768:                                             ; preds = %1764, %1767
  %1769 = phi i32 [ 4, %1767 ], [ 3, %1764 ]
  store i32 %1769, ptr %1765, align 4, !tbaa !58
  br label %1770

1770:                                             ; preds = %1768, %1764, %1758
  %1771 = add nuw nsw i64 %1759, 1
  %1772 = icmp eq i64 %1771, %1757
  br i1 %1772, label %2043, label %1758, !llvm.loop !150

1773:                                             ; preds = %1705, %1701
  %1774 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1689
  %1775 = load i32, ptr %1774, align 4, !tbaa !35
  %1776 = icmp eq i32 %1775, 2
  br i1 %1776, label %1777, label %1784

1777:                                             ; preds = %1773
  %1778 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1779 = load ptr, ptr %1778, align 8, !tbaa !31
  %1780 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1689
  %1781 = load ptr, ptr %1780, align 8, !tbaa !31
  %1782 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %1783 = load i32, ptr %1782, align 4, !tbaa !35
  br label %1795

1784:                                             ; preds = %1773
  %1785 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1689
  %1786 = load ptr, ptr %1785, align 8, !tbaa !31
  %1787 = icmp eq i32 %1775, 0
  %1788 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1789 = load ptr, ptr %1788, align 8, !tbaa !31
  %1790 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %1791 = load i32, ptr %1790, align 4, !tbaa !35
  %1792 = select i1 %1787, ptr null, ptr %1786
  %1793 = select i1 %1787, ptr null, ptr %1789
  %1794 = select i1 %1787, i32 0, i32 %1791
  br label %1795

1795:                                             ; preds = %1784, %1777
  %1796 = phi i32 [ 0, %1777 ], [ %1791, %1784 ]
  %1797 = phi ptr [ null, %1777 ], [ %1789, %1784 ]
  %1798 = phi ptr [ null, %1777 ], [ %1786, %1784 ]
  %1799 = phi ptr [ %1781, %1777 ], [ %1792, %1784 ]
  %1800 = phi ptr [ %1779, %1777 ], [ %1793, %1784 ]
  %1801 = phi i32 [ %1783, %1777 ], [ %1794, %1784 ]
  %1802 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1689
  %1803 = load i32, ptr %1802, align 4, !tbaa !35
  br i1 %105, label %1809, label %1804

1804:                                             ; preds = %1795
  %1805 = load ptr, ptr %1683, align 8, !tbaa !27
  %1806 = getelementptr inbounds %struct.insn_operand_data, ptr %1805, i64 %1689, i32 3
  %1807 = load i8, ptr %1806, align 2, !tbaa !151
  %1808 = sext i8 %1807 to i32
  br label %1809

1809:                                             ; preds = %1795, %1804
  %1810 = phi i32 [ %1808, %1804 ], [ 0, %1795 ]
  %1811 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1689
  %1812 = load i32, ptr %1811, align 4, !tbaa !35
  %1813 = trunc i64 %1689 to i32
  %1814 = call i32 @push_reload(ptr noundef %1798, ptr noundef %1799, ptr noundef %1797, ptr noundef %1800, i32 noundef %1803, i32 noundef %1796, i32 noundef %1801, i32 noundef %1810, i32 noundef 0, i32 noundef %1813, i32 noundef %1812) #25
  %1815 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1689
  store i32 %1814, ptr %1815, align 4, !tbaa !35
  br label %2043

1816:                                             ; preds = %1697
  %1817 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1689
  %1818 = load i32, ptr %1817, align 4, !tbaa !35
  switch i32 %1818, label %1869 [
    i32 0, label %1819
    i32 2, label %1844
  ]

1819:                                             ; preds = %1816
  %1820 = sext i32 %1699 to i64
  %1821 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1820
  %1822 = load i32, ptr %1821, align 4, !tbaa !35
  %1823 = icmp eq i32 %1822, 2
  br i1 %1823, label %1824, label %1869

1824:                                             ; preds = %1819
  %1825 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1689
  %1826 = load ptr, ptr %1825, align 8, !tbaa !31
  %1827 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1820
  %1828 = load ptr, ptr %1827, align 8, !tbaa !31
  %1829 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1830 = load ptr, ptr %1829, align 8, !tbaa !31
  %1831 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1820
  %1832 = load ptr, ptr %1831, align 8, !tbaa !31
  %1833 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1689
  %1834 = load i32, ptr %1833, align 4, !tbaa !35
  %1835 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %1836 = load i32, ptr %1835, align 4, !tbaa !35
  %1837 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1820
  %1838 = load i32, ptr %1837, align 4, !tbaa !35
  %1839 = trunc i64 %1689 to i32
  %1840 = call i32 @push_reload(ptr noundef %1826, ptr noundef %1828, ptr noundef %1830, ptr noundef %1832, i32 noundef %1834, i32 noundef %1836, i32 noundef %1838, i32 noundef 0, i32 noundef 0, i32 noundef %1839, i32 noundef 9) #25
  %1841 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1689
  store i32 %1840, ptr %1841, align 4, !tbaa !35
  %1842 = load i32, ptr @output_reloadnum, align 4, !tbaa !35
  %1843 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1820
  store i32 %1842, ptr %1843, align 4, !tbaa !35
  br label %2043

1844:                                             ; preds = %1816
  %1845 = sext i32 %1699 to i64
  %1846 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1845
  %1847 = load i32, ptr %1846, align 4, !tbaa !35
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1849, label %1869

1849:                                             ; preds = %1844
  %1850 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1845
  %1851 = load ptr, ptr %1850, align 8, !tbaa !31
  %1852 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1689
  %1853 = load ptr, ptr %1852, align 8, !tbaa !31
  %1854 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1845
  %1855 = load ptr, ptr %1854, align 8, !tbaa !31
  %1856 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1857 = load ptr, ptr %1856, align 8, !tbaa !31
  %1858 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1689
  %1859 = load i32, ptr %1858, align 4, !tbaa !35
  %1860 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1845
  %1861 = load i32, ptr %1860, align 4, !tbaa !35
  %1862 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %1863 = load i32, ptr %1862, align 4, !tbaa !35
  %1864 = trunc i64 %1689 to i32
  %1865 = call i32 @push_reload(ptr noundef %1851, ptr noundef %1853, ptr noundef %1855, ptr noundef %1857, i32 noundef %1859, i32 noundef %1861, i32 noundef %1863, i32 noundef 0, i32 noundef 0, i32 noundef %1864, i32 noundef 9) #25
  %1866 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1845
  store i32 %1865, ptr %1866, align 4, !tbaa !35
  %1867 = load i32, ptr @output_reloadnum, align 4, !tbaa !35
  %1868 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1689
  store i32 %1867, ptr %1868, align 4, !tbaa !35
  br label %2043

1869:                                             ; preds = %1816, %1819, %1844
  br i1 %105, label %1871, label %1870

1870:                                             ; preds = %1869
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4082, ptr noundef nonnull @.str.1) #24
  br label %1871

1871:                                             ; preds = %1869, %1870
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %1872 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !31
  %1873 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %1872) #24
  store ptr %1873, ptr %37, align 8, !tbaa !30
  store i32 0, ptr @n_reloads, align 4, !tbaa !35
  br label %2693

1874:                                             ; preds = %1688
  %1875 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1689
  %1876 = load i32, ptr %1875, align 4, !tbaa !35
  %1877 = icmp slt i32 %1876, 0
  %1878 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1689
  %1879 = load i32, ptr %1878, align 4, !tbaa !35
  br i1 %1877, label %1880, label %1993

1880:                                             ; preds = %1874
  %1881 = icmp slt i32 %1879, 0
  br i1 %1881, label %1882, label %1995

1882:                                             ; preds = %1880
  %1883 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %1689
  %1884 = load i32, ptr %1883, align 4, !tbaa !35
  %1885 = icmp ne i32 %1884, 1
  %1886 = load i32, ptr @optimize, align 4
  %1887 = icmp ne i32 %1886, 0
  %1888 = select i1 %1885, i1 %1887, i1 false
  br i1 %1888, label %1889, label %2043

1889:                                             ; preds = %1882
  %1890 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1689
  br label %1891

1891:                                             ; preds = %1896, %1889
  %1892 = phi ptr [ %1890, %1889 ], [ %1897, %1896 ]
  %1893 = load ptr, ptr %1892, align 8, !tbaa !30
  %1894 = load i32, ptr %1893, align 8
  %1895 = trunc i32 %1894 to i16
  switch i16 %1895, label %1958 [
    i16 39, label %1896
    i16 43, label %1901
    i16 37, label %1898
  ]

1896:                                             ; preds = %1891
  %1897 = getelementptr inbounds %struct.rtx_def, ptr %1893, i64 0, i32 1
  br label %1891, !llvm.loop !152

1898:                                             ; preds = %1891
  %1899 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1893) #25
  %1900 = icmp ugt i32 %1899, 52
  br i1 %1900, label %1901, label %1958

1901:                                             ; preds = %1891, %1898
  %1902 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1689
  %1903 = load i32, ptr %1902, align 4, !tbaa !35
  %1904 = icmp eq i32 %1903, 0
  %1905 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1689
  %1906 = load i32, ptr %1905, align 4, !tbaa !35
  br i1 %1904, label %1907, label %1909

1907:                                             ; preds = %1901
  %1908 = icmp eq i32 %1906, 2
  br i1 %1908, label %1921, label %1958

1909:                                             ; preds = %1901
  %1910 = icmp eq i32 %1906, 0
  br i1 %1910, label %1911, label %1917

1911:                                             ; preds = %1909
  %1912 = load ptr, ptr %1890, align 8, !tbaa !31
  %1913 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1914 = load ptr, ptr %1913, align 8, !tbaa !31
  %1915 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %1916 = load i32, ptr %1915, align 4, !tbaa !35
  br label %1939

1917:                                             ; preds = %1909
  %1918 = load i32, ptr @this_insn_is_asm, align 4
  %1919 = icmp ne i32 %1918, 0
  %1920 = select i1 %54, i1 true, i1 %1919
  br i1 %1920, label %1958, label %1925

1921:                                             ; preds = %1907
  %1922 = load i32, ptr @this_insn_is_asm, align 4
  %1923 = icmp ne i32 %1922, 0
  %1924 = select i1 %54, i1 true, i1 %1923
  br i1 %1924, label %1958, label %1927

1925:                                             ; preds = %1917
  %1926 = icmp eq i32 %1906, 2
  br i1 %1926, label %1927, label %1933

1927:                                             ; preds = %1921, %1925
  %1928 = load ptr, ptr %1890, align 8, !tbaa !31
  %1929 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1930 = load ptr, ptr %1929, align 8, !tbaa !31
  %1931 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %1932 = load i32, ptr %1931, align 4, !tbaa !35
  br label %1939

1933:                                             ; preds = %1925
  %1934 = load ptr, ptr %1890, align 8, !tbaa !31
  %1935 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1936 = load ptr, ptr %1935, align 8, !tbaa !31
  %1937 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %1938 = load i32, ptr %1937, align 4, !tbaa !35
  br label %1939

1939:                                             ; preds = %1927, %1933, %1911
  %1940 = phi i32 [ %1916, %1911 ], [ 0, %1927 ], [ %1938, %1933 ]
  %1941 = phi ptr [ %1914, %1911 ], [ null, %1927 ], [ %1936, %1933 ]
  %1942 = phi ptr [ %1912, %1911 ], [ null, %1927 ], [ %1934, %1933 ]
  %1943 = phi ptr [ null, %1911 ], [ %1928, %1927 ], [ %1934, %1933 ]
  %1944 = phi ptr [ null, %1911 ], [ %1930, %1927 ], [ %1936, %1933 ]
  %1945 = phi i32 [ 0, %1911 ], [ %1932, %1927 ], [ %1938, %1933 ]
  br i1 %105, label %1951, label %1946

1946:                                             ; preds = %1939
  %1947 = load ptr, ptr %1683, align 8, !tbaa !27
  %1948 = getelementptr inbounds %struct.insn_operand_data, ptr %1947, i64 %1689, i32 3
  %1949 = load i8, ptr %1948, align 2, !tbaa !151
  %1950 = sext i8 %1949 to i32
  br label %1951

1951:                                             ; preds = %1939, %1946
  %1952 = phi i32 [ %1950, %1946 ], [ 0, %1939 ]
  %1953 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1689
  %1954 = load i32, ptr %1953, align 4, !tbaa !35
  %1955 = trunc i64 %1689 to i32
  %1956 = call i32 @push_reload(ptr noundef %1942, ptr noundef %1943, ptr noundef %1941, ptr noundef %1944, i32 noundef %1903, i32 noundef %1940, i32 noundef %1945, i32 noundef %1952, i32 noundef 1, i32 noundef %1955, i32 noundef %1954) #25
  %1957 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1689
  store i32 %1956, ptr %1957, align 4, !tbaa !35
  br label %2043

1958:                                             ; preds = %1891, %1921, %1917, %1907, %1898
  br i1 %1684, label %2043, label %1959

1959:                                             ; preds = %1958
  switch i16 %1895, label %2043 [
    i16 43, label %1969
    i16 37, label %1960
  ]

1960:                                             ; preds = %1959
  %1961 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1893) #25
  %1962 = icmp ugt i32 %1961, 52
  br i1 %1962, label %1963, label %2043

1963:                                             ; preds = %1960
  %1964 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %1965 = zext i32 %1961 to i64
  %1966 = getelementptr inbounds i16, ptr %1964, i64 %1965
  %1967 = load i16, ptr %1966, align 2, !tbaa !40
  %1968 = icmp slt i16 %1967, 0
  br i1 %1968, label %1969, label %2043

1969:                                             ; preds = %1959, %1963
  %1970 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %1971 = load ptr, ptr %1970, align 8, !tbaa !31
  br label %1972

1972:                                             ; preds = %1977, %1969
  %1973 = phi ptr [ %1971, %1969 ], [ %1978, %1977 ]
  %1974 = load ptr, ptr %1973, align 8, !tbaa !30
  %1975 = load i32, ptr %1974, align 8
  %1976 = trunc i32 %1975 to i16
  switch i16 %1976, label %2043 [
    i16 39, label %1977
    i16 37, label %1979
  ]

1977:                                             ; preds = %1972
  %1978 = getelementptr inbounds %struct.rtx_def, ptr %1974, i64 0, i32 1
  br label %1972, !llvm.loop !153

1979:                                             ; preds = %1972
  %1980 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1689
  %1981 = load i32, ptr %1980, align 4, !tbaa !35
  %1982 = icmp eq i32 %1981, 2
  br i1 %1982, label %1990, label %1983

1983:                                             ; preds = %1979
  %1984 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %1974) #24
  %1985 = call ptr @emit_insn_before(ptr noundef %1984, ptr noundef nonnull %0) #24
  %1986 = load i32, ptr %1985, align 8
  %1987 = and i32 %1986, -16711681
  %1988 = or disjoint i32 %1987, 917504
  store i32 %1988, ptr %1985, align 8
  %1989 = icmp eq i32 %1981, 0
  br i1 %1989, label %2043, label %1990

1990:                                             ; preds = %1979, %1983
  %1991 = call ptr @gen_clobber(ptr noundef nonnull %1974) #24
  %1992 = call ptr @emit_insn_after(ptr noundef %1991, ptr noundef nonnull %0) #24
  br label %2043

1993:                                             ; preds = %1874
  %1994 = icmp sgt i32 %1879, -1
  br i1 %1994, label %1995, label %2043

1995:                                             ; preds = %1880, %1993
  %1996 = zext nneg i32 %1879 to i64
  %1997 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1996
  %1998 = load i8, ptr %1997, align 1, !tbaa !30
  %1999 = icmp eq i8 %1998, 0
  br i1 %1999, label %2043, label %2000

2000:                                             ; preds = %1995
  %2001 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1689
  %2002 = load i32, ptr %2001, align 4, !tbaa !35
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2004, label %2043

2004:                                             ; preds = %2000
  %2005 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1996
  %2006 = load i32, ptr %2005, align 4, !tbaa !35
  %2007 = icmp ne i32 %2006, 2
  %2008 = or i1 %54, %2007
  %2009 = load i32, ptr @optimize, align 4
  %2010 = icmp eq i32 %2009, 0
  %2011 = select i1 %2008, i1 true, i1 %2010
  br i1 %2011, label %2043, label %2012

2012:                                             ; preds = %2004
  %2013 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1689
  br label %2014

2014:                                             ; preds = %2019, %2012
  %2015 = phi ptr [ %2013, %2012 ], [ %2020, %2019 ]
  %2016 = load ptr, ptr %2015, align 8, !tbaa !30
  %2017 = load i32, ptr %2016, align 8
  %2018 = trunc i32 %2017 to i16
  switch i16 %2018, label %2043 [
    i16 39, label %2019
    i16 43, label %2024
    i16 37, label %2021
  ]

2019:                                             ; preds = %2014
  %2020 = getelementptr inbounds %struct.rtx_def, ptr %2016, i64 0, i32 1
  br label %2014, !llvm.loop !154

2021:                                             ; preds = %2014
  %2022 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2016) #25
  %2023 = icmp ugt i32 %2022, 52
  br i1 %2023, label %2024, label %2043

2024:                                             ; preds = %2014, %2021
  %2025 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1996
  %2026 = load i32, ptr %2025, align 4, !tbaa !35
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2043, label %2028

2028:                                             ; preds = %2024
  %2029 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1996
  %2030 = load ptr, ptr %2029, align 8, !tbaa !31
  %2031 = load ptr, ptr %2013, align 8, !tbaa !31
  %2032 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1996
  %2033 = load ptr, ptr %2032, align 8, !tbaa !31
  %2034 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1689
  %2035 = load ptr, ptr %2034, align 8, !tbaa !31
  %2036 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1996
  %2037 = load i32, ptr %2036, align 4, !tbaa !35
  %2038 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1689
  %2039 = load i32, ptr %2038, align 4, !tbaa !35
  %2040 = call i32 @push_reload(ptr noundef %2030, ptr noundef %2031, ptr noundef %2033, ptr noundef %2035, i32 noundef %2026, i32 noundef %2037, i32 noundef %2039, i32 noundef 0, i32 noundef 1, i32 noundef %1879, i32 noundef 9) #25
  %2041 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1996
  store i32 %2040, ptr %2041, align 4, !tbaa !35
  %2042 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1689
  store i32 %2040, ptr %2042, align 4, !tbaa !35
  br label %2043

2043:                                             ; preds = %2014, %1972, %1770, %1882, %1753, %2021, %2024, %2028, %1951, %1990, %1983, %1963, %1960, %1958, %1959, %1732, %1824, %1849, %1809, %1693, %1993, %1995, %2000, %2004
  %2044 = add nuw nsw i64 %1689, 1
  %2045 = icmp eq i64 %2044, %453
  br i1 %2045, label %1685, label %1688, !llvm.loop !155

2046:                                             ; preds = %1686, %2077
  %2047 = phi i64 [ 0, %1686 ], [ %2079, %2077 ]
  %2048 = phi i32 [ 0, %1686 ], [ %2078, %2077 ]
  %2049 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %2047
  %2050 = load ptr, ptr %2049, align 8, !tbaa !31
  %2051 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2047
  %2052 = load ptr, ptr %2051, align 8, !tbaa !31
  br i1 %1687, label %2072, label %2053

2053:                                             ; preds = %2046
  store ptr %2050, ptr %2052, align 8, !tbaa !31
  %2054 = load i32, ptr %2050, align 8
  %2055 = and i32 %2054, 65535
  %2056 = icmp eq i32 %2055, 44
  br i1 %2056, label %2057, label %2077

2057:                                             ; preds = %2053
  %2058 = getelementptr inbounds %struct.rtx_def, ptr %2050, i64 0, i32 1
  %2059 = load ptr, ptr %2058, align 8, !tbaa !30
  %2060 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2059) #24
  %2061 = icmp eq ptr %2060, null
  br i1 %2061, label %2062, label %2077

2062:                                             ; preds = %2057
  %2063 = load i32, ptr %0, align 8
  %2064 = and i32 %2063, 65535
  %2065 = icmp eq i32 %2064, 9
  br i1 %2065, label %2066, label %2070

2066:                                             ; preds = %2062
  %2067 = load ptr, ptr %2058, align 8, !tbaa !30
  %2068 = call zeroext i8 @label_is_jump_target_p(ptr noundef %2067, ptr noundef nonnull %0) #24
  %2069 = icmp eq i8 %2068, 0
  br i1 %2069, label %2070, label %2077

2070:                                             ; preds = %2066, %2062
  %2071 = load ptr, ptr %2058, align 8, !tbaa !30
  call void @add_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2071) #24
  br label %2077

2072:                                             ; preds = %2046
  %2073 = load ptr, ptr %2052, align 8, !tbaa !31
  %2074 = icmp ne ptr %2050, %2073
  %2075 = zext i1 %2074 to i32
  %2076 = or i32 %2048, %2075
  br label %2077

2077:                                             ; preds = %2053, %2057, %2066, %2070, %2072
  %2078 = phi i32 [ %2076, %2072 ], [ %2048, %2070 ], [ %2048, %2066 ], [ %2048, %2057 ], [ %2048, %2053 ]
  %2079 = add nuw nsw i64 %2047, 1
  %2080 = icmp eq i64 %2079, %453
  br i1 %2080, label %2081, label %2046, !llvm.loop !156

2081:                                             ; preds = %2077, %1680, %1657, %1685
  %2082 = phi i1 [ %1660, %1685 ], [ %1660, %1680 ], [ %1658, %1657 ], [ %1660, %2077 ]
  %2083 = phi i32 [ 0, %1685 ], [ 0, %1680 ], [ 0, %1657 ], [ %2078, %2077 ]
  %2084 = icmp sgt i32 %104, -1
  %2085 = icmp ne i32 %1, 0
  %2086 = and i1 %2085, %2084
  br i1 %2086, label %2087, label %2108

2087:                                             ; preds = %2081
  %2088 = zext nneg i32 %104 to i64
  %2089 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2088, i32 5
  %2090 = load i8, ptr %2089, align 1, !tbaa !157
  %2091 = icmp sgt i8 %2090, 0
  br i1 %2091, label %2092, label %2108

2092:                                             ; preds = %2087
  %2093 = zext nneg i8 %2090 to i64
  br label %2094

2094:                                             ; preds = %2092, %2094
  %2095 = phi i64 [ %2093, %2092 ], [ %2096, %2094 ]
  %2096 = add nsw i64 %2095, -1
  %2097 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %2096
  %2098 = load i8, ptr %2097, align 1, !tbaa !30
  %2099 = sext i8 %2098 to i64
  %2100 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2099
  %2101 = load ptr, ptr %2100, align 8, !tbaa !31
  %2102 = load ptr, ptr %2101, align 8, !tbaa !31
  %2103 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %2096
  %2104 = load ptr, ptr %2103, align 8, !tbaa !31
  store ptr %2102, ptr %2104, align 8, !tbaa !31
  %2105 = load ptr, ptr %2103, align 8, !tbaa !31
  %2106 = load ptr, ptr %2100, align 8, !tbaa !31
  call fastcc void @dup_replacements(ptr noundef %2105, ptr noundef %2106) #25
  %2107 = icmp ugt i64 %2095, 1
  br i1 %2107, label %2094, label %2108, !llvm.loop !158

2108:                                             ; preds = %2094, %2087, %2081
  %2109 = load ptr, ptr %37, align 8, !tbaa !30
  %2110 = load i32, ptr %2109, align 8
  %2111 = and i32 %2110, 65535
  %2112 = icmp eq i32 %2111, 24
  br i1 %2112, label %2113, label %2120

2113:                                             ; preds = %2108
  %2114 = getelementptr inbounds %struct.rtx_def, ptr %2109, i64 0, i32 1
  %2115 = load ptr, ptr %2114, align 8, !tbaa !30
  %2116 = load i32, ptr %2115, align 8
  %2117 = and i32 %2116, 65535
  %2118 = icmp eq i32 %2117, 30
  br i1 %2118, label %2119, label %2120

2119:                                             ; preds = %2113
  store i32 0, ptr @n_reloads, align 4, !tbaa !35
  br label %2120

2120:                                             ; preds = %2119, %2113, %2108
  br i1 %2082, label %2122, label %2121

2121:                                             ; preds = %2120
  call fastcc void @combine_reloads() #25
  br label %2122

2122:                                             ; preds = %2121, %2120
  %2123 = load i32, ptr @n_reloads, align 4
  %2124 = icmp sgt i32 %2123, 0
  br i1 %2124, label %2136, label %2331

2125:                                             ; preds = %2217
  %2126 = sext i32 %2219 to i64
  br label %2127

2127:                                             ; preds = %2125, %2136
  %2128 = phi i64 [ %2126, %2125 ], [ %2141, %2136 ]
  %2129 = phi i32 [ %2219, %2125 ], [ %2137, %2136 ]
  %2130 = icmp slt i64 %2140, %2128
  %2131 = add nuw nsw i64 %2139, 1
  br i1 %2130, label %2136, label %2132, !llvm.loop !159

2132:                                             ; preds = %2127
  %2133 = icmp sgt i32 %2129, 0
  br i1 %2133, label %2134, label %2331

2134:                                             ; preds = %2132
  %2135 = zext nneg i32 %2129 to i64
  br label %2222

2136:                                             ; preds = %2122, %2127
  %2137 = phi i32 [ %2129, %2127 ], [ %2123, %2122 ]
  %2138 = phi i64 [ %2140, %2127 ], [ 0, %2122 ]
  %2139 = phi i64 [ %2131, %2127 ], [ 1, %2122 ]
  %2140 = add nuw nsw i64 %2138, 1
  %2141 = sext i32 %2137 to i64
  %2142 = icmp slt i64 %2140, %2141
  br i1 %2142, label %2143, label %2127

2143:                                             ; preds = %2136
  %2144 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2138
  %2145 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2138, i32 17
  %2146 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2138, i32 12
  %2147 = trunc i64 %2138 to i32
  br label %2148

2148:                                             ; preds = %2143, %2217
  %2149 = phi i64 [ %2139, %2143 ], [ %2218, %2217 ]
  %2150 = load i32, ptr %2145, align 4, !tbaa !58
  %2151 = add i32 %2150, -3
  %2152 = icmp ult i32 %2151, 4
  br i1 %2152, label %2153, label %2217

2153:                                             ; preds = %2148
  %2154 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2149
  %2155 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2149, i32 17
  %2156 = load i32, ptr %2155, align 4, !tbaa !58
  %2157 = add i32 %2156, -3
  %2158 = icmp ult i32 %2157, 4
  br i1 %2158, label %2159, label %2217

2159:                                             ; preds = %2153
  %2160 = load ptr, ptr %2144, align 8, !tbaa !47
  %2161 = load ptr, ptr %2154, align 8, !tbaa !47
  %2162 = call i32 @rtx_equal_p(ptr noundef %2160, ptr noundef %2161) #24
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %2217, label %2164

2164:                                             ; preds = %2159
  %2165 = load i32, ptr %2146, align 8, !tbaa !57
  %2166 = sext i32 %2165 to i64
  %2167 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2166
  %2168 = load i32, ptr %2167, align 4, !tbaa !35
  %2169 = icmp slt i32 %2168, 0
  br i1 %2169, label %2176, label %2170

2170:                                             ; preds = %2164
  %2171 = zext nneg i32 %2168 to i64
  %2172 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2171, i32 18
  %2173 = load i8, ptr %2172, align 8
  %2174 = and i8 %2173, 1
  %2175 = icmp eq i8 %2174, 0
  br i1 %2175, label %2217, label %2176

2176:                                             ; preds = %2170, %2164
  %2177 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2149, i32 12
  %2178 = load i32, ptr %2177, align 8, !tbaa !57
  %2179 = sext i32 %2178 to i64
  %2180 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2179
  %2181 = load i32, ptr %2180, align 4, !tbaa !35
  %2182 = icmp slt i32 %2181, 0
  br i1 %2182, label %2189, label %2183

2183:                                             ; preds = %2176
  %2184 = zext nneg i32 %2181 to i64
  %2185 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2184, i32 18
  %2186 = load i8, ptr %2185, align 8
  %2187 = and i8 %2186, 1
  %2188 = icmp eq i8 %2187, 0
  br i1 %2188, label %2217, label %2189

2189:                                             ; preds = %2183, %2176
  %2190 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2166
  %2191 = load i32, ptr %2190, align 4, !tbaa !35
  %2192 = icmp eq i32 %2191, %2178
  br i1 %2192, label %2197, label %2193

2193:                                             ; preds = %2189
  %2194 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2179
  %2195 = load i32, ptr %2194, align 4, !tbaa !35
  %2196 = icmp eq i32 %2195, %2165
  br i1 %2196, label %2197, label %2217

2197:                                             ; preds = %2193, %2189
  %2198 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %2199 = icmp sgt i32 %2198, 0
  br i1 %2199, label %2200, label %2212

2200:                                             ; preds = %2197
  %2201 = zext nneg i32 %2198 to i64
  br label %2202

2202:                                             ; preds = %2200, %2209
  %2203 = phi i64 [ 0, %2200 ], [ %2210, %2209 ]
  %2204 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2203, i32 2
  %2205 = load i32, ptr %2204, align 8, !tbaa !63
  %2206 = zext i32 %2205 to i64
  %2207 = icmp eq i64 %2149, %2206
  br i1 %2207, label %2208, label %2209

2208:                                             ; preds = %2202
  store i32 %2147, ptr %2204, align 8, !tbaa !63
  br label %2209

2209:                                             ; preds = %2202, %2208
  %2210 = add nuw nsw i64 %2203, 1
  %2211 = icmp eq i64 %2210, %2201
  br i1 %2211, label %2212, label %2202, !llvm.loop !160

2212:                                             ; preds = %2209, %2197
  %2213 = load i32, ptr %2145, align 4, !tbaa !58
  %2214 = and i32 %2213, -3
  %2215 = icmp eq i32 %2214, 4
  %2216 = select i1 %2215, i32 8, i32 7
  store i32 %2216, ptr %2145, align 4, !tbaa !58
  store ptr null, ptr %2154, align 8, !tbaa !47
  br label %2217

2217:                                             ; preds = %2153, %2148, %2159, %2170, %2183, %2193, %2212
  %2218 = add nuw nsw i64 %2149, 1
  %2219 = load i32, ptr @n_reloads, align 4
  %2220 = trunc i64 %2218 to i32
  %2221 = icmp sgt i32 %2219, %2220
  br i1 %2221, label %2148, label %2125, !llvm.loop !161

2222:                                             ; preds = %2134, %2328
  %2223 = phi i64 [ 0, %2134 ], [ %2329, %2328 ]
  %2224 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 18
  %2225 = load i8, ptr %2224, align 8
  %2226 = and i8 %2225, 4
  %2227 = icmp eq i8 %2226, 0
  %2228 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 17
  %2229 = load i32, ptr %2228, align 4, !tbaa !58
  br i1 %2227, label %2240, label %2230

2230:                                             ; preds = %2222
  %2231 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 12
  %2232 = load i32, ptr %2231, align 8, !tbaa !57
  %2233 = sext i32 %2232 to i64
  %2234 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %2233
  %2235 = load i32, ptr %2234, align 4, !tbaa !35
  %2236 = icmp eq i32 %2229, %2235
  br i1 %2236, label %2237, label %2240

2237:                                             ; preds = %2230
  %2238 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %2233
  %2239 = load i32, ptr %2238, align 4, !tbaa !35
  store i32 %2239, ptr %2228, align 4, !tbaa !58
  br label %2240

2240:                                             ; preds = %2222, %2237, %2230
  %2241 = phi i32 [ %2239, %2237 ], [ %2229, %2230 ], [ %2229, %2222 ]
  %2242 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 17
  %2243 = add i32 %2241, -3
  %2244 = icmp ult i32 %2243, 4
  br i1 %2244, label %2245, label %2301

2245:                                             ; preds = %2240
  %2246 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 12
  %2247 = load i32, ptr %2246, align 8, !tbaa !57
  %2248 = sext i32 %2247 to i64
  %2249 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2248
  %2250 = load i32, ptr %2249, align 4, !tbaa !35
  %2251 = icmp slt i32 %2250, 0
  br i1 %2251, label %2258, label %2252

2252:                                             ; preds = %2245
  %2253 = zext nneg i32 %2250 to i64
  %2254 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2253, i32 18
  %2255 = load i8, ptr %2254, align 8
  %2256 = and i8 %2255, 1
  %2257 = icmp eq i8 %2256, 0
  br i1 %2257, label %2301, label %2258

2258:                                             ; preds = %2252, %2245
  %2259 = icmp ult i32 %2243, 2
  br i1 %2259, label %2260, label %2275

2260:                                             ; preds = %2258
  %2261 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 13
  %2262 = load i32, ptr %2261, align 4, !tbaa !59
  %2263 = icmp eq i32 %2262, -1
  br i1 %2263, label %2275, label %2264

2264:                                             ; preds = %2260
  %2265 = sext i32 %2262 to i64
  %2266 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2265, i32 17
  store i32 8, ptr %2266, align 4, !tbaa !58
  %2267 = icmp sgt i32 %2262, 0
  br i1 %2267, label %2268, label %2275

2268:                                             ; preds = %2264
  %2269 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2265, i32 13
  %2270 = load i32, ptr %2269, align 4, !tbaa !59
  %2271 = icmp eq i32 %2270, -1
  br i1 %2271, label %2275, label %2272

2272:                                             ; preds = %2268
  %2273 = sext i32 %2270 to i64
  %2274 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2273, i32 17
  store i32 8, ptr %2274, align 4, !tbaa !58
  br label %2275

2275:                                             ; preds = %2258, %2264, %2268, %2272, %2260
  %2276 = load i32, ptr %2242, align 4, !tbaa !58
  %2277 = add i32 %2276, -5
  %2278 = icmp ult i32 %2277, 2
  br i1 %2278, label %2279, label %2296

2279:                                             ; preds = %2275
  %2280 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 14
  %2281 = load i32, ptr %2280, align 8, !tbaa !60
  %2282 = icmp eq i32 %2281, -1
  br i1 %2282, label %2294, label %2283

2283:                                             ; preds = %2279
  %2284 = sext i32 %2281 to i64
  %2285 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2284, i32 17
  store i32 8, ptr %2285, align 4, !tbaa !58
  %2286 = icmp eq i32 %2281, 0
  br i1 %2286, label %2294, label %2287

2287:                                             ; preds = %2283
  %2288 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2284, i32 14
  %2289 = load i32, ptr %2288, align 8, !tbaa !60
  %2290 = icmp eq i32 %2289, -1
  br i1 %2290, label %2294, label %2291

2291:                                             ; preds = %2287
  %2292 = sext i32 %2289 to i64
  %2293 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2292, i32 17
  store i32 8, ptr %2293, align 4, !tbaa !58
  br label %2294

2294:                                             ; preds = %2279, %2291, %2287, %2283
  %2295 = load i32, ptr %2242, align 4, !tbaa !58
  br label %2296

2296:                                             ; preds = %2294, %2275
  %2297 = phi i32 [ %2295, %2294 ], [ %2276, %2275 ]
  %2298 = and i32 %2297, -3
  %2299 = icmp eq i32 %2298, 4
  %2300 = select i1 %2299, i32 8, i32 7
  store i32 %2300, ptr %2242, align 4, !tbaa !58
  br label %2304

2301:                                             ; preds = %2240, %2252
  %2302 = add i32 %2241, -3
  %2303 = icmp ult i32 %2302, 2
  br i1 %2303, label %2308, label %2304

2304:                                             ; preds = %2296, %2301
  %2305 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 12
  %2306 = load i32, ptr %2305, align 8, !tbaa !57
  %2307 = sext i32 %2306 to i64
  br label %2321

2308:                                             ; preds = %2301
  %2309 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 12
  %2310 = load i32, ptr %2309, align 8, !tbaa !57
  %2311 = sext i32 %2310 to i64
  %2312 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2311
  %2313 = load i32, ptr %2312, align 4, !tbaa !35
  %2314 = icmp sgt i32 %2313, -1
  br i1 %2314, label %2315, label %2321

2315:                                             ; preds = %2308
  %2316 = zext nneg i32 %2313 to i64
  %2317 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2316, i32 17
  %2318 = load i32, ptr %2317, align 4, !tbaa !58
  %2319 = icmp eq i32 %2318, 9
  br i1 %2319, label %2320, label %2321

2320:                                             ; preds = %2315
  store i32 10, ptr %2242, align 4, !tbaa !58
  br label %2321

2321:                                             ; preds = %2304, %2320, %2315, %2308
  %2322 = phi i64 [ %2307, %2304 ], [ %2311, %2320 ], [ %2311, %2315 ], [ %2311, %2308 ]
  %2323 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2322
  %2324 = load i32, ptr %2323, align 4, !tbaa !35
  %2325 = icmp sgt i32 %2324, -1
  br i1 %2325, label %2326, label %2328

2326:                                             ; preds = %2321
  %2327 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2223, i32 12
  store i32 %2324, ptr %2327, align 8, !tbaa !57
  br label %2328

2328:                                             ; preds = %2321, %2326
  %2329 = add nuw nsw i64 %2223, 1
  %2330 = icmp eq i64 %2329, %2135
  br i1 %2330, label %2331, label %2222, !llvm.loop !162

2331:                                             ; preds = %2328, %2122, %2132
  %2332 = phi i1 [ false, %2132 ], [ false, %2122 ], [ %2133, %2328 ]
  %2333 = phi i32 [ %2129, %2132 ], [ %2123, %2122 ], [ %2129, %2328 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %36) #23
  br i1 %110, label %2337, label %2334

2334:                                             ; preds = %2337, %2331
  br i1 %2332, label %2335, label %2442

2335:                                             ; preds = %2334
  %2336 = zext nneg i32 %2333 to i64
  br label %2343

2337:                                             ; preds = %2331, %2337
  %2338 = phi i64 [ %2341, %2337 ], [ 0, %2331 ]
  %2339 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2338
  store i32 -2, ptr %2339, align 4, !tbaa !35
  %2340 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2338
  store i32 -2, ptr %2340, align 4, !tbaa !35
  %2341 = add nuw nsw i64 %2338, 1
  %2342 = icmp eq i64 %2341, %453
  br i1 %2342, label %2334, label %2337, !llvm.loop !163

2343:                                             ; preds = %2335, %2378
  %2344 = phi i64 [ %2336, %2335 ], [ %2347, %2378 ]
  %2345 = phi i32 [ 0, %2335 ], [ %2380, %2378 ]
  %2346 = phi i32 [ -2, %2335 ], [ %2379, %2378 ]
  %2347 = add nsw i64 %2344, -1
  %2348 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2347, i32 17
  %2349 = load i32, ptr %2348, align 4, !tbaa !58
  switch i32 %2349, label %2378 [
    i32 7, label %2350
    i32 3, label %2356
    i32 5, label %2367
  ]

2350:                                             ; preds = %2343
  %2351 = add nsw i32 %2346, 1
  %2352 = icmp sgt i32 %2346, -2
  %2353 = trunc i64 %2347 to i32
  %2354 = select i1 %2352, i32 %2353, i32 %2351
  %2355 = select i1 %2352, i32 1, i32 %2345
  br label %2378

2356:                                             ; preds = %2343
  %2357 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2347, i32 12
  %2358 = load i32, ptr %2357, align 8, !tbaa !57
  %2359 = sext i32 %2358 to i64
  %2360 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2359
  %2361 = load i32, ptr %2360, align 4, !tbaa !35
  %2362 = add nsw i32 %2361, 1
  %2363 = icmp sgt i32 %2361, -2
  %2364 = trunc i64 %2347 to i32
  %2365 = select i1 %2363, i32 %2364, i32 %2362
  store i32 %2365, ptr %2360, align 4
  %2366 = select i1 %2363, i32 1, i32 %2345
  br label %2378

2367:                                             ; preds = %2343
  %2368 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2347, i32 12
  %2369 = load i32, ptr %2368, align 8, !tbaa !57
  %2370 = sext i32 %2369 to i64
  %2371 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2370
  %2372 = load i32, ptr %2371, align 4, !tbaa !35
  %2373 = add nsw i32 %2372, 1
  %2374 = icmp sgt i32 %2372, -2
  %2375 = trunc i64 %2347 to i32
  %2376 = select i1 %2374, i32 %2375, i32 %2373
  store i32 %2376, ptr %2371, align 4
  %2377 = select i1 %2374, i32 1, i32 %2345
  br label %2378

2378:                                             ; preds = %2367, %2356, %2350, %2343
  %2379 = phi i32 [ %2346, %2343 ], [ %2354, %2350 ], [ %2346, %2356 ], [ %2346, %2367 ]
  %2380 = phi i32 [ %2345, %2343 ], [ %2355, %2350 ], [ %2366, %2356 ], [ %2377, %2367 ]
  %2381 = icmp ugt i64 %2344, 1
  br i1 %2381, label %2343, label %2382, !llvm.loop !164

2382:                                             ; preds = %2378
  %2383 = icmp ne i32 %2380, 0
  %2384 = and i1 %2383, %2332
  br i1 %2384, label %2385, label %2442

2385:                                             ; preds = %2382, %2437
  %2386 = phi i64 [ %2438, %2437 ], [ 0, %2382 ]
  %2387 = phi i32 [ %2439, %2437 ], [ %2333, %2382 ]
  %2388 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2386
  %2389 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2386, i32 17
  %2390 = load i32, ptr %2389, align 4, !tbaa !58
  switch i32 %2390, label %2437 [
    i32 8, label %2400
    i32 4, label %2392
    i32 6, label %2391
  ]

2391:                                             ; preds = %2385
  br label %2392

2392:                                             ; preds = %2385, %2391
  %2393 = phi ptr [ %36, %2391 ], [ %35, %2385 ]
  %2394 = phi i32 [ 5, %2391 ], [ 3, %2385 ]
  %2395 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2386, i32 12
  %2396 = load i32, ptr %2395, align 8, !tbaa !57
  %2397 = sext i32 %2396 to i64
  %2398 = getelementptr inbounds [30 x i32], ptr %2393, i64 0, i64 %2397
  %2399 = load i32, ptr %2398, align 4, !tbaa !35
  br label %2400

2400:                                             ; preds = %2392, %2385
  %2401 = phi i32 [ %2379, %2385 ], [ %2399, %2392 ]
  %2402 = phi i32 [ 7, %2385 ], [ %2394, %2392 ]
  %2403 = icmp slt i32 %2401, 0
  br i1 %2403, label %2437, label %2404

2404:                                             ; preds = %2400
  %2405 = zext nneg i32 %2401 to i64
  %2406 = icmp ugt i64 %2386, %2405
  br i1 %2406, label %2436, label %2407

2407:                                             ; preds = %2404
  %2408 = add nsw i32 %2387, -1
  %2409 = icmp sgt i32 %2408, %2401
  br i1 %2409, label %2410, label %2437

2410:                                             ; preds = %2407
  %2411 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2386, i32 18
  br label %2412

2412:                                             ; preds = %2410, %2433
  %2413 = phi i32 [ %2408, %2410 ], [ %2434, %2433 ]
  %2414 = zext nneg i32 %2413 to i64
  %2415 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2414
  %2416 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2414, i32 17
  %2417 = load i32, ptr %2416, align 4, !tbaa !58
  %2418 = icmp eq i32 %2417, %2402
  br i1 %2418, label %2419, label %2433

2419:                                             ; preds = %2412
  %2420 = load i8, ptr %2411, align 8
  %2421 = and i8 %2420, 4
  %2422 = icmp eq i8 %2421, 0
  br i1 %2422, label %2428, label %2423

2423:                                             ; preds = %2419
  %2424 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2414, i32 13
  %2425 = load i32, ptr %2424, align 4, !tbaa !59
  %2426 = zext i32 %2425 to i64
  %2427 = icmp eq i64 %2386, %2426
  br i1 %2427, label %2436, label %2433

2428:                                             ; preds = %2419
  %2429 = load ptr, ptr %2388, align 8, !tbaa !47
  %2430 = load ptr, ptr %2415, align 8, !tbaa !47
  %2431 = call i32 @reg_mentioned_p(ptr noundef %2429, ptr noundef %2430) #24
  %2432 = icmp eq i32 %2431, 0
  br i1 %2432, label %2433, label %2436

2433:                                             ; preds = %2412, %2423, %2428
  %2434 = add nsw i32 %2413, -1
  %2435 = icmp sgt i32 %2434, %2401
  br i1 %2435, label %2412, label %2437, !llvm.loop !165

2436:                                             ; preds = %2423, %2428, %2404
  store i32 %2402, ptr %2389, align 4, !tbaa !58
  br label %2437

2437:                                             ; preds = %2433, %2436, %2407, %2400, %2385
  %2438 = add nuw nsw i64 %2386, 1
  %2439 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %2440 = sext i32 %2439 to i64
  %2441 = icmp slt i64 %2438, %2440
  br i1 %2441, label %2385, label %2442, !llvm.loop !166

2442:                                             ; preds = %2437, %2334, %2382
  %2443 = phi i32 [ %2333, %2382 ], [ %2333, %2334 ], [ %2439, %2437 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %35) #23
  %2444 = icmp sgt i32 %2443, 0
  br i1 %2444, label %2447, label %2693

2445:                                             ; preds = %2538
  %2446 = icmp sgt i32 %2539, 0
  br i1 %2446, label %2545, label %2693

2447:                                             ; preds = %2442, %2538
  %2448 = phi i32 [ %2539, %2538 ], [ %2443, %2442 ]
  %2449 = phi i64 [ %2540, %2538 ], [ 0, %2442 ]
  %2450 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2449
  %2451 = load ptr, ptr %2450, align 8, !tbaa !47
  %2452 = icmp eq ptr %2451, null
  br i1 %2452, label %2538, label %2453

2453:                                             ; preds = %2447
  %2454 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2449, i32 1
  %2455 = load ptr, ptr %2454, align 8, !tbaa !49
  %2456 = icmp eq ptr %2455, null
  br i1 %2456, label %2457, label %2538

2457:                                             ; preds = %2453
  %2458 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2449, i32 17
  %2459 = load i32, ptr %2458, align 4, !tbaa !58
  switch i32 %2459, label %2538 [
    i32 7, label %2460
    i32 8, label %2460
    i32 10, label %2460
  ]

2460:                                             ; preds = %2457, %2457, %2457
  %2461 = icmp sgt i32 %2448, 0
  br i1 %2461, label %2462, label %2538

2462:                                             ; preds = %2460
  %2463 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2449, i32 2
  %2464 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2449, i32 18
  %2465 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2449, i32 11
  %2466 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2449, i32 12
  %2467 = trunc i64 %2449 to i32
  br label %2468

2468:                                             ; preds = %2462, %2533
  %2469 = phi i64 [ 0, %2462 ], [ %2534, %2533 ]
  %2470 = icmp eq i64 %2449, %2469
  br i1 %2470, label %2533, label %2471

2471:                                             ; preds = %2468
  %2472 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469
  %2473 = load ptr, ptr %2472, align 8, !tbaa !47
  %2474 = icmp eq ptr %2473, null
  br i1 %2474, label %2533, label %2475

2475:                                             ; preds = %2471
  %2476 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 1
  %2477 = load ptr, ptr %2476, align 8, !tbaa !49
  %2478 = icmp eq ptr %2477, null
  br i1 %2478, label %2479, label %2533

2479:                                             ; preds = %2475
  %2480 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 17
  %2481 = load i32, ptr %2480, align 4, !tbaa !58
  %2482 = load i32, ptr %2458, align 4, !tbaa !58
  %2483 = icmp eq i32 %2481, %2482
  br i1 %2483, label %2484, label %2533

2484:                                             ; preds = %2479
  %2485 = load ptr, ptr %2450, align 8, !tbaa !47
  %2486 = icmp eq ptr %2485, %2473
  br i1 %2486, label %2508, label %2487

2487:                                             ; preds = %2484
  %2488 = icmp eq ptr %2485, null
  br i1 %2488, label %2533, label %2489

2489:                                             ; preds = %2487
  %2490 = load i32, ptr %2485, align 8
  %2491 = and i32 %2490, 65535
  %2492 = icmp eq i32 %2491, 37
  br i1 %2492, label %2493, label %2501

2493:                                             ; preds = %2489
  %2494 = load i32, ptr %2473, align 8
  %2495 = and i32 %2494, 65535
  %2496 = icmp eq i32 %2495, 37
  br i1 %2496, label %2497, label %2533

2497:                                             ; preds = %2493
  %2498 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2485) #25
  %2499 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2473) #25
  %2500 = icmp eq i32 %2498, %2499
  br i1 %2500, label %2508, label %2533

2501:                                             ; preds = %2489
  %2502 = call i32 @rtx_equal_p(ptr noundef nonnull %2485, ptr noundef nonnull %2473) #24
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2533, label %2504

2504:                                             ; preds = %2501
  %2505 = load ptr, ptr %2450, align 8, !tbaa !47
  %2506 = call i32 @side_effects_p(ptr noundef %2505) #24
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2508, label %2533

2508:                                             ; preds = %2504, %2497, %2484
  %2509 = load i32, ptr %2463, align 8, !tbaa !50
  %2510 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 2
  %2511 = load i32, ptr %2510, align 8, !tbaa !50
  %2512 = icmp eq i32 %2509, %2511
  br i1 %2512, label %2513, label %2533

2513:                                             ; preds = %2508
  %2514 = load i8, ptr %2464, align 8
  %2515 = and i8 %2514, 2
  %2516 = icmp eq i8 %2515, 0
  br i1 %2516, label %2517, label %2533

2517:                                             ; preds = %2513
  %2518 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 18
  %2519 = load i8, ptr %2518, align 8
  %2520 = and i8 %2519, 2
  %2521 = icmp eq i8 %2520, 0
  br i1 %2521, label %2522, label %2533

2522:                                             ; preds = %2517
  %2523 = load ptr, ptr %2465, align 8, !tbaa !53
  %2524 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 11
  %2525 = load ptr, ptr %2524, align 8, !tbaa !53
  %2526 = icmp eq ptr %2523, %2525
  br i1 %2526, label %2527, label %2533

2527:                                             ; preds = %2522
  %2528 = load i32, ptr %2466, align 8, !tbaa !57
  %2529 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 12
  %2530 = load i32, ptr %2529, align 8, !tbaa !57
  %2531 = call i32 @llvm.smin.i32(i32 %2528, i32 %2530)
  store i32 %2531, ptr %2466, align 8, !tbaa !57
  %2532 = trunc i64 %2469 to i32
  call void @transfer_replacements(i32 noundef %2467, i32 noundef %2532) #25
  store ptr null, ptr %2472, align 8, !tbaa !47
  br label %2533

2533:                                             ; preds = %2468, %2471, %2475, %2479, %2487, %2493, %2497, %2501, %2504, %2508, %2513, %2517, %2522, %2527
  %2534 = add nuw nsw i64 %2469, 1
  %2535 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %2536 = sext i32 %2535 to i64
  %2537 = icmp slt i64 %2534, %2536
  br i1 %2537, label %2468, label %2538, !llvm.loop !167

2538:                                             ; preds = %2533, %2460, %2457, %2447, %2453
  %2539 = phi i32 [ %2448, %2460 ], [ %2448, %2457 ], [ %2448, %2447 ], [ %2448, %2453 ], [ %2535, %2533 ]
  %2540 = add nuw nsw i64 %2449, 1
  %2541 = sext i32 %2539 to i64
  %2542 = icmp slt i64 %2540, %2541
  br i1 %2542, label %2447, label %2445, !llvm.loop !168

2543:                                             ; preds = %2587
  %2544 = icmp sgt i32 %2591, 0
  br i1 %2544, label %2594, label %2693

2545:                                             ; preds = %2445, %2587
  %2546 = phi i64 [ %2590, %2587 ], [ 0, %2445 ]
  %2547 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2546, i32 3
  %2548 = load i32, ptr %2547, align 4, !tbaa !51
  %2549 = icmp eq i32 %2548, 0
  %2550 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2546, i32 4
  %2551 = load i32, ptr %2550, align 8, !tbaa !52
  br i1 %2549, label %2561, label %2552

2552:                                             ; preds = %2545
  %2553 = zext i32 %2551 to i64
  %2554 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2553
  %2555 = load i8, ptr %2554, align 1, !tbaa !30
  %2556 = zext i32 %2548 to i64
  %2557 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2556
  %2558 = load i8, ptr %2557, align 1, !tbaa !30
  %2559 = icmp ugt i8 %2555, %2558
  %2560 = select i1 %2559, i32 %2551, i32 %2548
  br label %2561

2561:                                             ; preds = %2552, %2545
  %2562 = phi i32 [ %2551, %2545 ], [ %2560, %2552 ]
  %2563 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2546, i32 5
  store i32 %2562, ptr %2563, align 4, !tbaa !169
  %2564 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2546, i32 2
  %2565 = load i32, ptr %2564, align 8, !tbaa !50
  %2566 = call i32 @reg_classes_intersect_p(i32 noundef %2565, i32 noundef 13) #24
  %2567 = icmp eq i32 %2566, 0
  %2568 = load i32, ptr %2563, align 4, !tbaa !169
  br i1 %2567, label %2569, label %2576

2569:                                             ; preds = %2561
  %2570 = zext i32 %2568 to i64
  %2571 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2570
  %2572 = load i8, ptr %2571, align 1, !tbaa !30
  %2573 = and i8 %2572, -2
  %2574 = icmp eq i8 %2573, 10
  %2575 = select i1 %2574, i32 2, i32 1
  br label %2587

2576:                                             ; preds = %2561
  %2577 = icmp eq i32 %2568, 40
  br i1 %2577, label %2583, label %2578

2578:                                             ; preds = %2576
  %2579 = zext i32 %2568 to i64
  %2580 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2579
  %2581 = load i8, ptr %2580, align 1, !tbaa !30
  %2582 = zext i8 %2581 to i32
  br label %2583

2583:                                             ; preds = %2576, %2578
  %2584 = phi i32 [ %2582, %2578 ], [ 12, %2576 ]
  %2585 = add nuw nsw i32 %2584, 3
  %2586 = lshr i32 %2585, 2
  br label %2587

2587:                                             ; preds = %2583, %2569
  %2588 = phi i32 [ %2575, %2569 ], [ %2586, %2583 ]
  %2589 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2546, i32 6
  store i32 %2588, ptr %2589, align 8, !tbaa !170
  %2590 = add nuw nsw i64 %2546, 1
  %2591 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %2592 = sext i32 %2591 to i64
  %2593 = icmp slt i64 %2590, %2592
  br i1 %2593, label %2545, label %2543, !llvm.loop !171

2594:                                             ; preds = %2543, %2688
  %2595 = phi i64 [ %2689, %2688 ], [ 0, %2543 ]
  %2596 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2595
  %2597 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2595, i32 17
  %2598 = load i32, ptr %2597, align 4, !tbaa !58
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2600, label %2688

2600:                                             ; preds = %2594
  %2601 = load ptr, ptr %37, align 8, !tbaa !30
  %2602 = load i32, ptr %2601, align 8
  %2603 = and i32 %2602, 65535
  %2604 = icmp eq i32 %2603, 23
  br i1 %2604, label %2605, label %2688

2605:                                             ; preds = %2600
  %2606 = getelementptr inbounds %struct.rtx_def, ptr %2601, i64 0, i32 1
  %2607 = load ptr, ptr %2606, align 8, !tbaa !30
  %2608 = load i32, ptr %2607, align 8
  %2609 = and i32 %2608, 65535
  %2610 = icmp eq i32 %2609, 37
  br i1 %2610, label %2611, label %2688

2611:                                             ; preds = %2605
  %2612 = getelementptr inbounds %struct.rtx_def, ptr %2601, i64 0, i32 1, i32 0, i32 0, i64 1
  %2613 = load ptr, ptr %2612, align 8, !tbaa !30
  %2614 = load ptr, ptr %2596, align 8, !tbaa !47
  %2615 = icmp eq ptr %2613, %2614
  br i1 %2615, label %2620, label %2616

2616:                                             ; preds = %2611
  %2617 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2595, i32 8
  %2618 = load ptr, ptr %2617, align 8, !tbaa !55
  %2619 = icmp eq ptr %2613, %2618
  br i1 %2619, label %2620, label %2688

2620:                                             ; preds = %2616, %2611
  %2621 = call zeroext i8 @elimination_target_reg_p(ptr noundef nonnull %2607) #24
  %2622 = icmp eq i8 %2621, 0
  br i1 %2622, label %2623, label %2688

2623:                                             ; preds = %2620
  %2624 = load ptr, ptr %37, align 8, !tbaa !30
  %2625 = getelementptr inbounds %struct.rtx_def, ptr %2624, i64 0, i32 1
  %2626 = load ptr, ptr %2625, align 8, !tbaa !30
  %2627 = call fastcc i32 @rhs_regno(ptr noundef %2626) #25
  %2628 = icmp ult i32 %2627, 53
  br i1 %2628, label %2629, label %2688

2629:                                             ; preds = %2623
  %2630 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2595, i32 2
  %2631 = load i32, ptr %2630, align 8, !tbaa !50
  %2632 = zext i32 %2631 to i64
  %2633 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2632
  %2634 = load i64, ptr %2633, align 8, !tbaa !44
  %2635 = zext nneg i32 %2627 to i64
  %2636 = shl nuw nsw i64 1, %2635
  %2637 = and i64 %2634, %2636
  %2638 = icmp eq i64 %2637, 0
  br i1 %2638, label %2688, label %2639

2639:                                             ; preds = %2629
  %2640 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2595, i32 5
  %2641 = load i32, ptr %2640, align 4, !tbaa !169
  %2642 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %2627, i32 noundef %2641) #24
  %2643 = icmp eq i8 %2642, 0
  br i1 %2643, label %2688, label %2644

2644:                                             ; preds = %2639
  %2645 = load i32, ptr %2640, align 4, !tbaa !169
  %2646 = zext i32 %2645 to i64
  %2647 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2635, i64 %2646
  %2648 = load i8, ptr %2647, align 1, !tbaa !30
  %2649 = icmp ugt i8 %2648, 1
  br i1 %2649, label %2650, label %2686

2650:                                             ; preds = %2644
  %2651 = zext i8 %2648 to i64
  %2652 = load i32, ptr %2630, align 8, !tbaa !50
  %2653 = zext i32 %2652 to i64
  %2654 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2653
  %2655 = load i64, ptr %2654, align 8, !tbaa !44
  %2656 = add nuw nsw i64 %2651, 2
  %2657 = and i64 %2656, 508
  %2658 = add nsw i64 %2651, -2
  %2659 = insertelement <4 x i64> poison, i64 %2658, i64 0
  %2660 = shufflevector <4 x i64> %2659, <4 x i64> poison, <4 x i32> zeroinitializer
  %2661 = insertelement <4 x i64> poison, i64 %2635, i64 0
  %2662 = shufflevector <4 x i64> %2661, <4 x i64> poison, <4 x i32> zeroinitializer
  %2663 = insertelement <4 x i64> poison, i64 %2655, i64 0
  %2664 = shufflevector <4 x i64> %2663, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %2665

2665:                                             ; preds = %2665, %2650
  %2666 = phi i64 [ 0, %2650 ], [ %2674, %2665 ]
  %2667 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %2650 ], [ %2675, %2665 ]
  %2668 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %2650 ], [ %2673, %2665 ]
  %2669 = add nuw nsw <4 x i64> %2667, %2662
  %2670 = shl nuw <4 x i64> <i64 1, i64 1, i64 1, i64 1>, %2669
  %2671 = and <4 x i64> %2664, %2670
  %2672 = icmp eq <4 x i64> %2671, zeroinitializer
  %2673 = select <4 x i1> %2672, <4 x i32> zeroinitializer, <4 x i32> %2668
  %2674 = add i64 %2666, 4
  %2675 = add <4 x i64> %2667, <i64 4, i64 4, i64 4, i64 4>
  %2676 = icmp eq i64 %2674, %2657
  br i1 %2676, label %2677, label %2665, !llvm.loop !172

2677:                                             ; preds = %2665
  %2678 = insertelement <4 x i64> poison, i64 %2666, i64 0
  %2679 = shufflevector <4 x i64> %2678, <4 x i64> poison, <4 x i32> zeroinitializer
  %2680 = or disjoint <4 x i64> %2679, <i64 0, i64 1, i64 2, i64 3>
  %2681 = icmp ugt <4 x i64> %2680, %2660
  %2682 = select <4 x i1> %2681, <4 x i32> %2668, <4 x i32> %2673
  %2683 = icmp ne <4 x i32> %2682, <i32 1, i32 1, i32 1, i32 1>
  %2684 = bitcast <4 x i1> %2683 to i4
  %2685 = icmp eq i4 %2684, 0
  br i1 %2685, label %2686, label %2688

2686:                                             ; preds = %2644, %2677
  %2687 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2595, i32 11
  store ptr %2626, ptr %2687, align 8, !tbaa !53
  br label %2688

2688:                                             ; preds = %2623, %2629, %2639, %2686, %2677, %2594, %2600, %2605, %2616, %2620
  %2689 = add nuw nsw i64 %2595, 1
  %2690 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %2691 = sext i32 %2690 to i64
  %2692 = icmp slt i64 %2689, %2691
  br i1 %2692, label %2594, label %2693, !llvm.loop !175

2693:                                             ; preds = %2688, %2442, %2445, %2543, %399, %94, %82, %1871, %1478
  %2694 = phi i32 [ %400, %399 ], [ 0, %1871 ], [ 0, %1478 ], [ 0, %82 ], [ 0, %94 ], [ %2083, %2543 ], [ %2083, %2445 ], [ %2083, %2442 ], [ %2083, %2688 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %6) #23
  ret i32 %2694
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #13 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reloads_toplev(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !31
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = trunc i32 %11 to i16
  switch i16 %16, label %186 [
    i16 37, label %17
    i16 43, label %83
    i16 39, label %93
  ]

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %19 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = icmp eq ptr %22, null
  %24 = icmp ne i32 %4, 0
  %25 = or i1 %24, %23
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store ptr %22, ptr %8, align 8, !tbaa !31
  br label %81

27:                                               ; preds = %17
  %28 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %29 = getelementptr inbounds ptr, ptr %28, i64 %20
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %81, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %34 = getelementptr inbounds ptr, ptr %33, i64 %20
  %35 = load ptr, ptr %34, align 8, !tbaa !31
  %36 = icmp ne ptr %35, null
  %37 = load i32, ptr @num_not_at_initial_offset, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %32
  %41 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %18) #25
  %42 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  %44 = load ptr, ptr %43, align 8, !tbaa !31
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %48 = getelementptr inbounds ptr, ptr %47, i64 %20
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = tail call i32 @rtx_equal_p(ptr noundef %41, ptr noundef %49) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %46, %40
  %53 = load i32, ptr @replace_reloads, align 4, !tbaa !35
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !31
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %0) #24
  %62 = tail call ptr @emit_insn_before(ptr noundef %61, ptr noundef %5) #24
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, -16711681
  %65 = or disjoint i32 %64, 917504
  store i32 %65, ptr %62, align 8
  br label %66

66:                                               ; preds = %60, %55, %52
  store ptr %41, ptr %8, align 8, !tbaa !31
  %67 = load i32, ptr %41, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !30
  %72 = call fastcc i32 @find_reloads_address(i32 noundef %69, ptr noundef nonnull %8, ptr noundef %71, ptr noundef nonnull %70, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %73 = load ptr, ptr %8, align 8, !tbaa !31
  %74 = call i32 @rtx_equal_p(ptr noundef %73, ptr noundef nonnull %41) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load ptr, ptr %8, align 8, !tbaa !31
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %18, ptr noundef %77) #25
  br label %78

78:                                               ; preds = %76, %66
  %79 = icmp eq ptr %6, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  store i32 %72, ptr %6, align 4, !tbaa !35
  br label %81

81:                                               ; preds = %46, %80, %78, %27, %32, %26
  %82 = load ptr, ptr %8, align 8, !tbaa !31
  br label %230

83:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  store ptr %0, ptr %9, align 8, !tbaa !31
  %84 = lshr i32 %11, 16
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !30
  %88 = call fastcc i32 @find_reloads_address(i32 noundef %85, ptr noundef nonnull %9, ptr noundef %87, ptr noundef nonnull %86, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %89 = icmp eq ptr %6, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  store i32 %88, ptr %6, align 4, !tbaa !35
  br label %91

91:                                               ; preds = %90, %83
  %92 = load ptr, ptr %9, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  br label %230

93:                                               ; preds = %7
  %94 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !30
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %186

99:                                               ; preds = %93
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  %101 = icmp sgt i32 %100, 52
  br i1 %101, label %102, label %182

102:                                              ; preds = %99
  %103 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr inbounds i16, ptr %103, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !40
  %107 = icmp slt i16 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %102
  %109 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %110 = getelementptr inbounds ptr, ptr %109, i64 %104
  %111 = load ptr, ptr %110, align 8, !tbaa !31
  %112 = icmp eq ptr %111, null
  br i1 %112, label %146, label %113

113:                                              ; preds = %108
  %114 = lshr i32 %11, 16
  %115 = and i32 %114, 255
  %116 = lshr i32 %96, 16
  %117 = and i32 %116, 255
  %118 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load i32, ptr %118, align 8, !tbaa !30
  %120 = tail call ptr @simplify_gen_subreg(i32 noundef %115, ptr noundef nonnull %111, i32 noundef %117, i32 noundef %119) #24
  store ptr %120, ptr %10, align 8, !tbaa !31
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4741, ptr noundef nonnull @.str.1) #24
  br label %123

123:                                              ; preds = %113, %122
  %124 = load i32, ptr %120, align 8
  %125 = and i32 %124, 65535
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !35
  %129 = icmp eq i32 %128, 9
  br i1 %129, label %130, label %184

130:                                              ; preds = %123
  %131 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %120) #24
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %184

133:                                              ; preds = %130
  %134 = load i32, ptr %0, align 8
  %135 = lshr i32 %134, 16
  %136 = and i32 %135, 255
  %137 = tail call ptr @force_const_mem(i32 noundef %136, ptr noundef nonnull %120) #24
  store ptr %137, ptr %10, align 8, !tbaa !31
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !30
  %143 = call fastcc i32 @find_reloads_address(i32 noundef %140, ptr noundef nonnull %10, ptr noundef %142, ptr noundef nonnull %141, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %144 = icmp eq ptr %6, null
  br i1 %144, label %184, label %145

145:                                              ; preds = %133
  store i32 %143, ptr %6, align 4, !tbaa !35
  br label %184

146:                                              ; preds = %102, %108
  %147 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %148 = getelementptr inbounds ptr, ptr %147, i64 %104
  %149 = load ptr, ptr %148, align 8, !tbaa !31
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %180

151:                                              ; preds = %146
  %152 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %153 = getelementptr inbounds ptr, ptr %152, i64 %104
  %154 = load ptr, ptr %153, align 8, !tbaa !31
  %155 = icmp eq ptr %154, null
  br i1 %155, label %182, label %156

156:                                              ; preds = %151
  %157 = lshr i32 %11, 16
  %158 = and i32 %157, 255
  %159 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !30
  %161 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !30
  %163 = icmp eq ptr %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.mem_attrs, ptr %162, i64 0, i32 5
  %166 = load i8, ptr %165, align 8, !tbaa !32
  br label %167

167:                                              ; preds = %156, %164
  %168 = phi i8 [ %166, %164 ], [ 0, %156 ]
  %169 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %158, ptr noundef %160, i8 noundef zeroext %168) #25, !range !34
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %173 = getelementptr inbounds ptr, ptr %172, i64 %104
  %174 = load ptr, ptr %173, align 8, !tbaa !31
  %175 = tail call i32 @offsettable_memref_p(ptr noundef %174) #24
  %176 = icmp eq i32 %175, 0
  %177 = load i32, ptr @num_not_at_initial_offset, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %171, %167, %146
  %181 = tail call fastcc ptr @find_reloads_subreg_address(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  store ptr %181, ptr %8, align 8, !tbaa !31
  br label %182

182:                                              ; preds = %99, %171, %180, %151
  %183 = phi ptr [ %0, %99 ], [ %0, %171 ], [ %181, %180 ], [ %0, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %186

184:                                              ; preds = %123, %130, %145, %133
  %185 = load ptr, ptr %10, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %230

186:                                              ; preds = %182, %7, %93
  %187 = phi ptr [ %183, %182 ], [ %0, %7 ], [ %0, %93 ]
  %188 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %189 = load i8, ptr %188, align 1, !tbaa !30
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %230, label %191

191:                                              ; preds = %186
  %192 = zext i8 %189 to i64
  br label %193

193:                                              ; preds = %191, %225
  %194 = phi ptr [ %187, %191 ], [ %226, %225 ]
  %195 = phi ptr [ %187, %191 ], [ %227, %225 ]
  %196 = phi i64 [ %192, %191 ], [ %198, %225 ]
  %197 = phi i32 [ 0, %191 ], [ %228, %225 ]
  %198 = add nsw i64 %196, -1
  %199 = getelementptr inbounds i8, ptr %15, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !30
  %201 = icmp eq i8 %200, 101
  br i1 %201, label %202, label %225

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %204 = getelementptr inbounds [1 x %union.rtunion_def], ptr %203, i64 0, i64 %198
  %205 = load ptr, ptr %204, align 8, !tbaa !30
  %206 = tail call fastcc ptr @find_reloads_toplev(ptr noundef %205, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #25
  %207 = load ptr, ptr %204, align 8, !tbaa !30
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %220, label %209

209:                                              ; preds = %202
  %210 = load i32, ptr %206, align 8
  %211 = and i32 %210, 65535
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !35
  %215 = icmp eq i32 %214, 9
  %216 = icmp ne i32 %197, 0
  %217 = select i1 %215, i1 true, i1 %216
  br i1 %217, label %220, label %218

218:                                              ; preds = %209
  %219 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %195) #24
  store ptr %219, ptr %8, align 8, !tbaa !31
  br label %220

220:                                              ; preds = %218, %209, %202
  %221 = phi ptr [ %194, %209 ], [ %219, %218 ], [ %194, %202 ]
  %222 = phi i32 [ %197, %209 ], [ 1, %218 ], [ %197, %202 ]
  %223 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %224 = getelementptr inbounds [1 x %union.rtunion_def], ptr %223, i64 0, i64 %198
  store ptr %206, ptr %224, align 8, !tbaa !30
  br label %225

225:                                              ; preds = %193, %220
  %226 = phi ptr [ %221, %220 ], [ %194, %193 ]
  %227 = phi ptr [ %221, %220 ], [ %195, %193 ]
  %228 = phi i32 [ %222, %220 ], [ %197, %193 ]
  %229 = icmp ugt i64 %196, 1
  br i1 %229, label %193, label %230, !llvm.loop !176

230:                                              ; preds = %225, %186, %184, %91, %81
  %231 = phi ptr [ %82, %81 ], [ %92, %91 ], [ %185, %184 ], [ %187, %186 ], [ %226, %225 ]
  ret ptr %231
}

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @skip_alternative(ptr noundef readonly %0) unnamed_addr #6 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %5 ]
  %4 = load i8, ptr %3, align 1, !tbaa !30
  switch i8 %4, label %5 [
    i8 0, label %7
    i8 44, label %7
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !177

7:                                                ; preds = %2, %2
  %8 = icmp eq i8 %4, 44
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @simplify_subreg_regno(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @offsettable_memref_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @offsettable_nonstrict_memref_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @alternative_allows_const_pool_ref(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2, %12
  %5 = phi i32 [ %13, %12 ], [ %1, %2 ]
  %6 = phi ptr [ %9, %12 ], [ %0, %2 ]
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %6, %4 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = load i8, ptr %8, align 1, !tbaa !30
  %11 = icmp eq i8 %10, 44
  br i1 %11, label %12, label %7, !llvm.loop !178

12:                                               ; preds = %7
  %13 = add nsw i32 %5, -1
  %14 = icmp sgt i32 %5, 1
  br i1 %14, label %4, label %15, !llvm.loop !179

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %0, %2 ], [ %9, %12 ]
  br label %17

17:                                               ; preds = %15, %23
  %18 = phi ptr [ %25, %23 ], [ %16, %15 ]
  %19 = load i8, ptr %18, align 1, !tbaa !30
  switch i8 %19, label %20 [
    i8 44, label %26
    i8 35, label %26
    i8 0, label %26
  ]

20:                                               ; preds = %17
  %21 = and i8 %19, -3
  %22 = icmp eq i8 %21, 109
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %19) #25
  %25 = getelementptr inbounds i8, ptr %18, i64 %24
  br label %17, !llvm.loop !180

26:                                               ; preds = %17, %17, %17, %20
  %27 = phi i8 [ 1, %20 ], [ 0, %17 ], [ 0, %17 ], [ 0, %17 ]
  ret i8 %27
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dup_replacements(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #15 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi i64 [ 0, %5 ], [ %18, %17 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !67
  tail call fastcc void @push_replacement(ptr noundef %0, i32 noundef %14, i32 noundef %16) #25
  br label %17

17:                                               ; preds = %12, %7
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %6
  br i1 %19, label %20, label %7, !llvm.loop !181

20:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_reloads() unnamed_addr #0 {
  %1 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %400

3:                                                ; preds = %0
  %4 = zext nneg i32 %1 to i64
  br label %5

5:                                                ; preds = %3, %14
  %6 = phi i64 [ 0, %3 ], [ %16, %14 ]
  %7 = phi i32 [ -1, %3 ], [ %15, %14 ]
  %8 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %6, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = icmp sgt i32 %7, -1
  %13 = trunc i64 %6 to i32
  br i1 %12, label %400, label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %7, %5 ], [ %13, %11 ]
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, %4
  br i1 %17, label %18, label %5, !llvm.loop !182

18:                                               ; preds = %14
  %19 = icmp slt i32 %15, 0
  br i1 %19, label %400, label %20

20:                                               ; preds = %18
  %21 = zext nneg i32 %15 to i64
  %22 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 18
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %400

26:                                               ; preds = %20
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %400

30:                                               ; preds = %26
  %31 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = tail call i32 @earlyclobber_operand_p(ptr noundef %32) #25, !range !42
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %400

35:                                               ; preds = %30
  br i1 %2, label %36, label %260

36:                                               ; preds = %35
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 12
  %38 = zext nneg i32 %1 to i64
  br label %44

39:                                               ; preds = %55
  br i1 %2, label %40, label %260

40:                                               ; preds = %39
  %41 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 2
  %42 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 4
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 12
  br label %58

44:                                               ; preds = %36, %55
  %45 = phi i64 [ 0, %36 ], [ %56, %55 ]
  %46 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %45, i32 17
  %47 = load i32, ptr %46, align 4, !tbaa !58
  %48 = add i32 %47, -5
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %45, i32 12
  %52 = load i32, ptr %51, align 8, !tbaa !57
  %53 = load i32, ptr %37, align 8, !tbaa !57
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %400, label %55

55:                                               ; preds = %44, %50
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, %38
  br i1 %57, label %39, label %44, !llvm.loop !183

58:                                               ; preds = %40, %255
  %59 = phi i64 [ 0, %40 ], [ %256, %255 ]
  %60 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !47
  %62 = icmp eq ptr %61, null
  br i1 %62, label %255, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 18
  %65 = load i8, ptr %64, align 8
  %66 = and i8 %65, 3
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %255

68:                                               ; preds = %63
  %69 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 17
  %70 = load i32, ptr %69, align 4, !tbaa !58
  switch i32 %70, label %71 [
    i32 5, label %255
    i32 6, label %255
    i32 9, label %255
  ]

71:                                               ; preds = %68
  %72 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !50
  %74 = tail call i32 @reg_classes_intersect_p(i32 noundef %73, i32 noundef 13) #24
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !51
  br i1 %75, label %78, label %85

78:                                               ; preds = %71
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !30
  %82 = and i8 %81, -2
  %83 = icmp eq i8 %82, 10
  %84 = select i1 %83, i32 2, i32 1
  br label %96

85:                                               ; preds = %71
  %86 = icmp eq i32 %77, 40
  br i1 %86, label %92, label %87

87:                                               ; preds = %85
  %88 = zext i32 %77 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !30
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %85, %87
  %93 = phi i32 [ %91, %87 ], [ 12, %85 ]
  %94 = add nuw nsw i32 %93, 3
  %95 = lshr i32 %94, 2
  br label %96

96:                                               ; preds = %92, %78
  %97 = phi i32 [ %84, %78 ], [ %95, %92 ]
  %98 = load i32, ptr %41, align 8, !tbaa !50
  %99 = tail call i32 @reg_classes_intersect_p(i32 noundef %98, i32 noundef 13) #24
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr %42, align 8, !tbaa !52
  br i1 %100, label %102, label %109

102:                                              ; preds = %96
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !30
  %106 = and i8 %105, -2
  %107 = icmp eq i8 %106, 10
  %108 = select i1 %107, i32 2, i32 1
  br label %120

109:                                              ; preds = %96
  %110 = icmp eq i32 %101, 40
  br i1 %110, label %116, label %111

111:                                              ; preds = %109
  %112 = zext i32 %101 to i64
  %113 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !30
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %109, %111
  %117 = phi i32 [ %115, %111 ], [ 12, %109 ]
  %118 = add nuw nsw i32 %117, 3
  %119 = lshr i32 %118, 2
  br label %120

120:                                              ; preds = %116, %102
  %121 = phi i32 [ %108, %102 ], [ %119, %116 ]
  %122 = icmp eq i32 %97, %121
  br i1 %122, label %123, label %255

123:                                              ; preds = %120
  %124 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 7
  %125 = load i32, ptr %124, align 4, !tbaa !54
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %255

127:                                              ; preds = %123
  %128 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 11
  %129 = load ptr, ptr %128, align 8, !tbaa !53
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %255

131:                                              ; preds = %127
  %132 = sext i32 %101 to i64
  %133 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 12
  %134 = load i32, ptr %133, align 8, !tbaa !57
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %132, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !31
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %131
  %140 = load i32, ptr %43, align 8, !tbaa !57
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %132, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !31
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = tail call i32 @rtx_equal_p(ptr noundef nonnull %137, ptr noundef nonnull %143) #24
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %255, label %148

148:                                              ; preds = %131, %139, %145
  %149 = load i32, ptr %72, align 8, !tbaa !50
  %150 = load i32, ptr %41, align 8, !tbaa !50
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %255

152:                                              ; preds = %148
  %153 = load ptr, ptr %60, align 8, !tbaa !47
  %154 = load ptr, ptr %31, align 8, !tbaa !49
  %155 = icmp eq ptr %153, %154
  br i1 %155, label %194, label %156

156:                                              ; preds = %152
  %157 = icmp eq ptr %153, null
  br i1 %157, label %178, label %158

158:                                              ; preds = %156
  %159 = load i32, ptr %153, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 37
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32, ptr %154, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %153) #25
  %168 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %154) #25
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %194, label %178

170:                                              ; preds = %158
  %171 = tail call i32 @rtx_equal_p(ptr noundef nonnull %153, ptr noundef %154) #24
  %172 = icmp eq i32 %171, 0
  %173 = load ptr, ptr %60, align 8, !tbaa !47
  br i1 %172, label %178, label %174

174:                                              ; preds = %170
  %175 = tail call i32 @side_effects_p(ptr noundef %173) #24
  %176 = icmp eq i32 %175, 0
  %177 = load ptr, ptr %60, align 8, !tbaa !47
  br i1 %176, label %194, label %178

178:                                              ; preds = %174, %170, %166, %162, %156
  %179 = phi ptr [ %173, %170 ], [ %153, %166 ], [ %153, %162 ], [ null, %156 ], [ %177, %174 ]
  %180 = load ptr, ptr %31, align 8, !tbaa !49
  %181 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %180, ptr noundef %179) #25
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %255

183:                                              ; preds = %178
  %184 = load ptr, ptr %60, align 8, !tbaa !47
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 37
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load ptr, ptr %31, align 8, !tbaa !49
  %190 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %184, ptr noundef %189) #25
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %255

192:                                              ; preds = %188
  %193 = load ptr, ptr %60, align 8, !tbaa !47
  br label %194

194:                                              ; preds = %192, %183, %174, %166, %152
  %195 = phi ptr [ %193, %192 ], [ %184, %183 ], [ %177, %174 ], [ %153, %166 ], [ %153, %152 ]
  %196 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !51
  %198 = load i32, ptr %69, align 4, !tbaa !58
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %195, i32 noundef %197, i32 noundef %200) #25, !range !42
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %255

203:                                              ; preds = %194
  %204 = load i32, ptr %69, align 4, !tbaa !58
  %205 = icmp ult i32 %204, 2
  br i1 %205, label %206, label %255

206:                                              ; preds = %203
  %207 = trunc i64 %59 to i32
  %208 = load ptr, ptr %31, align 8, !tbaa !49
  %209 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 1
  store ptr %208, ptr %209, align 8, !tbaa !49
  %210 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 9
  %211 = load ptr, ptr %210, align 8, !tbaa !56
  %212 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 9
  store ptr %211, ptr %212, align 8, !tbaa !56
  %213 = load i32, ptr %42, align 8, !tbaa !52
  %214 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 4
  store i32 %213, ptr %214, align 8, !tbaa !52
  store ptr null, ptr %31, align 8, !tbaa !49
  store i32 9, ptr %69, align 4, !tbaa !58
  %215 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 14
  %216 = load i32, ptr %215, align 8, !tbaa !60
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %223, label %218

218:                                              ; preds = %206
  %219 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 14
  store i32 %216, ptr %219, align 8, !tbaa !60
  %220 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 16
  %221 = load i32, ptr %220, align 8, !tbaa !62
  %222 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %59, i32 16
  store i32 %221, ptr %222, align 8, !tbaa !62
  br label %223

223:                                              ; preds = %218, %206
  %224 = sext i32 %213 to i64
  %225 = load i32, ptr %43, align 8, !tbaa !57
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %224, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !31
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load i32, ptr %133, align 8, !tbaa !57
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %224, i64 %232
  store ptr %228, ptr %233, align 8, !tbaa !31
  br label %234

234:                                              ; preds = %230, %223
  %235 = load i32, ptr %41, align 8, !tbaa !50
  %236 = load i32, ptr %72, align 8, !tbaa !50
  %237 = tail call i32 @reg_class_subset_p(i32 noundef %235, i32 noundef %236) #24
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = load i32, ptr %41, align 8, !tbaa !50
  store i32 %240, ptr %72, align 8, !tbaa !50
  br label %241

241:                                              ; preds = %239, %234
  %242 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %400

244:                                              ; preds = %241
  %245 = zext nneg i32 %242 to i64
  br label %246

246:                                              ; preds = %244, %252
  %247 = phi i64 [ 0, %244 ], [ %253, %252 ]
  %248 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %247, i32 2
  %249 = load i32, ptr %248, align 8, !tbaa !63
  %250 = icmp eq i32 %249, %15
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  store i32 %207, ptr %248, align 8, !tbaa !63
  br label %252

252:                                              ; preds = %246, %251
  %253 = add nuw nsw i64 %247, 1
  %254 = icmp eq i64 %253, %245
  br i1 %254, label %400, label %246, !llvm.loop !184

255:                                              ; preds = %203, %68, %68, %68, %58, %63, %120, %123, %127, %145, %148, %178, %188, %194
  %256 = add nuw nsw i64 %59, 1
  %257 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %256, %258
  br i1 %259, label %58, label %260, !llvm.loop !185

260:                                              ; preds = %255, %35, %39
  %261 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %262 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 1, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !30
  %264 = icmp eq i32 %263, -1
  br i1 %264, label %400, label %265

265:                                              ; preds = %260
  %266 = sext i32 %263 to i64
  %267 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %266, i32 4
  %268 = load i8, ptr %267, align 8, !tbaa !25
  %269 = icmp sgt i8 %268, 1
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = zext nneg i8 %268 to i64
  %272 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %266, i32 3
  %273 = load ptr, ptr %272, align 8, !tbaa !27
  br label %274

274:                                              ; preds = %270, %279
  %275 = phi i64 [ 1, %270 ], [ %280, %279 ]
  %276 = getelementptr inbounds %struct.insn_operand_data, ptr %273, i64 %275, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !28
  %278 = load i8, ptr %277, align 1, !tbaa !30
  switch i8 %278, label %279 [
    i8 61, label %400
    i8 43, label %400
  ]

279:                                              ; preds = %274
  %280 = add nuw nsw i64 %275, 1
  %281 = icmp eq i64 %280, %271
  br i1 %281, label %282, label %274, !llvm.loop !186

282:                                              ; preds = %279, %265
  %283 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 1, i32 1, i32 0, i32 0, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !30
  %285 = icmp eq ptr %284, null
  br i1 %285, label %400, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 4
  %288 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 2
  %289 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 14
  br label %290

290:                                              ; preds = %286, %396
  %291 = phi ptr [ %284, %286 ], [ %398, %396 ]
  %292 = load i32, ptr %291, align 8
  %293 = and i32 %292, 16711680
  %294 = icmp eq i32 %293, 65536
  br i1 %294, label %295, label %396

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.rtx_def, ptr %291, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !30
  %298 = load i32, ptr %297, align 8
  %299 = and i32 %298, 65535
  %300 = icmp eq i32 %299, 37
  br i1 %300, label %301, label %396

301:                                              ; preds = %295
  %302 = load ptr, ptr %31, align 8, !tbaa !49
  %303 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %297, ptr noundef %302) #25
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %396

305:                                              ; preds = %301
  %306 = load ptr, ptr %296, align 8, !tbaa !30
  %307 = tail call fastcc i32 @rhs_regno(ptr noundef %306) #25
  %308 = icmp slt i32 %307, 53
  br i1 %308, label %309, label %396

309:                                              ; preds = %305
  %310 = load i32, ptr %287, align 8, !tbaa !52
  %311 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %307, i32 noundef %310) #24
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %396, label %313

313:                                              ; preds = %309
  %314 = load i32, ptr %288, align 8, !tbaa !50
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %315
  %317 = load i64, ptr %316, align 8, !tbaa !44
  %318 = zext nneg i32 %307 to i64
  %319 = shl nuw i64 1, %318
  %320 = and i64 %317, %319
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %396, label %322

322:                                              ; preds = %313
  %323 = sext i32 %307 to i64
  %324 = load i32, ptr %287, align 8, !tbaa !52
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %323, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !30
  %328 = load ptr, ptr %296, align 8, !tbaa !30
  %329 = load i32, ptr %328, align 8
  %330 = lshr i32 %329, 16
  %331 = and i32 %330, 255
  %332 = zext nneg i32 %331 to i64
  %333 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %323, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !30
  %335 = icmp ugt i8 %327, %334
  br i1 %335, label %396, label %336

336:                                              ; preds = %322
  %337 = load i32, ptr %289, align 8, !tbaa !60
  %338 = icmp eq i32 %337, -1
  br i1 %338, label %361, label %339

339:                                              ; preds = %336
  %340 = sext i32 %337 to i64
  %341 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %340, i32 2
  %342 = load i32, ptr %341, align 8, !tbaa !50
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %343
  %345 = load i64, ptr %344, align 8, !tbaa !44
  %346 = and i64 %345, %319
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %396

348:                                              ; preds = %339
  %349 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %340, i32 14
  %350 = load i32, ptr %349, align 8, !tbaa !60
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %361, label %352

352:                                              ; preds = %348
  %353 = sext i32 %350 to i64
  %354 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %353, i32 2
  %355 = load i32, ptr %354, align 8, !tbaa !50
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %356
  %358 = load i64, ptr %357, align 8, !tbaa !44
  %359 = and i64 %358, %319
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %396

361:                                              ; preds = %352, %348, %336
  %362 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %323
  %363 = load i8, ptr %362, align 1, !tbaa !30
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %365, label %396

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.rtx_def, ptr %328, i64 0, i32 1, i32 0, i32 0, i64 1
  %367 = load i32, ptr %366, align 8, !tbaa !30
  %368 = icmp ult i32 %367, 53
  br i1 %368, label %392, label %369

369:                                              ; preds = %365
  %370 = load ptr, ptr @cfun, align 8, !tbaa !31
  %371 = getelementptr inbounds %struct.function, ptr %370, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !68
  %373 = load ptr, ptr %372, align 8, !tbaa !70
  %374 = getelementptr inbounds %struct.basic_block_def, ptr %373, i64 0, i32 9
  %375 = load i32, ptr %374, align 8, !tbaa !72
  %376 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %375) #25
  %377 = getelementptr inbounds %struct.df_lr_bb_info, ptr %376, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !74
  %379 = tail call i32 @bitmap_bit_p(ptr noundef %378, i32 noundef %367) #24
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %396

381:                                              ; preds = %369
  %382 = load ptr, ptr %296, align 8, !tbaa !30
  %383 = load i32, ptr %382, align 8
  %384 = lshr i32 %383, 16
  %385 = and i32 %384, 255
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %323, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !30
  %389 = icmp eq i8 %388, 1
  br i1 %389, label %390, label %396

390:                                              ; preds = %381
  %391 = load i32, ptr %287, align 8, !tbaa !52
  br label %392

392:                                              ; preds = %365, %390
  %393 = phi i32 [ %391, %390 ], [ %324, %365 ]
  %394 = tail call ptr @gen_rtx_REG(i32 noundef %393, i32 noundef %307) #24
  %395 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %21, i32 11
  store ptr %394, ptr %395, align 8, !tbaa !53
  br label %400

396:                                              ; preds = %290, %295, %301, %305, %309, %313, %322, %339, %352, %361, %369, %381
  %397 = getelementptr inbounds %struct.rtx_def, ptr %291, i64 0, i32 1, i32 0, i32 0, i64 1
  %398 = load ptr, ptr %397, align 8, !tbaa !30
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %290, !llvm.loop !187

400:                                              ; preds = %11, %50, %252, %274, %274, %396, %0, %282, %241, %260, %30, %26, %18, %20, %392
  ret void
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @elimination_target_reg_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @form_sum(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %62, %3
  %5 = phi ptr [ %1, %3 ], [ %63, %62 ]
  %6 = phi ptr [ %2, %3 ], [ %64, %62 ]
  %7 = load i32, ptr %5, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %0
  %11 = icmp eq i32 %9, 0
  %12 = or i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5348, ptr noundef nonnull @.str.1) #24
  br label %14

14:                                               ; preds = %4, %13
  %15 = load i32, ptr %6, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, %0
  %19 = icmp eq i32 %17, 0
  %20 = or i1 %18, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5349, ptr noundef nonnull @.str.1) #24
  br label %22

22:                                               ; preds = %14, %21
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !30
  %29 = tail call ptr @plus_constant(ptr noundef nonnull %6, i64 noundef %28) #24
  br label %109

30:                                               ; preds = %22
  %31 = load i32, ptr %6, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !30
  %37 = tail call ptr @plus_constant(ptr noundef nonnull %5, i64 noundef %36) #24
  br label %109

38:                                               ; preds = %30
  %39 = zext nneg i32 %24 to i64
  %40 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !35
  %42 = icmp eq i32 %41, 9
  %43 = select i1 %42, i32 %31, i32 %23
  %44 = select i1 %42, ptr %6, ptr %5
  %45 = select i1 %42, i32 %23, i32 %31
  %46 = select i1 %42, ptr %5, ptr %6
  %47 = and i32 %43, 65535
  %48 = icmp eq i32 %47, 49
  br i1 %48, label %49, label %65

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !30
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !35
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !30
  %61 = tail call ptr @form_sum(i32 noundef %0, ptr noundef nonnull %51, ptr noundef nonnull %46) #25
  br label %62

62:                                               ; preds = %58, %77
  %63 = phi ptr [ %60, %58 ], [ %80, %77 ]
  %64 = phi ptr [ %61, %58 ], [ %81, %77 ]
  br label %4

65:                                               ; preds = %49, %38
  %66 = and i32 %45, 65535
  %67 = icmp eq i32 %66, 49
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !30
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !35
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  %80 = tail call ptr @form_sum(i32 noundef %0, ptr noundef nonnull %44, ptr noundef %79) #25
  %81 = load ptr, ptr %69, align 8, !tbaa !30
  br label %62

82:                                               ; preds = %68, %65
  %83 = zext nneg i32 %47 to i64
  %84 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !35
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = zext nneg i32 %66 to i64
  %89 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !35
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = icmp eq i32 %47, 35
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !30
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi ptr [ %96, %94 ], [ %44, %92 ]
  %99 = icmp eq i32 %66, 35
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !30
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi ptr [ %102, %100 ], [ %46, %97 ]
  %105 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %98, ptr noundef %104) #24
  %106 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef 0, ptr noundef %105) #24
  br label %109

107:                                              ; preds = %87, %82
  %108 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %44, ptr noundef nonnull %46) #24
  br label %109

109:                                              ; preds = %107, %103, %34, %26
  %110 = phi ptr [ %29, %26 ], [ %37, %34 ], [ %106, %103 ], [ %108, %107 ]
  ret ptr %110
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subst_reloads(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %98

4:                                                ; preds = %1, %93
  %5 = phi i64 [ %94, %93 ], [ 0, %1 ]
  %6 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5
  %7 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !66
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %25) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load ptr, ptr %6, align 8, !tbaa !66
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = tail call zeroext i8 @label_is_jump_target_p(ptr noundef %32, ptr noundef nonnull %0) #24
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6285, ptr noundef nonnull @.str.1) #24
  br label %36

36:                                               ; preds = %13, %19, %23, %28, %35
  %37 = load i32, ptr %11, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !67
  %42 = icmp eq i32 %39, %41
  %43 = icmp eq i32 %41, 0
  %44 = or i1 %43, %42
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %11, i32 noundef %41) #25
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi ptr [ %46, %45 ], [ %11, %36 ]
  %49 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = icmp eq ptr %50, null
  br i1 %51, label %85, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %48, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 39
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 8, !tbaa !31
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !30
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store ptr %62, ptr %50, align 8, !tbaa !31
  br label %93

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !30
  %71 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = add i32 %72, %70
  %74 = zext nneg i32 %60 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !30
  %77 = zext i8 %76 to i32
  %78 = freeze i32 %73
  %79 = srem i32 %78, %77
  %80 = sub nsw i32 %78, %79
  %81 = load ptr, ptr %6, align 8, !tbaa !66
  store ptr %62, ptr %81, align 8, !tbaa !31
  %82 = load ptr, ptr %49, align 8, !tbaa !65
  %83 = load ptr, ptr %82, align 8, !tbaa !31
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %80, ptr %84, align 8, !tbaa !30
  br label %93

85:                                               ; preds = %52, %47
  %86 = load ptr, ptr %6, align 8, !tbaa !66
  store ptr %48, ptr %86, align 8, !tbaa !31
  br label %93

87:                                               ; preds = %4
  %88 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 18
  %89 = load i8, ptr %88, align 8
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6324, ptr noundef nonnull @.str.1) #24
  br label %93

93:                                               ; preds = %92, %87, %85, %68, %67
  %94 = add nuw nsw i64 %5, 1
  %95 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %4, label %98, !llvm.loop !188

98:                                               ; preds = %93, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reload_adjust_reg_for_mode(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %9 = tail call ptr @gen_rtx_REG(i32 noundef %1, i32 noundef %8) #24
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ %0, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_replacements(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !31
  store ptr %1, ptr %4, align 8, !tbaa !31
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6336, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i32, ptr @n_replacements, align 4, !tbaa !35
  call fastcc void @copy_replacements_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %10) #25
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @copy_replacements_1(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #16 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi i64 [ 0, %5 ], [ %37, %35 ]
  %10 = phi i32 [ %6, %5 ], [ %36, %35 ]
  %11 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9
  %12 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr @n_replacements, align 4, !tbaa !35
  %17 = sext i32 %10 to i64
  %18 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %17
  %19 = load ptr, ptr %11, align 8, !tbaa !66
  store ptr %19, ptr %18, align 8, !tbaa !66
  br label %27

20:                                               ; preds = %8
  %21 = load ptr, ptr %11, align 8, !tbaa !66
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = add nsw i32 %10, 1
  store i32 %24, ptr @n_replacements, align 4, !tbaa !35
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %25
  store ptr %1, ptr %26, align 8, !tbaa !66
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi i64 [ %17, %15 ], [ %25, %23 ]
  %29 = phi ptr [ %1, %15 ], [ null, %23 ]
  %30 = phi i32 [ %16, %15 ], [ %24, %23 ]
  %31 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !65
  %32 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 2
  %33 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 2
  %34 = load <2 x i32>, ptr %32, align 8, !tbaa !35
  store <2 x i32> %34, ptr %33, align 8, !tbaa !35
  br label %35

35:                                               ; preds = %27, %20
  %36 = phi i32 [ %10, %20 ], [ %30, %27 ]
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, %7
  br i1 %38, label %39, label %8, !llvm.loop !189

39:                                               ; preds = %35, %3
  %40 = load ptr, ptr %0, align 8, !tbaa !31
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !31
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !30
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %39
  %50 = load ptr, ptr %1, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %52 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %53 = zext i8 %47 to i64
  br label %54

54:                                               ; preds = %49, %78
  %55 = phi i64 [ %53, %49 ], [ %56, %78 ]
  %56 = add nsw i64 %55, -1
  %57 = getelementptr inbounds i8, ptr %45, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !30
  switch i8 %58, label %78 [
    i8 101, label %59
    i8 69, label %62
  ]

59:                                               ; preds = %54
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %51, i64 0, i64 %56
  %61 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  tail call fastcc void @copy_replacements_1(ptr noundef nonnull %60, ptr noundef nonnull %61, i32 noundef %2) #25
  br label %78

62:                                               ; preds = %54
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %51, i64 0, i64 %56
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  %65 = load i32, ptr %64, align 8, !tbaa !100
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  %69 = zext nneg i32 %65 to i64
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ %69, %67 ], [ %72, %70 ]
  %72 = add nsw i64 %71, -1
  %73 = load ptr, ptr %63, align 8, !tbaa !30
  %74 = getelementptr inbounds %struct.rtvec_def, ptr %73, i64 0, i32 1, i64 %72
  %75 = load ptr, ptr %68, align 8, !tbaa !30
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %72
  tail call fastcc void @copy_replacements_1(ptr noundef nonnull %74, ptr noundef nonnull %76, i32 noundef %2) #25
  %77 = icmp ugt i64 %71, 1
  br i1 %77, label %70, label %78, !llvm.loop !190

78:                                               ; preds = %70, %62, %54, %59
  %79 = icmp sgt i64 %55, 1
  br i1 %79, label %54, label %80, !llvm.loop !191

80:                                               ; preds = %78, %39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @move_replacements(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i64 [ 0, %5 ], [ %20, %19 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8
  %10 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %9, align 8, !tbaa !66
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  store ptr %1, ptr %9, align 8, !tbaa !66
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi ptr [ null, %16 ], [ %1, %7 ]
  store ptr %18, ptr %10, align 8, !tbaa !65
  br label %19

19:                                               ; preds = %17, %13
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %7, !llvm.loop !192

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_replacement(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %3
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %81

6:                                                ; preds = %1, %78
  %7 = phi ptr [ %79, %78 ], [ @replacements, %1 ]
  %8 = getelementptr inbounds %struct.replacement, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !63
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %10, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %78, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !66
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.replacement, ptr %7, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !67
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %105, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %12, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, %19
  br i1 %25, label %105, label %26

26:                                               ; preds = %21
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %28 = tail call ptr @gen_rtx_REG(i32 noundef %19, i32 noundef %27) #24
  br label %105

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.replacement, ptr %7, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load i32, ptr %12, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !31
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef %44) #25
  %46 = load i32, ptr %44, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !30
  %51 = tail call i32 @subreg_regno_offset(i32 noundef %45, i32 noundef %48, i32 noundef %50, i32 noundef %41) #24
  %52 = add i32 %51, %42
  %53 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %52) #24
  br label %105

54:                                               ; preds = %33
  %55 = lshr i32 %34, 16
  %56 = and i32 %55, 255
  %57 = load ptr, ptr %0, align 8, !tbaa !31
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %105, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load i32, ptr %64, align 8, !tbaa !30
  %66 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load i32, ptr %66, align 8, !tbaa !30
  %68 = add i32 %67, %65
  %69 = zext nneg i32 %60 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !30
  %72 = zext i8 %71 to i32
  %73 = freeze i32 %68
  %74 = srem i32 %73, %72
  %75 = sub nsw i32 %73, %74
  %76 = load ptr, ptr %63, align 8, !tbaa !30
  %77 = tail call ptr @gen_rtx_SUBREG(i32 noundef %60, ptr noundef %76, i32 noundef %75) #24
  br label %105

78:                                               ; preds = %6, %29
  %79 = getelementptr inbounds %struct.replacement, ptr %7, i64 1
  %80 = icmp ult ptr %79, %4
  br i1 %80, label %6, label %81, !llvm.loop !193

81:                                               ; preds = %78, %1
  %82 = load ptr, ptr %0, align 8, !tbaa !31
  %83 = load i32, ptr %82, align 8
  %84 = trunc i32 %83 to i16
  switch i16 %84, label %105 [
    i16 49, label %85
    i16 50, label %85
    i16 52, label %85
  ]

85:                                               ; preds = %81, %81, %81
  %86 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %87 = tail call ptr @find_replacement(ptr noundef nonnull %86) #25
  %88 = load ptr, ptr %0, align 8, !tbaa !31
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = tail call ptr @find_replacement(ptr noundef nonnull %89) #25
  %91 = load ptr, ptr %0, align 8, !tbaa !31
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !30
  %94 = icmp eq ptr %87, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !30
  %98 = icmp eq ptr %90, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %85, %95
  %100 = load i32, ptr %91, align 8
  %101 = and i32 %100, 65535
  %102 = lshr i32 %100, 16
  %103 = and i32 %102, 255
  %104 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %101, i32 noundef %103, ptr noundef %87, ptr noundef %90) #24
  br label %105

105:                                              ; preds = %81, %95, %54, %17, %21, %26, %62, %37, %99
  %106 = phi ptr [ %104, %99 ], [ %12, %54 ], [ %12, %17 ], [ %12, %21 ], [ %28, %26 ], [ %77, %62 ], [ %53, %37 ], [ %91, %95 ], [ %82, %81 ]
  ret ptr %106
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @refers_to_mem_for_reload_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %14 [
    i16 43, label %42
    i16 37, label %4
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %6 = icmp ugt i32 %5, 52
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  %8 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  br label %42

14:                                               ; preds = %1
  %15 = and i32 %2, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !30
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %14
  %24 = zext i8 %20 to i64
  br label %25

25:                                               ; preds = %23, %40
  %26 = phi i64 [ %24, %23 ], [ %27, %40 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds i8, ptr %18, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !30
  %30 = icmp eq i8 %29, 101
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %33) #25, !range !42
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25, %37
  %41 = icmp ugt i64 %26, 1
  br i1 %41, label %25, label %42, !llvm.loop !194

42:                                               ; preds = %37, %31, %40, %14, %4, %7, %1
  %43 = phi i32 [ 1, %1 ], [ 0, %4 ], [ %13, %7 ], [ 0, %14 ], [ 1, %37 ], [ 1, %31 ], [ 0, %40 ]
  ret i32 %43
}

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @true_regnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_renumbered_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @volatile_insn_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @regno_clobbered_p(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %0, 53
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7261, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %4, %6
  %8 = zext i32 %0 to i64
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !30
  %12 = zext i8 %11 to i32
  %13 = add i32 %12, %0
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 25
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = icmp eq i32 %3, 1
  %21 = icmp eq i32 %17, 23
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19, %7
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %65

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #25
  %31 = icmp uge i32 %30, %0
  %32 = icmp ult i32 %30, %13
  %33 = select i1 %31, i1 %32, i1 false
  %34 = zext i1 %33 to i32
  br label %65

35:                                               ; preds = %19
  %36 = icmp eq i32 %17, 15
  br i1 %36, label %37, label %65

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  %40 = load i32, ptr %39, align 8, !tbaa !100
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %65, label %42

42:                                               ; preds = %37
  %43 = zext nneg i32 %40 to i64
  br label %44

44:                                               ; preds = %42, %63
  %45 = phi i64 [ %43, %42 ], [ %46, %63 ]
  %46 = add nsw i64 %45, -1
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !31
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 25
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !30
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %54) #25
  %60 = icmp uge i32 %59, %0
  %61 = icmp ult i32 %59, %13
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %65, label %63

63:                                               ; preds = %44, %58, %52
  %64 = icmp ult i64 %45, 2
  br i1 %64, label %65, label %44, !llvm.loop !195

65:                                               ; preds = %58, %63, %37, %23, %35, %29
  %66 = phi i32 [ %34, %29 ], [ 0, %35 ], [ 0, %23 ], [ 0, %37 ], [ 1, %58 ], [ 0, %63 ]
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_reload_to_stream(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @stderr, align 8
  %4 = select i1 %2, ptr %3, ptr %0
  %5 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %142

7:                                                ; preds = %1, %136
  %8 = phi i64 [ %138, %136 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %9) #25
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !51
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef %19) #25
  %21 = load ptr, ptr %11, align 8, !tbaa !47
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %21, i32 noundef 24) #24
  %22 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %23

23:                                               ; preds = %14, %7
  %24 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !52
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef %32) #25
  %34 = load ptr, ptr %24, align 8, !tbaa !49
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %34, i32 noundef 24) #24
  %35 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %36

36:                                               ; preds = %27, %23
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !50
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef %41) #25
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !58
  %45 = sext i32 %44 to i64
  %46 = shl i64 %45, 2
  %47 = call ptr @llvm.load.relative.i64(ptr @reltable.debug_reload_to_stream, i64 %46)
  %48 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 12
  %49 = load i32, ptr %48, align 8, !tbaa !57
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %47, i32 noundef %49) #25
  %51 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 18
  %52 = load i8, ptr %51, align 8
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %36
  %56 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr %4)
  %57 = load i8, ptr %51, align 8
  br label %58

58:                                               ; preds = %55, %36
  %59 = phi i8 [ %57, %55 ], [ %52, %36 ]
  %60 = and i8 %59, 8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 10, i64 1, ptr %4)
  br label %64

64:                                               ; preds = %62, %58
  %65 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !54
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %66) #25
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i8, ptr %51, align 8
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 15, i64 1, ptr %4)
  %76 = load i8, ptr %51, align 8
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i8 [ %76, %74 ], [ %71, %70 ]
  %79 = and i8 %78, 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 20, i64 1, ptr %4)
  br label %83

83:                                               ; preds = %81, %77
  %84 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 17, i64 1, ptr %4)
  %89 = load ptr, ptr %84, align 8, !tbaa !55
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %89, i32 noundef 24) #24
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !56
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 18, i64 1, ptr %4)
  %96 = load ptr, ptr %91, align 8, !tbaa !56
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %96, i32 noundef 24) #24
  br label %97

97:                                               ; preds = %94, %90
  %98 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 11
  %99 = load ptr, ptr %98, align 8, !tbaa !53
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %4)
  %103 = load ptr, ptr %98, align 8, !tbaa !53
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %103, i32 noundef 24) #24
  br label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 13
  %106 = load i32, ptr %105, align 4, !tbaa !59
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.9, i32 noundef %106) #25
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ @.str.22, %108 ], [ @.str.9, %104 ]
  %112 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 14
  %113 = load i32, ptr %112, align 8, !tbaa !60
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull %111, i32 noundef %113) #25
  br label %117

117:                                              ; preds = %115, %110
  %118 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 15
  %119 = load i32, ptr %118, align 4, !tbaa !61
  %120 = icmp eq i32 %119, 2956
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = zext i32 %119 to i64
  %123 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !196
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef %124) #25
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi ptr [ @.str.22, %121 ], [ @.str.9, %117 ]
  %128 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 16
  %129 = load i32, ptr %128, align 8, !tbaa !62
  %130 = icmp eq i32 %129, 2956
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = zext i32 %129 to i64
  %133 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !196
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull %127, ptr noundef %134) #25
  br label %136

136:                                              ; preds = %131, %126
  %137 = tail call i32 @fputc(i32 10, ptr %4)
  %138 = add nuw nsw i64 %8, 1
  %139 = load i32, ptr @n_reloads, align 4, !tbaa !35
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %7, label %142, !llvm.loop !197

142:                                              ; preds = %136, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_reload() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !31
  tail call void @debug_reload_to_stream(ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !30
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #24
  store i32 %8, ptr %2, align 8, !tbaa !30
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @push_replacement(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #18 {
  %4 = load i32, ptr @replace_reloads, align 4, !tbaa !35
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @n_replacements, align 4, !tbaa !35
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @n_replacements, align 4, !tbaa !35
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9
  %11 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !63
  store ptr %0, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 1
  store ptr null, ptr %12, align 8, !tbaa !65
  %13 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 3
  store i32 %2, ptr %13, align 4, !tbaa !67
  br label %14

14:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_memloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = tail call ptr @eliminate_regs(ptr noundef %6, i32 noundef 0, ptr noundef null) #24
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = tail call zeroext i8 @rtx_varies_p(ptr noundef %9, i8 noundef zeroext 0) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @copy_rtx(ptr noundef %9) #24
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %16 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = tail call ptr @replace_equiv_address_nv(ptr noundef %18, ptr noundef %15) #24
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call ptr @adjust_address_1(ptr noundef %19, i32 noundef %22, i64 noundef 0, i32 noundef 0, i32 noundef 1) #24
  %24 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %25 = getelementptr inbounds ptr, ptr %24, i64 %4
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = tail call ptr @copy_rtx(ptr noundef %23) #24
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi ptr [ %29, %28 ], [ %23, %14 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_reg_equiv_alt_mem(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !31
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %12

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !llvm.loop !198

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = tail call i32 @rtx_equal_p(ptr noundef %15, ptr noundef %1) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %8, label %27

18:                                               ; preds = %8
  %19 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !31
  %20 = getelementptr inbounds ptr, ptr %19, i64 %4
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi ptr [ %21, %18 ], [ null, %2 ]
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef 3, ptr noundef %1, ptr noundef %23) #24
  %25 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !31
  %26 = getelementptr inbounds ptr, ptr %25, i64 %4
  store ptr %24, ptr %26, align 8, !tbaa !31
  br label %27

27:                                               ; preds = %12, %22
  ret void
}

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reloads_subreg_address(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #25
  %11 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = icmp eq ptr %14, null
  br i1 %15, label %225, label %16

16:                                               ; preds = %6
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %25 = getelementptr inbounds ptr, ptr %24, i64 %12
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = tail call i32 @offsettable_memref_p(ptr noundef %26) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %8, align 8, !tbaa !30
  br label %31

31:                                               ; preds = %29, %18, %16
  %32 = phi ptr [ %30, %29 ], [ %9, %18 ], [ %9, %16 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %33 = tail call fastcc ptr @make_memloc(ptr noundef %32, i32 noundef %10) #25
  store ptr %33, ptr %7, align 8, !tbaa !31
  br label %45

34:                                               ; preds = %23
  %35 = load i32, ptr @num_not_at_initial_offset, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %225, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %38 = load ptr, ptr %8, align 8, !tbaa !30
  %39 = tail call fastcc ptr @make_memloc(ptr noundef %38, i32 noundef %10) #25
  store ptr %39, ptr %7, align 8, !tbaa !31
  %40 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %41 = getelementptr inbounds ptr, ptr %40, i64 %12
  %42 = load ptr, ptr %41, align 8, !tbaa !31
  %43 = tail call i32 @rtx_equal_p(ptr noundef %39, ptr noundef %42) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %223

45:                                               ; preds = %31, %37
  %46 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %47 = load i32, ptr %0, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !30
  %53 = zext i8 %52 to i32
  %54 = load ptr, ptr %8, align 8, !tbaa !30
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !30
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !30
  %63 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  %65 = sext i32 %62 to i64
  %66 = tail call ptr @plus_constant(ptr noundef %64, i64 noundef %65) #24
  store ptr %66, ptr %63, align 8, !tbaa !30
  %67 = load i32, ptr %0, align 8
  %68 = and i32 %67, 16711680
  %69 = load i32, ptr %46, align 8
  %70 = and i32 %69, -16711681
  %71 = or disjoint i32 %70, %68
  store i32 %71, ptr %46, align 8
  %72 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !30
  %74 = icmp eq ptr %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %45
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !199
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call ptr @plus_constant(ptr noundef nonnull %77, i64 noundef %65) #24
  tail call void @set_mem_offset(ptr noundef nonnull %46, ptr noundef %80) #24
  %81 = load ptr, ptr %72, align 8, !tbaa !30
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %75, %79
  %84 = phi ptr [ %81, %79 ], [ %73, %75 ]
  %85 = getelementptr inbounds %struct.mem_attrs, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !200
  %87 = icmp eq ptr %86, null
  br i1 %87, label %125, label %103

88:                                               ; preds = %45, %79
  %89 = load i32, ptr %46, align 8
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %125, label %93

93:                                               ; preds = %88
  %94 = zext nneg i32 %91 to i64
  %95 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !30
  %97 = zext i8 %96 to i64
  %98 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %97) #24
  %99 = icmp eq ptr %98, null
  br i1 %99, label %125, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr %72, align 8, !tbaa !30
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %83, %100
  %104 = phi ptr [ %101, %100 ], [ %84, %83 ]
  %105 = getelementptr inbounds %struct.mem_attrs, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !200
  br label %117

107:                                              ; preds = %100
  %108 = load i32, ptr %46, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = icmp ne i32 %110, 1
  tail call void @llvm.assume(i1 %111)
  %112 = zext nneg i32 %110 to i64
  %113 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !30
  %115 = zext i8 %114 to i64
  %116 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %115) #24
  br label %117

117:                                              ; preds = %107, %103
  %118 = phi ptr [ %106, %103 ], [ %116, %107 ]
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !30
  %121 = zext i8 %52 to i64
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %121) #24
  tail call void @set_mem_size(ptr noundef nonnull %46, ptr noundef %124) #24
  br label %125

125:                                              ; preds = %88, %123, %117, %93, %83
  %126 = icmp ugt i8 %52, %60
  %127 = load ptr, ptr %63, align 8, !tbaa !30
  br i1 %126, label %128, label %162

128:                                              ; preds = %125
  %129 = load i32, ptr %127, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 49
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %134 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !30
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 30
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !30
  %142 = zext i8 %52 to i64
  %143 = srem i64 %141, %142
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %222

145:                                              ; preds = %139, %132
  %146 = load ptr, ptr %133, align 8, !tbaa !30
  %147 = load i32, ptr %146, align 8
  br label %148

148:                                              ; preds = %145, %128
  %149 = phi i32 [ %147, %145 ], [ %129, %128 ]
  %150 = phi ptr [ %146, %145 ], [ %127, %128 ]
  %151 = and i32 %149, 65535
  %152 = icmp eq i32 %151, 37
  br i1 %152, label %153, label %222

153:                                              ; preds = %148
  %154 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !201
  %155 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %150) #25
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %154, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !30
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %53, 3
  %161 = icmp ugt i32 %160, %159
  br i1 %161, label %222, label %162

162:                                              ; preds = %153, %125
  %163 = load i32, ptr %46, align 8
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  %166 = call fastcc i32 @find_reloads_address(i32 noundef %165, ptr noundef nonnull %7, ptr noundef %127, ptr noundef nonnull %63, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #25
  %167 = icmp eq i32 %62, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load ptr, ptr %7, align 8, !tbaa !31
  %170 = call i32 @rtx_equal_p(ptr noundef %169, ptr noundef nonnull %46) #24
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load ptr, ptr %7, align 8, !tbaa !31
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %10, ptr noundef %173) #25
  br label %174

174:                                              ; preds = %172, %168, %162
  %175 = icmp eq i32 %166, 0
  br i1 %175, label %176, label %205

176:                                              ; preds = %174
  %177 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %178 = getelementptr inbounds ptr, ptr %177, i64 %12
  %179 = load ptr, ptr %178, align 8, !tbaa !31
  %180 = icmp eq ptr %179, null
  br i1 %180, label %205, label %181

181:                                              ; preds = %176
  %182 = load i32, ptr %0, align 8
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !30
  %187 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !30
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.mem_attrs, ptr %188, i64 0, i32 5
  %192 = load i8, ptr %191, align 8, !tbaa !32
  br label %193

193:                                              ; preds = %181, %190
  %194 = phi i8 [ %192, %190 ], [ 0, %181 ]
  %195 = call i32 @strict_memory_address_addr_space_p(i32 noundef %184, ptr noundef %186, i8 noundef zeroext %194) #25, !range !34
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %193
  %198 = load ptr, ptr %7, align 8, !tbaa !31
  %199 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !30
  %201 = load i32, ptr %200, align 8
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = call i32 @push_reload(ptr noundef nonnull %200, ptr noundef null, ptr noundef nonnull %199, ptr noundef null, i32 noundef 13, i32 noundef %203, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #25
  br label %205

205:                                              ; preds = %197, %193, %176, %174
  %206 = load i32, ptr @replace_reloads, align 4, !tbaa !35
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %205
  %209 = sext i32 %2 to i64
  %210 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !31
  %212 = icmp eq ptr %211, %0
  br i1 %212, label %220, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr %8, align 8, !tbaa !30
  %215 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %214) #24
  %216 = call ptr @emit_insn_before(ptr noundef %215, ptr noundef %5) #24
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, -16711681
  %219 = or disjoint i32 %218, 917504
  store i32 %219, ptr %216, align 8
  br label %220

220:                                              ; preds = %213, %208, %205
  %221 = load ptr, ptr %7, align 8, !tbaa !31
  br label %223

222:                                              ; preds = %148, %153, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  br label %225

223:                                              ; preds = %37, %220
  %224 = phi ptr [ %0, %37 ], [ %221, %220 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  br label %225

225:                                              ; preds = %223, %222, %6, %34
  %226 = phi ptr [ %0, %34 ], [ %0, %6 ], [ %224, %223 ], [ %0, %222 ]
  ret ptr %226
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reloads_address_part(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !31
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !35
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %0, i32 noundef %2) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %0, align 8
  br label %29

23:                                               ; preds = %18, %15
  %24 = tail call ptr @force_const_mem(i32 noundef %3, ptr noundef nonnull %0) #24
  store ptr %24, ptr %8, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %8, ptr noundef %26, ptr noundef nonnull %25, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null) #25
  %28 = load ptr, ptr %8, align 8, !tbaa !31
  br label %65

29:                                               ; preds = %21, %7
  %30 = phi i32 [ %22, %21 ], [ %9, %7 ]
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !30
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !35
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %65

42:                                               ; preds = %33
  %43 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %35) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %34, align 8, !tbaa !30
  %47 = tail call i32 @ix86_preferred_reload_class(ptr noundef %46, i32 noundef %2) #24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45, %42
  %50 = load i32, ptr %0, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load ptr, ptr %34, align 8, !tbaa !30
  %54 = tail call ptr @force_const_mem(i32 noundef %52, ptr noundef %53) #24
  %55 = load i32, ptr %0, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !30
  %60 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %57, ptr noundef %59, ptr noundef %54) #24
  store ptr %60, ptr %8, align 8, !tbaa !31
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !30
  %64 = tail call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %61, ptr noundef %63, ptr noundef nonnull %62, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null) #25
  br label %65

65:                                               ; preds = %29, %33, %45, %49, %23
  %66 = phi ptr [ %0, %29 ], [ %0, %33 ], [ %0, %45 ], [ %60, %49 ], [ %28, %23 ]
  %67 = call i32 @push_reload(ptr noundef %66, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %0) unnamed_addr #8 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !40
  %8 = sext i16 %7 to i32
  %9 = icmp slt i16 %7, 0
  %10 = select i1 %9, i32 %0, i32 %8
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi i32 [ %0, %1 ], [ %10, %3 ]
  %13 = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %12) #25
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @subst_reg_equivs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = trunc i32 %3 to i16
  switch i16 %5, label %46 [
    i16 121, label %68
    i16 30, label %68
    i16 35, label %68
    i16 32, label %68
    i16 31, label %68
    i16 33, label %68
    i16 45, label %68
    i16 44, label %68
    i16 36, label %68
    i16 46, label %68
    i16 37, label %6
    i16 49, label %35
  ]

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i1 true, ptr @subst_reg_equivs_changed, align 4
  br label %68

14:                                               ; preds = %6
  %15 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %16 = getelementptr inbounds ptr, ptr %15, i64 %9
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = icmp ne ptr %17, null
  %19 = load i32, ptr @num_not_at_initial_offset, align 4
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %68

22:                                               ; preds = %14
  %23 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %7) #25
  %24 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %25 = getelementptr inbounds ptr, ptr %24, i64 %9
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = tail call i32 @rtx_equal_p(ptr noundef %23, ptr noundef %26) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %22
  store i1 true, ptr @subst_reg_equivs_changed, align 4
  %30 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %0) #24
  %31 = tail call ptr @emit_insn_before(ptr noundef %30, ptr noundef %1) #24
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, -16711681
  %34 = or disjoint i32 %33, 917504
  store i32 %34, ptr %31, align 8
  br label %68

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !31
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %68, label %46

46:                                               ; preds = %2, %35, %40
  %47 = zext nneg i32 %4 to i64
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !30
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %51 to i64
  br label %56

56:                                               ; preds = %53, %66
  %57 = phi i64 [ %55, %53 ], [ %58, %66 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !30
  %61 = icmp eq i8 %60, 101
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  %65 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %64, ptr noundef %1) #25
  store ptr %65, ptr %63, align 8, !tbaa !30
  br label %66

66:                                               ; preds = %56, %62
  %67 = icmp ugt i64 %57, 1
  br i1 %67, label %56, label %68, !llvm.loop !210

68:                                               ; preds = %66, %46, %29, %13, %14, %22, %40, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %69 = phi ptr [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %40 ], [ %11, %13 ], [ %23, %29 ], [ %0, %14 ], [ %0, %22 ], [ %0, %46 ], [ %0, %66 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @maybe_memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !31
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = tail call i32 @max_reg_num() #24
  %10 = tail call ptr @gen_rtx_REG(i32 noundef %8, i32 noundef %9) #24
  store ptr %10, ptr %3, align 8, !tbaa !31
  %11 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) #24
  store ptr %5, ptr %3, align 8, !tbaa !31
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_reloads_address_1(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  br label %13

13:                                               ; preds = %189, %9
  %14 = phi ptr [ %0, %9 ], [ %190, %189 ]
  %15 = phi i32 [ %1, %9 ], [ %191, %189 ]
  %16 = phi ptr [ %4, %9 ], [ %192, %189 ]
  %17 = phi i1 [ false, %9 ], [ true, %189 ]
  store ptr %14, ptr %10, align 8, !tbaa !31
  %18 = load i32, ptr %14, align 8
  %19 = icmp eq i32 %15, 1
  %20 = trunc i32 %18 to i16
  switch i16 %20, label %703 [
    i16 49, label %21
    i16 79, label %214
    i16 78, label %214
    i16 77, label %333
    i16 76, label %333
    i16 75, label %333
    i16 74, label %333
    i16 100, label %499
    i16 98, label %499
    i16 99, label %499
    i16 43, label %511
    i16 37, label %527
    i16 39, label %627
  ]

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = load i32, ptr %25, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %27, 39
  br i1 %30, label %31, label %53

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #25
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, ptr @word_mode, align 4, !tbaa !35
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #25
  %43 = lshr i32 %34, 16
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load i32, ptr %45, align 8, !tbaa !30
  %47 = lshr i32 %26, 16
  %48 = and i32 %47, 255
  %49 = tail call i32 @subreg_regno_offset(i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #24
  %50 = add i32 %49, %38
  %51 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %50) #24
  %52 = load i32, ptr %25, align 8
  br label %53

53:                                               ; preds = %31, %37, %40, %21
  %54 = phi i32 [ %52, %40 ], [ %28, %37 ], [ %28, %31 ], [ %28, %21 ]
  %55 = phi ptr [ %51, %40 ], [ %33, %37 ], [ %33, %31 ], [ %23, %21 ]
  %56 = phi i32 [ 37, %40 ], [ 37, %37 ], [ %35, %31 ], [ %27, %21 ]
  %57 = and i32 %54, 65535
  %58 = icmp eq i32 %57, 39
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !30
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %61) #25
  %67 = icmp ult i32 %66, 53
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = lshr i32 %62, 16
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load i32, ptr %71, align 8, !tbaa !30
  %73 = lshr i32 %54, 16
  %74 = and i32 %73, 255
  %75 = tail call i32 @subreg_regno_offset(i32 noundef %66, i32 noundef %70, i32 noundef %72, i32 noundef %74) #24
  %76 = add i32 %75, %66
  %77 = tail call ptr @gen_rtx_REG(i32 noundef %70, i32 noundef %76) #24
  br label %78

78:                                               ; preds = %59, %65, %68, %53
  %79 = phi ptr [ %77, %68 ], [ %61, %65 ], [ %61, %59 ], [ %25, %53 ]
  %80 = phi i32 [ 37, %68 ], [ 37, %65 ], [ %63, %59 ], [ %29, %53 ]
  %81 = freeze i32 %80
  br i1 %19, label %82, label %97

82:                                               ; preds = %78
  %83 = load i32, ptr %14, align 8
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = load ptr, ptr %22, align 8, !tbaa !30
  %87 = icmp eq i32 %6, 3
  %88 = icmp eq i32 %6, 5
  %89 = select i1 %88, i32 6, i32 %6
  %90 = select i1 %87, i32 4, i32 %89
  %91 = tail call fastcc i32 @find_reloads_address(i32 noundef %85, ptr noundef %16, ptr noundef %86, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %90, i32 noundef %7, ptr noundef %8) #25
  %92 = load ptr, ptr %16, align 8, !tbaa !31
  %93 = load i32, ptr %14, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = tail call i32 @push_reload(ptr noundef %92, ptr noundef null, ptr noundef nonnull %16, ptr noundef null, i32 noundef 11, i32 noundef %95, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

97:                                               ; preds = %78
  %98 = icmp eq i32 %81, 43
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = trunc i32 %56 to i16
  switch i16 %100, label %103 [
    i16 100, label %101
    i16 99, label %101
    i16 98, label %101
    i16 52, label %101
    i16 43, label %104
  ]

101:                                              ; preds = %99, %99, %99, %99, %97
  %102 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %23, i32 noundef 1, i32 noundef 49, i32 noundef 38, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

103:                                              ; preds = %99
  switch i32 %81, label %106 [
    i32 100, label %104
    i32 99, label %104
    i32 98, label %104
    i32 52, label %104
  ]

104:                                              ; preds = %99, %103, %103, %103, %103
  %105 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %23, i32 noundef 0, i32 noundef 49, i32 noundef %81, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

106:                                              ; preds = %103
  %107 = and i32 %56, 65534
  %108 = icmp eq i32 %107, 44
  br i1 %108, label %189, label %109

109:                                              ; preds = %106
  switch i16 %100, label %110 [
    i16 35, label %189
    i16 30, label %189
  ]

110:                                              ; preds = %109
  %111 = and i32 %81, 65534
  %112 = icmp eq i32 %111, 44
  br i1 %112, label %189, label %113

113:                                              ; preds = %110
  switch i32 %81, label %114 [
    i32 35, label %189
    i32 30, label %189
  ]

114:                                              ; preds = %113
  %115 = icmp eq i32 %56, 37
  %116 = icmp eq i32 %81, 37
  %117 = and i1 %115, %116
  br i1 %117, label %118, label %208

118:                                              ; preds = %114
  %119 = tail call fastcc i32 @rhs_regno(ptr noundef %79) #25
  %120 = icmp ult i32 %119, 7
  br i1 %120, label %135, label %121

121:                                              ; preds = %118
  %122 = zext i32 %119 to i64
  %123 = add nsw i64 %122, -37
  %124 = icmp ult i64 %123, 8
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %127 = getelementptr inbounds i16, ptr %126, i64 %122
  %128 = load i16, ptr %127, align 2, !tbaa !40
  %129 = icmp ult i16 %128, 7
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = sext i16 %128 to i64
  %132 = and i64 %131, 4294967295
  %133 = add nsw i64 %132, -37
  %134 = icmp ult i64 %133, 8
  br i1 %134, label %135, label %139

135:                                              ; preds = %130, %125, %121, %118
  %136 = tail call fastcc i32 @rhs_regno(ptr noundef %55) #25
  %137 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %136) #25
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %726

139:                                              ; preds = %135, %130
  %140 = tail call fastcc i32 @rhs_regno(ptr noundef %55) #25
  %141 = icmp ult i32 %140, 7
  br i1 %141, label %156, label %142

142:                                              ; preds = %139
  %143 = zext i32 %140 to i64
  %144 = add nsw i64 %143, -37
  %145 = icmp ult i64 %144, 8
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %148 = getelementptr inbounds i16, ptr %147, i64 %143
  %149 = load i16, ptr %148, align 2, !tbaa !40
  %150 = icmp ult i16 %149, 7
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = sext i16 %149 to i64
  %153 = and i64 %152, 4294967295
  %154 = add nsw i64 %153, -37
  %155 = icmp ult i64 %154, 8
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %146, %142, %139
  %157 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %119) #25
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %726

159:                                              ; preds = %156, %151
  %160 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %140) #25
  %161 = icmp eq i8 %160, 0
  %162 = xor i1 %161, true
  %163 = or i1 %162, %120
  %164 = select i1 %162, ptr %25, ptr %23
  %165 = select i1 %162, i32 1, i32 0
  %166 = select i1 %162, ptr %24, ptr %22
  br i1 %163, label %189, label %167

167:                                              ; preds = %159
  %168 = zext i32 %119 to i64
  %169 = add nsw i64 %168, -37
  %170 = icmp ult i64 %169, 8
  br i1 %170, label %189, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %173 = getelementptr inbounds i16, ptr %172, i64 %168
  %174 = load i16, ptr %173, align 2, !tbaa !40
  %175 = icmp ult i16 %174, 7
  br i1 %175, label %189, label %176

176:                                              ; preds = %171
  %177 = sext i16 %174 to i64
  %178 = and i64 %177, 4294967295
  %179 = add nsw i64 %178, -37
  %180 = icmp ult i64 %179, 8
  br i1 %180, label %189, label %181

181:                                              ; preds = %176
  %182 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %119) #25
  %183 = icmp eq i8 %182, 0
  %184 = xor i1 %183, true
  %185 = or i1 %184, %141
  %186 = select i1 %184, ptr %23, ptr %25
  %187 = select i1 %184, i32 1, i32 0
  %188 = select i1 %184, ptr %22, ptr %24
  br i1 %185, label %189, label %193

189:                                              ; preds = %181, %159, %193, %197, %201, %167, %171, %176, %110, %113, %113, %106, %109, %109, %101, %104, %206, %209, %212
  %190 = phi ptr [ %25, %101 ], [ %25, %104 ], [ %25, %206 ], [ %25, %209 ], [ %23, %212 ], [ %25, %109 ], [ %25, %109 ], [ %25, %106 ], [ %23, %113 ], [ %23, %113 ], [ %23, %110 ], [ %164, %159 ], [ %23, %176 ], [ %23, %171 ], [ %23, %167 ], [ %186, %181 ], [ %25, %201 ], [ %25, %197 ], [ %25, %193 ]
  %191 = phi i32 [ 0, %101 ], [ 1, %104 ], [ 1, %206 ], [ 0, %209 ], [ 0, %212 ], [ 0, %109 ], [ 0, %109 ], [ 0, %106 ], [ 0, %113 ], [ 0, %113 ], [ 0, %110 ], [ %165, %159 ], [ 0, %176 ], [ 0, %171 ], [ 0, %167 ], [ %187, %181 ], [ 0, %201 ], [ 0, %197 ], [ 0, %193 ]
  %192 = phi ptr [ %24, %101 ], [ %24, %104 ], [ %24, %206 ], [ %24, %209 ], [ %22, %212 ], [ %24, %109 ], [ %24, %109 ], [ %24, %106 ], [ %22, %113 ], [ %22, %113 ], [ %22, %110 ], [ %166, %159 ], [ %22, %176 ], [ %22, %171 ], [ %22, %167 ], [ %188, %181 ], [ %24, %201 ], [ %24, %197 ], [ %24, %193 ]
  br label %13

193:                                              ; preds = %181
  %194 = zext i32 %140 to i64
  %195 = add nsw i64 %194, -37
  %196 = icmp ult i64 %195, 8
  br i1 %196, label %189, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds i16, ptr %172, i64 %194
  %199 = load i16, ptr %198, align 2, !tbaa !40
  %200 = icmp ult i16 %199, 7
  br i1 %200, label %189, label %201

201:                                              ; preds = %197
  %202 = sext i16 %199 to i64
  %203 = and i64 %202, 4294967295
  %204 = add nsw i64 %203, -37
  %205 = icmp ult i64 %204, 8
  br i1 %205, label %189, label %206

206:                                              ; preds = %201
  %207 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %23, i32 noundef 0, i32 noundef 49, i32 noundef 37, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

208:                                              ; preds = %114
  br i1 %115, label %209, label %211

209:                                              ; preds = %208
  %210 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %23, i32 noundef 1, i32 noundef 49, i32 noundef 38, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

211:                                              ; preds = %208
  br i1 %116, label %212, label %726

212:                                              ; preds = %211
  %213 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %25, i32 noundef 1, i32 noundef 49, i32 noundef 38, ptr noundef nonnull %24, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

214:                                              ; preds = %13, %13
  %215 = and i32 %18, 65535
  %216 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !30
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 65535
  %220 = add nsw i32 %219, -49
  %221 = icmp ult i32 %220, 2
  br i1 %221, label %222, label %726

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !30
  %225 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !30
  %227 = icmp eq ptr %224, %226
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5673, ptr noundef nonnull @.str.1) #24
  br label %229

229:                                              ; preds = %222, %228
  %230 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1, i32 0, i32 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !30
  %232 = load i32, ptr %231, align 8
  %233 = trunc i32 %232 to i16
  switch i16 %233, label %253 [
    i16 37, label %234
    i16 49, label %251
  ]

234:                                              ; preds = %229
  %235 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %231) #25
  %236 = icmp ult i32 %235, 7
  br i1 %236, label %253, label %237

237:                                              ; preds = %234
  %238 = zext i32 %235 to i64
  %239 = add nsw i64 %238, -37
  %240 = icmp ult i64 %239, 8
  br i1 %240, label %253, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %243 = getelementptr inbounds i16, ptr %242, i64 %238
  %244 = load i16, ptr %243, align 2, !tbaa !40
  %245 = icmp ult i16 %244, 7
  br i1 %245, label %253, label %246

246:                                              ; preds = %241
  %247 = sext i16 %244 to i64
  %248 = and i64 %247, 4294967295
  %249 = add nsw i64 %248, -37
  %250 = icmp ult i64 %249, 8
  br i1 %250, label %253, label %251

251:                                              ; preds = %229, %246
  %252 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %231, i32 noundef 1, i32 noundef %215, i32 noundef 38, ptr noundef nonnull %230, i32 noundef %5, i32 noundef 9, i32 noundef %7, ptr noundef %8) #25
  br label %253

253:                                              ; preds = %229, %234, %237, %241, %246, %251
  %254 = load ptr, ptr %225, align 8, !tbaa !30
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 37
  br i1 %257, label %260, label %258

258:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5695, ptr noundef nonnull @.str.1) #24
  %259 = load ptr, ptr %225, align 8, !tbaa !30
  br label %260

260:                                              ; preds = %253, %258
  %261 = phi ptr [ %254, %253 ], [ %259, %258 ]
  %262 = tail call fastcc i32 @rhs_regno(ptr noundef %261) #25
  %263 = icmp slt i32 %262, 53
  br i1 %263, label %271, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %266 = zext nneg i32 %262 to i64
  %267 = getelementptr inbounds ptr, ptr %265, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !31
  %269 = icmp eq ptr %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5702, ptr noundef nonnull @.str.1) #24
  br label %271

271:                                              ; preds = %260, %264, %270
  %272 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %273 = sext i32 %262 to i64
  %274 = getelementptr inbounds ptr, ptr %272, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !31
  %276 = icmp eq ptr %275, null
  br i1 %276, label %317, label %277

277:                                              ; preds = %271
  %278 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %279 = getelementptr inbounds ptr, ptr %278, i64 %273
  %280 = load ptr, ptr %279, align 8, !tbaa !31
  %281 = icmp ne ptr %280, null
  %282 = load i32, ptr @num_not_at_initial_offset, align 4
  %283 = icmp ne i32 %282, 0
  %284 = select i1 %281, i1 true, i1 %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  %286 = load ptr, ptr %223, align 8, !tbaa !30
  %287 = tail call fastcc ptr @make_memloc(ptr noundef %286, i32 noundef %262) #25
  store ptr %287, ptr %11, align 8, !tbaa !31
  %288 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %289 = getelementptr inbounds ptr, ptr %288, i64 %273
  %290 = load ptr, ptr %289, align 8, !tbaa !31
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %294 = getelementptr inbounds ptr, ptr %293, i64 %273
  %295 = load ptr, ptr %294, align 8, !tbaa !31
  %296 = tail call i32 @rtx_equal_p(ptr noundef %287, ptr noundef %295) #24
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %292, %285
  %299 = load i32, ptr %287, align 8
  %300 = lshr i32 %299, 16
  %301 = and i32 %300, 255
  %302 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !30
  %304 = call fastcc i32 @find_reloads_address(i32 noundef %301, ptr noundef nonnull %11, ptr noundef %303, ptr noundef nonnull %302, i32 noundef %5, i32 noundef 9, i32 noundef %7, ptr noundef %8) #25
  %305 = load ptr, ptr %11, align 8, !tbaa !31
  %306 = call i32 @rtx_equal_p(ptr noundef %305, ptr noundef nonnull %287) #24
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %298
  %309 = load ptr, ptr %11, align 8, !tbaa !31
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %262, ptr noundef %309) #25
  br label %310

310:                                              ; preds = %308, %298
  %311 = load ptr, ptr %11, align 8, !tbaa !31
  %312 = load i32, ptr %14, align 8
  %313 = lshr i32 %312, 16
  %314 = and i32 %313, 255
  %315 = call i32 @push_reload(ptr noundef %311, ptr noundef %311, ptr noundef nonnull %223, ptr noundef nonnull %225, i32 noundef 13, i32 noundef %314, i32 noundef %314, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef 9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  br label %726

316:                                              ; preds = %292
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  br label %317

317:                                              ; preds = %316, %277, %271
  %318 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %319 = getelementptr inbounds i16, ptr %318, i64 %273
  %320 = load i16, ptr %319, align 2, !tbaa !40
  %321 = sext i16 %320 to i32
  %322 = icmp slt i16 %320, 0
  %323 = select i1 %322, i32 %262, i32 %321
  %324 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %323) #25
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %726

326:                                              ; preds = %317
  %327 = load i32, ptr %14, align 8
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  %330 = load ptr, ptr %225, align 8, !tbaa !30
  %331 = load ptr, ptr %223, align 8, !tbaa !30
  %332 = tail call i32 @push_reload(ptr noundef %330, ptr noundef %331, ptr noundef nonnull %225, ptr noundef nonnull %223, i32 noundef 13, i32 noundef %329, i32 noundef %329, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef 9) #25
  br label %726

333:                                              ; preds = %13, %13, %13, %13
  %334 = select i1 %19, i32 11, i32 13
  %335 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !30
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 37
  br i1 %339, label %340, label %726

340:                                              ; preds = %333
  %341 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %336) #25
  %342 = icmp slt i32 %341, 53
  br i1 %342, label %350, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %345 = zext nneg i32 %341 to i64
  %346 = getelementptr inbounds ptr, ptr %344, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !31
  %348 = icmp eq ptr %347, null
  br i1 %348, label %350, label %349

349:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5773, ptr noundef nonnull @.str.1) #24
  br label %350

350:                                              ; preds = %340, %343, %349
  %351 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %352 = sext i32 %341 to i64
  %353 = getelementptr inbounds ptr, ptr %351, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !31
  %355 = icmp eq ptr %354, null
  br i1 %355, label %398, label %356

356:                                              ; preds = %350
  %357 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %358 = getelementptr inbounds ptr, ptr %357, i64 %352
  %359 = load ptr, ptr %358, align 8, !tbaa !31
  %360 = icmp ne ptr %359, null
  %361 = load i32, ptr @num_not_at_initial_offset, align 4
  %362 = icmp ne i32 %361, 0
  %363 = select i1 %360, i1 true, i1 %362
  br i1 %363, label %364, label %398

364:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  %365 = load ptr, ptr %335, align 8, !tbaa !30
  %366 = tail call fastcc ptr @make_memloc(ptr noundef %365, i32 noundef %341) #25
  store ptr %366, ptr %12, align 8, !tbaa !31
  %367 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %368 = getelementptr inbounds ptr, ptr %367, i64 %352
  %369 = load ptr, ptr %368, align 8, !tbaa !31
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %364
  %372 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %373 = getelementptr inbounds ptr, ptr %372, i64 %352
  %374 = load ptr, ptr %373, align 8, !tbaa !31
  %375 = tail call i32 @rtx_equal_p(ptr noundef %366, ptr noundef %374) #24
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %396

377:                                              ; preds = %371, %364
  %378 = load i32, ptr %366, align 8
  %379 = lshr i32 %378, 16
  %380 = and i32 %379, 255
  %381 = getelementptr inbounds %struct.rtx_def, ptr %366, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !30
  %383 = call fastcc i32 @find_reloads_address(i32 noundef %380, ptr noundef nonnull %12, ptr noundef %382, ptr noundef nonnull %381, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  %384 = load ptr, ptr %12, align 8, !tbaa !31
  %385 = call i32 @rtx_equal_p(ptr noundef %384, ptr noundef nonnull %366) #24
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %377
  %388 = load ptr, ptr %12, align 8, !tbaa !31
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %341, ptr noundef %388) #25
  br label %389

389:                                              ; preds = %387, %377
  %390 = load i32, ptr %14, align 8
  %391 = and i32 %390, 65535
  %392 = lshr i32 %390, 16
  %393 = and i32 %392, 255
  %394 = load ptr, ptr %12, align 8, !tbaa !31
  %395 = call ptr @gen_rtx_fmt_e_stat(i32 noundef %391, i32 noundef %393, ptr noundef %394) #24
  store ptr %395, ptr %10, align 8, !tbaa !31
  br label %396

396:                                              ; preds = %389, %371
  %397 = phi ptr [ %395, %389 ], [ %14, %371 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  br label %398

398:                                              ; preds = %356, %396, %350
  %399 = phi ptr [ %14, %356 ], [ %397, %396 ], [ %14, %350 ]
  %400 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %401 = getelementptr inbounds i16, ptr %400, i64 %352
  %402 = load i16, ptr %401, align 2, !tbaa !40
  %403 = sext i16 %402 to i32
  %404 = icmp slt i16 %402, 0
  %405 = select i1 %404, i32 %341, i32 %403
  %406 = icmp sgt i32 %405, 52
  br i1 %406, label %427, label %407

407:                                              ; preds = %398
  %408 = icmp eq i32 %15, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %407
  %410 = call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %405) #25
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %427, label %726

412:                                              ; preds = %407
  %413 = icmp slt i32 %405, 7
  br i1 %413, label %726, label %414

414:                                              ; preds = %412
  %415 = zext nneg i32 %405 to i64
  %416 = add nsw i64 %415, -37
  %417 = icmp ult i64 %416, 8
  br i1 %417, label %726, label %418

418:                                              ; preds = %414
  %419 = getelementptr inbounds i16, ptr %400, i64 %415
  %420 = load i16, ptr %419, align 2, !tbaa !40
  %421 = icmp ult i16 %420, 7
  br i1 %421, label %726, label %422

422:                                              ; preds = %418
  %423 = sext i16 %420 to i64
  %424 = and i64 %423, 4294967295
  %425 = add nsw i64 %424, -37
  %426 = icmp ult i64 %425, 8
  br i1 %426, label %726, label %427

427:                                              ; preds = %422, %409, %398
  %428 = getelementptr inbounds %struct.rtx_def, ptr %399, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !30
  %430 = load i32, ptr %429, align 8
  %431 = and i32 %430, 65535
  %432 = icmp eq i32 %431, 43
  br i1 %432, label %438, label %433

433:                                              ; preds = %427
  %434 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %435 = sext i32 %405 to i64
  %436 = getelementptr inbounds ptr, ptr %434, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !31
  br label %438

438:                                              ; preds = %427, %433
  %439 = phi ptr [ %437, %433 ], [ %429, %427 ]
  %440 = load i32, ptr %399, align 8
  %441 = lshr i32 %440, 16
  %442 = and i32 %441, 255
  %443 = zext nneg i32 %442 to i64
  %444 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !211
  %446 = icmp eq ptr %8, null
  br i1 %446, label %485, label %447

447:                                              ; preds = %438
  %448 = load i32, ptr %8, align 8
  %449 = and i32 %448, 65535
  %450 = icmp eq i32 %449, 8
  %451 = icmp ne ptr %439, null
  %452 = select i1 %450, i1 %451, i1 false
  br i1 %452, label %453, label %485

453:                                              ; preds = %447
  %454 = load i32, ptr %439, align 8
  %455 = lshr i32 %454, 16
  %456 = and i32 %455, 255
  %457 = call i32 @memory_operand(ptr noundef nonnull %439, i32 noundef %456) #24
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %485, label %459

459:                                              ; preds = %453
  %460 = icmp eq i32 %445, 2956
  br i1 %460, label %479, label %461

461:                                              ; preds = %459
  %462 = sext i32 %445 to i64
  %463 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %462, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !27
  %465 = load ptr, ptr %464, align 8, !tbaa !213
  %466 = load i32, ptr %399, align 8
  %467 = lshr i32 %466, 16
  %468 = and i32 %467, 255
  %469 = call i32 %465(ptr noundef nonnull %439, i32 noundef %468) #24
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %479, label %471

471:                                              ; preds = %461
  %472 = getelementptr inbounds %struct.insn_operand_data, ptr %464, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !213
  %474 = load i32, ptr %399, align 8
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  %477 = call i32 %473(ptr noundef nonnull %439, i32 noundef %476) #24
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %471, %461, %459
  %480 = load ptr, ptr %428, align 8, !tbaa !30
  store ptr %480, ptr %10, align 8, !tbaa !31
  %481 = load i32, ptr %480, align 8
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  %484 = call i32 @push_reload(ptr noundef nonnull %480, ptr noundef nonnull %480, ptr noundef nonnull %335, ptr noundef nonnull %335, i32 noundef %334, i32 noundef %483, i32 noundef %483, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef 9) #25
  br label %726

485:                                              ; preds = %471, %453, %447, %438
  %486 = load i32, ptr %399, align 8
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 255
  %489 = call i32 @push_reload(ptr noundef nonnull %399, ptr noundef nonnull %399, ptr noundef %16, ptr noundef null, i32 noundef %334, i32 noundef %488, i32 noundef %488, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  %490 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %491 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 1
  %492 = load ptr, ptr %491, align 8, !tbaa !30
  %493 = load ptr, ptr %335, align 8, !tbaa !30
  %494 = call fastcc i32 @find_inc_amount(ptr noundef %492, ptr noundef %493) #25
  %495 = sext i32 %489 to i64
  %496 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %495, i32 7
  store i32 %494, ptr %496, align 4, !tbaa !54
  br label %726

497:                                              ; preds = %499, %726
  %498 = phi i32 [ %728, %726 ], [ %510, %499 ]
  ret i32 %498

499:                                              ; preds = %13, %13, %13
  %500 = and i32 %18, 65535
  %501 = select i1 %19, i32 11, i32 13
  %502 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !30
  %504 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %503, i32 noundef %15, i32 noundef %500, i32 noundef 38, ptr noundef nonnull %502, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  %505 = load i32, ptr %14, align 8
  %506 = lshr i32 %505, 16
  %507 = and i32 %506, 255
  %508 = tail call i32 @push_reload(ptr noundef nonnull %14, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %501, i32 noundef %507, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  %509 = xor i1 %17, true
  %510 = zext i1 %509 to i32
  br label %497

511:                                              ; preds = %13
  %512 = select i1 %19, i32 11, i32 13
  %513 = lshr i32 %18, 16
  %514 = and i32 %513, 255
  %515 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !30
  %517 = icmp eq i32 %6, 3
  %518 = icmp eq i32 %6, 5
  %519 = select i1 %518, i32 6, i32 %6
  %520 = select i1 %517, i32 4, i32 %519
  %521 = tail call fastcc i32 @find_reloads_address(i32 noundef %514, ptr noundef %16, ptr noundef %516, ptr noundef nonnull %515, i32 noundef %5, i32 noundef %520, i32 noundef %7, ptr noundef %8) #25
  %522 = load ptr, ptr %16, align 8, !tbaa !31
  %523 = load i32, ptr %14, align 8
  %524 = lshr i32 %523, 16
  %525 = and i32 %524, 255
  %526 = tail call i32 @push_reload(ptr noundef %522, ptr noundef null, ptr noundef nonnull %16, ptr noundef null, i32 noundef %512, i32 noundef %525, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

527:                                              ; preds = %13
  %528 = select i1 %19, i32 11, i32 13
  %529 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #25
  %530 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %531 = sext i32 %529 to i64
  %532 = getelementptr inbounds ptr, ptr %530, i64 %531
  %533 = load ptr, ptr %532, align 8, !tbaa !31
  %534 = icmp eq ptr %533, null
  br i1 %534, label %538, label %535

535:                                              ; preds = %527
  %536 = lshr i32 %18, 16
  %537 = and i32 %536, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %533, ptr noundef %16, i32 noundef %528, i32 noundef %537, i32 noundef %5, i32 noundef %6, i32 noundef %7) #25
  br label %726

538:                                              ; preds = %527
  %539 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !31
  %540 = getelementptr inbounds ptr, ptr %539, i64 %531
  %541 = load ptr, ptr %540, align 8, !tbaa !31
  %542 = icmp eq ptr %541, null
  br i1 %542, label %579, label %543

543:                                              ; preds = %538
  %544 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %545 = getelementptr inbounds ptr, ptr %544, i64 %531
  %546 = load ptr, ptr %545, align 8, !tbaa !31
  %547 = icmp ne ptr %546, null
  %548 = load i32, ptr @num_not_at_initial_offset, align 4
  %549 = icmp ne i32 %548, 0
  %550 = select i1 %547, i1 true, i1 %549
  br i1 %550, label %551, label %579

551:                                              ; preds = %543
  %552 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %14, i32 noundef %529) #25
  %553 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !31
  %554 = getelementptr inbounds ptr, ptr %553, i64 %531
  %555 = load ptr, ptr %554, align 8, !tbaa !31
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %563

557:                                              ; preds = %551
  %558 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !31
  %559 = getelementptr inbounds ptr, ptr %558, i64 %531
  %560 = load ptr, ptr %559, align 8, !tbaa !31
  %561 = tail call i32 @rtx_equal_p(ptr noundef %552, ptr noundef %560) #24
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %579

563:                                              ; preds = %557, %551
  store ptr %552, ptr %10, align 8, !tbaa !31
  %564 = load i32, ptr %552, align 8
  %565 = lshr i32 %564, 16
  %566 = and i32 %565, 255
  %567 = getelementptr inbounds %struct.rtx_def, ptr %552, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !30
  %569 = icmp eq i32 %6, 3
  %570 = icmp eq i32 %6, 5
  %571 = select i1 %570, i32 6, i32 %6
  %572 = select i1 %569, i32 4, i32 %571
  %573 = call fastcc i32 @find_reloads_address(i32 noundef %566, ptr noundef nonnull %10, ptr noundef %568, ptr noundef nonnull %567, i32 noundef %5, i32 noundef %572, i32 noundef %7, ptr noundef %8) #25
  %574 = load ptr, ptr %10, align 8, !tbaa !31
  %575 = call i32 @rtx_equal_p(ptr noundef %574, ptr noundef nonnull %552) #24
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %563
  %578 = load ptr, ptr %10, align 8, !tbaa !31
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %529, ptr noundef %578) #25
  br label %579

579:                                              ; preds = %557, %577, %563, %543, %538
  %580 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %581 = getelementptr inbounds i16, ptr %580, i64 %531
  %582 = load i16, ptr %581, align 2, !tbaa !40
  %583 = sext i16 %582 to i32
  %584 = icmp slt i16 %582, 0
  %585 = select i1 %584, i32 %529, i32 %583
  %586 = icmp sgt i32 %585, 52
  br i1 %586, label %607, label %587

587:                                              ; preds = %579
  %588 = icmp eq i32 %15, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %587
  %590 = call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %585) #25
  %591 = icmp eq i8 %590, 0
  br i1 %591, label %607, label %613

592:                                              ; preds = %587
  %593 = icmp slt i32 %585, 7
  br i1 %593, label %613, label %594

594:                                              ; preds = %592
  %595 = zext nneg i32 %585 to i64
  %596 = add nsw i64 %595, -37
  %597 = icmp ult i64 %596, 8
  br i1 %597, label %613, label %598

598:                                              ; preds = %594
  %599 = getelementptr inbounds i16, ptr %580, i64 %595
  %600 = load i16, ptr %599, align 2, !tbaa !40
  %601 = icmp ult i16 %600, 7
  br i1 %601, label %613, label %602

602:                                              ; preds = %598
  %603 = sext i16 %600 to i64
  %604 = and i64 %603, 4294967295
  %605 = add nsw i64 %604, -37
  %606 = icmp ult i64 %605, 8
  br i1 %606, label %613, label %607

607:                                              ; preds = %602, %589, %579
  %608 = load ptr, ptr %10, align 8, !tbaa !31
  %609 = load i32, ptr %608, align 8
  %610 = lshr i32 %609, 16
  %611 = and i32 %610, 255
  %612 = call i32 @push_reload(ptr noundef nonnull %608, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %528, i32 noundef %611, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

613:                                              ; preds = %602, %598, %594, %592, %589
  %614 = load ptr, ptr @this_insn, align 8, !tbaa !31
  %615 = load ptr, ptr %10, align 8, !tbaa !31
  %616 = load i32, ptr %615, align 8
  %617 = lshr i32 %616, 16
  %618 = and i32 %617, 255
  %619 = call i32 @regno_clobbered_p(i32 noundef %585, ptr noundef %614, i32 noundef %618, i32 noundef 0) #25
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %726, label %621

621:                                              ; preds = %613
  %622 = load ptr, ptr %10, align 8, !tbaa !31
  %623 = load i32, ptr %622, align 8
  %624 = lshr i32 %623, 16
  %625 = and i32 %624, 255
  %626 = call i32 @push_reload(ptr noundef nonnull %622, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %528, i32 noundef %625, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

627:                                              ; preds = %13
  %628 = select i1 %19, i32 11, i32 13
  %629 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !30
  %631 = load i32, ptr %630, align 8
  %632 = and i32 %631, 65535
  %633 = icmp eq i32 %632, 37
  br i1 %633, label %634, label %703

634:                                              ; preds = %627
  %635 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %630) #25
  %636 = icmp ult i32 %635, 53
  br i1 %636, label %637, label %664

637:                                              ; preds = %634
  %638 = tail call i32 @subreg_regno(ptr noundef nonnull %14) #24
  %639 = icmp eq i32 %15, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %637
  %641 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %638) #25
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %659, label %703

643:                                              ; preds = %637
  %644 = icmp slt i32 %638, 7
  br i1 %644, label %703, label %645

645:                                              ; preds = %643
  %646 = zext nneg i32 %638 to i64
  %647 = add nsw i64 %646, -37
  %648 = icmp ult i64 %647, 8
  br i1 %648, label %703, label %649

649:                                              ; preds = %645
  %650 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %651 = getelementptr inbounds i16, ptr %650, i64 %646
  %652 = load i16, ptr %651, align 2, !tbaa !40
  %653 = icmp ult i16 %652, 7
  br i1 %653, label %703, label %654

654:                                              ; preds = %649
  %655 = sext i16 %652 to i64
  %656 = and i64 %655, 4294967295
  %657 = add nsw i64 %656, -37
  %658 = icmp ult i64 %657, 8
  br i1 %658, label %703, label %659

659:                                              ; preds = %654, %640
  %660 = load i32, ptr %14, align 8
  %661 = lshr i32 %660, 16
  %662 = and i32 %661, 255
  %663 = tail call i32 @push_reload(ptr noundef nonnull %14, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %628, i32 noundef %662, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

664:                                              ; preds = %634
  %665 = tail call i32 @reg_classes_intersect_p(i32 noundef %628, i32 noundef 13) #24
  %666 = icmp eq i32 %665, 0
  %667 = load ptr, ptr %629, align 8, !tbaa !30
  %668 = load i32, ptr %667, align 8
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  br i1 %666, label %671, label %678

671:                                              ; preds = %664
  %672 = zext nneg i32 %670 to i64
  %673 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %672
  %674 = load i8, ptr %673, align 1, !tbaa !30
  %675 = and i8 %674, -2
  %676 = icmp eq i8 %675, 10
  %677 = select i1 %676, i32 2, i32 1
  br label %687

678:                                              ; preds = %664
  %679 = icmp eq i32 %670, 40
  br i1 %679, label %687, label %680

680:                                              ; preds = %678
  %681 = zext nneg i32 %670 to i64
  %682 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !30
  %684 = zext i8 %683 to i32
  %685 = add nuw nsw i32 %684, 3
  %686 = lshr i32 %685, 2
  br label %687

687:                                              ; preds = %680, %678, %671
  %688 = phi i32 [ %677, %671 ], [ %686, %680 ], [ 3, %678 ]
  %689 = zext nneg i32 %628 to i64
  %690 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !35
  %692 = icmp ugt i32 %688, %691
  br i1 %692, label %693, label %703

693:                                              ; preds = %687
  %694 = icmp eq i32 %6, 3
  %695 = icmp eq i32 %6, 5
  %696 = select i1 %695, i32 6, i32 %6
  %697 = select i1 %694, i32 4, i32 %696
  %698 = tail call fastcc ptr @find_reloads_subreg_address(ptr noundef nonnull %14, i32 noundef 0, i32 noundef %5, i32 noundef %697, i32 noundef %7, ptr noundef %8) #25
  %699 = load i32, ptr %698, align 8
  %700 = lshr i32 %699, 16
  %701 = and i32 %700, 255
  %702 = tail call i32 @push_reload(ptr noundef nonnull %698, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %628, i32 noundef %701, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

703:                                              ; preds = %13, %687, %654, %649, %645, %643, %640, %627
  %704 = and i32 %18, 65535
  %705 = zext nneg i32 %704 to i64
  %706 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %705
  %707 = load ptr, ptr %706, align 8, !tbaa !31
  %708 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %705
  %709 = load i8, ptr %708, align 1, !tbaa !30
  %710 = icmp eq i8 %709, 0
  br i1 %710, label %726, label %711

711:                                              ; preds = %703
  %712 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %713 = zext i8 %709 to i64
  br label %714

714:                                              ; preds = %711, %724
  %715 = phi i64 [ %713, %711 ], [ %716, %724 ]
  %716 = add nsw i64 %715, -1
  %717 = getelementptr inbounds i8, ptr %707, i64 %716
  %718 = load i8, ptr %717, align 1, !tbaa !30
  %719 = icmp eq i8 %718, 101
  br i1 %719, label %720, label %724

720:                                              ; preds = %714
  %721 = getelementptr inbounds [1 x %union.rtunion_def], ptr %712, i64 0, i64 %716
  %722 = load ptr, ptr %721, align 8, !tbaa !30
  %723 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %722, i32 noundef %15, i32 noundef %704, i32 noundef 38, ptr noundef nonnull %721, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %724

724:                                              ; preds = %714, %720
  %725 = icmp ugt i64 %715, 1
  br i1 %725, label %714, label %726, !llvm.loop !214

726:                                              ; preds = %156, %135, %211, %724, %703, %479, %485, %621, %607, %535, %613, %82, %693, %214, %326, %310, %659, %333, %409, %412, %414, %418, %422, %317, %511
  %727 = phi i32 [ 1, %693 ], [ 1, %511 ], [ 0, %317 ], [ 0, %409 ], [ 0, %412 ], [ 0, %414 ], [ 0, %418 ], [ 0, %422 ], [ 0, %333 ], [ 1, %659 ], [ 0, %310 ], [ 0, %214 ], [ 0, %326 ], [ 1, %82 ], [ 0, %613 ], [ 1, %535 ], [ 1, %607 ], [ 1, %621 ], [ 1, %485 ], [ 0, %479 ], [ 0, %703 ], [ 0, %724 ], [ 0, %211 ], [ 0, %135 ], [ 0, %156 ]
  %728 = select i1 %17, i32 0, i32 %727
  br label %497
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @subst_indexed_address(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 49
  br i1 %4, label %5, label %99

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %15 = icmp sgt i32 %14, 52
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !40
  %21 = icmp slt i16 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %24 = getelementptr inbounds ptr, ptr %23, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %22, %16, %13, %5
  %28 = load i32, ptr %9, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %33 = icmp sgt i32 %32, 52
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %36 = zext nneg i32 %32 to i64
  %37 = getelementptr inbounds i16, ptr %35, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !40
  %39 = icmp slt i16 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !31
  %42 = getelementptr inbounds ptr, ptr %41, i64 %36
  %43 = load ptr, ptr %42, align 8, !tbaa !31
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %40, %34, %31, %27
  %46 = icmp eq i32 %11, 49
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %7) #25
  %49 = icmp eq ptr %48, %7
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, ptr %9, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi i32 [ %51, %50 ], [ %28, %45 ]
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 49
  br i1 %55, label %56, label %99

56:                                               ; preds = %52
  %57 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %9) #25
  %58 = icmp eq ptr %57, %9
  br i1 %58, label %99, label %59

59:                                               ; preds = %56, %47, %40, %22
  %60 = phi ptr [ %25, %22 ], [ %7, %40 ], [ %48, %47 ], [ %7, %56 ]
  %61 = phi ptr [ %9, %22 ], [ %43, %40 ], [ %9, %47 ], [ %57, %56 ]
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 49
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %60, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 49
  br i1 %68, label %69, label %92

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %71 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !30
  %73 = load ptr, ptr %70, align 8, !tbaa !30
  br label %80

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %76 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !30
  %78 = load ptr, ptr %75, align 8, !tbaa !30
  %79 = icmp eq ptr %77, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %69, %74
  %81 = phi ptr [ %61, %69 ], [ %77, %74 ]
  %82 = phi ptr [ %72, %69 ], [ %78, %74 ]
  %83 = phi ptr [ %73, %69 ], [ %60, %74 ]
  %84 = load i32, ptr %0, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = tail call ptr @form_sum(i32 noundef %86, ptr noundef %82, ptr noundef nonnull %81) #25
  br label %88

88:                                               ; preds = %80, %74
  %89 = phi ptr [ %83, %80 ], [ %60, %74 ]
  %90 = phi ptr [ %87, %80 ], [ %78, %74 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %65, %88
  %93 = phi ptr [ %90, %88 ], [ %61, %65 ]
  %94 = phi ptr [ %89, %88 ], [ %60, %65 ]
  %95 = load i32, ptr %0, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = tail call ptr @form_sum(i32 noundef %97, ptr noundef %94, ptr noundef nonnull %93) #25
  br label %99

99:                                               ; preds = %1, %88, %92, %52, %56
  %100 = phi ptr [ %0, %56 ], [ %0, %52 ], [ %98, %92 ], [ %89, %88 ], [ %0, %1 ]
  ret ptr %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #8 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = add nsw i64 %4, -37
  %6 = icmp ult i64 %5, 8
  %7 = and i32 %0, -5
  %8 = icmp eq i32 %7, 16
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !31
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !40
  %14 = icmp ult i16 %13, 8
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = sext i16 %13 to i64
  %17 = and i64 %16, 4294967295
  %18 = add nsw i64 %17, -37
  %19 = icmp ult i64 %18, 8
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %10, %15, %3, %1
  %22 = phi i8 [ 1, %3 ], [ 1, %1 ], [ 1, %10 ], [ %20, %15 ]
  ret i8 %22
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_inc_amount(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65534
  %11 = add nsw i32 %10, -74
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = lshr i32 %3, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !30
  %23 = zext i8 %22 to i32
  br label %88

24:                                               ; preds = %6
  %25 = icmp eq i32 %10, 78
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 49
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !30
  %37 = icmp eq ptr %34, %36
  %38 = icmp eq ptr %34, %1
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !30
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  br label %88

51:                                               ; preds = %13, %40, %32, %26, %24, %2
  %52 = zext nneg i32 %4 to i64
  %53 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !30
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %88, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %60 = zext i8 %56 to i64
  br label %61

61:                                               ; preds = %58, %86
  %62 = phi i64 [ %60, %58 ], [ %63, %86 ]
  %63 = add nsw i64 %62, -1
  %64 = getelementptr inbounds i8, ptr %54, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !30
  switch i8 %65, label %86 [
    i8 101, label %66
    i8 69, label %71
  ]

66:                                               ; preds = %61
  %67 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !30
  %69 = tail call fastcc i32 @find_inc_amount(ptr noundef %68, ptr noundef %1) #25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %88

71:                                               ; preds = %61
  %72 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %63
  %73 = load ptr, ptr %72, align 8, !tbaa !30
  %74 = load i32, ptr %73, align 8, !tbaa !100
  %75 = zext i32 %74 to i64
  br label %76

76:                                               ; preds = %80, %71
  %77 = phi i64 [ %81, %80 ], [ %75, %71 ]
  %78 = trunc i64 %77 to i32
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = add nsw i64 %77, -1
  %82 = getelementptr inbounds %struct.rtvec_def, ptr %73, i64 0, i32 1, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !31
  %84 = tail call fastcc i32 @find_inc_amount(ptr noundef %83, ptr noundef %1) #25
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %76, label %88, !llvm.loop !215

86:                                               ; preds = %76, %61, %66
  %87 = icmp sgt i64 %62, 1
  br i1 %87, label %61, label %88, !llvm.loop !216

88:                                               ; preds = %66, %86, %80, %51, %17, %46
  %89 = phi i32 [ %23, %17 ], [ %50, %46 ], [ 0, %51 ], [ %84, %80 ], [ %69, %66 ], [ 0, %86 ]
  ret i32 %89
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"secondary_reload_info", !7, i64 0, !7, i64 4, !10, i64 8, !7, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!13, !10, i64 1728}
!13 = !{!"gcc_target", !14, i64 0, !16, i64 368, !17, i64 664, !7, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !10, i64 864, !10, i64 872, !10, i64 880, !10, i64 888, !10, i64 896, !10, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !18, i64 1064, !18, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !10, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !10, i64 1160, !10, i64 1168, !19, i64 1176, !10, i64 1232, !10, i64 1240, !10, i64 1248, !10, i64 1256, !10, i64 1264, !10, i64 1272, !10, i64 1280, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !10, i64 1448, !10, i64 1456, !18, i64 1464, !20, i64 1472, !10, i64 1664, !10, i64 1672, !10, i64 1680, !10, i64 1688, !10, i64 1696, !10, i64 1704, !10, i64 1712, !10, i64 1720, !10, i64 1728, !10, i64 1736, !10, i64 1744, !10, i64 1752, !10, i64 1760, !10, i64 1768, !10, i64 1776, !21, i64 1784, !22, i64 1792, !23, i64 1896, !24, i64 1968, !10, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!14 = !{!"asm_out", !10, i64 0, !10, i64 8, !10, i64 16, !15, i64 24, !15, i64 56, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360}
!15 = !{!"asm_int_op", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!16 = !{!"sched", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!17 = !{!"vectorize", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!18 = !{!"long", !8, i64 0}
!19 = !{!"addr_space", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!20 = !{!"calls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184}
!21 = !{!"c", !10, i64 0}
!22 = !{!"cxx", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!23 = !{!"emutls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !8, i64 64, !8, i64 65}
!24 = !{!"target_option_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!25 = !{!26, !8, i64 32}
!26 = !{!"insn_data", !10, i64 0, !8, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35}
!27 = !{!26, !10, i64 24}
!28 = !{!29, !10, i64 8}
!29 = !{!"insn_operand_data", !10, i64 0, !10, i64 8, !7, i64 16, !8, i64 18, !8, i64 19}
!30 = !{!8, !8, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!33, !8, i64 32}
!33 = !{!"mem_attrs", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !8, i64 32}
!34 = !{i32 0, i32 256}
!35 = !{!7, !7, i64 0}
!36 = !{!13, !10, i64 1200}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!13, !10, i64 1184}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !8, i64 0}
!42 = !{i32 0, i32 2}
!43 = !{i32 -2147483648, i32 27}
!44 = !{!18, !18, i64 0}
!45 = !{i8 0, i8 2}
!46 = distinct !{!46, !38}
!47 = !{!48, !10, i64 0}
!48 = !{!"reload", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !10, i64 40, !10, i64 48, !7, i64 56, !10, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 96, !7, i64 96, !7, i64 96}
!49 = !{!48, !10, i64 8}
!50 = !{!48, !7, i64 16}
!51 = !{!48, !7, i64 20}
!52 = !{!48, !7, i64 24}
!53 = !{!48, !10, i64 64}
!54 = !{!48, !7, i64 36}
!55 = !{!48, !10, i64 40}
!56 = !{!48, !10, i64 48}
!57 = !{!48, !7, i64 72}
!58 = !{!48, !7, i64 92}
!59 = !{!48, !7, i64 76}
!60 = !{!48, !7, i64 80}
!61 = !{!48, !7, i64 84}
!62 = !{!48, !7, i64 88}
!63 = !{!64, !7, i64 16}
!64 = !{!"replacement", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20}
!65 = !{!64, !10, i64 8}
!66 = !{!64, !10, i64 0}
!67 = !{!64, !7, i64 20}
!68 = !{!69, !10, i64 8}
!69 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !10, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!70 = !{!71, !10, i64 0}
!71 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!72 = !{!73, !7, i64 80}
!73 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !10, i64 48, !10, i64 56, !8, i64 64, !18, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!74 = !{!75, !10, i64 24}
!75 = !{!"df_lr_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = distinct !{!79, !38}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !38}
!83 = distinct !{!83, !38}
!84 = distinct !{!84, !38}
!85 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 4, !35, i64 20, i64 4, !35}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = distinct !{!92, !38}
!93 = !{!94, !7, i64 8}
!94 = !{!"param_info", !10, i64 0, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 20, !10, i64 24}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = !{!101, !7, i64 0}
!101 = !{!"rtvec_def", !7, i64 0, !8, i64 8}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38}
!105 = !{!106, !7, i64 16}
!106 = !{!"dataflow", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!107 = !{!106, !10, i64 8}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
!111 = !{i64 0, i64 240, !30, i64 240, i64 240, !30, i64 480, i64 240, !30, i64 720, i64 120, !30, i64 840, i64 120, !30, i64 960, i64 112, !30, i64 1072, i64 14, !30, i64 1086, i64 1, !30, i64 1087, i64 1, !30, i64 1088, i64 1, !30, i64 1089, i64 30, !30, i64 1120, i64 8, !31}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38}
!114 = distinct !{!114, !38}
!115 = !{!116, !7, i64 0}
!116 = !{!"decomposition", !7, i64 0, !7, i64 4, !10, i64 8, !18, i64 16, !18, i64 24}
!117 = !{!116, !18, i64 16}
!118 = !{!116, !18, i64 24}
!119 = !{!116, !7, i64 4}
!120 = !{i64 0, i64 8, !31, i64 8, i64 8, !44, i64 16, i64 8, !44}
!121 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!122 = !{i64 0, i64 8, !44}
!123 = !{!116, !10, i64 8}
!124 = !{!125, !8, i64 1086}
!125 = !{!"recog_data", !8, i64 0, !8, i64 240, !8, i64 480, !8, i64 720, !8, i64 840, !8, i64 960, !8, i64 1072, !8, i64 1086, !8, i64 1087, !8, i64 1088, !8, i64 1089, !10, i64 1120}
!126 = !{!125, !8, i64 1088}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38}
!133 = !{!13, !10, i64 1008}
!134 = distinct !{!134, !38}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = !{!125, !8, i64 1087}
!142 = distinct !{!142, !38}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{!145, !38}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{!148, !38}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, !38}
!151 = !{!29, !8, i64 18}
!152 = distinct !{!152, !38}
!153 = distinct !{!153, !38}
!154 = distinct !{!154, !38}
!155 = distinct !{!155, !38}
!156 = distinct !{!156, !38}
!157 = !{!26, !8, i64 33}
!158 = distinct !{!158, !38}
!159 = distinct !{!159, !38}
!160 = distinct !{!160, !38}
!161 = distinct !{!161, !38}
!162 = distinct !{!162, !38}
!163 = distinct !{!163, !38}
!164 = distinct !{!164, !38}
!165 = distinct !{!165, !38}
!166 = distinct !{!166, !38}
!167 = distinct !{!167, !38}
!168 = distinct !{!168, !38}
!169 = !{!48, !7, i64 28}
!170 = !{!48, !7, i64 32}
!171 = distinct !{!171, !38}
!172 = distinct !{!172, !38, !173, !174}
!173 = !{!"llvm.loop.isvectorized", i32 1}
!174 = !{!"llvm.loop.unroll.runtime.disable"}
!175 = distinct !{!175, !38}
!176 = distinct !{!176, !38}
!177 = distinct !{!177, !38}
!178 = distinct !{!178, !38}
!179 = distinct !{!179, !38}
!180 = distinct !{!180, !38}
!181 = distinct !{!181, !38}
!182 = distinct !{!182, !38}
!183 = distinct !{!183, !38}
!184 = distinct !{!184, !38}
!185 = distinct !{!185, !38}
!186 = distinct !{!186, !38}
!187 = distinct !{!187, !38}
!188 = distinct !{!188, !38}
!189 = distinct !{!189, !38}
!190 = distinct !{!190, !38}
!191 = distinct !{!191, !38}
!192 = distinct !{!192, !38}
!193 = distinct !{!193, !38}
!194 = distinct !{!194, !38}
!195 = distinct !{!195, !38}
!196 = !{!26, !10, i64 0}
!197 = distinct !{!197, !38}
!198 = distinct !{!198, !38}
!199 = !{!33, !10, i64 8}
!200 = !{!33, !10, i64 16}
!201 = !{!202, !10, i64 88}
!202 = !{!"rtl_data", !203, i64 0, !204, i64 40, !205, i64 96, !206, i64 112, !208, i64 208, !209, i64 248, !7, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !18, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !10, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!203 = !{!"expr_status", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!204 = !{!"emit_status", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !10, i64 48}
!205 = !{!"varasm_status", !10, i64 0, !7, i64 8}
!206 = !{!"incoming_args", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !207, i64 24, !10, i64 88}
!207 = !{!"ix86_args", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60}
!208 = !{!"function_subsections", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!209 = !{!"rtl_eh", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !8, i64 48}
!210 = distinct !{!210, !38}
!211 = !{!212, !7, i64 0}
!212 = !{!"optab_handlers", !7, i64 0}
!213 = !{!29, !10, i64 0}
!214 = distinct !{!214, !38}
!215 = distinct !{!215, !38}
!216 = distinct !{!216, !38}
