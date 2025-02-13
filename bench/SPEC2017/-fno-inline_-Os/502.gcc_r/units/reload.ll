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
define dso_local i32 @secondary_reload_class(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !173 {
  %5 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  store i32 2956, ptr %5, align 8, !tbaa !174
  %6 = getelementptr inbounds %struct.secondary_reload_info, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !180
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !181
  %8 = call i32 %7(i8 noundef zeroext %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #24
  %9 = load i32, ptr %5, align 8, !tbaa !174
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
define dso_local i32 @scratch_reload_class(i32 noundef %0) local_unnamed_addr #0 !prof !173 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 4
  %4 = load i8, ptr %3, align 8, !tbaa !194
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 554, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %9, i64 2, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = load i8, ptr %11, align 1, !tbaa !199
  %13 = icmp eq i8 %12, 61
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 556, ptr noundef nonnull @.str.1) #24
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds i8, ptr %11, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !199
  %18 = icmp eq i8 %17, 38
  %19 = getelementptr inbounds i8, ptr %11, i64 2
  %20 = select i1 %18, ptr %19, ptr %16
  %21 = load i8, ptr %20, align 1, !tbaa !199
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
define dso_local ptr @get_secondary_mem(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !173 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !199
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !199
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
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %16
  %24 = getelementptr inbounds [87 x ptr], ptr @secondary_memlocs, i64 0, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !200
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = zext i32 %17 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !199
  %31 = zext i8 %30 to i64
  %32 = tail call ptr @assign_stack_local(i32 noundef %17, i64 noundef %31, i32 noundef 0) #24
  store ptr %32, ptr %24, align 8, !tbaa !200
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi ptr [ %32, %27 ], [ %25, %23 ]
  %35 = tail call ptr @eliminate_regs(ptr noundef %34, i32 noundef 0, ptr noundef null) #24
  store ptr %35, ptr %5, align 8, !tbaa !200
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !199
  %38 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !199
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !201
  br label %44

44:                                               ; preds = %33, %41
  %45 = phi i8 [ %43, %41 ], [ 0, %33 ]
  %46 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %17, ptr noundef %37, i8 noundef zeroext %45) #25, !range !203
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load ptr, ptr %24, align 8, !tbaa !200
  %50 = icmp eq ptr %35, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call ptr @copy_rtx(ptr noundef nonnull %35) #24
  store ptr %52, ptr %5, align 8, !tbaa !200
  br label %53

53:                                               ; preds = %48, %51
  %54 = phi ptr [ %35, %48 ], [ %52, %51 ]
  %55 = icmp eq i32 %3, 0
  %56 = icmp eq i32 %3, 1
  %57 = select i1 %56, i32 5, i32 9
  %58 = select i1 %55, i32 3, i32 %57
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !199
  %61 = call fastcc i32 @find_reloads_address(i32 noundef %17, ptr noundef nonnull %5, ptr noundef %60, ptr noundef nonnull %59, i32 noundef %2, i32 noundef %58, i32 noundef 0, ptr noundef null) #25
  %62 = load ptr, ptr %5, align 8, !tbaa !200
  br label %63

63:                                               ; preds = %44, %53
  %64 = phi ptr [ %35, %44 ], [ %62, %53 ]
  store ptr %64, ptr %20, align 8, !tbaa !200
  %65 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !204
  %66 = icmp sgt i32 %65, %17
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = add nsw i32 %17, 1
  store i32 %68, ptr @secondary_memlocs_elim_used, align 4, !tbaa !204
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
define dso_local i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !205 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !206
  %5 = tail call zeroext i8 %4(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %2) #24
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_reloads_address(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 !prof !207 !PGOFuncName !208 {
  %9 = alloca ptr, align 8
  %10 = icmp ne ptr %1, null
  br i1 %10, label %11, label %19, !prof !209

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !200
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !199
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !210

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !201
  br label %19

19:                                               ; preds = %8, %16, %11
  %20 = phi i8 [ %18, %16 ], [ 0, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %141, !prof !211

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %26 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !200
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !212

31:                                               ; preds = %24
  %32 = lshr i32 %21, 16
  %33 = and i32 %32, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %29, ptr noundef %3, i32 noundef 13, i32 noundef %33, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  br label %419

34:                                               ; preds = %24
  %35 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %36 = getelementptr inbounds ptr, ptr %35, i64 %27
  %37 = load ptr, ptr %36, align 8, !tbaa !200
  store ptr %37, ptr %9, align 8, !tbaa !200
  %38 = icmp eq ptr %37, null
  br i1 %38, label %126, label %39, !prof !212

39:                                               ; preds = %34
  %40 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %41 = getelementptr inbounds ptr, ptr %40, i64 %27
  %42 = load ptr, ptr %41, align 8, !tbaa !200
  %43 = icmp ne ptr %42, null
  %44 = load i32, ptr @num_not_at_initial_offset, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %135

47:                                               ; preds = %39
  %48 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %2, i32 noundef %25) #25
  store ptr %48, ptr %9, align 8, !tbaa !200
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !199
  %54 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !199
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 5
  %59 = load i8, ptr %58, align 8, !tbaa !201
  br label %60

60:                                               ; preds = %47, %57
  %61 = phi i8 [ %59, %57 ], [ 0, %47 ]
  %62 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %51, ptr noundef %53, i8 noundef zeroext %61) #25, !range !203
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, ptr %48, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = load ptr, ptr %52, align 8, !tbaa !199
  %69 = icmp eq i32 %5, 3
  %70 = icmp eq i32 %5, 5
  %71 = select i1 %70, i32 6, i32 %5
  %72 = select i1 %69, i32 4, i32 %71
  %73 = call fastcc i32 @find_reloads_address(i32 noundef %67, ptr noundef nonnull %9, ptr noundef %68, ptr noundef nonnull %52, i32 noundef %4, i32 noundef %72, i32 noundef %6, ptr noundef %7) #25
  %74 = load ptr, ptr %9, align 8, !tbaa !200
  %75 = call i32 @rtx_equal_p(ptr noundef %74, ptr noundef nonnull %48) #24
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr %9, align 8, !tbaa !200
  br i1 %76, label %78, label %80

78:                                               ; preds = %64
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %25, ptr noundef %77) #25
  %79 = load ptr, ptr %9, align 8, !tbaa !200
  br label %80

80:                                               ; preds = %64, %78, %60
  %81 = phi ptr [ %77, %64 ], [ %79, %78 ], [ %48, %60 ]
  %82 = icmp sgt i32 %6, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %80
  %84 = call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %81, i8 noundef zeroext %20) #25, !range !203
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %9, align 8, !tbaa !200
  br i1 %85, label %135, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !199
  %90 = load i32, ptr %89, align 8
  %91 = trunc i32 %90 to i16
  switch i16 %91, label %135 [
    i16 37, label %107
    i16 49, label %92
  ]

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !199
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %135

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !199
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !204
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %107, label %135

107:                                              ; preds = %87, %98
  %108 = load i32, ptr @replace_reloads, align 4, !tbaa !204
  %109 = icmp ne i32 %108, 0
  %110 = load i32, ptr @num_not_at_initial_offset, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %419

113:                                              ; preds = %107
  %114 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %115 = getelementptr inbounds ptr, ptr %114, i64 %27
  %116 = load ptr, ptr %115, align 8, !tbaa !200
  %117 = call i32 @rtx_equal_p(ptr noundef nonnull %86, ptr noundef %116) #24
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %419

119:                                              ; preds = %113
  %120 = load ptr, ptr %9, align 8, !tbaa !200
  store ptr %120, ptr %3, align 8, !tbaa !200
  %121 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %2) #24
  %122 = call ptr @emit_insn_before(ptr noundef %121, ptr noundef %7) #24
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, -16711681
  %125 = or disjoint i32 %124, 917504
  store i32 %125, ptr %122, align 8
  br label %419

126:                                              ; preds = %34
  %127 = icmp slt i32 %25, 53
  br i1 %127, label %128, label %135, !prof !212

128:                                              ; preds = %126
  %129 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %25) #25
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %135, label %131, !prof !213

131:                                              ; preds = %128
  %132 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %133 = tail call i32 @regno_clobbered_p(i32 noundef %25, ptr noundef %132, i32 noundef %0, i32 noundef 0) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %419, label %135, !prof !212

135:                                              ; preds = %80, %83, %92, %98, %87, %126, %128, %131, %39
  %136 = phi ptr [ %2, %39 ], [ %2, %131 ], [ %2, %128 ], [ %2, %126 ], [ %86, %87 ], [ %86, %98 ], [ %86, %92 ], [ %86, %83 ], [ %81, %80 ]
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = call i32 @push_reload(ptr noundef nonnull %136, ptr noundef null, ptr noundef %3, ptr noundef null, i32 noundef 13, i32 noundef %139, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #25
  br label %419

141:                                              ; preds = %19
  %142 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %20) #25, !range !203
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %173, label %144, !prof !214

144:                                              ; preds = %141
  %145 = load i32, ptr %2, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 49
  br i1 %147, label %148, label %167, !prof !215

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !199
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 30
  br i1 %153, label %154, label %167, !prof !216

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !199
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 37
  br i1 %159, label %160, label %167, !prof !217

160:                                              ; preds = %154
  %161 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %162 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %156) #25
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !200
  %166 = icmp eq ptr %165, null
  br i1 %166, label %419, label %167, !prof !218

167:                                              ; preds = %160, %154, %148, %144
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %168 = tail call fastcc ptr @subst_reg_equivs(ptr noundef nonnull %2, ptr noundef %7) #25
  store ptr %168, ptr %3, align 8, !tbaa !200
  %169 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %169, label %170, label %419, !prof !219

170:                                              ; preds = %167
  %171 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %20) #25, !range !203
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %419

173:                                              ; preds = %170, %141
  %174 = load i32, ptr %2, align 8
  %175 = and i32 %174, 65535
  %176 = icmp ne i32 %175, 61
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !200
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
  store ptr %184, ptr %9, align 8, !tbaa !200
  %187 = load i32, ptr %184, align 8
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  %190 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !199
  %192 = icmp eq i32 %5, 3
  %193 = icmp eq i32 %5, 5
  %194 = select i1 %193, i32 6, i32 %5
  %195 = select i1 %192, i32 4, i32 %194
  %196 = icmp eq i32 %6, 0
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 1)
  %198 = call fastcc i32 @find_reloads_address(i32 noundef %189, ptr noundef nonnull %9, ptr noundef %191, ptr noundef nonnull %190, i32 noundef %4, i32 noundef %195, i32 noundef %197, ptr noundef %7) #25
  %199 = load ptr, ptr %9, align 8, !tbaa !200
  %200 = icmp ne ptr %199, %184
  %201 = and i1 %10, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %186
  %203 = load ptr, ptr %1, align 8, !tbaa !200
  %204 = call ptr @copy_rtx(ptr noundef %203) #24
  store ptr %204, ptr %1, align 8, !tbaa !200
  %205 = load ptr, ptr %9, align 8, !tbaa !200
  %206 = getelementptr inbounds %struct.rtx_def, ptr %204, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !199
  call void @copy_replacements(ptr noundef %205, ptr noundef %207) #25
  %208 = load ptr, ptr %1, align 8, !tbaa !200
  %209 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  br i1 %176, label %213, label %210

210:                                              ; preds = %202
  %211 = load ptr, ptr %209, align 8, !tbaa !200
  %212 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  br label %213

213:                                              ; preds = %202, %210, %186
  %214 = phi ptr [ %212, %210 ], [ %209, %202 ], [ %183, %186 ]
  %215 = load ptr, ptr %9, align 8, !tbaa !200
  br i1 %196, label %241, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !199
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
  %231 = load ptr, ptr %230, align 8, !tbaa !199
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 37
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !199
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
  %249 = load ptr, ptr %248, align 8, !tbaa !199
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
  %258 = load ptr, ptr %257, align 8, !tbaa !199
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
  %268 = load ptr, ptr %1, align 8, !tbaa !200
  %269 = tail call ptr @copy_rtx(ptr noundef %268) #24
  store ptr %269, ptr %1, align 8, !tbaa !200
  %270 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  br i1 %176, label %274, label %271

271:                                              ; preds = %267
  %272 = load ptr, ptr %270, align 8, !tbaa !200
  %273 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1
  br label %274

274:                                              ; preds = %267, %271, %266
  %275 = phi ptr [ %273, %271 ], [ %270, %267 ], [ %183, %266 ]
  %276 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !199
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %274
  %279 = tail call ptr @copy_rtx(ptr noundef nonnull %184) #24
  store ptr %279, ptr %275, align 8, !tbaa !200
  %280 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !199
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
  %300 = load ptr, ptr %291, align 8, !tbaa !199
  %301 = load ptr, ptr %292, align 8, !tbaa !199
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
  %311 = load ptr, ptr %310, align 8, !tbaa !199
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
  %332 = load ptr, ptr %331, align 8, !tbaa !199
  %333 = tail call fastcc i32 @maybe_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %184, i8 noundef zeroext %20, ptr noundef nonnull %331) #25
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %365

335:                                              ; preds = %329
  %336 = load ptr, ptr %292, align 8, !tbaa !199
  %337 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %338 = load i64, ptr %337, align 8, !tbaa !199
  %339 = tail call ptr @plus_constant(ptr noundef nonnull %311, i64 noundef %338) #24
  %340 = load ptr, ptr %291, align 8, !tbaa !199
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
  store ptr %350, ptr %183, align 8, !tbaa !200
  %351 = getelementptr inbounds %struct.rtx_def, ptr %350, i64 0, i32 1
  %352 = getelementptr inbounds [1 x %union.rtunion_def], ptr %351, i64 0, i64 %295
  %353 = load ptr, ptr %352, align 8, !tbaa !199
  %354 = load i32, ptr %350, align 8
  %355 = lshr i32 %354, 16
  %356 = and i32 %355, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef %353, ptr noundef nonnull %352, i32 noundef 13, i32 noundef %356, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  %357 = getelementptr inbounds [1 x %union.rtunion_def], ptr %351, i64 0, i64 %330
  %358 = load ptr, ptr %357, align 8, !tbaa !199
  %359 = load i32, ptr %350, align 8
  %360 = and i32 %359, 65535
  %361 = load ptr, ptr %352, align 8, !tbaa !199
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %358, i32 noundef 1, i32 noundef %360, i32 noundef %363, ptr noundef nonnull %357, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %7) #25
  br label %419

365:                                              ; preds = %293, %305, %299, %315, %308, %318, %329
  br i1 %294, label %293, label %366, !llvm.loop !220

366:                                              ; preds = %365
  store ptr %184, ptr %9, align 8, !tbaa !200
  %367 = load i32, ptr %184, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 49
  br i1 %369, label %370, label %383

370:                                              ; preds = %366
  %371 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %184) #25
  store ptr %371, ptr %9, align 8, !tbaa !200
  %372 = icmp eq ptr %371, %184
  br i1 %372, label %383, label %373

373:                                              ; preds = %370
  %374 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %371, i8 noundef zeroext %20) #25, !range !203
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %373
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %377 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %371, ptr noundef %7) #25
  store ptr %377, ptr %9, align 8, !tbaa !200
  %378 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %377, i8 noundef zeroext %20) #25, !range !203
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %379, %376
  store ptr %377, ptr %183, align 8, !tbaa !200
  br label %419

383:                                              ; preds = %366, %379, %373, %370
  %384 = load i32, ptr %184, align 8
  %385 = and i32 %384, 65535
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !204
  %389 = icmp eq i32 %388, 9
  br i1 %389, label %390, label %417

390:                                              ; preds = %383
  %391 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %184, i8 noundef zeroext %20) #25, !range !203
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %417

393:                                              ; preds = %390
  %394 = load i32, ptr %184, align 8
  %395 = lshr i32 %394, 16
  %396 = and i32 %395, 255
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %393
  %399 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !222
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
  %408 = load ptr, ptr %1, align 8, !tbaa !200
  %409 = tail call ptr @copy_rtx(ptr noundef %408) #24
  store ptr %409, ptr %1, align 8, !tbaa !200
  %410 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1
  br i1 %176, label %414, label %411

411:                                              ; preds = %407
  %412 = load ptr, ptr %410, align 8, !tbaa !200
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
define dso_local void @clear_secondary_mem() local_unnamed_addr #3 !prof !223 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @secondary_memlocs, i8 0, i64 696, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @push_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 !prof !224 {
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %12, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  store i32 2956, ptr %13, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #23
  store i32 2956, ptr %14, align 4, !tbaa !204
  %15 = icmp eq i32 %5, 0
  %16 = icmp ne ptr %0, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %22, !prof !225

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
  br i1 %26, label %27, label %31, !prof !226

27:                                               ; preds = %22
  %28 = load i32, ptr %1, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %30, %27 ], [ %6, %22 ]
  %33 = icmp eq ptr %0, null
  br i1 %33, label %53, label %34, !prof !227

34:                                               ; preds = %31
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %53, !prof !228

38:                                               ; preds = %34
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %40 = icmp slt i32 %39, 53
  br i1 %40, label %53, label %41, !prof !229

41:                                               ; preds = %38
  %42 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %43 = zext nneg i32 %39 to i64
  %44 = getelementptr inbounds i16, ptr %42, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !230
  %46 = icmp sgt i16 %45, -1
  br i1 %46, label %53, label %47, !prof !229

47:                                               ; preds = %41
  %48 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %49 = getelementptr inbounds ptr, ptr %48, i64 %43
  %50 = load ptr, ptr %49, align 8, !tbaa !200
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !232

52:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #24
  br label %53

53:                                               ; preds = %52, %47, %41, %38, %34, %31
  br i1 %25, label %54, label %96, !prof !227

54:                                               ; preds = %53
  %55 = load i32, ptr %1, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %73, !prof !233

58:                                               ; preds = %54
  %59 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %60 = icmp slt i32 %59, 53
  br i1 %60, label %73, label %61, !prof !234

61:                                               ; preds = %58
  %62 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %63 = zext nneg i32 %59 to i64
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !230
  %66 = icmp sgt i16 %65, -1
  br i1 %66, label %73, label %67, !prof !229

67:                                               ; preds = %61
  %68 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %69 = getelementptr inbounds ptr, ptr %68, i64 %63
  %70 = load ptr, ptr %69, align 8, !tbaa !200
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72, !prof !232

72:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #24
  br label %73

73:                                               ; preds = %72, %67, %61, %58, %54
  br i1 %16, label %74, label %267, !prof !235

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
  %83 = load ptr, ptr %82, align 8, !tbaa !199
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
  %88 = load ptr, ptr %87, align 8, !tbaa !199
  %89 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %88) #24
  store ptr %89, ptr %12, align 8, !tbaa !200
  br label %96

90:                                               ; preds = %81, %81, %81
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !199
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !199
  %95 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %1, ptr noundef %94) #24
  br label %99

96:                                               ; preds = %53, %86
  %97 = phi ptr [ %89, %86 ], [ %0, %53 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %258, label %99, !prof !236

99:                                               ; preds = %90, %81, %78, %74, %96
  %100 = phi ptr [ %1, %96 ], [ %1, %81 ], [ %95, %90 ], [ %1, %78 ], [ %1, %74 ]
  %101 = phi ptr [ %97, %96 ], [ %0, %81 ], [ %0, %90 ], [ %0, %78 ], [ %0, %74 ]
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 39
  br i1 %104, label %105, label %227, !prof !237

105:                                              ; preds = %99
  %106 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %101) #24
  %107 = icmp ne i32 %7, 0
  %108 = or i32 %106, %7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %227, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !199
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %115, i32 noundef %23, i32 noundef %4) #24
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %227

118:                                              ; preds = %110
  %119 = load ptr, ptr %111, align 8, !tbaa !199
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !204
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
  %139 = load i8, ptr %138, align 1, !tbaa !199
  %140 = lshr i32 %120, 16
  %141 = and i32 %140, 255
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !199
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
  %158 = load i8, ptr %157, align 1, !tbaa !199
  %159 = icmp ult i8 %158, 5
  br i1 %159, label %160, label %176

160:                                              ; preds = %155
  %161 = load ptr, ptr %111, align 8, !tbaa !199
  %162 = load i32, ptr %161, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !199
  %168 = icmp ugt i8 %167, 4
  br i1 %168, label %169, label %176

169:                                              ; preds = %160
  %170 = lshr i8 %167, 2
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %161) #25
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %172, i64 %165
  %174 = load i8, ptr %173, align 1, !tbaa !199
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
  %184 = load ptr, ptr %111, align 8, !tbaa !199
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %4, i32 noundef %187, ptr noundef nonnull %184) #25
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %206, label %190

190:                                              ; preds = %183, %180
  %191 = load ptr, ptr %111, align 8, !tbaa !199
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
  %203 = load i32, ptr %202, align 4, !tbaa !204
  %204 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %200, i32 noundef %23, i32 noundef %203) #24
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %227, label %206

206:                                              ; preds = %198, %183, %176, %169, %136, %118
  %207 = load ptr, ptr %111, align 8, !tbaa !200
  store ptr %207, ptr %12, align 8, !tbaa !200
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 43
  br i1 %210, label %211, label %223

211:                                              ; preds = %206
  %212 = lshr i32 %208, 16
  %213 = and i32 %212, 255
  %214 = zext nneg i32 %213 to i64
  %215 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !199
  %217 = zext i32 %23 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !199
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
  %232 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef nonnull %228, i32 noundef %230, i32 noundef 0) #25, !range !238
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %258, label %234, !prof !239

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !199
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 37
  br i1 %239, label %240, label %254

240:                                              ; preds = %234
  %241 = lshr i32 %237, 16
  %242 = and i32 %241, 255
  %243 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %236) #25
  %244 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1, i32 0, i32 0, i64 1
  %245 = load i32, ptr %244, align 8, !tbaa !199
  %246 = load i32, ptr %228, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = tail call i32 @subreg_regno_offset(i32 noundef %243, i32 noundef %242, i32 noundef %245, i32 noundef %248) #24
  %250 = load ptr, ptr %235, align 8, !tbaa !199
  %251 = tail call fastcc i32 @rhs_regno(ptr noundef %250) #25
  %252 = tail call fastcc i32 @find_valid_class(i32 noundef %230, i32 noundef %242, i32 noundef %249, i32 noundef %251) #25, !range !240
  %253 = load ptr, ptr %235, align 8, !tbaa !199
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
  br i1 %266, label %429, label %267, !prof !241

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
  br i1 %277, label %278, label %390, !prof !242

278:                                              ; preds = %267
  %279 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %269) #24
  %280 = icmp ne i32 %7, 0
  %281 = or i32 %279, %7
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %390, label %283

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !199
  %286 = load i32, ptr %285, align 8
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %288, i32 noundef %32, i32 noundef %4) #24
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %390

291:                                              ; preds = %283
  %292 = load ptr, ptr %284, align 8, !tbaa !199
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 65535
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !204
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
  %310 = load i8, ptr %309, align 1, !tbaa !199
  %311 = lshr i32 %293, 16
  %312 = and i32 %311, 255
  %313 = zext nneg i32 %312 to i64
  %314 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !199
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
  %324 = load i8, ptr %323, align 1, !tbaa !199
  %325 = icmp ult i8 %324, 5
  br i1 %325, label %326, label %339

326:                                              ; preds = %321
  %327 = lshr i32 %293, 16
  %328 = and i32 %327, 255
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !199
  %332 = icmp ugt i8 %331, 4
  br i1 %332, label %333, label %339

333:                                              ; preds = %326
  %334 = lshr i8 %331, 2
  %335 = zext nneg i32 %319 to i64
  %336 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %335, i64 %329
  %337 = load i8, ptr %336, align 1, !tbaa !199
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
  %347 = load ptr, ptr %284, align 8, !tbaa !199
  %348 = load i32, ptr %347, align 8
  %349 = lshr i32 %348, 16
  %350 = and i32 %349, 255
  %351 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %4, i32 noundef %350, ptr noundef nonnull %347) #25
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %369, label %353

353:                                              ; preds = %346, %343
  %354 = load ptr, ptr %284, align 8, !tbaa !199
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
  %366 = load i32, ptr %365, align 4, !tbaa !204
  %367 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %363, i32 noundef %32, i32 noundef %366) #24
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %390, label %369

369:                                              ; preds = %361, %346, %339, %333, %307, %291
  %370 = load ptr, ptr %284, align 8, !tbaa !200
  %371 = load i32, ptr %370, align 8
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 43
  br i1 %373, label %374, label %386

374:                                              ; preds = %369
  %375 = lshr i32 %371, 16
  %376 = and i32 %375, 255
  %377 = zext nneg i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !199
  %380 = zext i32 %32 to i64
  %381 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !199
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
  %395 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef nonnull %394, i32 noundef %391, i32 noundef 1) #25, !range !238
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %414, label %397, !prof !243

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !199
  %400 = load i32, ptr %399, align 8
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  %403 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %399) #25
  %404 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 1
  %405 = load i32, ptr %404, align 8, !tbaa !199
  %406 = load i32, ptr %394, align 8
  %407 = lshr i32 %406, 16
  %408 = and i32 %407, 255
  %409 = tail call i32 @subreg_regno_offset(i32 noundef %403, i32 noundef %402, i32 noundef %405, i32 noundef %408) #24
  %410 = load ptr, ptr %398, align 8, !tbaa !199
  %411 = tail call fastcc i32 @rhs_regno(ptr noundef %410) #25
  %412 = tail call fastcc i32 @find_valid_class(i32 noundef %391, i32 noundef %402, i32 noundef %409, i32 noundef %411) #25, !range !240
  %413 = tail call i32 @push_reload(ptr noundef nonnull %399, ptr noundef nonnull %399, ptr noundef nonnull %398, ptr noundef nonnull %398, i32 noundef %412, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef 9) #25
  br label %414

414:                                              ; preds = %397, %390
  %415 = phi i32 [ 1, %397 ], [ %268, %390 ]
  br i1 %274, label %463, label %416, !prof !244

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
  %425 = load ptr, ptr %424, align 8, !tbaa !199
  %426 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %270, ptr noundef %425) #25
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i32
  br label %431

429:                                              ; preds = %258
  %430 = icmp eq ptr %263, null
  br i1 %430, label %493, label %431, !prof !245

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
  br i1 %445, label %446, label %462, !prof !237

446:                                              ; preds = %431
  %447 = getelementptr inbounds %struct.rtx_def, ptr %435, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !199
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
  store ptr %461, ptr %12, align 8, !tbaa !200
  br i1 %437, label %463, label %493, !prof !227

462:                                              ; preds = %452, %446, %431
  br i1 %437, label %463, label %493, !prof !246

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
  br i1 %476, label %477, label %493, !prof !242

477:                                              ; preds = %463
  %478 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !199
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
  br i1 %503, label %506, label %504, !prof !227

504:                                              ; preds = %493
  %505 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %497, i32 noundef %4) #24
  br label %506

506:                                              ; preds = %504, %493
  %507 = phi i32 [ %505, %504 ], [ %4, %493 ]
  %508 = icmp ne ptr %502, null
  br i1 %508, label %509, label %511, !prof !227

509:                                              ; preds = %506
  %510 = tail call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %502, i32 noundef %507) #24
  br label %511

511:                                              ; preds = %509, %506
  %512 = phi i32 [ %510, %509 ], [ %507, %506 ]
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %518, !prof !247

514:                                              ; preds = %511
  %515 = icmp ne i32 %8, 0
  %516 = icmp eq i32 %10, 1
  %517 = and i1 %515, %516
  br i1 %517, label %518, label %519, !prof !248

518:                                              ; preds = %514, %511
  br label %519

519:                                              ; preds = %518, %514
  %520 = phi i32 [ %512, %518 ], [ %4, %514 ]
  %521 = icmp eq ptr %494, null
  br i1 %521, label %526, label %522, !prof !249

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
  br i1 %503, label %539, label %527, !prof !227

527:                                              ; preds = %526
  %528 = load i32, ptr %497, align 8
  %529 = and i32 %528, 65535
  %530 = icmp eq i32 %529, 39
  br i1 %530, label %531, label %539, !prof !237

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !199
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
  br i1 %541, label %546, label %542, !prof !249

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
  br i1 %508, label %548, label %560, !prof !227

548:                                              ; preds = %546
  %549 = load i32, ptr %502, align 8
  %550 = and i32 %549, 65535
  %551 = icmp eq i32 %550, 39
  br i1 %551, label %552, label %560, !prof !242

552:                                              ; preds = %548
  %553 = getelementptr inbounds %struct.rtx_def, ptr %502, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !199
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
  %562 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !204
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %602, label %564, !prof !249

564:                                              ; preds = %560
  %565 = zext i32 %495 to i64
  %566 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !199
  %568 = zext i32 %498 to i64
  %569 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %568
  %570 = load i8, ptr %569, align 1, !tbaa !199
  %571 = icmp ugt i8 %567, %570
  %572 = select i1 %571, i32 %495, i32 %498
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %564
  %575 = load ptr, ptr @this_insn, align 8, !tbaa !200
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %575, ptr noundef nonnull @.str.2) #24
  %576 = load i32, ptr @word_mode, align 4
  %577 = select i1 %503, i32 %495, i32 %576
  %578 = select i1 %508, i32 %576, i32 %498
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
  %590 = load i64, ptr %584, align 8, !tbaa !250
  %591 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %590, i32 noundef %582, i32 noundef %586) #25, !range !251
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %593, label %602

593:                                              ; preds = %585, %589
  %594 = add nuw nsw i32 %586, 1
  %595 = icmp eq i32 %594, 53
  br i1 %595, label %596, label %585, !llvm.loop !252

596:                                              ; preds = %593
  %597 = load ptr, ptr @this_insn, align 8, !tbaa !200
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %597, ptr noundef nonnull @.str.3) #24
  %598 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  %599 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %598) #24
  %600 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %601 = getelementptr inbounds %struct.rtx_def, ptr %600, i64 1
  store ptr %599, ptr %601, align 8, !tbaa !199
  br label %1147

602:                                              ; preds = %589, %560
  %603 = phi i32 [ %498, %560 ], [ %580, %589 ]
  %604 = phi i32 [ %495, %560 ], [ %581, %589 ]
  %605 = icmp eq i32 %561, 0
  br i1 %605, label %606, label %611, !prof !247

606:                                              ; preds = %602
  %607 = icmp ne i32 %8, 0
  %608 = icmp eq i32 %10, 1
  %609 = and i1 %607, %608
  br i1 %609, label %611, label %610, !prof !248

610:                                              ; preds = %606
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @.str.1) #24
  br label %611

611:                                              ; preds = %602, %606, %610
  %612 = call fastcc i32 @find_reusable_reload(ptr noundef nonnull %12, ptr noundef %502, i32 noundef %561, i32 noundef %10, i32 noundef %9, i32 noundef %501) #25
  %613 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %614 = icmp eq i32 %612, %613
  br i1 %614, label %615, label %714, !prof !249

615:                                              ; preds = %611
  %616 = load ptr, ptr %12, align 8
  %617 = icmp eq ptr %616, null
  br i1 %617, label %620, label %618, !prof !227

618:                                              ; preds = %615
  %619 = call fastcc i32 @push_secondary_reload(i32 noundef 1, ptr noundef nonnull %616, i32 noundef %9, i32 noundef %8, i32 noundef %561, i32 noundef %604, i32 noundef %10, ptr noundef nonnull %13, ptr noundef null) #25
  br label %620

620:                                              ; preds = %618, %615
  %621 = phi i32 [ %619, %618 ], [ -1, %615 ]
  br i1 %508, label %622, label %629, !prof !227

622:                                              ; preds = %620
  %623 = load i32, ptr %502, align 8
  %624 = and i32 %623, 65535
  %625 = icmp eq i32 %624, 38
  br i1 %625, label %629, label %626, !prof !242

626:                                              ; preds = %622
  %627 = call fastcc i32 @push_secondary_reload(i32 noundef 0, ptr noundef nonnull %502, i32 noundef %9, i32 noundef %8, i32 noundef %561, i32 noundef %603, i32 noundef %10, ptr noundef nonnull %14, ptr noundef null) #25
  %628 = load ptr, ptr %12, align 8
  br label %629

629:                                              ; preds = %626, %622, %620
  %630 = phi ptr [ %628, %626 ], [ %616, %622 ], [ %616, %620 ]
  %631 = phi i32 [ %627, %626 ], [ -1, %622 ], [ -1, %620 ]
  %632 = icmp eq ptr %630, null
  br i1 %632, label %654, label %633, !prof !227

633:                                              ; preds = %629
  %634 = load i32, ptr %630, align 8
  %635 = trunc i32 %634 to i16
  switch i16 %635, label %654 [
    i16 37, label %642
    i16 39, label %636
  ], !prof !253

636:                                              ; preds = %633
  %637 = getelementptr inbounds %struct.rtx_def, ptr %630, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !199
  %639 = load i32, ptr %638, align 8
  %640 = and i32 %639, 65535
  %641 = icmp eq i32 %640, 37
  br i1 %641, label %642, label %654

642:                                              ; preds = %633, %636
  %643 = tail call i32 @reg_or_subregno(ptr noundef nonnull %630) #24
  %644 = icmp ult i32 %643, 53
  br i1 %644, label %645, label %654, !prof !229

645:                                              ; preds = %642
  %646 = tail call i32 @reg_or_subregno(ptr noundef nonnull %630) #24
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %647
  %649 = load i32, ptr %648, align 4, !tbaa !204
  %650 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %649, i32 noundef %561, i32 noundef %604, i32 noundef 1) #24
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %654, label %652

652:                                              ; preds = %645
  %653 = tail call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %604, i32 noundef %9, i32 noundef %10) #25
  br label %654

654:                                              ; preds = %633, %652, %645, %642, %636, %629
  %655 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656
  store ptr %630, ptr %657, align 8, !tbaa !254
  %658 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 1
  store ptr %502, ptr %658, align 8, !tbaa !256
  %659 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 2
  store i32 %561, ptr %659, align 8, !tbaa !257
  %660 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 3
  store i32 %604, ptr %660, align 4, !tbaa !258
  %661 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 4
  store i32 %603, ptr %661, align 8, !tbaa !259
  %662 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 11
  store ptr null, ptr %662, align 8, !tbaa !260
  %663 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 18
  %664 = trunc i32 %8 to i8
  %665 = load i8, ptr %663, align 8
  %666 = and i8 %664, 1
  %667 = and i8 %665, -2
  %668 = or disjoint i8 %667, %666
  %669 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 7
  store i32 0, ptr %669, align 4, !tbaa !261
  %670 = and i8 %668, -3
  store i8 %670, ptr %663, align 8
  %671 = icmp eq ptr %496, null
  br i1 %671, label %674, label %672, !prof !227

672:                                              ; preds = %654
  %673 = load ptr, ptr %496, align 8, !tbaa !200
  br label %674

674:                                              ; preds = %654, %672
  %675 = phi ptr [ %673, %672 ], [ null, %654 ]
  %676 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 8
  store ptr %675, ptr %676, align 8, !tbaa !262
  %677 = icmp eq ptr %500, null
  br i1 %677, label %680, label %678, !prof !263

678:                                              ; preds = %674
  %679 = load ptr, ptr %500, align 8, !tbaa !200
  br label %680

680:                                              ; preds = %674, %678
  %681 = phi ptr [ %679, %678 ], [ null, %674 ]
  %682 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 9
  store ptr %681, ptr %682, align 8, !tbaa !264
  %683 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 12
  store i32 %9, ptr %683, align 8, !tbaa !265
  %684 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 17
  store i32 %10, ptr %684, align 4, !tbaa !266
  %685 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 13
  store i32 %621, ptr %685, align 4, !tbaa !267
  %686 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 14
  store i32 %631, ptr %686, align 8, !tbaa !268
  %687 = load i32, ptr %13, align 4, !tbaa !204
  %688 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 15
  store i32 %687, ptr %688, align 4, !tbaa !269
  %689 = load i32, ptr %14, align 4, !tbaa !204
  %690 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 16
  store i32 %689, ptr %690, align 8, !tbaa !270
  %691 = and i8 %668, -7
  store i8 %691, ptr %663, align 8
  %692 = add nsw i32 %655, 1
  store i32 %692, ptr @n_reloads, align 4, !tbaa !204
  br i1 %508, label %693, label %896, !prof !227

693:                                              ; preds = %680
  %694 = load i32, ptr %502, align 8
  %695 = trunc i32 %694 to i16
  switch i16 %695, label %896 [
    i16 37, label %702
    i16 39, label %696
  ], !prof !271

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.rtx_def, ptr %502, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !199
  %699 = load i32, ptr %698, align 8
  %700 = and i32 %699, 65535
  %701 = icmp eq i32 %700, 37
  br i1 %701, label %702, label %896

702:                                              ; preds = %693, %696
  %703 = tail call i32 @reg_or_subregno(ptr noundef nonnull %502) #24
  %704 = icmp ult i32 %703, 53
  br i1 %704, label %705, label %896, !prof !234

705:                                              ; preds = %702
  %706 = tail call i32 @reg_or_subregno(ptr noundef nonnull %502) #24
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %707
  %709 = load i32, ptr %708, align 4, !tbaa !204
  %710 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %561, i32 noundef %709, i32 noundef %603, i32 noundef 1) #24
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %896, label %712, !prof !272

712:                                              ; preds = %705
  %713 = tail call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %603, i32 noundef %9, i32 noundef %10) #25
  br label %896

714:                                              ; preds = %611
  %715 = icmp eq i32 %604, 0
  br i1 %715, label %728, label %716

716:                                              ; preds = %714
  %717 = zext i32 %604 to i64
  %718 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !199
  %720 = sext i32 %612 to i64
  %721 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %720, i32 3
  %722 = load i32, ptr %721, align 4, !tbaa !258
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !199
  %726 = icmp ugt i8 %719, %725
  br i1 %726, label %727, label %728

727:                                              ; preds = %716
  store i32 %604, ptr %721, align 4, !tbaa !258
  br label %728

728:                                              ; preds = %727, %716, %714
  %729 = icmp eq i32 %603, 0
  br i1 %729, label %742, label %730

730:                                              ; preds = %728
  %731 = zext i32 %603 to i64
  %732 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !199
  %734 = sext i32 %612 to i64
  %735 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %734, i32 4
  %736 = load i32, ptr %735, align 8, !tbaa !259
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !199
  %740 = icmp ugt i8 %733, %739
  br i1 %740, label %741, label %742

741:                                              ; preds = %730
  store i32 %603, ptr %735, align 8, !tbaa !259
  br label %742

742:                                              ; preds = %741, %730, %728
  %743 = load ptr, ptr %12, align 8
  %744 = icmp eq ptr %743, null
  br i1 %744, label %827, label %745

745:                                              ; preds = %742
  %746 = icmp eq ptr %496, null
  br i1 %746, label %749, label %747

747:                                              ; preds = %745
  %748 = load ptr, ptr %496, align 8, !tbaa !200
  br label %749

749:                                              ; preds = %745, %747
  %750 = phi ptr [ %748, %747 ], [ null, %745 ]
  %751 = sext i32 %612 to i64
  %752 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751
  %753 = load ptr, ptr %752, align 8, !tbaa !254
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
  %767 = load i32, ptr %766, align 8, !tbaa !265
  %768 = icmp slt i32 %767, %9
  br i1 %768, label %769, label %774

769:                                              ; preds = %765
  %770 = tail call i32 @remove_address_replacements(ptr noundef nonnull %743) #25, !range !238
  %771 = load ptr, ptr %752, align 8, !tbaa !254
  store ptr %771, ptr %12, align 8, !tbaa !200
  %772 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 8
  %773 = load ptr, ptr %772, align 8, !tbaa !262
  br label %779

774:                                              ; preds = %765
  %775 = load ptr, ptr %752, align 8, !tbaa !254
  %776 = tail call i32 @remove_address_replacements(ptr noundef %775) #25, !range !238
  br label %777

777:                                              ; preds = %755, %758, %774
  %778 = load ptr, ptr %752, align 8, !tbaa !254
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
  %793 = load i8, ptr %792, align 1, !tbaa !199
  %794 = load i32, ptr %786, align 8
  %795 = lshr i32 %794, 16
  %796 = and i32 %795, 255
  %797 = zext nneg i32 %796 to i64
  %798 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !199
  %800 = icmp ugt i8 %793, %799
  br i1 %800, label %801, label %804

801:                                              ; preds = %784, %779
  %802 = phi ptr [ %785, %784 ], [ %782, %779 ]
  %803 = phi ptr [ %787, %784 ], [ %780, %779 ]
  store ptr %803, ptr %752, align 8, !tbaa !254
  br label %804

804:                                              ; preds = %801, %784
  %805 = phi ptr [ %802, %801 ], [ %785, %784 ]
  %806 = phi ptr [ %803, %801 ], [ %787, %784 ]
  %807 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 8
  %808 = load ptr, ptr %807, align 8, !tbaa !262
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
  %818 = load i8, ptr %817, align 1, !tbaa !199
  %819 = load i32, ptr %808, align 8
  %820 = lshr i32 %819, 16
  %821 = and i32 %820, 255
  %822 = zext nneg i32 %821 to i64
  %823 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !199
  %825 = icmp ugt i8 %818, %824
  br i1 %825, label %826, label %827

826:                                              ; preds = %812, %804
  store ptr %805, ptr %807, align 8, !tbaa !262
  br label %827

827:                                              ; preds = %810, %812, %826, %742
  %828 = phi ptr [ %806, %810 ], [ %806, %812 ], [ %806, %826 ], [ null, %742 ]
  %829 = sext i32 %612 to i64
  br i1 %508, label %830, label %871

830:                                              ; preds = %827
  %831 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 1
  %832 = load ptr, ptr %831, align 8, !tbaa !256
  %833 = icmp eq ptr %832, null
  br i1 %833, label %848, label %834

834:                                              ; preds = %830
  %835 = load i32, ptr %502, align 8
  %836 = lshr i32 %835, 16
  %837 = and i32 %836, 255
  %838 = zext nneg i32 %837 to i64
  %839 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %838
  %840 = load i8, ptr %839, align 1, !tbaa !199
  %841 = load i32, ptr %832, align 8
  %842 = lshr i32 %841, 16
  %843 = and i32 %842, 255
  %844 = zext nneg i32 %843 to i64
  %845 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %844
  %846 = load i8, ptr %845, align 1, !tbaa !199
  %847 = icmp ugt i8 %840, %846
  br i1 %847, label %848, label %849

848:                                              ; preds = %834, %830
  store ptr %502, ptr %831, align 8, !tbaa !256
  br label %849

849:                                              ; preds = %848, %834
  %850 = icmp eq ptr %500, null
  br i1 %850, label %871, label %851

851:                                              ; preds = %849
  %852 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 9
  %853 = load ptr, ptr %852, align 8, !tbaa !264
  %854 = icmp eq ptr %853, null
  %855 = load ptr, ptr %500, align 8, !tbaa !200
  br i1 %854, label %870, label %856

856:                                              ; preds = %851
  %857 = load i32, ptr %855, align 8
  %858 = lshr i32 %857, 16
  %859 = and i32 %858, 255
  %860 = zext nneg i32 %859 to i64
  %861 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %860
  %862 = load i8, ptr %861, align 1, !tbaa !199
  %863 = load i32, ptr %853, align 8
  %864 = lshr i32 %863, 16
  %865 = and i32 %864, 255
  %866 = zext nneg i32 %865 to i64
  %867 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %866
  %868 = load i8, ptr %867, align 1, !tbaa !199
  %869 = icmp ugt i8 %862, %868
  br i1 %869, label %870, label %871

870:                                              ; preds = %856, %851
  store ptr %855, ptr %852, align 8, !tbaa !264
  br label %871

871:                                              ; preds = %827, %849, %856, %870
  %872 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 2
  %873 = load i32, ptr %872, align 8, !tbaa !257
  %874 = tail call i32 @reg_class_subset_p(i32 noundef %561, i32 noundef %873) #24
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %877, label %876

876:                                              ; preds = %871
  store i32 %561, ptr %872, align 8, !tbaa !257
  br label %877

877:                                              ; preds = %876, %871
  %878 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 18
  %879 = load i8, ptr %878, align 8
  %880 = trunc i32 %8 to i8
  %881 = or i8 %880, -2
  %882 = and i8 %881, %879
  store i8 %882, ptr %878, align 8
  %883 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 17
  %884 = load i32, ptr %883, align 4, !tbaa !266
  %885 = icmp eq i32 %884, %10
  %886 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 12
  %887 = load i32, ptr %886, align 8, !tbaa !265
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
  store i32 9, ptr %883, align 4, !tbaa !266
  br label %893

893:                                              ; preds = %891, %891, %891, %889, %892
  %894 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 12
  %895 = tail call i32 @llvm.smin.i32(i32 %888, i32 %9)
  store i32 %895, ptr %894, align 8, !tbaa !265
  br label %896

896:                                              ; preds = %693, %680, %696, %702, %705, %712, %893
  %897 = phi ptr [ %630, %712 ], [ %630, %705 ], [ %630, %702 ], [ %630, %696 ], [ %630, %680 ], [ %828, %893 ], [ %630, %693 ]
  %898 = phi i32 [ %655, %712 ], [ %655, %705 ], [ %655, %702 ], [ %655, %696 ], [ %655, %680 ], [ %612, %893 ], [ %655, %693 ]
  %899 = icmp eq ptr %897, null
  br i1 %899, label %908, label %900, !prof !227

900:                                              ; preds = %896
  %901 = load ptr, ptr %496, align 8, !tbaa !200
  %902 = icmp eq ptr %897, %901
  br i1 %902, label %908, label %903, !prof !239

903:                                              ; preds = %900
  %904 = sext i32 %898 to i64
  %905 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %904, i32 18
  %906 = load i8, ptr %905, align 8
  %907 = or i8 %906, 2
  store i8 %907, ptr %905, align 8
  br label %908

908:                                              ; preds = %903, %900, %896
  %909 = load i32, ptr @replace_reloads, align 4, !tbaa !204
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %933, label %911, !prof !273

911:                                              ; preds = %908
  %912 = icmp eq ptr %496, null
  br i1 %912, label %921, label %913, !prof !274

913:                                              ; preds = %911
  %914 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %915 = add nsw i32 %914, 1
  store i32 %915, ptr @n_replacements, align 4, !tbaa !204
  %916 = sext i32 %914 to i64
  %917 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916
  %918 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 2
  store i32 %898, ptr %918, align 8, !tbaa !275
  %919 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 1
  store ptr %494, ptr %919, align 8, !tbaa !277
  store ptr %496, ptr %917, align 8, !tbaa !278
  %920 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 3
  store i32 %604, ptr %920, align 4, !tbaa !279
  br label %921

921:                                              ; preds = %913, %911
  %922 = icmp eq ptr %500, null
  %923 = icmp eq ptr %500, %496
  %924 = or i1 %922, %923
  br i1 %924, label %933, label %925, !prof !280

925:                                              ; preds = %921
  %926 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %927 = add nsw i32 %926, 1
  store i32 %927, ptr @n_replacements, align 4, !tbaa !204
  %928 = sext i32 %926 to i64
  %929 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928
  %930 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 2
  store i32 %898, ptr %930, align 8, !tbaa !275
  store ptr %500, ptr %929, align 8, !tbaa !278
  %931 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 1
  store ptr %499, ptr %931, align 8, !tbaa !277
  %932 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 3
  store i32 %603, ptr %932, align 4, !tbaa !279
  br label %933

933:                                              ; preds = %921, %925, %908
  %934 = icmp ne ptr %897, null
  %935 = and i1 %508, %934
  br i1 %935, label %936, label %966, !prof !226

936:                                              ; preds = %933
  %937 = icmp eq ptr %897, %502
  br i1 %937, label %966, label %938

938:                                              ; preds = %936
  %939 = sext i32 %898 to i64
  %940 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %939
  %941 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %939, i32 11
  %942 = load ptr, ptr %941, align 8, !tbaa !260
  %943 = icmp eq ptr %942, null
  br i1 %943, label %944, label %966

944:                                              ; preds = %938
  %945 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %939, i32 2
  %946 = load i32, ptr %945, align 8, !tbaa !257
  %947 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %502) #25, !range !238
  %948 = tail call fastcc ptr @find_dummy_reload(ptr noundef nonnull %897, ptr noundef nonnull %502, ptr noundef %496, ptr noundef %500, i32 noundef %604, i32 noundef %603, i32 noundef %946, i32 noundef %898, i32 noundef %947) #25
  store ptr %948, ptr %941, align 8, !tbaa !260
  %949 = icmp eq ptr %948, %502
  br i1 %949, label %950, label %966

950:                                              ; preds = %944
  %951 = load i32, ptr %897, align 8
  %952 = and i32 %951, 65535
  %953 = icmp eq i32 %952, 37
  br i1 %953, label %959, label %954

954:                                              ; preds = %950
  %955 = zext nneg i32 %952 to i64
  %956 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %955
  %957 = load i32, ptr %956, align 4, !tbaa !204
  %958 = icmp eq i32 %957, 9
  br i1 %958, label %959, label %966

959:                                              ; preds = %954, %950
  %960 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %961 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %502) #25
  %962 = load ptr, ptr @static_reload_reg_p, align 8, !tbaa !200
  %963 = tail call ptr @find_equiv_reg(ptr noundef nonnull %897, ptr noundef %960, i32 noundef 0, i32 noundef %961, ptr noundef %962, i32 noundef %898, i32 noundef %604) #25
  %964 = icmp eq ptr %963, null
  br i1 %964, label %966, label %965

965:                                              ; preds = %959
  store ptr %502, ptr %940, align 8, !tbaa !254
  br label %966

966:                                              ; preds = %944, %954, %959, %965, %938, %936, %933
  %967 = sext i32 %898 to i64
  %968 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %967, i32 11
  %969 = load ptr, ptr %968, align 8, !tbaa !260
  %970 = icmp eq ptr %969, null
  %971 = and i1 %970, %934
  %972 = load i32, ptr @hard_regs_live_known, align 4
  %973 = icmp ne i32 %972, 0
  %974 = select i1 %971, i1 %973, i1 false
  br i1 %974, label %975, label %1145, !prof !281

975:                                              ; preds = %966
  br i1 %508, label %976, label %985, !prof !237

976:                                              ; preds = %975
  %977 = zext i32 %603 to i64
  %978 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %977
  %979 = load i8, ptr %978, align 1, !tbaa !199
  %980 = zext i32 %604 to i64
  %981 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %980
  %982 = load i8, ptr %981, align 1, !tbaa !199
  %983 = icmp ugt i8 %979, %982
  %984 = select i1 %983, i32 %603, i32 %604
  br label %985

985:                                              ; preds = %976, %975
  %986 = phi i32 [ %604, %975 ], [ %984, %976 ]
  %987 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %988 = getelementptr inbounds %struct.rtx_def, ptr %987, i64 1, i32 1, i32 0, i32 0, i64 1
  %989 = load ptr, ptr %988, align 8, !tbaa !199
  %990 = icmp eq ptr %989, null
  br i1 %990, label %1145, label %991, !prof !282

991:                                              ; preds = %985, %1141
  %992 = phi ptr [ %1143, %1141 ], [ %989, %985 ]
  %993 = load i32, ptr %992, align 8
  %994 = and i32 %993, 16711680
  %995 = icmp eq i32 %994, 65536
  br i1 %995, label %996, label %1141, !prof !283

996:                                              ; preds = %991
  %997 = getelementptr inbounds %struct.rtx_def, ptr %992, i64 0, i32 1
  %998 = load ptr, ptr %997, align 8, !tbaa !199
  %999 = load i32, ptr %998, align 8
  %1000 = and i32 %999, 65535
  %1001 = icmp eq i32 %1000, 37
  br i1 %1001, label %1002, label %1141, !prof !284

1002:                                             ; preds = %996
  %1003 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %998) #25
  %1004 = icmp slt i32 %1003, 53
  br i1 %1004, label %1005, label %1141, !prof !285

1005:                                             ; preds = %1002
  %1006 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %998, ptr noundef nonnull %897) #24
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1141, label %1008, !prof !286

1008:                                             ; preds = %1005
  %1009 = load ptr, ptr %997, align 8, !tbaa !199
  %1010 = getelementptr inbounds %struct.rtx_def, ptr %1009, i64 0, i32 1, i32 0, i32 0, i64 1
  %1011 = load i32, ptr %1010, align 8, !tbaa !199
  %1012 = icmp ult i32 %1011, 53
  br i1 %1012, label %1035, label %1013, !prof !287

1013:                                             ; preds = %1008
  %1014 = load ptr, ptr @cfun, align 8, !tbaa !200
  %1015 = getelementptr inbounds %struct.function, ptr %1014, i64 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !288
  %1017 = load ptr, ptr %1016, align 8, !tbaa !290
  %1018 = getelementptr inbounds %struct.basic_block_def, ptr %1017, i64 0, i32 9
  %1019 = load i32, ptr %1018, align 8, !tbaa !292
  %1020 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %1019) #25
  %1021 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1020, i64 0, i32 3
  %1022 = load ptr, ptr %1021, align 8, !tbaa !294
  %1023 = tail call i32 @bitmap_bit_p(ptr noundef %1022, i32 noundef %1011) #24
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1025, label %1141, !prof !296

1025:                                             ; preds = %1013
  %1026 = sext i32 %1003 to i64
  %1027 = load ptr, ptr %997, align 8, !tbaa !199
  %1028 = load i32, ptr %1027, align 8
  %1029 = lshr i32 %1028, 16
  %1030 = and i32 %1029, 255
  %1031 = zext nneg i32 %1030 to i64
  %1032 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1026, i64 %1031
  %1033 = load i8, ptr %1032, align 1, !tbaa !199
  %1034 = icmp eq i8 %1033, 1
  br i1 %1034, label %1035, label %1141, !prof !296

1035:                                             ; preds = %1025, %1008
  %1036 = tail call fastcc i32 @end_hard_regno(i32 noundef %986, i32 noundef %1003) #25
  %1037 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %1038 = getelementptr inbounds %struct.rtx_def, ptr %1037, i64 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !199
  %1040 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1003, i32 noundef %1036, ptr noundef %1039, ptr noundef %496) #25
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1141, !prof !296

1042:                                             ; preds = %1035
  %1043 = icmp eq ptr %502, null
  %1044 = icmp eq ptr %897, %502
  br i1 %1043, label %1053, label %1045, !prof !296

1045:                                             ; preds = %1042
  br i1 %1044, label %1054, label %1046

1046:                                             ; preds = %1045
  %1047 = tail call fastcc i32 @end_hard_regno(i32 noundef %986, i32 noundef %1003) #25
  %1048 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %1049 = getelementptr inbounds %struct.rtx_def, ptr %1048, i64 1
  %1050 = load ptr, ptr %1049, align 8, !tbaa !199
  %1051 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %1003, i32 noundef %1047, ptr noundef %1050) #25, !range !238
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1078, label %1141

1053:                                             ; preds = %1042
  br i1 %1044, label %1054, label %1078, !prof !297

1054:                                             ; preds = %1045, %1053
  %1055 = load i32, ptr %502, align 8
  %1056 = and i32 %1055, 65535
  %1057 = icmp eq i32 %1056, 39
  br i1 %1057, label %1058, label %1141

1058:                                             ; preds = %1054
  %1059 = getelementptr inbounds %struct.rtx_def, ptr %897, i64 0, i32 1
  %1060 = lshr i32 %1055, 16
  %1061 = and i32 %1060, 255
  %1062 = zext nneg i32 %1061 to i64
  %1063 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1062
  %1064 = load i8, ptr %1063, align 1, !tbaa !199
  %1065 = zext i8 %1064 to i32
  %1066 = add nuw nsw i32 %1065, 3
  %1067 = load ptr, ptr %1059, align 8, !tbaa !199
  %1068 = load i32, ptr %1067, align 8
  %1069 = lshr i32 %1068, 16
  %1070 = and i32 %1069, 255
  %1071 = zext nneg i32 %1070 to i64
  %1072 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1071
  %1073 = load i8, ptr %1072, align 1, !tbaa !199
  %1074 = zext i8 %1073 to i32
  %1075 = add nuw nsw i32 %1074, 3
  %1076 = xor i32 %1075, %1066
  %1077 = icmp ult i32 %1076, 4
  br i1 %1077, label %1078, label %1141

1078:                                             ; preds = %1046, %1058, %1053
  %1079 = zext i32 %986 to i64
  %1080 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1079
  %1081 = load i8, ptr %1080, align 1, !tbaa !199
  %1082 = load ptr, ptr %997, align 8, !tbaa !199
  %1083 = load i32, ptr %1082, align 8
  %1084 = lshr i32 %1083, 16
  %1085 = and i32 %1084, 255
  %1086 = zext nneg i32 %1085 to i64
  %1087 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1086
  %1088 = load i8, ptr %1087, align 1, !tbaa !199
  %1089 = icmp ugt i8 %1081, %1088
  br i1 %1089, label %1141, label %1090, !prof !287

1090:                                             ; preds = %1078
  %1091 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1003, i32 noundef %604) #24
  %1092 = icmp eq i8 %1091, 0
  br i1 %1092, label %1141, label %1093, !prof !287

1093:                                             ; preds = %1090
  %1094 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1003, i32 noundef %603) #24
  %1095 = icmp eq i8 %1094, 0
  br i1 %1095, label %1141, label %1096, !prof !296

1096:                                             ; preds = %1093
  %1097 = zext i32 %604 to i64
  %1098 = zext i32 %603 to i64
  %1099 = sext i32 %1003 to i64
  %1100 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1099, i64 %1097
  %1101 = load i8, ptr %1100, align 1, !tbaa !199
  %1102 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1099, i64 %1098
  %1103 = load i8, ptr %1102, align 1, !tbaa !199
  %1104 = tail call i8 @llvm.umax.i8(i8 %1101, i8 %1103)
  %1105 = zext i8 %1104 to i32
  %1106 = icmp eq i8 %1104, 0
  br i1 %1106, label %1129, label %1107

1107:                                             ; preds = %1096
  %1108 = sext i32 %561 to i64
  %1109 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %1108
  %1110 = zext i8 %1104 to i64
  br label %1111

1111:                                             ; preds = %1107, %1124
  %1112 = phi i64 [ 0, %1107 ], [ %1125, %1124 ]
  %1113 = trunc i64 %1112 to i32
  %1114 = add i32 %1003, %1113
  %1115 = zext i32 %1114 to i64
  %1116 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1115
  %1117 = load i8, ptr %1116, align 1, !tbaa !199
  %1118 = icmp eq i8 %1117, 0
  br i1 %1118, label %1119, label %1127

1119:                                             ; preds = %1111
  %1120 = load i64, ptr %1109, align 8, !tbaa !250
  %1121 = shl nuw i64 1, %1115
  %1122 = and i64 %1120, %1121
  %1123 = icmp eq i64 %1122, 0
  br i1 %1123, label %1127, label %1124

1124:                                             ; preds = %1119
  %1125 = add nuw nsw i64 %1112, 1
  %1126 = icmp eq i64 %1125, %1110
  br i1 %1126, label %1132, label %1111, !llvm.loop !298

1127:                                             ; preds = %1111, %1119
  %1128 = trunc i64 %1112 to i32
  br label %1129

1129:                                             ; preds = %1127, %1096
  %1130 = phi i32 [ 0, %1096 ], [ %1128, %1127 ]
  %1131 = icmp eq i32 %1130, %1105
  br i1 %1131, label %1132, label %1141

1132:                                             ; preds = %1124, %1129
  %1133 = tail call fastcc i32 @end_hard_regno(i32 noundef %604, i32 noundef %1003) #25
  %1134 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1003, i32 noundef %1133, ptr noundef nonnull %897, ptr noundef null) #25
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1139, label %1136

1136:                                             ; preds = %1132
  %1137 = tail call fastcc i32 @can_reload_into(ptr noundef nonnull %897, i32 noundef %1003, i32 noundef %604) #25
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1141, label %1139

1139:                                             ; preds = %1132, %1136
  %1140 = tail call ptr @gen_rtx_REG(i32 noundef %986, i32 noundef %1003) #24
  store ptr %1140, ptr %968, align 8, !tbaa !260
  br label %1145

1141:                                             ; preds = %1129, %1136, %991, %996, %1002, %1005, %1013, %1025, %1035, %1046, %1054, %1058, %1078, %1090, %1093
  %1142 = getelementptr inbounds %struct.rtx_def, ptr %992, i64 0, i32 1, i32 0, i32 0, i64 1
  %1143 = load ptr, ptr %1142, align 8, !tbaa !199
  %1144 = icmp eq ptr %1143, null
  br i1 %1144, label %1145, label %991, !prof !299, !llvm.loop !300

1145:                                             ; preds = %1141, %985, %1139, %966
  br i1 %508, label %1146, label %1147, !prof !227

1146:                                             ; preds = %1145
  store i32 %898, ptr @output_reloadnum, align 4, !tbaa !204
  br label %1147

1147:                                             ; preds = %596, %1145, %1146
  %1148 = phi i32 [ 0, %596 ], [ %898, %1146 ], [ %898, %1145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  ret i32 %1148
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !301 !PGOFuncName !302 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !199
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
define internal fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !224 !PGOFuncName !303 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %50, !prof !304

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !204
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
  %30 = load i8, ptr %29, align 1, !tbaa !199
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
  %40 = load i8, ptr %39, align 1, !tbaa !199
  %41 = icmp ugt i8 %40, 4
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = lshr i8 %40, 2
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %45, i64 %38
  %47 = load i8, ptr %46, align 1, !tbaa !199
  %48 = icmp ne i8 %43, %47
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %27, %34, %42, %23, %18, %20, %7, %3
  %51 = phi i32 [ 0, %3 ], [ 1, %7 ], [ 0, %20 ], [ 0, %18 ], [ 1, %23 ], [ 0, %34 ], [ 0, %27 ], [ %49, %42 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_valid_class(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !173 !PGOFuncName !305 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !204
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
  %22 = load i64, ptr %18, align 8, !tbaa !250
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
  %31 = load i64, ptr %18, align 8, !tbaa !250
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
  br i1 %43, label %19, label %44, !llvm.loop !306

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %44
  %47 = trunc i64 %13 to i32
  %48 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %47, i32 noundef %7) #24
  %49 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %13
  %50 = load i32, ptr %49, align 4, !tbaa !204
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
  br i1 %67, label %68, label %12, !llvm.loop !307

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
define dso_local i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !308 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %11, label %6, !prof !309

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !204
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %17, !prof !309

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !199
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i64 [ %16, %11 ], [ %7, %6 ]
  %19 = phi i32 [ %14, %11 ], [ %3, %6 ]
  %20 = phi ptr [ %13, %11 ], [ %0, %6 ]
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %22 = load i32, ptr %21, align 4, !tbaa !204
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %104, label %24, !prof !309

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !204
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %104, label %31, !prof !310

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
  ], !prof !311

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !199
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !238
  br label %104

41:                                               ; preds = %33
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #25
  %43 = icmp slt i32 %42, 53
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = lshr i32 %36, 16
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load i32, ptr %47, align 8, !tbaa !199
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
  br i1 %63, label %64, label %78, !prof !312

64:                                               ; preds = %61
  %65 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %66 = zext nneg i32 %62 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !200
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !238
  br label %104

72:                                               ; preds = %64
  %73 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %74 = getelementptr inbounds ptr, ptr %73, i64 %66
  %75 = load ptr, ptr %74, align 8, !tbaa !200
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
  %84 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !238
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
  %95 = load ptr, ptr %94, align 8, !tbaa !199
  br label %89, !llvm.loop !313

96:                                               ; preds = %89
  %97 = tail call i32 @rtx_equal_p(ptr noundef nonnull %20, ptr noundef nonnull %90) #24
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !199
  %102 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %20, ptr noundef %101) #25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %112, %96, %99, %77, %72, %17, %24, %85, %83, %78, %70, %56, %39, %89, %117, %106
  %105 = phi i32 [ %111, %106 ], [ %122, %117 ], [ %40, %39 ], [ %60, %56 ], [ %71, %70 ], [ %82, %78 ], [ %84, %83 ], [ %86, %85 ], [ 0, %24 ], [ 0, %17 ], [ 0, %72 ], [ 0, %77 ], [ 1, %99 ], [ 1, %96 ], [ 1, %112 ], [ 0, %89 ]
  ret i32 %105

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !199
  %109 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %20, ptr noundef %108) #25
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  br label %104

112:                                              ; preds = %89
  %113 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !199
  %115 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %114, ptr noundef nonnull %90) #25
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %104

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !199
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
define internal fastcc noundef zeroext i8 @in_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !314 !PGOFuncName !315 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8, !prof !316

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #25
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %2, %8 ], [ %12, %14 ]
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %14, label %19, !prof !317

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %0
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !318

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 0, %3 ], [ 1, %10 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_reusable_reload(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !224 !PGOFuncName !319 {
  %7 = load ptr, ptr %0, align 8, !tbaa !200
  %8 = tail call i32 @earlyclobber_operand_p(ptr noundef %1) #25, !range !238
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %11 = icmp sgt i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %15, label %321, !prof !320

13:                                               ; preds = %174
  %14 = icmp sgt i32 %176, 0
  br i1 %14, label %179, label %321, !prof !321

15:                                               ; preds = %6, %174
  %16 = phi i64 [ %175, %174 ], [ 0, %6 ]
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16
  %18 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !257
  %20 = tail call i32 @reg_class_subset_p(i32 noundef %2, i32 noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, ptr %18, align 8, !tbaa !257
  %24 = tail call i32 @reg_class_subset_p(i32 noundef %23, i32 noundef %2) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %174, label %26

26:                                               ; preds = %22, %15
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !260
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !250
  %34 = tail call i32 @true_regnum(ptr noundef nonnull %28) #24
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = and i64 %36, %33
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %174, label %39

39:                                               ; preds = %30, %26
  %40 = icmp eq ptr %7, null
  %41 = icmp eq ptr %1, null
  br i1 %40, label %97, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %17, align 8, !tbaa !254
  %44 = icmp eq ptr %43, %7
  br i1 %44, label %69, label %45

45:                                               ; preds = %42
  %46 = icmp eq ptr %43, null
  br i1 %46, label %97, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %43, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, ptr %7, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %97

55:                                               ; preds = %51
  %56 = icmp eq i32 %5, 0
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #25
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %59 = icmp eq i32 %57, %58
  %60 = and i1 %56, %59
  br i1 %60, label %71, label %97

61:                                               ; preds = %47
  %62 = tail call i32 @rtx_equal_p(ptr noundef nonnull %43, ptr noundef nonnull %7) #24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %17, align 8, !tbaa !254
  %66 = tail call i32 @side_effects_p(ptr noundef %65) #24
  %67 = or i32 %66, %5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %97

69:                                               ; preds = %42
  %70 = icmp eq i32 %5, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %55, %64, %69
  br i1 %41, label %148, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !256
  %75 = icmp eq ptr %74, null
  %76 = icmp eq ptr %74, %1
  %77 = or i1 %75, %76
  br i1 %77, label %148, label %78

78:                                               ; preds = %72
  %79 = load i32, ptr %74, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i32, ptr %1, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 37
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %74) #25
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %148, label %98

90:                                               ; preds = %78
  %91 = tail call i32 @rtx_equal_p(ptr noundef nonnull %74, ptr noundef nonnull %1) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %73, align 8, !tbaa !256
  %95 = tail call i32 @side_effects_p(ptr noundef %94) #24
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %148, label %98

97:                                               ; preds = %69, %64, %61, %55, %51, %45, %39
  br i1 %41, label %174, label %98

98:                                               ; preds = %82, %86, %90, %93, %97
  %99 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !256
  %101 = icmp eq ptr %100, %1
  br i1 %101, label %123, label %102

102:                                              ; preds = %98
  %103 = icmp eq ptr %100, null
  br i1 %103, label %174, label %104

104:                                              ; preds = %102
  %105 = load i32, ptr %100, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 37
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i32, ptr %1, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 37
  br i1 %111, label %112, label %174

112:                                              ; preds = %108
  %113 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %100) #25
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %123, label %174

116:                                              ; preds = %104
  %117 = tail call i32 @rtx_equal_p(ptr noundef nonnull %100, ptr noundef nonnull %1) #24
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %174, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %99, align 8, !tbaa !256
  %121 = tail call i32 @side_effects_p(ptr noundef %120) #24
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %174

123:                                              ; preds = %119, %112, %98
  br i1 %40, label %148, label %124

124:                                              ; preds = %123
  %125 = load ptr, ptr %17, align 8, !tbaa !254
  %126 = icmp eq ptr %125, null
  %127 = icmp eq ptr %125, %7
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %148, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr %125, align 8
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 37
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i32, ptr %7, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 37
  br i1 %136, label %137, label %174

137:                                              ; preds = %133
  %138 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %125) #25
  %139 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %148, label %174

141:                                              ; preds = %129
  %142 = tail call i32 @rtx_equal_p(ptr noundef nonnull %125, ptr noundef nonnull %7) #24
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %174, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %17, align 8, !tbaa !254
  %146 = tail call i32 @side_effects_p(ptr noundef %145) #24
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %144, %137, %124, %123, %93, %86, %72, %71
  %149 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !256
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %150) #25, !range !238
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %152, %148
  %156 = icmp eq i32 %3, 9
  br i1 %156, label %319, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 17
  %159 = load i32, ptr %158, align 4, !tbaa !266
  %160 = icmp eq i32 %159, 9
  br i1 %160, label %319, label %161

161:                                              ; preds = %157
  %162 = icmp eq i32 %159, %3
  br i1 %162, label %163, label %167

163:                                              ; preds = %161
  %164 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 12
  %165 = load i32, ptr %164, align 8, !tbaa !265
  %166 = icmp eq i32 %165, %4
  br i1 %166, label %319, label %167

167:                                              ; preds = %163, %161
  switch i32 %3, label %174 [
    i32 0, label %168
    i32 7, label %170
    i32 10, label %172
  ]

168:                                              ; preds = %167
  %169 = icmp eq i32 %159, 0
  br i1 %169, label %319, label %174

170:                                              ; preds = %167
  %171 = icmp eq i32 %159, 7
  br i1 %171, label %319, label %174

172:                                              ; preds = %167
  %173 = icmp eq i32 %159, 10
  br i1 %173, label %319, label %174

174:                                              ; preds = %170, %168, %167, %22, %30, %97, %102, %108, %112, %116, %119, %133, %137, %141, %144, %152, %172
  %175 = add nuw nsw i64 %16, 1
  %176 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %15, label %13, !prof !322, !llvm.loop !323

179:                                              ; preds = %13, %314
  %180 = phi i64 [ %315, %314 ], [ 0, %13 ]
  %181 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %180
  %182 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %180, i32 2
  %183 = load i32, ptr %182, align 8, !tbaa !257
  %184 = tail call i32 @reg_class_subset_p(i32 noundef %2, i32 noundef %183) #24
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i32, ptr %182, align 8, !tbaa !257
  %188 = tail call i32 @reg_class_subset_p(i32 noundef %187, i32 noundef %2) #24
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %314, label %190

190:                                              ; preds = %186, %179
  %191 = icmp eq ptr %1, null
  %192 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %180, i32 11
  %193 = load ptr, ptr %192, align 8, !tbaa !260
  %194 = icmp eq ptr %193, null
  br i1 %194, label %205, label %195

195:                                              ; preds = %190
  %196 = sext i32 %2 to i64
  %197 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %196
  %198 = load i64, ptr %197, align 8, !tbaa !250
  %199 = tail call i32 @true_regnum(ptr noundef nonnull %193) #24
  %200 = zext nneg i32 %199 to i64
  %201 = shl nuw i64 1, %200
  %202 = and i64 %201, %198
  %203 = icmp ne i64 %202, 0
  %204 = and i1 %191, %203
  br i1 %204, label %206, label %314

205:                                              ; preds = %190
  br i1 %191, label %206, label %314

206:                                              ; preds = %195, %205
  %207 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %180, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !256
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %314

210:                                              ; preds = %206
  %211 = load ptr, ptr %181, align 8, !tbaa !254
  %212 = icmp eq ptr %211, null
  br i1 %212, label %314, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %7, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 37
  br i1 %216, label %217, label %249

217:                                              ; preds = %213
  %218 = load i32, ptr %211, align 8
  %219 = and i32 %218, 65535
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !204
  %223 = icmp eq i32 %222, 12
  br i1 %223, label %224, label %249

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !199
  %227 = icmp eq ptr %226, %7
  br i1 %227, label %282, label %228

228:                                              ; preds = %224
  %229 = icmp eq ptr %226, null
  br i1 %229, label %249, label %230

230:                                              ; preds = %228
  %231 = load i32, ptr %226, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 37
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %226) #25
  %236 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %282, label %249

238:                                              ; preds = %230
  %239 = tail call i32 @rtx_equal_p(ptr noundef nonnull %226, ptr noundef nonnull %7) #24
  %240 = icmp eq i32 %239, 0
  %241 = load ptr, ptr %181, align 8, !tbaa !254
  br i1 %240, label %249, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.rtx_def, ptr %241, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !199
  %245 = tail call i32 @side_effects_p(ptr noundef %244) #24
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %282, label %247

247:                                              ; preds = %242
  %248 = load ptr, ptr %181, align 8, !tbaa !254
  br label %249

249:                                              ; preds = %247, %238, %234, %228, %217, %213
  %250 = phi ptr [ %248, %247 ], [ %241, %238 ], [ %211, %234 ], [ %211, %228 ], [ %211, %217 ], [ %211, %213 ]
  %251 = load i32, ptr %250, align 8
  %252 = and i32 %251, 65535
  %253 = icmp eq i32 %252, 37
  br i1 %253, label %254, label %314

254:                                              ; preds = %249
  %255 = load i32, ptr %7, align 8
  %256 = and i32 %255, 65535
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !204
  %260 = icmp eq i32 %259, 12
  br i1 %260, label %261, label %314

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !199
  %264 = icmp eq ptr %263, %250
  br i1 %264, label %282, label %265

265:                                              ; preds = %261
  %266 = icmp eq ptr %263, null
  br i1 %266, label %314, label %267

267:                                              ; preds = %265
  %268 = load i32, ptr %263, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 37
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %263) #25
  %273 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %250) #25
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %282, label %314

275:                                              ; preds = %267
  %276 = tail call i32 @rtx_equal_p(ptr noundef nonnull %263, ptr noundef nonnull %250) #24
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %314, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr %262, align 8, !tbaa !199
  %280 = tail call i32 @side_effects_p(ptr noundef %279) #24
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %314

282:                                              ; preds = %278, %271, %261, %242, %234, %224
  %283 = load ptr, ptr %207, align 8, !tbaa !256
  %284 = icmp eq ptr %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %282
  %286 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %283) #25, !range !238
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %314

288:                                              ; preds = %285, %282
  %289 = icmp eq i32 %3, 9
  br i1 %289, label %307, label %290

290:                                              ; preds = %288
  %291 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %180, i32 17
  %292 = load i32, ptr %291, align 4, !tbaa !266
  %293 = icmp eq i32 %292, 9
  br i1 %293, label %307, label %294

294:                                              ; preds = %290
  %295 = icmp eq i32 %292, %3
  br i1 %295, label %296, label %300

296:                                              ; preds = %294
  %297 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %180, i32 12
  %298 = load i32, ptr %297, align 8, !tbaa !265
  %299 = icmp eq i32 %298, %4
  br i1 %299, label %307, label %300

300:                                              ; preds = %296, %294
  switch i32 %3, label %314 [
    i32 0, label %301
    i32 7, label %303
    i32 10, label %305
  ]

301:                                              ; preds = %300
  %302 = icmp eq i32 %292, 0
  br i1 %302, label %307, label %314

303:                                              ; preds = %300
  %304 = icmp eq i32 %292, 7
  br i1 %304, label %307, label %314

305:                                              ; preds = %300
  %306 = icmp eq i32 %292, 10
  br i1 %306, label %307, label %314

307:                                              ; preds = %305, %303, %301, %296, %290, %288
  %308 = trunc i64 %180 to i32
  %309 = load i32, ptr %7, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 37
  br i1 %311, label %312, label %321

312:                                              ; preds = %307
  %313 = load ptr, ptr %181, align 8, !tbaa !254
  store ptr %313, ptr %0, align 8, !tbaa !200
  br label %321

314:                                              ; preds = %303, %301, %300, %186, %195, %205, %206, %210, %249, %254, %265, %271, %275, %278, %285, %305
  %315 = add nuw nsw i64 %180, 1
  %316 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %317 = sext i32 %316 to i64
  %318 = icmp slt i64 %315, %317
  br i1 %318, label %179, label %321, !prof !322, !llvm.loop !324

319:                                              ; preds = %172, %170, %168, %163, %157, %155
  %320 = trunc i64 %16 to i32
  br label %321

321:                                              ; preds = %314, %6, %319, %13, %307, %312
  %322 = phi i32 [ %308, %312 ], [ %308, %307 ], [ %176, %13 ], [ %320, %319 ], [ %10, %6 ], [ %316, %314 ]
  ret i32 %322
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @push_secondary_reload(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr noundef %8) unnamed_addr #0 !prof !224 !PGOFuncName !325 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  store i32 2956, ptr %10, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  %12 = add i32 %6, -3
  %13 = icmp ult i32 %12, 4
  %14 = icmp eq i32 %0, 0
  %15 = select i1 %14, i32 5, i32 3
  %16 = select i1 %13, i32 %6, i32 %15, !prof !326
  store i32 2956, ptr %7, align 4, !tbaa !204
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %38, !prof !304

20:                                               ; preds = %9
  %21 = lshr i32 %17, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !199
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !199
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !199
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
  br i1 %43, label %44, label %54, !prof !327

44:                                               ; preds = %38
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %41) #25
  %46 = icmp ugt i32 %45, 52
  br i1 %46, label %47, label %54, !prof !328

47:                                               ; preds = %44
  %48 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !200
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr %41, ptr %51, !prof !329
  br label %54

54:                                               ; preds = %47, %44, %38
  %55 = phi ptr [ %41, %44 ], [ %41, %38 ], [ %53, %47 ]
  store i32 2956, ptr %11, align 8, !tbaa !174
  %56 = getelementptr inbounds %struct.secondary_reload_info, ptr %11, i64 0, i32 2
  store ptr %8, ptr %56, align 8, !tbaa !180
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !181
  %58 = trunc i32 %0 to i8
  %59 = call i32 %57(i8 noundef zeroext %58, ptr noundef nonnull %55, i32 noundef %4, i32 noundef %40, ptr noundef nonnull %11) #24
  %60 = load i32, ptr %11, align 8, !tbaa !174
  %61 = icmp eq i32 %59, 0
  %62 = icmp eq i32 %60, 2956
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %264, label %64, !prof !330

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
  %73 = load i8, ptr %72, align 8, !tbaa !194
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
  %80 = load ptr, ptr %79, align 8, !tbaa !196
  %81 = getelementptr inbounds %struct.insn_operand_data, ptr %80, i64 2, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !197
  %83 = load i8, ptr %82, align 1, !tbaa !199
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #24
  br label %86

86:                                               ; preds = %78, %85
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !199
  %89 = icmp eq i8 %88, 38
  %90 = getelementptr inbounds i8, ptr %82, i64 2
  %91 = select i1 %89, ptr %90, ptr %87
  %92 = load i8, ptr %91, align 1, !tbaa !199
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
  %114 = load i32, ptr @n_reloads, align 4, !tbaa !204
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
  %126 = load i32, ptr %125, align 8, !tbaa !257
  %127 = call i32 @reg_class_subset_p(i32 noundef %103, i32 noundef %126) #24
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, ptr %125, align 8, !tbaa !257
  %131 = call i32 @reg_class_subset_p(i32 noundef %130, i32 noundef %103) #24
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %203, label %133

133:                                              ; preds = %129, %124
  br i1 %105, label %134, label %138

134:                                              ; preds = %133
  %135 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 3
  %136 = load i32, ptr %135, align 4, !tbaa !258
  %137 = icmp eq i32 %136, %104
  br i1 %137, label %142, label %203

138:                                              ; preds = %133
  %139 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !259
  %141 = icmp eq i32 %140, %104
  br i1 %141, label %146, label %203

142:                                              ; preds = %134
  %143 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !267
  %145 = icmp eq i32 %144, %68
  br i1 %145, label %150, label %203

146:                                              ; preds = %138
  %147 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 14
  %148 = load i32, ptr %147, align 8, !tbaa !268
  %149 = icmp eq i32 %148, %68
  br i1 %149, label %154, label %203

150:                                              ; preds = %142
  %151 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 15
  %152 = load i32, ptr %151, align 4, !tbaa !269
  %153 = icmp eq i32 %152, %117
  br i1 %153, label %158, label %203

154:                                              ; preds = %146
  %155 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 16
  %156 = load i32, ptr %155, align 8, !tbaa !270
  %157 = icmp eq i32 %156, %117
  br i1 %157, label %158, label %203

158:                                              ; preds = %150, %154
  %159 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 17
  %160 = load i32, ptr %159, align 4, !tbaa !266
  %161 = icmp eq i32 %160, 9
  br i1 %161, label %175, label %162

162:                                              ; preds = %158
  %163 = icmp eq i32 %16, %160
  br i1 %163, label %164, label %168

164:                                              ; preds = %162
  %165 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 12
  %166 = load i32, ptr %165, align 8, !tbaa !265
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
  store i32 %104, ptr %178, align 4, !tbaa !258
  br label %181

179:                                              ; preds = %175
  %180 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 4
  store i32 %104, ptr %180, align 8, !tbaa !259
  br label %181

181:                                              ; preds = %177, %179
  %182 = load i32, ptr %125, align 8, !tbaa !257
  %183 = call i32 @reg_class_subset_p(i32 noundef %103, i32 noundef %182) #24
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  store i32 %103, ptr %125, align 8, !tbaa !257
  br label %186

186:                                              ; preds = %185, %181
  %187 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 12
  %188 = load i32, ptr %187, align 8, !tbaa !265
  %189 = freeze i32 %188
  %190 = call i32 @llvm.smin.i32(i32 %189, i32 %2)
  store i32 %190, ptr %187, align 8, !tbaa !265
  %191 = load i8, ptr %120, align 8
  %192 = trunc i32 %3 to i8
  %193 = or i8 %192, -6
  %194 = and i8 %191, %193
  %195 = or i8 %194, 4
  store i8 %195, ptr %120, align 8
  %196 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %119, i32 17
  %197 = load i32, ptr %196, align 4, !tbaa !266
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
  store i32 9, ptr %196, align 4, !tbaa !266
  br label %210

203:                                              ; preds = %171, %169, %150, %142, %134, %168, %118, %129, %138, %146, %154, %173
  %204 = add nuw nsw i64 %119, 1
  %205 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %206 = sext i32 %205 to i64
  %207 = icmp slt i64 %204, %206
  br i1 %207, label %118, label %208, !llvm.loop !331

208:                                              ; preds = %203
  %209 = trunc i64 %204 to i32
  br label %210

210:                                              ; preds = %208, %113, %201, %201, %201, %199, %202
  %211 = phi i32 [ %176, %201 ], [ %176, %201 ], [ %176, %201 ], [ %176, %199 ], [ %176, %202 ], [ 0, %113 ], [ %209, %208 ]
  %212 = load i32, ptr @n_reloads, align 4, !tbaa !204
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
  %220 = load i32, ptr @n_reloads, align 4, !tbaa !204
  br label %224

221:                                              ; preds = %216
  %222 = call ptr @get_secondary_mem(ptr poison, i32 noundef %40, i32 noundef %2, i32 noundef %6) #25
  %223 = load i32, ptr @n_reloads, align 4, !tbaa !204
  br label %224

224:                                              ; preds = %219, %221, %214
  %225 = phi i32 [ %223, %221 ], [ %220, %219 ], [ %211, %214 ]
  %226 = phi i32 [ %223, %221 ], [ %211, %219 ], [ %211, %214 ]
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227
  %229 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %228, i8 0, i64 16, i1 false)
  store i32 %103, ptr %229, align 8, !tbaa !257
  %230 = select i1 %105, i32 %104, i32 0
  %231 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 3
  store i32 %230, ptr %231, align 4, !tbaa !258
  %232 = select i1 %105, i32 0, i32 %104
  %233 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 4
  store i32 %232, ptr %233, align 8, !tbaa !259
  %234 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 11
  store ptr null, ptr %234, align 8, !tbaa !260
  %235 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 18
  %236 = trunc i32 %3 to i8
  %237 = load i8, ptr %235, align 8
  %238 = and i8 %236, 1
  %239 = and i8 %237, -8
  %240 = or disjoint i8 %239, %238
  %241 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 7
  store i32 0, ptr %241, align 4, !tbaa !261
  %242 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 8
  %243 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %242, i8 0, i64 16, i1 false)
  store i32 %2, ptr %243, align 8, !tbaa !265
  %244 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 17
  store i32 %16, ptr %244, align 4, !tbaa !266
  %245 = select i1 %105, i32 %68, i32 -1
  %246 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 13
  store i32 %245, ptr %246, align 4, !tbaa !267
  %247 = select i1 %105, i32 -1, i32 %68
  %248 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 14
  store i32 %247, ptr %248, align 8, !tbaa !268
  %249 = load i32, ptr %10, align 4
  %250 = select i1 %105, i32 %249, i32 2956
  %251 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 15
  store i32 %250, ptr %251, align 4, !tbaa !269
  %252 = select i1 %105, i32 2956, i32 %249
  %253 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %227, i32 16
  store i32 %252, ptr %253, align 8, !tbaa !270
  %254 = or disjoint i8 %240, 6
  store i8 %254, ptr %235, align 8
  %255 = add nsw i32 %225, 1
  store i32 %255, ptr @n_reloads, align 4, !tbaa !204
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
  store i32 %60, ptr %7, align 4, !tbaa !204
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
define dso_local i32 @remove_address_replacements(ptr noundef %0) local_unnamed_addr #0 !prof !173 {
  %2 = alloca [180 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) %2, i8 0, i64 180, i1 false)
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1, %16
  %6 = phi i64 [ %25, %16 ], [ 0, %1 ]
  %7 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %8 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = tail call i32 @loc_mentioned_in_p(ptr noundef %9, ptr noundef %0) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = add nsw i32 %7, 1
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !332
  br label %16

16:                                               ; preds = %5, %12
  %17 = phi i8 [ 2, %12 ], [ 1, %5 ]
  %18 = phi i32 [ %13, %12 ], [ %7, %5 ]
  %19 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !275
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [180 x i8], ptr %2, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !199
  %24 = or i8 %23, %17
  store i8 %24, ptr %22, align 1, !tbaa !199
  %25 = add nuw nsw i64 %6, 1
  %26 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %5, label %29, !llvm.loop !333

29:                                               ; preds = %16, %1
  %30 = phi i32 [ 0, %1 ], [ %18, %16 ]
  store i32 %30, ptr @n_replacements, align 4, !tbaa !204
  %31 = load i32, ptr @n_reloads, align 4, !tbaa !204
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
  %40 = load i8, ptr %39, align 1, !tbaa !199
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = trunc i64 %38 to i32
  tail call void @deallocate_reload_reg(i32 noundef %43) #24
  %44 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %38
  %45 = load ptr, ptr %44, align 8, !tbaa !254
  %46 = tail call i32 @remove_address_replacements(ptr noundef %45) #25, !range !238
  store ptr null, ptr %44, align 8, !tbaa !254
  br label %47

47:                                               ; preds = %35, %42
  %48 = phi i32 [ 1, %42 ], [ %37, %35 ]
  %49 = icmp ugt i64 %36, 1
  br i1 %49, label %35, label %50, !llvm.loop !334

50:                                               ; preds = %47, %29
  %51 = phi i32 [ 0, %29 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %2) #23
  ret i32 %51
}

; Function Attrs: optsize
declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_dummy_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !prof !335 !PGOFuncName !336 {
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !199
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !199
  %16 = icmp eq i8 %12, %15
  br i1 %16, label %21, label %17, !prof !337

17:                                               ; preds = %9
  %18 = icmp ugt i8 %12, 4
  %19 = icmp ugt i8 %15, 4
  %20 = or i1 %18, %19
  br i1 %20, label %267, label %21

21:                                               ; preds = %17, %9
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %31, label %25, !prof !338

25:                                               ; preds = %40, %55, %21
  %26 = phi i32 [ 0, %21 ], [ %34, %40 ], [ %59, %55 ]
  %27 = phi ptr [ %1, %21 ], [ %36, %40 ], [ %58, %55 ]
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 39
  br i1 %30, label %61, label %91, !prof !338

31:                                               ; preds = %21, %55
  %32 = phi i32 [ %57, %55 ], [ %22, %21 ]
  %33 = phi ptr [ %58, %55 ], [ %1, %21 ]
  %34 = phi i32 [ %59, %55 ], [ 0, %21 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !199
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
  %47 = load i32, ptr %46, align 8, !tbaa !199
  %48 = lshr i32 %32, 16
  %49 = and i32 %48, 255
  %50 = tail call i32 @subreg_regno_offset(i32 noundef %41, i32 noundef %45, i32 noundef %47, i32 noundef %49) #24
  %51 = add i32 %50, %34
  %52 = load ptr, ptr %35, align 8, !tbaa !199
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  br label %55

55:                                               ; preds = %43, %31
  %56 = phi i32 [ %54, %43 ], [ %38, %31 ]
  %57 = phi i32 [ %53, %43 ], [ %37, %31 ]
  %58 = phi ptr [ %52, %43 ], [ %36, %31 ]
  %59 = phi i32 [ %51, %43 ], [ %34, %31 ]
  %60 = icmp eq i32 %56, 39
  br i1 %60, label %31, label %25, !prof !339, !llvm.loop !340

61:                                               ; preds = %25, %85
  %62 = phi i32 [ %87, %85 ], [ %28, %25 ]
  %63 = phi ptr [ %88, %85 ], [ %0, %25 ]
  %64 = phi i32 [ %89, %85 ], [ 0, %25 ]
  %65 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !199
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
  %77 = load i32, ptr %76, align 8, !tbaa !199
  %78 = lshr i32 %62, 16
  %79 = and i32 %78, 255
  %80 = tail call i32 @subreg_regno_offset(i32 noundef %71, i32 noundef %75, i32 noundef %77, i32 noundef %79) #24
  %81 = add i32 %80, %64
  %82 = load ptr, ptr %65, align 8, !tbaa !199
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  br label %85

85:                                               ; preds = %73, %61
  %86 = phi i32 [ %84, %73 ], [ %68, %61 ]
  %87 = phi i32 [ %83, %73 ], [ %67, %61 ]
  %88 = phi ptr [ %82, %73 ], [ %66, %61 ]
  %89 = phi i32 [ %81, %73 ], [ %64, %61 ]
  %90 = icmp eq i32 %86, 39
  br i1 %90, label %61, label %91, !prof !339, !llvm.loop !341

91:                                               ; preds = %70, %85, %25
  %92 = phi i32 [ 0, %25 ], [ %64, %70 ], [ %89, %85 ]
  %93 = phi ptr [ %0, %25 ], [ %66, %70 ], [ %88, %85 ]
  %94 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %93, i32 noundef %6) #24
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 %6, i32 %94, !prof !342
  %97 = load i32, ptr %27, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %151, !prof !337

100:                                              ; preds = %91
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #25
  %102 = icmp ult i32 %101, 53
  br i1 %102, label %103, label %151, !prof !337

103:                                              ; preds = %100
  %104 = add i32 %101, %26
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %105, i64 %10
  %107 = load i8, ptr %106, align 1, !tbaa !199
  %108 = zext i8 %107 to i32
  %109 = load ptr, ptr %2, align 8, !tbaa !200
  %110 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  store ptr %110, ptr %2, align 8, !tbaa !200
  %111 = icmp ult i32 %104, 53
  br i1 %111, label %112, label %149, !prof !337

112:                                              ; preds = %103
  %113 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %104, i32 noundef %5) #24
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %149, label %115, !prof !342

115:                                              ; preds = %112
  %116 = add nuw nsw i32 %104, %108
  %117 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !199
  %120 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %104, i32 noundef %116, ptr noundef %119, ptr noundef %3) #25
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %149, !prof !343

122:                                              ; preds = %115
  %123 = icmp eq i8 %107, 0
  br i1 %123, label %140, label %124, !prof !344

124:                                              ; preds = %122
  %125 = sext i32 %96 to i64
  %126 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !250
  br label %128

128:                                              ; preds = %124, %134
  %129 = phi i64 [ 0, %124 ], [ %136, %134 ]
  %130 = add nuw nsw i64 %129, %105
  %131 = shl nuw i64 1, %130
  %132 = and i64 %127, %131
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %138, label %134, !prof !345

134:                                              ; preds = %128
  %135 = zext i8 %107 to i64
  %136 = add nuw nsw i64 %129, 1
  %137 = icmp eq i64 %136, %135
  br i1 %137, label %143, label %128, !prof !346, !llvm.loop !347

138:                                              ; preds = %128
  %139 = trunc i64 %129 to i32
  br label %140

140:                                              ; preds = %138, %122
  %141 = phi i32 [ 0, %122 ], [ %139, %138 ]
  %142 = icmp eq i32 %141, %108
  br i1 %142, label %143, label %149, !prof !348

143:                                              ; preds = %134, %140
  %144 = load i32, ptr %1, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 37
  br i1 %146, label %149, label %147, !prof !349

147:                                              ; preds = %143
  %148 = tail call ptr @gen_rtx_REG(i32 noundef %5, i32 noundef %104) #24
  br label %149

149:                                              ; preds = %140, %147, %143, %115, %112, %103
  %150 = phi ptr [ null, %115 ], [ null, %112 ], [ null, %103 ], [ %148, %147 ], [ null, %140 ], [ %1, %143 ]
  store ptr %109, ptr %2, align 8, !tbaa !200
  br label %151

151:                                              ; preds = %149, %100, %91
  %152 = phi ptr [ %150, %149 ], [ null, %100 ], [ null, %91 ]
  %153 = load i32, ptr @hard_regs_live_known, align 4, !tbaa !204
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %267, label %155, !prof !342

155:                                              ; preds = %151
  %156 = load i32, ptr %93, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 37
  br i1 %158, label %159, label %267, !prof !350

159:                                              ; preds = %155
  %160 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %161 = icmp ult i32 %160, 53
  br i1 %161, label %162, label %267, !prof !351

162:                                              ; preds = %159
  %163 = icmp eq ptr %152, null
  br i1 %163, label %168, label %164, !prof !352

164:                                              ; preds = %162
  %165 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %166 = tail call ptr @find_reg_note(ptr noundef %165, i32 noundef 6, ptr noundef nonnull %1) #24
  %167 = icmp eq ptr %166, null
  br i1 %167, label %267, label %168, !prof !353

168:                                              ; preds = %164, %162
  %169 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %170 = tail call ptr @find_reg_note(ptr noundef %169, i32 noundef 1, ptr noundef nonnull %0) #24
  %171 = icmp eq ptr %170, null
  br i1 %171, label %267, label %172, !prof !354

172:                                              ; preds = %168
  %173 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !199
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %267, !prof !355

178:                                              ; preds = %172
  %179 = load i32, ptr %27, align 8
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 %5, i32 %181, !prof !354
  %184 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %173, i32 noundef %183) #24
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %267, label %186, !prof !354

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load i32, ptr %187, align 8, !tbaa !199
  %189 = icmp ult i32 %188, 53
  br i1 %189, label %212, label %190, !prof !354

190:                                              ; preds = %186
  %191 = load ptr, ptr @cfun, align 8, !tbaa !200
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !288
  %194 = load ptr, ptr %193, align 8, !tbaa !290
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %194, i64 0, i32 9
  %196 = load i32, ptr %195, align 8, !tbaa !292
  %197 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %196) #25
  %198 = getelementptr inbounds %struct.df_lr_bb_info, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !294
  %200 = tail call i32 @bitmap_bit_p(ptr noundef %199, i32 noundef %188) #24
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %267, !prof !355

202:                                              ; preds = %190
  %203 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %204 = zext i32 %203 to i64
  %205 = load i32, ptr %93, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %204, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !199
  %211 = icmp eq i8 %210, 1
  br i1 %211, label %212, label %267, !prof !355

212:                                              ; preds = %202, %186
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %214 = add i32 %213, %92
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %215, i64 %13
  %217 = load i8, ptr %216, align 1, !tbaa !199
  %218 = zext i8 %217 to i32
  %219 = add i32 %214, %218
  %220 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %214, i32 noundef %219, ptr noundef nonnull %27, ptr noundef null) #25
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %267, !prof !355

222:                                              ; preds = %212
  %223 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !199
  %226 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %214, i32 noundef %219, ptr noundef %225) #25, !range !238
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %267, !prof !355

228:                                              ; preds = %222
  %229 = icmp eq i32 %8, 0
  br i1 %229, label %233, label %230, !prof !355

230:                                              ; preds = %228
  %231 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %214, i32 noundef %219, ptr noundef %225, ptr noundef %2) #25
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %267

233:                                              ; preds = %230, %228
  %234 = icmp eq i8 %217, 0
  br i1 %234, label %251, label %235, !prof !356

235:                                              ; preds = %233
  %236 = sext i32 %96 to i64
  %237 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8, !tbaa !250
  br label %239

239:                                              ; preds = %235, %247
  %240 = phi i64 [ 0, %235 ], [ %249, %247 ]
  %241 = trunc i64 %240 to i32
  %242 = add i32 %214, %241
  %243 = zext nneg i32 %242 to i64
  %244 = shl nuw i64 1, %243
  %245 = and i64 %238, %244
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %251, label %247, !prof !354

247:                                              ; preds = %239
  %248 = zext i8 %217 to i64
  %249 = add nuw nsw i64 %240, 1
  %250 = icmp eq i64 %249, %248
  br i1 %250, label %254, label %239, !prof !357, !llvm.loop !358

251:                                              ; preds = %239, %233
  %252 = phi i32 [ 0, %233 ], [ %241, %239 ]
  %253 = icmp eq i32 %252, %218
  br i1 %253, label %254, label %267, !prof !359

254:                                              ; preds = %247, %251
  %255 = icmp sgt i32 %7, -1
  br i1 %255, label %256, label %261, !prof !354

256:                                              ; preds = %254
  %257 = icmp eq ptr %152, %1
  br i1 %257, label %258, label %261

258:                                              ; preds = %256
  %259 = zext nneg i32 %7 to i64
  %260 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %259, i32 1
  store ptr null, ptr %260, align 8, !tbaa !256
  br label %261

261:                                              ; preds = %258, %256, %254
  %262 = load i32, ptr %0, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 37
  br i1 %264, label %267, label %265, !prof !355

265:                                              ; preds = %261
  %266 = tail call ptr @gen_rtx_REG(i32 noundef %4, i32 noundef %214) #24
  br label %267

267:                                              ; preds = %151, %155, %159, %164, %168, %172, %178, %190, %202, %251, %265, %261, %230, %222, %212, %17
  %268 = phi ptr [ null, %17 ], [ %152, %172 ], [ %152, %190 ], [ %152, %202 ], [ %152, %178 ], [ %152, %168 ], [ %152, %164 ], [ %152, %159 ], [ %152, %155 ], [ %152, %151 ], [ %152, %212 ], [ %152, %222 ], [ %152, %230 ], [ %266, %265 ], [ %152, %251 ], [ %0, %261 ]
  ret ptr %268
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @earlyclobber_operand_p(ptr noundef readnone %0) local_unnamed_addr #7 !prof !360 {
  %2 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !204
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %8, label %13, !prof !361

4:                                                ; preds = %8
  %5 = zext nneg i32 %2 to i64
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, %5
  br i1 %7, label %13, label %8, !prof !362, !llvm.loop !363

8:                                                ; preds = %1, %4
  %9 = phi i64 [ %6, %4 ], [ 0, %1 ]
  %10 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !200
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %4

13:                                               ; preds = %8, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_equiv_reg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !364 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %73, label %9, !prof !365

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %40 [
    i16 37, label %13
    i16 43, label %15
  ], !prof !366

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  br label %73

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %10, 134217728
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %720, !prof !367

21:                                               ; preds = %15
  %22 = load i32, ptr @flag_float_store, align 4, !tbaa !204
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24, !prof !367

24:                                               ; preds = %21
  %25 = lshr i32 %10, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !199
  %30 = and i8 %29, -2
  %31 = icmp ne i8 %30, 8
  %32 = trunc i32 %18 to i16
  %33 = add i16 %32, -80
  %34 = icmp ult i16 %33, -6
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %73, label %720

36:                                               ; preds = %21
  %37 = trunc i32 %18 to i16
  %38 = add i16 %37, -80
  %39 = icmp ult i16 %38, -6
  br i1 %39, label %73, label %720

40:                                               ; preds = %9
  %41 = zext nneg i32 %11 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !204
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %73, label %45, !prof !368

45:                                               ; preds = %40
  %46 = icmp eq i32 %11, 49
  br i1 %46, label %47, label %720

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !199
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !200
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !199
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !204
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %73, label %61

61:                                               ; preds = %52, %47
  %62 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !200
  %63 = icmp eq ptr %49, %62
  br i1 %63, label %64, label %720

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !199
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !204
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %720

73:                                               ; preds = %24, %64, %52, %40, %7, %13, %36
  %74 = phi i1 [ true, %13 ], [ false, %36 ], [ true, %7 ], [ true, %40 ], [ true, %52 ], [ true, %64 ], [ false, %24 ]
  %75 = phi i32 [ 0, %13 ], [ 1, %36 ], [ 0, %7 ], [ 0, %40 ], [ 0, %52 ], [ 0, %64 ], [ 1, %24 ]
  %76 = phi i1 [ true, %13 ], [ true, %36 ], [ true, %7 ], [ false, %40 ], [ false, %52 ], [ false, %64 ], [ true, %24 ]
  %77 = phi i1 [ false, %13 ], [ false, %36 ], [ false, %7 ], [ true, %40 ], [ true, %52 ], [ true, %64 ], [ false, %24 ]
  %78 = phi i32 [ 0, %13 ], [ 0, %36 ], [ 0, %7 ], [ 0, %40 ], [ 1, %52 ], [ 0, %64 ], [ 0, %24 ]
  %79 = phi i32 [ %14, %13 ], [ -1, %36 ], [ %5, %7 ], [ -1, %40 ], [ -1, %52 ], [ -1, %64 ], [ -1, %24 ]
  %80 = icmp eq ptr %4, null
  %81 = icmp sgt i32 %79, -1
  br label %82

82:                                               ; preds = %104, %73
  %83 = phi i32 [ 0, %73 ], [ %95, %104 ]
  %84 = phi ptr [ %1, %73 ], [ %88, %104 ]
  br label %85

85:                                               ; preds = %82, %90
  %86 = phi ptr [ %88, %90 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !199
  %89 = icmp eq ptr %88, null
  br i1 %89, label %720, label %90, !prof !369

90:                                               ; preds = %85
  %91 = load i32, ptr %88, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %85, label %94, !prof !370

94:                                               ; preds = %90
  %95 = add nuw nsw i32 %83, 1
  %96 = icmp eq i32 %92, 12
  br i1 %96, label %720, label %97, !prof !371

97:                                               ; preds = %94
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !200
  %99 = getelementptr inbounds %struct.param_info, ptr %98, i64 76, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !372
  %101 = icmp slt i32 %83, %100
  br i1 %101, label %102, label %720, !prof !374

102:                                              ; preds = %97
  %103 = icmp eq i32 %92, 8
  br i1 %103, label %105, label %104, !prof !375

104:                                              ; preds = %102, %108, %247, %269, %265, %262, %259, %255, %241, %235, %232, %119, %178, %276, %278, %280
  br label %82

105:                                              ; preds = %102
  br i1 %80, label %113, label %106, !prof !376

106:                                              ; preds = %105
  %107 = icmp eq ptr %4, inttoptr (i64 1 to ptr)
  br i1 %107, label %113, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !199
  %111 = load i32, ptr @reload_first_uid, align 4, !tbaa !204
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %104

113:                                              ; preds = %105, %106, %108
  %114 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !199
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 23
  br i1 %118, label %122, label %119, !prof !377

119:                                              ; preds = %113
  %120 = tail call ptr @single_set_2(ptr noundef nonnull %88, ptr noundef nonnull %115) #24
  %121 = icmp eq ptr %120, null
  br i1 %121, label %104, label %122, !prof !321

122:                                              ; preds = %113, %119
  %123 = phi ptr [ %120, %119 ], [ %115, %113 ]
  br i1 %81, label %124, label %143, !prof !378

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !199
  %127 = tail call i32 @true_regnum(ptr noundef %126) #24
  %128 = icmp eq i32 %127, %79
  br i1 %128, label %129, label %134, !prof !379

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !199
  %132 = tail call i32 @true_regnum(ptr noundef %131) #24
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %272, label %134

134:                                              ; preds = %129, %124
  %135 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !199
  %137 = tail call i32 @true_regnum(ptr noundef %136) #24
  %138 = icmp eq i32 %137, %79
  br i1 %138, label %139, label %143, !prof !380

139:                                              ; preds = %134
  %140 = load ptr, ptr %125, align 8, !tbaa !199
  %141 = tail call i32 @true_regnum(ptr noundef %140) #24
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %272, label %143, !prof !381

143:                                              ; preds = %122, %139, %134
  br i1 %76, label %158, label %144, !prof !382

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %146 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !199
  %148 = tail call i32 @rtx_equal_p(ptr noundef %147, ptr noundef %0) #24
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150, !prof !383

150:                                              ; preds = %144
  %151 = load ptr, ptr %145, align 8, !tbaa !199
  %152 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %151, ptr noundef %0) #25
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158, !prof !384

154:                                              ; preds = %150
  %155 = load ptr, ptr %145, align 8, !tbaa !199
  %156 = tail call i32 @true_regnum(ptr noundef %155) #24
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %272, label %158, !prof !385

158:                                              ; preds = %154, %150, %144, %143
  br i1 %74, label %178, label %159, !prof !386

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !199
  %162 = tail call i32 @true_regnum(ptr noundef %161) #24
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %164, label %169, !prof !387

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !199
  %167 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %166) #24
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %272, !prof !388

169:                                              ; preds = %164, %159
  %170 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %171 = load ptr, ptr %170, align 8, !tbaa !199
  %172 = tail call i32 @true_regnum(ptr noundef %171) #24
  %173 = icmp sgt i32 %172, -1
  br i1 %173, label %174, label %178, !prof !389

174:                                              ; preds = %169
  %175 = load ptr, ptr %160, align 8, !tbaa !199
  %176 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %175) #24
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %272, !prof !390

178:                                              ; preds = %158, %174, %169
  br i1 %76, label %104, label %179, !prof !391

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1, i32 1, i32 0, i32 0, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !199
  %182 = icmp eq ptr %181, null
  br i1 %182, label %232, label %183, !prof !392

183:                                              ; preds = %179
  %184 = tail call ptr @find_reg_note(ptr noundef nonnull %88, i32 noundef 3, ptr noundef null) #24
  %185 = icmp eq ptr %184, null
  br i1 %185, label %232, label %186, !prof !393

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !199
  %189 = tail call i32 @rtx_equal_p(ptr noundef %188, ptr noundef %0) #24
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %196, label %191, !prof !394

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !199
  %194 = tail call i32 @true_regnum(ptr noundef %193) #24
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %272, label %196

196:                                              ; preds = %191, %186
  %197 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !199
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 37
  br i1 %201, label %202, label %232, !prof !394

202:                                              ; preds = %196
  %203 = load ptr, ptr %187, align 8, !tbaa !199
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 32
  br i1 %206, label %207, label %232, !prof !395

207:                                              ; preds = %202
  %208 = lshr i32 %204, 16
  %209 = and i32 %208, 255
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !199
  %213 = and i8 %212, -2
  %214 = icmp eq i8 %213, 8
  br i1 %214, label %215, label %232

215:                                              ; preds = %207
  %216 = load i32, ptr %0, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 30
  br i1 %218, label %219, label %232

219:                                              ; preds = %215
  %220 = tail call ptr @operand_subword(ptr noundef nonnull %203, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %221 = icmp eq ptr %220, null
  br i1 %221, label %232, label %222

222:                                              ; preds = %219
  %223 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %220) #24
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr %197, align 8, !tbaa !199
  %227 = tail call ptr @operand_subword(ptr noundef %226, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = tail call i32 @true_regnum(ptr noundef nonnull %227) #24
  %231 = icmp sgt i32 %230, -1
  br i1 %231, label %272, label %232

232:                                              ; preds = %207, %229, %225, %222, %219, %215, %202, %196, %183, %179
  %233 = tail call ptr @find_reg_note(ptr noundef nonnull %88, i32 noundef 3, ptr noundef null) #24
  %234 = icmp eq ptr %233, null
  br i1 %234, label %104, label %235, !prof !396

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !199
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 65535
  %240 = icmp eq i32 %239, 37
  br i1 %240, label %241, label %104, !prof !394

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !199
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, 32
  br i1 %246, label %247, label %104, !prof !395

247:                                              ; preds = %241
  %248 = lshr i32 %244, 16
  %249 = and i32 %248, 255
  %250 = zext nneg i32 %249 to i64
  %251 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !199
  %253 = and i8 %252, -2
  %254 = icmp eq i8 %253, 8
  br i1 %254, label %255, label %104

255:                                              ; preds = %247
  %256 = load i32, ptr %0, align 8
  %257 = and i32 %256, 65535
  %258 = icmp eq i32 %257, 30
  br i1 %258, label %259, label %104

259:                                              ; preds = %255
  %260 = tail call ptr @operand_subword(ptr noundef nonnull %243, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %261 = icmp eq ptr %260, null
  br i1 %261, label %104, label %262

262:                                              ; preds = %259
  %263 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %260) #24
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %104, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %236, align 8, !tbaa !199
  %267 = tail call ptr @operand_subword(ptr noundef %266, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %268 = icmp eq ptr %267, null
  br i1 %268, label %104, label %269

269:                                              ; preds = %265
  %270 = tail call i32 @true_regnum(ptr noundef nonnull %267) #24
  %271 = icmp sgt i32 %270, -1
  br i1 %271, label %272, label %104

272:                                              ; preds = %269, %229, %191, %174, %164, %154, %139, %129
  %273 = phi i32 [ %132, %129 ], [ %141, %139 ], [ %162, %164 ], [ %172, %174 ], [ %194, %191 ], [ %230, %229 ], [ %270, %269 ], [ %156, %154 ]
  %274 = phi ptr [ %131, %129 ], [ %140, %139 ], [ %161, %164 ], [ %171, %174 ], [ %193, %191 ], [ %227, %229 ], [ %267, %269 ], [ %155, %154 ]
  %275 = icmp sgt i32 %3, -1
  br i1 %275, label %276, label %278, !prof !397

276:                                              ; preds = %272
  %277 = icmp eq i32 %273, %3
  br i1 %277, label %286, label %104

278:                                              ; preds = %272
  %279 = icmp ugt i32 %273, 52
  br i1 %279, label %104, label %280, !prof !397

280:                                              ; preds = %278
  %281 = sext i32 %2 to i64
  %282 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %281
  %283 = load i64, ptr %282, align 8, !tbaa !250
  %284 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %283, i32 noundef %6, i32 noundef %273) #25, !range !251
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %104, label %286, !prof !316

286:                                              ; preds = %276, %280
  %287 = phi i32 [ %3, %276 ], [ %273, %280 ]
  %288 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1
  %289 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1, i32 1, i32 0, i32 0, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !199
  %291 = icmp eq ptr %290, null
  br i1 %291, label %295, label %292, !prof !398

292:                                              ; preds = %286
  %293 = tail call ptr @find_reg_note(ptr noundef nonnull %88, i32 noundef 6, ptr noundef %274) #24
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %720, !prof !399

295:                                              ; preds = %292, %286
  %296 = icmp eq i32 %287, 7
  %297 = icmp eq i32 %79, 7
  %298 = select i1 %296, i1 true, i1 %297
  br i1 %298, label %309, label %299, !prof !400

299:                                              ; preds = %295
  br i1 %74, label %314, label %300, !prof !401

300:                                              ; preds = %299
  %301 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !200
  %302 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %301, ptr noundef %0) #25
  %303 = icmp eq i32 %302, 0
  %304 = load i32, ptr %274, align 8
  %305 = lshr i32 %304, 16
  %306 = and i32 %305, 255
  %307 = icmp eq i32 %306, %6
  %308 = select i1 %303, i32 %78, i32 1, !prof !402
  br i1 %307, label %320, label %720, !prof !403

309:                                              ; preds = %295
  %310 = load i32, ptr %274, align 8
  %311 = lshr i32 %310, 16
  %312 = and i32 %311, 255
  %313 = icmp eq i32 %312, %6
  br i1 %313, label %319, label %720, !prof !403

314:                                              ; preds = %299
  %315 = load i32, ptr %274, align 8
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  %318 = icmp eq i32 %317, %6
  br i1 %318, label %344, label %720, !prof !403

319:                                              ; preds = %309
  br i1 %74, label %344, label %320, !prof !404

320:                                              ; preds = %300, %319
  %321 = phi i32 [ 1, %319 ], [ %308, %300 ]
  %322 = load i32, ptr %88, align 8
  %323 = and i32 %322, 65535
  %324 = add nsw i32 %323, -7
  %325 = icmp ult i32 %324, 3
  br i1 %325, label %328, label %326, !prof !405

326:                                              ; preds = %320
  %327 = icmp eq i32 %323, 10
  tail call void @llvm.assume(i1 %327)
  br label %328

328:                                              ; preds = %320, %326
  %329 = load ptr, ptr %288, align 8, !tbaa !199
  %330 = load i32, ptr %329, align 8
  %331 = and i32 %330, 65535
  %332 = icmp eq i32 %331, 23
  br i1 %332, label %335, label %333, !prof !402

333:                                              ; preds = %328
  %334 = tail call ptr @single_set_2(ptr noundef nonnull %88, ptr noundef nonnull %329) #24
  br label %335

335:                                              ; preds = %328, %333
  %336 = phi ptr [ %334, %333 ], [ %329, %328 ]
  %337 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !199
  %339 = icmp eq ptr %274, %338
  br i1 %339, label %340, label %344, !prof !406

340:                                              ; preds = %335
  %341 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %287) #25
  %342 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %287, i32 noundef %341, ptr noundef %0, ptr noundef null) #25
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %720, !prof !406

344:                                              ; preds = %314, %340, %335, %319
  %345 = phi i1 [ true, %340 ], [ true, %335 ], [ false, %319 ], [ false, %314 ]
  %346 = phi i32 [ %321, %340 ], [ %321, %335 ], [ 1, %319 ], [ %78, %314 ]
  %347 = icmp ugt i32 %79, 52
  br i1 %347, label %348, label %350, !prof !407

348:                                              ; preds = %344
  %349 = zext nneg i32 %6 to i64
  br label %356

350:                                              ; preds = %344
  %351 = zext nneg i32 %79 to i64
  %352 = zext nneg i32 %6 to i64
  %353 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %351, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !199
  %355 = zext i8 %354 to i32
  br label %356

356:                                              ; preds = %348, %350
  %357 = phi i64 [ %349, %348 ], [ %352, %350 ]
  %358 = phi i32 [ 1, %348 ], [ %355, %350 ]
  %359 = zext nneg i32 %287 to i64
  %360 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %359, i64 %357
  %361 = load i8, ptr %360, align 1, !tbaa !199
  %362 = zext i8 %361 to i32
  %363 = or i1 %77, %345
  %364 = xor i1 %363, true
  %365 = add nsw i32 %358, %79
  %366 = icmp sgt i32 %365, %287
  %367 = select i1 %364, i1 %366, i1 false
  %368 = add nuw nsw i32 %287, %362
  %369 = icmp slt i32 %79, %368
  %370 = select i1 %367, i1 %369, i1 false
  br i1 %370, label %720, label %371, !prof !408

371:                                              ; preds = %356
  br i1 %80, label %418, label %372, !prof !403

372:                                              ; preds = %371
  %373 = icmp ne ptr %4, inttoptr (i64 1 to ptr)
  %374 = icmp ne i8 %361, 0
  %375 = select i1 %373, i1 %374, i1 false
  br i1 %375, label %376, label %387

376:                                              ; preds = %372
  %377 = zext i8 %361 to i64
  %378 = getelementptr i16, ptr %4, i64 %359
  br label %382

379:                                              ; preds = %382
  %380 = add nuw nsw i64 %383, 1
  %381 = icmp eq i64 %380, %377
  br i1 %381, label %387, label %382, !llvm.loop !409

382:                                              ; preds = %376, %379
  %383 = phi i64 [ 0, %376 ], [ %380, %379 ]
  %384 = getelementptr i16, ptr %378, i64 %383
  %385 = load i16, ptr %384, align 2, !tbaa !230
  %386 = icmp sgt i16 %385, -1
  br i1 %386, label %720, label %379

387:                                              ; preds = %379, %372
  %388 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %418

390:                                              ; preds = %387
  %391 = zext nneg i32 %388 to i64
  br label %392

392:                                              ; preds = %390, %415
  %393 = phi i64 [ 0, %390 ], [ %416, %415 ]
  %394 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %393, i32 11
  %395 = load ptr, ptr %394, align 8, !tbaa !260
  %396 = icmp eq ptr %395, null
  br i1 %396, label %415, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %393
  %399 = load ptr, ptr %398, align 8, !tbaa !254
  %400 = icmp eq ptr %399, null
  br i1 %400, label %415, label %401

401:                                              ; preds = %397
  %402 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %395) #25
  %403 = icmp slt i32 %402, %368
  br i1 %403, label %404, label %415

404:                                              ; preds = %401
  %405 = sext i32 %402 to i64
  %406 = load i32, ptr %395, align 8
  %407 = lshr i32 %406, 16
  %408 = and i32 %407, 255
  %409 = zext nneg i32 %408 to i64
  %410 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %405, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !199
  %412 = zext i8 %411 to i32
  %413 = add nsw i32 %402, %412
  %414 = icmp sgt i32 %413, %287
  br i1 %414, label %720, label %415

415:                                              ; preds = %401, %404, %392, %397
  %416 = add nuw nsw i64 %393, 1
  %417 = icmp eq i64 %416, %391
  br i1 %417, label %418, label %392, !llvm.loop !410

418:                                              ; preds = %415, %387, %371
  br i1 %345, label %419, label %424, !prof !411

419:                                              ; preds = %418
  %420 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !199
  %422 = tail call zeroext i8 @constant_address_p(ptr noundef %421) #24
  %423 = icmp ne i8 %422, 0
  br label %424

424:                                              ; preds = %419, %418
  %425 = phi i1 [ %423, %419 ], [ true, %418 ]
  %426 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %427 = load ptr, ptr %426, align 8, !tbaa !199
  %428 = icmp eq ptr %427, %88
  br i1 %428, label %720, label %429, !prof !412

429:                                              ; preds = %424, %716
  %430 = phi ptr [ %718, %716 ], [ %427, %424 ]
  %431 = load i32, ptr %430, align 8
  %432 = and i32 %431, 65535
  %433 = icmp eq i32 %432, 10
  br i1 %433, label %434, label %467, !prof !413

434:                                              ; preds = %429
  %435 = or i32 %346, %75
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %720, !prof !414

437:                                              ; preds = %434
  %438 = icmp eq i32 %358, 0
  %439 = select i1 %347, i1 true, i1 %438
  br i1 %439, label %452, label %440

440:                                              ; preds = %437
  %441 = zext i32 %79 to i64
  %442 = zext nneg i32 %358 to i64
  br label %446

443:                                              ; preds = %446
  %444 = add nuw nsw i64 %447, 1
  %445 = icmp eq i64 %444, %442
  br i1 %445, label %452, label %446, !llvm.loop !415

446:                                              ; preds = %440, %443
  %447 = phi i64 [ %444, %443 ], [ 0, %440 ]
  %448 = add nuw nsw i64 %447, %441
  %449 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !199
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %443, label %720

452:                                              ; preds = %443, %437
  %453 = icmp ugt i32 %287, 52
  %454 = icmp eq i8 %361, 0
  %455 = select i1 %453, i1 true, i1 %454
  br i1 %455, label %467, label %456

456:                                              ; preds = %452
  %457 = zext i8 %361 to i64
  br label %461

458:                                              ; preds = %461
  %459 = add nuw nsw i64 %462, 1
  %460 = icmp eq i64 %459, %457
  br i1 %460, label %467, label %461, !llvm.loop !416

461:                                              ; preds = %456, %458
  %462 = phi i64 [ %459, %458 ], [ 0, %456 ]
  %463 = add nuw nsw i64 %462, %359
  %464 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %463
  %465 = load i8, ptr %464, align 1, !tbaa !199
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %458, label %720

467:                                              ; preds = %458, %452, %429
  %468 = add nsw i32 %432, -7
  %469 = icmp ult i32 %468, 4
  br i1 %469, label %470, label %716, !prof !417

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !199
  %473 = tail call i32 @volatile_insn_p(ptr noundef %472) #24
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %720, !prof !418

475:                                              ; preds = %470
  %476 = load i32, ptr %472, align 8
  %477 = and i32 %476, 65535
  %478 = icmp eq i32 %477, 14
  br i1 %478, label %479, label %483, !prof !419

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1, i32 0, i32 0, i64 1
  %481 = load ptr, ptr %480, align 8, !tbaa !199
  %482 = load i32, ptr %481, align 8
  br label %483

483:                                              ; preds = %479, %475
  %484 = phi i32 [ %482, %479 ], [ %476, %475 ]
  %485 = phi ptr [ %481, %479 ], [ %472, %475 ]
  %486 = trunc i32 %484 to i16
  switch i16 %486, label %647 [
    i16 23, label %487
    i16 25, label %487
    i16 15, label %554
  ], !prof !420

487:                                              ; preds = %483, %483
  br label %488

488:                                              ; preds = %494, %487
  %489 = phi ptr [ %485, %487 ], [ %491, %494 ]
  %490 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !199
  %492 = load i32, ptr %491, align 8
  %493 = trunc i32 %492 to i16
  switch i16 %493, label %524 [
    i16 39, label %494
    i16 120, label %494
    i16 40, label %494
    i16 37, label %495
  ], !prof !421

494:                                              ; preds = %488, %488, %488
  br label %488, !llvm.loop !422

495:                                              ; preds = %488
  %496 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %491) #25
  %497 = icmp ult i32 %496, 53
  br i1 %497, label %498, label %506, !prof !423

498:                                              ; preds = %495
  %499 = zext nneg i32 %496 to i64
  %500 = lshr i32 %492, 16
  %501 = and i32 %500, 255
  %502 = zext nneg i32 %501 to i64
  %503 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %499, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !199
  %505 = zext i8 %504 to i32
  br label %506

506:                                              ; preds = %495, %498
  %507 = phi i32 [ %505, %498 ], [ 1, %495 ]
  %508 = icmp slt i32 %496, %365
  %509 = add nsw i32 %507, %496
  %510 = icmp sgt i32 %509, %79
  %511 = select i1 %508, i1 %510, i1 false
  br i1 %511, label %720, label %512, !prof !424

512:                                              ; preds = %506
  %513 = icmp slt i32 %496, %368
  %514 = icmp sgt i32 %509, %287
  %515 = select i1 %513, i1 %514, i1 false
  br i1 %515, label %720, label %516, !prof !425

516:                                              ; preds = %512
  br i1 %425, label %520, label %517, !prof !426

517:                                              ; preds = %516
  %518 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %491, ptr noundef %0) #25
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %720, !prof !272

520:                                              ; preds = %517, %516
  %521 = icmp eq i32 %496, 7
  br i1 %521, label %522, label %647, !prof !427

522:                                              ; preds = %520
  %523 = icmp eq i32 %346, 0
  br i1 %523, label %647, label %720

524:                                              ; preds = %488
  %525 = and i32 %492, 65535
  %526 = icmp eq i32 %525, 43
  %527 = and i1 %345, %526
  br i1 %527, label %528, label %535, !prof !428

528:                                              ; preds = %524
  %529 = lshr i32 %492, 16
  %530 = and i32 %529, 255
  %531 = tail call i32 @push_operand(ptr noundef nonnull %491, i32 noundef %530) #24
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %720, label %533, !prof !429

533:                                              ; preds = %528
  %534 = load i32, ptr %491, align 8
  br label %535

535:                                              ; preds = %533, %524
  %536 = phi i32 [ %534, %533 ], [ %492, %524 ]
  %537 = and i32 %536, 65535
  %538 = icmp eq i32 %537, 43
  br i1 %538, label %539, label %547, !prof !430

539:                                              ; preds = %535
  %540 = icmp sgt i32 %79, 52
  br i1 %540, label %541, label %547

541:                                              ; preds = %539
  %542 = zext i32 %79 to i64
  %543 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %544 = getelementptr inbounds ptr, ptr %543, i64 %542
  %545 = load ptr, ptr %544, align 8, !tbaa !200
  %546 = icmp eq ptr %545, null
  br i1 %546, label %547, label %720

547:                                              ; preds = %541, %539, %535
  %548 = icmp eq i32 %346, 0
  br i1 %548, label %647, label %549, !prof !431

549:                                              ; preds = %547
  %550 = lshr i32 %536, 16
  %551 = and i32 %550, 255
  %552 = tail call i32 @push_operand(ptr noundef nonnull %491, i32 noundef %551) #24
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %647, label %720

554:                                              ; preds = %483
  %555 = getelementptr inbounds %struct.rtx_def, ptr %485, i64 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !199
  %557 = load i32, ptr %556, align 8, !tbaa !432
  %558 = icmp slt i32 %557, 1
  br i1 %558, label %647, label %559, !prof !434

559:                                              ; preds = %554
  %560 = zext nneg i32 %557 to i64
  br label %561

561:                                              ; preds = %559, %645
  %562 = phi i64 [ %560, %559 ], [ %563, %645 ]
  %563 = add nsw i64 %562, -1
  %564 = load ptr, ptr %555, align 8, !tbaa !199
  %565 = getelementptr inbounds %struct.rtvec_def, ptr %564, i64 0, i32 1, i64 %563
  %566 = load ptr, ptr %565, align 8, !tbaa !200
  %567 = load i32, ptr %566, align 8
  %568 = and i32 %567, 65535
  %569 = icmp eq i32 %568, 14
  br i1 %569, label %570, label %574, !prof !435

570:                                              ; preds = %561
  %571 = getelementptr inbounds %struct.rtx_def, ptr %566, i64 0, i32 1, i32 0, i32 0, i64 1
  %572 = load ptr, ptr %571, align 8, !tbaa !199
  %573 = load i32, ptr %572, align 8
  br label %574

574:                                              ; preds = %570, %561
  %575 = phi i32 [ %573, %570 ], [ %567, %561 ]
  %576 = phi ptr [ %572, %570 ], [ %566, %561 ]
  %577 = trunc i32 %575 to i16
  switch i16 %577, label %645 [
    i16 23, label %578
    i16 25, label %578
  ], !prof !436

578:                                              ; preds = %574, %574
  br label %579

579:                                              ; preds = %585, %578
  %580 = phi ptr [ %576, %578 ], [ %582, %585 ]
  %581 = getelementptr inbounds %struct.rtx_def, ptr %580, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !199
  %583 = load i32, ptr %582, align 8
  %584 = trunc i32 %583 to i16
  switch i16 %584, label %615 [
    i16 39, label %585
    i16 120, label %585
    i16 40, label %585
    i16 37, label %586
  ], !prof !437

585:                                              ; preds = %579, %579, %579
  br label %579, !llvm.loop !438

586:                                              ; preds = %579
  %587 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %582) #25
  %588 = icmp ult i32 %587, 53
  br i1 %588, label %589, label %597, !prof !439

589:                                              ; preds = %586
  %590 = zext nneg i32 %587 to i64
  %591 = lshr i32 %583, 16
  %592 = and i32 %591, 255
  %593 = zext nneg i32 %592 to i64
  %594 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %590, i64 %593
  %595 = load i8, ptr %594, align 1, !tbaa !199
  %596 = zext i8 %595 to i32
  br label %597

597:                                              ; preds = %586, %589
  %598 = phi i32 [ %596, %589 ], [ 1, %586 ]
  %599 = icmp slt i32 %587, %365
  %600 = add nsw i32 %598, %587
  %601 = icmp sgt i32 %600, %79
  %602 = select i1 %599, i1 %601, i1 false
  br i1 %602, label %720, label %603, !prof !440

603:                                              ; preds = %597
  %604 = icmp slt i32 %587, %368
  br i1 %604, label %605, label %607, !prof !435

605:                                              ; preds = %603
  %606 = icmp sgt i32 %600, %287
  br i1 %606, label %720, label %607

607:                                              ; preds = %605, %603
  br i1 %425, label %611, label %608, !prof !439

608:                                              ; preds = %607
  %609 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %582, ptr noundef %0) #25
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %720

611:                                              ; preds = %608, %607
  %612 = icmp eq i32 %587, 7
  br i1 %612, label %613, label %645, !prof !435

613:                                              ; preds = %611
  %614 = icmp eq i32 %346, 0
  br i1 %614, label %645, label %720

615:                                              ; preds = %579
  %616 = and i32 %583, 65535
  %617 = icmp eq i32 %616, 43
  %618 = and i1 %345, %617
  br i1 %618, label %619, label %626

619:                                              ; preds = %615
  %620 = lshr i32 %583, 16
  %621 = and i32 %620, 255
  %622 = tail call i32 @push_operand(ptr noundef nonnull %582, i32 noundef %621) #24
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %720, label %624

624:                                              ; preds = %619
  %625 = load i32, ptr %582, align 8
  br label %626

626:                                              ; preds = %624, %615
  %627 = phi i32 [ %625, %624 ], [ %583, %615 ]
  %628 = icmp sgt i32 %79, 52
  %629 = and i32 %627, 65535
  %630 = icmp eq i32 %629, 43
  %631 = select i1 %630, i1 %628, i1 false
  br i1 %631, label %632, label %638

632:                                              ; preds = %626
  %633 = zext i32 %79 to i64
  %634 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %635 = getelementptr inbounds ptr, ptr %634, i64 %633
  %636 = load ptr, ptr %635, align 8, !tbaa !200
  %637 = icmp eq ptr %636, null
  br i1 %637, label %638, label %720

638:                                              ; preds = %632, %626
  %639 = icmp eq i32 %346, 0
  br i1 %639, label %645, label %640

640:                                              ; preds = %638
  %641 = lshr i32 %627, 16
  %642 = and i32 %641, 255
  %643 = tail call i32 @push_operand(ptr noundef nonnull %582, i32 noundef %642) #24
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %720

645:                                              ; preds = %640, %638, %613, %611, %574
  %646 = icmp slt i64 %562, 2
  br i1 %646, label %647, label %561, !prof !441, !llvm.loop !442

647:                                              ; preds = %645, %554, %549, %547, %522, %520, %483
  %648 = load i32, ptr %430, align 8
  %649 = and i32 %648, 65535
  %650 = icmp eq i32 %649, 10
  br i1 %650, label %651, label %716, !prof !443

651:                                              ; preds = %647
  %652 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 1, i32 1, i32 0, i32 0, i64 2
  %653 = load ptr, ptr %652, align 8, !tbaa !199
  %654 = icmp eq ptr %653, null
  br i1 %654, label %716, label %655

655:                                              ; preds = %651
  %656 = getelementptr inbounds %struct.rtx_def, ptr %653, i64 0, i32 1, i32 0, i32 0, i64 1
  %657 = load ptr, ptr %656, align 8, !tbaa !199
  %658 = icmp eq ptr %657, null
  br i1 %658, label %716, label %659

659:                                              ; preds = %655
  %660 = icmp eq i32 %346, 0
  br label %661

661:                                              ; preds = %659, %711
  %662 = phi ptr [ %713, %711 ], [ %656, %659 ]
  %663 = phi ptr [ %712, %711 ], [ %653, %659 ]
  %664 = getelementptr inbounds %struct.rtx_def, ptr %663, i64 0, i32 1
  %665 = load ptr, ptr %664, align 8, !tbaa !199
  %666 = load i32, ptr %665, align 8
  %667 = and i32 %666, 65535
  %668 = icmp eq i32 %667, 25
  br i1 %668, label %669, label %711

669:                                              ; preds = %661
  %670 = getelementptr inbounds %struct.rtx_def, ptr %665, i64 0, i32 1
  %671 = load ptr, ptr %670, align 8, !tbaa !199
  %672 = load i32, ptr %671, align 8
  %673 = and i32 %672, 65535
  %674 = icmp eq i32 %673, 37
  br i1 %674, label %675, label %696

675:                                              ; preds = %669
  %676 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %671) #25
  %677 = sext i32 %676 to i64
  %678 = lshr i32 %672, 16
  %679 = and i32 %678, 255
  %680 = zext nneg i32 %679 to i64
  %681 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %677, i64 %680
  %682 = load i8, ptr %681, align 1, !tbaa !199
  %683 = zext i8 %682 to i32
  %684 = icmp slt i32 %676, %365
  %685 = add nsw i32 %676, %683
  %686 = icmp sgt i32 %685, %79
  %687 = select i1 %684, i1 %686, i1 false
  br i1 %687, label %720, label %688

688:                                              ; preds = %675
  %689 = icmp slt i32 %676, %368
  %690 = icmp sgt i32 %685, %287
  %691 = select i1 %689, i1 %690, i1 false
  br i1 %691, label %720, label %692

692:                                              ; preds = %688
  br i1 %425, label %711, label %693

693:                                              ; preds = %692
  %694 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %671, ptr noundef %0) #25
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %711, label %720

696:                                              ; preds = %669
  %697 = icmp eq i32 %673, 43
  %698 = and i1 %345, %697
  br i1 %698, label %699, label %704

699:                                              ; preds = %696
  %700 = lshr i32 %672, 16
  %701 = and i32 %700, 255
  %702 = tail call i32 @push_operand(ptr noundef nonnull %671, i32 noundef %701) #24
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %720, label %704

704:                                              ; preds = %699, %696
  br i1 %660, label %711, label %705

705:                                              ; preds = %704
  %706 = load i32, ptr %671, align 8
  %707 = lshr i32 %706, 16
  %708 = and i32 %707, 255
  %709 = tail call i32 @push_operand(ptr noundef nonnull %671, i32 noundef %708) #24
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %720

711:                                              ; preds = %704, %705, %693, %692, %661
  %712 = load ptr, ptr %662, align 8, !tbaa !199
  %713 = getelementptr inbounds %struct.rtx_def, ptr %712, i64 0, i32 1, i32 0, i32 0, i64 1
  %714 = load ptr, ptr %713, align 8, !tbaa !199
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %661, !llvm.loop !444

716:                                              ; preds = %711, %655, %467, %647, %651
  %717 = getelementptr inbounds %struct.rtx_def, ptr %430, i64 0, i32 1, i32 0, i32 0, i64 1
  %718 = load ptr, ptr %717, align 8, !tbaa !199
  %719 = icmp eq ptr %718, %88
  br i1 %719, label %720, label %429, !prof !445

720:                                              ; preds = %94, %97, %85, %382, %404, %716, %470, %549, %541, %528, %506, %512, %517, %522, %434, %446, %461, %613, %608, %605, %597, %619, %632, %640, %705, %699, %675, %688, %693, %300, %424, %24, %15, %314, %45, %356, %340, %309, %292, %61, %64, %36
  %721 = phi ptr [ null, %36 ], [ null, %64 ], [ null, %61 ], [ null, %292 ], [ null, %309 ], [ null, %340 ], [ null, %356 ], [ null, %45 ], [ null, %314 ], [ null, %15 ], [ null, %24 ], [ %274, %424 ], [ null, %300 ], [ null, %693 ], [ null, %688 ], [ null, %675 ], [ null, %699 ], [ null, %705 ], [ null, %640 ], [ null, %632 ], [ null, %619 ], [ null, %597 ], [ null, %605 ], [ null, %608 ], [ null, %613 ], [ null, %461 ], [ null, %446 ], [ %274, %716 ], [ null, %470 ], [ null, %549 ], [ null, %541 ], [ null, %528 ], [ null, %506 ], [ null, %512 ], [ null, %517 ], [ null, %522 ], [ null, %434 ], [ null, %404 ], [ null, %382 ], [ null, %85 ], [ null, %97 ], [ null, %94 ]
  ret ptr %721
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 !prof !446 !PGOFuncName !447 {
  %2 = load ptr, ptr @df, align 8, !tbaa !200
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !448
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !450

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !451
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !200
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !452 !PGOFuncName !453 {
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi ptr [ %2, %4 ], [ %22, %18 ]
  %7 = phi ptr [ %3, %4 ], [ null, %18 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %156, label %9, !prof !454

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
  ], !prof !455

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %17 = icmp ugt i32 %16, 52
  br i1 %17, label %18, label %35, !prof !456

18:                                               ; preds = %15
  %19 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5

24:                                               ; preds = %18
  %25 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %26 = getelementptr inbounds ptr, ptr %25, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !200
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %156

29:                                               ; preds = %24
  %30 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !200
  %31 = getelementptr inbounds ptr, ptr %30, i64 %20
  %32 = load ptr, ptr %31, align 8, !tbaa !200
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %156

34:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6505, ptr noundef nonnull @.str.1) #24
  br label %156

35:                                               ; preds = %15
  %36 = icmp ult i32 %16, %1
  br i1 %36, label %37, label %156, !prof !457

37:                                               ; preds = %35
  %38 = zext nneg i32 %16 to i64
  %39 = lshr i32 %11, 16
  %40 = and i32 %39, 255
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !199
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %16, %44
  %46 = icmp ugt i32 %45, %0
  br label %156

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !199
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
  br i1 %69, label %103, label %70, !prof !458

70:                                               ; preds = %67
  %71 = load ptr, ptr %68, align 8, !tbaa !199
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 39
  br i1 %74, label %75, label %92, !prof !459

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %77 = icmp eq ptr %76, %7
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %76, align 8, !tbaa !199
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
  %90 = load ptr, ptr %68, align 8, !tbaa !199
  %91 = load i32, ptr %90, align 8
  br label %92

92:                                               ; preds = %89, %83, %78, %75, %70
  %93 = phi i32 [ %91, %89 ], [ %72, %83 ], [ %72, %78 ], [ %72, %75 ], [ %72, %70 ]
  %94 = phi ptr [ %90, %89 ], [ %71, %83 ], [ %71, %78 ], [ %71, %75 ], [ %71, %70 ]
  %95 = and i32 %93, 65535
  %96 = icmp eq i32 %95, 37
  br i1 %96, label %97, label %100, !prof !460

97:                                               ; preds = %92
  %98 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %94) #25, !range !238
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100, !prof !461

100:                                              ; preds = %97, %92
  %101 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %94, ptr noundef %7) #25
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %156, !prof !462

103:                                              ; preds = %100, %97, %67
  %104 = icmp eq i32 %12, 25
  %105 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = icmp eq ptr %105, %7
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %156, label %108, !prof !463

108:                                              ; preds = %129, %103
  %109 = phi ptr [ %105, %103 ], [ %119, %129 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !199
  br label %9

111:                                              ; preds = %9, %47, %53
  %112 = zext nneg i32 %12 to i64
  %113 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !200
  %115 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %112
  %116 = load i8, ptr %115, align 1, !tbaa !199
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %156, label %118, !prof !464

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %120 = zext i8 %116 to i64
  br label %121

121:                                              ; preds = %118, %154
  %122 = phi i64 [ %120, %118 ], [ %123, %154 ]
  %123 = add nsw i64 %122, -1
  %124 = getelementptr inbounds i8, ptr %114, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !199
  switch i8 %125, label %154 [
    i8 101, label %126
    i8 69, label %135
  ], !prof !465

126:                                              ; preds = %121
  %127 = getelementptr inbounds [1 x %union.rtunion_def], ptr %119, i64 0, i64 %123
  %128 = icmp eq ptr %127, %7
  br i1 %128, label %154, label %129, !prof !466

129:                                              ; preds = %126
  %130 = icmp eq i64 %123, 0
  br i1 %130, label %108, label %131, !prof !467

131:                                              ; preds = %129
  %132 = load ptr, ptr %127, align 8, !tbaa !199
  %133 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %132, ptr noundef %7) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %154, label %156, !prof !468

135:                                              ; preds = %121
  %136 = getelementptr inbounds [1 x %union.rtunion_def], ptr %119, i64 0, i64 %123
  %137 = load ptr, ptr %136, align 8, !tbaa !199
  %138 = load i32, ptr %137, align 8, !tbaa !432
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %154, label %140, !prof !469

140:                                              ; preds = %135
  %141 = zext nneg i32 %138 to i64
  br label %142

142:                                              ; preds = %140, %152
  %143 = phi i64 [ %141, %140 ], [ %144, %152 ]
  %144 = add nsw i64 %143, -1
  %145 = load ptr, ptr %136, align 8, !tbaa !199
  %146 = getelementptr inbounds %struct.rtvec_def, ptr %145, i64 0, i32 1, i64 %144
  %147 = icmp eq ptr %146, %7
  br i1 %147, label %152, label %148, !prof !470

148:                                              ; preds = %142
  %149 = load ptr, ptr %146, align 8, !tbaa !200
  %150 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %149, ptr noundef %7) #25
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156, !prof !471

152:                                              ; preds = %142, %148
  %153 = icmp ult i64 %143, 2
  br i1 %153, label %154, label %142, !prof !472, !llvm.loop !473

154:                                              ; preds = %152, %135, %121, %126, %131
  %155 = icmp sgt i64 %122, 1
  br i1 %155, label %121, label %156, !prof !474, !llvm.loop !475

156:                                              ; preds = %5, %103, %86, %100, %111, %131, %154, %148, %35, %37, %34, %29, %24, %61
  %157 = phi i1 [ %66, %61 ], [ false, %24 ], [ false, %29 ], [ false, %34 ], [ false, %35 ], [ %46, %37 ], [ true, %148 ], [ true, %131 ], [ false, %154 ], [ false, %111 ], [ false, %103 ], [ true, %86 ], [ true, %100 ], [ false, %5 ]
  %158 = zext i1 %157 to i32
  ret i32 %158
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !prof !476 !PGOFuncName !477 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !199
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !prof !478 !PGOFuncName !479 {
  %4 = load i32, ptr %2, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %37 [
    i16 23, label %6
    i16 25, label %6
    i16 15, label %22
  ], !prof !480

6:                                                ; preds = %3, %3
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi ptr [ %10, %7 ], [ %2, %6 ]
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %21 [
    i16 39, label %7
    i16 37, label %13
  ], !prof !481

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %16, label %21, !prof !482

16:                                               ; preds = %13
  %17 = lshr i32 %11, 16
  %18 = and i32 %17, 255
  %19 = tail call fastcc i32 @end_hard_regno(i32 noundef %18, i32 noundef %14) #25
  %20 = icmp ugt i32 %19, %0
  br i1 %20, label %37, label %21, !prof !354

21:                                               ; preds = %7, %16, %13
  br label %37

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !199
  %25 = load i32, ptr %24, align 8, !tbaa !432
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %31, %22
  %28 = phi i64 [ %32, %31 ], [ %26, %22 ]
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37, !prof !483

31:                                               ; preds = %27
  %32 = add nsw i64 %28, -1
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !200
  %35 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr noundef %34) #25, !range !238
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %27, label %37, !prof !484, !llvm.loop !485

37:                                               ; preds = %27, %31, %3, %21, %16
  %38 = phi i32 [ 1, %16 ], [ 0, %21 ], [ 0, %3 ], [ 0, %27 ], [ 1, %31 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @can_reload_into(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !173 !PGOFuncName !486 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) %4, ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, i64 1128, i1 false), !tbaa.struct !487
  %11 = tail call fastcc i32 @recog_memoized(ptr noundef %10) #25
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @extract_insn(ptr noundef %10) #24
  %14 = tail call i32 @constrain_operands(i32 noundef 1) #24
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, ptr noundef nonnull align 8 dereferenceable(1128) %4, i64 1128, i1 false), !tbaa.struct !487
  br label %17

17:                                               ; preds = %3, %3, %15
  %18 = phi i32 [ %16, %15 ], [ 1, %3 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %4)
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @transfer_replacements(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !173 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %13
  %8 = phi i64 [ 0, %5 ], [ %14, %13 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !275
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %0, ptr %9, align 8, !tbaa !275
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !488

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
define dso_local i32 @operands_match_p(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !489 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %82, label %4, !prof !490

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
  ], !prof !491

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !199
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
  ], !prof !492

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8, !tbaa !199
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %70

25:                                               ; preds = %17, %20
  %26 = icmp eq i32 %9, 39
  br i1 %26, label %27, label %43, !prof !493

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !199
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #25
  %31 = icmp sgt i32 %30, 52
  br i1 %31, label %89, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %29, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !199
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
  br i1 %49, label %50, label %64, !prof !493

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !tbaa !199
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef %51) #25
  %53 = icmp sgt i32 %52, 52
  br i1 %53, label %89, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %51, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load i32, ptr %58, align 8, !tbaa !199
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
  br i1 %74, label %75, label %79, !prof !494

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !199
  %78 = icmp eq ptr %77, %1
  br i1 %78, label %82, label %6, !prof !495

79:                                               ; preds = %70
  %80 = load i32, ptr %1, align 8
  %81 = trunc i32 %80 to i16
  switch i16 %81, label %89 [
    i16 74, label %84
    i16 75, label %84
    i16 78, label %84
  ], !prof !496

82:                                               ; preds = %66, %120, %120, %120, %117, %93, %89, %127, %121, %2, %199, %133, %180, %168, %161, %155, %149, %75, %84
  %83 = phi i32 [ %88, %84 ], [ %132, %127 ], [ %126, %121 ], [ %69, %66 ], [ 0, %89 ], [ 0, %93 ], [ 0, %117 ], [ 0, %120 ], [ 0, %120 ], [ 0, %120 ], [ 1, %2 ], [ 1, %133 ], [ %200, %199 ], [ %190, %180 ], [ 0, %149 ], [ 0, %155 ], [ %166, %161 ], [ 0, %168 ], [ 1, %75 ]
  ret i32 %83

84:                                               ; preds = %79, %79, %79
  %85 = load ptr, ptr %5, align 8, !tbaa !199
  %86 = tail call i32 @operands_match_p(ptr noundef nonnull %7, ptr noundef %85) #25
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 0, i32 2
  br label %82

89:                                               ; preds = %50, %27, %79
  %90 = phi i32 [ %46, %50 ], [ %18, %27 ], [ %80, %79 ]
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %9, %91
  br i1 %92, label %93, label %82, !prof !497

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
  %102 = load ptr, ptr %101, align 8, !tbaa !199
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.mem_attrs, ptr %102, i64 0, i32 5
  %106 = load i8, ptr %105, align 8, !tbaa !201
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %100, %104
  %109 = phi i32 [ %107, %104 ], [ 0, %100 ]
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !199
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.mem_attrs, ptr %111, i64 0, i32 5
  %115 = load i8, ptr %114, align 8, !tbaa !201
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
  %123 = load ptr, ptr %122, align 8, !tbaa !199
  %124 = load ptr, ptr %5, align 8, !tbaa !199
  %125 = icmp eq ptr %123, %124
  %126 = zext i1 %125 to i32
  br label %82

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !199
  %130 = load ptr, ptr %5, align 8, !tbaa !199
  %131 = icmp eq ptr %129, %130
  %132 = zext i1 %131 to i32
  br label %82

133:                                              ; preds = %120
  %134 = zext nneg i32 %9 to i64
  %135 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !200
  %137 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %134
  %138 = load i8, ptr %137, align 1, !tbaa !199
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
  %148 = load i8, ptr %147, align 1, !tbaa !199
  switch i8 %148, label %195 [
    i8 119, label %149
    i8 105, label %155
    i8 101, label %161
    i8 48, label %196
    i8 69, label %168
  ]

149:                                              ; preds = %143
  %150 = getelementptr inbounds [1 x i64], ptr %141, i64 0, i64 %146
  %151 = load i64, ptr %150, align 8, !tbaa !199
  %152 = getelementptr inbounds [1 x i64], ptr %5, i64 0, i64 %146
  %153 = load i64, ptr %152, align 8, !tbaa !199
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %196, label %82

155:                                              ; preds = %143
  %156 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %157 = load i32, ptr %156, align 8, !tbaa !199
  %158 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %159 = load i32, ptr %158, align 8, !tbaa !199
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %196, label %82

161:                                              ; preds = %143
  %162 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %163 = load ptr, ptr %162, align 8, !tbaa !199
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %165 = load ptr, ptr %164, align 8, !tbaa !199
  %166 = tail call i32 @operands_match_p(ptr noundef %163, ptr noundef %165) #25
  switch i32 %166, label %196 [
    i32 0, label %82
    i32 2, label %167
  ]

167:                                              ; preds = %161
  br label %196

168:                                              ; preds = %143
  %169 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %170 = load ptr, ptr %169, align 8, !tbaa !199
  %171 = load i32, ptr %170, align 8, !tbaa !432
  %172 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %173 = load ptr, ptr %172, align 8, !tbaa !199
  %174 = load i32, ptr %173, align 8, !tbaa !432
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
  %184 = load ptr, ptr %169, align 8, !tbaa !199
  %185 = getelementptr inbounds %struct.rtvec_def, ptr %184, i64 0, i32 1, i64 %183
  %186 = load ptr, ptr %185, align 8, !tbaa !200
  %187 = load ptr, ptr %172, align 8, !tbaa !199
  %188 = getelementptr inbounds %struct.rtvec_def, ptr %187, i64 0, i32 1, i64 %183
  %189 = load ptr, ptr %188, align 8, !tbaa !200
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
  br i1 %194, label %180, label %196, !llvm.loop !498

195:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2324, ptr noundef nonnull @.str.1) #24
  br label %196

196:                                              ; preds = %192, %176, %143, %195, %149, %155, %167, %161
  %197 = phi i32 [ %145, %195 ], [ %145, %143 ], [ 1, %167 ], [ %145, %155 ], [ %145, %149 ], [ %145, %161 ], [ %145, %176 ], [ %193, %192 ]
  %198 = icmp sgt i64 %144, 1
  br i1 %198, label %143, label %199, !llvm.loop !499

199:                                              ; preds = %196
  %200 = add nuw nsw i32 %197, 1
  br label %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @safe_from_earlyclobber(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !173 {
  %3 = alloca %struct.decomposition, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %3, ptr noundef %1) #25
  %4 = tail call fastcc i32 @immune_p(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.decomposition) align 8 %3) #25, !range !238
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decompose(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.decomposition) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !173 !PGOFuncName !500 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !199
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
  %14 = load ptr, ptr %13, align 8, !tbaa !199
  %15 = lshr i32 %5, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !199
  %20 = zext i8 %19 to i64
  %21 = sub nsw i64 0, %20
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #25
  %23 = icmp eq i32 %22, 7
  br label %201

24:                                               ; preds = %7, %7
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !199
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 49
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !199
  %33 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !199
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !204
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !199
  %48 = sub nsw i64 0, %47
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #25
  %50 = icmp eq i32 %49, 7
  br label %201

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !199
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
  %63 = load ptr, ptr %62, align 8, !tbaa !199
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !204
  %69 = icmp eq i32 %68, 9
  %70 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !199
  br i1 %69, label %81, label %72

72:                                               ; preds = %61
  %73 = load i32, ptr %71, align 8
  %74 = and i32 %73, 65535
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !204
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
  %93 = load ptr, ptr %92, align 8, !tbaa !199
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
  %101 = load ptr, ptr %100, align 8, !tbaa !199
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 30
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i32, ptr %86, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !199
  %111 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %108, ptr noundef nonnull %86, ptr noundef %110) #24
  %112 = load ptr, ptr %100, align 8, !tbaa !199
  br label %134

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !199
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 30
  %119 = load i32, ptr %86, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  br i1 %118, label %122, label %125

122:                                              ; preds = %113
  %123 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %121, ptr noundef nonnull %86, ptr noundef nonnull %101) #24
  %124 = load ptr, ptr %114, align 8, !tbaa !199
  br label %134

125:                                              ; preds = %113
  %126 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %121, ptr noundef nonnull %86, ptr noundef nonnull %97) #24
  %127 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  br label %134

128:                                              ; preds = %95
  %129 = load i32, ptr %86, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %131, ptr noundef nonnull %86, ptr noundef nonnull %97) #24
  %133 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
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
  %153 = load i64, ptr %152, align 8, !tbaa !199
  %154 = load i32, ptr %4, align 8
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !199
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
  %178 = load ptr, ptr %177, align 8, !tbaa !199
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 37
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = tail call i32 @true_regnum(ptr noundef nonnull %4) #24
  %184 = icmp ugt i32 %183, 52
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load ptr, ptr %177, align 8, !tbaa !199
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
  %198 = load i32, ptr %197, align 4, !tbaa !204
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
define internal fastcc i32 @immune_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct.decomposition) align 8 %2) unnamed_addr #0 !prof !173 !PGOFuncName !501 {
  %4 = alloca %struct.decomposition, align 8
  %5 = load i32, ptr %2, align 8, !tbaa !502
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !504
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !505
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %10, i32 noundef %13, ptr noundef %0, ptr noundef null) #25
  %15 = icmp eq i32 %14, 0
  br label %85

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !506
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
  %31 = load ptr, ptr %30, align 8, !tbaa.struct !507
  %32 = getelementptr inbounds i8, ptr %4, i64 16
  %33 = load i64, ptr %32, align 8, !tbaa.struct !508
  %34 = getelementptr inbounds i8, ptr %4, i64 24
  %35 = load i64, ptr %34, align 8, !tbaa.struct !509
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  %36 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !510
  %38 = tail call i32 @rtx_equal_p(ptr noundef %31, ptr noundef %37) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %29
  %41 = load i32, ptr %31, align 8
  %42 = and i32 %41, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !204
  %46 = icmp eq i32 %45, 9
  %47 = load i32, ptr %37, align 8
  %48 = and i32 %47, 65535
  %49 = zext nneg i32 %48 to i64
  br i1 %46, label %50, label %63

50:                                               ; preds = %40
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %49
  %52 = load i32, ptr %51, align 4, !tbaa !204
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !200
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
  %65 = load i32, ptr %64, align 4, !tbaa !204
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !200
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
  %79 = load i64, ptr %78, align 8, !tbaa !505
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
define dso_local i32 @find_reloads(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !511 {
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
  %38 = load ptr, ptr %37, align 8, !tbaa !199
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %49, !prof !512

43:                                               ; preds = %5
  %44 = load i32, ptr %38, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 23
  br i1 %46, label %49, label %47, !prof !513

47:                                               ; preds = %43
  %48 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %38) #24
  br label %49

49:                                               ; preds = %5, %43, %47
  %50 = phi ptr [ %48, %47 ], [ null, %5 ], [ %38, %43 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %30) #23
  store ptr %0, ptr @this_insn, align 8, !tbaa !200
  store i32 0, ptr @n_reloads, align 4, !tbaa !204
  store i32 0, ptr @n_replacements, align 4, !tbaa !204
  store i32 0, ptr @n_earlyclobbers, align 4, !tbaa !204
  store i32 %1, ptr @replace_reloads, align 4, !tbaa !204
  store i32 %3, ptr @hard_regs_live_known, align 4, !tbaa !204
  store ptr %4, ptr @static_reload_reg_p, align 8, !tbaa !200
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -9
  %54 = icmp ult i32 %53, 2
  %55 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !204
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57, !prof !514

57:                                               ; preds = %49
  %58 = sext i32 %55 to i64
  %59 = mul nsw i64 %58, 240
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @secondary_memlocs_elim, i8 0, i64 %59, i1 false)
  store i32 0, ptr @secondary_memlocs_elim_used, align 4, !tbaa !204
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, ptr %38, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %64, label %94, !prof !515

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !199
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %94, !prof !516

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %94, !prof !517

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !199
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %94, !prof !518

79:                                               ; preds = %73
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #25
  %81 = icmp ult i32 %80, 53
  br i1 %81, label %82, label %94, !prof !519

82:                                               ; preds = %79
  %83 = lshr i32 %76, 16
  %84 = and i32 %83, 255
  %85 = zext nneg i32 %80 to i64
  %86 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !204
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !204
  %92 = tail call i32 @ix86_register_move_cost(i32 noundef %84, i32 noundef %87, i32 noundef %91) #24
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %2712, label %94, !prof !519

94:                                               ; preds = %82, %79, %73, %70, %64, %60
  tail call void @extract_insn(ptr noundef nonnull %0) #24
  %95 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !520
  %96 = sext i8 %95 to i32
  store i32 %96, ptr @reload_n_operands, align 4, !tbaa !204
  %97 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !522
  %98 = sext i8 %97 to i64
  %99 = icmp eq i8 %95, 0
  %100 = icmp eq i8 %97, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %2712, label %102, !prof !523

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !199
  %105 = icmp slt i32 %104, 0
  %106 = lshr i32 %104, 31
  store i32 %106, ptr @this_insn_is_asm, align 4, !tbaa !204
  %107 = sext i8 %95 to i64
  %108 = shl nsw i64 %107, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %30, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), i64 %108, i1 false)
  %109 = shl nsw i64 %107, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %109, i1 false)
  %110 = icmp sgt i8 %95, 0
  br i1 %110, label %111, label %434, !prof !524

111:                                              ; preds = %102
  %112 = add nsw i32 %96, -1
  %113 = zext i32 %112 to i64
  %114 = zext nneg i32 %96 to i64
  br label %118

115:                                              ; preds = %204
  br i1 %110, label %116, label %434, !prof !321

116:                                              ; preds = %115
  %117 = zext nneg i32 %96 to i64
  br label %208

118:                                              ; preds = %111, %204
  %119 = phi i64 [ 0, %111 ], [ %206, %204 ]
  %120 = phi i32 [ -1, %111 ], [ %205, %204 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #23
  %121 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %119
  %122 = load ptr, ptr %121, align 8, !tbaa !200
  %123 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %119
  store ptr %122, ptr %123, align 8, !tbaa !200
  %124 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %119
  %125 = load ptr, ptr %124, align 8, !tbaa !200
  %126 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %119
  store i32 0, ptr %126, align 4, !tbaa !204
  %127 = load i8, ptr %125, align 1, !tbaa !199
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %204, label %129, !prof !525

129:                                              ; preds = %118, %199
  %130 = phi i8 [ %202, %199 ], [ %127, %118 ]
  %131 = phi i32 [ %201, %199 ], [ %120, %118 ]
  %132 = phi ptr [ %200, %199 ], [ %125, %118 ]
  %133 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %130) #25
  %134 = getelementptr inbounds i8, ptr %132, i64 %133
  switch i8 %130, label %199 [
    i8 61, label %135
    i8 43, label %136
    i8 37, label %137
    i8 48, label %147
    i8 49, label %147
    i8 50, label %147
    i8 51, label %147
    i8 52, label %147
    i8 53, label %147
    i8 54, label %147
    i8 55, label %147
    i8 56, label %147
    i8 57, label %147
  ], !prof !526

135:                                              ; preds = %129
  store i32 2, ptr %126, align 4, !tbaa !204
  br label %199

136:                                              ; preds = %129
  store i32 1, ptr %126, align 4, !tbaa !204
  br label %199

137:                                              ; preds = %129
  %138 = icmp eq i64 %119, %113
  br i1 %138, label %139, label %140, !prof !527

139:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2709, ptr noundef nonnull @.str.1) #24
  br label %140

140:                                              ; preds = %137, %139
  %141 = trunc i64 %119 to i32
  %142 = icmp slt i32 %131, 0
  br i1 %142, label %199, label %143, !prof !528

143:                                              ; preds = %140
  %144 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !204
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %199

146:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2721, ptr noundef nonnull @.str.1) #24
  br label %199

147:                                              ; preds = %129, %129, %129, %129, %129, %129, %129, %129, %129, %129
  %148 = getelementptr inbounds i8, ptr %134, i64 -1
  %149 = call i64 @strtoul(ptr noundef nonnull %148, ptr noundef nonnull %31, i32 noundef 10) #25
  %150 = trunc i64 %149 to i32
  %151 = load ptr, ptr %31, align 8, !tbaa !200
  %152 = shl i64 %149, 32
  %153 = ashr exact i64 %152, 32
  %154 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %153
  %155 = load ptr, ptr %154, align 8, !tbaa !200
  %156 = load ptr, ptr %121, align 8, !tbaa !200
  %157 = tail call i32 @operands_match_p(ptr noundef %155, ptr noundef %156) #25
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %153, i64 %119
  store i8 %158, ptr %159, align 1, !tbaa !199
  %160 = and i64 %149, 4294967295
  %161 = icmp eq i64 %119, %160
  br i1 %161, label %162, label %163, !prof !529

162:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2737, ptr noundef nonnull @.str.1) #24
  br label %163

163:                                              ; preds = %147, %162
  %164 = icmp sgt i32 %131, -1
  br i1 %164, label %165, label %199, !prof !530

165:                                              ; preds = %163
  %166 = icmp eq i32 %131, %150
  br i1 %166, label %170, label %167, !prof !531

167:                                              ; preds = %165
  %168 = add nuw nsw i32 %131, 1
  %169 = icmp eq i32 %168, %150
  br i1 %169, label %170, label %181, !prof !531

170:                                              ; preds = %167, %165
  %171 = phi i64 [ -1, %167 ], [ 1, %165 ]
  %172 = add i64 %171, %149
  %173 = shl i64 %172, 32
  %174 = ashr exact i64 %173, 32
  %175 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !200
  %177 = load ptr, ptr %121, align 8, !tbaa !200
  %178 = tail call i32 @operands_match_p(ptr noundef %176, ptr noundef %177) #25
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %174, i64 %119
  store i8 %179, ptr %180, align 1, !tbaa !199
  br label %181

181:                                              ; preds = %170, %167
  %182 = zext nneg i32 %131 to i64
  %183 = icmp eq i64 %119, %182
  br i1 %183, label %188, label %184, !prof !532

184:                                              ; preds = %181
  %185 = add nuw nsw i32 %131, 1
  %186 = zext nneg i32 %185 to i64
  %187 = icmp eq i64 %119, %186
  br i1 %187, label %188, label %199, !prof !533

188:                                              ; preds = %184, %181
  %189 = phi i64 [ -1, %184 ], [ 1, %181 ]
  %190 = add nsw i64 %189, %119
  %191 = load ptr, ptr %154, align 8, !tbaa !200
  %192 = shl i64 %190, 32
  %193 = ashr exact i64 %192, 32
  %194 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !200
  %196 = tail call i32 @operands_match_p(ptr noundef %191, ptr noundef %195) #25
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %153, i64 %193
  store i8 %197, ptr %198, align 1, !tbaa !199
  br label %199

199:                                              ; preds = %140, %146, %143, %163, %188, %184, %129, %136, %135
  %200 = phi ptr [ %134, %129 ], [ %151, %188 ], [ %151, %184 ], [ %151, %163 ], [ %134, %143 ], [ %134, %146 ], [ %134, %136 ], [ %134, %135 ], [ %134, %140 ]
  %201 = phi i32 [ %131, %129 ], [ %131, %188 ], [ %131, %184 ], [ %131, %163 ], [ %131, %143 ], [ %131, %146 ], [ %131, %136 ], [ %131, %135 ], [ %141, %140 ]
  %202 = load i8, ptr %200, align 1, !tbaa !199
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %129, !prof !534, !llvm.loop !535

204:                                              ; preds = %199, %118
  %205 = phi i32 [ %120, %118 ], [ %201, %199 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #23
  %206 = add nuw nsw i64 %119, 1
  %207 = icmp eq i64 %206, %114
  br i1 %207, label %115, label %118, !prof !536, !llvm.loop !537

208:                                              ; preds = %116, %402
  %209 = phi i64 [ 0, %116 ], [ %406, %402 ]
  %210 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !200
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %209
  store i32 0, ptr %214, align 4, !tbaa !204
  %215 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %209
  store i32 0, ptr %215, align 4, !tbaa !204
  %216 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %209
  %217 = load i32, ptr %216, align 4, !tbaa !204
  %218 = icmp eq i32 %217, 0
  %219 = icmp eq i32 %217, 2
  %220 = select i1 %219, i32 1, i32 9
  %221 = select i1 %218, i32 0, i32 %220, !prof !538
  %222 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %209
  store i32 %221, ptr %222, align 4, !tbaa !204
  %223 = select i1 %219, i32 5, i32 9
  %224 = select i1 %218, i32 3, i32 %223, !prof !538
  %225 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %209
  store i32 %224, ptr %225, align 4, !tbaa !204
  %226 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %209
  %227 = load ptr, ptr %226, align 8, !tbaa !200
  %228 = load i8, ptr %227, align 1, !tbaa !199
  switch i8 %228, label %257 [
    i8 0, label %378
    i8 112, label %229
  ], !prof !539

229:                                              ; preds = %208
  %230 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %209
  %231 = load i32, ptr %230, align 4, !tbaa !204
  %232 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %209
  %233 = load ptr, ptr %232, align 8, !tbaa !200
  %234 = trunc i64 %209 to i32
  %235 = call fastcc i32 @find_reloads_address(i32 noundef %231, ptr noundef null, ptr noundef nonnull %211, ptr noundef %233, i32 noundef %234, i32 noundef %221, i32 noundef %2, ptr noundef nonnull %0) #25
  store i32 %235, ptr %215, align 4, !tbaa !204
  %236 = load ptr, ptr %232, align 8, !tbaa !200
  %237 = load ptr, ptr %236, align 8, !tbaa !200
  %238 = load i32, ptr %237, align 8
  %239 = and i32 %238, 65535
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !204
  %243 = and i32 %242, -2
  %244 = icmp eq i32 %243, 8
  %245 = icmp eq i32 %239, 39
  %246 = or i1 %245, %244
  br i1 %246, label %247, label %251, !prof !540

247:                                              ; preds = %229
  %248 = load ptr, ptr %210, align 8, !tbaa !200
  %249 = load i32, ptr %248, align 8
  %250 = trunc i32 %249 to i16
  switch i16 %250, label %251 [
    i16 52, label %400
    i16 49, label %400
  ]

251:                                              ; preds = %247, %229
  store ptr %237, ptr %210, align 8, !tbaa !200
  %252 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %209
  store ptr %237, ptr %252, align 8, !tbaa !200
  %253 = load i32, ptr %237, align 8
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  %256 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %209
  store i32 %255, ptr %256, align 4, !tbaa !204
  br label %378

257:                                              ; preds = %208
  %258 = trunc i32 %212 to i16
  switch i16 %258, label %325 [
    i16 43, label %259
    i16 39, label %272
    i16 49, label %330
  ], !prof !541

259:                                              ; preds = %257
  %260 = load i32, ptr %211, align 8
  %261 = lshr i32 %260, 16
  %262 = and i32 %261, 255
  %263 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %209
  %264 = load ptr, ptr %263, align 8, !tbaa !200
  %265 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !199
  %267 = trunc i64 %209 to i32
  %268 = call fastcc i32 @find_reloads_address(i32 noundef %262, ptr noundef %264, ptr noundef %266, ptr noundef nonnull %265, i32 noundef %267, i32 noundef %224, i32 noundef %2, ptr noundef nonnull %0) #25
  store i32 %268, ptr %214, align 4, !tbaa !204
  %269 = load ptr, ptr %263, align 8, !tbaa !200
  %270 = load ptr, ptr %269, align 8, !tbaa !200
  store ptr %270, ptr %210, align 8, !tbaa !200
  %271 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %209
  store ptr %270, ptr %271, align 8, !tbaa !200
  br label %378

272:                                              ; preds = %257
  %273 = icmp eq ptr %50, null
  %274 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !199
  br i1 %273, label %281, label %276, !prof !542

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %278 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %209
  %279 = load ptr, ptr %278, align 8, !tbaa !200
  %280 = icmp eq ptr %277, %279
  br label %281

281:                                              ; preds = %276, %272
  %282 = phi i1 [ false, %272 ], [ %280, %276 ]
  %283 = icmp eq i32 %1, 0
  %284 = zext i1 %282 to i32
  %285 = trunc i64 %209 to i32
  %286 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %211, i32 noundef %285, i32 noundef %224, i32 noundef %2, i32 noundef %284, ptr noundef nonnull %0, ptr noundef nonnull %214) #25
  br i1 %283, label %323, label %287, !prof !543

287:                                              ; preds = %281
  %288 = load i32, ptr %286, align 8
  %289 = and i32 %288, 65535
  %290 = icmp eq i32 %289, 43
  br i1 %290, label %291, label %323

291:                                              ; preds = %287
  %292 = load i32, ptr %275, align 8
  %293 = and i32 %292, 65535
  %294 = icmp eq i32 %293, 37
  br i1 %294, label %295, label %323

295:                                              ; preds = %291
  %296 = lshr i32 %292, 16
  %297 = and i32 %296, 255
  %298 = zext nneg i32 %297 to i64
  %299 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !199
  %301 = lshr i32 %288, 16
  %302 = and i32 %301, 255
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !199
  %306 = icmp ult i8 %300, %305
  br i1 %306, label %323, label %307

307:                                              ; preds = %295
  %308 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %309 = call fastcc i32 @rhs_regno(ptr noundef nonnull %275) #25
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds ptr, ptr %308, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !200
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %323

314:                                              ; preds = %307
  %315 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %275) #24
  %316 = call ptr @emit_insn_before(ptr noundef %315, ptr noundef nonnull %0) #24
  %317 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %318 = call fastcc i32 @rhs_regno(ptr noundef nonnull %275) #25
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %317, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !200
  %322 = call ptr @set_unique_reg_note(ptr noundef %316, i32 noundef 4, ptr noundef %321) #24
  br label %323

323:                                              ; preds = %314, %307, %295, %291, %287, %281
  store ptr %286, ptr %210, align 8, !tbaa !200
  %324 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %209
  store ptr %286, ptr %324, align 8, !tbaa !200
  br label %378

325:                                              ; preds = %257
  %326 = zext nneg i32 %213 to i64
  %327 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !204
  %329 = icmp eq i32 %328, 4
  br i1 %329, label %330, label %334, !prof !544

330:                                              ; preds = %257, %325
  %331 = trunc i64 %209 to i32
  %332 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %211, i32 noundef %331, i32 noundef %224, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %214) #25
  store ptr %332, ptr %210, align 8, !tbaa !200
  %333 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %209
  store ptr %332, ptr %333, align 8, !tbaa !200
  br label %378

334:                                              ; preds = %325
  %335 = icmp eq i32 %213, 37
  br i1 %335, label %336, label %378, !prof !545

336:                                              ; preds = %334
  %337 = call fastcc i32 @rhs_regno(ptr noundef nonnull %211) #25
  %338 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds ptr, ptr %338, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !200
  %342 = icmp eq ptr %341, null
  br i1 %342, label %360, label %343, !prof !546

343:                                              ; preds = %336
  %344 = icmp eq ptr %50, null
  br i1 %344, label %350, label %345

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %347 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %209
  %348 = load ptr, ptr %347, align 8, !tbaa !200
  %349 = icmp eq ptr %346, %348
  br i1 %349, label %360, label %350

350:                                              ; preds = %345, %343
  %351 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %209
  %352 = load i32, ptr %351, align 4, !tbaa !204
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = load i32, ptr %211, align 8
  %356 = lshr i32 %355, 16
  %357 = and i32 %356, 255
  store i32 %357, ptr %351, align 4, !tbaa !204
  br label %358

358:                                              ; preds = %354, %350
  store ptr %341, ptr %210, align 8, !tbaa !200
  %359 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %209
  store ptr %341, ptr %359, align 8, !tbaa !200
  br label %360

360:                                              ; preds = %358, %345, %336
  %361 = phi ptr [ %341, %358 ], [ %211, %345 ], [ %211, %336 ]
  %362 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %363 = getelementptr inbounds ptr, ptr %362, i64 %339
  %364 = load ptr, ptr %363, align 8, !tbaa !200
  %365 = icmp eq ptr %364, null
  br i1 %365, label %378, label %366, !prof !547

366:                                              ; preds = %360
  %367 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %368 = getelementptr inbounds ptr, ptr %367, i64 %339
  %369 = load ptr, ptr %368, align 8, !tbaa !200
  %370 = icmp ne ptr %369, null
  %371 = load i32, ptr @num_not_at_initial_offset, align 4
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %370, i1 true, i1 %372
  br i1 %373, label %374, label %378, !prof !548

374:                                              ; preds = %366
  %375 = trunc i64 %209 to i32
  %376 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %361, i32 noundef %375, i32 noundef %224, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %214) #25
  store ptr %376, ptr %210, align 8, !tbaa !200
  %377 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %209
  store ptr %376, ptr %377, align 8, !tbaa !200
  br label %378

378:                                              ; preds = %360, %374, %366, %208, %251, %323, %334, %330, %259
  %379 = phi ptr [ %361, %360 ], [ %376, %374 ], [ %361, %366 ], [ %211, %208 ], [ %237, %251 ], [ %286, %323 ], [ %211, %334 ], [ %332, %330 ], [ %270, %259 ]
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 65535
  %382 = icmp eq i32 %381, 37
  br i1 %382, label %383, label %398, !prof !549

383:                                              ; preds = %378
  %384 = call fastcc i32 @rhs_regno(ptr noundef nonnull %379) #25
  %385 = icmp ugt i32 %384, 52
  br i1 %385, label %386, label %389, !prof !550

386:                                              ; preds = %383
  %387 = call i32 @reg_preferred_class(i32 noundef %384) #24
  %388 = load ptr, ptr %210, align 8, !tbaa !200
  br label %389

389:                                              ; preds = %386, %383
  %390 = phi ptr [ %388, %386 ], [ %379, %383 ]
  %391 = phi i32 [ %387, %386 ], [ 0, %383 ]
  %392 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %209
  store i32 %391, ptr %392, align 4, !tbaa !204
  %393 = call fastcc i32 @rhs_regno(ptr noundef %390) #25
  %394 = icmp ugt i32 %393, 52
  br i1 %394, label %395, label %402, !prof !550

395:                                              ; preds = %389
  %396 = call i32 @reg_alternate_class(i32 noundef %393) #24
  %397 = icmp eq i32 %396, 0
  br label %402

398:                                              ; preds = %378
  %399 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %209
  store i32 0, ptr %399, align 4, !tbaa !204
  br label %402

400:                                              ; preds = %247, %247
  store i32 -1, ptr %103, align 8, !tbaa !199
  %401 = call i32 @find_reloads(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #25
  br label %2712

402:                                              ; preds = %389, %395, %398
  %403 = phi i1 [ false, %389 ], [ %397, %395 ], [ false, %398 ]
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %209
  store i8 %404, ptr %405, align 1, !tbaa !199
  %406 = add nuw nsw i64 %209, 1
  %407 = icmp eq i64 %406, %117
  br i1 %407, label %408, label %208, !prof !536, !llvm.loop !551

408:                                              ; preds = %402
  %409 = icmp ne ptr %50, null
  %410 = icmp ne i8 %95, 1
  %411 = and i1 %409, %410
  br i1 %411, label %412, label %434, !prof !552

412:                                              ; preds = %408
  %413 = load ptr, ptr @recog_data, align 8, !tbaa !200
  %414 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !199
  %416 = icmp eq ptr %413, %415
  br i1 %416, label %417, label %434, !prof !553

417:                                              ; preds = %412
  %418 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !200
  %419 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !199
  %421 = icmp eq ptr %418, %420
  br i1 %421, label %422, label %434, !prof !554

422:                                              ; preds = %417
  %423 = load i32, ptr %7, align 16, !tbaa !204
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 1
  %426 = load i32, ptr %425, align 4, !tbaa !204
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %424, i64 %427
  %429 = load i32, ptr %428, align 4, !tbaa !204
  store i32 %429, ptr %425, align 4, !tbaa !204
  store i32 %429, ptr %7, align 16, !tbaa !204
  %430 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 1
  %431 = load i8, ptr %430, align 1, !tbaa !199
  %432 = load i8, ptr %8, align 16, !tbaa !199
  %433 = or i8 %432, %431
  store i8 %433, ptr %8, align 16, !tbaa !199
  store i8 %433, ptr %430, align 1, !tbaa !199
  br label %434

434:                                              ; preds = %102, %115, %422, %417, %412, %408
  %435 = phi i32 [ %205, %422 ], [ %205, %417 ], [ %205, %412 ], [ %205, %408 ], [ %205, %115 ], [ -1, %102 ]
  %436 = icmp sgt i8 %97, 0
  %437 = add nsw i32 %435, 1
  %438 = icmp sgt i32 %435, -1
  %439 = zext i32 %437 to i64
  %440 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %439
  %441 = zext i32 %435 to i64
  %442 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %441
  %443 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %441
  %444 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %439
  %445 = zext i32 %96 to i64
  %446 = shl nuw nsw i64 %445, 2
  br label %447

447:                                              ; preds = %1458, %434
  %448 = phi i32 [ 0, %434 ], [ %1426, %1458 ]
  %449 = phi i32 [ 0, %434 ], [ %1427, %1458 ]
  %450 = phi i32 [ 660, %434 ], [ %1428, %1458 ]
  %451 = phi i32 [ 0, %434 ], [ %1429, %1458 ]
  %452 = phi i32 [ 0, %434 ], [ %1430, %1458 ]
  %453 = phi i32 [ 0, %434 ], [ %1433, %1458 ]
  br i1 %436, label %454, label %1425, !prof !555

454:                                              ; preds = %447, %1417
  %455 = phi i64 [ %1423, %1417 ], [ 0, %447 ]
  %456 = phi i32 [ %1422, %1417 ], [ %452, %447 ]
  %457 = phi i32 [ %1421, %1417 ], [ %451, %447 ]
  %458 = phi i32 [ %1420, %1417 ], [ %450, %447 ]
  %459 = phi i32 [ %1419, %1417 ], [ %449, %447 ]
  %460 = phi i32 [ %1418, %1417 ], [ %448, %447 ]
  %461 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %455
  %462 = load i8, ptr %461, align 1, !tbaa !199
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %465, label %464, !prof !556

464:                                              ; preds = %454
  br i1 %110, label %478, label %1371, !prof !557

465:                                              ; preds = %454
  %466 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !520
  %467 = icmp sgt i8 %466, 0
  br i1 %467, label %468, label %1417

468:                                              ; preds = %465
  %469 = zext nneg i8 %466 to i64
  br label %470

470:                                              ; preds = %468, %470
  %471 = phi i64 [ 0, %468 ], [ %475, %470 ]
  %472 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !200
  %474 = call fastcc ptr @skip_alternative(ptr noundef %473) #25
  store ptr %474, ptr %472, align 8, !tbaa !200
  %475 = add nuw nsw i64 %471, 1
  %476 = icmp eq i64 %475, %469
  br i1 %476, label %1417, label %470, !llvm.loop !558

477:                                              ; preds = %1245
  br i1 %110, label %1251, label %1368, !prof !321

478:                                              ; preds = %464, %1245
  %479 = phi i64 [ %1249, %1245 ], [ 0, %464 ]
  %480 = phi i32 [ %1082, %1245 ], [ 0, %464 ]
  %481 = phi i32 [ %1248, %1245 ], [ 0, %464 ]
  %482 = phi i32 [ %1246, %1245 ], [ 0, %464 ]
  %483 = phi i32 [ %1247, %1245 ], [ 0, %464 ]
  %484 = trunc i64 %479 to i32
  %485 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %479
  %486 = load ptr, ptr %485, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #23
  %487 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %479
  %488 = load ptr, ptr %487, align 8, !tbaa !200
  %489 = load i32, ptr %488, align 8
  %490 = and i32 %489, 65535
  %491 = zext nneg i32 %490 to i64
  %492 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !204
  %494 = icmp eq i32 %493, 4
  br i1 %494, label %495, label %502, !prof !559

495:                                              ; preds = %478
  %496 = load i8, ptr %486, align 1, !tbaa !199
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %502, label %498

498:                                              ; preds = %495
  %499 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !199
  %501 = load i32, ptr %500, align 8
  br label %502

502:                                              ; preds = %498, %495, %478
  %503 = phi i32 [ %501, %498 ], [ %489, %495 ], [ %489, %478 ]
  %504 = phi ptr [ %500, %498 ], [ %488, %495 ], [ %488, %478 ]
  %505 = and i32 %503, 65535
  %506 = icmp eq i32 %505, 39
  br i1 %506, label %507, label %587, !prof !560

507:                                              ; preds = %502, %584
  %508 = phi i32 [ %548, %584 ], [ %503, %502 ]
  %509 = phi i32 [ %585, %584 ], [ 0, %502 ]
  %510 = phi i32 [ %550, %584 ], [ 0, %502 ]
  %511 = phi ptr [ %549, %584 ], [ %504, %502 ]
  %512 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 0, i32 1
  %513 = load ptr, ptr %512, align 8, !tbaa !199
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = icmp eq i32 %515, 37
  br i1 %516, label %517, label %546, !prof !561

517:                                              ; preds = %507
  %518 = call fastcc i32 @rhs_regno(ptr noundef nonnull %513) #25
  %519 = icmp ult i32 %518, 53
  br i1 %519, label %520, label %546, !prof !561

520:                                              ; preds = %517
  %521 = lshr i32 %514, 16
  %522 = and i32 %521, 255
  %523 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 0, i32 1, i32 0, i32 0, i64 1
  %524 = load i32, ptr %523, align 8, !tbaa !199
  %525 = lshr i32 %508, 16
  %526 = and i32 %525, 255
  %527 = call i32 @simplify_subreg_regno(i32 noundef %518, i32 noundef %522, i32 noundef %524, i32 noundef %526) #24
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %530, !prof !562

529:                                              ; preds = %520
  br label %530

530:                                              ; preds = %529, %520
  %531 = phi i32 [ 1, %529 ], [ %509, %520 ]
  %532 = load ptr, ptr %512, align 8, !tbaa !199
  %533 = call fastcc i32 @rhs_regno(ptr noundef %532) #25
  %534 = load i32, ptr %532, align 8
  %535 = lshr i32 %534, 16
  %536 = and i32 %535, 255
  %537 = load i32, ptr %523, align 8, !tbaa !199
  %538 = load i32, ptr %511, align 8
  %539 = lshr i32 %538, 16
  %540 = and i32 %539, 255
  %541 = call i32 @subreg_regno_offset(i32 noundef %533, i32 noundef %536, i32 noundef %537, i32 noundef %540) #24
  %542 = add i32 %541, %510
  %543 = load ptr, ptr %512, align 8, !tbaa !199
  %544 = load i32, ptr %543, align 8
  %545 = and i32 %544, 65535
  br label %546

546:                                              ; preds = %530, %517, %507
  %547 = phi i32 [ %545, %530 ], [ 37, %517 ], [ %515, %507 ]
  %548 = phi i32 [ %544, %530 ], [ %514, %517 ], [ %514, %507 ]
  %549 = phi ptr [ %543, %530 ], [ %513, %517 ], [ %513, %507 ]
  %550 = phi i32 [ %542, %530 ], [ %510, %517 ], [ %510, %507 ]
  %551 = phi i32 [ %531, %530 ], [ %509, %517 ], [ %509, %507 ]
  %552 = zext nneg i32 %547 to i64
  %553 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %552
  %554 = load i32, ptr %553, align 4, !tbaa !204
  %555 = icmp eq i32 %554, 9
  %556 = icmp eq i32 %547, 49
  %557 = or i1 %555, %556
  br i1 %557, label %583, label %558, !prof !563

558:                                              ; preds = %546
  %559 = trunc i32 %548 to i16
  switch i16 %559, label %584 [
    i16 43, label %563
    i16 37, label %560
  ], !prof !564

560:                                              ; preds = %558
  %561 = call fastcc i32 @rhs_regno(ptr noundef nonnull %549) #25
  %562 = icmp ugt i32 %561, 52
  br i1 %562, label %563, label %584, !prof !562

563:                                              ; preds = %558, %560
  %564 = lshr i32 %548, 16
  %565 = and i32 %564, 255
  %566 = zext nneg i32 %565 to i64
  %567 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %566
  %568 = load i8, ptr %567, align 1, !tbaa !199
  %569 = zext i8 %568 to i32
  %570 = shl nuw nsw i32 %569, 3
  %571 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !204
  %572 = and i32 %571, 32
  %573 = icmp eq i32 %572, 0
  %574 = select i1 %573, i32 128, i32 256
  %575 = icmp ult i32 %570, %574
  br i1 %575, label %576, label %584

576:                                              ; preds = %563
  %577 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %479
  %578 = load i32, ptr %577, align 4, !tbaa !204
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %579
  %581 = load i8, ptr %580, align 1, !tbaa !199
  %582 = icmp ugt i8 %581, %568
  br i1 %582, label %583, label %584

583:                                              ; preds = %576, %546
  br label %584

584:                                              ; preds = %558, %583, %576, %563, %560
  %585 = phi i32 [ 1, %583 ], [ %551, %576 ], [ %551, %563 ], [ %551, %560 ], [ %551, %558 ]
  %586 = icmp eq i32 %547, 39
  br i1 %586, label %507, label %587, !prof !565, !llvm.loop !566

587:                                              ; preds = %584, %502
  %588 = phi ptr [ %504, %502 ], [ %549, %584 ]
  %589 = phi i32 [ 0, %502 ], [ %550, %584 ]
  %590 = phi i32 [ 0, %502 ], [ %585, %584 ]
  %591 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %479
  store i32 0, ptr %591, align 4, !tbaa !204
  %592 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %479
  store i8 0, ptr %592, align 1, !tbaa !199
  %593 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %479
  store i8 0, ptr %593, align 1, !tbaa !199
  %594 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %479
  store i8 0, ptr %594, align 1, !tbaa !199
  %595 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %479
  store i8 0, ptr %595, align 1, !tbaa !199
  %596 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %479
  store i32 -1, ptr %596, align 4, !tbaa !204
  %597 = load i8, ptr %486, align 1, !tbaa !199
  switch i8 %597, label %599 [
    i8 0, label %598
    i8 44, label %598
  ], !prof !567

598:                                              ; preds = %587, %587
  br label %599

599:                                              ; preds = %587, %598
  %600 = phi i32 [ 1, %598 ], [ 0, %587 ]
  %601 = phi i32 [ 0, %598 ], [ 1, %587 ]
  %602 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %479
  br label %603

603:                                              ; preds = %1058, %599
  %604 = phi i32 [ %483, %599 ], [ %1059, %1058 ]
  %605 = phi i32 [ %482, %599 ], [ %1060, %1058 ]
  %606 = phi i32 [ %481, %599 ], [ %1061, %1058 ]
  %607 = phi ptr [ %486, %599 ], [ %1074, %1058 ]
  %608 = phi i32 [ %600, %599 ], [ %1064, %1058 ]
  %609 = phi i32 [ 0, %599 ], [ %1065, %1058 ]
  %610 = phi i32 [ %601, %599 ], [ %1066, %1058 ]
  %611 = phi i32 [ 0, %599 ], [ %1067, %1058 ]
  %612 = phi i32 [ %480, %599 ], [ %1069, %1058 ]
  %613 = phi i32 [ %590, %599 ], [ %1070, %1058 ]
  %614 = phi i8 [ 0, %599 ], [ %1071, %1058 ]
  %615 = phi i32 [ 0, %599 ], [ %1072, %1058 ]
  %616 = phi i8 [ 0, %599 ], [ %1073, %1058 ]
  %617 = load i8, ptr %607, align 1, !tbaa !199
  %618 = sext i8 %617 to i32
  %619 = call fastcc i64 @insn_constraint_len(i8 noundef signext %617) #25
  switch i8 %617, label %1020 [
    i8 0, label %1054
    i8 44, label %1055
    i8 61, label %1058
    i8 43, label %1058
    i8 42, label %1058
    i8 37, label %1058
    i8 63, label %622
    i8 33, label %624
    i8 35, label %625
    i8 48, label %629
    i8 49, label %629
    i8 50, label %629
    i8 51, label %629
    i8 52, label %629
    i8 53, label %629
    i8 54, label %629
    i8 55, label %629
    i8 56, label %629
    i8 57, label %629
    i8 112, label %760
    i8 109, label %761
    i8 60, label %790
    i8 62, label %804
    i8 86, label %818
    i8 111, label %852
    i8 38, label %922
    i8 69, label %923
    i8 70, label %923
    i8 71, label %934
    i8 72, label %934
    i8 115, label %943
    i8 105, label %620
    i8 110, label %963
    i8 73, label %970
    i8 74, label %970
    i8 75, label %970
    i8 76, label %970
    i8 77, label %970
    i8 78, label %970
    i8 79, label %970
    i8 80, label %970
    i8 88, label %981
    i8 103, label %982
    i8 114, label %1015
  ], !prof !568

620:                                              ; preds = %603
  %621 = load i32, ptr %588, align 8
  br label %949

622:                                              ; preds = %603
  %623 = add nsw i32 %606, 6
  br label %1058

624:                                              ; preds = %603
  br label %1058

625:                                              ; preds = %603, %625
  %626 = phi ptr [ %627, %625 ], [ %607, %603 ]
  %627 = getelementptr inbounds i8, ptr %626, i64 1
  %628 = load i8, ptr %627, align 1, !tbaa !199
  switch i8 %628, label %625 [
    i8 0, label %1058
    i8 44, label %1058
  ]

629:                                              ; preds = %603, %603, %603, %603, %603, %603, %603, %603, %603, %603
  %630 = icmp eq i32 %453, 0
  %631 = call i64 @strtoul(ptr noundef nonnull %607, ptr noundef nonnull %32, i32 noundef 10) #25
  %632 = trunc i64 %631 to i32
  %633 = load ptr, ptr %32, align 8, !tbaa !200
  store i32 %632, ptr %596, align 4, !tbaa !204
  br i1 %630, label %662, label %634, !prof !569

634:                                              ; preds = %629
  %635 = shl nsw i32 %435, 1
  %636 = or disjoint i32 %635, 1
  %637 = icmp eq i64 %479, %441
  %638 = sub nsw i32 %636, %484
  %639 = icmp eq i32 %435, %632
  br i1 %639, label %640, label %642, !prof !570

640:                                              ; preds = %634
  %641 = icmp eq i64 %479, %439
  br i1 %641, label %662, label %646, !prof !571

642:                                              ; preds = %634
  %643 = icmp eq i32 %437, %632
  %644 = sub nsw i32 %636, %632
  %645 = select i1 %643, i32 %644, i32 %632, !prof !572
  br i1 %637, label %652, label %649, !prof !573

646:                                              ; preds = %640
  %647 = sub nsw i32 %636, %632
  br i1 %637, label %652, label %648, !prof !573

648:                                              ; preds = %646
  br label %652

649:                                              ; preds = %642
  %650 = icmp eq i64 %479, %439
  %651 = select i1 %650, i32 %638, i32 %484
  br label %652

652:                                              ; preds = %649, %642, %646, %648
  %653 = phi i32 [ %647, %648 ], [ %647, %646 ], [ %645, %642 ], [ %645, %649 ]
  %654 = phi i32 [ %484, %648 ], [ %638, %646 ], [ %638, %642 ], [ %651, %649 ]
  %655 = sext i32 %653 to i64
  %656 = sext i32 %654 to i64
  %657 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %655, i64 %656
  %658 = load i8, ptr %657, align 1, !tbaa !199
  %659 = icmp eq i8 %658, 0
  %660 = shl i64 %631, 32
  %661 = ashr exact i64 %660, 32
  br i1 %659, label %695, label %668, !prof !571

662:                                              ; preds = %640, %629
  %663 = shl i64 %631, 32
  %664 = ashr exact i64 %663, 32
  %665 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %664, i64 %479
  %666 = load i8, ptr %665, align 1, !tbaa !199
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %695, label %668, !prof !571

668:                                              ; preds = %652, %662
  %669 = phi i64 [ %664, %662 ], [ %661, %652 ]
  %670 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %669
  %671 = load i8, ptr %670, align 1, !tbaa !199
  %672 = icmp eq i8 %671, 0
  br i1 %672, label %688, label %673, !prof !574

673:                                              ; preds = %668
  %674 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %669
  %675 = load ptr, ptr %674, align 8, !tbaa !200
  %676 = load i32, ptr %675, align 8
  %677 = and i32 %676, 65535
  %678 = icmp eq i32 %677, 43
  br i1 %678, label %679, label %688

679:                                              ; preds = %673
  %680 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %669
  %681 = load i32, ptr %680, align 4, !tbaa !204
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %683, label %688

683:                                              ; preds = %679
  %684 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %669
  %685 = load i8, ptr %684, align 1, !tbaa !199
  %686 = icmp eq i8 %685, 0
  %687 = select i1 %686, i32 1, i32 %605
  br label %688

688:                                              ; preds = %683, %679, %673, %668
  %689 = phi i32 [ %605, %679 ], [ %605, %673 ], [ %605, %668 ], [ %687, %683 ]
  %690 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %669
  %691 = load i8, ptr %690, align 1, !tbaa !199
  %692 = sext i8 %691 to i32
  %693 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %669
  %694 = load i32, ptr %693, align 4, !tbaa !204
  br label %739

695:                                              ; preds = %652, %662
  %696 = phi i64 [ %664, %662 ], [ %661, %652 ]
  %697 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %696
  %698 = load i8, ptr %697, align 1, !tbaa !199
  %699 = icmp ne i8 %698, 0
  %700 = zext i1 %699 to i32
  %701 = add nsw i32 %604, %700
  store i8 0, ptr %697, align 1, !tbaa !199
  %702 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %696
  %703 = load i32, ptr %702, align 4, !tbaa !204
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %706, !prof !342

705:                                              ; preds = %695
  br label %706

706:                                              ; preds = %705, %695
  %707 = phi i32 [ 1, %705 ], [ %605, %695 ]
  br i1 %630, label %717, label %708, !prof !337

708:                                              ; preds = %706
  %709 = icmp eq i64 %479, %439
  %710 = icmp eq i64 %479, %441
  %711 = select i1 %709, i32 %435, i32 %484
  %712 = select i1 %710, i32 %437, i32 %711
  %713 = icmp eq i32 %435, %632
  br i1 %713, label %717, label %714

714:                                              ; preds = %708
  %715 = icmp eq i32 %437, %632
  %716 = select i1 %715, i32 %435, i32 %632
  br label %717

717:                                              ; preds = %708, %714, %706
  %718 = phi i32 [ %484, %706 ], [ %712, %714 ], [ %712, %708 ]
  %719 = phi i32 [ %632, %706 ], [ %716, %714 ], [ %437, %708 ]
  %720 = load ptr, ptr %487, align 8, !tbaa !200
  %721 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %696
  %722 = load ptr, ptr %721, align 8, !tbaa !200
  %723 = sext i32 %718 to i64
  %724 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %723
  %725 = load ptr, ptr %724, align 8, !tbaa !200
  %726 = sext i32 %719 to i64
  %727 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %726
  %728 = load ptr, ptr %727, align 8, !tbaa !200
  %729 = load i32, ptr %602, align 4, !tbaa !204
  %730 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %696
  %731 = load i32, ptr %730, align 4, !tbaa !204
  %732 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %696
  %733 = load i8, ptr %732, align 1, !tbaa !199
  %734 = sext i8 %733 to i32
  %735 = call fastcc ptr @find_dummy_reload(ptr noundef %720, ptr noundef %722, ptr noundef %725, ptr noundef %728, i32 noundef %729, i32 noundef %731, i32 noundef %703, i32 noundef -1, i32 noundef %734) #25
  %736 = icmp ne ptr %735, null
  %737 = sext i1 %736 to i32
  %738 = add nsw i32 %701, %737
  br label %739

739:                                              ; preds = %717, %688
  %740 = phi i32 [ %703, %717 ], [ %694, %688 ]
  %741 = phi i32 [ %738, %717 ], [ %604, %688 ]
  %742 = phi i32 [ %707, %717 ], [ %689, %688 ]
  %743 = phi i32 [ %609, %717 ], [ %692, %688 ]
  store i32 %740, ptr %591, align 4, !tbaa !204
  %744 = icmp eq i32 %743, 0
  %745 = icmp ne i32 %613, 0
  %746 = select i1 %744, i1 true, i1 %745
  br i1 %746, label %747, label %1058, !prof !575

747:                                              ; preds = %739
  %748 = icmp eq i64 %479, 0
  br i1 %748, label %1058, label %749, !prof !338

749:                                              ; preds = %747, %756
  %750 = phi i64 [ %758, %756 ], [ 0, %747 ]
  %751 = phi i32 [ %757, %756 ], [ 0, %747 ]
  %752 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %750
  %753 = load i32, ptr %752, align 4, !tbaa !204
  %754 = icmp eq i32 %753, %632
  br i1 %754, label %755, label %756, !prof !576

755:                                              ; preds = %749
  br label %756

756:                                              ; preds = %749, %755
  %757 = phi i32 [ 1, %755 ], [ %751, %749 ]
  %758 = add nuw nsw i64 %750, 1
  %759 = icmp eq i64 %758, %479
  br i1 %759, label %1058, label %749, !prof !577, !llvm.loop !578

760:                                              ; preds = %603
  store i32 13, ptr %591, align 4, !tbaa !204
  br label %1058

761:                                              ; preds = %603
  %762 = icmp eq i32 %613, 0
  br i1 %762, label %763, label %1058, !prof !579

763:                                              ; preds = %761
  %764 = load i32, ptr %588, align 8
  %765 = and i32 %764, 65535
  %766 = trunc i32 %764 to i16
  switch i16 %766, label %777 [
    i16 43, label %776
    i16 37, label %767
  ], !prof !580

767:                                              ; preds = %763
  %768 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %769 = icmp ugt i32 %768, 52
  br i1 %769, label %770, label %777, !prof !581

770:                                              ; preds = %767
  %771 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %772 = zext i32 %768 to i64
  %773 = getelementptr inbounds i16, ptr %771, i64 %772
  %774 = load i16, ptr %773, align 2, !tbaa !230
  %775 = icmp slt i16 %774, 0
  br i1 %775, label %776, label %777, !prof !232

776:                                              ; preds = %763, %770
  br label %777

777:                                              ; preds = %763, %776, %770, %767
  %778 = phi i32 [ 1, %776 ], [ %608, %770 ], [ %608, %767 ], [ %608, %763 ]
  %779 = zext nneg i32 %765 to i64
  %780 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %779
  %781 = load i32, ptr %780, align 4, !tbaa !204
  %782 = icmp eq i32 %781, 9
  br i1 %782, label %783, label %1058, !prof !582

783:                                              ; preds = %777
  %784 = icmp eq i32 %765, 121
  br i1 %784, label %1058, label %785

785:                                              ; preds = %783
  %786 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !583
  %787 = call zeroext i8 %786(ptr noundef nonnull %588) #24
  %788 = icmp eq i8 %787, 0
  %789 = select i1 %788, i32 0, i32 %610
  br label %1058

790:                                              ; preds = %603
  %791 = load i32, ptr %588, align 8
  %792 = and i32 %791, 65535
  %793 = icmp eq i32 %792, 43
  br i1 %793, label %794, label %1058

794:                                              ; preds = %790
  %795 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %479
  %796 = load i32, ptr %795, align 4, !tbaa !204
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %1058

798:                                              ; preds = %794
  %799 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %800 = load ptr, ptr %799, align 8, !tbaa !199
  %801 = load i32, ptr %800, align 8
  %802 = trunc i32 %801 to i16
  switch i16 %802, label %1058 [
    i16 74, label %803
    i16 76, label %803
  ]

803:                                              ; preds = %798, %798
  br label %1058

804:                                              ; preds = %603
  %805 = load i32, ptr %588, align 8
  %806 = and i32 %805, 65535
  %807 = icmp eq i32 %806, 43
  br i1 %807, label %808, label %1058

808:                                              ; preds = %804
  %809 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %479
  %810 = load i32, ptr %809, align 4, !tbaa !204
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %1058

812:                                              ; preds = %808
  %813 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %814 = load ptr, ptr %813, align 8, !tbaa !199
  %815 = load i32, ptr %814, align 8
  %816 = trunc i32 %815 to i16
  switch i16 %816, label %1058 [
    i16 75, label %817
    i16 77, label %817
  ]

817:                                              ; preds = %812, %812
  br label %1058

818:                                              ; preds = %603
  %819 = icmp eq i32 %613, 0
  br i1 %819, label %820, label %1058

820:                                              ; preds = %818
  %821 = load i32, ptr %588, align 8
  %822 = and i32 %821, 65535
  %823 = icmp eq i32 %822, 43
  br i1 %823, label %824, label %1058

824:                                              ; preds = %820
  %825 = icmp eq i32 %2, 0
  br i1 %825, label %829, label %826

826:                                              ; preds = %824
  %827 = call i32 @offsettable_memref_p(ptr noundef nonnull %588) #24
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %838, label %1058

829:                                              ; preds = %824
  %830 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %588) #24
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %1058

832:                                              ; preds = %829
  %833 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !199
  %835 = load i32, ptr %834, align 8
  %836 = and i32 %835, 65535
  %837 = icmp eq i32 %836, 37
  br i1 %837, label %1058, label %851

838:                                              ; preds = %826
  %839 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %840 = load ptr, ptr %839, align 8, !tbaa !199
  %841 = load i32, ptr %840, align 8
  %842 = and i32 %841, 65535
  %843 = icmp eq i32 %842, 37
  br i1 %843, label %844, label %851

844:                                              ; preds = %838
  %845 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %846 = call fastcc i32 @rhs_regno(ptr noundef nonnull %840) #25
  %847 = zext i32 %846 to i64
  %848 = getelementptr inbounds ptr, ptr %845, i64 %847
  %849 = load ptr, ptr %848, align 8, !tbaa !200
  %850 = icmp eq ptr %849, null
  br i1 %850, label %851, label %1058

851:                                              ; preds = %838, %844, %832
  br label %1058

852:                                              ; preds = %603
  %853 = icmp eq i32 %613, 0
  br i1 %853, label %854, label %1058

854:                                              ; preds = %852
  %855 = load i32, ptr %588, align 8
  %856 = and i32 %855, 65535
  %857 = icmp eq i32 %856, 43
  br i1 %857, label %858, label %872

858:                                              ; preds = %854
  %859 = icmp eq i32 %2, 0
  br i1 %859, label %863, label %860

860:                                              ; preds = %858
  %861 = call i32 @offsettable_memref_p(ptr noundef nonnull %588) #24
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %866, label %900

863:                                              ; preds = %858
  %864 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %588) #24
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %900

866:                                              ; preds = %863, %860
  %867 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %479
  %868 = load i32, ptr %867, align 4, !tbaa !204
  %869 = icmp eq i32 %868, 1
  br i1 %869, label %900, label %870

870:                                              ; preds = %866
  %871 = load i32, ptr %588, align 8
  br label %872

872:                                              ; preds = %870, %854
  %873 = phi i32 [ %871, %870 ], [ %855, %854 ]
  %874 = and i32 %873, 65535
  %875 = icmp eq i32 %874, 37
  br i1 %875, label %876, label %901

876:                                              ; preds = %872
  %877 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %878 = icmp ugt i32 %877, 52
  br i1 %878, label %879, label %901

879:                                              ; preds = %876
  %880 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %881 = zext i32 %877 to i64
  %882 = getelementptr inbounds i16, ptr %880, i64 %881
  %883 = load i16, ptr %882, align 2, !tbaa !230
  %884 = icmp slt i16 %883, 0
  br i1 %884, label %885, label %901

885:                                              ; preds = %879
  %886 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %887 = getelementptr inbounds ptr, ptr %886, i64 %881
  %888 = load ptr, ptr %887, align 8, !tbaa !200
  %889 = icmp eq ptr %888, null
  br i1 %889, label %893, label %890

890:                                              ; preds = %885
  %891 = call i32 @offsettable_memref_p(ptr noundef nonnull %888) #24
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %900

893:                                              ; preds = %890, %885
  %894 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %895 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %896 = zext i32 %895 to i64
  %897 = getelementptr inbounds ptr, ptr %894, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !200
  %899 = icmp eq ptr %898, null
  br i1 %899, label %901, label %900

900:                                              ; preds = %893, %890, %866, %863, %860
  br label %901

901:                                              ; preds = %900, %893, %879, %876, %872
  %902 = phi i32 [ 1, %900 ], [ %608, %893 ], [ %608, %879 ], [ %608, %876 ], [ %608, %872 ]
  %903 = load i32, ptr %588, align 8
  %904 = and i32 %903, 65535
  %905 = zext nneg i32 %904 to i64
  %906 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %905
  %907 = load i32, ptr %906, align 4, !tbaa !204
  %908 = icmp ne i32 %907, 9
  %909 = icmp eq i32 %904, 121
  %910 = or i1 %908, %909
  br i1 %910, label %918, label %911

911:                                              ; preds = %901
  %912 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !583
  %913 = call zeroext i8 %912(ptr noundef nonnull %588) #24
  %914 = icmp eq i8 %913, 0
  br i1 %914, label %921, label %915

915:                                              ; preds = %911
  %916 = load i32, ptr %588, align 8
  %917 = and i32 %916, 65535
  br label %918

918:                                              ; preds = %915, %901
  %919 = phi i32 [ %917, %915 ], [ %904, %901 ]
  %920 = icmp eq i32 %919, 43
  br i1 %920, label %921, label %1058

921:                                              ; preds = %918, %911
  br label %1058

922:                                              ; preds = %603
  br label %1058

923:                                              ; preds = %603, %603
  %924 = load i32, ptr %588, align 8
  %925 = trunc i32 %924 to i16
  switch i16 %925, label %1058 [
    i16 32, label %933
    i16 33, label %926
  ]

926:                                              ; preds = %923
  %927 = lshr i32 %924, 16
  %928 = and i32 %927, 255
  %929 = zext nneg i32 %928 to i64
  %930 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %929
  %931 = load i8, ptr %930, align 1, !tbaa !199
  %932 = icmp eq i8 %931, 17
  br i1 %932, label %933, label %1058

933:                                              ; preds = %923, %926
  br label %1058

934:                                              ; preds = %603, %603
  %935 = load i32, ptr %588, align 8
  %936 = and i32 %935, 65535
  %937 = icmp eq i32 %936, 32
  br i1 %937, label %938, label %1058

938:                                              ; preds = %934
  %939 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %940 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %588, i32 noundef %939) #24
  %941 = icmp eq i8 %940, 0
  %942 = select i1 %941, i32 %608, i32 1
  br label %1058

943:                                              ; preds = %603
  %944 = load i32, ptr %588, align 8
  %945 = trunc i32 %944 to i16
  switch i16 %945, label %949 [
    i16 30, label %1058
    i16 32, label %946
  ]

946:                                              ; preds = %943
  %947 = and i32 %944, 16711680
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %1058, label %949

949:                                              ; preds = %620, %943, %946
  %950 = phi i32 [ %621, %620 ], [ %944, %943 ], [ %944, %946 ]
  %951 = and i32 %950, 65535
  %952 = zext nneg i32 %951 to i64
  %953 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %952
  %954 = load i32, ptr %953, align 4, !tbaa !204
  %955 = icmp eq i32 %954, 9
  br i1 %955, label %956, label %1058, !prof !584

956:                                              ; preds = %949
  %957 = load i32, ptr @flag_pic, align 4, !tbaa !204
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %962, label %959, !prof !585

959:                                              ; preds = %956
  %960 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %588) #24
  %961 = icmp eq i8 %960, 0
  br i1 %961, label %1058, label %962

962:                                              ; preds = %959, %956
  br label %1058

963:                                              ; preds = %603
  %964 = load i32, ptr %588, align 8
  %965 = trunc i32 %964 to i16
  switch i16 %965, label %1058 [
    i16 30, label %969
    i16 32, label %966
  ], !prof !586

966:                                              ; preds = %963
  %967 = and i32 %964, 16711680
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %969, label %1058

969:                                              ; preds = %963, %966
  br label %1058

970:                                              ; preds = %603, %603, %603, %603, %603, %603, %603, %603
  %971 = load i32, ptr %588, align 8
  %972 = and i32 %971, 65535
  %973 = icmp eq i32 %972, 30
  br i1 %973, label %974, label %1058, !prof !587

974:                                              ; preds = %970
  %975 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %976 = load i64, ptr %975, align 8, !tbaa !199
  %977 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %978 = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %976, i32 noundef %977) #24
  %979 = icmp eq i8 %978, 0
  %980 = select i1 %979, i32 %608, i32 1, !prof !588
  br label %1058

981:                                              ; preds = %603
  br label %1058

982:                                              ; preds = %603
  %983 = icmp eq i32 %613, 0
  br i1 %983, label %984, label %1015, !prof !589

984:                                              ; preds = %982
  %985 = load i32, ptr %588, align 8
  %986 = trunc i32 %985 to i16
  switch i16 %986, label %987 [
    i16 49, label %1015
    i16 38, label %1015
  ], !prof !590

987:                                              ; preds = %984
  %988 = and i32 %985, 65535
  %989 = zext nneg i32 %988 to i64
  %990 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %989
  %991 = load i32, ptr %990, align 4, !tbaa !204
  %992 = icmp eq i32 %991, 9
  %993 = load i32, ptr @flag_pic, align 4
  %994 = icmp ne i32 %993, 0
  %995 = select i1 %992, i1 %994, i1 false
  br i1 %995, label %996, label %1001, !prof !591

996:                                              ; preds = %987
  %997 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %588) #24
  %998 = icmp eq i8 %997, 0
  br i1 %998, label %1015, label %999

999:                                              ; preds = %996
  %1000 = load i32, ptr %588, align 8
  br label %1001

1001:                                             ; preds = %999, %987
  %1002 = phi i32 [ %1000, %999 ], [ %985, %987 ]
  %1003 = and i32 %1002, 65535
  %1004 = icmp eq i32 %1003, 37
  br i1 %1004, label %1005, label %1014, !prof !592

1005:                                             ; preds = %1001
  %1006 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %1007 = icmp ugt i32 %1006, 52
  br i1 %1007, label %1008, label %1015, !prof !593

1008:                                             ; preds = %1005
  %1009 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %1010 = zext i32 %1006 to i64
  %1011 = getelementptr inbounds i16, ptr %1009, i64 %1010
  %1012 = load i16, ptr %1011, align 2, !tbaa !230
  %1013 = icmp slt i16 %1012, 0
  br i1 %1013, label %1014, label %1015, !prof !232

1014:                                             ; preds = %1008, %1001
  br label %1015

1015:                                             ; preds = %984, %984, %982, %996, %1005, %1008, %1014, %603
  %1016 = phi i32 [ %608, %603 ], [ %608, %982 ], [ 1, %1014 ], [ %608, %1008 ], [ %608, %1005 ], [ %608, %996 ], [ %608, %984 ], [ %608, %984 ]
  %1017 = load i32, ptr %591, align 4, !tbaa !204
  %1018 = zext i32 %1017 to i64
  %1019 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1018, i64 13
  br label %1036

1020:                                             ; preds = %603
  %1021 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %1022 = call i32 @regclass_for_constraint(i32 noundef %1021) #24
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1029, !prof !594

1024:                                             ; preds = %1020
  %1025 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %1026 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %588, i32 noundef %1025) #24
  %1027 = icmp eq i8 %1026, 0
  %1028 = select i1 %1027, i32 %608, i32 1
  br label %1058

1029:                                             ; preds = %1020
  %1030 = load i32, ptr %591, align 4, !tbaa !204
  %1031 = zext i32 %1030 to i64
  %1032 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %1033 = call i32 @regclass_for_constraint(i32 noundef %1032) #24
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1031, i64 %1034
  br label %1036

1036:                                             ; preds = %1029, %1015
  %1037 = phi ptr [ %1019, %1015 ], [ %1035, %1029 ]
  %1038 = phi i32 [ %1016, %1015 ], [ %608, %1029 ]
  %1039 = load i32, ptr %1037, align 4, !tbaa !204
  store i32 %1039, ptr %591, align 4, !tbaa !204
  %1040 = load i32, ptr %588, align 8
  %1041 = and i32 %1040, 16711680
  %1042 = icmp eq i32 %1041, 65536
  br i1 %1042, label %1058, label %1043, !prof !595

1043:                                             ; preds = %1036
  %1044 = and i32 %1040, 65535
  %1045 = icmp eq i32 %1044, 37
  br i1 %1045, label %1046, label %1058, !prof !596

1046:                                             ; preds = %1043
  %1047 = load ptr, ptr %487, align 8, !tbaa !200
  %1048 = load i32, ptr %1047, align 8
  %1049 = lshr i32 %1048, 16
  %1050 = and i32 %1049, 255
  %1051 = call i32 @reg_fits_class_p(ptr noundef nonnull %588, i32 noundef %1039, i32 noundef %589, i32 noundef %1050) #24
  %1052 = icmp eq i32 %1051, 0
  %1053 = select i1 %1052, i32 %1038, i32 1, !prof !597
  br label %1058

1054:                                             ; preds = %603
  br label %1055

1055:                                             ; preds = %603, %1054
  %1056 = phi i64 [ 0, %1054 ], [ %619, %603 ]
  %1057 = getelementptr inbounds i8, ptr %607, i64 %1056
  br label %1076

1058:                                             ; preds = %756, %625, %625, %747, %832, %1046, %1024, %974, %938, %785, %963, %943, %923, %918, %921, %812, %798, %777, %783, %622, %624, %760, %922, %603, %981, %603, %603, %603, %739, %761, %803, %794, %790, %817, %808, %804, %818, %851, %844, %829, %826, %820, %852, %933, %926, %934, %946, %962, %959, %949, %969, %966, %970, %1036, %1043
  %1059 = phi i32 [ %604, %1036 ], [ %604, %1043 ], [ %604, %981 ], [ %604, %970 ], [ %604, %969 ], [ %604, %966 ], [ %604, %962 ], [ %604, %959 ], [ %604, %949 ], [ %604, %943 ], [ %604, %946 ], [ %604, %934 ], [ %604, %933 ], [ %604, %926 ], [ %604, %922 ], [ %604, %852 ], [ %604, %818 ], [ %604, %826 ], [ %604, %844 ], [ %604, %851 ], [ %604, %829 ], [ %604, %820 ], [ %604, %808 ], [ %604, %817 ], [ %604, %804 ], [ %604, %794 ], [ %604, %803 ], [ %604, %790 ], [ %604, %761 ], [ %604, %760 ], [ %741, %739 ], [ %604, %624 ], [ %604, %622 ], [ %604, %603 ], [ %604, %603 ], [ %604, %603 ], [ %604, %603 ], [ %604, %785 ], [ %604, %783 ], [ %604, %777 ], [ %604, %798 ], [ %604, %812 ], [ %604, %921 ], [ %604, %918 ], [ %604, %923 ], [ %604, %938 ], [ %604, %963 ], [ %604, %974 ], [ %604, %1024 ], [ %604, %1046 ], [ %604, %832 ], [ %741, %747 ], [ %604, %625 ], [ %604, %625 ], [ %741, %756 ]
  %1060 = phi i32 [ %605, %1036 ], [ %605, %1043 ], [ %605, %981 ], [ %605, %970 ], [ %605, %969 ], [ %605, %966 ], [ %605, %962 ], [ %605, %959 ], [ %605, %949 ], [ %605, %943 ], [ %605, %946 ], [ %605, %934 ], [ %605, %933 ], [ %605, %926 ], [ %605, %922 ], [ %605, %852 ], [ %605, %818 ], [ %605, %826 ], [ %605, %844 ], [ %605, %851 ], [ %605, %829 ], [ %605, %820 ], [ %605, %808 ], [ %605, %817 ], [ %605, %804 ], [ %605, %794 ], [ %605, %803 ], [ %605, %790 ], [ %605, %761 ], [ %605, %760 ], [ %742, %739 ], [ %605, %624 ], [ %605, %622 ], [ %605, %603 ], [ %605, %603 ], [ %605, %603 ], [ %605, %603 ], [ %605, %785 ], [ %605, %783 ], [ %605, %777 ], [ %605, %798 ], [ %605, %812 ], [ %605, %921 ], [ %605, %918 ], [ %605, %923 ], [ %605, %938 ], [ %605, %963 ], [ %605, %974 ], [ %605, %1024 ], [ %605, %1046 ], [ %605, %832 ], [ %742, %747 ], [ %605, %625 ], [ %605, %625 ], [ %742, %756 ]
  %1061 = phi i32 [ %606, %1036 ], [ %606, %1043 ], [ %606, %981 ], [ %606, %970 ], [ %606, %969 ], [ %606, %966 ], [ %606, %962 ], [ %606, %959 ], [ %606, %949 ], [ %606, %943 ], [ %606, %946 ], [ %606, %934 ], [ %606, %933 ], [ %606, %926 ], [ %606, %922 ], [ %606, %852 ], [ %606, %818 ], [ %606, %826 ], [ %606, %844 ], [ %606, %851 ], [ %606, %829 ], [ %606, %820 ], [ %606, %808 ], [ %606, %817 ], [ %606, %804 ], [ %606, %794 ], [ %606, %803 ], [ %606, %790 ], [ %606, %761 ], [ %606, %760 ], [ %606, %739 ], [ 600, %624 ], [ %623, %622 ], [ %606, %603 ], [ %606, %603 ], [ %606, %603 ], [ %606, %603 ], [ %606, %785 ], [ %606, %783 ], [ %606, %777 ], [ %606, %798 ], [ %606, %812 ], [ %606, %921 ], [ %606, %918 ], [ %606, %923 ], [ %606, %938 ], [ %606, %963 ], [ %606, %974 ], [ %606, %1024 ], [ %606, %1046 ], [ %606, %832 ], [ %606, %747 ], [ %606, %625 ], [ %606, %625 ], [ %606, %756 ]
  %1062 = phi ptr [ %607, %1036 ], [ %607, %1043 ], [ %607, %981 ], [ %607, %970 ], [ %607, %969 ], [ %607, %966 ], [ %607, %962 ], [ %607, %959 ], [ %607, %949 ], [ %607, %943 ], [ %607, %946 ], [ %607, %934 ], [ %607, %933 ], [ %607, %926 ], [ %607, %922 ], [ %607, %852 ], [ %607, %818 ], [ %607, %826 ], [ %607, %844 ], [ %607, %851 ], [ %607, %829 ], [ %607, %820 ], [ %607, %808 ], [ %607, %817 ], [ %607, %804 ], [ %607, %794 ], [ %607, %803 ], [ %607, %790 ], [ %607, %761 ], [ %607, %760 ], [ %633, %739 ], [ %607, %624 ], [ %607, %622 ], [ %607, %603 ], [ %607, %603 ], [ %607, %603 ], [ %607, %603 ], [ %607, %785 ], [ %607, %783 ], [ %607, %777 ], [ %607, %798 ], [ %607, %812 ], [ %607, %921 ], [ %607, %918 ], [ %607, %923 ], [ %607, %938 ], [ %607, %963 ], [ %607, %974 ], [ %607, %1024 ], [ %607, %1046 ], [ %607, %832 ], [ %633, %747 ], [ %627, %625 ], [ %627, %625 ], [ %633, %756 ]
  %1063 = phi i64 [ %619, %1036 ], [ %619, %1043 ], [ %619, %981 ], [ %619, %970 ], [ %619, %969 ], [ %619, %966 ], [ %619, %962 ], [ %619, %959 ], [ %619, %949 ], [ %619, %943 ], [ %619, %946 ], [ %619, %934 ], [ %619, %933 ], [ %619, %926 ], [ %619, %922 ], [ %619, %852 ], [ %619, %818 ], [ %619, %826 ], [ %619, %844 ], [ %619, %851 ], [ %619, %829 ], [ %619, %820 ], [ %619, %808 ], [ %619, %817 ], [ %619, %804 ], [ %619, %794 ], [ %619, %803 ], [ %619, %790 ], [ %619, %761 ], [ %619, %760 ], [ 0, %739 ], [ %619, %624 ], [ %619, %622 ], [ %619, %603 ], [ %619, %603 ], [ %619, %603 ], [ %619, %603 ], [ %619, %785 ], [ %619, %783 ], [ %619, %777 ], [ %619, %798 ], [ %619, %812 ], [ %619, %921 ], [ %619, %918 ], [ %619, %923 ], [ %619, %938 ], [ %619, %963 ], [ %619, %974 ], [ %619, %1024 ], [ %619, %1046 ], [ %619, %832 ], [ 0, %747 ], [ 0, %625 ], [ 0, %625 ], [ 0, %756 ]
  %1064 = phi i32 [ %1038, %1036 ], [ %1038, %1043 ], [ 1, %981 ], [ %608, %970 ], [ 1, %969 ], [ %608, %966 ], [ 1, %962 ], [ %608, %959 ], [ %608, %949 ], [ %608, %943 ], [ %608, %946 ], [ %608, %934 ], [ 1, %933 ], [ %608, %926 ], [ %608, %922 ], [ %608, %852 ], [ %608, %818 ], [ %608, %826 ], [ %608, %844 ], [ 1, %851 ], [ %608, %829 ], [ %608, %820 ], [ %608, %808 ], [ 1, %817 ], [ %608, %804 ], [ %608, %794 ], [ 1, %803 ], [ %608, %790 ], [ %608, %761 ], [ 1, %760 ], [ %608, %739 ], [ %608, %624 ], [ %608, %622 ], [ %608, %603 ], [ %608, %603 ], [ %608, %603 ], [ %608, %603 ], [ %778, %785 ], [ %778, %783 ], [ %778, %777 ], [ %608, %798 ], [ %608, %812 ], [ %902, %921 ], [ %902, %918 ], [ %608, %923 ], [ %942, %938 ], [ %608, %963 ], [ %980, %974 ], [ %1028, %1024 ], [ %1053, %1046 ], [ %608, %832 ], [ %608, %747 ], [ %608, %625 ], [ %608, %625 ], [ %608, %756 ]
  %1065 = phi i32 [ %609, %1036 ], [ %609, %1043 ], [ %609, %981 ], [ %609, %970 ], [ %609, %969 ], [ %609, %966 ], [ %609, %962 ], [ %609, %959 ], [ %609, %949 ], [ %609, %943 ], [ %609, %946 ], [ %609, %934 ], [ %609, %933 ], [ %609, %926 ], [ %609, %922 ], [ %609, %852 ], [ %609, %818 ], [ %609, %826 ], [ %609, %844 ], [ %609, %851 ], [ %609, %829 ], [ %609, %820 ], [ %609, %808 ], [ %609, %817 ], [ %609, %804 ], [ %609, %794 ], [ %609, %803 ], [ %609, %790 ], [ %609, %761 ], [ %609, %760 ], [ %743, %739 ], [ %609, %624 ], [ %609, %622 ], [ %609, %603 ], [ %609, %603 ], [ %609, %603 ], [ %609, %603 ], [ %609, %785 ], [ %609, %783 ], [ %609, %777 ], [ %609, %798 ], [ %609, %812 ], [ %609, %921 ], [ %609, %918 ], [ %609, %923 ], [ %609, %938 ], [ %609, %963 ], [ %609, %974 ], [ %609, %1024 ], [ %609, %1046 ], [ %609, %832 ], [ %743, %747 ], [ %609, %625 ], [ %609, %625 ], [ %743, %756 ]
  %1066 = phi i32 [ %610, %1036 ], [ %610, %1043 ], [ %610, %981 ], [ %610, %970 ], [ %610, %969 ], [ %610, %966 ], [ %610, %962 ], [ %610, %959 ], [ %610, %949 ], [ %610, %943 ], [ %610, %946 ], [ %610, %934 ], [ %610, %933 ], [ %610, %926 ], [ %610, %922 ], [ %610, %852 ], [ %610, %818 ], [ %610, %826 ], [ %610, %844 ], [ %610, %851 ], [ %610, %829 ], [ %610, %820 ], [ %610, %808 ], [ %610, %817 ], [ %610, %804 ], [ %610, %794 ], [ %610, %803 ], [ %610, %790 ], [ %610, %761 ], [ 0, %760 ], [ 0, %739 ], [ %610, %624 ], [ %610, %622 ], [ %610, %603 ], [ %610, %603 ], [ %610, %603 ], [ %610, %603 ], [ %789, %785 ], [ %610, %783 ], [ %610, %777 ], [ %610, %798 ], [ %610, %812 ], [ 0, %921 ], [ %610, %918 ], [ %610, %923 ], [ %610, %938 ], [ %610, %963 ], [ %610, %974 ], [ %610, %1024 ], [ %610, %1046 ], [ %610, %832 ], [ 0, %747 ], [ %610, %625 ], [ %610, %625 ], [ %757, %756 ]
  %1067 = phi i32 [ %611, %1036 ], [ 1, %1043 ], [ %611, %981 ], [ %611, %970 ], [ %611, %969 ], [ %611, %966 ], [ %611, %962 ], [ %611, %959 ], [ %611, %949 ], [ %611, %943 ], [ %611, %946 ], [ %611, %934 ], [ %611, %933 ], [ %611, %926 ], [ %611, %922 ], [ %611, %852 ], [ %611, %818 ], [ %611, %826 ], [ %611, %844 ], [ %611, %851 ], [ %611, %829 ], [ %611, %820 ], [ %611, %808 ], [ %611, %817 ], [ %611, %804 ], [ %611, %794 ], [ %611, %803 ], [ %611, %790 ], [ %611, %761 ], [ %611, %760 ], [ %611, %739 ], [ %611, %624 ], [ %611, %622 ], [ %611, %603 ], [ %611, %603 ], [ %611, %603 ], [ %611, %603 ], [ %611, %785 ], [ %611, %783 ], [ %611, %777 ], [ %611, %798 ], [ %611, %812 ], [ %611, %921 ], [ %611, %918 ], [ %611, %923 ], [ %611, %938 ], [ %611, %963 ], [ %611, %974 ], [ %611, %1024 ], [ 1, %1046 ], [ %611, %832 ], [ %611, %747 ], [ %611, %625 ], [ %611, %625 ], [ %611, %756 ]
  %1068 = phi i32 [ %618, %1036 ], [ %618, %1043 ], [ 88, %981 ], [ %618, %970 ], [ 88, %969 ], [ 88, %966 ], [ %618, %962 ], [ %618, %959 ], [ %618, %949 ], [ 88, %943 ], [ 88, %946 ], [ %618, %934 ], [ %618, %933 ], [ %618, %926 ], [ 88, %922 ], [ 88, %852 ], [ 88, %818 ], [ 88, %826 ], [ 88, %844 ], [ 88, %851 ], [ 88, %829 ], [ 88, %820 ], [ 88, %808 ], [ 88, %817 ], [ 88, %804 ], [ 88, %794 ], [ 88, %803 ], [ 88, %790 ], [ 88, %761 ], [ 88, %760 ], [ %618, %739 ], [ 88, %624 ], [ 88, %622 ], [ %618, %603 ], [ %618, %603 ], [ %618, %603 ], [ %618, %603 ], [ 88, %785 ], [ 88, %783 ], [ 88, %777 ], [ 88, %798 ], [ 88, %812 ], [ 88, %921 ], [ 88, %918 ], [ %618, %923 ], [ %618, %938 ], [ 88, %963 ], [ %618, %974 ], [ %618, %1024 ], [ %618, %1046 ], [ 88, %832 ], [ %618, %747 ], [ %618, %625 ], [ %618, %625 ], [ %618, %756 ]
  %1069 = phi i32 [ %612, %1036 ], [ %612, %1043 ], [ %612, %981 ], [ %612, %970 ], [ %612, %969 ], [ %612, %966 ], [ %612, %962 ], [ %612, %959 ], [ %612, %949 ], [ %612, %943 ], [ %612, %946 ], [ %612, %934 ], [ %612, %933 ], [ %612, %926 ], [ 1, %922 ], [ %612, %852 ], [ %612, %818 ], [ %612, %826 ], [ %612, %844 ], [ %612, %851 ], [ %612, %829 ], [ %612, %820 ], [ %612, %808 ], [ %612, %817 ], [ %612, %804 ], [ %612, %794 ], [ %612, %803 ], [ %612, %790 ], [ %612, %761 ], [ %612, %760 ], [ %612, %739 ], [ %612, %624 ], [ %612, %622 ], [ %612, %603 ], [ %612, %603 ], [ %612, %603 ], [ %612, %603 ], [ %612, %785 ], [ %612, %783 ], [ %612, %777 ], [ %612, %798 ], [ %612, %812 ], [ %612, %921 ], [ %612, %918 ], [ %612, %923 ], [ %612, %938 ], [ %612, %963 ], [ %612, %974 ], [ %612, %1024 ], [ %612, %1046 ], [ %612, %832 ], [ %612, %747 ], [ %612, %625 ], [ %612, %625 ], [ %612, %756 ]
  %1070 = phi i32 [ %613, %1036 ], [ %613, %1043 ], [ 0, %981 ], [ %613, %970 ], [ %613, %969 ], [ %613, %966 ], [ %613, %962 ], [ %613, %959 ], [ %613, %949 ], [ %613, %943 ], [ %613, %946 ], [ %613, %934 ], [ %613, %933 ], [ %613, %926 ], [ %613, %922 ], [ 1, %852 ], [ 1, %818 ], [ 0, %826 ], [ 0, %844 ], [ 0, %851 ], [ 0, %829 ], [ 0, %820 ], [ %613, %808 ], [ %613, %817 ], [ %613, %804 ], [ %613, %794 ], [ %613, %803 ], [ %613, %790 ], [ 1, %761 ], [ %613, %760 ], [ 0, %739 ], [ %613, %624 ], [ %613, %622 ], [ %613, %603 ], [ %613, %603 ], [ %613, %603 ], [ %613, %603 ], [ 0, %785 ], [ 0, %783 ], [ 0, %777 ], [ %613, %798 ], [ %613, %812 ], [ 0, %921 ], [ 0, %918 ], [ %613, %923 ], [ %613, %938 ], [ %613, %963 ], [ %613, %974 ], [ %613, %1024 ], [ %613, %1046 ], [ 0, %832 ], [ %613, %747 ], [ %613, %625 ], [ %613, %625 ], [ %613, %756 ]
  %1071 = phi i8 [ %614, %1036 ], [ %614, %1043 ], [ %614, %981 ], [ %614, %970 ], [ %614, %969 ], [ %614, %966 ], [ %614, %962 ], [ %614, %959 ], [ %614, %949 ], [ %614, %943 ], [ %614, %946 ], [ %614, %934 ], [ %614, %933 ], [ %614, %926 ], [ %614, %922 ], [ %614, %852 ], [ %614, %818 ], [ %614, %826 ], [ %614, %844 ], [ %614, %851 ], [ %614, %829 ], [ %614, %820 ], [ %614, %808 ], [ %614, %817 ], [ %614, %804 ], [ %614, %794 ], [ %614, %803 ], [ %614, %790 ], [ %614, %761 ], [ %614, %760 ], [ %614, %739 ], [ %614, %624 ], [ %614, %622 ], [ %614, %603 ], [ %614, %603 ], [ %614, %603 ], [ %614, %603 ], [ %614, %785 ], [ %614, %783 ], [ %614, %777 ], [ %614, %798 ], [ %614, %812 ], [ 1, %921 ], [ 1, %918 ], [ %614, %923 ], [ %614, %938 ], [ %614, %963 ], [ %614, %974 ], [ %614, %1024 ], [ %614, %1046 ], [ %614, %832 ], [ %614, %747 ], [ %614, %625 ], [ %614, %625 ], [ %614, %756 ]
  %1072 = phi i32 [ %615, %1036 ], [ %615, %1043 ], [ %615, %981 ], [ %615, %970 ], [ %615, %969 ], [ %615, %966 ], [ %615, %962 ], [ %615, %959 ], [ %615, %949 ], [ %615, %943 ], [ %615, %946 ], [ %615, %934 ], [ %615, %933 ], [ %615, %926 ], [ %615, %922 ], [ %615, %852 ], [ %615, %818 ], [ %615, %826 ], [ %615, %844 ], [ %615, %851 ], [ %615, %829 ], [ %615, %820 ], [ %615, %808 ], [ %615, %817 ], [ %615, %804 ], [ %615, %794 ], [ %615, %803 ], [ %615, %790 ], [ %615, %761 ], [ %615, %760 ], [ %615, %739 ], [ %615, %624 ], [ %615, %622 ], [ %615, %603 ], [ %615, %603 ], [ %615, %603 ], [ %615, %603 ], [ 1, %785 ], [ 1, %783 ], [ 1, %777 ], [ %615, %798 ], [ %615, %812 ], [ 1, %921 ], [ 1, %918 ], [ %615, %923 ], [ %615, %938 ], [ %615, %963 ], [ %615, %974 ], [ %615, %1024 ], [ %615, %1046 ], [ %615, %832 ], [ %615, %747 ], [ %615, %625 ], [ %615, %625 ], [ %615, %756 ]
  %1073 = phi i8 [ %616, %1036 ], [ %616, %1043 ], [ %616, %981 ], [ %616, %970 ], [ %616, %969 ], [ %616, %966 ], [ %616, %962 ], [ %616, %959 ], [ %616, %949 ], [ %616, %943 ], [ %616, %946 ], [ %616, %934 ], [ %616, %933 ], [ %616, %926 ], [ 1, %922 ], [ %616, %852 ], [ %616, %818 ], [ %616, %826 ], [ %616, %844 ], [ %616, %851 ], [ %616, %829 ], [ %616, %820 ], [ %616, %808 ], [ %616, %817 ], [ %616, %804 ], [ %616, %794 ], [ %616, %803 ], [ %616, %790 ], [ %616, %761 ], [ %616, %760 ], [ %616, %739 ], [ %616, %624 ], [ %616, %622 ], [ %616, %603 ], [ %616, %603 ], [ %616, %603 ], [ %616, %603 ], [ %616, %785 ], [ %616, %783 ], [ %616, %777 ], [ %616, %798 ], [ %616, %812 ], [ %616, %921 ], [ %616, %918 ], [ %616, %923 ], [ %616, %938 ], [ %616, %963 ], [ %616, %974 ], [ %616, %1024 ], [ %616, %1046 ], [ %616, %832 ], [ %616, %747 ], [ %616, %625 ], [ %616, %625 ], [ %616, %756 ]
  %1074 = getelementptr inbounds i8, ptr %1062, i64 %1063
  %1075 = icmp eq i32 %1068, 0
  br i1 %1075, label %1076, label %603, !prof !598, !llvm.loop !599

1076:                                             ; preds = %1058, %1055
  %1077 = phi ptr [ %1057, %1055 ], [ %1074, %1058 ]
  %1078 = phi i8 [ %616, %1055 ], [ %1073, %1058 ]
  %1079 = phi i32 [ %615, %1055 ], [ %1072, %1058 ]
  %1080 = phi i8 [ %614, %1055 ], [ %1071, %1058 ]
  %1081 = phi i32 [ %613, %1055 ], [ %1070, %1058 ]
  %1082 = phi i32 [ %612, %1055 ], [ %1069, %1058 ]
  %1083 = phi i32 [ %611, %1055 ], [ %1067, %1058 ]
  %1084 = phi i32 [ %610, %1055 ], [ %1066, %1058 ]
  %1085 = phi i32 [ %609, %1055 ], [ %1065, %1058 ]
  %1086 = phi i32 [ %608, %1055 ], [ %1064, %1058 ]
  %1087 = phi i32 [ %606, %1055 ], [ %1061, %1058 ]
  %1088 = phi i32 [ %605, %1055 ], [ %1060, %1058 ]
  %1089 = phi i32 [ %604, %1055 ], [ %1059, %1058 ]
  store ptr %1077, ptr %485, align 8, !tbaa !200
  %1090 = icmp eq i32 %1083, 0
  br i1 %1090, label %1095, label %1091, !prof !600

1091:                                             ; preds = %1076
  %1092 = load i32, ptr %591, align 4, !tbaa !204
  %1093 = icmp eq i32 %1092, 0
  %1094 = select i1 %1093, i32 %1084, i32 0, !prof !595
  br label %1095

1095:                                             ; preds = %1091, %1076
  %1096 = phi i32 [ %1084, %1076 ], [ %1094, %1091 ]
  store i8 %1078, ptr %595, align 1, !tbaa !199
  %1097 = icmp eq i32 %1086, 0
  %1098 = icmp ne i32 %1081, 0
  %1099 = select i1 %1097, i1 true, i1 %1098
  br i1 %1099, label %1101, label %1100, !prof !601

1100:                                             ; preds = %1095
  store i8 1, ptr %592, align 1, !tbaa !199
  br label %1245

1101:                                             ; preds = %1095
  %1102 = icmp eq i32 %1085, 0
  %1103 = select i1 %1102, i1 true, i1 %1098
  br i1 %1103, label %1105, label %1104, !prof !602

1104:                                             ; preds = %1101
  store i8 1, ptr %593, align 1, !tbaa !199
  br label %1245

1105:                                             ; preds = %1101
  store i8 %1080, ptr %594, align 1, !tbaa !199
  %1106 = add nsw i32 %1089, 1
  %1107 = icmp eq i32 %1096, 0
  br i1 %1107, label %1109, label %1108, !prof !603

1108:                                             ; preds = %1105
  br label %1109

1109:                                             ; preds = %1108, %1105
  %1110 = phi i32 [ 1, %1108 ], [ %1088, %1105 ]
  %1111 = load i32, ptr %588, align 8
  %1112 = and i32 %1111, 65535
  %1113 = icmp eq i32 %1112, 37
  br i1 %1113, label %1114, label %1121, !prof !604

1114:                                             ; preds = %1109
  %1115 = load i32, ptr %591, align 4, !tbaa !204
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1117, label %1121, !prof !605

1117:                                             ; preds = %1114
  %1118 = load i32, ptr %596, align 4, !tbaa !204
  %1119 = icmp slt i32 %1118, 0
  %1120 = select i1 %1119, i32 1, i32 %1110, !prof !543
  br label %1121

1121:                                             ; preds = %1117, %1114, %1109
  %1122 = phi i32 [ %1110, %1114 ], [ %1110, %1109 ], [ %1120, %1117 ]
  %1123 = zext nneg i32 %1112 to i64
  %1124 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1123
  %1125 = load i32, ptr %1124, align 4, !tbaa !204
  %1126 = icmp ne i32 %1125, 9
  %1127 = icmp eq i32 %1112, 121
  %1128 = or i1 %1127, %1126
  br i1 %1128, label %1145, label %1129, !prof !606

1129:                                             ; preds = %1121
  %1130 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !583
  %1131 = call zeroext i8 %1130(ptr noundef nonnull %588) #24
  %1132 = icmp eq i8 %1131, 0
  br i1 %1132, label %1133, label %1145, !prof !607

1133:                                             ; preds = %1129
  %1134 = load i32, ptr %591, align 4, !tbaa !204
  %1135 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %588, i32 noundef %1134) #24
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1137, label %1145, !prof !608

1137:                                             ; preds = %1133
  %1138 = load i32, ptr %602, align 4, !tbaa !204
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1145, label %1140

1140:                                             ; preds = %1137
  %1141 = load i32, ptr %591, align 4, !tbaa !204
  %1142 = icmp eq i32 %1141, 0
  %1143 = add nsw i32 %1089, 2
  %1144 = select i1 %1142, i32 %1106, i32 %1143
  br label %1145

1145:                                             ; preds = %1140, %1133, %1137, %1129, %1121
  %1146 = phi i32 [ %1106, %1129 ], [ %1106, %1137 ], [ %1106, %1133 ], [ %1106, %1121 ], [ %1144, %1140 ]
  %1147 = phi i1 [ true, %1129 ], [ true, %1137 ], [ true, %1133 ], [ true, %1121 ], [ false, %1140 ]
  %1148 = load i32, ptr %588, align 8
  %1149 = and i32 %1148, 65535
  %1150 = icmp eq i32 %1149, 38
  br i1 %1150, label %1159, label %1151, !prof !609

1151:                                             ; preds = %1145
  %1152 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %479
  %1153 = load i32, ptr %1152, align 4, !tbaa !204
  %1154 = icmp ne i32 %1153, 0
  %1155 = and i1 %54, %1154
  br i1 %1155, label %1156, label %1159, !prof !610

1156:                                             ; preds = %1151
  %1157 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %588) #24
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1160, label %1159

1159:                                             ; preds = %1156, %1151, %1145
  br label %1160

1160:                                             ; preds = %1156, %1159
  %1161 = phi i32 [ %1122, %1159 ], [ 1, %1156 ]
  %1162 = load i32, ptr %588, align 8
  %1163 = and i32 %1162, 65535
  %1164 = zext nneg i32 %1163 to i64
  %1165 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1164
  %1166 = load i32, ptr %1165, align 4, !tbaa !204
  %1167 = icmp eq i32 %1166, 9
  br i1 %1167, label %1185, label %1168, !prof !611

1168:                                             ; preds = %1160
  %1169 = load i32, ptr %591, align 4, !tbaa !204
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1185, label %1171, !prof !612

1171:                                             ; preds = %1168
  %1172 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %588, i32 noundef %1169) #24
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1174, label %1175, !prof !613

1174:                                             ; preds = %1171
  br label %1175

1175:                                             ; preds = %1174, %1171
  %1176 = phi i32 [ 600, %1174 ], [ %1087, %1171 ]
  %1177 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %479
  %1178 = load i32, ptr %1177, align 4, !tbaa !204
  %1179 = icmp eq i32 %1178, 1
  br i1 %1179, label %1180, label %1185, !prof !614

1180:                                             ; preds = %1175
  %1181 = load i32, ptr %591, align 4, !tbaa !204
  %1182 = call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %588, i32 noundef %1181) #24
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1184, label %1185, !prof !242

1184:                                             ; preds = %1180
  br label %1185

1185:                                             ; preds = %1175, %1180, %1184, %1168, %1160
  %1186 = phi i32 [ %1087, %1160 ], [ 600, %1184 ], [ %1176, %1180 ], [ %1176, %1175 ], [ %1087, %1168 ]
  %1187 = load i32, ptr %588, align 8
  %1188 = and i32 %1187, 65535
  %1189 = trunc i32 %1187 to i16
  switch i16 %1189, label %1193 [
    i16 37, label %1190
    i16 38, label %1198
  ], !prof !615

1190:                                             ; preds = %1185
  %1191 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %1192 = icmp ugt i32 %1191, 52
  br i1 %1192, label %1198, label %1193, !prof !616

1193:                                             ; preds = %1185, %1190
  br i1 %1147, label %1196, label %1194, !prof !617

1194:                                             ; preds = %1193
  %1195 = icmp eq i32 %1079, 0
  br i1 %1195, label %1196, label %1198

1196:                                             ; preds = %1194, %1193
  %1197 = add nsw i32 %1186, 2
  br label %1198

1198:                                             ; preds = %1185, %1196, %1194, %1190
  %1199 = phi i32 [ %1186, %1190 ], [ %1186, %1194 ], [ %1197, %1196 ], [ %1186, %1185 ]
  %1200 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %479
  %1201 = load i32, ptr %1200, align 4, !tbaa !204
  %1202 = icmp ne i32 %1201, 0
  %1203 = icmp ne i32 %1188, 38
  %1204 = and i1 %1203, %1202
  %1205 = zext i1 %1204 to i32
  %1206 = add nsw i32 %1199, %1205
  %1207 = icmp ne i32 %1086, 0
  %1208 = icmp ne i32 %1085, 0
  %1209 = select i1 %1207, i1 true, i1 %1208
  br i1 %1209, label %1245, label %1210, !prof !618

1210:                                             ; preds = %1198
  %1211 = load i32, ptr %591, align 4, !tbaa !204
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1245, label %1213, !prof !619

1213:                                             ; preds = %1210
  %1214 = load i32, ptr %602, align 4, !tbaa !204
  %1215 = zext i32 %1214 to i64
  %1216 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1215
  %1217 = load i8, ptr %1216, align 1, !tbaa !199
  %1218 = icmp ult i8 %1217, 5
  br i1 %1218, label %1219, label %1245, !prof !620

1219:                                             ; preds = %1213
  %1220 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %479
  %1221 = load i32, ptr %1220, align 4, !tbaa !204
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1222
  %1224 = load i32, ptr %1223, align 4, !tbaa !204
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1245, label %1226, !prof !621

1226:                                             ; preds = %1219
  %1227 = zext i32 %1221 to i64
  %1228 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1227
  %1229 = load i32, ptr %1228, align 4, !tbaa !204
  switch i32 %1229, label %1230 [
    i32 1, label %1245
    i32 0, label %1231
  ], !prof !622

1230:                                             ; preds = %1226
  switch i32 %1221, label %1231 [
    i32 1, label %1245
    i32 2, label %1245
    i32 3, label %1245
    i32 4, label %1245
    i32 7, label %1245
    i32 5, label %1245
    i32 6, label %1245
    i32 17, label %1245
    i32 14, label %1245
    i32 15, label %1245
  ]

1231:                                             ; preds = %1230, %1226
  %1232 = call i32 @reg_class_subset_p(i32 noundef %1211, i32 noundef %1221) #24
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1234, label %1245

1234:                                             ; preds = %1231
  %1235 = call i32 @reg_class_subset_p(i32 noundef %1221, i32 noundef %1211) #24
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1238, label %1237

1237:                                             ; preds = %1234
  store i32 %1221, ptr %591, align 4, !tbaa !204
  br label %1245

1238:                                             ; preds = %1234
  %1239 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %479
  %1240 = load i8, ptr %1239, align 1, !tbaa !199
  %1241 = sext i8 %1240 to i32
  %1242 = shl nsw i32 %1241, 1
  %1243 = add i32 %1206, 2
  %1244 = add i32 %1243, %1242
  br label %1245

1245:                                             ; preds = %1104, %1100, %1230, %1230, %1230, %1230, %1230, %1230, %1230, %1230, %1230, %1230, %1226, %1231, %1238, %1237, %1219, %1213, %1210, %1198
  %1246 = phi i32 [ %1161, %1198 ], [ %1161, %1226 ], [ %1161, %1230 ], [ %1161, %1231 ], [ %1161, %1237 ], [ %1161, %1238 ], [ %1161, %1219 ], [ %1161, %1213 ], [ %1161, %1210 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1161, %1230 ], [ %1088, %1100 ], [ %1088, %1104 ]
  %1247 = phi i32 [ %1146, %1198 ], [ %1146, %1226 ], [ %1146, %1230 ], [ %1146, %1231 ], [ %1146, %1237 ], [ %1146, %1238 ], [ %1146, %1219 ], [ %1146, %1213 ], [ %1146, %1210 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1146, %1230 ], [ %1089, %1100 ], [ %1089, %1104 ]
  %1248 = phi i32 [ %1206, %1198 ], [ %1206, %1226 ], [ %1206, %1230 ], [ %1206, %1231 ], [ %1206, %1237 ], [ %1244, %1238 ], [ %1206, %1219 ], [ %1206, %1213 ], [ %1206, %1210 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1206, %1230 ], [ %1087, %1100 ], [ %1087, %1104 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #23
  %1249 = add nuw nsw i64 %479, 1
  %1250 = icmp eq i64 %1249, %445
  br i1 %1250, label %477, label %478, !prof !623, !llvm.loop !624

1251:                                             ; preds = %477, %1364
  %1252 = phi i64 [ %1366, %1364 ], [ 0, %477 ]
  %1253 = phi i32 [ %1365, %1364 ], [ %1247, %477 ]
  %1254 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %1252
  %1255 = load i8, ptr %1254, align 1, !tbaa !199
  %1256 = icmp eq i8 %1255, 0
  br i1 %1256, label %1364, label %1257, !prof !625

1257:                                             ; preds = %1251
  %1258 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1252
  %1259 = load i8, ptr %1258, align 1, !tbaa !199
  %1260 = icmp eq i8 %1259, 0
  br i1 %1260, label %1261, label %1265

1261:                                             ; preds = %1257
  %1262 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1252
  %1263 = load i8, ptr %1262, align 1, !tbaa !199
  %1264 = icmp eq i8 %1263, 0
  br i1 %1264, label %1364, label %1265

1265:                                             ; preds = %1261, %1257
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #23
  %1266 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1252
  %1267 = load ptr, ptr %1266, align 8, !tbaa !200
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %33, ptr noundef %1267) #25
  %1268 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1252
  %1269 = load i32, ptr %1268, align 4, !tbaa !204
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1272

1271:                                             ; preds = %1265
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3618, ptr noundef nonnull @.str.1) #24
  br label %1272

1272:                                             ; preds = %1265, %1271
  %1273 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1252
  %1274 = load i32, ptr %1273, align 4, !tbaa !204
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1276, label %1282

1276:                                             ; preds = %1272
  store i8 0, ptr %1254, align 1, !tbaa !199
  %1277 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !204
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1276
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3623, ptr noundef nonnull @.str.1) #24
  br label %1280

1280:                                             ; preds = %1276, %1279
  %1281 = load ptr, ptr @this_insn, align 8, !tbaa !200
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %1281, ptr noundef nonnull @.str.4) #24
  br label %1282

1282:                                             ; preds = %1272, %1280
  %1283 = zext i32 %1274 to i64
  %1284 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1283
  br label %1285

1285:                                             ; preds = %1282, %1333
  %1286 = phi i64 [ 0, %1282 ], [ %1335, %1333 ]
  %1287 = phi i32 [ %1253, %1282 ], [ %1334, %1333 ]
  %1288 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1286
  %1289 = load ptr, ptr %1288, align 8, !tbaa !200
  %1290 = load i32, ptr %1289, align 8
  %1291 = and i32 %1290, 65535
  %1292 = icmp eq i32 %1291, 43
  br i1 %1292, label %1299, label %1293

1293:                                             ; preds = %1285
  %1294 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1286
  %1295 = load i32, ptr %1294, align 4, !tbaa !204
  %1296 = icmp eq i32 %1295, 2
  %1297 = icmp eq i64 %1286, %1252
  %1298 = or i1 %1297, %1296
  br i1 %1298, label %1333, label %1301

1299:                                             ; preds = %1285
  %1300 = icmp eq i64 %1286, %1252
  br i1 %1300, label %1333, label %1301

1301:                                             ; preds = %1293, %1299
  %1302 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1286
  %1303 = load ptr, ptr %1302, align 8, !tbaa !200
  %1304 = load i8, ptr %1303, align 1, !tbaa !199
  %1305 = icmp eq i8 %1304, 0
  br i1 %1305, label %1333, label %1306

1306:                                             ; preds = %1301
  %1307 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1286
  %1308 = load i32, ptr %1307, align 4, !tbaa !204
  %1309 = zext i32 %1308 to i64
  %1310 = icmp eq i64 %1252, %1309
  br i1 %1310, label %1311, label %1317

1311:                                             ; preds = %1306
  %1312 = load ptr, ptr %1266, align 8, !tbaa !200
  %1313 = call i32 @rtx_equal_p(ptr noundef %1312, ptr noundef nonnull %1289) #24
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1315, label %1333

1315:                                             ; preds = %1311
  %1316 = load ptr, ptr %1288, align 8, !tbaa !200
  br label %1317

1317:                                             ; preds = %1315, %1306
  %1318 = phi ptr [ %1316, %1315 ], [ %1289, %1306 ]
  %1319 = load ptr, ptr %1266, align 8, !tbaa !200
  %1320 = call fastcc i32 @immune_p(ptr noundef %1318, ptr noundef %1319, ptr noundef nonnull byval(%struct.decomposition) align 8 %33) #25, !range !238
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1322, label %1333

1322:                                             ; preds = %1317
  %1323 = load i32, ptr %1284, align 4, !tbaa !204
  switch i32 %1323, label %1324 [
    i32 1, label %1325
    i32 0, label %1337
  ]

1324:                                             ; preds = %1322
  switch i32 %1274, label %1337 [
    i32 1, label %1325
    i32 2, label %1325
    i32 3, label %1325
    i32 4, label %1325
    i32 7, label %1325
    i32 5, label %1325
    i32 6, label %1325
    i32 17, label %1325
    i32 14, label %1325
    i32 15, label %1325
  ]

1325:                                             ; preds = %1324, %1324, %1324, %1324, %1324, %1324, %1324, %1324, %1324, %1324, %1322
  %1326 = load ptr, ptr %1288, align 8, !tbaa !200
  %1327 = load i32, ptr %1326, align 8
  %1328 = trunc i32 %1327 to i16
  switch i16 %1328, label %1337 [
    i16 37, label %1329
    i16 39, label %1329
  ]

1329:                                             ; preds = %1325, %1325
  %1330 = add nsw i32 %1287, 1
  %1331 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1286
  store i8 0, ptr %1331, align 1, !tbaa !199
  %1332 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1286
  store i8 0, ptr %1332, align 1, !tbaa !199
  br label %1333

1333:                                             ; preds = %1293, %1299, %1301, %1311, %1317, %1329
  %1334 = phi i32 [ %1287, %1311 ], [ %1287, %1317 ], [ %1330, %1329 ], [ %1287, %1301 ], [ %1287, %1299 ], [ %1287, %1293 ]
  %1335 = add nuw nsw i64 %1286, 1
  %1336 = icmp eq i64 %1335, %445
  br i1 %1336, label %1362, label %1285, !llvm.loop !626

1337:                                             ; preds = %1322, %1324, %1325
  %1338 = trunc i64 %1286 to i32
  %1339 = icmp eq i32 %1338, %96
  br i1 %1339, label %1362, label %1340

1340:                                             ; preds = %1337
  %1341 = add nsw i32 %1287, 1
  store i8 0, ptr %1258, align 1, !tbaa !199
  %1342 = and i64 %1286, 4294967295
  %1343 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1342
  store i8 0, ptr %1343, align 1, !tbaa !199
  br label %1344

1344:                                             ; preds = %1340, %1358
  %1345 = phi i64 [ 0, %1340 ], [ %1360, %1358 ]
  %1346 = phi i32 [ %1341, %1340 ], [ %1359, %1358 ]
  %1347 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1345
  %1348 = load i32, ptr %1347, align 4, !tbaa !204
  %1349 = zext i32 %1348 to i64
  %1350 = icmp eq i64 %1252, %1349
  br i1 %1350, label %1351, label %1358

1351:                                             ; preds = %1344
  %1352 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1345
  %1353 = load i8, ptr %1352, align 1, !tbaa !199
  %1354 = icmp eq i8 %1353, 0
  br i1 %1354, label %1358, label %1355

1355:                                             ; preds = %1351
  %1356 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1345
  store i8 0, ptr %1356, align 1, !tbaa !199
  store i8 0, ptr %1352, align 1, !tbaa !199
  %1357 = add nsw i32 %1346, 1
  br label %1358

1358:                                             ; preds = %1344, %1351, %1355
  %1359 = phi i32 [ %1357, %1355 ], [ %1346, %1351 ], [ %1346, %1344 ]
  %1360 = add nuw nsw i64 %1345, 1
  %1361 = icmp eq i64 %1360, %445
  br i1 %1361, label %1362, label %1344, !llvm.loop !627

1362:                                             ; preds = %1333, %1358, %1337
  %1363 = phi i32 [ %1287, %1337 ], [ %1359, %1358 ], [ %1334, %1333 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #23
  br label %1364

1364:                                             ; preds = %1251, %1261, %1362
  %1365 = phi i32 [ %1363, %1362 ], [ %1253, %1261 ], [ %1253, %1251 ]
  %1366 = add nuw nsw i64 %1252, 1
  %1367 = icmp eq i64 %1366, %445
  br i1 %1367, label %1368, label %1251, !prof !623, !llvm.loop !628

1368:                                             ; preds = %1364, %477
  %1369 = phi i32 [ %1247, %477 ], [ %1365, %1364 ]
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1371, label %1379, !prof !629

1371:                                             ; preds = %464, %1368
  %1372 = phi i32 [ %1082, %1368 ], [ 0, %464 ]
  %1373 = trunc i64 %455 to i32
  br i1 %438, label %1374, label %1377, !prof !630

1374:                                             ; preds = %1371
  %1375 = load ptr, ptr %443, align 8, !tbaa !200
  store ptr %1375, ptr %442, align 8, !tbaa !200
  %1376 = load ptr, ptr %440, align 8, !tbaa !200
  store ptr %1376, ptr %444, align 8, !tbaa !200
  br label %1377

1377:                                             ; preds = %1374, %1371
  br i1 %110, label %1378, label %1534, !prof !631

1378:                                             ; preds = %1377
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %445, i1 false), !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %445, i1 false), !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %446, i1 false), !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %26, ptr nonnull align 16 %17, i64 %445, i1 false), !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr nonnull align 16 %19, i64 %446, i1 false), !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %27, ptr nonnull align 16 %18, i64 %445, i1 false), !tbaa !199
  br label %1504

1379:                                             ; preds = %1368
  %1380 = mul nsw i32 %1369, 6
  %1381 = add nsw i32 %1380, %1248
  %1382 = icmp ne i32 %1246, 0
  %1383 = icmp slt i32 %458, %1381
  %1384 = select i1 %1382, i1 true, i1 %1383
  br i1 %1384, label %1417, label %1385, !prof !632

1385:                                             ; preds = %1379
  br i1 %110, label %1386, label %1407, !prof !633

1386:                                             ; preds = %1385, %1402
  %1387 = phi i64 [ %1405, %1402 ], [ 0, %1385 ]
  %1388 = phi i32 [ %1404, %1402 ], [ 0, %1385 ]
  %1389 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1387
  %1390 = load i32, ptr %1389, align 4, !tbaa !204
  %1391 = zext i32 %1390 to i64
  %1392 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1391
  %1393 = load i32, ptr %1392, align 4, !tbaa !204
  switch i32 %1393, label %1394 [
    i32 1, label %1402
    i32 0, label %1397
  ], !prof !634

1394:                                             ; preds = %1386
  %1395 = add i32 %1390, -1
  %1396 = icmp ult i32 %1395, 17
  br i1 %1396, label %1398, label %1402

1397:                                             ; preds = %1386
  br label %1402

1398:                                             ; preds = %1394
  %1399 = zext nneg i32 %1395 to i64
  %1400 = getelementptr inbounds [17 x i32], ptr @switch.table.find_reloads, i64 0, i64 %1399
  %1401 = load i32, ptr %1400, align 4
  br label %1402

1402:                                             ; preds = %1394, %1398, %1386, %1397
  %1403 = phi i32 [ %1393, %1386 ], [ 0, %1397 ], [ %1401, %1398 ], [ 0, %1394 ]
  %1404 = add nuw nsw i32 %1403, %1388
  %1405 = add nuw nsw i64 %1387, 1
  %1406 = icmp eq i64 %1405, %445
  br i1 %1406, label %1407, label %1386, !prof !635, !llvm.loop !636

1407:                                             ; preds = %1402, %1385
  %1408 = phi i32 [ 0, %1385 ], [ %1404, %1402 ]
  %1409 = icmp sgt i32 %458, %1381
  br i1 %1409, label %1414, label %1410, !prof !637

1410:                                             ; preds = %1407
  %1411 = icmp eq i32 %458, %1381
  %1412 = icmp slt i32 %1408, %459
  %1413 = select i1 %1411, i1 %1412, i1 false
  br i1 %1413, label %1414, label %1417, !prof !638

1414:                                             ; preds = %1407, %1410
  %1415 = trunc i64 %455 to i32
  br i1 %110, label %1416, label %1417, !prof !639

1416:                                             ; preds = %1414
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %446, i1 false), !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %445, i1 false), !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %445, i1 false), !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %26, ptr nonnull align 16 %17, i64 %445, i1 false), !tbaa !199
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr nonnull align 16 %19, i64 %446, i1 false), !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %27, ptr nonnull align 16 %18, i64 %445, i1 false), !tbaa !199
  br label %1417

1417:                                             ; preds = %470, %1416, %1414, %465, %1410, %1379
  %1418 = phi i32 [ %460, %1379 ], [ %460, %1410 ], [ %460, %465 ], [ %1082, %1414 ], [ %1082, %1416 ], [ %460, %470 ]
  %1419 = phi i32 [ %459, %1379 ], [ %459, %1410 ], [ %459, %465 ], [ %1408, %1414 ], [ %1408, %1416 ], [ %459, %470 ]
  %1420 = phi i32 [ %458, %1379 ], [ %458, %1410 ], [ %458, %465 ], [ %1381, %1414 ], [ %1381, %1416 ], [ %458, %470 ]
  %1421 = phi i32 [ %457, %1379 ], [ %457, %1410 ], [ %457, %465 ], [ %453, %1414 ], [ %453, %1416 ], [ %457, %470 ]
  %1422 = phi i32 [ %456, %1379 ], [ %456, %1410 ], [ %456, %465 ], [ %1415, %1414 ], [ %1415, %1416 ], [ %456, %470 ]
  %1423 = add nuw nsw i64 %455, 1
  %1424 = icmp eq i64 %1423, %98
  br i1 %1424, label %1425, label %454, !prof !640, !llvm.loop !641

1425:                                             ; preds = %1417, %447
  %1426 = phi i32 [ %448, %447 ], [ %1418, %1417 ]
  %1427 = phi i32 [ %449, %447 ], [ %1419, %1417 ]
  %1428 = phi i32 [ %450, %447 ], [ %1420, %1417 ]
  %1429 = phi i32 [ %451, %447 ], [ %1421, %1417 ]
  %1430 = phi i32 [ %452, %447 ], [ %1422, %1417 ]
  br i1 %438, label %1431, label %1495, !prof !642

1431:                                             ; preds = %1425
  %1432 = icmp eq i32 %453, 0
  %1433 = xor i32 %453, 1
  br i1 %1432, label %1434, label %1471, !prof !573

1434:                                             ; preds = %1431
  %1435 = load ptr, ptr %440, align 8, !tbaa !200
  store ptr %1435, ptr %442, align 8, !tbaa !200
  %1436 = load ptr, ptr %443, align 8, !tbaa !200
  store ptr %1436, ptr %444, align 8, !tbaa !200
  %1437 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !643
  %1438 = icmp sgt i8 %1437, 0
  br i1 %1438, label %1439, label %1458, !prof !644

1439:                                             ; preds = %1434
  %1440 = zext nneg i8 %1437 to i64
  br label %1441

1441:                                             ; preds = %1439, %1455
  %1442 = phi i64 [ 0, %1439 ], [ %1456, %1455 ]
  %1443 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1442
  %1444 = load i8, ptr %1443, align 1, !tbaa !199
  %1445 = sext i8 %1444 to i32
  %1446 = icmp eq i32 %435, %1445
  %1447 = icmp eq i32 %437, %1445
  %1448 = or i1 %1446, %1447
  br i1 %1448, label %1449, label %1455, !prof !645

1449:                                             ; preds = %1441
  %1450 = sext i8 %1444 to i64
  %1451 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1450
  %1452 = load ptr, ptr %1451, align 8, !tbaa !200
  %1453 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1442
  %1454 = load ptr, ptr %1453, align 8, !tbaa !200
  store ptr %1452, ptr %1454, align 8, !tbaa !200
  br label %1455

1455:                                             ; preds = %1441, %1449
  %1456 = add nuw nsw i64 %1442, 1
  %1457 = icmp eq i64 %1456, %1440
  br i1 %1457, label %1458, label %1441, !prof !646, !llvm.loop !647

1458:                                             ; preds = %1455, %1434
  %1459 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %441
  %1460 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %439
  %1461 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %441
  %1462 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %439
  %1463 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %441
  %1464 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %439
  %1465 = load i32, ptr %1459, align 4, !tbaa !204
  %1466 = load i32, ptr %1460, align 4, !tbaa !204
  store i32 %1466, ptr %1459, align 4, !tbaa !204
  store i32 %1465, ptr %1460, align 4, !tbaa !204
  %1467 = load i8, ptr %1461, align 1, !tbaa !199
  %1468 = load i8, ptr %1462, align 1, !tbaa !199
  store i8 %1468, ptr %1461, align 1, !tbaa !199
  store i8 %1467, ptr %1462, align 1, !tbaa !199
  %1469 = load i32, ptr %1463, align 4, !tbaa !204
  %1470 = load i32, ptr %1464, align 4, !tbaa !204
  store i32 %1470, ptr %1463, align 4, !tbaa !204
  store i32 %1469, ptr %1464, align 4, !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %109, i1 false)
  br label %447

1471:                                             ; preds = %1431
  %1472 = load ptr, ptr %443, align 8, !tbaa !200
  store ptr %1472, ptr %442, align 8, !tbaa !200
  %1473 = load ptr, ptr %440, align 8, !tbaa !200
  store ptr %1473, ptr %444, align 8, !tbaa !200
  %1474 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !643
  %1475 = icmp sgt i8 %1474, 0
  br i1 %1475, label %1476, label %1495

1476:                                             ; preds = %1471
  %1477 = zext nneg i8 %1474 to i64
  br label %1478

1478:                                             ; preds = %1476, %1492
  %1479 = phi i64 [ 0, %1476 ], [ %1493, %1492 ]
  %1480 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1479
  %1481 = load i8, ptr %1480, align 1, !tbaa !199
  %1482 = sext i8 %1481 to i32
  %1483 = icmp eq i32 %435, %1482
  %1484 = icmp eq i32 %437, %1482
  %1485 = or i1 %1483, %1484
  br i1 %1485, label %1486, label %1492

1486:                                             ; preds = %1478
  %1487 = sext i8 %1481 to i64
  %1488 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1487
  %1489 = load ptr, ptr %1488, align 8, !tbaa !200
  %1490 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1479
  %1491 = load ptr, ptr %1490, align 8, !tbaa !200
  store ptr %1489, ptr %1491, align 8, !tbaa !200
  br label %1492

1492:                                             ; preds = %1478, %1486
  %1493 = add nuw nsw i64 %1479, 1
  %1494 = icmp eq i64 %1493, %1477
  br i1 %1494, label %1495, label %1478, !llvm.loop !648

1495:                                             ; preds = %1425, %1492, %1471
  %1496 = icmp eq i32 %1428, 660
  br i1 %1496, label %1497, label %1503, !prof !649

1497:                                             ; preds = %1495
  %1498 = icmp sgt i32 %104, -1
  br i1 %1498, label %1499, label %1500

1499:                                             ; preds = %1497
  call void @_fatal_insn(ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 3821, ptr noundef nonnull @.str.1) #24
  br label %1500

1500:                                             ; preds = %1499, %1497
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %1501 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  %1502 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %1501) #24
  store ptr %1502, ptr %37, align 8, !tbaa !199
  store i32 0, ptr @n_reloads, align 4, !tbaa !204
  br label %2712

1503:                                             ; preds = %1495
  br i1 %110, label %1504, label %1534, !prof !650

1504:                                             ; preds = %1378, %1503
  %1505 = phi i32 [ %1373, %1378 ], [ %1430, %1503 ]
  %1506 = phi i32 [ %453, %1378 ], [ %1429, %1503 ]
  %1507 = phi i32 [ %1372, %1378 ], [ %1426, %1503 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %23, i8 -1, i64 %446, i1 false), !tbaa !204
  br label %1509

1508:                                             ; preds = %1522
  br i1 %110, label %1525, label %1534, !prof !321

1509:                                             ; preds = %1504, %1522
  %1510 = phi i64 [ 0, %1504 ], [ %1523, %1522 ]
  %1511 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1510
  %1512 = load i8, ptr %1511, align 1, !tbaa !199
  %1513 = icmp eq i8 %1512, 0
  br i1 %1513, label %1514, label %1522, !prof !651

1514:                                             ; preds = %1509
  %1515 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1510
  %1516 = load i32, ptr %1515, align 4, !tbaa !204
  %1517 = icmp sgt i32 %1516, -1
  br i1 %1517, label %1518, label %1522, !prof !652

1518:                                             ; preds = %1514
  %1519 = zext nneg i32 %1516 to i64
  %1520 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1519
  %1521 = trunc i64 %1510 to i32
  store i32 %1521, ptr %1520, align 4, !tbaa !204
  br label %1522

1522:                                             ; preds = %1509, %1514, %1518
  %1523 = add nuw nsw i64 %1510, 1
  %1524 = icmp eq i64 %1523, %445
  br i1 %1524, label %1508, label %1509, !prof !536, !llvm.loop !653

1525:                                             ; preds = %1508, %1525
  %1526 = phi i64 [ %1532, %1525 ], [ 0, %1508 ]
  %1527 = getelementptr inbounds [30 x i8], ptr %24, i64 0, i64 %1526
  %1528 = load i8, ptr %1527, align 1, !tbaa !199
  %1529 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1526
  %1530 = load i8, ptr %1529, align 1, !tbaa !199
  %1531 = or i8 %1530, %1528
  store i8 %1531, ptr %1529, align 1, !tbaa !199
  %1532 = add nuw nsw i64 %1526, 1
  %1533 = icmp eq i64 %1532, %445
  br i1 %1533, label %1534, label %1525, !prof !536, !llvm.loop !654

1534:                                             ; preds = %1525, %1503, %1377, %1508
  %1535 = phi i32 [ %1505, %1508 ], [ %1430, %1503 ], [ %1373, %1377 ], [ %1505, %1525 ]
  %1536 = phi i32 [ %1506, %1508 ], [ %1429, %1503 ], [ %453, %1377 ], [ %1506, %1525 ]
  %1537 = phi i32 [ %1507, %1508 ], [ %1426, %1503 ], [ %1372, %1377 ], [ %1507, %1525 ]
  %1538 = icmp eq i32 %1536, 0
  br i1 %1538, label %1572, label %1539, !prof !655

1539:                                             ; preds = %1534
  %1540 = sext i32 %435 to i64
  %1541 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1540
  %1542 = load ptr, ptr %1541, align 8, !tbaa !200
  %1543 = sext i32 %437 to i64
  %1544 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1543
  %1545 = load ptr, ptr %1544, align 8, !tbaa !200
  store ptr %1545, ptr %1541, align 8, !tbaa !200
  store ptr %1542, ptr %1544, align 8, !tbaa !200
  %1546 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1540
  %1547 = load ptr, ptr %1546, align 8, !tbaa !200
  %1548 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1543
  %1549 = load ptr, ptr %1548, align 8, !tbaa !200
  store ptr %1549, ptr %1546, align 8, !tbaa !200
  store ptr %1547, ptr %1548, align 8, !tbaa !200
  %1550 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1540
  %1551 = load ptr, ptr %1550, align 8, !tbaa !200
  %1552 = load ptr, ptr %1551, align 8, !tbaa !200
  %1553 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1543
  %1554 = load ptr, ptr %1553, align 8, !tbaa !200
  %1555 = load ptr, ptr %1554, align 8, !tbaa !200
  store ptr %1555, ptr %1551, align 8, !tbaa !200
  %1556 = load ptr, ptr %1553, align 8, !tbaa !200
  store ptr %1552, ptr %1556, align 8, !tbaa !200
  %1557 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %1558 = icmp sgt i32 %1557, 0
  br i1 %1558, label %1559, label %1572, !prof !656

1559:                                             ; preds = %1539, %1568
  %1560 = phi i64 [ %1570, %1568 ], [ 0, %1539 ]
  %1561 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1560, i32 12
  %1562 = load i32, ptr %1561, align 8, !tbaa !265
  %1563 = icmp eq i32 %1562, %435
  br i1 %1563, label %1566, label %1564

1564:                                             ; preds = %1559
  %1565 = icmp eq i32 %1562, %437
  br i1 %1565, label %1566, label %1568

1566:                                             ; preds = %1564, %1559
  %1567 = phi i32 [ %437, %1559 ], [ %435, %1564 ]
  store i32 %1567, ptr %1561, align 8, !tbaa !265
  br label %1568

1568:                                             ; preds = %1566, %1564
  %1569 = zext nneg i32 %1557 to i64
  %1570 = add nuw nsw i64 %1560, 1
  %1571 = icmp eq i64 %1570, %1569
  br i1 %1571, label %1572, label %1559, !prof !362, !llvm.loop !657

1572:                                             ; preds = %1568, %1539, %1534
  br i1 %110, label %1574, label %1678, !prof !524

1573:                                             ; preds = %1590
  br i1 %110, label %1593, label %1678, !prof !321

1574:                                             ; preds = %1572, %1590
  %1575 = phi i64 [ %1591, %1590 ], [ 0, %1572 ]
  %1576 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1575
  store i32 -1, ptr %1576, align 4, !tbaa !204
  %1577 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1575
  %1578 = load i8, ptr %1577, align 1, !tbaa !199
  %1579 = icmp eq i8 %1578, 0
  br i1 %1579, label %1590, label %1580, !prof !658

1580:                                             ; preds = %1574
  %1581 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1575
  %1582 = load i32, ptr %1581, align 4, !tbaa !204
  %1583 = icmp eq i32 %1582, 9
  br i1 %1583, label %1590, label %1584

1584:                                             ; preds = %1580
  %1585 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1575
  %1586 = load ptr, ptr %1585, align 8, !tbaa !200
  %1587 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %1586) #24
  %1588 = icmp eq ptr %1587, null
  %1589 = select i1 %1588, i32 9, i32 2
  store i32 %1589, ptr %1581, align 4, !tbaa !204
  br label %1590

1590:                                             ; preds = %1574, %1580, %1584
  %1591 = add nuw nsw i64 %1575, 1
  %1592 = icmp eq i64 %1591, %445
  br i1 %1592, label %1573, label %1574, !prof !536, !llvm.loop !659

1593:                                             ; preds = %1573, %1675
  %1594 = phi i64 [ %1676, %1675 ], [ 0, %1573 ]
  %1595 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1594
  %1596 = load i8, ptr %1595, align 1, !tbaa !199
  %1597 = icmp eq i8 %1596, 0
  br i1 %1597, label %1598, label %1675, !prof !660

1598:                                             ; preds = %1593
  %1599 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1594
  %1600 = load ptr, ptr %1599, align 8, !tbaa !200
  %1601 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1594
  %1602 = load i32, ptr %1601, align 4, !tbaa !204
  %1603 = load i32, ptr %1600, align 8
  %1604 = and i32 %1603, 65535
  %1605 = icmp eq i32 %1604, 39
  br i1 %1605, label %1606, label %1612, !prof !649

1606:                                             ; preds = %1598
  %1607 = getelementptr inbounds %struct.rtx_def, ptr %1600, i64 0, i32 1
  %1608 = load ptr, ptr %1607, align 8, !tbaa !199
  %1609 = load i32, ptr %1608, align 8
  %1610 = lshr i32 %1609, 16
  %1611 = and i32 %1610, 255
  br label %1612

1612:                                             ; preds = %1606, %1598
  %1613 = phi i32 [ %1609, %1606 ], [ %1603, %1598 ]
  %1614 = phi ptr [ %1608, %1606 ], [ %1600, %1598 ]
  %1615 = phi ptr [ %1600, %1606 ], [ null, %1598 ]
  %1616 = phi i32 [ %1611, %1606 ], [ %1602, %1598 ]
  %1617 = and i32 %1613, 65535
  %1618 = icmp eq i32 %1617, 49
  br i1 %1618, label %1619, label %1624, !prof !649

1619:                                             ; preds = %1612
  %1620 = getelementptr inbounds %struct.rtx_def, ptr %1614, i64 0, i32 1, i32 0, i32 0, i64 1
  %1621 = load ptr, ptr %1620, align 8, !tbaa !199
  %1622 = load i32, ptr %1621, align 8
  %1623 = and i32 %1622, 65535
  br label %1624

1624:                                             ; preds = %1619, %1612
  %1625 = phi i32 [ %1623, %1619 ], [ %1617, %1612 ]
  %1626 = phi ptr [ %1621, %1619 ], [ %1614, %1612 ]
  %1627 = phi ptr [ %1614, %1619 ], [ null, %1612 ]
  %1628 = zext nneg i32 %1625 to i64
  %1629 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1628
  %1630 = load i32, ptr %1629, align 4, !tbaa !204
  %1631 = icmp ne i32 %1630, 9
  %1632 = icmp eq i32 %1625, 121
  %1633 = or i1 %1631, %1632
  br i1 %1633, label %1675, label %1634, !prof !661

1634:                                             ; preds = %1624
  %1635 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !583
  %1636 = call zeroext i8 %1635(ptr noundef nonnull %1626) #24
  %1637 = icmp eq i8 %1636, 0
  br i1 %1637, label %1638, label %1675

1638:                                             ; preds = %1634
  %1639 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1594
  %1640 = load i32, ptr %1639, align 4, !tbaa !204
  %1641 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %1626, i32 noundef %1640) #24
  %1642 = icmp eq i32 %1641, 0
  %1643 = icmp ne i32 %1616, 0
  %1644 = select i1 %1642, i1 %1643, i1 false
  br i1 %1644, label %1645, label %1675

1645:                                             ; preds = %1638
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #23
  %1646 = call ptr @force_const_mem(i32 noundef %1616, ptr noundef nonnull %1626) #24
  %1647 = icmp eq ptr %1627, null
  br i1 %1647, label %1652, label %1648

1648:                                             ; preds = %1645
  %1649 = getelementptr inbounds %struct.rtx_def, ptr %1627, i64 0, i32 1
  %1650 = load ptr, ptr %1649, align 8, !tbaa !199
  %1651 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1616, ptr noundef %1650, ptr noundef %1646) #24
  br label %1652

1652:                                             ; preds = %1648, %1645
  %1653 = phi ptr [ %1651, %1648 ], [ %1646, %1645 ]
  %1654 = icmp eq ptr %1615, null
  br i1 %1654, label %1660, label %1655

1655:                                             ; preds = %1652
  %1656 = load i32, ptr %1601, align 4, !tbaa !204
  %1657 = getelementptr inbounds %struct.rtx_def, ptr %1615, i64 0, i32 1, i32 0, i32 0, i64 1
  %1658 = load i32, ptr %1657, align 8, !tbaa !199
  %1659 = call ptr @gen_rtx_SUBREG(i32 noundef %1656, ptr noundef %1653, i32 noundef %1658) #24
  br label %1660

1660:                                             ; preds = %1655, %1652
  %1661 = phi ptr [ %1659, %1655 ], [ %1653, %1652 ]
  store i32 0, ptr %34, align 4, !tbaa !204
  %1662 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %1594
  %1663 = load i32, ptr %1662, align 4, !tbaa !204
  %1664 = trunc i64 %1594 to i32
  %1665 = call fastcc ptr @find_reloads_toplev(ptr noundef %1661, i32 noundef %1664, i32 noundef %1663, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %34) #25
  store ptr %1665, ptr %1599, align 8, !tbaa !200
  %1666 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1594
  store ptr %1665, ptr %1666, align 8, !tbaa !200
  %1667 = and i1 %1654, %1647
  br i1 %1667, label %1668, label %1674

1668:                                             ; preds = %1660
  %1669 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1594
  %1670 = load ptr, ptr %1669, align 8, !tbaa !200
  %1671 = call fastcc zeroext i8 @alternative_allows_const_pool_ref(ptr noundef %1670, i32 noundef %1535) #25
  %1672 = icmp eq i8 %1671, 0
  br i1 %1672, label %1674, label %1673

1673:                                             ; preds = %1668
  store i8 1, ptr %1595, align 1, !tbaa !199
  br label %1674

1674:                                             ; preds = %1673, %1668, %1660
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #23
  br label %1675

1675:                                             ; preds = %1624, %1634, %1674, %1638, %1593
  %1676 = add nuw nsw i64 %1594, 1
  %1677 = icmp eq i64 %1676, %445
  br i1 %1677, label %1678, label %1593, !prof !536, !llvm.loop !662

1678:                                             ; preds = %1675, %1572, %1573
  %1679 = icmp eq i32 %1537, 0
  br i1 %1679, label %1699, label %1680, !prof !663

1680:                                             ; preds = %1678
  br i1 %110, label %1681, label %2102

1681:                                             ; preds = %1680
  %1682 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !204
  br label %1683

1683:                                             ; preds = %1681, %1695
  %1684 = phi i64 [ 0, %1681 ], [ %1697, %1695 ]
  %1685 = phi i32 [ %1682, %1681 ], [ %1696, %1695 ]
  %1686 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1684
  %1687 = load i8, ptr %1686, align 1, !tbaa !199
  %1688 = icmp eq i8 %1687, 0
  br i1 %1688, label %1695, label %1689

1689:                                             ; preds = %1683
  %1690 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1684
  %1691 = load ptr, ptr %1690, align 8, !tbaa !200
  %1692 = add nsw i32 %1685, 1
  store i32 %1692, ptr @n_earlyclobbers, align 4, !tbaa !204
  %1693 = sext i32 %1685 to i64
  %1694 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %1693
  store ptr %1691, ptr %1694, align 8, !tbaa !200
  br label %1695

1695:                                             ; preds = %1683, %1689
  %1696 = phi i32 [ %1685, %1683 ], [ %1692, %1689 ]
  %1697 = add nuw nsw i64 %1684, 1
  %1698 = icmp eq i64 %1697, %445
  br i1 %1698, label %1699, label %1683, !llvm.loop !664

1699:                                             ; preds = %1695, %1678
  br i1 %110, label %1700, label %2102, !prof !665

1700:                                             ; preds = %1699
  %1701 = icmp eq i32 %1, 0
  br label %1705

1702:                                             ; preds = %2064
  br i1 %110, label %1703, label %2102, !prof !321

1703:                                             ; preds = %1702
  %1704 = icmp eq i32 %1, 0
  br label %2067

1705:                                             ; preds = %1700, %2064
  %1706 = phi i64 [ 0, %1700 ], [ %2065, %2064 ]
  %1707 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1706
  %1708 = load i8, ptr %1707, align 1, !tbaa !199
  %1709 = icmp eq i8 %1708, 0
  br i1 %1709, label %1710, label %1893, !prof !660

1710:                                             ; preds = %1705
  %1711 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1706
  %1712 = load i32, ptr %1711, align 4, !tbaa !204
  %1713 = icmp sgt i32 %1712, -1
  br i1 %1713, label %2064, label %1714, !prof !649

1714:                                             ; preds = %1710
  %1715 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1706
  %1716 = load i32, ptr %1715, align 4, !tbaa !204
  %1717 = icmp eq i32 %1716, -1
  br i1 %1717, label %1718, label %1835, !prof !272

1718:                                             ; preds = %1714
  %1719 = getelementptr inbounds [30 x i8], ptr %26, i64 0, i64 %1706
  %1720 = load i8, ptr %1719, align 1, !tbaa !199
  %1721 = icmp eq i8 %1720, 0
  br i1 %1721, label %1790, label %1722, !prof !272

1722:                                             ; preds = %1718
  %1723 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1706
  %1724 = load ptr, ptr %1723, align 8, !tbaa !200
  %1725 = load i32, ptr %1724, align 8
  %1726 = and i32 %1725, 65535
  %1727 = icmp eq i32 %1726, 43
  br i1 %1727, label %1728, label %1790

1728:                                             ; preds = %1722
  %1729 = getelementptr inbounds %struct.rtx_def, ptr %1724, i64 0, i32 1
  %1730 = load ptr, ptr %1729, align 8, !tbaa !199
  %1731 = load i32, ptr %1730, align 8
  %1732 = lshr i32 %1731, 16
  %1733 = and i32 %1732, 255
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %1735, label %1749

1735:                                             ; preds = %1728
  %1736 = getelementptr inbounds %struct.rtx_def, ptr %1724, i64 0, i32 1, i32 0, i32 0, i64 1
  %1737 = load ptr, ptr %1736, align 8, !tbaa !199
  %1738 = icmp eq ptr %1737, null
  br i1 %1738, label %1742, label %1739

1739:                                             ; preds = %1735
  %1740 = getelementptr inbounds %struct.mem_attrs, ptr %1737, i64 0, i32 5
  %1741 = load i8, ptr %1740, align 8, !tbaa !201
  br label %1742

1742:                                             ; preds = %1735, %1739
  %1743 = phi i8 [ %1741, %1739 ], [ 0, %1735 ]
  %1744 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !222
  %1745 = call i32 %1744(i8 noundef zeroext %1743) #24
  %1746 = load ptr, ptr %1723, align 8, !tbaa !200
  %1747 = getelementptr inbounds %struct.rtx_def, ptr %1746, i64 0, i32 1
  %1748 = load ptr, ptr %1747, align 8, !tbaa !199
  br label %1749

1749:                                             ; preds = %1742, %1728
  %1750 = phi ptr [ %1748, %1742 ], [ %1730, %1728 ]
  %1751 = phi ptr [ %1746, %1742 ], [ %1724, %1728 ]
  %1752 = phi i32 [ %1745, %1742 ], [ %1733, %1728 ]
  %1753 = getelementptr inbounds %struct.rtx_def, ptr %1751, i64 0, i32 1
  %1754 = trunc i64 %1706 to i32
  %1755 = call i32 @push_reload(ptr noundef %1750, ptr noundef null, ptr noundef nonnull %1753, ptr noundef null, i32 noundef 13, i32 noundef %1752, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1754, i32 noundef 0) #25
  %1756 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1706
  store i32 %1755, ptr %1756, align 4, !tbaa !204
  %1757 = load ptr, ptr %1723, align 8, !tbaa !200
  %1758 = load i32, ptr %1757, align 8
  %1759 = lshr i32 %1758, 16
  %1760 = and i32 %1759, 255
  %1761 = zext nneg i32 %1760 to i64
  %1762 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1761
  %1763 = load i8, ptr %1762, align 1, !tbaa !199
  %1764 = zext i8 %1763 to i32
  %1765 = sext i32 %1755 to i64
  %1766 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1765, i32 7
  store i32 %1764, ptr %1766, align 4, !tbaa !261
  %1767 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1706
  %1768 = load i32, ptr %1767, align 4, !tbaa !204
  %1769 = icmp eq i32 %1768, 2
  br i1 %1769, label %1770, label %2064

1770:                                             ; preds = %1749
  %1771 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %1772 = icmp sgt i32 %1771, 0
  br i1 %1772, label %1773, label %2064

1773:                                             ; preds = %1770
  %1774 = zext nneg i32 %1771 to i64
  br label %1775

1775:                                             ; preds = %1773, %1787
  %1776 = phi i64 [ 0, %1773 ], [ %1788, %1787 ]
  %1777 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1776, i32 12
  %1778 = load i32, ptr %1777, align 8, !tbaa !265
  %1779 = zext i32 %1778 to i64
  %1780 = icmp eq i64 %1706, %1779
  br i1 %1780, label %1781, label %1787

1781:                                             ; preds = %1775
  %1782 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1776, i32 17
  %1783 = load i32, ptr %1782, align 4, !tbaa !266
  switch i32 %1783, label %1787 [
    i32 5, label %1785
    i32 6, label %1784
  ]

1784:                                             ; preds = %1781
  br label %1785

1785:                                             ; preds = %1781, %1784
  %1786 = phi i32 [ 4, %1784 ], [ 3, %1781 ]
  store i32 %1786, ptr %1782, align 4, !tbaa !266
  br label %1787

1787:                                             ; preds = %1785, %1781, %1775
  %1788 = add nuw nsw i64 %1776, 1
  %1789 = icmp eq i64 %1788, %1774
  br i1 %1789, label %2064, label %1775, !llvm.loop !666

1790:                                             ; preds = %1722, %1718
  %1791 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1706
  %1792 = load i32, ptr %1791, align 4, !tbaa !204
  %1793 = icmp eq i32 %1792, 2
  br i1 %1793, label %1794, label %1801, !prof !272

1794:                                             ; preds = %1790
  %1795 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1796 = load ptr, ptr %1795, align 8, !tbaa !200
  %1797 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1706
  %1798 = load ptr, ptr %1797, align 8, !tbaa !200
  %1799 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %1800 = load i32, ptr %1799, align 4, !tbaa !204
  br label %1812

1801:                                             ; preds = %1790
  %1802 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1706
  %1803 = load ptr, ptr %1802, align 8, !tbaa !200
  %1804 = icmp eq i32 %1792, 0
  %1805 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1806 = load ptr, ptr %1805, align 8, !tbaa !200
  %1807 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %1808 = load i32, ptr %1807, align 4, !tbaa !204
  %1809 = select i1 %1804, ptr null, ptr %1803, !prof !321
  %1810 = select i1 %1804, ptr null, ptr %1806, !prof !321
  %1811 = select i1 %1804, i32 0, i32 %1808, !prof !321
  br label %1812

1812:                                             ; preds = %1801, %1794
  %1813 = phi i32 [ 0, %1794 ], [ %1808, %1801 ]
  %1814 = phi ptr [ null, %1794 ], [ %1806, %1801 ]
  %1815 = phi ptr [ null, %1794 ], [ %1803, %1801 ]
  %1816 = phi ptr [ %1798, %1794 ], [ %1809, %1801 ]
  %1817 = phi ptr [ %1796, %1794 ], [ %1810, %1801 ]
  %1818 = phi i32 [ %1800, %1794 ], [ %1811, %1801 ]
  %1819 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1706
  %1820 = load i32, ptr %1819, align 4, !tbaa !204
  br i1 %105, label %1828, label %1821, !prof !649

1821:                                             ; preds = %1812
  %1822 = zext nneg i32 %104 to i64
  %1823 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %1822, i32 3
  %1824 = load ptr, ptr %1823, align 8, !tbaa !196
  %1825 = getelementptr inbounds %struct.insn_operand_data, ptr %1824, i64 %1706, i32 3
  %1826 = load i8, ptr %1825, align 2, !tbaa !667
  %1827 = sext i8 %1826 to i32
  br label %1828

1828:                                             ; preds = %1812, %1821
  %1829 = phi i32 [ %1827, %1821 ], [ 0, %1812 ]
  %1830 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1706
  %1831 = load i32, ptr %1830, align 4, !tbaa !204
  %1832 = trunc i64 %1706 to i32
  %1833 = call i32 @push_reload(ptr noundef %1815, ptr noundef %1816, ptr noundef %1814, ptr noundef %1817, i32 noundef %1820, i32 noundef %1813, i32 noundef %1818, i32 noundef %1829, i32 noundef 0, i32 noundef %1832, i32 noundef %1831) #25
  %1834 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1706
  store i32 %1833, ptr %1834, align 4, !tbaa !204
  br label %2064

1835:                                             ; preds = %1714
  %1836 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1706
  %1837 = load i32, ptr %1836, align 4, !tbaa !204
  switch i32 %1837, label %1888 [
    i32 0, label %1838
    i32 2, label %1863
  ]

1838:                                             ; preds = %1835
  %1839 = sext i32 %1716 to i64
  %1840 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1839
  %1841 = load i32, ptr %1840, align 4, !tbaa !204
  %1842 = icmp eq i32 %1841, 2
  br i1 %1842, label %1843, label %1888

1843:                                             ; preds = %1838
  %1844 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1706
  %1845 = load ptr, ptr %1844, align 8, !tbaa !200
  %1846 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1839
  %1847 = load ptr, ptr %1846, align 8, !tbaa !200
  %1848 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1849 = load ptr, ptr %1848, align 8, !tbaa !200
  %1850 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1839
  %1851 = load ptr, ptr %1850, align 8, !tbaa !200
  %1852 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1706
  %1853 = load i32, ptr %1852, align 4, !tbaa !204
  %1854 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %1855 = load i32, ptr %1854, align 4, !tbaa !204
  %1856 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1839
  %1857 = load i32, ptr %1856, align 4, !tbaa !204
  %1858 = trunc i64 %1706 to i32
  %1859 = call i32 @push_reload(ptr noundef %1845, ptr noundef %1847, ptr noundef %1849, ptr noundef %1851, i32 noundef %1853, i32 noundef %1855, i32 noundef %1857, i32 noundef 0, i32 noundef 0, i32 noundef %1858, i32 noundef 9) #25
  %1860 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1706
  store i32 %1859, ptr %1860, align 4, !tbaa !204
  %1861 = load i32, ptr @output_reloadnum, align 4, !tbaa !204
  %1862 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1839
  store i32 %1861, ptr %1862, align 4, !tbaa !204
  br label %2064

1863:                                             ; preds = %1835
  %1864 = sext i32 %1716 to i64
  %1865 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1864
  %1866 = load i32, ptr %1865, align 4, !tbaa !204
  %1867 = icmp eq i32 %1866, 0
  br i1 %1867, label %1868, label %1888

1868:                                             ; preds = %1863
  %1869 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1864
  %1870 = load ptr, ptr %1869, align 8, !tbaa !200
  %1871 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1706
  %1872 = load ptr, ptr %1871, align 8, !tbaa !200
  %1873 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1864
  %1874 = load ptr, ptr %1873, align 8, !tbaa !200
  %1875 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1876 = load ptr, ptr %1875, align 8, !tbaa !200
  %1877 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1706
  %1878 = load i32, ptr %1877, align 4, !tbaa !204
  %1879 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1864
  %1880 = load i32, ptr %1879, align 4, !tbaa !204
  %1881 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %1882 = load i32, ptr %1881, align 4, !tbaa !204
  %1883 = trunc i64 %1706 to i32
  %1884 = call i32 @push_reload(ptr noundef %1870, ptr noundef %1872, ptr noundef %1874, ptr noundef %1876, i32 noundef %1878, i32 noundef %1880, i32 noundef %1882, i32 noundef 0, i32 noundef 0, i32 noundef %1883, i32 noundef 9) #25
  %1885 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1864
  store i32 %1884, ptr %1885, align 4, !tbaa !204
  %1886 = load i32, ptr @output_reloadnum, align 4, !tbaa !204
  %1887 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1706
  store i32 %1886, ptr %1887, align 4, !tbaa !204
  br label %2064

1888:                                             ; preds = %1835, %1838, %1863
  br i1 %105, label %1890, label %1889

1889:                                             ; preds = %1888
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4082, ptr noundef nonnull @.str.1) #24
  br label %1890

1890:                                             ; preds = %1888, %1889
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %1891 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !200
  %1892 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %1891) #24
  store ptr %1892, ptr %37, align 8, !tbaa !199
  store i32 0, ptr @n_reloads, align 4, !tbaa !204
  br label %2712

1893:                                             ; preds = %1705
  %1894 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1706
  %1895 = load i32, ptr %1894, align 4, !tbaa !204
  %1896 = icmp slt i32 %1895, 0
  %1897 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1706
  %1898 = load i32, ptr %1897, align 4, !tbaa !204
  br i1 %1896, label %1899, label %2014, !prof !668

1899:                                             ; preds = %1893
  %1900 = icmp slt i32 %1898, 0
  br i1 %1900, label %1901, label %2016, !prof !669

1901:                                             ; preds = %1899
  %1902 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %1706
  %1903 = load i32, ptr %1902, align 4, !tbaa !204
  %1904 = icmp ne i32 %1903, 1
  %1905 = load i32, ptr @optimize, align 4
  %1906 = icmp ne i32 %1905, 0
  %1907 = select i1 %1904, i1 %1906, i1 false
  br i1 %1907, label %1908, label %2064, !prof !670

1908:                                             ; preds = %1901
  %1909 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1706
  br label %1910

1910:                                             ; preds = %1915, %1908
  %1911 = phi ptr [ %1909, %1908 ], [ %1916, %1915 ]
  %1912 = load ptr, ptr %1911, align 8, !tbaa !199
  %1913 = load i32, ptr %1912, align 8
  %1914 = trunc i32 %1913 to i16
  switch i16 %1914, label %1979 [
    i16 39, label %1915
    i16 43, label %1920
    i16 37, label %1917
  ], !prof !671

1915:                                             ; preds = %1910
  %1916 = getelementptr inbounds %struct.rtx_def, ptr %1912, i64 0, i32 1
  br label %1910, !llvm.loop !672

1917:                                             ; preds = %1910
  %1918 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1912) #25
  %1919 = icmp ugt i32 %1918, 52
  br i1 %1919, label %1920, label %1979, !prof !673

1920:                                             ; preds = %1910, %1917
  %1921 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1706
  %1922 = load i32, ptr %1921, align 4, !tbaa !204
  %1923 = icmp eq i32 %1922, 0
  %1924 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1706
  %1925 = load i32, ptr %1924, align 4, !tbaa !204
  br i1 %1923, label %1926, label %1928, !prof !674

1926:                                             ; preds = %1920
  %1927 = icmp eq i32 %1925, 2
  br i1 %1927, label %1940, label %1979, !prof !675

1928:                                             ; preds = %1920
  %1929 = icmp eq i32 %1925, 0
  br i1 %1929, label %1930, label %1936, !prof !676

1930:                                             ; preds = %1928
  %1931 = load ptr, ptr %1909, align 8, !tbaa !200
  %1932 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1933 = load ptr, ptr %1932, align 8, !tbaa !200
  %1934 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %1935 = load i32, ptr %1934, align 4, !tbaa !204
  br label %1958

1936:                                             ; preds = %1928
  %1937 = load i32, ptr @this_insn_is_asm, align 4
  %1938 = icmp ne i32 %1937, 0
  %1939 = select i1 %54, i1 true, i1 %1938
  br i1 %1939, label %1979, label %1944, !prof !677

1940:                                             ; preds = %1926
  %1941 = load i32, ptr @this_insn_is_asm, align 4
  %1942 = icmp ne i32 %1941, 0
  %1943 = select i1 %54, i1 true, i1 %1942
  br i1 %1943, label %1979, label %1946, !prof !677

1944:                                             ; preds = %1936
  %1945 = icmp eq i32 %1925, 2
  br i1 %1945, label %1946, label %1952, !prof !321

1946:                                             ; preds = %1940, %1944
  %1947 = load ptr, ptr %1909, align 8, !tbaa !200
  %1948 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1949 = load ptr, ptr %1948, align 8, !tbaa !200
  %1950 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %1951 = load i32, ptr %1950, align 4, !tbaa !204
  br label %1958

1952:                                             ; preds = %1944
  %1953 = load ptr, ptr %1909, align 8, !tbaa !200
  %1954 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1955 = load ptr, ptr %1954, align 8, !tbaa !200
  %1956 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %1957 = load i32, ptr %1956, align 4, !tbaa !204
  br label %1958

1958:                                             ; preds = %1946, %1952, %1930
  %1959 = phi i32 [ %1935, %1930 ], [ 0, %1946 ], [ %1957, %1952 ]
  %1960 = phi ptr [ %1933, %1930 ], [ null, %1946 ], [ %1955, %1952 ]
  %1961 = phi ptr [ %1931, %1930 ], [ null, %1946 ], [ %1953, %1952 ]
  %1962 = phi ptr [ null, %1930 ], [ %1947, %1946 ], [ %1953, %1952 ]
  %1963 = phi ptr [ null, %1930 ], [ %1949, %1946 ], [ %1955, %1952 ]
  %1964 = phi i32 [ 0, %1930 ], [ %1951, %1946 ], [ %1957, %1952 ]
  br i1 %105, label %1972, label %1965, !prof !678

1965:                                             ; preds = %1958
  %1966 = zext nneg i32 %104 to i64
  %1967 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %1966, i32 3
  %1968 = load ptr, ptr %1967, align 8, !tbaa !196
  %1969 = getelementptr inbounds %struct.insn_operand_data, ptr %1968, i64 %1706, i32 3
  %1970 = load i8, ptr %1969, align 2, !tbaa !667
  %1971 = sext i8 %1970 to i32
  br label %1972

1972:                                             ; preds = %1958, %1965
  %1973 = phi i32 [ %1971, %1965 ], [ 0, %1958 ]
  %1974 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1706
  %1975 = load i32, ptr %1974, align 4, !tbaa !204
  %1976 = trunc i64 %1706 to i32
  %1977 = call i32 @push_reload(ptr noundef %1961, ptr noundef %1962, ptr noundef %1960, ptr noundef %1963, i32 noundef %1922, i32 noundef %1959, i32 noundef %1964, i32 noundef %1973, i32 noundef 1, i32 noundef %1976, i32 noundef %1975) #25
  %1978 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1706
  store i32 %1977, ptr %1978, align 4, !tbaa !204
  br label %2064

1979:                                             ; preds = %1910, %1940, %1936, %1926, %1917
  br i1 %1701, label %2064, label %1980, !prof !679

1980:                                             ; preds = %1979
  switch i16 %1914, label %2064 [
    i16 43, label %1990
    i16 37, label %1981
  ], !prof !680

1981:                                             ; preds = %1980
  %1982 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1912) #25
  %1983 = icmp ugt i32 %1982, 52
  br i1 %1983, label %1984, label %2064, !prof !681

1984:                                             ; preds = %1981
  %1985 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %1986 = zext i32 %1982 to i64
  %1987 = getelementptr inbounds i16, ptr %1985, i64 %1986
  %1988 = load i16, ptr %1987, align 2, !tbaa !230
  %1989 = icmp slt i16 %1988, 0
  br i1 %1989, label %1990, label %2064

1990:                                             ; preds = %1980, %1984
  %1991 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %1992 = load ptr, ptr %1991, align 8, !tbaa !200
  br label %1993

1993:                                             ; preds = %1998, %1990
  %1994 = phi ptr [ %1992, %1990 ], [ %1999, %1998 ]
  %1995 = load ptr, ptr %1994, align 8, !tbaa !199
  %1996 = load i32, ptr %1995, align 8
  %1997 = trunc i32 %1996 to i16
  switch i16 %1997, label %2064 [
    i16 39, label %1998
    i16 37, label %2000
  ]

1998:                                             ; preds = %1993
  %1999 = getelementptr inbounds %struct.rtx_def, ptr %1995, i64 0, i32 1
  br label %1993, !llvm.loop !682

2000:                                             ; preds = %1993
  %2001 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1706
  %2002 = load i32, ptr %2001, align 4, !tbaa !204
  %2003 = icmp eq i32 %2002, 2
  br i1 %2003, label %2011, label %2004

2004:                                             ; preds = %2000
  %2005 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %1995) #24
  %2006 = call ptr @emit_insn_before(ptr noundef %2005, ptr noundef nonnull %0) #24
  %2007 = load i32, ptr %2006, align 8
  %2008 = and i32 %2007, -16711681
  %2009 = or disjoint i32 %2008, 917504
  store i32 %2009, ptr %2006, align 8
  %2010 = icmp eq i32 %2002, 0
  br i1 %2010, label %2064, label %2011

2011:                                             ; preds = %2000, %2004
  %2012 = call ptr @gen_clobber(ptr noundef nonnull %1995) #24
  %2013 = call ptr @emit_insn_after(ptr noundef %2012, ptr noundef nonnull %0) #24
  br label %2064

2014:                                             ; preds = %1893
  %2015 = icmp sgt i32 %1898, -1
  br i1 %2015, label %2016, label %2064, !prof !683

2016:                                             ; preds = %1899, %2014
  %2017 = zext nneg i32 %1898 to i64
  %2018 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %2017
  %2019 = load i8, ptr %2018, align 1, !tbaa !199
  %2020 = icmp eq i8 %2019, 0
  br i1 %2020, label %2064, label %2021, !prof !684

2021:                                             ; preds = %2016
  %2022 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1706
  %2023 = load i32, ptr %2022, align 4, !tbaa !204
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2025, label %2064, !prof !685

2025:                                             ; preds = %2021
  %2026 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %2017
  %2027 = load i32, ptr %2026, align 4, !tbaa !204
  %2028 = icmp ne i32 %2027, 2
  %2029 = or i1 %54, %2028
  %2030 = load i32, ptr @optimize, align 4
  %2031 = icmp eq i32 %2030, 0
  %2032 = select i1 %2029, i1 true, i1 %2031
  br i1 %2032, label %2064, label %2033, !prof !686

2033:                                             ; preds = %2025
  %2034 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1706
  br label %2035

2035:                                             ; preds = %2040, %2033
  %2036 = phi ptr [ %2034, %2033 ], [ %2041, %2040 ]
  %2037 = load ptr, ptr %2036, align 8, !tbaa !199
  %2038 = load i32, ptr %2037, align 8
  %2039 = trunc i32 %2038 to i16
  switch i16 %2039, label %2064 [
    i16 39, label %2040
    i16 43, label %2045
    i16 37, label %2042
  ], !prof !687

2040:                                             ; preds = %2035
  %2041 = getelementptr inbounds %struct.rtx_def, ptr %2037, i64 0, i32 1
  br label %2035, !llvm.loop !688

2042:                                             ; preds = %2035
  %2043 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2037) #25
  %2044 = icmp ugt i32 %2043, 52
  br i1 %2044, label %2045, label %2064, !prof !684

2045:                                             ; preds = %2035, %2042
  %2046 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %2017
  %2047 = load i32, ptr %2046, align 4, !tbaa !204
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2064, label %2049

2049:                                             ; preds = %2045
  %2050 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %2017
  %2051 = load ptr, ptr %2050, align 8, !tbaa !200
  %2052 = load ptr, ptr %2034, align 8, !tbaa !200
  %2053 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2017
  %2054 = load ptr, ptr %2053, align 8, !tbaa !200
  %2055 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1706
  %2056 = load ptr, ptr %2055, align 8, !tbaa !200
  %2057 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %2017
  %2058 = load i32, ptr %2057, align 4, !tbaa !204
  %2059 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1706
  %2060 = load i32, ptr %2059, align 4, !tbaa !204
  %2061 = call i32 @push_reload(ptr noundef %2051, ptr noundef %2052, ptr noundef %2054, ptr noundef %2056, i32 noundef %2047, i32 noundef %2058, i32 noundef %2060, i32 noundef 0, i32 noundef 1, i32 noundef %1898, i32 noundef 9) #25
  %2062 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2017
  store i32 %2061, ptr %2062, align 4, !tbaa !204
  %2063 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1706
  store i32 %2061, ptr %2063, align 4, !tbaa !204
  br label %2064

2064:                                             ; preds = %2035, %1993, %1787, %1901, %1770, %2042, %2045, %2049, %1972, %2011, %2004, %1984, %1981, %1979, %1980, %1749, %1843, %1868, %1828, %1710, %2014, %2016, %2021, %2025
  %2065 = add nuw nsw i64 %1706, 1
  %2066 = icmp eq i64 %2065, %445
  br i1 %2066, label %1702, label %1705, !prof !536, !llvm.loop !689

2067:                                             ; preds = %1703, %2098
  %2068 = phi i64 [ 0, %1703 ], [ %2100, %2098 ]
  %2069 = phi i32 [ 0, %1703 ], [ %2099, %2098 ]
  %2070 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %2068
  %2071 = load ptr, ptr %2070, align 8, !tbaa !200
  %2072 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2068
  %2073 = load ptr, ptr %2072, align 8, !tbaa !200
  br i1 %1704, label %2093, label %2074, !prof !690

2074:                                             ; preds = %2067
  store ptr %2071, ptr %2073, align 8, !tbaa !200
  %2075 = load i32, ptr %2071, align 8
  %2076 = and i32 %2075, 65535
  %2077 = icmp eq i32 %2076, 44
  br i1 %2077, label %2078, label %2098, !prof !691

2078:                                             ; preds = %2074
  %2079 = getelementptr inbounds %struct.rtx_def, ptr %2071, i64 0, i32 1
  %2080 = load ptr, ptr %2079, align 8, !tbaa !199
  %2081 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2080) #24
  %2082 = icmp eq ptr %2081, null
  br i1 %2082, label %2083, label %2098

2083:                                             ; preds = %2078
  %2084 = load i32, ptr %0, align 8
  %2085 = and i32 %2084, 65535
  %2086 = icmp eq i32 %2085, 9
  br i1 %2086, label %2087, label %2091

2087:                                             ; preds = %2083
  %2088 = load ptr, ptr %2079, align 8, !tbaa !199
  %2089 = call zeroext i8 @label_is_jump_target_p(ptr noundef %2088, ptr noundef nonnull %0) #24
  %2090 = icmp eq i8 %2089, 0
  br i1 %2090, label %2091, label %2098

2091:                                             ; preds = %2087, %2083
  %2092 = load ptr, ptr %2079, align 8, !tbaa !199
  call void @add_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2092) #24
  br label %2098

2093:                                             ; preds = %2067
  %2094 = load ptr, ptr %2073, align 8, !tbaa !200
  %2095 = icmp ne ptr %2071, %2094
  %2096 = zext i1 %2095 to i32
  %2097 = or i32 %2069, %2096
  br label %2098

2098:                                             ; preds = %2074, %2078, %2087, %2091, %2093
  %2099 = phi i32 [ %2097, %2093 ], [ %2069, %2091 ], [ %2069, %2087 ], [ %2069, %2078 ], [ %2069, %2074 ]
  %2100 = add nuw nsw i64 %2068, 1
  %2101 = icmp eq i64 %2100, %445
  br i1 %2101, label %2102, label %2067, !prof !536, !llvm.loop !692

2102:                                             ; preds = %2098, %1680, %1699, %1702
  %2103 = phi i32 [ 0, %1702 ], [ 0, %1699 ], [ 0, %1680 ], [ %2099, %2098 ]
  %2104 = icmp sgt i32 %104, -1
  %2105 = icmp ne i32 %1, 0
  %2106 = and i1 %2105, %2104
  br i1 %2106, label %2107, label %2128, !prof !693

2107:                                             ; preds = %2102
  %2108 = zext nneg i32 %104 to i64
  %2109 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2108, i32 5
  %2110 = load i8, ptr %2109, align 1, !tbaa !694
  %2111 = icmp sgt i8 %2110, 0
  br i1 %2111, label %2112, label %2128, !prof !695

2112:                                             ; preds = %2107
  %2113 = zext nneg i8 %2110 to i64
  br label %2114

2114:                                             ; preds = %2112, %2114
  %2115 = phi i64 [ %2113, %2112 ], [ %2116, %2114 ]
  %2116 = add nsw i64 %2115, -1
  %2117 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %2116
  %2118 = load i8, ptr %2117, align 1, !tbaa !199
  %2119 = sext i8 %2118 to i64
  %2120 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2119
  %2121 = load ptr, ptr %2120, align 8, !tbaa !200
  %2122 = load ptr, ptr %2121, align 8, !tbaa !200
  %2123 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %2116
  %2124 = load ptr, ptr %2123, align 8, !tbaa !200
  store ptr %2122, ptr %2124, align 8, !tbaa !200
  %2125 = load ptr, ptr %2123, align 8, !tbaa !200
  %2126 = load ptr, ptr %2120, align 8, !tbaa !200
  call fastcc void @dup_replacements(ptr noundef %2125, ptr noundef %2126) #25
  %2127 = icmp ugt i64 %2115, 1
  br i1 %2127, label %2114, label %2128, !prof !322, !llvm.loop !696

2128:                                             ; preds = %2114, %2107, %2102
  %2129 = load ptr, ptr %37, align 8, !tbaa !199
  %2130 = load i32, ptr %2129, align 8
  %2131 = and i32 %2130, 65535
  %2132 = icmp eq i32 %2131, 24
  br i1 %2132, label %2133, label %2140, !prof !697

2133:                                             ; preds = %2128
  %2134 = getelementptr inbounds %struct.rtx_def, ptr %2129, i64 0, i32 1
  %2135 = load ptr, ptr %2134, align 8, !tbaa !199
  %2136 = load i32, ptr %2135, align 8
  %2137 = and i32 %2136, 65535
  %2138 = icmp eq i32 %2137, 30
  br i1 %2138, label %2139, label %2140

2139:                                             ; preds = %2133
  store i32 0, ptr @n_reloads, align 4, !tbaa !204
  br label %2140

2140:                                             ; preds = %2139, %2133, %2128
  br i1 %1679, label %2141, label %2142, !prof !663

2141:                                             ; preds = %2140
  call fastcc void @combine_reloads() #25
  br label %2142

2142:                                             ; preds = %2141, %2140
  %2143 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %2144 = icmp sgt i32 %2143, 0
  br i1 %2144, label %2156, label %2351, !prof !698

2145:                                             ; preds = %2237
  %2146 = sext i32 %2239 to i64
  br label %2147

2147:                                             ; preds = %2145, %2156
  %2148 = phi i64 [ %2146, %2145 ], [ %2161, %2156 ]
  %2149 = phi i32 [ %2239, %2145 ], [ %2157, %2156 ]
  %2150 = icmp slt i64 %2160, %2148
  %2151 = add nuw nsw i64 %2159, 1
  br i1 %2150, label %2156, label %2152, !prof !699, !llvm.loop !700

2152:                                             ; preds = %2147
  %2153 = icmp sgt i32 %2149, 0
  br i1 %2153, label %2154, label %2351, !prof !321

2154:                                             ; preds = %2152
  %2155 = zext nneg i32 %2149 to i64
  br label %2242

2156:                                             ; preds = %2142, %2147
  %2157 = phi i32 [ %2149, %2147 ], [ %2143, %2142 ]
  %2158 = phi i64 [ %2160, %2147 ], [ 0, %2142 ]
  %2159 = phi i64 [ %2151, %2147 ], [ 1, %2142 ]
  %2160 = add nuw nsw i64 %2158, 1
  %2161 = sext i32 %2157 to i64
  %2162 = icmp slt i64 %2160, %2161
  br i1 %2162, label %2163, label %2147, !prof !701

2163:                                             ; preds = %2156
  %2164 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2158, i32 17
  br label %2165

2165:                                             ; preds = %2163, %2237
  %2166 = phi i64 [ %2159, %2163 ], [ %2238, %2237 ]
  %2167 = load i32, ptr %2164, align 4, !tbaa !266
  %2168 = add i32 %2167, -3
  %2169 = icmp ult i32 %2168, 4
  br i1 %2169, label %2170, label %2237

2170:                                             ; preds = %2165
  %2171 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2166
  %2172 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2166, i32 17
  %2173 = load i32, ptr %2172, align 4, !tbaa !266
  %2174 = add i32 %2173, -3
  %2175 = icmp ult i32 %2174, 4
  br i1 %2175, label %2176, label %2237

2176:                                             ; preds = %2170
  %2177 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2158
  %2178 = load ptr, ptr %2177, align 8, !tbaa !254
  %2179 = load ptr, ptr %2171, align 8, !tbaa !254
  %2180 = call i32 @rtx_equal_p(ptr noundef %2178, ptr noundef %2179) #24
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2237, label %2182

2182:                                             ; preds = %2176
  %2183 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2158, i32 12
  %2184 = load i32, ptr %2183, align 8, !tbaa !265
  %2185 = sext i32 %2184 to i64
  %2186 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2185
  %2187 = load i32, ptr %2186, align 4, !tbaa !204
  %2188 = icmp slt i32 %2187, 0
  br i1 %2188, label %2195, label %2189

2189:                                             ; preds = %2182
  %2190 = zext nneg i32 %2187 to i64
  %2191 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2190, i32 18
  %2192 = load i8, ptr %2191, align 8
  %2193 = and i8 %2192, 1
  %2194 = icmp eq i8 %2193, 0
  br i1 %2194, label %2237, label %2195

2195:                                             ; preds = %2189, %2182
  %2196 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2166, i32 12
  %2197 = load i32, ptr %2196, align 8, !tbaa !265
  %2198 = sext i32 %2197 to i64
  %2199 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2198
  %2200 = load i32, ptr %2199, align 4, !tbaa !204
  %2201 = icmp slt i32 %2200, 0
  br i1 %2201, label %2208, label %2202

2202:                                             ; preds = %2195
  %2203 = zext nneg i32 %2200 to i64
  %2204 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2203, i32 18
  %2205 = load i8, ptr %2204, align 8
  %2206 = and i8 %2205, 1
  %2207 = icmp eq i8 %2206, 0
  br i1 %2207, label %2237, label %2208

2208:                                             ; preds = %2202, %2195
  %2209 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2185
  %2210 = load i32, ptr %2209, align 4, !tbaa !204
  %2211 = icmp eq i32 %2210, %2197
  br i1 %2211, label %2216, label %2212

2212:                                             ; preds = %2208
  %2213 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2198
  %2214 = load i32, ptr %2213, align 4, !tbaa !204
  %2215 = icmp eq i32 %2214, %2184
  br i1 %2215, label %2216, label %2237

2216:                                             ; preds = %2212, %2208
  %2217 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %2218 = icmp sgt i32 %2217, 0
  br i1 %2218, label %2219, label %2232

2219:                                             ; preds = %2216
  %2220 = trunc i64 %2158 to i32
  %2221 = zext nneg i32 %2217 to i64
  br label %2222

2222:                                             ; preds = %2219, %2229
  %2223 = phi i64 [ 0, %2219 ], [ %2230, %2229 ]
  %2224 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2223, i32 2
  %2225 = load i32, ptr %2224, align 8, !tbaa !275
  %2226 = zext i32 %2225 to i64
  %2227 = icmp eq i64 %2166, %2226
  br i1 %2227, label %2228, label %2229

2228:                                             ; preds = %2222
  store i32 %2220, ptr %2224, align 8, !tbaa !275
  br label %2229

2229:                                             ; preds = %2222, %2228
  %2230 = add nuw nsw i64 %2223, 1
  %2231 = icmp eq i64 %2230, %2221
  br i1 %2231, label %2232, label %2222, !llvm.loop !702

2232:                                             ; preds = %2229, %2216
  %2233 = load i32, ptr %2164, align 4, !tbaa !266
  %2234 = and i32 %2233, -3
  %2235 = icmp eq i32 %2234, 4
  %2236 = select i1 %2235, i32 8, i32 7
  store i32 %2236, ptr %2164, align 4, !tbaa !266
  store ptr null, ptr %2171, align 8, !tbaa !254
  br label %2237

2237:                                             ; preds = %2170, %2165, %2176, %2189, %2202, %2212, %2232
  %2238 = add nuw nsw i64 %2166, 1
  %2239 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %2240 = trunc i64 %2238 to i32
  %2241 = icmp sgt i32 %2239, %2240
  br i1 %2241, label %2165, label %2145, !prof !322, !llvm.loop !703

2242:                                             ; preds = %2154, %2348
  %2243 = phi i64 [ 0, %2154 ], [ %2349, %2348 ]
  %2244 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 18
  %2245 = load i8, ptr %2244, align 8
  %2246 = and i8 %2245, 4
  %2247 = icmp eq i8 %2246, 0
  %2248 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 17
  %2249 = load i32, ptr %2248, align 4, !tbaa !266
  br i1 %2247, label %2260, label %2250, !prof !249

2250:                                             ; preds = %2242
  %2251 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 12
  %2252 = load i32, ptr %2251, align 8, !tbaa !265
  %2253 = sext i32 %2252 to i64
  %2254 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %2253
  %2255 = load i32, ptr %2254, align 4, !tbaa !204
  %2256 = icmp eq i32 %2249, %2255
  br i1 %2256, label %2257, label %2260

2257:                                             ; preds = %2250
  %2258 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %2253
  %2259 = load i32, ptr %2258, align 4, !tbaa !204
  store i32 %2259, ptr %2248, align 4, !tbaa !266
  br label %2260

2260:                                             ; preds = %2242, %2257, %2250
  %2261 = phi i32 [ %2259, %2257 ], [ %2249, %2250 ], [ %2249, %2242 ]
  %2262 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 17
  %2263 = add i32 %2261, -3
  %2264 = icmp ult i32 %2263, 4
  br i1 %2264, label %2265, label %2321, !prof !704

2265:                                             ; preds = %2260
  %2266 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 12
  %2267 = load i32, ptr %2266, align 8, !tbaa !265
  %2268 = sext i32 %2267 to i64
  %2269 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2268
  %2270 = load i32, ptr %2269, align 4, !tbaa !204
  %2271 = icmp slt i32 %2270, 0
  br i1 %2271, label %2278, label %2272

2272:                                             ; preds = %2265
  %2273 = zext nneg i32 %2270 to i64
  %2274 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2273, i32 18
  %2275 = load i8, ptr %2274, align 8
  %2276 = and i8 %2275, 1
  %2277 = icmp eq i8 %2276, 0
  br i1 %2277, label %2321, label %2278

2278:                                             ; preds = %2272, %2265
  %2279 = icmp ult i32 %2263, 2
  br i1 %2279, label %2280, label %2295

2280:                                             ; preds = %2278
  %2281 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 13
  %2282 = load i32, ptr %2281, align 4, !tbaa !267
  %2283 = icmp eq i32 %2282, -1
  br i1 %2283, label %2295, label %2284

2284:                                             ; preds = %2280
  %2285 = sext i32 %2282 to i64
  %2286 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2285, i32 17
  store i32 8, ptr %2286, align 4, !tbaa !266
  %2287 = icmp sgt i32 %2282, 0
  br i1 %2287, label %2288, label %2295

2288:                                             ; preds = %2284
  %2289 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2285, i32 13
  %2290 = load i32, ptr %2289, align 4, !tbaa !267
  %2291 = icmp eq i32 %2290, -1
  br i1 %2291, label %2295, label %2292

2292:                                             ; preds = %2288
  %2293 = sext i32 %2290 to i64
  %2294 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2293, i32 17
  store i32 8, ptr %2294, align 4, !tbaa !266
  br label %2295

2295:                                             ; preds = %2278, %2284, %2288, %2292, %2280
  %2296 = load i32, ptr %2262, align 4, !tbaa !266
  %2297 = add i32 %2296, -5
  %2298 = icmp ult i32 %2297, 2
  br i1 %2298, label %2299, label %2316

2299:                                             ; preds = %2295
  %2300 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 14
  %2301 = load i32, ptr %2300, align 8, !tbaa !268
  %2302 = icmp eq i32 %2301, -1
  br i1 %2302, label %2314, label %2303

2303:                                             ; preds = %2299
  %2304 = sext i32 %2301 to i64
  %2305 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 17
  store i32 8, ptr %2305, align 4, !tbaa !266
  %2306 = icmp eq i32 %2301, 0
  br i1 %2306, label %2314, label %2307

2307:                                             ; preds = %2303
  %2308 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 14
  %2309 = load i32, ptr %2308, align 8, !tbaa !268
  %2310 = icmp eq i32 %2309, -1
  br i1 %2310, label %2314, label %2311

2311:                                             ; preds = %2307
  %2312 = sext i32 %2309 to i64
  %2313 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2312, i32 17
  store i32 8, ptr %2313, align 4, !tbaa !266
  br label %2314

2314:                                             ; preds = %2299, %2311, %2307, %2303
  %2315 = load i32, ptr %2262, align 4, !tbaa !266
  br label %2316

2316:                                             ; preds = %2314, %2295
  %2317 = phi i32 [ %2315, %2314 ], [ %2296, %2295 ]
  %2318 = and i32 %2317, -3
  %2319 = icmp eq i32 %2318, 4
  %2320 = select i1 %2319, i32 8, i32 7
  store i32 %2320, ptr %2262, align 4, !tbaa !266
  br label %2324

2321:                                             ; preds = %2260, %2272
  %2322 = add i32 %2261, -3
  %2323 = icmp ult i32 %2322, 2
  br i1 %2323, label %2328, label %2324, !prof !705

2324:                                             ; preds = %2316, %2321
  %2325 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 12
  %2326 = load i32, ptr %2325, align 8, !tbaa !265
  %2327 = sext i32 %2326 to i64
  br label %2341

2328:                                             ; preds = %2321
  %2329 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 12
  %2330 = load i32, ptr %2329, align 8, !tbaa !265
  %2331 = sext i32 %2330 to i64
  %2332 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2331
  %2333 = load i32, ptr %2332, align 4, !tbaa !204
  %2334 = icmp sgt i32 %2333, -1
  br i1 %2334, label %2335, label %2341

2335:                                             ; preds = %2328
  %2336 = zext nneg i32 %2333 to i64
  %2337 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2336, i32 17
  %2338 = load i32, ptr %2337, align 4, !tbaa !266
  %2339 = icmp eq i32 %2338, 9
  br i1 %2339, label %2340, label %2341

2340:                                             ; preds = %2335
  store i32 10, ptr %2262, align 4, !tbaa !266
  br label %2341

2341:                                             ; preds = %2324, %2340, %2335, %2328
  %2342 = phi i64 [ %2327, %2324 ], [ %2331, %2340 ], [ %2331, %2335 ], [ %2331, %2328 ]
  %2343 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2342
  %2344 = load i32, ptr %2343, align 4, !tbaa !204
  %2345 = icmp sgt i32 %2344, -1
  br i1 %2345, label %2346, label %2348, !prof !304

2346:                                             ; preds = %2341
  %2347 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2243, i32 12
  store i32 %2344, ptr %2347, align 8, !tbaa !265
  br label %2348

2348:                                             ; preds = %2341, %2346
  %2349 = add nuw nsw i64 %2243, 1
  %2350 = icmp eq i64 %2349, %2155
  br i1 %2350, label %2351, label %2242, !prof !706, !llvm.loop !707

2351:                                             ; preds = %2348, %2142, %2152
  %2352 = phi i1 [ false, %2152 ], [ false, %2142 ], [ %2153, %2348 ]
  %2353 = phi i32 [ %2149, %2152 ], [ %2143, %2142 ], [ %2149, %2348 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %36) #23
  br i1 %110, label %2357, label %2354, !prof !524

2354:                                             ; preds = %2357, %2351
  br i1 %2352, label %2355, label %2462, !prof !698

2355:                                             ; preds = %2354
  %2356 = zext nneg i32 %2353 to i64
  br label %2363

2357:                                             ; preds = %2351, %2357
  %2358 = phi i64 [ %2361, %2357 ], [ 0, %2351 ]
  %2359 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2358
  store i32 -2, ptr %2359, align 4, !tbaa !204
  %2360 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2358
  store i32 -2, ptr %2360, align 4, !tbaa !204
  %2361 = add nuw nsw i64 %2358, 1
  %2362 = icmp eq i64 %2361, %445
  br i1 %2362, label %2354, label %2357, !prof !536, !llvm.loop !708

2363:                                             ; preds = %2355, %2398
  %2364 = phi i64 [ %2356, %2355 ], [ %2367, %2398 ]
  %2365 = phi i32 [ 0, %2355 ], [ %2400, %2398 ]
  %2366 = phi i32 [ -2, %2355 ], [ %2399, %2398 ]
  %2367 = add nsw i64 %2364, -1
  %2368 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2367, i32 17
  %2369 = load i32, ptr %2368, align 4, !tbaa !266
  switch i32 %2369, label %2398 [
    i32 7, label %2370
    i32 3, label %2376
    i32 5, label %2387
  ], !prof !709

2370:                                             ; preds = %2363
  %2371 = add nsw i32 %2366, 1
  %2372 = icmp sgt i32 %2366, -2
  %2373 = trunc i64 %2367 to i32
  %2374 = select i1 %2372, i32 %2373, i32 %2371
  %2375 = select i1 %2372, i32 1, i32 %2365
  br label %2398

2376:                                             ; preds = %2363
  %2377 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2367, i32 12
  %2378 = load i32, ptr %2377, align 8, !tbaa !265
  %2379 = sext i32 %2378 to i64
  %2380 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2379
  %2381 = load i32, ptr %2380, align 4, !tbaa !204
  %2382 = add nsw i32 %2381, 1
  %2383 = icmp sgt i32 %2381, -2
  %2384 = trunc i64 %2367 to i32
  %2385 = select i1 %2383, i32 %2384, i32 %2382
  store i32 %2385, ptr %2380, align 4
  %2386 = select i1 %2383, i32 1, i32 %2365
  br label %2398

2387:                                             ; preds = %2363
  %2388 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2367, i32 12
  %2389 = load i32, ptr %2388, align 8, !tbaa !265
  %2390 = sext i32 %2389 to i64
  %2391 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2390
  %2392 = load i32, ptr %2391, align 4, !tbaa !204
  %2393 = add nsw i32 %2392, 1
  %2394 = icmp sgt i32 %2392, -2
  %2395 = trunc i64 %2367 to i32
  %2396 = select i1 %2394, i32 %2395, i32 %2393
  store i32 %2396, ptr %2391, align 4
  %2397 = select i1 %2394, i32 1, i32 %2365
  br label %2398

2398:                                             ; preds = %2387, %2376, %2370, %2363
  %2399 = phi i32 [ %2366, %2363 ], [ %2374, %2370 ], [ %2366, %2376 ], [ %2366, %2387 ]
  %2400 = phi i32 [ %2365, %2363 ], [ %2375, %2370 ], [ %2386, %2376 ], [ %2397, %2387 ]
  %2401 = icmp ugt i64 %2364, 1
  br i1 %2401, label %2363, label %2402, !prof !699, !llvm.loop !710

2402:                                             ; preds = %2398
  %2403 = icmp eq i32 %2400, 0
  br i1 %2403, label %2462, label %2404, !prof !711

2404:                                             ; preds = %2402
  br i1 %2352, label %2405, label %2462

2405:                                             ; preds = %2404, %2457
  %2406 = phi i64 [ %2458, %2457 ], [ 0, %2404 ]
  %2407 = phi i32 [ %2459, %2457 ], [ %2353, %2404 ]
  %2408 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2406
  %2409 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2406, i32 17
  %2410 = load i32, ptr %2409, align 4, !tbaa !266
  switch i32 %2410, label %2457 [
    i32 8, label %2420
    i32 4, label %2412
    i32 6, label %2411
  ]

2411:                                             ; preds = %2405
  br label %2412

2412:                                             ; preds = %2405, %2411
  %2413 = phi ptr [ %36, %2411 ], [ %35, %2405 ]
  %2414 = phi i32 [ 5, %2411 ], [ 3, %2405 ]
  %2415 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2406, i32 12
  %2416 = load i32, ptr %2415, align 8, !tbaa !265
  %2417 = sext i32 %2416 to i64
  %2418 = getelementptr inbounds [30 x i32], ptr %2413, i64 0, i64 %2417
  %2419 = load i32, ptr %2418, align 4, !tbaa !204
  br label %2420

2420:                                             ; preds = %2412, %2405
  %2421 = phi i32 [ %2399, %2405 ], [ %2419, %2412 ]
  %2422 = phi i32 [ 7, %2405 ], [ %2414, %2412 ]
  %2423 = icmp slt i32 %2421, 0
  br i1 %2423, label %2457, label %2424

2424:                                             ; preds = %2420
  %2425 = zext nneg i32 %2421 to i64
  %2426 = icmp ugt i64 %2406, %2425
  br i1 %2426, label %2456, label %2427

2427:                                             ; preds = %2424
  %2428 = add nsw i32 %2407, -1
  %2429 = icmp sgt i32 %2428, %2421
  br i1 %2429, label %2430, label %2457

2430:                                             ; preds = %2427
  %2431 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2406, i32 18
  br label %2432

2432:                                             ; preds = %2430, %2453
  %2433 = phi i32 [ %2428, %2430 ], [ %2454, %2453 ]
  %2434 = zext nneg i32 %2433 to i64
  %2435 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2434
  %2436 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2434, i32 17
  %2437 = load i32, ptr %2436, align 4, !tbaa !266
  %2438 = icmp eq i32 %2437, %2422
  br i1 %2438, label %2439, label %2453

2439:                                             ; preds = %2432
  %2440 = load i8, ptr %2431, align 8
  %2441 = and i8 %2440, 4
  %2442 = icmp eq i8 %2441, 0
  br i1 %2442, label %2448, label %2443

2443:                                             ; preds = %2439
  %2444 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2434, i32 13
  %2445 = load i32, ptr %2444, align 4, !tbaa !267
  %2446 = zext i32 %2445 to i64
  %2447 = icmp eq i64 %2406, %2446
  br i1 %2447, label %2456, label %2453

2448:                                             ; preds = %2439
  %2449 = load ptr, ptr %2408, align 8, !tbaa !254
  %2450 = load ptr, ptr %2435, align 8, !tbaa !254
  %2451 = call i32 @reg_mentioned_p(ptr noundef %2449, ptr noundef %2450) #24
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2453, label %2456

2453:                                             ; preds = %2432, %2443, %2448
  %2454 = add nsw i32 %2433, -1
  %2455 = icmp sgt i32 %2454, %2421
  br i1 %2455, label %2432, label %2457, !llvm.loop !712

2456:                                             ; preds = %2443, %2448, %2424
  store i32 %2422, ptr %2409, align 4, !tbaa !266
  br label %2457

2457:                                             ; preds = %2453, %2456, %2427, %2420, %2405
  %2458 = add nuw nsw i64 %2406, 1
  %2459 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %2460 = sext i32 %2459 to i64
  %2461 = icmp slt i64 %2458, %2460
  br i1 %2461, label %2405, label %2462, !llvm.loop !713

2462:                                             ; preds = %2457, %2354, %2404, %2402
  %2463 = phi i32 [ %2353, %2404 ], [ %2353, %2402 ], [ %2353, %2354 ], [ %2459, %2457 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %35) #23
  %2464 = icmp sgt i32 %2463, 0
  br i1 %2464, label %2467, label %2712, !prof !698

2465:                                             ; preds = %2557
  %2466 = icmp sgt i32 %2558, 0
  br i1 %2466, label %2564, label %2712, !prof !321

2467:                                             ; preds = %2462, %2557
  %2468 = phi i32 [ %2558, %2557 ], [ %2463, %2462 ]
  %2469 = phi i64 [ %2559, %2557 ], [ 0, %2462 ]
  %2470 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469
  %2471 = load ptr, ptr %2470, align 8, !tbaa !254
  %2472 = icmp eq ptr %2471, null
  br i1 %2472, label %2557, label %2473, !prof !227

2473:                                             ; preds = %2467
  %2474 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 1
  %2475 = load ptr, ptr %2474, align 8, !tbaa !256
  %2476 = icmp eq ptr %2475, null
  br i1 %2476, label %2477, label %2557, !prof !239

2477:                                             ; preds = %2473
  %2478 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 17
  %2479 = load i32, ptr %2478, align 4, !tbaa !266
  switch i32 %2479, label %2557 [
    i32 7, label %2480
    i32 8, label %2480
    i32 10, label %2480
  ], !prof !714

2480:                                             ; preds = %2477, %2477, %2477
  %2481 = icmp sgt i32 %2468, 0
  br i1 %2481, label %2482, label %2557

2482:                                             ; preds = %2480, %2552
  %2483 = phi i64 [ %2553, %2552 ], [ 0, %2480 ]
  %2484 = icmp eq i64 %2469, %2483
  br i1 %2484, label %2552, label %2485

2485:                                             ; preds = %2482
  %2486 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2483
  %2487 = load ptr, ptr %2486, align 8, !tbaa !254
  %2488 = icmp eq ptr %2487, null
  br i1 %2488, label %2552, label %2489

2489:                                             ; preds = %2485
  %2490 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2483, i32 1
  %2491 = load ptr, ptr %2490, align 8, !tbaa !256
  %2492 = icmp eq ptr %2491, null
  br i1 %2492, label %2493, label %2552

2493:                                             ; preds = %2489
  %2494 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2483, i32 17
  %2495 = load i32, ptr %2494, align 4, !tbaa !266
  %2496 = load i32, ptr %2478, align 4, !tbaa !266
  %2497 = icmp eq i32 %2495, %2496
  br i1 %2497, label %2498, label %2552

2498:                                             ; preds = %2493
  %2499 = load ptr, ptr %2470, align 8, !tbaa !254
  %2500 = icmp eq ptr %2499, %2487
  br i1 %2500, label %2522, label %2501

2501:                                             ; preds = %2498
  %2502 = icmp eq ptr %2499, null
  br i1 %2502, label %2552, label %2503

2503:                                             ; preds = %2501
  %2504 = load i32, ptr %2499, align 8
  %2505 = and i32 %2504, 65535
  %2506 = icmp eq i32 %2505, 37
  br i1 %2506, label %2507, label %2515

2507:                                             ; preds = %2503
  %2508 = load i32, ptr %2487, align 8
  %2509 = and i32 %2508, 65535
  %2510 = icmp eq i32 %2509, 37
  br i1 %2510, label %2511, label %2552

2511:                                             ; preds = %2507
  %2512 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2499) #25
  %2513 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2487) #25
  %2514 = icmp eq i32 %2512, %2513
  br i1 %2514, label %2522, label %2552

2515:                                             ; preds = %2503
  %2516 = call i32 @rtx_equal_p(ptr noundef nonnull %2499, ptr noundef nonnull %2487) #24
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %2552, label %2518

2518:                                             ; preds = %2515
  %2519 = load ptr, ptr %2470, align 8, !tbaa !254
  %2520 = call i32 @side_effects_p(ptr noundef %2519) #24
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2522, label %2552

2522:                                             ; preds = %2518, %2511, %2498
  %2523 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 2
  %2524 = load i32, ptr %2523, align 8, !tbaa !257
  %2525 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2483, i32 2
  %2526 = load i32, ptr %2525, align 8, !tbaa !257
  %2527 = icmp eq i32 %2524, %2526
  br i1 %2527, label %2528, label %2552

2528:                                             ; preds = %2522
  %2529 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 18
  %2530 = load i8, ptr %2529, align 8
  %2531 = and i8 %2530, 2
  %2532 = icmp eq i8 %2531, 0
  br i1 %2532, label %2533, label %2552

2533:                                             ; preds = %2528
  %2534 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2483, i32 18
  %2535 = load i8, ptr %2534, align 8
  %2536 = and i8 %2535, 2
  %2537 = icmp eq i8 %2536, 0
  br i1 %2537, label %2538, label %2552

2538:                                             ; preds = %2533
  %2539 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 11
  %2540 = load ptr, ptr %2539, align 8, !tbaa !260
  %2541 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2483, i32 11
  %2542 = load ptr, ptr %2541, align 8, !tbaa !260
  %2543 = icmp eq ptr %2540, %2542
  br i1 %2543, label %2544, label %2552

2544:                                             ; preds = %2538
  %2545 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2469, i32 12
  %2546 = trunc i64 %2469 to i32
  %2547 = load i32, ptr %2545, align 8, !tbaa !265
  %2548 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2483, i32 12
  %2549 = load i32, ptr %2548, align 8, !tbaa !265
  %2550 = call i32 @llvm.smin.i32(i32 %2547, i32 %2549)
  store i32 %2550, ptr %2545, align 8, !tbaa !265
  %2551 = trunc i64 %2483 to i32
  call void @transfer_replacements(i32 noundef %2546, i32 noundef %2551) #25
  store ptr null, ptr %2486, align 8, !tbaa !254
  br label %2552

2552:                                             ; preds = %2482, %2485, %2489, %2493, %2501, %2507, %2511, %2515, %2518, %2522, %2528, %2533, %2538, %2544
  %2553 = add nuw nsw i64 %2483, 1
  %2554 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %2555 = sext i32 %2554 to i64
  %2556 = icmp slt i64 %2553, %2555
  br i1 %2556, label %2482, label %2557, !llvm.loop !715

2557:                                             ; preds = %2552, %2480, %2477, %2467, %2473
  %2558 = phi i32 [ %2468, %2480 ], [ %2468, %2477 ], [ %2468, %2467 ], [ %2468, %2473 ], [ %2554, %2552 ]
  %2559 = add nuw nsw i64 %2469, 1
  %2560 = sext i32 %2558 to i64
  %2561 = icmp slt i64 %2559, %2560
  br i1 %2561, label %2467, label %2465, !prof !699, !llvm.loop !716

2562:                                             ; preds = %2606
  %2563 = icmp sgt i32 %2610, 0
  br i1 %2563, label %2613, label %2712, !prof !321

2564:                                             ; preds = %2465, %2606
  %2565 = phi i64 [ %2609, %2606 ], [ 0, %2465 ]
  %2566 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2565, i32 3
  %2567 = load i32, ptr %2566, align 4, !tbaa !258
  %2568 = icmp eq i32 %2567, 0
  %2569 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2565, i32 4
  %2570 = load i32, ptr %2569, align 8, !tbaa !259
  br i1 %2568, label %2580, label %2571, !prof !227

2571:                                             ; preds = %2564
  %2572 = zext i32 %2570 to i64
  %2573 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2572
  %2574 = load i8, ptr %2573, align 1, !tbaa !199
  %2575 = zext i32 %2567 to i64
  %2576 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2575
  %2577 = load i8, ptr %2576, align 1, !tbaa !199
  %2578 = icmp ugt i8 %2574, %2577
  br i1 %2578, label %2579, label %2580, !prof !237

2579:                                             ; preds = %2571
  br label %2580

2580:                                             ; preds = %2564, %2571, %2579
  %2581 = phi i32 [ %2567, %2571 ], [ %2570, %2579 ], [ %2570, %2564 ]
  %2582 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2565, i32 5
  store i32 %2581, ptr %2582, align 4, !tbaa !717
  %2583 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2565, i32 2
  %2584 = load i32, ptr %2583, align 8, !tbaa !257
  %2585 = call i32 @reg_classes_intersect_p(i32 noundef %2584, i32 noundef 13) #24
  %2586 = icmp eq i32 %2585, 0
  %2587 = load i32, ptr %2582, align 4, !tbaa !717
  br i1 %2586, label %2588, label %2595, !prof !247

2588:                                             ; preds = %2580
  %2589 = zext i32 %2587 to i64
  %2590 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2589
  %2591 = load i8, ptr %2590, align 1, !tbaa !199
  %2592 = and i8 %2591, -2
  %2593 = icmp eq i8 %2592, 10
  %2594 = select i1 %2593, i32 2, i32 1
  br label %2606

2595:                                             ; preds = %2580
  %2596 = icmp eq i32 %2587, 40
  br i1 %2596, label %2602, label %2597, !prof !718

2597:                                             ; preds = %2595
  %2598 = zext i32 %2587 to i64
  %2599 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2598
  %2600 = load i8, ptr %2599, align 1, !tbaa !199
  %2601 = zext i8 %2600 to i32
  br label %2602

2602:                                             ; preds = %2595, %2597
  %2603 = phi i32 [ %2601, %2597 ], [ 12, %2595 ]
  %2604 = add nuw nsw i32 %2603, 3
  %2605 = lshr i32 %2604, 2
  br label %2606

2606:                                             ; preds = %2602, %2588
  %2607 = phi i32 [ %2594, %2588 ], [ %2605, %2602 ]
  %2608 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2565, i32 6
  store i32 %2607, ptr %2608, align 8, !tbaa !719
  %2609 = add nuw nsw i64 %2565, 1
  %2610 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %2611 = sext i32 %2610 to i64
  %2612 = icmp slt i64 %2609, %2611
  br i1 %2612, label %2564, label %2562, !prof !699, !llvm.loop !720

2613:                                             ; preds = %2562, %2707
  %2614 = phi i64 [ %2708, %2707 ], [ 0, %2562 ]
  %2615 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2614
  %2616 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2614, i32 17
  %2617 = load i32, ptr %2616, align 4, !tbaa !266
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2619, label %2707, !prof !263

2619:                                             ; preds = %2613
  %2620 = load ptr, ptr %37, align 8, !tbaa !199
  %2621 = load i32, ptr %2620, align 8
  %2622 = and i32 %2621, 65535
  %2623 = icmp eq i32 %2622, 23
  br i1 %2623, label %2624, label %2707, !prof !721

2624:                                             ; preds = %2619
  %2625 = getelementptr inbounds %struct.rtx_def, ptr %2620, i64 0, i32 1
  %2626 = load ptr, ptr %2625, align 8, !tbaa !199
  %2627 = load i32, ptr %2626, align 8
  %2628 = and i32 %2627, 65535
  %2629 = icmp eq i32 %2628, 37
  br i1 %2629, label %2630, label %2707, !prof !722

2630:                                             ; preds = %2624
  %2631 = getelementptr inbounds %struct.rtx_def, ptr %2620, i64 0, i32 1, i32 0, i32 0, i64 1
  %2632 = load ptr, ptr %2631, align 8, !tbaa !199
  %2633 = load ptr, ptr %2615, align 8, !tbaa !254
  %2634 = icmp eq ptr %2632, %2633
  br i1 %2634, label %2639, label %2635, !prof !723

2635:                                             ; preds = %2630
  %2636 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2614, i32 8
  %2637 = load ptr, ptr %2636, align 8, !tbaa !262
  %2638 = icmp eq ptr %2632, %2637
  br i1 %2638, label %2639, label %2707, !prof !724

2639:                                             ; preds = %2635, %2630
  %2640 = call zeroext i8 @elimination_target_reg_p(ptr noundef nonnull %2626) #24
  %2641 = icmp eq i8 %2640, 0
  br i1 %2641, label %2642, label %2707, !prof !725

2642:                                             ; preds = %2639
  %2643 = load ptr, ptr %37, align 8, !tbaa !199
  %2644 = getelementptr inbounds %struct.rtx_def, ptr %2643, i64 0, i32 1
  %2645 = load ptr, ptr %2644, align 8, !tbaa !199
  %2646 = call fastcc i32 @rhs_regno(ptr noundef %2645) #25
  %2647 = icmp ult i32 %2646, 53
  br i1 %2647, label %2648, label %2707, !prof !725

2648:                                             ; preds = %2642
  %2649 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2614, i32 2
  %2650 = load i32, ptr %2649, align 8, !tbaa !257
  %2651 = zext i32 %2650 to i64
  %2652 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2651
  %2653 = load i64, ptr %2652, align 8, !tbaa !250
  %2654 = zext nneg i32 %2646 to i64
  %2655 = shl nuw nsw i64 1, %2654
  %2656 = and i64 %2653, %2655
  %2657 = icmp eq i64 %2656, 0
  br i1 %2657, label %2707, label %2658, !prof !726

2658:                                             ; preds = %2648
  %2659 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2614, i32 5
  %2660 = load i32, ptr %2659, align 4, !tbaa !717
  %2661 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %2646, i32 noundef %2660) #24
  %2662 = icmp eq i8 %2661, 0
  br i1 %2662, label %2707, label %2663, !prof !726

2663:                                             ; preds = %2658
  %2664 = load i32, ptr %2659, align 4, !tbaa !717
  %2665 = zext i32 %2664 to i64
  %2666 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2654, i64 %2665
  %2667 = load i8, ptr %2666, align 1, !tbaa !199
  %2668 = icmp ugt i8 %2667, 1
  br i1 %2668, label %2669, label %2705, !prof !727

2669:                                             ; preds = %2663
  %2670 = zext i8 %2667 to i64
  %2671 = load i32, ptr %2649, align 8, !tbaa !257
  %2672 = zext i32 %2671 to i64
  %2673 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2672
  %2674 = load i64, ptr %2673, align 8, !tbaa !250
  %2675 = add nuw nsw i64 %2670, 2
  %2676 = and i64 %2675, 508
  %2677 = add nsw i64 %2670, -2
  %2678 = insertelement <4 x i64> poison, i64 %2677, i64 0
  %2679 = shufflevector <4 x i64> %2678, <4 x i64> poison, <4 x i32> zeroinitializer
  %2680 = insertelement <4 x i64> poison, i64 %2654, i64 0
  %2681 = shufflevector <4 x i64> %2680, <4 x i64> poison, <4 x i32> zeroinitializer
  %2682 = insertelement <4 x i64> poison, i64 %2674, i64 0
  %2683 = shufflevector <4 x i64> %2682, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %2684

2684:                                             ; preds = %2684, %2669
  %2685 = phi i64 [ 0, %2669 ], [ %2693, %2684 ]
  %2686 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %2669 ], [ %2694, %2684 ]
  %2687 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %2669 ], [ %2692, %2684 ]
  %2688 = add nuw nsw <4 x i64> %2686, %2681
  %2689 = shl nuw <4 x i64> <i64 1, i64 1, i64 1, i64 1>, %2688
  %2690 = and <4 x i64> %2683, %2689
  %2691 = icmp eq <4 x i64> %2690, zeroinitializer
  %2692 = select <4 x i1> %2691, <4 x i32> zeroinitializer, <4 x i32> %2687
  %2693 = add i64 %2685, 4
  %2694 = add <4 x i64> %2686, <i64 4, i64 4, i64 4, i64 4>
  %2695 = icmp eq i64 %2693, %2676
  br i1 %2695, label %2696, label %2684, !prof !728, !llvm.loop !729

2696:                                             ; preds = %2684
  %2697 = insertelement <4 x i64> poison, i64 %2685, i64 0
  %2698 = shufflevector <4 x i64> %2697, <4 x i64> poison, <4 x i32> zeroinitializer
  %2699 = or disjoint <4 x i64> %2698, <i64 0, i64 1, i64 2, i64 3>
  %2700 = icmp ugt <4 x i64> %2699, %2679
  %2701 = select <4 x i1> %2700, <4 x i32> %2687, <4 x i32> %2692
  %2702 = icmp ne <4 x i32> %2701, <i32 1, i32 1, i32 1, i32 1>
  %2703 = bitcast <4 x i1> %2702 to i4
  %2704 = icmp eq i4 %2703, 0
  br i1 %2704, label %2705, label %2707, !prof !732

2705:                                             ; preds = %2663, %2696
  %2706 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2614, i32 11
  store ptr %2645, ptr %2706, align 8, !tbaa !260
  br label %2707

2707:                                             ; preds = %2642, %2648, %2658, %2705, %2696, %2613, %2619, %2624, %2635, %2639
  %2708 = add nuw nsw i64 %2614, 1
  %2709 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %2710 = sext i32 %2709 to i64
  %2711 = icmp slt i64 %2708, %2710
  br i1 %2711, label %2613, label %2712, !prof !699, !llvm.loop !733

2712:                                             ; preds = %2707, %2462, %2465, %2562, %400, %94, %82, %1890, %1500
  %2713 = phi i32 [ %401, %400 ], [ 0, %1890 ], [ 0, %1500 ], [ 0, %82 ], [ 0, %94 ], [ %2103, %2562 ], [ %2103, %2465 ], [ %2103, %2462 ], [ %2103, %2707 ]
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
  ret i32 %2713
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #13 !prof !734 !PGOFuncName !735 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !736
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reloads_toplev(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !737 !PGOFuncName !738 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !200
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = trunc i32 %11 to i16
  switch i16 %16, label %186 [
    i16 37, label %17
    i16 43, label %83
    i16 39, label %93
  ], !prof !739

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %19 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !543

24:                                               ; preds = %17
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store ptr %22, ptr %8, align 8, !tbaa !200
  br label %81

27:                                               ; preds = %24, %17
  %28 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %29 = getelementptr inbounds ptr, ptr %28, i64 %20
  %30 = load ptr, ptr %29, align 8, !tbaa !200
  %31 = icmp eq ptr %30, null
  br i1 %31, label %81, label %32, !prof !543

32:                                               ; preds = %27
  %33 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %34 = getelementptr inbounds ptr, ptr %33, i64 %20
  %35 = load ptr, ptr %34, align 8, !tbaa !200
  %36 = icmp ne ptr %35, null
  %37 = load i32, ptr @num_not_at_initial_offset, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %32
  %41 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %18) #25
  %42 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  %44 = load ptr, ptr %43, align 8, !tbaa !200
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %48 = getelementptr inbounds ptr, ptr %47, i64 %20
  %49 = load ptr, ptr %48, align 8, !tbaa !200
  %50 = tail call i32 @rtx_equal_p(ptr noundef %41, ptr noundef %49) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %46, %40
  %53 = load i32, ptr @replace_reloads, align 4, !tbaa !204
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !200
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
  store ptr %41, ptr %8, align 8, !tbaa !200
  %67 = load i32, ptr %41, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !199
  %72 = call fastcc i32 @find_reloads_address(i32 noundef %69, ptr noundef nonnull %8, ptr noundef %71, ptr noundef nonnull %70, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %73 = load ptr, ptr %8, align 8, !tbaa !200
  %74 = call i32 @rtx_equal_p(ptr noundef %73, ptr noundef nonnull %41) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load ptr, ptr %8, align 8, !tbaa !200
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %18, ptr noundef %77) #25
  br label %78

78:                                               ; preds = %76, %66
  %79 = icmp eq ptr %6, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  store i32 %72, ptr %6, align 4, !tbaa !204
  br label %81

81:                                               ; preds = %46, %80, %78, %27, %32, %26
  %82 = load ptr, ptr %8, align 8, !tbaa !200
  br label %230

83:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  store ptr %0, ptr %9, align 8, !tbaa !200
  %84 = lshr i32 %11, 16
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !199
  %88 = call fastcc i32 @find_reloads_address(i32 noundef %85, ptr noundef nonnull %9, ptr noundef %87, ptr noundef nonnull %86, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %89 = icmp eq ptr %6, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  store i32 %88, ptr %6, align 4, !tbaa !204
  br label %91

91:                                               ; preds = %90, %83
  %92 = load ptr, ptr %9, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  br label %230

93:                                               ; preds = %7
  %94 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !199
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %186, !prof !543

99:                                               ; preds = %93
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  %101 = icmp sgt i32 %100, 52
  br i1 %101, label %102, label %182, !prof !542

102:                                              ; preds = %99
  %103 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr inbounds i16, ptr %103, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !230
  %107 = icmp slt i16 %106, 0
  br i1 %107, label %108, label %146

108:                                              ; preds = %102
  %109 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %110 = getelementptr inbounds ptr, ptr %109, i64 %104
  %111 = load ptr, ptr %110, align 8, !tbaa !200
  %112 = icmp eq ptr %111, null
  br i1 %112, label %146, label %113

113:                                              ; preds = %108
  %114 = lshr i32 %11, 16
  %115 = and i32 %114, 255
  %116 = lshr i32 %96, 16
  %117 = and i32 %116, 255
  %118 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load i32, ptr %118, align 8, !tbaa !199
  %120 = tail call ptr @simplify_gen_subreg(i32 noundef %115, ptr noundef nonnull %111, i32 noundef %117, i32 noundef %119) #24
  store ptr %120, ptr %10, align 8, !tbaa !200
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
  %128 = load i32, ptr %127, align 4, !tbaa !204
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
  store ptr %137, ptr %10, align 8, !tbaa !200
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !199
  %143 = call fastcc i32 @find_reloads_address(i32 noundef %140, ptr noundef nonnull %10, ptr noundef %142, ptr noundef nonnull %141, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %144 = icmp eq ptr %6, null
  br i1 %144, label %184, label %145

145:                                              ; preds = %133
  store i32 %143, ptr %6, align 4, !tbaa !204
  br label %184

146:                                              ; preds = %102, %108
  %147 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %148 = getelementptr inbounds ptr, ptr %147, i64 %104
  %149 = load ptr, ptr %148, align 8, !tbaa !200
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %180

151:                                              ; preds = %146
  %152 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %153 = getelementptr inbounds ptr, ptr %152, i64 %104
  %154 = load ptr, ptr %153, align 8, !tbaa !200
  %155 = icmp eq ptr %154, null
  br i1 %155, label %182, label %156

156:                                              ; preds = %151
  %157 = lshr i32 %11, 16
  %158 = and i32 %157, 255
  %159 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !199
  %161 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !199
  %163 = icmp eq ptr %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.mem_attrs, ptr %162, i64 0, i32 5
  %166 = load i8, ptr %165, align 8, !tbaa !201
  br label %167

167:                                              ; preds = %156, %164
  %168 = phi i8 [ %166, %164 ], [ 0, %156 ]
  %169 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %158, ptr noundef %160, i8 noundef zeroext %168) #25, !range !203
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %173 = getelementptr inbounds ptr, ptr %172, i64 %104
  %174 = load ptr, ptr %173, align 8, !tbaa !200
  %175 = tail call i32 @offsettable_memref_p(ptr noundef %174) #24
  %176 = icmp eq i32 %175, 0
  %177 = load i32, ptr @num_not_at_initial_offset, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %171, %167, %146
  %181 = tail call fastcc ptr @find_reloads_subreg_address(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  store ptr %181, ptr %8, align 8, !tbaa !200
  br label %182

182:                                              ; preds = %99, %171, %180, %151
  %183 = phi ptr [ %0, %99 ], [ %0, %171 ], [ %181, %180 ], [ %0, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %186

184:                                              ; preds = %123, %130, %145, %133
  %185 = load ptr, ptr %10, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %230

186:                                              ; preds = %182, %7, %93
  %187 = phi ptr [ %183, %182 ], [ %0, %7 ], [ %0, %93 ]
  %188 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %189 = load i8, ptr %188, align 1, !tbaa !199
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %230, label %191, !prof !740

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
  %200 = load i8, ptr %199, align 1, !tbaa !199
  %201 = icmp eq i8 %200, 101
  br i1 %201, label %202, label %225, !prof !741

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %204 = getelementptr inbounds [1 x %union.rtunion_def], ptr %203, i64 0, i64 %198
  %205 = load ptr, ptr %204, align 8, !tbaa !199
  %206 = tail call fastcc ptr @find_reloads_toplev(ptr noundef %205, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #25
  %207 = load ptr, ptr %204, align 8, !tbaa !199
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %220, label %209, !prof !543

209:                                              ; preds = %202
  %210 = load i32, ptr %206, align 8
  %211 = and i32 %210, 65535
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !204
  %215 = icmp eq i32 %214, 9
  %216 = icmp ne i32 %197, 0
  %217 = select i1 %215, i1 true, i1 %216
  br i1 %217, label %220, label %218

218:                                              ; preds = %209
  %219 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %195) #24
  store ptr %219, ptr %8, align 8, !tbaa !200
  br label %220

220:                                              ; preds = %218, %209, %202
  %221 = phi ptr [ %194, %209 ], [ %219, %218 ], [ %194, %202 ]
  %222 = phi i32 [ %197, %209 ], [ 1, %218 ], [ %197, %202 ]
  %223 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %224 = getelementptr inbounds [1 x %union.rtunion_def], ptr %223, i64 0, i64 %198
  store ptr %206, ptr %224, align 8, !tbaa !199
  br label %225

225:                                              ; preds = %193, %220
  %226 = phi ptr [ %221, %220 ], [ %194, %193 ]
  %227 = phi ptr [ %221, %220 ], [ %195, %193 ]
  %228 = phi i32 [ %222, %220 ], [ %197, %193 ]
  %229 = icmp ugt i64 %196, 1
  br i1 %229, label %193, label %230, !prof !742, !llvm.loop !743

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
define internal fastcc ptr @skip_alternative(ptr noundef readonly %0) unnamed_addr #6 !prof !173 !PGOFuncName !744 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %5 ]
  %4 = load i8, ptr %3, align 1, !tbaa !199
  switch i8 %4, label %5 [
    i8 0, label %7
    i8 44, label %7
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !745

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
define internal fastcc noundef zeroext i8 @alternative_allows_const_pool_ref(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !173 !PGOFuncName !746 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2, %12
  %5 = phi i32 [ %13, %12 ], [ %1, %2 ]
  %6 = phi ptr [ %9, %12 ], [ %0, %2 ]
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %6, %4 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = load i8, ptr %8, align 1, !tbaa !199
  %11 = icmp eq i8 %10, 44
  br i1 %11, label %12, label %7, !llvm.loop !747

12:                                               ; preds = %7
  %13 = add nsw i32 %5, -1
  %14 = icmp sgt i32 %5, 1
  br i1 %14, label %4, label %15, !llvm.loop !748

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %0, %2 ], [ %9, %12 ]
  br label %17

17:                                               ; preds = %15, %23
  %18 = phi ptr [ %25, %23 ], [ %16, %15 ]
  %19 = load i8, ptr %18, align 1, !tbaa !199
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
  br label %17, !llvm.loop !749

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
define internal fastcc void @dup_replacements(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #15 !prof !173 !PGOFuncName !750 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi i64 [ 0, %5 ], [ %18, %17 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !275
  %15 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !279
  tail call fastcc void @push_replacement(ptr noundef %0, i32 noundef %14, i32 noundef %16) #25
  br label %17

17:                                               ; preds = %12, %7
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %6
  br i1 %19, label %20, label %7, !llvm.loop !751

20:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_reloads() unnamed_addr #0 !prof !752 !PGOFuncName !753 {
  %1 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %399, !prof !698

3:                                                ; preds = %0, %12
  %4 = phi i64 [ %15, %12 ], [ 0, %0 ]
  %5 = phi i32 [ %13, %12 ], [ -1, %0 ]
  %6 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !256
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !263

9:                                                ; preds = %3
  %10 = icmp sgt i32 %5, -1
  %11 = trunc i64 %4 to i32
  br i1 %10, label %399, label %12, !prof !242

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %5, %3 ], [ %11, %9 ]
  %14 = zext nneg i32 %1 to i64
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %17, label %3, !prof !706, !llvm.loop !754

17:                                               ; preds = %12
  %18 = icmp slt i32 %13, 0
  br i1 %18, label %399, label %19, !prof !755

19:                                               ; preds = %17
  %20 = zext nneg i32 %13 to i64
  %21 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 18
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %399, !prof !756

25:                                               ; preds = %19
  %26 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !254
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %399, !prof !272

29:                                               ; preds = %25
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !256
  %32 = tail call i32 @earlyclobber_operand_p(ptr noundef %31) #25, !range !238
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %399, !prof !272

34:                                               ; preds = %29
  br i1 %2, label %35, label %259, !prof !757

35:                                               ; preds = %34
  %36 = zext nneg i32 %1 to i64
  br label %42

37:                                               ; preds = %54
  br i1 %2, label %38, label %259, !prof !321

38:                                               ; preds = %37
  %39 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 2
  %40 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 4
  %41 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 12
  br label %57

42:                                               ; preds = %35, %54
  %43 = phi i64 [ 0, %35 ], [ %55, %54 ]
  %44 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %43, i32 17
  %45 = load i32, ptr %44, align 4, !tbaa !266
  %46 = add i32 %45, -5
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %54, !prof !758

48:                                               ; preds = %42
  %49 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 12
  %50 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %43, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !265
  %52 = load i32, ptr %49, align 8, !tbaa !265
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %399, label %54

54:                                               ; preds = %42, %48
  %55 = add nuw nsw i64 %43, 1
  %56 = icmp eq i64 %55, %36
  br i1 %56, label %37, label %42, !prof !757, !llvm.loop !759

57:                                               ; preds = %38, %254
  %58 = phi i64 [ 0, %38 ], [ %255, %254 ]
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !254
  %61 = icmp eq ptr %60, null
  br i1 %61, label %254, label %62, !prof !272

62:                                               ; preds = %57
  %63 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 18
  %64 = load i8, ptr %63, align 8
  %65 = and i8 %64, 3
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %254

67:                                               ; preds = %62
  %68 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 17
  %69 = load i32, ptr %68, align 4, !tbaa !266
  switch i32 %69, label %70 [
    i32 5, label %254
    i32 6, label %254
    i32 9, label %254
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !257
  %73 = tail call i32 @reg_classes_intersect_p(i32 noundef %72, i32 noundef 13) #24
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !258
  br i1 %74, label %77, label %84

77:                                               ; preds = %70
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !199
  %81 = and i8 %80, -2
  %82 = icmp eq i8 %81, 10
  %83 = select i1 %82, i32 2, i32 1
  br label %95

84:                                               ; preds = %70
  %85 = icmp eq i32 %76, 40
  br i1 %85, label %91, label %86

86:                                               ; preds = %84
  %87 = zext i32 %76 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !199
  %90 = zext i8 %89 to i32
  br label %91

91:                                               ; preds = %84, %86
  %92 = phi i32 [ %90, %86 ], [ 12, %84 ]
  %93 = add nuw nsw i32 %92, 3
  %94 = lshr i32 %93, 2
  br label %95

95:                                               ; preds = %91, %77
  %96 = phi i32 [ %83, %77 ], [ %94, %91 ]
  %97 = load i32, ptr %39, align 8, !tbaa !257
  %98 = tail call i32 @reg_classes_intersect_p(i32 noundef %97, i32 noundef 13) #24
  %99 = icmp eq i32 %98, 0
  %100 = load i32, ptr %40, align 8, !tbaa !259
  br i1 %99, label %101, label %108

101:                                              ; preds = %95
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !199
  %105 = and i8 %104, -2
  %106 = icmp eq i8 %105, 10
  %107 = select i1 %106, i32 2, i32 1
  br label %119

108:                                              ; preds = %95
  %109 = icmp eq i32 %100, 40
  br i1 %109, label %115, label %110

110:                                              ; preds = %108
  %111 = zext i32 %100 to i64
  %112 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !199
  %114 = zext i8 %113 to i32
  br label %115

115:                                              ; preds = %108, %110
  %116 = phi i32 [ %114, %110 ], [ 12, %108 ]
  %117 = add nuw nsw i32 %116, 3
  %118 = lshr i32 %117, 2
  br label %119

119:                                              ; preds = %115, %101
  %120 = phi i32 [ %107, %101 ], [ %118, %115 ]
  %121 = icmp eq i32 %96, %120
  br i1 %121, label %122, label %254

122:                                              ; preds = %119
  %123 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 7
  %124 = load i32, ptr %123, align 4, !tbaa !261
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %254

126:                                              ; preds = %122
  %127 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 11
  %128 = load ptr, ptr %127, align 8, !tbaa !260
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %254

130:                                              ; preds = %126
  %131 = sext i32 %100 to i64
  %132 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 12
  %133 = load i32, ptr %132, align 8, !tbaa !265
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %131, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !200
  %137 = icmp eq ptr %136, null
  br i1 %137, label %147, label %138

138:                                              ; preds = %130
  %139 = load i32, ptr %41, align 8, !tbaa !265
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %131, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !200
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = tail call i32 @rtx_equal_p(ptr noundef nonnull %136, ptr noundef nonnull %142) #24
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %254, label %147

147:                                              ; preds = %130, %138, %144
  %148 = load i32, ptr %71, align 8, !tbaa !257
  %149 = load i32, ptr %39, align 8, !tbaa !257
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %254

151:                                              ; preds = %147
  %152 = load ptr, ptr %59, align 8, !tbaa !254
  %153 = load ptr, ptr %30, align 8, !tbaa !256
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %193, label %155

155:                                              ; preds = %151
  %156 = icmp eq ptr %152, null
  br i1 %156, label %177, label %157

157:                                              ; preds = %155
  %158 = load i32, ptr %152, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 37
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i32, ptr %153, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 37
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %152) #25
  %167 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %153) #25
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %193, label %177

169:                                              ; preds = %157
  %170 = tail call i32 @rtx_equal_p(ptr noundef nonnull %152, ptr noundef %153) #24
  %171 = icmp eq i32 %170, 0
  %172 = load ptr, ptr %59, align 8, !tbaa !254
  br i1 %171, label %177, label %173

173:                                              ; preds = %169
  %174 = tail call i32 @side_effects_p(ptr noundef %172) #24
  %175 = icmp eq i32 %174, 0
  %176 = load ptr, ptr %59, align 8, !tbaa !254
  br i1 %175, label %193, label %177

177:                                              ; preds = %173, %169, %165, %161, %155
  %178 = phi ptr [ %172, %169 ], [ %152, %165 ], [ %152, %161 ], [ null, %155 ], [ %176, %173 ]
  %179 = load ptr, ptr %30, align 8, !tbaa !256
  %180 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %179, ptr noundef %178) #25
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %254

182:                                              ; preds = %177
  %183 = load ptr, ptr %59, align 8, !tbaa !254
  %184 = load i32, ptr %183, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 37
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load ptr, ptr %30, align 8, !tbaa !256
  %189 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %183, ptr noundef %188) #25
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %254

191:                                              ; preds = %187
  %192 = load ptr, ptr %59, align 8, !tbaa !254
  br label %193

193:                                              ; preds = %191, %182, %173, %165, %151
  %194 = phi ptr [ %192, %191 ], [ %183, %182 ], [ %176, %173 ], [ %152, %165 ], [ %152, %151 ]
  %195 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 3
  %196 = load i32, ptr %195, align 4, !tbaa !258
  %197 = load i32, ptr %68, align 4, !tbaa !266
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %194, i32 noundef %196, i32 noundef %199) #25, !range !238
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %254

202:                                              ; preds = %193
  %203 = load i32, ptr %68, align 4, !tbaa !266
  %204 = icmp ult i32 %203, 2
  br i1 %204, label %205, label %254

205:                                              ; preds = %202
  %206 = trunc i64 %58 to i32
  %207 = load ptr, ptr %30, align 8, !tbaa !256
  %208 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 1
  store ptr %207, ptr %208, align 8, !tbaa !256
  %209 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 9
  %210 = load ptr, ptr %209, align 8, !tbaa !264
  %211 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 9
  store ptr %210, ptr %211, align 8, !tbaa !264
  %212 = load i32, ptr %40, align 8, !tbaa !259
  %213 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 4
  store i32 %212, ptr %213, align 8, !tbaa !259
  store ptr null, ptr %30, align 8, !tbaa !256
  store i32 9, ptr %68, align 4, !tbaa !266
  %214 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 14
  %215 = load i32, ptr %214, align 8, !tbaa !268
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %222, label %217

217:                                              ; preds = %205
  %218 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 14
  store i32 %215, ptr %218, align 8, !tbaa !268
  %219 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 16
  %220 = load i32, ptr %219, align 8, !tbaa !270
  %221 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 16
  store i32 %220, ptr %221, align 8, !tbaa !270
  br label %222

222:                                              ; preds = %217, %205
  %223 = sext i32 %212 to i64
  %224 = load i32, ptr %41, align 8, !tbaa !265
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %223, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !200
  %228 = icmp eq ptr %227, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %222
  %230 = load i32, ptr %132, align 8, !tbaa !265
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %223, i64 %231
  store ptr %227, ptr %232, align 8, !tbaa !200
  br label %233

233:                                              ; preds = %229, %222
  %234 = load i32, ptr %39, align 8, !tbaa !257
  %235 = load i32, ptr %71, align 8, !tbaa !257
  %236 = tail call i32 @reg_class_subset_p(i32 noundef %234, i32 noundef %235) #24
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %233
  %239 = load i32, ptr %39, align 8, !tbaa !257
  store i32 %239, ptr %71, align 8, !tbaa !257
  br label %240

240:                                              ; preds = %238, %233
  %241 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %399

243:                                              ; preds = %240
  %244 = zext nneg i32 %241 to i64
  br label %245

245:                                              ; preds = %243, %251
  %246 = phi i64 [ 0, %243 ], [ %252, %251 ]
  %247 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %246, i32 2
  %248 = load i32, ptr %247, align 8, !tbaa !275
  %249 = icmp eq i32 %248, %13
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i32 %206, ptr %247, align 8, !tbaa !275
  br label %251

251:                                              ; preds = %245, %250
  %252 = add nuw nsw i64 %246, 1
  %253 = icmp eq i64 %252, %244
  br i1 %253, label %399, label %245, !llvm.loop !760

254:                                              ; preds = %202, %67, %67, %67, %57, %62, %119, %122, %126, %144, %147, %177, %187, %193
  %255 = add nuw nsw i64 %58, 1
  %256 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %257 = sext i32 %256 to i64
  %258 = icmp slt i64 %255, %257
  br i1 %258, label %57, label %259, !prof !761, !llvm.loop !762

259:                                              ; preds = %254, %34, %37
  %260 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %261 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 1, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !199
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %399, label %264, !prof !649

264:                                              ; preds = %259
  %265 = sext i32 %262 to i64
  %266 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %265, i32 4
  %267 = load i8, ptr %266, align 8, !tbaa !194
  %268 = icmp sgt i8 %267, 1
  br i1 %268, label %269, label %281, !prof !757

269:                                              ; preds = %264
  %270 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %265, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !196
  br label %272

272:                                              ; preds = %269, %277
  %273 = phi i64 [ 1, %269 ], [ %279, %277 ]
  %274 = getelementptr inbounds %struct.insn_operand_data, ptr %271, i64 %273, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !197
  %276 = load i8, ptr %275, align 1, !tbaa !199
  switch i8 %276, label %277 [
    i8 61, label %399
    i8 43, label %399
  ], !prof !763

277:                                              ; preds = %272
  %278 = zext nneg i8 %267 to i64
  %279 = add nuw nsw i64 %273, 1
  %280 = icmp eq i64 %279, %278
  br i1 %280, label %281, label %272, !prof !757, !llvm.loop !764

281:                                              ; preds = %277, %264
  %282 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 1, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !199
  %284 = icmp eq ptr %283, null
  br i1 %284, label %399, label %285, !prof !761

285:                                              ; preds = %281
  %286 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 4
  br label %287

287:                                              ; preds = %285, %395
  %288 = phi ptr [ %283, %285 ], [ %397, %395 ]
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 16711680
  %291 = icmp eq i32 %290, 65536
  br i1 %291, label %292, label %395, !prof !272

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.rtx_def, ptr %288, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !199
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 37
  br i1 %297, label %298, label %395, !prof !272

298:                                              ; preds = %292
  %299 = load ptr, ptr %30, align 8, !tbaa !256
  %300 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %294, ptr noundef %299) #25
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %395, !prof !272

302:                                              ; preds = %298
  %303 = load ptr, ptr %293, align 8, !tbaa !199
  %304 = tail call fastcc i32 @rhs_regno(ptr noundef %303) #25
  %305 = icmp slt i32 %304, 53
  br i1 %305, label %306, label %395, !prof !272

306:                                              ; preds = %302
  %307 = load i32, ptr %286, align 8, !tbaa !259
  %308 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %304, i32 noundef %307) #24
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %395, label %310, !prof !272

310:                                              ; preds = %306
  %311 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 2
  %312 = load i32, ptr %311, align 8, !tbaa !257
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %313
  %315 = load i64, ptr %314, align 8, !tbaa !250
  %316 = zext nneg i32 %304 to i64
  %317 = shl nuw i64 1, %316
  %318 = and i64 %315, %317
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %395, label %320

320:                                              ; preds = %310
  %321 = sext i32 %304 to i64
  %322 = load i32, ptr %286, align 8, !tbaa !259
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !199
  %326 = load ptr, ptr %293, align 8, !tbaa !199
  %327 = load i32, ptr %326, align 8
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !199
  %333 = icmp ugt i8 %325, %332
  br i1 %333, label %395, label %334

334:                                              ; preds = %320
  %335 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 14
  %336 = load i32, ptr %335, align 8, !tbaa !268
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %360, label %338

338:                                              ; preds = %334
  %339 = sext i32 %336 to i64
  %340 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %339, i32 2
  %341 = load i32, ptr %340, align 8, !tbaa !257
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %342
  %344 = load i64, ptr %343, align 8, !tbaa !250
  %345 = and i64 %344, %317
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %395

347:                                              ; preds = %338
  %348 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %339, i32 14
  %349 = load i32, ptr %348, align 8, !tbaa !268
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %360, label %351

351:                                              ; preds = %347
  %352 = sext i32 %349 to i64
  %353 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %352, i32 2
  %354 = load i32, ptr %353, align 8, !tbaa !257
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %355
  %357 = load i64, ptr %356, align 8, !tbaa !250
  %358 = and i64 %357, %317
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %395

360:                                              ; preds = %351, %347, %334
  %361 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %321
  %362 = load i8, ptr %361, align 1, !tbaa !199
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %395

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %366 = load i32, ptr %365, align 8, !tbaa !199
  %367 = icmp ult i32 %366, 53
  br i1 %367, label %391, label %368

368:                                              ; preds = %364
  %369 = load ptr, ptr @cfun, align 8, !tbaa !200
  %370 = getelementptr inbounds %struct.function, ptr %369, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !288
  %372 = load ptr, ptr %371, align 8, !tbaa !290
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %372, i64 0, i32 9
  %374 = load i32, ptr %373, align 8, !tbaa !292
  %375 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %374) #25
  %376 = getelementptr inbounds %struct.df_lr_bb_info, ptr %375, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !294
  %378 = tail call i32 @bitmap_bit_p(ptr noundef %377, i32 noundef %366) #24
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %395

380:                                              ; preds = %368
  %381 = load ptr, ptr %293, align 8, !tbaa !199
  %382 = load i32, ptr %381, align 8
  %383 = lshr i32 %382, 16
  %384 = and i32 %383, 255
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !199
  %388 = icmp eq i8 %387, 1
  br i1 %388, label %389, label %395

389:                                              ; preds = %380
  %390 = load i32, ptr %286, align 8, !tbaa !259
  br label %391

391:                                              ; preds = %364, %389
  %392 = phi i32 [ %390, %389 ], [ %322, %364 ]
  %393 = tail call ptr @gen_rtx_REG(i32 noundef %392, i32 noundef %304) #24
  %394 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 11
  store ptr %393, ptr %394, align 8, !tbaa !260
  br label %399

395:                                              ; preds = %287, %292, %298, %302, %306, %310, %320, %338, %351, %360, %368, %380
  %396 = getelementptr inbounds %struct.rtx_def, ptr %288, i64 0, i32 1, i32 0, i32 0, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !199
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %287, !prof !757, !llvm.loop !765

399:                                              ; preds = %9, %48, %251, %272, %272, %395, %0, %281, %240, %259, %29, %25, %17, %19, %391
  ret void
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @elimination_target_reg_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @form_sum(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !173 {
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
  %28 = load i64, ptr %27, align 8, !tbaa !199
  %29 = tail call ptr @plus_constant(ptr noundef nonnull %6, i64 noundef %28) #24
  br label %109

30:                                               ; preds = %22
  %31 = load i32, ptr %6, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !199
  %37 = tail call ptr @plus_constant(ptr noundef nonnull %5, i64 noundef %36) #24
  br label %109

38:                                               ; preds = %30
  %39 = zext nneg i32 %24 to i64
  %40 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !204
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
  %51 = load ptr, ptr %50, align 8, !tbaa !199
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !204
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !199
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
  %70 = load ptr, ptr %69, align 8, !tbaa !199
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !204
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !199
  %80 = tail call ptr @form_sum(i32 noundef %0, ptr noundef nonnull %44, ptr noundef %79) #25
  %81 = load ptr, ptr %69, align 8, !tbaa !199
  br label %62

82:                                               ; preds = %68, %65
  %83 = zext nneg i32 %47 to i64
  %84 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !204
  %86 = icmp eq i32 %85, 9
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = zext nneg i32 %66 to i64
  %89 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !204
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = icmp eq i32 %47, 35
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !199
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi ptr [ %96, %94 ], [ %44, %92 ]
  %99 = icmp eq i32 %66, 35
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !199
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
define dso_local void @subst_reloads(ptr noundef %0) local_unnamed_addr #0 !prof !766 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %98, !prof !767

4:                                                ; preds = %1, %93
  %5 = phi i64 [ %94, %93 ], [ 0, %1 ]
  %6 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5
  %7 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !275
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !260
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13, !prof !768

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !278
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %36, !prof !769

19:                                               ; preds = %13
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !199
  %26 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %25) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load ptr, ptr %6, align 8, !tbaa !278
  %30 = load ptr, ptr %29, align 8, !tbaa !200
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !199
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
  %41 = load i32, ptr %40, align 4, !tbaa !279
  %42 = icmp eq i32 %39, %41
  %43 = icmp eq i32 %41, 0
  %44 = or i1 %43, %42
  br i1 %44, label %47, label %45, !prof !770

45:                                               ; preds = %36
  %46 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %11, i32 noundef %41) #25
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi ptr [ %46, %45 ], [ %11, %36 ]
  %49 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !277
  %51 = icmp eq ptr %50, null
  br i1 %51, label %85, label %52, !prof !771

52:                                               ; preds = %47
  %53 = load i32, ptr %48, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 39
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 8, !tbaa !200
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !199
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store ptr %62, ptr %50, align 8, !tbaa !200
  br label %93

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !199
  %71 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load i32, ptr %71, align 8, !tbaa !199
  %73 = add i32 %72, %70
  %74 = zext nneg i32 %60 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !199
  %77 = zext i8 %76 to i32
  %78 = freeze i32 %73
  %79 = srem i32 %78, %77
  %80 = sub nsw i32 %78, %79
  %81 = load ptr, ptr %6, align 8, !tbaa !278
  store ptr %62, ptr %81, align 8, !tbaa !200
  %82 = load ptr, ptr %49, align 8, !tbaa !277
  %83 = load ptr, ptr %82, align 8, !tbaa !200
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %80, ptr %84, align 8, !tbaa !199
  br label %93

85:                                               ; preds = %52, %47
  %86 = load ptr, ptr %6, align 8, !tbaa !278
  store ptr %48, ptr %86, align 8, !tbaa !200
  br label %93

87:                                               ; preds = %4
  %88 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 18
  %89 = load i8, ptr %88, align 8
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %93, !prof !772

92:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6324, ptr noundef nonnull @.str.1) #24
  br label %93

93:                                               ; preds = %92, %87, %85, %68, %67
  %94 = add nuw nsw i64 %5, 1
  %95 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %4, label %98, !prof !695, !llvm.loop !773

98:                                               ; preds = %93, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reload_adjust_reg_for_mode(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !173 {
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
define dso_local void @copy_replacements(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !173 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !200
  store ptr %1, ptr %4, align 8, !tbaa !200
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6336, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i32, ptr @n_replacements, align 4, !tbaa !204
  call fastcc void @copy_replacements_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %10) #25
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @copy_replacements_1(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #16 !prof !173 !PGOFuncName !774 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi i64 [ 0, %5 ], [ %37, %35 ]
  %10 = phi i32 [ %6, %5 ], [ %36, %35 ]
  %11 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9
  %12 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !277
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr @n_replacements, align 4, !tbaa !204
  %17 = sext i32 %10 to i64
  %18 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %17
  %19 = load ptr, ptr %11, align 8, !tbaa !278
  store ptr %19, ptr %18, align 8, !tbaa !278
  br label %27

20:                                               ; preds = %8
  %21 = load ptr, ptr %11, align 8, !tbaa !278
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = add nsw i32 %10, 1
  store i32 %24, ptr @n_replacements, align 4, !tbaa !204
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %25
  store ptr %1, ptr %26, align 8, !tbaa !278
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi i64 [ %17, %15 ], [ %25, %23 ]
  %29 = phi ptr [ %1, %15 ], [ null, %23 ]
  %30 = phi i32 [ %16, %15 ], [ %24, %23 ]
  %31 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !277
  %32 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 2
  %33 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 2
  %34 = load <2 x i32>, ptr %32, align 8, !tbaa !204
  store <2 x i32> %34, ptr %33, align 8, !tbaa !204
  br label %35

35:                                               ; preds = %27, %20
  %36 = phi i32 [ %10, %20 ], [ %30, %27 ]
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, %7
  br i1 %38, label %39, label %8, !llvm.loop !775

39:                                               ; preds = %35, %3
  %40 = load ptr, ptr %0, align 8, !tbaa !200
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !200
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !199
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %39
  %50 = load ptr, ptr %1, align 8, !tbaa !200
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %52 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %53 = zext i8 %47 to i64
  br label %54

54:                                               ; preds = %49, %78
  %55 = phi i64 [ %53, %49 ], [ %56, %78 ]
  %56 = add nsw i64 %55, -1
  %57 = getelementptr inbounds i8, ptr %45, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !199
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
  %64 = load ptr, ptr %63, align 8, !tbaa !199
  %65 = load i32, ptr %64, align 8, !tbaa !432
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  %69 = zext nneg i32 %65 to i64
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ %69, %67 ], [ %72, %70 ]
  %72 = add nsw i64 %71, -1
  %73 = load ptr, ptr %63, align 8, !tbaa !199
  %74 = getelementptr inbounds %struct.rtvec_def, ptr %73, i64 0, i32 1, i64 %72
  %75 = load ptr, ptr %68, align 8, !tbaa !199
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %72
  tail call fastcc void @copy_replacements_1(ptr noundef nonnull %74, ptr noundef nonnull %76, i32 noundef %2) #25
  %77 = icmp ugt i64 %71, 1
  br i1 %77, label %70, label %78, !llvm.loop !776

78:                                               ; preds = %70, %62, %54, %59
  %79 = icmp sgt i64 %55, 1
  br i1 %79, label %54, label %80, !llvm.loop !777

80:                                               ; preds = %78, %39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @move_replacements(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #11 !prof !173 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i64 [ 0, %5 ], [ %20, %19 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8
  %10 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !277
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %9, align 8, !tbaa !278
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  store ptr %1, ptr %9, align 8, !tbaa !278
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi ptr [ null, %16 ], [ %1, %7 ]
  store ptr %18, ptr %10, align 8, !tbaa !277
  br label %19

19:                                               ; preds = %17, %13
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %7, !llvm.loop !778

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_replacement(ptr noundef readonly %0) local_unnamed_addr #0 !prof !173 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %3
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %81

6:                                                ; preds = %1, %78
  %7 = phi ptr [ %79, %78 ], [ @replacements, %1 ]
  %8 = getelementptr inbounds %struct.replacement, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !275
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %10, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !260
  %13 = icmp eq ptr %12, null
  br i1 %13, label %78, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !278
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.replacement, ptr %7, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !279
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
  %31 = load ptr, ptr %30, align 8, !tbaa !277
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load i32, ptr %12, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !200
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !199
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef %44) #25
  %46 = load i32, ptr %44, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !199
  %51 = tail call i32 @subreg_regno_offset(i32 noundef %45, i32 noundef %48, i32 noundef %50, i32 noundef %41) #24
  %52 = add i32 %51, %42
  %53 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %52) #24
  br label %105

54:                                               ; preds = %33
  %55 = lshr i32 %34, 16
  %56 = and i32 %55, 255
  %57 = load ptr, ptr %0, align 8, !tbaa !200
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %105, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load i32, ptr %64, align 8, !tbaa !199
  %66 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load i32, ptr %66, align 8, !tbaa !199
  %68 = add i32 %67, %65
  %69 = zext nneg i32 %60 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !199
  %72 = zext i8 %71 to i32
  %73 = freeze i32 %68
  %74 = srem i32 %73, %72
  %75 = sub nsw i32 %73, %74
  %76 = load ptr, ptr %63, align 8, !tbaa !199
  %77 = tail call ptr @gen_rtx_SUBREG(i32 noundef %60, ptr noundef %76, i32 noundef %75) #24
  br label %105

78:                                               ; preds = %6, %29
  %79 = getelementptr inbounds %struct.replacement, ptr %7, i64 1
  %80 = icmp ult ptr %79, %4
  br i1 %80, label %6, label %81, !llvm.loop !779

81:                                               ; preds = %78, %1
  %82 = load ptr, ptr %0, align 8, !tbaa !200
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
  %88 = load ptr, ptr %0, align 8, !tbaa !200
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = tail call ptr @find_replacement(ptr noundef nonnull %89) #25
  %91 = load ptr, ptr %0, align 8, !tbaa !200
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !199
  %94 = icmp eq ptr %87, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !199
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
define internal fastcc i32 @refers_to_mem_for_reload_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !173 !PGOFuncName !780 {
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
  %8 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !200
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  br label %42

14:                                               ; preds = %1
  %15 = and i32 %2, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !199
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
  %29 = load i8, ptr %28, align 1, !tbaa !199
  %30 = icmp eq i8 %29, 101
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !199
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %33) #25, !range !238
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25, %37
  %41 = icmp ugt i64 %26, 1
  br i1 %41, label %25, label %42, !llvm.loop !781

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
define dso_local i32 @regno_clobbered_p(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !782 {
  %5 = icmp ult i32 %0, 53
  br i1 %5, label %7, label %6, !prof !212

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7261, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %4, %6
  %8 = zext i32 %0 to i64
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !199
  %12 = zext i8 %11 to i32
  %13 = add i32 %12, %0
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !199
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 25
  br i1 %18, label %23, label %19, !prof !213

19:                                               ; preds = %7
  %20 = icmp eq i32 %3, 1
  br i1 %20, label %21, label %35, !prof !213

21:                                               ; preds = %19
  %22 = trunc i32 %16 to i16
  switch i16 %22, label %68 [
    i16 23, label %23
    i16 15, label %37
  ], !prof !783

23:                                               ; preds = %21, %7
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !199
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %68

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #25
  %31 = icmp uge i32 %30, %0
  %32 = icmp ult i32 %30, %13
  %33 = select i1 %31, i1 %32, i1 false
  %34 = zext i1 %33 to i32
  br label %68

35:                                               ; preds = %19
  %36 = icmp eq i32 %17, 15
  br i1 %36, label %37, label %68, !prof !784

37:                                               ; preds = %21, %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !199
  %40 = load i32, ptr %39, align 8, !tbaa !432
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %68, label %42

42:                                               ; preds = %37
  %43 = icmp eq i32 %17, 23
  %44 = and i1 %20, %43
  %45 = zext nneg i32 %40 to i64
  br label %46

46:                                               ; preds = %42, %66
  %47 = phi i64 [ %45, %42 ], [ %48, %66 ]
  %48 = add nsw i64 %47, -1
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !200
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 25
  %54 = or i1 %53, %44
  br i1 %54, label %55, label %66

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !199
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #25
  %63 = icmp uge i32 %62, %0
  %64 = icmp ult i32 %62, %13
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %68, label %66

66:                                               ; preds = %46, %61, %55
  %67 = icmp ult i64 %47, 2
  br i1 %67, label %68, label %46, !llvm.loop !785

68:                                               ; preds = %61, %66, %37, %21, %23, %35, %29
  %69 = phi i32 [ %34, %29 ], [ 0, %35 ], [ 0, %23 ], [ 0, %21 ], [ 0, %37 ], [ 1, %61 ], [ 0, %66 ]
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_reload_to_stream(ptr noundef %0) local_unnamed_addr #0 !prof !173 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @stderr, align 8
  %4 = select i1 %2, ptr %3, ptr %0
  %5 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %142

7:                                                ; preds = %1, %136
  %8 = phi i64 [ %138, %136 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %9) #25
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !254
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !258
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !200
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef %19) #25
  %21 = load ptr, ptr %11, align 8, !tbaa !254
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %21, i32 noundef 24) #24
  %22 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %23

23:                                               ; preds = %14, %7
  %24 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !256
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !259
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !200
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef %32) #25
  %34 = load ptr, ptr %24, align 8, !tbaa !256
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %34, i32 noundef 24) #24
  %35 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %36

36:                                               ; preds = %27, %23
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !257
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !200
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef %41) #25
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !266
  %45 = sext i32 %44 to i64
  %46 = shl i64 %45, 2
  %47 = call ptr @llvm.load.relative.i64(ptr @reltable.debug_reload_to_stream, i64 %46)
  %48 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 12
  %49 = load i32, ptr %48, align 8, !tbaa !265
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
  %66 = load i32, ptr %65, align 4, !tbaa !261
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
  %85 = load ptr, ptr %84, align 8, !tbaa !262
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 17, i64 1, ptr %4)
  %89 = load ptr, ptr %84, align 8, !tbaa !262
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %89, i32 noundef 24) #24
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !264
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 18, i64 1, ptr %4)
  %96 = load ptr, ptr %91, align 8, !tbaa !264
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %96, i32 noundef 24) #24
  br label %97

97:                                               ; preds = %94, %90
  %98 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 11
  %99 = load ptr, ptr %98, align 8, !tbaa !260
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %4)
  %103 = load ptr, ptr %98, align 8, !tbaa !260
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %103, i32 noundef 24) #24
  br label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 13
  %106 = load i32, ptr %105, align 4, !tbaa !267
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.9, i32 noundef %106) #25
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ @.str.22, %108 ], [ @.str.9, %104 ]
  %112 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 14
  %113 = load i32, ptr %112, align 8, !tbaa !268
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull %111, i32 noundef %113) #25
  br label %117

117:                                              ; preds = %115, %110
  %118 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 15
  %119 = load i32, ptr %118, align 4, !tbaa !269
  %120 = icmp eq i32 %119, 2956
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = zext i32 %119 to i64
  %123 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !786
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef %124) #25
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi ptr [ @.str.22, %121 ], [ @.str.9, %117 ]
  %128 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 16
  %129 = load i32, ptr %128, align 8, !tbaa !270
  %130 = icmp eq i32 %129, 2956
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = zext i32 %129 to i64
  %133 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !786
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull %127, ptr noundef %134) #25
  br label %136

136:                                              ; preds = %131, %126
  %137 = tail call i32 @fputc(i32 10, ptr %4)
  %138 = add nuw nsw i64 %8, 1
  %139 = load i32, ptr @n_reloads, align 4, !tbaa !204
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %7, label %142, !llvm.loop !787

142:                                              ; preds = %136, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_reload() local_unnamed_addr #0 !prof !173 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !200
  tail call void @debug_reload_to_stream(ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !173 !PGOFuncName !788 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !199
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !199
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #24
  store i32 %8, ptr %2, align 8, !tbaa !199
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
define internal fastcc void @push_replacement(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #18 !prof !173 !PGOFuncName !789 {
  %4 = load i32, ptr @replace_reloads, align 4, !tbaa !204
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @n_replacements, align 4, !tbaa !204
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @n_replacements, align 4, !tbaa !204
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9
  %11 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !275
  store ptr %0, ptr %10, align 8, !tbaa !278
  %12 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 1
  store ptr null, ptr %12, align 8, !tbaa !277
  %13 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 3
  store i32 %2, ptr %13, align 4, !tbaa !279
  br label %14

14:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_memloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !173 !PGOFuncName !790 {
  %3 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = tail call ptr @eliminate_regs(ptr noundef %6, i32 noundef 0, ptr noundef null) #24
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call zeroext i8 @rtx_varies_p(ptr noundef %9, i8 noundef zeroext 0) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @copy_rtx(ptr noundef %9) #24
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %16 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = tail call ptr @replace_equiv_address_nv(ptr noundef %18, ptr noundef %15) #24
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call ptr @adjust_address_1(ptr noundef %19, i32 noundef %22, i64 noundef 0, i32 noundef 0, i32 noundef 1) #24
  %24 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %25 = getelementptr inbounds ptr, ptr %24, i64 %4
  %26 = load ptr, ptr %25, align 8, !tbaa !200
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
define internal fastcc void @push_reg_equiv_alt_mem(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !173 !PGOFuncName !791 {
  %3 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !200
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !199
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %12

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !199
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !llvm.loop !792

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !199
  %16 = tail call i32 @rtx_equal_p(ptr noundef %15, ptr noundef %1) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %8, label %27

18:                                               ; preds = %8
  %19 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !200
  %20 = getelementptr inbounds ptr, ptr %19, i64 %4
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi ptr [ %21, %18 ], [ null, %2 ]
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef 3, ptr noundef %1, ptr noundef %23) #24
  %25 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !200
  %26 = getelementptr inbounds ptr, ptr %25, i64 %4
  store ptr %24, ptr %26, align 8, !tbaa !200
  br label %27

27:                                               ; preds = %12, %22
  ret void
}

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reloads_subreg_address(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !prof !173 !PGOFuncName !793 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #25
  %11 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !200
  %15 = icmp eq ptr %14, null
  br i1 %15, label %225, label %16

16:                                               ; preds = %6
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %25 = getelementptr inbounds ptr, ptr %24, i64 %12
  %26 = load ptr, ptr %25, align 8, !tbaa !200
  %27 = tail call i32 @offsettable_memref_p(ptr noundef %26) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %8, align 8, !tbaa !199
  br label %31

31:                                               ; preds = %29, %18, %16
  %32 = phi ptr [ %30, %29 ], [ %9, %18 ], [ %9, %16 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %33 = tail call fastcc ptr @make_memloc(ptr noundef %32, i32 noundef %10) #25
  store ptr %33, ptr %7, align 8, !tbaa !200
  br label %45

34:                                               ; preds = %23
  %35 = load i32, ptr @num_not_at_initial_offset, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %225, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %38 = load ptr, ptr %8, align 8, !tbaa !199
  %39 = tail call fastcc ptr @make_memloc(ptr noundef %38, i32 noundef %10) #25
  store ptr %39, ptr %7, align 8, !tbaa !200
  %40 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %41 = getelementptr inbounds ptr, ptr %40, i64 %12
  %42 = load ptr, ptr %41, align 8, !tbaa !200
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
  %52 = load i8, ptr %51, align 1, !tbaa !199
  %53 = zext i8 %52 to i32
  %54 = load ptr, ptr %8, align 8, !tbaa !199
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !199
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !199
  %63 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !199
  %65 = sext i32 %62 to i64
  %66 = tail call ptr @plus_constant(ptr noundef %64, i64 noundef %65) #24
  store ptr %66, ptr %63, align 8, !tbaa !199
  %67 = load i32, ptr %0, align 8
  %68 = and i32 %67, 16711680
  %69 = load i32, ptr %46, align 8
  %70 = and i32 %69, -16711681
  %71 = or disjoint i32 %70, %68
  store i32 %71, ptr %46, align 8
  %72 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !199
  %74 = icmp eq ptr %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %45
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !794
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call ptr @plus_constant(ptr noundef nonnull %77, i64 noundef %65) #24
  tail call void @set_mem_offset(ptr noundef nonnull %46, ptr noundef %80) #24
  %81 = load ptr, ptr %72, align 8, !tbaa !199
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %75, %79
  %84 = phi ptr [ %81, %79 ], [ %73, %75 ]
  %85 = getelementptr inbounds %struct.mem_attrs, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !795
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
  %96 = load i8, ptr %95, align 1, !tbaa !199
  %97 = zext i8 %96 to i64
  %98 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %97) #24
  %99 = icmp eq ptr %98, null
  br i1 %99, label %125, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr %72, align 8, !tbaa !199
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %83, %100
  %104 = phi ptr [ %101, %100 ], [ %84, %83 ]
  %105 = getelementptr inbounds %struct.mem_attrs, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !795
  br label %117

107:                                              ; preds = %100
  %108 = load i32, ptr %46, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = icmp ne i32 %110, 1
  tail call void @llvm.assume(i1 %111)
  %112 = zext nneg i32 %110 to i64
  %113 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !199
  %115 = zext i8 %114 to i64
  %116 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %115) #24
  br label %117

117:                                              ; preds = %107, %103
  %118 = phi ptr [ %106, %103 ], [ %116, %107 ]
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !199
  %121 = zext i8 %52 to i64
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %121) #24
  tail call void @set_mem_size(ptr noundef nonnull %46, ptr noundef %124) #24
  br label %125

125:                                              ; preds = %88, %123, %117, %93, %83
  %126 = icmp ugt i8 %52, %60
  %127 = load ptr, ptr %63, align 8, !tbaa !199
  br i1 %126, label %128, label %162

128:                                              ; preds = %125
  %129 = load i32, ptr %127, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 49
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %134 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !199
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 30
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !199
  %142 = zext i8 %52 to i64
  %143 = srem i64 %141, %142
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %222

145:                                              ; preds = %139, %132
  %146 = load ptr, ptr %133, align 8, !tbaa !199
  %147 = load i32, ptr %146, align 8
  br label %148

148:                                              ; preds = %145, %128
  %149 = phi i32 [ %147, %145 ], [ %129, %128 ]
  %150 = phi ptr [ %146, %145 ], [ %127, %128 ]
  %151 = and i32 %149, 65535
  %152 = icmp eq i32 %151, 37
  br i1 %152, label %153, label %222

153:                                              ; preds = %148
  %154 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !796
  %155 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %150) #25
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %154, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !199
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
  %169 = load ptr, ptr %7, align 8, !tbaa !200
  %170 = call i32 @rtx_equal_p(ptr noundef %169, ptr noundef nonnull %46) #24
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load ptr, ptr %7, align 8, !tbaa !200
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %10, ptr noundef %173) #25
  br label %174

174:                                              ; preds = %172, %168, %162
  %175 = icmp eq i32 %166, 0
  br i1 %175, label %176, label %205

176:                                              ; preds = %174
  %177 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %178 = getelementptr inbounds ptr, ptr %177, i64 %12
  %179 = load ptr, ptr %178, align 8, !tbaa !200
  %180 = icmp eq ptr %179, null
  br i1 %180, label %205, label %181

181:                                              ; preds = %176
  %182 = load i32, ptr %0, align 8
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !199
  %187 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !199
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.mem_attrs, ptr %188, i64 0, i32 5
  %192 = load i8, ptr %191, align 8, !tbaa !201
  br label %193

193:                                              ; preds = %181, %190
  %194 = phi i8 [ %192, %190 ], [ 0, %181 ]
  %195 = call i32 @strict_memory_address_addr_space_p(i32 noundef %184, ptr noundef %186, i8 noundef zeroext %194) #25, !range !203
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %193
  %198 = load ptr, ptr %7, align 8, !tbaa !200
  %199 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !199
  %201 = load i32, ptr %200, align 8
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = call i32 @push_reload(ptr noundef nonnull %200, ptr noundef null, ptr noundef nonnull %199, ptr noundef null, i32 noundef 13, i32 noundef %203, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #25
  br label %205

205:                                              ; preds = %197, %193, %176, %174
  %206 = load i32, ptr @replace_reloads, align 4, !tbaa !204
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %205
  %209 = sext i32 %2 to i64
  %210 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !200
  %212 = icmp eq ptr %211, %0
  br i1 %212, label %220, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr %8, align 8, !tbaa !199
  %215 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %214) #24
  %216 = call ptr @emit_insn_before(ptr noundef %215, ptr noundef %5) #24
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, -16711681
  %219 = or disjoint i32 %218, 917504
  store i32 %219, ptr %216, align 8
  br label %220

220:                                              ; preds = %213, %208, %205
  %221 = load ptr, ptr %7, align 8, !tbaa !200
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
define internal fastcc void @find_reloads_address_part(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !prof !173 !PGOFuncName !805 {
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !200
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !204
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
  store ptr %24, ptr %8, align 8, !tbaa !200
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !199
  %27 = call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %8, ptr noundef %26, ptr noundef nonnull %25, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null) #25
  %28 = load ptr, ptr %8, align 8, !tbaa !200
  br label %65

29:                                               ; preds = %21, %7
  %30 = phi i32 [ %22, %21 ], [ %9, %7 ]
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !199
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !204
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %65

42:                                               ; preds = %33
  %43 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %35) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %34, align 8, !tbaa !199
  %47 = tail call i32 @ix86_preferred_reload_class(ptr noundef %46, i32 noundef %2) #24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45, %42
  %50 = load i32, ptr %0, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load ptr, ptr %34, align 8, !tbaa !199
  %54 = tail call ptr @force_const_mem(i32 noundef %52, ptr noundef %53) #24
  %55 = load i32, ptr %0, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !199
  %60 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %57, ptr noundef %59, ptr noundef %54) #24
  store ptr %60, ptr %8, align 8, !tbaa !200
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !199
  %64 = tail call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %61, ptr noundef %63, ptr noundef nonnull %62, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null) #25
  br label %65

65:                                               ; preds = %29, %33, %45, %49, %23
  %66 = phi ptr [ %0, %29 ], [ %0, %33 ], [ %0, %45 ], [ %60, %49 ], [ %28, %23 ]
  %67 = call i32 @push_reload(ptr noundef %66, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %0) unnamed_addr #8 !prof !782 !PGOFuncName !806 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %11, !prof !213

3:                                                ; preds = %1
  %4 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !230
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
define internal fastcc ptr @subst_reg_equivs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !807 !PGOFuncName !808 {
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
  ], !prof !809

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !200
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !810

13:                                               ; preds = %6
  store i1 true, ptr @subst_reg_equivs_changed, align 4
  br label %68

14:                                               ; preds = %6
  %15 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %16 = getelementptr inbounds ptr, ptr %15, i64 %9
  %17 = load ptr, ptr %16, align 8, !tbaa !200
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19, !prof !810

19:                                               ; preds = %14
  %20 = load i32, ptr @num_not_at_initial_offset, align 4, !tbaa !204
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %68, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %7) #25
  %24 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %25 = getelementptr inbounds ptr, ptr %24, i64 %9
  %26 = load ptr, ptr %25, align 8, !tbaa !200
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
  %37 = load ptr, ptr %36, align 8, !tbaa !199
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !200
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %46, !prof !811

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %68, label %46

46:                                               ; preds = %2, %35, %40
  %47 = zext nneg i32 %4 to i64
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !200
  %50 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !199
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %68, label %53, !prof !812

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %51 to i64
  br label %56

56:                                               ; preds = %53, %66
  %57 = phi i64 [ %55, %53 ], [ %58, %66 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !199
  %61 = icmp eq i8 %60, 101
  br i1 %61, label %62, label %66, !prof !813

62:                                               ; preds = %56
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !199
  %65 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %64, ptr noundef %1) #25
  store ptr %65, ptr %63, align 8, !tbaa !199
  br label %66

66:                                               ; preds = %56, %62
  %67 = icmp ugt i64 %57, 1
  br i1 %67, label %56, label %68, !prof !814, !llvm.loop !815

68:                                               ; preds = %66, %46, %29, %13, %19, %14, %22, %40, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %69 = phi ptr [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %40 ], [ %11, %13 ], [ %23, %29 ], [ %0, %19 ], [ %0, %14 ], [ %0, %22 ], [ %0, %46 ], [ %0, %66 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @maybe_memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !173 !PGOFuncName !816 {
  %5 = load ptr, ptr %3, align 8, !tbaa !200
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = tail call i32 @max_reg_num() #24
  %10 = tail call ptr @gen_rtx_REG(i32 noundef %8, i32 noundef %9) #24
  store ptr %10, ptr %3, align 8, !tbaa !200
  %11 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) #24
  store ptr %5, ptr %3, align 8, !tbaa !200
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_reloads_address_1(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 !prof !173 !PGOFuncName !817 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  br label %13

13:                                               ; preds = %189, %9
  %14 = phi ptr [ %0, %9 ], [ %190, %189 ]
  %15 = phi i32 [ %1, %9 ], [ %191, %189 ]
  %16 = phi ptr [ %4, %9 ], [ %192, %189 ]
  %17 = phi i1 [ false, %9 ], [ true, %189 ]
  store ptr %14, ptr %10, align 8, !tbaa !200
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
  %23 = load ptr, ptr %22, align 8, !tbaa !199
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !199
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = load i32, ptr %25, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %27, 39
  br i1 %30, label %31, label %53

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !199
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #25
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, ptr @word_mode, align 4, !tbaa !204
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #25
  %43 = lshr i32 %34, 16
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load i32, ptr %45, align 8, !tbaa !199
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
  %61 = load ptr, ptr %60, align 8, !tbaa !199
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
  %72 = load i32, ptr %71, align 8, !tbaa !199
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
  %86 = load ptr, ptr %22, align 8, !tbaa !199
  %87 = icmp eq i32 %6, 3
  %88 = icmp eq i32 %6, 5
  %89 = select i1 %88, i32 6, i32 %6
  %90 = select i1 %87, i32 4, i32 %89
  %91 = tail call fastcc i32 @find_reloads_address(i32 noundef %85, ptr noundef %16, ptr noundef %86, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %90, i32 noundef %7, ptr noundef %8) #25
  %92 = load ptr, ptr %16, align 8, !tbaa !200
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
  %126 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %127 = getelementptr inbounds i16, ptr %126, i64 %122
  %128 = load i16, ptr %127, align 2, !tbaa !230
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
  %147 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %148 = getelementptr inbounds i16, ptr %147, i64 %143
  %149 = load i16, ptr %148, align 2, !tbaa !230
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
  %172 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %173 = getelementptr inbounds i16, ptr %172, i64 %168
  %174 = load i16, ptr %173, align 2, !tbaa !230
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
  %199 = load i16, ptr %198, align 2, !tbaa !230
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
  %217 = load ptr, ptr %216, align 8, !tbaa !199
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 65535
  %220 = add nsw i32 %219, -49
  %221 = icmp ult i32 %220, 2
  br i1 %221, label %222, label %726

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !199
  %225 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !199
  %227 = icmp eq ptr %224, %226
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5673, ptr noundef nonnull @.str.1) #24
  br label %229

229:                                              ; preds = %222, %228
  %230 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1, i32 0, i32 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !199
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
  %242 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %243 = getelementptr inbounds i16, ptr %242, i64 %238
  %244 = load i16, ptr %243, align 2, !tbaa !230
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
  %254 = load ptr, ptr %225, align 8, !tbaa !199
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 37
  br i1 %257, label %260, label %258

258:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5695, ptr noundef nonnull @.str.1) #24
  %259 = load ptr, ptr %225, align 8, !tbaa !199
  br label %260

260:                                              ; preds = %253, %258
  %261 = phi ptr [ %254, %253 ], [ %259, %258 ]
  %262 = tail call fastcc i32 @rhs_regno(ptr noundef %261) #25
  %263 = icmp slt i32 %262, 53
  br i1 %263, label %271, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %266 = zext nneg i32 %262 to i64
  %267 = getelementptr inbounds ptr, ptr %265, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !200
  %269 = icmp eq ptr %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5702, ptr noundef nonnull @.str.1) #24
  br label %271

271:                                              ; preds = %260, %264, %270
  %272 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %273 = sext i32 %262 to i64
  %274 = getelementptr inbounds ptr, ptr %272, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !200
  %276 = icmp eq ptr %275, null
  br i1 %276, label %317, label %277

277:                                              ; preds = %271
  %278 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %279 = getelementptr inbounds ptr, ptr %278, i64 %273
  %280 = load ptr, ptr %279, align 8, !tbaa !200
  %281 = icmp ne ptr %280, null
  %282 = load i32, ptr @num_not_at_initial_offset, align 4
  %283 = icmp ne i32 %282, 0
  %284 = select i1 %281, i1 true, i1 %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  %286 = load ptr, ptr %223, align 8, !tbaa !199
  %287 = tail call fastcc ptr @make_memloc(ptr noundef %286, i32 noundef %262) #25
  store ptr %287, ptr %11, align 8, !tbaa !200
  %288 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %289 = getelementptr inbounds ptr, ptr %288, i64 %273
  %290 = load ptr, ptr %289, align 8, !tbaa !200
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %294 = getelementptr inbounds ptr, ptr %293, i64 %273
  %295 = load ptr, ptr %294, align 8, !tbaa !200
  %296 = tail call i32 @rtx_equal_p(ptr noundef %287, ptr noundef %295) #24
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %292, %285
  %299 = load i32, ptr %287, align 8
  %300 = lshr i32 %299, 16
  %301 = and i32 %300, 255
  %302 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !199
  %304 = call fastcc i32 @find_reloads_address(i32 noundef %301, ptr noundef nonnull %11, ptr noundef %303, ptr noundef nonnull %302, i32 noundef %5, i32 noundef 9, i32 noundef %7, ptr noundef %8) #25
  %305 = load ptr, ptr %11, align 8, !tbaa !200
  %306 = call i32 @rtx_equal_p(ptr noundef %305, ptr noundef nonnull %287) #24
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %298
  %309 = load ptr, ptr %11, align 8, !tbaa !200
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %262, ptr noundef %309) #25
  br label %310

310:                                              ; preds = %308, %298
  %311 = load ptr, ptr %11, align 8, !tbaa !200
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
  %318 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %319 = getelementptr inbounds i16, ptr %318, i64 %273
  %320 = load i16, ptr %319, align 2, !tbaa !230
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
  %330 = load ptr, ptr %225, align 8, !tbaa !199
  %331 = load ptr, ptr %223, align 8, !tbaa !199
  %332 = tail call i32 @push_reload(ptr noundef %330, ptr noundef %331, ptr noundef nonnull %225, ptr noundef nonnull %223, i32 noundef 13, i32 noundef %329, i32 noundef %329, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef 9) #25
  br label %726

333:                                              ; preds = %13, %13, %13, %13
  %334 = select i1 %19, i32 11, i32 13
  %335 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !199
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 37
  br i1 %339, label %340, label %726

340:                                              ; preds = %333
  %341 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %336) #25
  %342 = icmp slt i32 %341, 53
  br i1 %342, label %350, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %345 = zext nneg i32 %341 to i64
  %346 = getelementptr inbounds ptr, ptr %344, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !200
  %348 = icmp eq ptr %347, null
  br i1 %348, label %350, label %349

349:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5773, ptr noundef nonnull @.str.1) #24
  br label %350

350:                                              ; preds = %340, %343, %349
  %351 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %352 = sext i32 %341 to i64
  %353 = getelementptr inbounds ptr, ptr %351, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !200
  %355 = icmp eq ptr %354, null
  br i1 %355, label %398, label %356

356:                                              ; preds = %350
  %357 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %358 = getelementptr inbounds ptr, ptr %357, i64 %352
  %359 = load ptr, ptr %358, align 8, !tbaa !200
  %360 = icmp ne ptr %359, null
  %361 = load i32, ptr @num_not_at_initial_offset, align 4
  %362 = icmp ne i32 %361, 0
  %363 = select i1 %360, i1 true, i1 %362
  br i1 %363, label %364, label %398

364:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  %365 = load ptr, ptr %335, align 8, !tbaa !199
  %366 = tail call fastcc ptr @make_memloc(ptr noundef %365, i32 noundef %341) #25
  store ptr %366, ptr %12, align 8, !tbaa !200
  %367 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %368 = getelementptr inbounds ptr, ptr %367, i64 %352
  %369 = load ptr, ptr %368, align 8, !tbaa !200
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %364
  %372 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %373 = getelementptr inbounds ptr, ptr %372, i64 %352
  %374 = load ptr, ptr %373, align 8, !tbaa !200
  %375 = tail call i32 @rtx_equal_p(ptr noundef %366, ptr noundef %374) #24
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %396

377:                                              ; preds = %371, %364
  %378 = load i32, ptr %366, align 8
  %379 = lshr i32 %378, 16
  %380 = and i32 %379, 255
  %381 = getelementptr inbounds %struct.rtx_def, ptr %366, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !199
  %383 = call fastcc i32 @find_reloads_address(i32 noundef %380, ptr noundef nonnull %12, ptr noundef %382, ptr noundef nonnull %381, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  %384 = load ptr, ptr %12, align 8, !tbaa !200
  %385 = call i32 @rtx_equal_p(ptr noundef %384, ptr noundef nonnull %366) #24
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %377
  %388 = load ptr, ptr %12, align 8, !tbaa !200
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %341, ptr noundef %388) #25
  br label %389

389:                                              ; preds = %387, %377
  %390 = load i32, ptr %14, align 8
  %391 = and i32 %390, 65535
  %392 = lshr i32 %390, 16
  %393 = and i32 %392, 255
  %394 = load ptr, ptr %12, align 8, !tbaa !200
  %395 = call ptr @gen_rtx_fmt_e_stat(i32 noundef %391, i32 noundef %393, ptr noundef %394) #24
  store ptr %395, ptr %10, align 8, !tbaa !200
  br label %396

396:                                              ; preds = %389, %371
  %397 = phi ptr [ %395, %389 ], [ %14, %371 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  br label %398

398:                                              ; preds = %356, %396, %350
  %399 = phi ptr [ %14, %356 ], [ %397, %396 ], [ %14, %350 ]
  %400 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %401 = getelementptr inbounds i16, ptr %400, i64 %352
  %402 = load i16, ptr %401, align 2, !tbaa !230
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
  %420 = load i16, ptr %419, align 2, !tbaa !230
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
  %429 = load ptr, ptr %428, align 8, !tbaa !199
  %430 = load i32, ptr %429, align 8
  %431 = and i32 %430, 65535
  %432 = icmp eq i32 %431, 43
  br i1 %432, label %438, label %433

433:                                              ; preds = %427
  %434 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %435 = sext i32 %405 to i64
  %436 = getelementptr inbounds ptr, ptr %434, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !200
  br label %438

438:                                              ; preds = %427, %433
  %439 = phi ptr [ %437, %433 ], [ %429, %427 ]
  %440 = load i32, ptr %399, align 8
  %441 = lshr i32 %440, 16
  %442 = and i32 %441, 255
  %443 = zext nneg i32 %442 to i64
  %444 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !818
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
  %464 = load ptr, ptr %463, align 8, !tbaa !196
  %465 = load ptr, ptr %464, align 8, !tbaa !820
  %466 = load i32, ptr %399, align 8
  %467 = lshr i32 %466, 16
  %468 = and i32 %467, 255
  %469 = call i32 %465(ptr noundef nonnull %439, i32 noundef %468) #24
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %479, label %471

471:                                              ; preds = %461
  %472 = getelementptr inbounds %struct.insn_operand_data, ptr %464, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !820
  %474 = load i32, ptr %399, align 8
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  %477 = call i32 %473(ptr noundef nonnull %439, i32 noundef %476) #24
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %471, %461, %459
  %480 = load ptr, ptr %428, align 8, !tbaa !199
  store ptr %480, ptr %10, align 8, !tbaa !200
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
  %490 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %491 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 1
  %492 = load ptr, ptr %491, align 8, !tbaa !199
  %493 = load ptr, ptr %335, align 8, !tbaa !199
  %494 = call fastcc i32 @find_inc_amount(ptr noundef %492, ptr noundef %493) #25
  %495 = sext i32 %489 to i64
  %496 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %495, i32 7
  store i32 %494, ptr %496, align 4, !tbaa !261
  br label %726

497:                                              ; preds = %499, %726
  %498 = phi i32 [ %728, %726 ], [ %510, %499 ]
  ret i32 %498

499:                                              ; preds = %13, %13, %13
  %500 = and i32 %18, 65535
  %501 = select i1 %19, i32 11, i32 13
  %502 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !199
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
  %516 = load ptr, ptr %515, align 8, !tbaa !199
  %517 = icmp eq i32 %6, 3
  %518 = icmp eq i32 %6, 5
  %519 = select i1 %518, i32 6, i32 %6
  %520 = select i1 %517, i32 4, i32 %519
  %521 = tail call fastcc i32 @find_reloads_address(i32 noundef %514, ptr noundef %16, ptr noundef %516, ptr noundef nonnull %515, i32 noundef %5, i32 noundef %520, i32 noundef %7, ptr noundef %8) #25
  %522 = load ptr, ptr %16, align 8, !tbaa !200
  %523 = load i32, ptr %14, align 8
  %524 = lshr i32 %523, 16
  %525 = and i32 %524, 255
  %526 = tail call i32 @push_reload(ptr noundef %522, ptr noundef null, ptr noundef nonnull %16, ptr noundef null, i32 noundef %512, i32 noundef %525, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

527:                                              ; preds = %13
  %528 = select i1 %19, i32 11, i32 13
  %529 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #25
  %530 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %531 = sext i32 %529 to i64
  %532 = getelementptr inbounds ptr, ptr %530, i64 %531
  %533 = load ptr, ptr %532, align 8, !tbaa !200
  %534 = icmp eq ptr %533, null
  br i1 %534, label %538, label %535

535:                                              ; preds = %527
  %536 = lshr i32 %18, 16
  %537 = and i32 %536, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %533, ptr noundef %16, i32 noundef %528, i32 noundef %537, i32 noundef %5, i32 noundef %6, i32 noundef %7) #25
  br label %726

538:                                              ; preds = %527
  %539 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !200
  %540 = getelementptr inbounds ptr, ptr %539, i64 %531
  %541 = load ptr, ptr %540, align 8, !tbaa !200
  %542 = icmp eq ptr %541, null
  br i1 %542, label %579, label %543

543:                                              ; preds = %538
  %544 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %545 = getelementptr inbounds ptr, ptr %544, i64 %531
  %546 = load ptr, ptr %545, align 8, !tbaa !200
  %547 = icmp ne ptr %546, null
  %548 = load i32, ptr @num_not_at_initial_offset, align 4
  %549 = icmp ne i32 %548, 0
  %550 = select i1 %547, i1 true, i1 %549
  br i1 %550, label %551, label %579

551:                                              ; preds = %543
  %552 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %14, i32 noundef %529) #25
  %553 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !200
  %554 = getelementptr inbounds ptr, ptr %553, i64 %531
  %555 = load ptr, ptr %554, align 8, !tbaa !200
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %563

557:                                              ; preds = %551
  %558 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !200
  %559 = getelementptr inbounds ptr, ptr %558, i64 %531
  %560 = load ptr, ptr %559, align 8, !tbaa !200
  %561 = tail call i32 @rtx_equal_p(ptr noundef %552, ptr noundef %560) #24
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %579

563:                                              ; preds = %557, %551
  store ptr %552, ptr %10, align 8, !tbaa !200
  %564 = load i32, ptr %552, align 8
  %565 = lshr i32 %564, 16
  %566 = and i32 %565, 255
  %567 = getelementptr inbounds %struct.rtx_def, ptr %552, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !199
  %569 = icmp eq i32 %6, 3
  %570 = icmp eq i32 %6, 5
  %571 = select i1 %570, i32 6, i32 %6
  %572 = select i1 %569, i32 4, i32 %571
  %573 = call fastcc i32 @find_reloads_address(i32 noundef %566, ptr noundef nonnull %10, ptr noundef %568, ptr noundef nonnull %567, i32 noundef %5, i32 noundef %572, i32 noundef %7, ptr noundef %8) #25
  %574 = load ptr, ptr %10, align 8, !tbaa !200
  %575 = call i32 @rtx_equal_p(ptr noundef %574, ptr noundef nonnull %552) #24
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %563
  %578 = load ptr, ptr %10, align 8, !tbaa !200
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %529, ptr noundef %578) #25
  br label %579

579:                                              ; preds = %557, %577, %563, %543, %538
  %580 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %581 = getelementptr inbounds i16, ptr %580, i64 %531
  %582 = load i16, ptr %581, align 2, !tbaa !230
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
  %600 = load i16, ptr %599, align 2, !tbaa !230
  %601 = icmp ult i16 %600, 7
  br i1 %601, label %613, label %602

602:                                              ; preds = %598
  %603 = sext i16 %600 to i64
  %604 = and i64 %603, 4294967295
  %605 = add nsw i64 %604, -37
  %606 = icmp ult i64 %605, 8
  br i1 %606, label %613, label %607

607:                                              ; preds = %602, %589, %579
  %608 = load ptr, ptr %10, align 8, !tbaa !200
  %609 = load i32, ptr %608, align 8
  %610 = lshr i32 %609, 16
  %611 = and i32 %610, 255
  %612 = call i32 @push_reload(ptr noundef nonnull %608, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %528, i32 noundef %611, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

613:                                              ; preds = %602, %598, %594, %592, %589
  %614 = load ptr, ptr @this_insn, align 8, !tbaa !200
  %615 = load ptr, ptr %10, align 8, !tbaa !200
  %616 = load i32, ptr %615, align 8
  %617 = lshr i32 %616, 16
  %618 = and i32 %617, 255
  %619 = call i32 @regno_clobbered_p(i32 noundef %585, ptr noundef %614, i32 noundef %618, i32 noundef 0) #25
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %726, label %621

621:                                              ; preds = %613
  %622 = load ptr, ptr %10, align 8, !tbaa !200
  %623 = load i32, ptr %622, align 8
  %624 = lshr i32 %623, 16
  %625 = and i32 %624, 255
  %626 = call i32 @push_reload(ptr noundef nonnull %622, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %528, i32 noundef %625, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %726

627:                                              ; preds = %13
  %628 = select i1 %19, i32 11, i32 13
  %629 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %630 = load ptr, ptr %629, align 8, !tbaa !199
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
  %650 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %651 = getelementptr inbounds i16, ptr %650, i64 %646
  %652 = load i16, ptr %651, align 2, !tbaa !230
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
  %667 = load ptr, ptr %629, align 8, !tbaa !199
  %668 = load i32, ptr %667, align 8
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  br i1 %666, label %671, label %678

671:                                              ; preds = %664
  %672 = zext nneg i32 %670 to i64
  %673 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %672
  %674 = load i8, ptr %673, align 1, !tbaa !199
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
  %683 = load i8, ptr %682, align 1, !tbaa !199
  %684 = zext i8 %683 to i32
  %685 = add nuw nsw i32 %684, 3
  %686 = lshr i32 %685, 2
  br label %687

687:                                              ; preds = %680, %678, %671
  %688 = phi i32 [ %677, %671 ], [ %686, %680 ], [ 3, %678 ]
  %689 = zext nneg i32 %628 to i64
  %690 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !204
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
  %707 = load ptr, ptr %706, align 8, !tbaa !200
  %708 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %705
  %709 = load i8, ptr %708, align 1, !tbaa !199
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
  %718 = load i8, ptr %717, align 1, !tbaa !199
  %719 = icmp eq i8 %718, 101
  br i1 %719, label %720, label %724

720:                                              ; preds = %714
  %721 = getelementptr inbounds [1 x %union.rtunion_def], ptr %712, i64 0, i64 %716
  %722 = load ptr, ptr %721, align 8, !tbaa !199
  %723 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %722, i32 noundef %15, i32 noundef %704, i32 noundef 38, ptr noundef nonnull %721, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %724

724:                                              ; preds = %714, %720
  %725 = icmp ugt i64 %715, 1
  br i1 %725, label %714, label %726, !llvm.loop !821

726:                                              ; preds = %156, %135, %211, %724, %703, %479, %485, %621, %607, %535, %613, %82, %693, %214, %326, %310, %659, %333, %409, %412, %414, %418, %422, %317, %511
  %727 = phi i32 [ 1, %693 ], [ 1, %511 ], [ 0, %317 ], [ 0, %409 ], [ 0, %412 ], [ 0, %414 ], [ 0, %418 ], [ 0, %422 ], [ 0, %333 ], [ 1, %659 ], [ 0, %310 ], [ 0, %214 ], [ 0, %326 ], [ 1, %82 ], [ 0, %613 ], [ 1, %535 ], [ 1, %607 ], [ 1, %621 ], [ 1, %485 ], [ 0, %479 ], [ 0, %703 ], [ 0, %724 ], [ 0, %211 ], [ 0, %135 ], [ 0, %156 ]
  %728 = select i1 %17, i32 0, i32 %727
  br label %497
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @subst_indexed_address(ptr noundef readonly %0) unnamed_addr #0 !prof !173 !PGOFuncName !822 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 49
  br i1 %4, label %5, label %99

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !199
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !199
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %15 = icmp sgt i32 %14, 52
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !230
  %21 = icmp slt i16 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %24 = getelementptr inbounds ptr, ptr %23, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !200
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
  %35 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %36 = zext nneg i32 %32 to i64
  %37 = getelementptr inbounds i16, ptr %35, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !230
  %39 = icmp slt i16 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !200
  %42 = getelementptr inbounds ptr, ptr %41, i64 %36
  %43 = load ptr, ptr %42, align 8, !tbaa !200
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
  %72 = load ptr, ptr %71, align 8, !tbaa !199
  %73 = load ptr, ptr %70, align 8, !tbaa !199
  br label %80

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %76 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !199
  %78 = load ptr, ptr %75, align 8, !tbaa !199
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
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #8 !prof !782 !PGOFuncName !823 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %21, label %3, !prof !212

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = add nsw i64 %4, -37
  %6 = icmp ult i64 %5, 8
  %7 = and i32 %0, -5
  %8 = icmp eq i32 %7, 16
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !200
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !230
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
define internal fastcc i32 @find_inc_amount(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #10 !prof !173 !PGOFuncName !824 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !199
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65534
  %11 = add nsw i32 %10, -74
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !199
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = lshr i32 %3, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !199
  %23 = zext i8 %22 to i32
  br label %88

24:                                               ; preds = %6
  %25 = icmp eq i32 %10, 78
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 49
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !199
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !199
  %37 = icmp eq ptr %34, %36
  %38 = icmp eq ptr %34, %1
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !199
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !199
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  br label %88

51:                                               ; preds = %13, %40, %32, %26, %24, %2
  %52 = zext nneg i32 %4 to i64
  %53 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !200
  %55 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !199
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
  %65 = load i8, ptr %64, align 1, !tbaa !199
  switch i8 %65, label %86 [
    i8 101, label %66
    i8 69, label %71
  ]

66:                                               ; preds = %61
  %67 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !199
  %69 = tail call fastcc i32 @find_inc_amount(ptr noundef %68, ptr noundef %1) #25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %88

71:                                               ; preds = %61
  %72 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %63
  %73 = load ptr, ptr %72, align 8, !tbaa !199
  %74 = load i32, ptr %73, align 8, !tbaa !432
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
  %83 = load ptr, ptr %82, align 8, !tbaa !200
  %84 = tail call fastcc i32 @find_inc_amount(ptr noundef %83, ptr noundef %1) #25
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %76, label %88, !llvm.loop !825

86:                                               ; preds = %76, %61, %66
  %87 = icmp sgt i64 %62, 1
  br i1 %87, label %61, label %88, !llvm.loop !826

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!172}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!35 = !{ptr @find_reloads_address, ptr @rhs_regno, i64 164231}
!36 = !{ptr @find_reloads_address, ptr @find_reloads_address_part, i64 1}
!37 = !{ptr @find_reloads_address, ptr @make_memloc, i64 1}
!38 = !{ptr @find_reloads_address, ptr @strict_memory_address_addr_space_p, i64 181157}
!39 = !{ptr @find_reloads_address, ptr @regno_ok_for_base_p, i64 137968}
!40 = !{ptr @find_reloads_address, ptr @regno_clobbered_p, i64 137966}
!41 = !{ptr @find_reloads_address, ptr @push_reload, i64 4}
!42 = !{ptr @find_reloads_address, ptr @subst_reg_equivs, i64 154896}
!43 = !{ptr @find_reloads_address, ptr @maybe_memory_address_addr_space_p, i64 1}
!44 = !{ptr @find_reloads_address, ptr @find_reloads_address_1, i64 1}
!45 = !{ptr @push_reload, ptr @rhs_regno, i64 2662}
!46 = !{ptr @push_reload, ptr @fancy_abort, i64 4}
!47 = !{ptr @push_reload, ptr @subreg_lowpart_p, i64 2}
!48 = !{ptr @push_reload, ptr @ix86_cannot_change_mode_class, i64 2}
!49 = !{ptr @push_reload, ptr @reload_inner_reg_of_subreg, i64 320174}
!50 = !{ptr @push_reload, ptr @subreg_regno_offset, i64 2}
!51 = !{ptr @push_reload, ptr @find_valid_class, i64 2}
!52 = !{ptr @push_reload, ptr @push_reload, i64 2}
!53 = !{ptr @push_reload, ptr @ix86_preferred_reload_class, i64 155922}
!54 = !{ptr @push_reload, ptr @ix86_preferred_output_reload_class, i64 164252}
!55 = !{ptr @push_reload, ptr @ix86_hard_regno_mode_ok, i64 319}
!56 = !{ptr @push_reload, ptr @in_hard_reg_set_p, i64 12}
!57 = !{ptr @push_reload, ptr @error_for_asm, i64 1}
!58 = !{ptr @push_reload, ptr @gen_rtx_fmt_e_stat, i64 1}
!59 = !{ptr @push_reload, ptr @find_reusable_reload, i64 320173}
!60 = !{ptr @push_reload, ptr @push_secondary_reload, i64 320171}
!61 = !{ptr @push_reload, ptr @reg_or_subregno, i64 1380}
!62 = !{ptr @push_reload, ptr @ix86_secondary_memory_needed, i64 86}
!63 = !{ptr @push_reload, ptr @get_secondary_mem, i64 2}
!64 = !{ptr @push_reload, ptr @reg_class_subset_p, i64 1}
!65 = !{ptr @push_reload, ptr @reg_mentioned_p, i64 758}
!66 = !{ptr @push_reload, ptr @df_lr_get_bb_info, i64 154}
!67 = !{ptr @push_reload, ptr @bitmap_bit_p, i64 154}
!68 = !{ptr @push_reload, ptr @end_hard_regno, i64 155}
!69 = !{ptr @push_reload, ptr @refers_to_regno_for_reload_p, i64 154}
!70 = !{ptr @push_reload, ptr @hard_reg_set_here_p, i64 1}
!71 = !{ptr @push_reload, ptr @can_reload_into, i64 1}
!72 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @rhs_regno, i64 1766}
!73 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @refers_to_mem_for_reload_p, i64 1}
!74 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @end_hard_regno, i64 1765}
!75 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @refers_to_regno_for_reload_p, i64 1765}
!76 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @reg_mentioned_p, i64 1}
!77 = !{ptr @in_hard_reg_set_p, ptr @end_hard_regno, i64 1902}
!78 = !{ptr @find_reusable_reload, ptr @earlyclobber_operand_p, i64 320174}
!79 = !{ptr @find_reusable_reload, ptr @reg_class_subset_p, i64 2}
!80 = !{ptr @find_reusable_reload, ptr @true_regnum, i64 2}
!81 = !{ptr @push_secondary_reload, ptr @rhs_regno, i64 1293}
!82 = !{ptr @push_secondary_reload, ptr @push_secondary_reload, i64 1}
!83 = !{ptr @push_secondary_reload, ptr @fancy_abort, i64 2}
!84 = !{ptr @push_secondary_reload, ptr @reg_class_subset_p, i64 25}
!85 = !{ptr @find_dummy_reload, ptr @ix86_preferred_reload_class, i64 8101}
!86 = !{ptr @find_dummy_reload, ptr @rhs_regno, i64 15352}
!87 = !{ptr @find_dummy_reload, ptr @ix86_hard_regno_mode_ok, i64 8646}
!88 = !{ptr @find_dummy_reload, ptr @refers_to_regno_for_reload_p, i64 8643}
!89 = !{ptr @find_dummy_reload, ptr @gen_rtx_REG, i64 2}
!90 = !{ptr @find_dummy_reload, ptr @find_reg_note, i64 5521}
!91 = !{ptr @find_dummy_reload, ptr @df_lr_get_bb_info, i64 546}
!92 = !{ptr @find_dummy_reload, ptr @bitmap_bit_p, i64 546}
!93 = !{ptr @find_dummy_reload, ptr @hard_reg_set_here_p, i64 544}
!94 = !{ptr @find_equiv_reg, ptr @rhs_regno, i64 3361}
!95 = !{ptr @find_equiv_reg, ptr @single_set_2, i64 2}
!96 = !{ptr @find_equiv_reg, ptr @true_regnum, i64 289546}
!97 = !{ptr @find_equiv_reg, ptr @rtx_equal_p, i64 38200}
!98 = !{ptr @find_equiv_reg, ptr @reg_overlap_mentioned_for_reload_p, i64 2651}
!99 = !{ptr @find_equiv_reg, ptr @rtx_renumbered_equal_p, i64 154583}
!100 = !{ptr @find_equiv_reg, ptr @find_reg_note, i64 52137}
!101 = !{ptr @find_equiv_reg, ptr @in_hard_reg_set_p, i64 1374}
!102 = !{ptr @find_equiv_reg, ptr @end_hard_regno, i64 914}
!103 = !{ptr @find_equiv_reg, ptr @refers_to_regno_for_reload_p, i64 914}
!104 = !{ptr @find_equiv_reg, ptr @constant_address_p, i64 914}
!105 = !{ptr @find_equiv_reg, ptr @volatile_insn_p, i64 3822}
!106 = !{ptr @find_equiv_reg, ptr @push_operand, i64 349}
!107 = !{ptr @refers_to_regno_for_reload_p, ptr @rhs_regno, i64 4180}
!108 = !{ptr @refers_to_regno_for_reload_p, ptr @earlyclobber_operand_p, i64 8505}
!109 = !{ptr @refers_to_regno_for_reload_p, ptr @refers_to_regno_for_reload_p, i64 32756}
!110 = !{ptr @hard_reg_set_here_p, ptr @rhs_regno, i64 1095}
!111 = !{ptr @hard_reg_set_here_p, ptr @end_hard_regno, i64 548}
!112 = !{ptr @hard_reg_set_here_p, ptr @hard_reg_set_here_p, i64 1090}
!113 = !{ptr @operands_match_p, ptr @rhs_regno, i64 137979}
!114 = !{ptr @operands_match_p, ptr @subreg_regno_offset, i64 2}
!115 = !{ptr @operands_match_p, ptr @operands_match_p, i64 5}
!116 = !{ptr @find_reloads, ptr @single_set_2, i64 1}
!117 = !{ptr @find_reloads, ptr @rhs_regno, i64 2543170}
!118 = !{ptr @find_reloads, ptr @ix86_register_move_cost, i64 66497}
!119 = !{ptr @find_reloads, ptr @extract_insn, i64 717438}
!120 = !{ptr @find_reloads, ptr @insn_constraint_len, i64 24131468}
!121 = !{ptr @find_reloads, ptr @fancy_abort, i64 150}
!122 = !{ptr @find_reloads, ptr @strtoul, i64 1302270}
!123 = !{ptr @find_reloads, ptr @operands_match_p, i64 2523140}
!124 = !{ptr @find_reloads, ptr @find_reloads_address, i64 319125}
!125 = !{ptr @find_reloads, ptr @find_reloads_toplev, i64 207}
!126 = !{ptr @find_reloads, ptr @reg_preferred_class, i64 1209}
!127 = !{ptr @find_reloads, ptr @reg_alternate_class, i64 1209}
!128 = !{ptr @find_reloads, ptr @skip_alternative, i64 20}
!129 = !{ptr @find_reloads, ptr @simplify_subreg_regno, i64 402}
!130 = !{ptr @find_reloads, ptr @subreg_regno_offset, i64 402}
!131 = !{ptr @find_reloads, ptr @lookup_constraint, i64 50029}
!132 = !{ptr @find_reloads, ptr @constraint_satisfied_p, i64 2}
!133 = !{ptr @find_reloads, ptr @legitimate_pic_operand_p, i64 2}
!134 = !{ptr @find_reloads, ptr @insn_const_int_ok_for_constraint, i64 68}
!135 = !{ptr @find_reloads, ptr @regclass_for_constraint, i64 49959}
!136 = !{ptr @find_reloads, ptr @reg_fits_class_p, i64 536936}
!137 = !{ptr @find_reloads, ptr @ix86_preferred_reload_class, i64 192854}
!138 = !{ptr @find_reloads, ptr @find_reg_note, i64 2}
!139 = !{ptr @find_reloads, ptr @ix86_preferred_output_reload_class, i64 164043}
!140 = !{ptr @find_reloads, ptr @reg_class_subset_p, i64 1}
!141 = !{ptr @find_reloads, ptr @decompose, i64 1}
!142 = !{ptr @find_reloads, ptr @rtx_equal_p, i64 5}
!143 = !{ptr @find_reloads, ptr @immune_p, i64 5}
!144 = !{ptr @find_reloads, ptr @_fatal_insn, i64 5}
!145 = !{ptr @find_reloads, ptr @error_for_asm, i64 8}
!146 = !{ptr @find_reloads, ptr @gen_rtx_fmt_e_stat, i64 8}
!147 = !{ptr @find_reloads, ptr @push_reload, i64 320164}
!148 = !{ptr @find_reloads, ptr @gen_clobber, i64 1}
!149 = !{ptr @find_reloads, ptr @emit_insn_after, i64 1}
!150 = !{ptr @find_reloads, ptr @dup_replacements, i64 1}
!151 = !{ptr @find_reloads, ptr @combine_reloads, i64 493102}
!152 = !{ptr @find_reloads, ptr @reg_mentioned_p, i64 10}
!153 = !{ptr @find_reloads, ptr @reg_classes_intersect_p, i64 320169}
!154 = !{ptr @find_reloads, ptr @elimination_target_reg_p, i64 63387}
!155 = !{ptr @find_reloads, ptr @ix86_hard_regno_mode_ok, i64 63384}
!156 = !{ptr @find_reloads_toplev, ptr @rhs_regno, i64 401}
!157 = !{ptr @find_reloads_toplev, ptr @find_reloads_address, i64 1}
!158 = !{ptr @find_reloads_toplev, ptr @find_reloads_subreg_address, i64 1}
!159 = !{ptr @find_reloads_toplev, ptr @find_reloads_toplev, i64 200}
!160 = !{ptr @combine_reloads, ptr @earlyclobber_operand_p, i64 84}
!161 = !{ptr @combine_reloads, ptr @reg_overlap_mentioned_for_reload_p, i64 78}
!162 = !{ptr @combine_reloads, ptr @rhs_regno, i64 77}
!163 = !{ptr @combine_reloads, ptr @ix86_hard_regno_mode_ok, i64 76}
!164 = !{ptr @subst_reloads, ptr @fancy_abort, i64 1}
!165 = !{ptr @regno_clobbered_p, ptr @fancy_abort, i64 1}
!166 = !{ptr @regno_clobbered_p, ptr @rhs_regno, i64 5}
!167 = !{ptr @regno_ok_for_base_p, ptr @ok_for_base_p_1, i64 137970}
!168 = !{ptr @subst_reg_equivs, ptr @rhs_regno, i64 515}
!169 = !{ptr @subst_reg_equivs, ptr @make_memloc, i64 1}
!170 = !{ptr @subst_reg_equivs, ptr @rtx_equal_p, i64 1}
!171 = !{ptr @subst_reg_equivs, ptr @subst_reg_equivs, i64 1241}
!172 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!173 = !{!"function_entry_count", i64 0}
!174 = !{!175, !176, i64 0}
!175 = !{!"secondary_reload_info", !176, i64 0, !176, i64 4, !179, i64 8, !176, i64 16}
!176 = !{!"int", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C/C++ TBAA"}
!179 = !{!"any pointer", !177, i64 0}
!180 = !{!175, !179, i64 8}
!181 = !{!182, !179, i64 1728}
!182 = !{!"gcc_target", !183, i64 0, !185, i64 368, !186, i64 664, !176, i64 744, !179, i64 752, !179, i64 760, !179, i64 768, !179, i64 776, !179, i64 784, !179, i64 792, !179, i64 800, !179, i64 808, !179, i64 816, !179, i64 824, !179, i64 832, !179, i64 840, !179, i64 848, !179, i64 856, !179, i64 864, !179, i64 872, !179, i64 880, !179, i64 888, !179, i64 896, !179, i64 904, !179, i64 912, !179, i64 920, !179, i64 928, !179, i64 936, !179, i64 944, !179, i64 952, !179, i64 960, !179, i64 968, !179, i64 976, !179, i64 984, !179, i64 992, !179, i64 1000, !179, i64 1008, !179, i64 1016, !179, i64 1024, !179, i64 1032, !179, i64 1040, !179, i64 1048, !179, i64 1056, !187, i64 1064, !187, i64 1072, !179, i64 1080, !179, i64 1088, !179, i64 1096, !179, i64 1104, !179, i64 1112, !179, i64 1120, !179, i64 1128, !179, i64 1136, !179, i64 1144, !179, i64 1152, !179, i64 1160, !179, i64 1168, !188, i64 1176, !179, i64 1232, !179, i64 1240, !179, i64 1248, !179, i64 1256, !179, i64 1264, !179, i64 1272, !179, i64 1280, !179, i64 1288, !179, i64 1296, !179, i64 1304, !179, i64 1312, !179, i64 1320, !179, i64 1328, !179, i64 1336, !179, i64 1344, !179, i64 1352, !179, i64 1360, !179, i64 1368, !179, i64 1376, !179, i64 1384, !179, i64 1392, !179, i64 1400, !179, i64 1408, !179, i64 1416, !179, i64 1424, !179, i64 1432, !179, i64 1440, !179, i64 1448, !179, i64 1456, !187, i64 1464, !189, i64 1472, !179, i64 1664, !179, i64 1672, !179, i64 1680, !179, i64 1688, !179, i64 1696, !179, i64 1704, !179, i64 1712, !179, i64 1720, !179, i64 1728, !179, i64 1736, !179, i64 1744, !179, i64 1752, !179, i64 1760, !179, i64 1768, !179, i64 1776, !190, i64 1784, !191, i64 1792, !192, i64 1896, !193, i64 1968, !179, i64 2016, !177, i64 2024, !177, i64 2025, !177, i64 2026, !177, i64 2027, !177, i64 2028, !177, i64 2029, !177, i64 2030, !177, i64 2031, !177, i64 2032, !177, i64 2033, !177, i64 2034, !177, i64 2035}
!183 = !{!"asm_out", !179, i64 0, !179, i64 8, !179, i64 16, !184, i64 24, !184, i64 56, !179, i64 88, !179, i64 96, !179, i64 104, !179, i64 112, !179, i64 120, !179, i64 128, !179, i64 136, !179, i64 144, !179, i64 152, !179, i64 160, !179, i64 168, !179, i64 176, !179, i64 184, !179, i64 192, !179, i64 200, !179, i64 208, !179, i64 216, !179, i64 224, !179, i64 232, !179, i64 240, !179, i64 248, !179, i64 256, !179, i64 264, !179, i64 272, !179, i64 280, !179, i64 288, !179, i64 296, !179, i64 304, !179, i64 312, !179, i64 320, !179, i64 328, !179, i64 336, !179, i64 344, !179, i64 352, !179, i64 360}
!184 = !{!"asm_int_op", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24}
!185 = !{!"sched", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48, !179, i64 56, !179, i64 64, !179, i64 72, !179, i64 80, !179, i64 88, !179, i64 96, !179, i64 104, !179, i64 112, !179, i64 120, !179, i64 128, !179, i64 136, !179, i64 144, !179, i64 152, !179, i64 160, !179, i64 168, !179, i64 176, !179, i64 184, !179, i64 192, !179, i64 200, !179, i64 208, !179, i64 216, !179, i64 224, !179, i64 232, !179, i64 240, !179, i64 248, !179, i64 256, !179, i64 264, !179, i64 272, !179, i64 280, !179, i64 288}
!186 = !{!"vectorize", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48, !179, i64 56, !179, i64 64, !179, i64 72}
!187 = !{!"long", !177, i64 0}
!188 = !{!"addr_space", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48}
!189 = !{!"calls", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48, !179, i64 56, !179, i64 64, !179, i64 72, !179, i64 80, !179, i64 88, !179, i64 96, !179, i64 104, !179, i64 112, !179, i64 120, !179, i64 128, !179, i64 136, !179, i64 144, !179, i64 152, !179, i64 160, !179, i64 168, !179, i64 176, !179, i64 184}
!190 = !{!"c", !179, i64 0}
!191 = !{!"cxx", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48, !179, i64 56, !179, i64 64, !179, i64 72, !179, i64 80, !179, i64 88, !179, i64 96}
!192 = !{!"emutls", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48, !179, i64 56, !177, i64 64, !177, i64 65}
!193 = !{!"target_option_hooks", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40}
!194 = !{!195, !177, i64 32}
!195 = !{!"insn_data", !179, i64 0, !177, i64 8, !179, i64 16, !179, i64 24, !177, i64 32, !177, i64 33, !177, i64 34, !177, i64 35}
!196 = !{!195, !179, i64 24}
!197 = !{!198, !179, i64 8}
!198 = !{!"insn_operand_data", !179, i64 0, !179, i64 8, !176, i64 16, !177, i64 18, !177, i64 19}
!199 = !{!177, !177, i64 0}
!200 = !{!179, !179, i64 0}
!201 = !{!202, !177, i64 32}
!202 = !{!"mem_attrs", !179, i64 0, !179, i64 8, !179, i64 16, !176, i64 24, !176, i64 28, !177, i64 32}
!203 = !{i32 0, i32 256}
!204 = !{!176, !176, i64 0}
!205 = !{!"function_entry_count", i64 1622989}
!206 = !{!182, !179, i64 1200}
!207 = !{!"function_entry_count", i64 319125}
!208 = !{!"reload.c:find_reloads_address"}
!209 = !{!"branch_weights", i32 318883, i32 244}
!210 = !{!"branch_weights", i32 47, i32 319080}
!211 = !{!"branch_weights", i32 137971, i32 181156}
!212 = !{!"branch_weights", i32 137971, i32 1}
!213 = !{!"branch_weights", i32 1, i32 137971}
!214 = !{!"branch_weights", i32 1, i32 181156}
!215 = !{!"branch_weights", i32 26562, i32 154595}
!216 = !{!"branch_weights", i32 26429, i32 134}
!217 = !{!"branch_weights", i32 26261, i32 169}
!218 = !{!"branch_weights", i32 26261, i32 1}
!219 = !{!"branch_weights", i32 1, i32 154896}
!220 = distinct !{!220, !221}
!221 = !{!"llvm.loop.mustprogress"}
!222 = !{!182, !179, i64 1184}
!223 = !{!"function_entry_count", i64 38}
!224 = !{!"function_entry_count", i64 320174}
!225 = !{!"branch_weights", i32 10265, i32 -1008090768}
!226 = !{!"branch_weights", i32 9745, i32 -1174781878}
!227 = !{!"branch_weights", i32 164253, i32 155923}
!228 = !{!"branch_weights", i32 605, i32 155319}
!229 = !{!"branch_weights", i32 1, i32 605}
!230 = !{!231, !231, i64 0}
!231 = !{!"short", !177, i64 0}
!232 = !{!"branch_weights", i32 605, i32 1}
!233 = !{!"branch_weights", i32 689, i32 163565}
!234 = !{!"branch_weights", i32 85, i32 605}
!235 = !{!"branch_weights", i32 13074, i32 2147470574}
!236 = !{!"branch_weights", i32 13772, i32 2147469876}
!237 = !{!"branch_weights", i32 1, i32 155923}
!238 = !{i32 0, i32 2}
!239 = !{!"branch_weights", i32 155923, i32 1}
!240 = !{i32 -2147483648, i32 27}
!241 = !{!"branch_weights", i32 2147469876, i32 13772}
!242 = !{!"branch_weights", i32 1, i32 164253}
!243 = !{!"branch_weights", i32 164253, i32 1}
!244 = !{!"branch_weights", i32 2147470574, i32 13074}
!245 = !{!"branch_weights", i32 13773, i32 2147469875}
!246 = !{!"branch_weights", i32 1101680742, i32 1045802906}
!247 = !{!"branch_weights", i32 164169, i32 156007}
!248 = !{!"branch_weights", i32 -926034726, i32 41042}
!249 = !{!"branch_weights", i32 320175, i32 1}
!250 = !{!187, !187, i64 0}
!251 = !{i8 0, i8 2}
!252 = distinct !{!252, !221}
!253 = !{!"branch_weights", i32 -1279468326, i32 11746075, i32 19414}
!254 = !{!255, !179, i64 0}
!255 = !{!"reload", !179, i64 0, !179, i64 8, !176, i64 16, !176, i64 20, !176, i64 24, !176, i64 28, !176, i64 32, !176, i64 36, !179, i64 40, !179, i64 48, !176, i64 56, !179, i64 64, !176, i64 72, !176, i64 76, !176, i64 80, !176, i64 84, !176, i64 88, !176, i64 92, !176, i64 96, !176, i64 96, !176, i64 96, !176, i64 96}
!256 = !{!255, !179, i64 8}
!257 = !{!255, !176, i64 16}
!258 = !{!255, !176, i64 20}
!259 = !{!255, !176, i64 24}
!260 = !{!255, !179, i64 64}
!261 = !{!255, !176, i64 36}
!262 = !{!255, !179, i64 40}
!263 = !{!"branch_weights", i32 155923, i32 164253}
!264 = !{!255, !179, i64 48}
!265 = !{!255, !176, i64 72}
!266 = !{!255, !176, i64 92}
!267 = !{!255, !176, i64 76}
!268 = !{!255, !176, i64 80}
!269 = !{!255, !176, i64 84}
!270 = !{!255, !176, i64 88}
!271 = !{!"branch_weights", i32 -950778643, i32 14087121, i32 20445}
!272 = !{!"branch_weights", i32 85, i32 1}
!273 = !{!"branch_weights", i32 160088, i32 160088}
!274 = !{!"branch_weights", i32 82127, i32 77962}
!275 = !{!276, !176, i64 16}
!276 = !{!"replacement", !179, i64 0, !179, i64 8, !176, i64 16, !176, i64 20}
!277 = !{!276, !179, i64 8}
!278 = !{!276, !179, i64 0}
!279 = !{!276, !176, i64 20}
!280 = !{!"branch_weights", i32 -1093494665, i32 -922545232}
!281 = !{!"branch_weights", i32 -583224508, i32 -384856396}
!282 = !{!"branch_weights", i32 115912, i32 40011}
!283 = !{!"branch_weights", i32 1363, i32 38649}
!284 = !{!"branch_weights", i32 1363, i32 1}
!285 = !{!"branch_weights", i32 759, i32 605}
!286 = !{!"branch_weights", i32 605, i32 155}
!287 = !{!"branch_weights", i32 1, i32 155}
!288 = !{!289, !179, i64 8}
!289 = !{!"function", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !179, i64 48, !179, i64 56, !179, i64 64, !179, i64 72, !179, i64 80, !179, i64 88, !179, i64 96, !176, i64 104, !176, i64 108, !176, i64 112, !176, i64 116, !176, i64 120, !176, i64 124, !179, i64 128, !176, i64 136, !176, i64 137, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 138, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139, !176, i64 139}
!290 = !{!291, !179, i64 0}
!291 = !{!"control_flow_graph", !179, i64 0, !179, i64 8, !179, i64 16, !176, i64 24, !176, i64 28, !176, i64 32, !179, i64 40, !176, i64 48, !177, i64 52, !177, i64 60, !176, i64 68, !176, i64 72}
!292 = !{!293, !176, i64 80}
!293 = !{!"basic_block_def", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !177, i64 32, !179, i64 48, !179, i64 56, !177, i64 64, !187, i64 72, !176, i64 80, !176, i64 84, !176, i64 88, !176, i64 92, !176, i64 96}
!294 = !{!295, !179, i64 24}
!295 = !{!"df_lr_bb_info", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24}
!296 = !{!"branch_weights", i32 155, i32 1}
!297 = !{!"branch_weights", i32 8624516, i32 2138859132}
!298 = distinct !{!298, !221}
!299 = !{!"branch_weights", i32 40011, i32 0}
!300 = distinct !{!300, !221}
!301 = !{!"function_entry_count", i64 2929459}
!302 = !{!"reload.c:rhs_regno"}
!303 = !{!"reload.c:reload_inner_reg_of_subreg"}
!304 = !{!"branch_weights", i32 1, i32 320175}
!305 = !{!"reload.c:find_valid_class"}
!306 = distinct !{!306, !221}
!307 = distinct !{!307, !221}
!308 = !{!"function_entry_count", i64 4720}
!309 = !{!"branch_weights", i32 1, i32 4721}
!310 = !{!"branch_weights", i32 2952, i32 1770}
!311 = !{!"branch_weights", i32 65446, i32 2096560, i32 65446, i32 -587982606, i32 1047169, i32 916274, i32 916274, i32 916274}
!312 = !{!"branch_weights", i32 1, i32 1770}
!313 = distinct !{!313, !221}
!314 = !{!"function_entry_count", i64 2400}
!315 = !{!"reload.c:in_hard_reg_set_p"}
!316 = !{!"branch_weights", i32 498, i32 1904}
!317 = !{!"branch_weights", i32 1, i32 1904}
!318 = distinct !{!318, !221}
!319 = !{!"reload.c:find_reusable_reload"}
!320 = !{!"branch_weights", i32 10005, i32 -1091466339}
!321 = !{!"branch_weights", i32 -2147483648, i32 0}
!322 = !{!"branch_weights", i32 0, i32 1}
!323 = distinct !{!323, !221}
!324 = distinct !{!324, !221}
!325 = !{!"reload.c:push_secondary_reload"}
!326 = !{!"branch_weights", i32 29850, i32 -1905561820}
!327 = !{!"branch_weights", i32 1293, i32 318883}
!328 = !{!"branch_weights", i32 1209, i32 85}
!329 = !{!"branch_weights", i32 1, i32 1209}
!330 = !{!"branch_weights", i32 -1091466339, i32 20010}
!331 = distinct !{!331, !221}
!332 = !{i64 0, i64 8, !200, i64 8, i64 8, !200, i64 16, i64 4, !204, i64 20, i64 4, !204}
!333 = distinct !{!333, !221}
!334 = distinct !{!334, !221}
!335 = !{!"function_entry_count", i64 8101}
!336 = !{!"reload.c:find_dummy_reload"}
!337 = !{!"branch_weights", i32 8102, i32 1}
!338 = !{!"branch_weights", i32 1, i32 8101}
!339 = !{!"branch_weights", i32 0, i32 -2147483648}
!340 = distinct !{!340, !221}
!341 = distinct !{!341, !221}
!342 = !{!"branch_weights", i32 1, i32 8102}
!343 = !{!"branch_weights", i32 7462, i32 641}
!344 = !{!"branch_weights", i32 1, i32 7461}
!345 = !{!"branch_weights", i32 1, i32 7462}
!346 = !{!"branch_weights", i32 7461, i32 1}
!347 = distinct !{!347, !221}
!348 = !{!"branch_weights", i32 2147195859, i32 287789}
!349 = !{!"branch_weights", i32 7462, i32 1}
!350 = !{!"branch_weights", i32 5615, i32 2488}
!351 = !{!"branch_weights", i32 5523, i32 93}
!352 = !{!"branch_weights", i32 549, i32 4975}
!353 = !{!"branch_weights", i32 4975, i32 1}
!354 = !{!"branch_weights", i32 1, i32 549}
!355 = !{!"branch_weights", i32 549, i32 1}
!356 = !{!"branch_weights", i32 1, i32 548}
!357 = !{!"branch_weights", i32 548, i32 1}
!358 = distinct !{!358, !221}
!359 = !{!"branch_weights", i32 2143572020, i32 3911628}
!360 = !{!"function_entry_count", i64 328231}
!361 = !{!"branch_weights", i32 1, i32 328231}
!362 = !{!"branch_weights", i32 1, i32 0}
!363 = distinct !{!363, !221}
!364 = !{!"function_entry_count", i64 90654}
!365 = !{!"branch_weights", i32 1, i32 90655}
!366 = !{!"branch_weights", i32 573470491, i32 13688631, i32 -786560306}
!367 = !{!"branch_weights", i32 77660, i32 1}
!368 = !{!"branch_weights", i32 12694, i32 1}
!369 = !{!"branch_weights", i32 153, i32 816304}
!370 = !{!"branch_weights", i32 1, i32 816304}
!371 = !{!"branch_weights", i32 88539, i32 727766}
!372 = !{!373, !176, i64 8}
!373 = !{!"param_info", !179, i64 0, !176, i64 8, !177, i64 12, !176, i64 16, !176, i64 20, !179, i64 24}
!374 = !{!"branch_weights", i32 727705, i32 62}
!375 = !{!"branch_weights", i32 311507, i32 416199}
!376 = !{!"branch_weights", i32 311507, i32 1}
!377 = !{!"branch_weights", i32 310522, i32 1}
!378 = !{!"branch_weights", i32 2919, i32 308414}
!379 = !{!"branch_weights", i32 1, i32 2919}
!380 = !{!"branch_weights", i32 303, i32 2617}
!381 = !{!"branch_weights", i32 303, i32 1}
!382 = !{!"branch_weights", i32 251952, i32 59079}
!383 = !{!"branch_weights", i32 56128, i32 2952}
!384 = !{!"branch_weights", i32 2952, i32 1}
!385 = !{!"branch_weights", i32 498, i32 2455}
!386 = !{!"branch_weights", i32 61198, i32 249336}
!387 = !{!"branch_weights", i32 188928, i32 60409}
!388 = !{!"branch_weights", i32 187401, i32 1528}
!389 = !{!"branch_weights", i32 81344, i32 166466}
!390 = !{!"branch_weights", i32 81270, i32 75}
!391 = !{!"branch_weights", i32 250351, i32 58582}
!392 = !{!"branch_weights", i32 27353, i32 31230}
!393 = !{!"branch_weights", i32 23522, i32 7709}
!394 = !{!"branch_weights", i32 7709, i32 1}
!395 = !{!"branch_weights", i32 1, i32 7709}
!396 = !{!"branch_weights", i32 50874, i32 7709}
!397 = !{!"branch_weights", i32 1, i32 2401}
!398 = !{!"branch_weights", i32 560, i32 1345}
!399 = !{!"branch_weights", i32 1345, i32 1}
!400 = !{!"branch_weights", i32 3809, i32 3625216}
!401 = !{!"branch_weights", i32 303, i32 1602}
!402 = !{!"branch_weights", i32 1602, i32 1}
!403 = !{!"branch_weights", i32 1904, i32 1}
!404 = !{!"branch_weights", i32 341567695, i32 1805915953}
!405 = !{!"branch_weights", i32 6411, i32 1}
!406 = !{!"branch_weights", i32 1528, i32 1}
!407 = !{!"branch_weights", i32 578817, i32 303}
!408 = !{!"branch_weights", i32 1738632, i32 -951708809}
!409 = distinct !{!409, !221}
!410 = distinct !{!410, !221}
!411 = !{!"branch_weights", i32 1602, i32 303}
!412 = !{!"branch_weights", i32 1, i32 127}
!413 = !{!"branch_weights", i32 75, i32 9567}
!414 = !{!"branch_weights", i32 1, i32 151}
!415 = distinct !{!415, !221}
!416 = distinct !{!416, !221}
!417 = !{!"branch_weights", i32 -1758330660, i32 1050846196}
!418 = !{!"branch_weights", i32 6763, i32 1}
!419 = !{!"branch_weights", i32 1, i32 6763}
!420 = !{!"branch_weights", i32 410881, i32 -1771287124, i32 411522, i32 263374721}
!421 = !{!"branch_weights", i32 1745260080, i32 876123, i32 875980, i32 875836, i32 -677471365}
!422 = distinct !{!422, !221}
!423 = !{!"branch_weights", i32 4131, i32 1}
!424 = !{!"branch_weights", i32 815, i32 3370897}
!425 = !{!"branch_weights", i32 1571147, i32 3767397}
!426 = !{!"branch_weights", i32 2831, i32 85}
!427 = !{!"branch_weights", i32 1, i32 2915}
!428 = !{!"branch_weights", i32 1223702, i32 2752334}
!429 = !{!"branch_weights", i32 614, i32 1}
!430 = !{!"branch_weights", i32 1, i32 1380}
!431 = !{!"branch_weights", i32 1380, i32 1}
!432 = !{!433, !176, i64 0}
!433 = !{!"rtvec_def", !176, i64 0, !177, i64 8}
!434 = !{!"branch_weights", i32 1, i32 640}
!435 = !{!"branch_weights", i32 1, i32 1281}
!436 = !{!"branch_weights", i32 641, i32 411522, i32 410881}
!437 = !{!"branch_weights", i32 2052803, i32 2057615, i32 2056010, i32 2054406, i32 -1665325691}
!438 = distinct !{!438, !221}
!439 = !{!"branch_weights", i32 1281, i32 1}
!440 = !{!"branch_weights", i32 1281, i32 1642243}
!441 = !{!"branch_weights", i32 640, i32 641}
!442 = distinct !{!442, !221}
!443 = !{!"branch_weights", i32 1, i32 4934}
!444 = distinct !{!444, !221}
!445 = !{!"branch_weights", i32 127, i32 1233921}
!446 = !{!"function_entry_count", i64 702}
!447 = !{!"reload.c:df_lr_get_bb_info"}
!448 = !{!449, !176, i64 16}
!449 = !{!"dataflow", !179, i64 0, !179, i64 8, !176, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !176, i64 48, !177, i64 52, !177, i64 53, !177, i64 54}
!450 = !{!"branch_weights", i32 703, i32 1}
!451 = !{!449, !179, i64 8}
!452 = !{!"function_entry_count", i64 37372}
!453 = !{!"reload.c:refers_to_regno_for_reload_p"}
!454 = !{!"branch_weights", i32 1, i32 37373}
!455 = !{!"branch_weights", i32 38064, i32 3918, i32 1, i32 7866, i32 8256}
!456 = !{!"branch_weights", i32 1, i32 3918}
!457 = !{!"branch_weights", i32 3844, i32 75}
!458 = !{!"branch_weights", i32 8102, i32 8020}
!459 = !{!"branch_weights", i32 1, i32 8020}
!460 = !{!"branch_weights", i32 7974, i32 47}
!461 = !{!"branch_weights", i32 7974, i32 1}
!462 = !{!"branch_weights", i32 47, i32 1}
!463 = !{!"branch_weights", i32 65651322, i32 67468032}
!464 = !{!"branch_weights", i32 1, i32 24226}
!465 = !{!"branch_weights", i32 -897187738, i32 -1437990912, i32 1067974553}
!466 = !{!"branch_weights", i32 71, i32 21727}
!467 = !{!"branch_weights", i32 12558, i32 9170}
!468 = !{!"branch_weights", i32 8530, i32 641}
!469 = !{!"branch_weights", i32 1, i32 7507}
!470 = !{!"branch_weights", i32 1, i32 16059}
!471 = !{!"branch_weights", i32 15419, i32 641}
!472 = !{!"branch_weights", i32 7507, i32 8552}
!473 = distinct !{!473, !221}
!474 = !{!"branch_weights", i32 31641, i32 24226}
!475 = distinct !{!475, !221}
!476 = !{!"function_entry_count", i64 5901}
!477 = !{!"reload.c:end_hard_regno"}
!478 = !{!"function_entry_count", i64 1644}
!479 = !{!"reload.c:hard_reg_set_here_p"}
!480 = !{!"branch_weights", i32 472689, i32 372168500, i32 148221150, i32 259506261}
!481 = !{!"branch_weights", i32 1097, i32 1098, i32 1203409}
!482 = !{!"branch_weights", i32 549, i32 549}
!483 = !{!"branch_weights", i32 1097, i32 549}
!484 = !{!"branch_weights", i32 1097, i32 1}
!485 = distinct !{!485, !221}
!486 = !{!"reload.c:can_reload_into"}
!487 = !{i64 0, i64 240, !199, i64 240, i64 240, !199, i64 480, i64 240, !199, i64 720, i64 120, !199, i64 840, i64 120, !199, i64 960, i64 112, !199, i64 1072, i64 14, !199, i64 1086, i64 1, !199, i64 1087, i64 1, !199, i64 1088, i64 1, !199, i64 1089, i64 30, !199, i64 1120, i64 8, !200}
!488 = distinct !{!488, !221}
!489 = !{!"function_entry_count", i64 271000}
!490 = !{!"branch_weights", i32 122460, i32 74271}
!491 = !{!"branch_weights", i32 43264, i32 15479376, i32 208}
!492 = !{!"branch_weights", i32 575088361, i32 1201114488, i32 23981}
!493 = !{!"branch_weights", i32 1, i32 50084}
!494 = !{!"branch_weights", i32 428527, i32 -840031893}
!495 = !{!"branch_weights", i32 74271, i32 0}
!496 = !{!"branch_weights", i32 -840031893, i32 142848, i32 142842, i32 142836}
!497 = !{!"branch_weights", i32 1, i32 24188}
!498 = distinct !{!498, !221}
!499 = distinct !{!499, !221}
!500 = !{!"reload.c:decompose"}
!501 = !{!"reload.c:immune_p"}
!502 = !{!503, !176, i64 0}
!503 = !{!"decomposition", !176, i64 0, !176, i64 4, !179, i64 8, !187, i64 16, !187, i64 24}
!504 = !{!503, !187, i64 16}
!505 = !{!503, !187, i64 24}
!506 = !{!503, !176, i64 4}
!507 = !{i64 0, i64 8, !200, i64 8, i64 8, !250, i64 16, i64 8, !250}
!508 = !{i64 0, i64 8, !250, i64 8, i64 8, !250}
!509 = !{i64 0, i64 8, !250}
!510 = !{!503, !179, i64 8}
!511 = !{!"function_entry_count", i64 783934}
!512 = !{!"branch_weights", i32 -1820557920, i32 3156}
!513 = !{!"branch_weights", i32 772928, i32 1}
!514 = !{!"branch_weights", i32 783935, i32 1}
!515 = !{!"branch_weights", i32 772928, i32 11008}
!516 = !{!"branch_weights", i32 454058, i32 318871}
!517 = !{!"branch_weights", i32 453454, i32 605}
!518 = !{!"branch_weights", i32 66499, i32 386956}
!519 = !{!"branch_weights", i32 66499, i32 1}
!520 = !{!521, !177, i64 1086}
!521 = !{!"recog_data", !177, i64 0, !177, i64 240, !177, i64 480, !177, i64 720, !177, i64 840, !177, i64 960, !177, i64 1072, !177, i64 1086, !177, i64 1087, !177, i64 1088, !177, i64 1089, !179, i64 1120}
!522 = !{!521, !177, i64 1088}
!523 = !{!"branch_weights", i32 1257240671, i32 -1531321092}
!524 = !{!"branch_weights", i32 493111, i32 1}
!525 = !{!"branch_weights", i32 1, i32 993653}
!526 = !{!"branch_weights", i32 1, i32 296151, i32 1, i32 9426, i32 20392, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!527 = !{!"branch_weights", i32 1, i32 9426}
!528 = !{!"branch_weights", i32 9426, i32 1}
!529 = !{!"branch_weights", i32 1, i32 20392}
!530 = !{!"branch_weights", i32 19533, i32 860}
!531 = !{!"branch_weights", i32 1, i32 19533}
!532 = !{!"branch_weights", i32 14459, i32 5075}
!533 = !{!"branch_weights", i32 5075, i32 1}
!534 = !{!"branch_weights", i32 993653, i32 19598232}
!535 = distinct !{!535, !221}
!536 = !{!"branch_weights", i32 493111, i32 500543}
!537 = distinct !{!537, !221}
!538 = !{!"branch_weights", i32 697504, i32 296151}
!539 = !{!"branch_weights", i32 -770263219, i32 161898471, i32 905496}
!540 = !{!"branch_weights", i32 489, i32 59536}
!541 = !{!"branch_weights", i32 -555309958, i32 1890777152, i32 1203661, i32 5929}
!542 = !{!"branch_weights", i32 1, i32 203}
!543 = !{!"branch_weights", i32 203, i32 1}
!544 = !{!"branch_weights", i32 1, i32 630702}
!545 = !{!"branch_weights", i32 392189, i32 238514}
!546 = !{!"branch_weights", i32 392189, i32 1}
!547 = !{!"branch_weights", i32 390981, i32 1209}
!548 = !{!"branch_weights", i32 2419, i32 1461681}
!549 = !{!"branch_weights", i32 392189, i32 601466}
!550 = !{!"branch_weights", i32 1209, i32 390981}
!551 = distinct !{!551, !221}
!552 = !{!"branch_weights", i32 2146808630, i32 675018}
!553 = !{!"branch_weights", i32 295997, i32 196962}
!554 = !{!"branch_weights", i32 287217, i32 8781}
!555 = !{!"branch_weights", i32 248, i32 1}
!556 = !{!"branch_weights", i32 1, i32 686329}
!557 = !{!"branch_weights", i32 686328, i32 1}
!558 = distinct !{!558, !221}
!559 = !{!"branch_weights", i32 1, i32 1388483}
!560 = !{!"branch_weights", i32 405, i32 1388078}
!561 = !{!"branch_weights", i32 405, i32 1}
!562 = !{!"branch_weights", i32 1, i32 405}
!563 = !{!"branch_weights", i32 811, i32 164025}
!564 = !{!"branch_weights", i32 405, i32 406, i32 164025}
!565 = !{!"branch_weights", i32 0, i32 405}
!566 = distinct !{!566, !221}
!567 = !{!"branch_weights", i32 -846762426, i32 155111905, i32 2595}
!568 = !{!"branch_weights", i32 25012, i32 102290, i32 1286194, i32 296315, i32 1, i32 2270, i32 9590, i32 16145, i32 2270, i32 1, i32 13566, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 244, i32 336347, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 318275, i32 7492, i32 270, i32 1, i32 1, i32 1, i32 1, i32 6839, i32 1, i32 1, i32 1, i32 290174, i32 830829}
!569 = !{!"branch_weights", i32 13402, i32 165}
!570 = !{!"branch_weights", i32 1, i32 165}
!571 = !{!"branch_weights", i32 1, i32 -1}
!572 = !{!"branch_weights", i32 331, i32 27225}
!573 = !{!"branch_weights", i32 165, i32 1}
!574 = !{!"branch_weights", i32 5465, i32 1}
!575 = !{!"branch_weights", i32 44290997, i32 29866225}
!576 = !{!"branch_weights", i32 1, i32 10589}
!577 = !{!"branch_weights", i32 8101, i32 2488}
!578 = distinct !{!578, !221}
!579 = !{!"branch_weights", i32 336347, i32 1}
!580 = !{!"branch_weights", i32 10106, i32 -1712786866, i32 817110525}
!581 = !{!"branch_weights", i32 605, i32 80247}
!582 = !{!"branch_weights", i32 1, i32 336347}
!583 = !{!182, !179, i64 1008}
!584 = !{!"branch_weights", i32 179225, i32 139051}
!585 = !{!"branch_weights", i32 179225, i32 1}
!586 = !{!"branch_weights", i32 290521, i32 3755160, i32 539}
!587 = !{!"branch_weights", i32 68, i32 7041}
!588 = !{!"branch_weights", i32 1, i32 68}
!589 = !{!"branch_weights", i32 290174, i32 1}
!590 = !{!"branch_weights", i32 -1663687600, i32 9067, i32 9067}
!591 = !{!"branch_weights", i32 10892, i32 -1134355817}
!592 = !{!"branch_weights", i32 139653, i32 150522}
!593 = !{!"branch_weights", i32 605, i32 139049}
!594 = !{!"branch_weights", i32 1, i32 25012}
!595 = !{!"branch_weights", i32 1, i32 1146013}
!596 = !{!"branch_weights", i32 537623, i32 608391}
!597 = !{!"branch_weights", i32 1387, i32 536237}
!598 = !{!"branch_weights", i32 15789, i32 2147467859}
!599 = distinct !{!599, !221}
!600 = !{!"branch_weights", i32 242471, i32 1146013}
!601 = !{!"branch_weights", i32 461868899, i32 -1530457688}
!602 = !{!"branch_weights", i32 1056594197, i32 29866225}
!603 = !{!"branch_weights", i32 193100, i32 203}
!604 = !{!"branch_weights", i32 6599, i32 186704}
!605 = !{!"branch_weights", i32 203, i32 6397}
!606 = !{!"branch_weights", i32 474941023, i32 6190144}
!607 = !{!"branch_weights", i32 2488, i32 1}
!608 = !{!"branch_weights", i32 4977, i32 6190144}
!609 = !{!"branch_weights", i32 1, i32 193302}
!610 = !{!"branch_weights", i32 20531, i32 -326138958}
!611 = !{!"branch_weights", i32 2488, i32 190815}
!612 = !{!"branch_weights", i32 203, i32 190613}
!613 = !{!"branch_weights", i32 1, i32 190613}
!614 = !{!"branch_weights", i32 164253, i32 26361}
!615 = !{!"branch_weights", i32 -1236025344, i32 108118016, i32 16383}
!616 = !{!"branch_weights", i32 789, i32 5811}
!617 = !{!"branch_weights", i32 192514, i32 1}
!618 = !{!"branch_weights", i32 21913, i32 2147461735}
!619 = !{!"branch_weights", i32 203, i32 193100}
!620 = !{!"branch_weights", i32 193100, i32 1}
!621 = !{!"branch_weights", i32 192312, i32 789}
!622 = !{!"branch_weights", i32 1, i32 1578, i32 1}
!623 = !{!"branch_weights", i32 686328, i32 702155}
!624 = distinct !{!624, !221}
!625 = !{!"branch_weights", i32 1388483, i32 1}
!626 = distinct !{!626, !221}
!627 = distinct !{!627, !221}
!628 = distinct !{!628, !221}
!629 = !{!"branch_weights", i32 1542652898, i32 604830750}
!630 = !{!"branch_weights", i32 9426, i32 483603}
!631 = !{!"branch_weights", i32 493027, i32 1}
!632 = !{!"branch_weights", i32 2462037, i32 -1964491671}
!633 = !{!"branch_weights", i32 193099, i32 1}
!634 = !{!"branch_weights", i32 -2019316957, i32 13816772, i32 127046584}
!635 = !{!"branch_weights", i32 193099, i32 201293}
!636 = distinct !{!636, !221}
!637 = !{!"branch_weights", i32 187758, i32 5343}
!638 = !{!"branch_weights", i32 5343, i32 28552993}
!639 = !{!"branch_weights", i32 187757, i32 1}
!640 = !{!"branch_weights", i32 248, i32 686081}
!641 = distinct !{!641, !221}
!642 = !{!"branch_weights", i32 165, i32 85}
!643 = !{!521, !177, i64 1087}
!644 = !{!"branch_weights", i32 164, i32 1}
!645 = !{!"branch_weights", i32 28441, i32 119}
!646 = !{!"branch_weights", i32 164, i32 73}
!647 = distinct !{!647, !221}
!648 = distinct !{!648, !221}
!649 = !{!"branch_weights", i32 1, i32 85}
!650 = !{!"branch_weights", i32 2147479999, i32 3649}
!651 = !{!"branch_weights", i32 5301, i32 988354}
!652 = !{!"branch_weights", i32 5217, i32 85}
!653 = distinct !{!653, !221}
!654 = distinct !{!654, !221}
!655 = !{!"branch_weights", i32 492948, i32 165}
!656 = !{!"branch_weights", i32 1, i32 164}
!657 = distinct !{!657, !221}
!658 = !{!"branch_weights", i32 993654, i32 1}
!659 = distinct !{!659, !221}
!660 = !{!"branch_weights", i32 85, i32 993570}
!661 = !{!"branch_weights", i32 171, i32 1}
!662 = distinct !{!662, !221}
!663 = !{!"branch_weights", i32 493112, i32 1}
!664 = distinct !{!664, !221}
!665 = !{!"branch_weights", i32 2147480926, i32 2722}
!666 = distinct !{!666, !221}
!667 = !{!198, !177, i64 18}
!668 = !{!"branch_weights", i32 988354, i32 5217}
!669 = !{!"branch_weights", i32 983138, i32 5217}
!670 = !{!"branch_weights", i32 -519341019, i32 7680}
!671 = !{!"branch_weights", i32 -1547028276, i32 1975454, i32 -1191822061, i32 -578833784}
!672 = distinct !{!672, !221}
!673 = !{!"branch_weights", i32 1209, i32 380667}
!674 = !{!"branch_weights", i32 164169, i32 155923}
!675 = !{!"branch_weights", i32 -1010653585, i32 30266}
!676 = !{!"branch_weights", i32 2147473498, i32 10150}
!677 = !{!"branch_weights", i32 41042, i32 -926034726}
!678 = !{!"branch_weights", i32 1, i32 320091}
!679 = !{!"branch_weights", i32 503263, i32 159786}
!680 = !{!"branch_weights", i32 -1950067800, i32 39946, i32 -256935397}
!681 = !{!"branch_weights", i32 1, i32 101086}
!682 = distinct !{!682, !221}
!683 = !{!"branch_weights", i32 412672, i32 2147070976}
!684 = !{!"branch_weights", i32 1, i32 5217}
!685 = !{!"branch_weights", i32 5217, i32 1}
!686 = !{!"branch_weights", i32 2167241, i32 -1469154257}
!687 = !{!"branch_weights", i32 425267, i32 425430, i32 425348, i32 -2076349276}
!688 = distinct !{!688, !221}
!689 = distinct !{!689, !221}
!690 = !{!"branch_weights", i32 673178, i32 320477}
!691 = !{!"branch_weights", i32 1, i32 320477}
!692 = distinct !{!692, !221}
!693 = !{!"branch_weights", i32 1233458029, i32 -1729043595}
!694 = !{!195, !177, i64 33}
!695 = !{!"branch_weights", i32 1, i32 160087}
!696 = distinct !{!696, !221}
!697 = !{!"branch_weights", i32 1, i32 493112}
!698 = !{!"branch_weights", i32 320175, i32 172937}
!699 = !{!"branch_weights", i32 0, i32 320175}
!700 = distinct !{!700, !221}
!701 = !{!"branch_weights", i32 1, i32 320174}
!702 = distinct !{!702, !221}
!703 = distinct !{!703, !221}
!704 = !{!"branch_weights", i32 29846, i32 -1905561820}
!705 = !{!"branch_weights", i32 13414, i32 2147470234}
!706 = !{!"branch_weights", i32 320175, i32 0}
!707 = distinct !{!707, !221}
!708 = distinct !{!708, !221}
!709 = !{!"branch_weights", i32 320175, i32 1, i32 1, i32 1}
!710 = distinct !{!710, !221}
!711 = !{!"branch_weights", i32 2147476941, i32 6707}
!712 = distinct !{!712, !221}
!713 = distinct !{!713, !221}
!714 = !{!"branch_weights", i32 -679781408, i32 23185, i32 23185, i32 23185}
!715 = distinct !{!715, !221}
!716 = distinct !{!716, !221}
!717 = !{!255, !176, i64 28}
!718 = !{!"branch_weights", i32 1, i32 164169}
!719 = !{!255, !176, i64 32}
!720 = distinct !{!720, !221}
!721 = !{!"branch_weights", i32 155273, i32 651}
!722 = !{!"branch_weights", i32 155273, i32 1}
!723 = !{!"branch_weights", i32 63389, i32 91885}
!724 = !{!"branch_weights", i32 1, i32 91885}
!725 = !{!"branch_weights", i32 63389, i32 1}
!726 = !{!"branch_weights", i32 1, i32 63389}
!727 = !{!"branch_weights", i32 1, i32 63388}
!728 = !{!"branch_weights", i32 0, i32 0}
!729 = distinct !{!729, !221, !730, !731}
!730 = !{!"llvm.loop.isvectorized", i32 1}
!731 = !{!"llvm.loop.unroll.runtime.disable"}
!732 = !{!"branch_weights", i32 63389, i32 2147420259}
!733 = distinct !{!733, !221}
!734 = !{!"function_entry_count", i64 24135989}
!735 = !{!"reload.c:insn_constraint_len"}
!736 = !{!"branch_weights", i32 570083, i32 23565908}
!737 = !{!"function_entry_count", i64 404}
!738 = !{!"reload.c:find_reloads_toplev"}
!739 = !{!"branch_weights", i32 41209, i32 8448048, i32 41412, i32 8365427}
!740 = !{!"branch_weights", i32 1, i32 202}
!741 = !{!"branch_weights", i32 203, i32 203}
!742 = !{!"branch_weights", i32 203, i32 202}
!743 = distinct !{!743, !221}
!744 = !{!"reload.c:skip_alternative"}
!745 = distinct !{!745, !221}
!746 = !{!"reload.c:alternative_allows_const_pool_ref"}
!747 = distinct !{!747, !221}
!748 = distinct !{!748, !221}
!749 = distinct !{!749, !221}
!750 = !{!"reload.c:dup_replacements"}
!751 = distinct !{!751, !221}
!752 = !{!"function_entry_count", i64 493111}
!753 = !{!"reload.c:combine_reloads"}
!754 = distinct !{!754, !221}
!755 = !{!"branch_weights", i32 1045803934, i32 1101679714}
!756 = !{!"branch_weights", i32 85, i32 164169}
!757 = !{!"branch_weights", i32 169, i32 1}
!758 = !{!"branch_weights", i32 171, i32 7225}
!759 = distinct !{!759, !221}
!760 = distinct !{!760, !221}
!761 = !{!"branch_weights", i32 1, i32 169}
!762 = distinct !{!762, !221}
!763 = !{!"branch_weights", i32 7225, i32 86, i32 85}
!764 = distinct !{!764, !221}
!765 = distinct !{!765, !221}
!766 = !{!"function_entry_count", i64 160087}
!767 = !{!"branch_weights", i32 160087, i32 1}
!768 = !{!"branch_weights", i32 160046, i32 43}
!769 = !{!"branch_weights", i32 1, i32 43}
!770 = !{!"branch_weights", i32 87, i32 1}
!771 = !{!"branch_weights", i32 43, i32 1}
!772 = !{!"branch_weights", i32 1, i32 160046}
!773 = distinct !{!773, !221}
!774 = !{!"reload.c:copy_replacements_1"}
!775 = distinct !{!775, !221}
!776 = distinct !{!776, !221}
!777 = distinct !{!777, !221}
!778 = distinct !{!778, !221}
!779 = distinct !{!779, !221}
!780 = !{!"reload.c:refers_to_mem_for_reload_p"}
!781 = distinct !{!781, !221}
!782 = !{!"function_entry_count", i64 137970}
!783 = !{!"branch_weights", i32 2147468083, i32 -2147483648, i32 15565}
!784 = !{!"branch_weights", i32 15565, i32 2147468083}
!785 = distinct !{!785, !221}
!786 = !{!195, !179, i64 0}
!787 = distinct !{!787, !221}
!788 = !{!"reload.c:recog_memoized"}
!789 = !{!"reload.c:push_replacement"}
!790 = !{!"reload.c:make_memloc"}
!791 = !{!"reload.c:push_reg_equiv_alt_mem"}
!792 = distinct !{!792, !221}
!793 = !{!"reload.c:find_reloads_subreg_address"}
!794 = !{!202, !179, i64 8}
!795 = !{!202, !179, i64 16}
!796 = !{!797, !179, i64 88}
!797 = !{!"rtl_data", !798, i64 0, !799, i64 40, !800, i64 96, !801, i64 112, !803, i64 208, !804, i64 248, !176, i64 312, !179, i64 320, !179, i64 328, !179, i64 336, !179, i64 344, !179, i64 352, !179, i64 360, !179, i64 368, !179, i64 376, !179, i64 384, !179, i64 392, !187, i64 400, !179, i64 408, !179, i64 416, !179, i64 424, !176, i64 432, !176, i64 436, !176, i64 440, !176, i64 444, !176, i64 448, !176, i64 452, !179, i64 456, !177, i64 464, !177, i64 465, !177, i64 466, !177, i64 467, !177, i64 468, !177, i64 469, !177, i64 470, !177, i64 471, !177, i64 472, !177, i64 473, !177, i64 474, !177, i64 475, !177, i64 476, !177, i64 477, !177, i64 478, !177, i64 479, !177, i64 480, !177, i64 481, !177, i64 482, !177, i64 483, !177, i64 484, !177, i64 485}
!798 = !{!"expr_status", !176, i64 0, !176, i64 4, !176, i64 8, !179, i64 16, !179, i64 24, !179, i64 32}
!799 = !{!"emit_status", !176, i64 0, !176, i64 4, !179, i64 8, !179, i64 16, !179, i64 24, !176, i64 32, !176, i64 36, !176, i64 40, !176, i64 44, !179, i64 48}
!800 = !{!"varasm_status", !179, i64 0, !176, i64 8}
!801 = !{!"incoming_args", !176, i64 0, !176, i64 4, !176, i64 8, !179, i64 16, !802, i64 24, !179, i64 88}
!802 = !{!"ix86_args", !176, i64 0, !176, i64 4, !176, i64 8, !176, i64 12, !176, i64 16, !176, i64 20, !176, i64 24, !176, i64 28, !176, i64 32, !176, i64 36, !176, i64 40, !176, i64 44, !176, i64 48, !176, i64 52, !176, i64 56, !176, i64 60}
!803 = !{!"function_subsections", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32}
!804 = !{!"rtl_eh", !179, i64 0, !179, i64 8, !179, i64 16, !179, i64 24, !179, i64 32, !179, i64 40, !177, i64 48}
!805 = !{!"reload.c:find_reloads_address_part"}
!806 = !{!"reload.c:regno_ok_for_base_p"}
!807 = !{!"function_entry_count", i64 156135}
!808 = !{!"reload.c:subst_reg_equivs"}
!809 = !{!"branch_weights", i32 194, i32 1, i32 362, i32 23965, i32 1, i32 1, i32 1, i32 130631, i32 47, i32 1, i32 1, i32 515, i32 428}
!810 = !{!"branch_weights", i32 515, i32 1}
!811 = !{!"branch_weights", i32 1, i32 428}
!812 = !{!"branch_weights", i32 1, i32 620}
!813 = !{!"branch_weights", i32 1241, i32 1}
!814 = !{!"branch_weights", i32 621, i32 620}
!815 = distinct !{!815, !221}
!816 = !{!"reload.c:maybe_memory_address_addr_space_p"}
!817 = !{!"reload.c:find_reloads_address_1"}
!818 = !{!819, !176, i64 0}
!819 = !{!"optab_handlers", !176, i64 0}
!820 = !{!198, !179, i64 0}
!821 = distinct !{!821, !221}
!822 = !{!"reload.c:subst_indexed_address"}
!823 = !{!"reload.c:ok_for_base_p_1"}
!824 = !{!"reload.c:find_inc_amount"}
!825 = distinct !{!825, !221}
!826 = distinct !{!826, !221}
