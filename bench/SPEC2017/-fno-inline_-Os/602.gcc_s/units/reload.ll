; ModuleID = 'reload.c'
source_filename = "reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.reload = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8 }
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.replacement = type { ptr, ptr, i32, i32 }
%struct.secondary_reload_info = type { i32, i32, ptr, i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.decomposition = type { i32, i32, ptr, i64, i64 }

@n_reloads = dso_local local_unnamed_addr global i32 0, align 4
@rld = dso_local local_unnamed_addr global [180 x %struct.reload] zeroinitializer, align 16
@n_earlyclobbers = dso_local local_unnamed_addr global i32 0, align 4
@reload_earlyclobbers = dso_local local_unnamed_addr global [30 x ptr] zeroinitializer, align 16
@reload_n_operands = dso_local local_unnamed_addr global i32 0, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str = private unnamed_addr constant [9 x i8] c"reload.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@secondary_memlocs_elim = internal unnamed_addr global [87 x [30 x ptr]] zeroinitializer, align 16
@secondary_memlocs = internal unnamed_addr global [87 x ptr] zeroinitializer, align 16
@secondary_memlocs_elim_used = internal unnamed_addr global i32 0, align 4
@reg_equiv_constant = external local_unnamed_addr global ptr, align 8
@reg_equiv_memory_loc = external local_unnamed_addr global ptr, align 8
@reg_equiv_address = external local_unnamed_addr global ptr, align 8
@num_not_at_initial_offset = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@replace_reloads = internal unnamed_addr global i32 0, align 4
@reg_equiv_mem = external local_unnamed_addr global ptr, align 8
@this_insn = internal unnamed_addr global ptr null, align 8
@subst_reg_equivs_changed = internal unnamed_addr global i1 false, align 4
@indirect_symref_ok = external local_unnamed_addr global i8, align 1
@double_reg_address_ok = external local_unnamed_addr global i8, align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@reg_equiv_alt_mem_list = external local_unnamed_addr global ptr, align 8
@reg_renumber = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@this_insn_is_asm = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"cannot reload integer constant operand in %<asm%>\00", align 1
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@.str.3 = private unnamed_addr constant [42 x i8] c"impossible register constraint in %<asm%>\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@replacements = internal global [150 x %struct.replacement] zeroinitializer, align 16
@n_replacements = internal unnamed_addr global i32 0, align 4
@static_reload_reg_p = internal unnamed_addr global ptr null, align 8
@hard_regs_live_known = internal unnamed_addr global i32 0, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@output_reloadnum = internal unnamed_addr global i32 0, align 4
@df = external local_unnamed_addr global ptr, align 8
@reg_equiv_invariant = external local_unnamed_addr global ptr, align 8
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"%<&%> constraint used with no register class\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to generate reloads for:\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"inconsistent operand constraints in an %<asm%>\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
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
define dso_local i32 @secondary_reload_class(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  store i32 2956, ptr %5, align 8, !tbaa !273
  %6 = getelementptr inbounds %struct.secondary_reload_info, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !279
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !280
  %8 = call i32 %7(i8 noundef zeroext %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #24
  %9 = load i32, ptr %5, align 8, !tbaa !273
  %10 = icmp eq i32 %9, 2956
  br i1 %10, label %15, label %11, !prof !293

11:                                               ; preds = %4
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = call i32 @scratch_reload_class(i32 noundef %9) #25
  br label %15

15:                                               ; preds = %4, %11, %13
  %16 = phi i32 [ %14, %13 ], [ %8, %11 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @scratch_reload_class(i32 noundef %0) local_unnamed_addr #0 !prof !294 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 4
  %4 = load i8, ptr %3, align 8, !tbaa !295
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 554, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !297
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %9, i64 2, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !298
  %12 = load i8, ptr %11, align 1, !tbaa !300
  %13 = icmp eq i8 %12, 61
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 556, ptr noundef nonnull @.str.1) #24
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds i8, ptr %11, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !300
  %18 = icmp eq i8 %17, 38
  %19 = getelementptr inbounds i8, ptr %11, i64 2
  %20 = select i1 %18, ptr %19, ptr %16
  %21 = load i8, ptr %20, align 1, !tbaa !300
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
define dso_local ptr @get_secondary_mem(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !294 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !300
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !300
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
  %21 = load ptr, ptr %20, align 8, !tbaa !301
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %16
  %24 = getelementptr inbounds [87 x ptr], ptr @secondary_memlocs, i64 0, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !301
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = zext i32 %17 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !300
  %31 = zext i8 %30 to i64
  %32 = tail call ptr @assign_stack_local(i32 noundef %17, i64 noundef %31, i32 noundef 0) #24
  store ptr %32, ptr %24, align 8, !tbaa !301
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi ptr [ %32, %27 ], [ %25, %23 ]
  %35 = tail call ptr @eliminate_regs(ptr noundef %34, i32 noundef 0, ptr noundef null) #24
  store ptr %35, ptr %5, align 8, !tbaa !301
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !300
  %38 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !300
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !302
  br label %44

44:                                               ; preds = %33, %41
  %45 = phi i8 [ %43, %41 ], [ 0, %33 ]
  %46 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %17, ptr noundef %37, i8 noundef zeroext %45) #25, !range !304
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load ptr, ptr %24, align 8, !tbaa !301
  %50 = icmp eq ptr %35, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call ptr @copy_rtx(ptr noundef nonnull %35) #24
  store ptr %52, ptr %5, align 8, !tbaa !301
  br label %53

53:                                               ; preds = %48, %51
  %54 = phi ptr [ %35, %48 ], [ %52, %51 ]
  %55 = icmp eq i32 %3, 0
  %56 = icmp eq i32 %3, 1
  %57 = select i1 %56, i32 5, i32 9
  %58 = select i1 %55, i32 3, i32 %57
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !300
  %61 = call fastcc i32 @find_reloads_address(i32 noundef %17, ptr noundef nonnull %5, ptr noundef %60, ptr noundef nonnull %59, i32 noundef %2, i32 noundef %58, i32 noundef 0, ptr noundef null) #25
  %62 = load ptr, ptr %5, align 8, !tbaa !301
  br label %63

63:                                               ; preds = %44, %53
  %64 = phi ptr [ %35, %44 ], [ %62, %53 ]
  store ptr %64, ptr %20, align 8, !tbaa !301
  %65 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !305
  %66 = icmp sgt i32 %65, %17
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = add nsw i32 %17, 1
  store i32 %68, ptr @secondary_memlocs_elim_used, align 4, !tbaa !305
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
define dso_local i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !306 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !307
  %5 = tail call zeroext i8 %4(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %2) #24
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_reloads_address(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 !prof !308 !PGOFuncName !309 {
  %9 = alloca ptr, align 8
  %10 = icmp ne ptr %1, null
  br i1 %10, label %11, label %19, !prof !310

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !301
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !300
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !311

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !302
  br label %19

19:                                               ; preds = %8, %16, %11
  %20 = phi i8 [ %18, %16 ], [ 0, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %141, !prof !312

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #25
  %26 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !301
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !313

31:                                               ; preds = %24
  %32 = lshr i32 %21, 16
  %33 = and i32 %32, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %29, ptr noundef %3, i32 noundef 13, i32 noundef %33, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  br label %419

34:                                               ; preds = %24
  %35 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %36 = getelementptr inbounds ptr, ptr %35, i64 %27
  %37 = load ptr, ptr %36, align 8, !tbaa !301
  store ptr %37, ptr %9, align 8, !tbaa !301
  %38 = icmp eq ptr %37, null
  br i1 %38, label %126, label %39, !prof !314

39:                                               ; preds = %34
  %40 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %41 = getelementptr inbounds ptr, ptr %40, i64 %27
  %42 = load ptr, ptr %41, align 8, !tbaa !301
  %43 = icmp ne ptr %42, null
  %44 = load i32, ptr @num_not_at_initial_offset, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %135, !prof !315

47:                                               ; preds = %39
  %48 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %2, i32 noundef %25) #25
  store ptr %48, ptr %9, align 8, !tbaa !301
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !300
  %54 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !300
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 5
  %59 = load i8, ptr %58, align 8, !tbaa !302
  br label %60

60:                                               ; preds = %47, %57
  %61 = phi i8 [ %59, %57 ], [ 0, %47 ]
  %62 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %51, ptr noundef %53, i8 noundef zeroext %61) #25, !range !304
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, ptr %48, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = load ptr, ptr %52, align 8, !tbaa !300
  %69 = icmp eq i32 %5, 3
  %70 = icmp eq i32 %5, 5
  %71 = select i1 %70, i32 6, i32 %5
  %72 = select i1 %69, i32 4, i32 %71
  %73 = call fastcc i32 @find_reloads_address(i32 noundef %67, ptr noundef nonnull %9, ptr noundef %68, ptr noundef nonnull %52, i32 noundef %4, i32 noundef %72, i32 noundef %6, ptr noundef %7) #25
  %74 = load ptr, ptr %9, align 8, !tbaa !301
  %75 = call i32 @rtx_equal_p(ptr noundef %74, ptr noundef nonnull %48) #24
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr %9, align 8, !tbaa !301
  br i1 %76, label %78, label %80

78:                                               ; preds = %64
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %25, ptr noundef %77) #25
  %79 = load ptr, ptr %9, align 8, !tbaa !301
  br label %80

80:                                               ; preds = %64, %78, %60
  %81 = phi ptr [ %77, %64 ], [ %79, %78 ], [ %48, %60 ]
  %82 = icmp sgt i32 %6, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %80
  %84 = call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %81, i8 noundef zeroext %20) #25, !range !304
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %9, align 8, !tbaa !301
  br i1 %85, label %135, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !300
  %90 = load i32, ptr %89, align 8
  %91 = trunc i32 %90 to i16
  switch i16 %91, label %135 [
    i16 37, label %107
    i16 49, label %92
  ]

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !300
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %135

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !300
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !305
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %107, label %135

107:                                              ; preds = %87, %98
  %108 = load i32, ptr @replace_reloads, align 4, !tbaa !305
  %109 = icmp ne i32 %108, 0
  %110 = load i32, ptr @num_not_at_initial_offset, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %419

113:                                              ; preds = %107
  %114 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %115 = getelementptr inbounds ptr, ptr %114, i64 %27
  %116 = load ptr, ptr %115, align 8, !tbaa !301
  %117 = call i32 @rtx_equal_p(ptr noundef nonnull %86, ptr noundef %116) #24
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %419

119:                                              ; preds = %113
  %120 = load ptr, ptr %9, align 8, !tbaa !301
  store ptr %120, ptr %3, align 8, !tbaa !301
  %121 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %2) #24
  %122 = call ptr @emit_insn_before(ptr noundef %121, ptr noundef %7) #24
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, -16711681
  %125 = or disjoint i32 %124, 917504
  store i32 %125, ptr %122, align 8
  br label %419

126:                                              ; preds = %34
  %127 = icmp slt i32 %25, 53
  br i1 %127, label %128, label %135, !prof !316

128:                                              ; preds = %126
  %129 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %25) #25
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %135, label %131, !prof !317

131:                                              ; preds = %128
  %132 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %133 = tail call i32 @regno_clobbered_p(i32 noundef %25, ptr noundef %132, i32 noundef %0, i32 noundef 0) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %419, label %135, !prof !316

135:                                              ; preds = %80, %83, %92, %98, %87, %126, %128, %131, %39
  %136 = phi ptr [ %2, %39 ], [ %2, %131 ], [ %2, %128 ], [ %2, %126 ], [ %86, %87 ], [ %86, %98 ], [ %86, %92 ], [ %86, %83 ], [ %81, %80 ]
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = call i32 @push_reload(ptr noundef nonnull %136, ptr noundef null, ptr noundef %3, ptr noundef null, i32 noundef 13, i32 noundef %139, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #25
  br label %419

141:                                              ; preds = %19
  %142 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %20) #25, !range !304
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %173, label %144, !prof !318

144:                                              ; preds = %141
  %145 = load i32, ptr %2, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 49
  br i1 %147, label %148, label %167, !prof !319

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !300
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 30
  br i1 %153, label %154, label %167, !prof !320

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !300
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 37
  br i1 %159, label %160, label %167, !prof !321

160:                                              ; preds = %154
  %161 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %162 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %156) #25
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !301
  %166 = icmp eq ptr %165, null
  br i1 %166, label %419, label %167, !prof !322

167:                                              ; preds = %160, %154, %148, %144
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %168 = tail call fastcc ptr @subst_reg_equivs(ptr noundef nonnull %2, ptr noundef %7) #25
  store ptr %168, ptr %3, align 8, !tbaa !301
  %169 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %169, label %170, label %419, !prof !323

170:                                              ; preds = %167
  %171 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %20) #25, !range !304
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %419

173:                                              ; preds = %170, %141
  %174 = load i32, ptr %2, align 8
  %175 = and i32 %174, 65535
  %176 = icmp ne i32 %175, 61
  br i1 %176, label %181, label %177, !prof !324

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !301
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
  ], !prof !325

186:                                              ; preds = %181
  store ptr %184, ptr %9, align 8, !tbaa !301
  %187 = load i32, ptr %184, align 8
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  %190 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !300
  %192 = icmp eq i32 %5, 3
  %193 = icmp eq i32 %5, 5
  %194 = select i1 %193, i32 6, i32 %5
  %195 = select i1 %192, i32 4, i32 %194
  %196 = icmp eq i32 %6, 0
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 1)
  %198 = call fastcc i32 @find_reloads_address(i32 noundef %189, ptr noundef nonnull %9, ptr noundef %191, ptr noundef nonnull %190, i32 noundef %4, i32 noundef %195, i32 noundef %197, ptr noundef %7) #25
  %199 = load ptr, ptr %9, align 8, !tbaa !301
  %200 = icmp ne ptr %199, %184
  %201 = and i1 %10, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %186
  %203 = load ptr, ptr %1, align 8, !tbaa !301
  %204 = call ptr @copy_rtx(ptr noundef %203) #24
  store ptr %204, ptr %1, align 8, !tbaa !301
  %205 = load ptr, ptr %9, align 8, !tbaa !301
  %206 = getelementptr inbounds %struct.rtx_def, ptr %204, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !300
  call void @copy_replacements(ptr noundef %205, ptr noundef %207) #25
  %208 = load ptr, ptr %1, align 8, !tbaa !301
  %209 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  br i1 %176, label %213, label %210

210:                                              ; preds = %202
  %211 = load ptr, ptr %209, align 8, !tbaa !301
  %212 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  br label %213

213:                                              ; preds = %202, %210, %186
  %214 = phi ptr [ %212, %210 ], [ %209, %202 ], [ %183, %186 ]
  %215 = load ptr, ptr %9, align 8, !tbaa !301
  br i1 %196, label %241, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !300
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
  %231 = load ptr, ptr %230, align 8, !tbaa !300
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 37
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !300
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
  %249 = load ptr, ptr %248, align 8, !tbaa !300
  %250 = load i32, ptr %249, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 37
  br i1 %252, label %253, label %290, !prof !326

253:                                              ; preds = %247
  %254 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %249) #25
  %255 = icmp ult i32 %254, 53
  br i1 %255, label %256, label %290, !prof !327

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 0, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !300
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 30
  br i1 %261, label %262, label %290, !prof !328

262:                                              ; preds = %256
  %263 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %249) #25
  %264 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %263) #25
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %290, label %266

266:                                              ; preds = %262
  br i1 %10, label %267, label %274

267:                                              ; preds = %266
  %268 = load ptr, ptr %1, align 8, !tbaa !301
  %269 = tail call ptr @copy_rtx(ptr noundef %268) #24
  store ptr %269, ptr %1, align 8, !tbaa !301
  %270 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  br i1 %176, label %274, label %271

271:                                              ; preds = %267
  %272 = load ptr, ptr %270, align 8, !tbaa !301
  %273 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1
  br label %274

274:                                              ; preds = %267, %271, %266
  %275 = phi ptr [ %273, %271 ], [ %270, %267 ], [ %183, %266 ]
  %276 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !300
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %274
  %279 = tail call ptr @copy_rtx(ptr noundef nonnull %184) #24
  store ptr %279, ptr %275, align 8, !tbaa !301
  %280 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 1
  %281 = load ptr, ptr %280, align 8, !tbaa !300
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
  br i1 %298, label %299, label %365, !prof !329

299:                                              ; preds = %293
  %300 = load ptr, ptr %291, align 8, !tbaa !300
  %301 = load ptr, ptr %292, align 8, !tbaa !300
  %302 = load i32, ptr %301, align 8
  %303 = and i32 %302, 65535
  %304 = icmp eq i32 %303, 30
  br i1 %304, label %305, label %365, !prof !330

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
  %311 = load ptr, ptr %310, align 8, !tbaa !300
  %312 = load i32, ptr %311, align 8
  %313 = and i32 %312, 65535
  %314 = icmp eq i32 %313, 37
  br i1 %314, label %315, label %365, !prof !331

315:                                              ; preds = %308
  %316 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %311) #25
  %317 = icmp ugt i32 %316, 52
  br i1 %317, label %365, label %318, !prof !332

318:                                              ; preds = %315
  %319 = xor i64 %295, 1
  %320 = getelementptr inbounds [1 x %union.rtunion_def], ptr %309, i64 0, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !300
  %322 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %316) #25
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %332, !prof !333

324:                                              ; preds = %318
  %325 = load <4 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %326 = insertelement <4 x ptr> poison, ptr %311, i64 0
  %327 = shufflevector <4 x ptr> %326, <4 x ptr> poison, <4 x i32> zeroinitializer
  %328 = icmp eq <4 x ptr> %327, %325
  %329 = freeze <4 x i1> %328
  %330 = bitcast <4 x i1> %329 to i4
  %331 = icmp eq i4 %330, 0
  br i1 %331, label %365, label %332

332:                                              ; preds = %324, %318
  %333 = tail call fastcc i32 @maybe_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %184, i8 noundef zeroext %20, ptr noundef nonnull %320) #25
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %365, !prof !333

335:                                              ; preds = %332
  %336 = load ptr, ptr %292, align 8, !tbaa !300
  %337 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %338 = load i64, ptr %337, align 8, !tbaa !300
  %339 = tail call ptr @plus_constant(ptr noundef nonnull %311, i64 noundef %338) #24
  %340 = load ptr, ptr %291, align 8, !tbaa !300
  %341 = load i32, ptr %340, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 49
  %344 = load i32, ptr %184, align 8
  %345 = lshr i32 %344, 16
  %346 = and i32 %345, 255
  %347 = select i1 %294, ptr %339, ptr %321
  %348 = select i1 %294, ptr %321, ptr %339
  %349 = select i1 %343, i32 49, i32 122
  %350 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %349, i32 noundef %346, ptr noundef %347, ptr noundef %348) #24
  store ptr %350, ptr %183, align 8, !tbaa !301
  %351 = getelementptr inbounds %struct.rtx_def, ptr %350, i64 0, i32 1
  %352 = getelementptr inbounds [1 x %union.rtunion_def], ptr %351, i64 0, i64 %295
  %353 = load ptr, ptr %352, align 8, !tbaa !300
  %354 = load i32, ptr %350, align 8
  %355 = lshr i32 %354, 16
  %356 = and i32 %355, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef %353, ptr noundef nonnull %352, i32 noundef 13, i32 noundef %356, i32 noundef %4, i32 noundef %5, i32 noundef %6) #25
  %357 = getelementptr inbounds [1 x %union.rtunion_def], ptr %351, i64 0, i64 %319
  %358 = load ptr, ptr %357, align 8, !tbaa !300
  %359 = load i32, ptr %350, align 8
  %360 = and i32 %359, 65535
  %361 = load ptr, ptr %352, align 8, !tbaa !300
  %362 = load i32, ptr %361, align 8
  %363 = and i32 %362, 65535
  %364 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %358, i32 noundef 1, i32 noundef %360, i32 noundef %363, ptr noundef nonnull %357, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %7) #25
  br label %419

365:                                              ; preds = %293, %305, %299, %315, %308, %324, %332
  br i1 %294, label %293, label %366, !prof !334, !llvm.loop !335

366:                                              ; preds = %365
  store ptr %184, ptr %9, align 8, !tbaa !301
  %367 = load i32, ptr %184, align 8
  %368 = and i32 %367, 65535
  %369 = icmp eq i32 %368, 49
  br i1 %369, label %370, label %383, !prof !324

370:                                              ; preds = %366
  %371 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %184) #25
  store ptr %371, ptr %9, align 8, !tbaa !301
  %372 = icmp eq ptr %371, %184
  br i1 %372, label %383, label %373, !prof !337

373:                                              ; preds = %370
  %374 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %371, i8 noundef zeroext %20) #25, !range !304
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %383, label %376

376:                                              ; preds = %373
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %377 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %371, ptr noundef %7) #25
  store ptr %377, ptr %9, align 8, !tbaa !301
  %378 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %377, i8 noundef zeroext %20) #25, !range !304
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %379, %376
  store ptr %377, ptr %183, align 8, !tbaa !301
  br label %419

383:                                              ; preds = %366, %379, %373, %370
  %384 = load i32, ptr %184, align 8
  %385 = and i32 %384, 65535
  %386 = zext nneg i32 %385 to i64
  %387 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !305
  %389 = icmp eq i32 %388, 9
  br i1 %389, label %390, label %417, !prof !338

390:                                              ; preds = %383
  %391 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %184, i8 noundef zeroext %20) #25, !range !304
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %417

393:                                              ; preds = %390
  %394 = load i32, ptr %184, align 8
  %395 = lshr i32 %394, 16
  %396 = and i32 %395, 255
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %393
  %399 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !339
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
  %408 = load ptr, ptr %1, align 8, !tbaa !301
  %409 = tail call ptr @copy_rtx(ptr noundef %408) #24
  store ptr %409, ptr %1, align 8, !tbaa !301
  %410 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1
  br i1 %176, label %414, label %411

411:                                              ; preds = %407
  %412 = load ptr, ptr %410, align 8, !tbaa !301
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !340 !PGOFuncName !341 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !300
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_reloads_address_part(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !prof !294 !PGOFuncName !342 {
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !301
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !305
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
  store ptr %24, ptr %8, align 8, !tbaa !301
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !300
  %27 = call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %8, ptr noundef %26, ptr noundef nonnull %25, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null) #25
  %28 = load ptr, ptr %8, align 8, !tbaa !301
  br label %65

29:                                               ; preds = %21, %7
  %30 = phi i32 [ %22, %21 ], [ %9, %7 ]
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !300
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !305
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %65

42:                                               ; preds = %33
  %43 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %35) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %34, align 8, !tbaa !300
  %47 = tail call i32 @ix86_preferred_reload_class(ptr noundef %46, i32 noundef %2) #24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45, %42
  %50 = load i32, ptr %0, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load ptr, ptr %34, align 8, !tbaa !300
  %54 = tail call ptr @force_const_mem(i32 noundef %52, ptr noundef %53) #24
  %55 = load i32, ptr %0, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !300
  %60 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %57, ptr noundef %59, ptr noundef %54) #24
  store ptr %60, ptr %8, align 8, !tbaa !301
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !300
  %64 = tail call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %61, ptr noundef %63, ptr noundef nonnull %62, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null) #25
  br label %65

65:                                               ; preds = %29, %33, %45, %49, %23
  %66 = phi ptr [ %0, %29 ], [ %0, %33 ], [ %0, %45 ], [ %60, %49 ], [ %28, %23 ]
  %67 = call i32 @push_reload(ptr noundef %66, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_memloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !294 !PGOFuncName !343 {
  %3 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = tail call ptr @eliminate_regs(ptr noundef %6, i32 noundef 0, ptr noundef null) #24
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  %10 = tail call zeroext i8 @rtx_varies_p(ptr noundef %9, i8 noundef zeroext 0) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @copy_rtx(ptr noundef %9) #24
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %16 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  %18 = load ptr, ptr %17, align 8, !tbaa !301
  %19 = tail call ptr @replace_equiv_address_nv(ptr noundef %18, ptr noundef %15) #24
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call ptr @adjust_address_1(ptr noundef %19, i32 noundef %22, i64 noundef 0, i32 noundef 0, i32 noundef 1) #24
  %24 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %25 = getelementptr inbounds ptr, ptr %24, i64 %4
  %26 = load ptr, ptr %25, align 8, !tbaa !301
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = tail call ptr @copy_rtx(ptr noundef %23) #24
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi ptr [ %29, %28 ], [ %23, %14 ]
  ret ptr %31
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_reg_equiv_alt_mem(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !294 !PGOFuncName !344 {
  %3 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !301
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %12

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !llvm.loop !345

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !300
  %16 = tail call i32 @rtx_equal_p(ptr noundef %15, ptr noundef %1) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %8, label %27

18:                                               ; preds = %8
  %19 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !301
  %20 = getelementptr inbounds ptr, ptr %19, i64 %4
  %21 = load ptr, ptr %20, align 8, !tbaa !301
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi ptr [ %21, %18 ], [ null, %2 ]
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef 3, ptr noundef %1, ptr noundef %23) #24
  %25 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !301
  %26 = getelementptr inbounds ptr, ptr %25, i64 %4
  store ptr %24, ptr %26, align 8, !tbaa !301
  br label %27

27:                                               ; preds = %12, %22
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %0) unnamed_addr #4 !prof !346 !PGOFuncName !347 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %3, label %11, !prof !348

3:                                                ; preds = %1
  %4 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !349
  %8 = icmp sgt i16 %7, -1
  br i1 %8, label %9, label %11, !prof !351

9:                                                ; preds = %3
  %10 = zext nneg i16 %7 to i32
  br label %11

11:                                               ; preds = %9, %3, %1
  %12 = phi i32 [ %10, %9 ], [ %0, %3 ], [ %0, %1 ]
  %13 = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %12) #25
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @regno_clobbered_p(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !352 {
  %5 = icmp ult i32 %0, 53
  br i1 %5, label %7, label %6, !prof !353

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7261, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %4, %6
  %8 = zext i32 %0 to i64
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !300
  %12 = zext i8 %11 to i32
  %13 = add i32 %12, %0
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !300
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 25
  br i1 %18, label %23, label %19, !prof !354

19:                                               ; preds = %7
  %20 = icmp eq i32 %3, 1
  br i1 %20, label %21, label %35, !prof !355

21:                                               ; preds = %19
  %22 = trunc i32 %16 to i16
  switch i16 %22, label %68 [
    i16 23, label %23
    i16 15, label %37
  ], !prof !356

23:                                               ; preds = %21, %7
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !300
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %68, !prof !357

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #25
  %31 = icmp uge i32 %30, %0
  %32 = icmp ult i32 %30, %13
  %33 = select i1 %31, i1 %32, i1 false, !prof !358
  %34 = zext i1 %33 to i32
  br label %68

35:                                               ; preds = %19
  %36 = icmp eq i32 %17, 15
  br i1 %36, label %37, label %68, !prof !359

37:                                               ; preds = %21, %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !300
  %40 = load i32, ptr %39, align 8, !tbaa !360
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %68, label %42, !prof !362

42:                                               ; preds = %37
  %43 = icmp eq i32 %17, 23
  %44 = and i1 %20, %43
  %45 = zext nneg i32 %40 to i64
  br label %46

46:                                               ; preds = %42, %66
  %47 = phi i64 [ %45, %42 ], [ %48, %66 ]
  %48 = add nsw i64 %47, -1
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !301
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 25
  %54 = or i1 %53, %44
  br i1 %54, label %55, label %66, !prof !363

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !300
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %66, !prof !364

61:                                               ; preds = %55
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #25
  %63 = icmp uge i32 %62, %0
  %64 = icmp ult i32 %62, %13
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %68, label %66, !prof !365

66:                                               ; preds = %46, %61, %55
  %67 = icmp ult i64 %47, 2
  br i1 %67, label %68, label %46, !prof !366, !llvm.loop !367

68:                                               ; preds = %61, %66, %37, %21, %23, %35, %29
  %69 = phi i32 [ %34, %29 ], [ 0, %35 ], [ 0, %23 ], [ 0, %21 ], [ 0, %37 ], [ 1, %61 ], [ 0, %66 ]
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @push_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 !prof !368 {
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %12, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  store i32 2956, ptr %13, align 4, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #23
  store i32 2956, ptr %14, align 4, !tbaa !305
  %15 = icmp eq i32 %5, 0
  %16 = icmp ne ptr %0, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %22, !prof !369

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
  br i1 %26, label %27, label %31, !prof !370

27:                                               ; preds = %22
  %28 = load i32, ptr %1, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %30, %27 ], [ %6, %22 ]
  %33 = icmp eq ptr %0, null
  br i1 %33, label %53, label %34, !prof !371

34:                                               ; preds = %31
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %53, !prof !372

38:                                               ; preds = %34
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %40 = icmp slt i32 %39, 53
  br i1 %40, label %53, label %41, !prof !373

41:                                               ; preds = %38
  %42 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %43 = zext nneg i32 %39 to i64
  %44 = getelementptr inbounds i16, ptr %42, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !349
  %46 = icmp sgt i16 %45, -1
  br i1 %46, label %53, label %47, !prof !374

47:                                               ; preds = %41
  %48 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %49 = getelementptr inbounds ptr, ptr %48, i64 %43
  %50 = load ptr, ptr %49, align 8, !tbaa !301
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !375

52:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #24
  br label %53

53:                                               ; preds = %52, %47, %41, %38, %34, %31
  br i1 %25, label %54, label %96, !prof !376

54:                                               ; preds = %53
  %55 = load i32, ptr %1, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %73, !prof !377

58:                                               ; preds = %54
  %59 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %60 = icmp slt i32 %59, 53
  br i1 %60, label %73, label %61, !prof !378

61:                                               ; preds = %58
  %62 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %63 = zext nneg i32 %59 to i64
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !349
  %66 = icmp sgt i16 %65, -1
  br i1 %66, label %73, label %67, !prof !379

67:                                               ; preds = %61
  %68 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %69 = getelementptr inbounds ptr, ptr %68, i64 %63
  %70 = load ptr, ptr %69, align 8, !tbaa !301
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72, !prof !380

72:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #24
  br label %73

73:                                               ; preds = %72, %67, %61, %58, %54
  br i1 %16, label %74, label %267, !prof !381

74:                                               ; preds = %73
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %99, !prof !382

78:                                               ; preds = %74
  %79 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %99, label %81, !prof !383

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !300
  %84 = load i32, ptr %83, align 8
  %85 = trunc i32 %84 to i16
  switch i16 %85, label %99 [
    i16 77, label %86
    i16 76, label %86
    i16 79, label %86
    i16 75, label %90
    i16 74, label %90
    i16 78, label %90
  ], !prof !384

86:                                               ; preds = %81, %81, %81
  %87 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !300
  %89 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %88) #24
  store ptr %89, ptr %12, align 8, !tbaa !301
  br label %96

90:                                               ; preds = %81, %81, %81
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !300
  %93 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !300
  %95 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %1, ptr noundef %94) #24
  br label %99

96:                                               ; preds = %53, %86
  %97 = phi ptr [ %89, %86 ], [ %0, %53 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %258, label %99, !prof !385

99:                                               ; preds = %90, %81, %78, %74, %96
  %100 = phi ptr [ %1, %96 ], [ %1, %81 ], [ %95, %90 ], [ %1, %78 ], [ %1, %74 ]
  %101 = phi ptr [ %97, %96 ], [ %0, %81 ], [ %0, %90 ], [ %0, %78 ], [ %0, %74 ]
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 39
  br i1 %104, label %105, label %227, !prof !386

105:                                              ; preds = %99
  %106 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %101) #24
  %107 = icmp ne i32 %7, 0
  %108 = or i32 %106, %7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %227, label %110, !prof !387

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !300
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %115, i32 noundef %23, i32 noundef %4) #24
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %227, !prof !388

118:                                              ; preds = %110
  %119 = load ptr, ptr %111, align 8, !tbaa !300
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !305
  %125 = icmp eq i32 %124, 9
  %126 = icmp eq i32 %121, 49
  %127 = or i1 %107, %126
  %128 = or i1 %125, %127
  br i1 %128, label %206, label %129, !prof !389

129:                                              ; preds = %118
  %130 = icmp eq i32 %121, 37
  br i1 %130, label %131, label %134, !prof !388

131:                                              ; preds = %129
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %119) #25
  %133 = icmp ugt i32 %132, 52
  br i1 %133, label %136, label %147, !prof !390

134:                                              ; preds = %129
  %135 = icmp eq i32 %121, 43
  br i1 %135, label %136, label %180, !prof !391

136:                                              ; preds = %134, %131
  %137 = zext i32 %23 to i64
  %138 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !300
  %140 = lshr i32 %120, 16
  %141 = and i32 %140, 255
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !300
  %145 = icmp ugt i8 %139, %144
  br i1 %145, label %206, label %146, !prof !392

146:                                              ; preds = %136
  br i1 %130, label %147, label %180, !prof !393

147:                                              ; preds = %131, %146
  %148 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %119) #25
  %149 = icmp ult i32 %148, 53
  br i1 %149, label %150, label %180, !prof !394

150:                                              ; preds = %147
  %151 = icmp eq ptr %100, null
  br i1 %151, label %155, label %152, !prof !395

152:                                              ; preds = %150
  %153 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %101) #24
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %180, label %155, !prof !396

155:                                              ; preds = %152, %150
  %156 = zext i32 %23 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !300
  %159 = icmp ult i8 %158, 5
  br i1 %159, label %160, label %176, !prof !397

160:                                              ; preds = %155
  %161 = load ptr, ptr %111, align 8, !tbaa !300
  %162 = load i32, ptr %161, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !300
  %168 = icmp ugt i8 %167, 4
  br i1 %168, label %169, label %176, !prof !398

169:                                              ; preds = %160
  %170 = lshr i8 %167, 2
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %161) #25
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %172, i64 %165
  %174 = load i8, ptr %173, align 1, !tbaa !300
  %175 = icmp eq i8 %170, %174
  br i1 %175, label %176, label %206

176:                                              ; preds = %169, %160, %155
  %177 = tail call i32 @subreg_regno(ptr noundef nonnull %101) #24
  %178 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %177, i32 noundef %23) #24
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %206, label %180, !prof !398

180:                                              ; preds = %134, %176, %152, %147, %146
  %181 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %4, i32 noundef %23, ptr noundef nonnull %101) #25
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183, !prof !399

183:                                              ; preds = %180
  %184 = load ptr, ptr %111, align 8, !tbaa !300
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = tail call i32 @secondary_reload_class(i8 noundef zeroext 1, i32 noundef %4, i32 noundef %187, ptr noundef nonnull %184) #25
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %206, label %190

190:                                              ; preds = %183, %180
  %191 = load ptr, ptr %111, align 8, !tbaa !300
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 37
  br i1 %194, label %195, label %227, !prof !399

195:                                              ; preds = %190
  %196 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %191) #25
  %197 = icmp ult i32 %196, 53
  br i1 %197, label %198, label %227, !prof !394

198:                                              ; preds = %195
  %199 = lshr i32 %192, 16
  %200 = and i32 %199, 255
  %201 = zext nneg i32 %196 to i64
  %202 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !305
  %204 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %200, i32 noundef %23, i32 noundef %203) #24
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %227, label %206, !prof !397

206:                                              ; preds = %198, %183, %176, %169, %136, %118
  %207 = load ptr, ptr %111, align 8, !tbaa !301
  store ptr %207, ptr %12, align 8, !tbaa !301
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 43
  br i1 %210, label %211, label %223, !prof !400

211:                                              ; preds = %206
  %212 = lshr i32 %208, 16
  %213 = and i32 %212, 255
  %214 = zext nneg i32 %213 to i64
  %215 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !300
  %217 = zext i32 %23 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !300
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
  %232 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef nonnull %228, i32 noundef %230, i32 noundef 0) #25, !range !401
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %258, label %234, !prof !402

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !300
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 37
  br i1 %239, label %240, label %254

240:                                              ; preds = %234
  %241 = lshr i32 %237, 16
  %242 = and i32 %241, 255
  %243 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %236) #25
  %244 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1, i32 0, i32 0, i64 1
  %245 = load i32, ptr %244, align 8, !tbaa !300
  %246 = load i32, ptr %228, align 8
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = tail call i32 @subreg_regno_offset(i32 noundef %243, i32 noundef %242, i32 noundef %245, i32 noundef %248) #24
  %250 = load ptr, ptr %235, align 8, !tbaa !300
  %251 = tail call fastcc i32 @rhs_regno(ptr noundef %250) #25
  %252 = tail call fastcc i32 @find_valid_class(i32 noundef %230, i32 noundef %242, i32 noundef %249, i32 noundef %251) #25, !range !403
  %253 = load ptr, ptr %235, align 8, !tbaa !300
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
  br i1 %266, label %429, label %267, !prof !404

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
  br i1 %277, label %278, label %390, !prof !405

278:                                              ; preds = %267
  %279 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %269) #24
  %280 = icmp ne i32 %7, 0
  %281 = or i32 %279, %7
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %390, label %283, !prof !406

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !300
  %286 = load i32, ptr %285, align 8
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %288, i32 noundef %32, i32 noundef %4) #24
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %390, !prof !407

291:                                              ; preds = %283
  %292 = load ptr, ptr %284, align 8, !tbaa !300
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 65535
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !305
  %298 = icmp eq i32 %297, 9
  %299 = or i1 %280, %298
  br i1 %299, label %369, label %300, !prof !408

300:                                              ; preds = %291
  %301 = icmp eq i32 %294, 37
  br i1 %301, label %302, label %305, !prof !407

302:                                              ; preds = %300
  %303 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %292) #25
  %304 = icmp ugt i32 %303, 52
  br i1 %304, label %307, label %318, !prof !409

305:                                              ; preds = %300
  %306 = icmp eq i32 %294, 43
  br i1 %306, label %307, label %343, !prof !410

307:                                              ; preds = %305, %302
  %308 = zext i32 %32 to i64
  %309 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !300
  %311 = lshr i32 %293, 16
  %312 = and i32 %311, 255
  %313 = zext nneg i32 %312 to i64
  %314 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !300
  %316 = icmp ugt i8 %310, %315
  br i1 %316, label %369, label %317, !prof !411

317:                                              ; preds = %307
  br i1 %301, label %318, label %343, !prof !412

318:                                              ; preds = %302, %317
  %319 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %292) #25
  %320 = icmp ult i32 %319, 53
  br i1 %320, label %321, label %343, !prof !413

321:                                              ; preds = %318
  %322 = zext i32 %32 to i64
  %323 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !300
  %325 = icmp ult i8 %324, 5
  br i1 %325, label %326, label %339, !prof !414

326:                                              ; preds = %321
  %327 = lshr i32 %293, 16
  %328 = and i32 %327, 255
  %329 = zext nneg i32 %328 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !300
  %332 = icmp ugt i8 %331, 4
  br i1 %332, label %333, label %339, !prof !415

333:                                              ; preds = %326
  %334 = lshr i8 %331, 2
  %335 = zext nneg i32 %319 to i64
  %336 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %335, i64 %329
  %337 = load i8, ptr %336, align 1, !tbaa !300
  %338 = icmp eq i8 %334, %337
  br i1 %338, label %339, label %369, !prof !416

339:                                              ; preds = %333, %326, %321
  %340 = tail call i32 @subreg_regno(ptr noundef nonnull %269) #24
  %341 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %340, i32 noundef %32) #24
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %369, label %343, !prof !417

343:                                              ; preds = %305, %339, %318, %317
  %344 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %4, i32 noundef %32, ptr noundef nonnull %269) #25
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %353, label %346, !prof !418

346:                                              ; preds = %343
  %347 = load ptr, ptr %284, align 8, !tbaa !300
  %348 = load i32, ptr %347, align 8
  %349 = lshr i32 %348, 16
  %350 = and i32 %349, 255
  %351 = tail call i32 @secondary_reload_class(i8 noundef zeroext 0, i32 noundef %4, i32 noundef %350, ptr noundef nonnull %347) #25
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %369, label %353

353:                                              ; preds = %346, %343
  %354 = load ptr, ptr %284, align 8, !tbaa !300
  %355 = load i32, ptr %354, align 8
  %356 = and i32 %355, 65535
  %357 = icmp eq i32 %356, 37
  br i1 %357, label %358, label %390, !prof !418

358:                                              ; preds = %353
  %359 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %354) #25
  %360 = icmp ult i32 %359, 53
  br i1 %360, label %361, label %390, !prof !413

361:                                              ; preds = %358
  %362 = lshr i32 %355, 16
  %363 = and i32 %362, 255
  %364 = zext nneg i32 %359 to i64
  %365 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !305
  %367 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %363, i32 noundef %32, i32 noundef %366) #24
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %390, label %369, !prof !414

369:                                              ; preds = %361, %346, %339, %333, %307, %291
  %370 = load ptr, ptr %284, align 8, !tbaa !301
  %371 = load i32, ptr %370, align 8
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 43
  br i1 %373, label %374, label %386, !prof !419

374:                                              ; preds = %369
  %375 = lshr i32 %371, 16
  %376 = and i32 %375, 255
  %377 = zext nneg i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !300
  %380 = zext i32 %32 to i64
  %381 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !300
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
  %395 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef nonnull %394, i32 noundef %391, i32 noundef 1) #25, !range !401
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %414, label %397, !prof !420

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !300
  %400 = load i32, ptr %399, align 8
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  %403 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %399) #25
  %404 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1, i32 0, i32 0, i64 1
  %405 = load i32, ptr %404, align 8, !tbaa !300
  %406 = load i32, ptr %394, align 8
  %407 = lshr i32 %406, 16
  %408 = and i32 %407, 255
  %409 = tail call i32 @subreg_regno_offset(i32 noundef %403, i32 noundef %402, i32 noundef %405, i32 noundef %408) #24
  %410 = load ptr, ptr %398, align 8, !tbaa !300
  %411 = tail call fastcc i32 @rhs_regno(ptr noundef %410) #25
  %412 = tail call fastcc i32 @find_valid_class(i32 noundef %391, i32 noundef %402, i32 noundef %409, i32 noundef %411) #25, !range !403
  %413 = tail call i32 @push_reload(ptr noundef nonnull %399, ptr noundef nonnull %399, ptr noundef nonnull %398, ptr noundef nonnull %398, i32 noundef %412, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef 9) #25
  br label %414

414:                                              ; preds = %397, %390
  %415 = phi i32 [ 1, %397 ], [ %268, %390 ]
  br i1 %274, label %463, label %416, !prof !421

416:                                              ; preds = %414
  %417 = load i32, ptr %394, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 43
  br i1 %419, label %420, label %431, !prof !422

420:                                              ; preds = %416
  %421 = load i32, ptr %270, align 8
  %422 = trunc i32 %421 to i16
  switch i16 %422, label %431 [
    i16 37, label %423
    i16 43, label %423
    i16 49, label %423
  ], !prof !423

423:                                              ; preds = %420, %420, %420
  %424 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !300
  %426 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %270, ptr noundef %425) #25
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i32
  br label %431

429:                                              ; preds = %258
  %430 = icmp eq ptr %263, null
  br i1 %430, label %493, label %431, !prof !424

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
  br i1 %445, label %446, label %462, !prof !425

446:                                              ; preds = %431
  %447 = getelementptr inbounds %struct.rtx_def, ptr %435, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !300
  %449 = load i32, ptr %448, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 37
  br i1 %451, label %452, label %462, !prof !426

452:                                              ; preds = %446
  %453 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %448) #25
  %454 = icmp ugt i32 %453, 52
  %455 = icmp ne i32 %442, 0
  %456 = or i1 %455, %454
  br i1 %456, label %462, label %457, !prof !427

457:                                              ; preds = %452
  %458 = lshr i32 %443, 16
  %459 = and i32 %458, 255
  %460 = tail call i32 @subreg_regno(ptr noundef nonnull %435) #24
  %461 = tail call ptr @gen_rtx_REG(i32 noundef %459, i32 noundef %460) #24
  store ptr %461, ptr %12, align 8, !tbaa !301
  br i1 %437, label %463, label %493, !prof !376

462:                                              ; preds = %452, %446, %431
  br i1 %437, label %463, label %493, !prof !428

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
  br i1 %476, label %477, label %493, !prof !429

477:                                              ; preds = %463
  %478 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !300
  %480 = load i32, ptr %479, align 8
  %481 = and i32 %480, 65535
  %482 = icmp eq i32 %481, 37
  br i1 %482, label %483, label %493, !prof !430

483:                                              ; preds = %477
  %484 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %479) #25
  %485 = icmp ugt i32 %484, 52
  %486 = icmp ne i32 %468, 0
  %487 = or i1 %486, %485
  br i1 %487, label %493, label %488, !prof !431

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
  br i1 %503, label %506, label %504, !prof !371

504:                                              ; preds = %493
  %505 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %497, i32 noundef %4) #24
  br label %506

506:                                              ; preds = %504, %493
  %507 = phi i32 [ %505, %504 ], [ %4, %493 ]
  %508 = icmp eq ptr %502, null
  br i1 %508, label %511, label %509, !prof !432

509:                                              ; preds = %506
  %510 = tail call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %502, i32 noundef %507) #24
  br label %511

511:                                              ; preds = %509, %506
  %512 = phi i32 [ %510, %509 ], [ %507, %506 ]
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %518, !prof !433

514:                                              ; preds = %511
  %515 = icmp ne i32 %8, 0
  %516 = icmp eq i32 %10, 1
  %517 = and i1 %515, %516
  br i1 %517, label %518, label %519, !prof !434

518:                                              ; preds = %514, %511
  br label %519

519:                                              ; preds = %518, %514
  %520 = phi i32 [ %512, %518 ], [ %4, %514 ]
  %521 = icmp eq ptr %494, null
  br i1 %521, label %526, label %522, !prof !435

522:                                              ; preds = %519
  %523 = icmp eq i32 %495, 14
  br i1 %523, label %524, label %525, !prof !436

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
  br i1 %503, label %539, label %527, !prof !437

527:                                              ; preds = %526
  %528 = load i32, ptr %497, align 8
  %529 = and i32 %528, 65535
  %530 = icmp eq i32 %529, 39
  br i1 %530, label %531, label %539, !prof !438

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !300
  %534 = load i32, ptr %533, align 8
  %535 = and i32 %534, 16711680
  %536 = icmp eq i32 %535, 917504
  br i1 %536, label %537, label %538, !prof !439

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
  br i1 %541, label %546, label %542, !prof !440

542:                                              ; preds = %539
  %543 = icmp eq i32 %498, 14
  br i1 %543, label %544, label %545, !prof !441

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
  br i1 %508, label %560, label %548, !prof !432

548:                                              ; preds = %546
  %549 = load i32, ptr %502, align 8
  %550 = and i32 %549, 65535
  %551 = icmp eq i32 %550, 39
  br i1 %551, label %552, label %560, !prof !442

552:                                              ; preds = %548
  %553 = getelementptr inbounds %struct.rtx_def, ptr %502, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !300
  %555 = load i32, ptr %554, align 8
  %556 = and i32 %555, 16711680
  %557 = icmp eq i32 %556, 917504
  br i1 %557, label %558, label %559, !prof !443

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
  %562 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !305
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %602, label %564, !prof !444

564:                                              ; preds = %560
  %565 = zext i32 %495 to i64
  %566 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !300
  %568 = zext i32 %498 to i64
  %569 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %568
  %570 = load i8, ptr %569, align 1, !tbaa !300
  %571 = icmp ugt i8 %567, %570
  %572 = select i1 %571, i32 %495, i32 %498
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %564
  %575 = load ptr, ptr @this_insn, align 8, !tbaa !301
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
  %590 = load i64, ptr %584, align 8, !tbaa !445
  %591 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %590, i32 noundef %582, i32 noundef %586) #25, !range !446
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %593, label %602

593:                                              ; preds = %585, %589
  %594 = add nuw nsw i32 %586, 1
  %595 = icmp eq i32 %594, 53
  br i1 %595, label %596, label %585, !llvm.loop !447

596:                                              ; preds = %593
  %597 = load ptr, ptr @this_insn, align 8, !tbaa !301
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %597, ptr noundef nonnull @.str.3) #24
  %598 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !301
  %599 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %598) #24
  %600 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %601 = getelementptr inbounds %struct.rtx_def, ptr %600, i64 1
  store ptr %599, ptr %601, align 8, !tbaa !300
  br label %1144

602:                                              ; preds = %589, %560
  %603 = phi i32 [ %498, %560 ], [ %580, %589 ]
  %604 = phi i32 [ %495, %560 ], [ %581, %589 ]
  %605 = icmp eq i32 %561, 0
  br i1 %605, label %606, label %611, !prof !433

606:                                              ; preds = %602
  %607 = icmp ne i32 %8, 0
  %608 = icmp eq i32 %10, 1
  %609 = and i1 %607, %608
  br i1 %609, label %611, label %610, !prof !434

610:                                              ; preds = %606
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @.str.1) #24
  br label %611

611:                                              ; preds = %602, %606, %610
  %612 = call fastcc i32 @find_reusable_reload(ptr noundef nonnull %12, ptr noundef %502, i32 noundef %561, i32 noundef %10, i32 noundef %9, i32 noundef %501) #25
  %613 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %614 = icmp eq i32 %612, %613
  br i1 %614, label %615, label %714, !prof !448

615:                                              ; preds = %611
  %616 = load ptr, ptr %12, align 8
  %617 = icmp eq ptr %616, null
  br i1 %617, label %620, label %618, !prof !449

618:                                              ; preds = %615
  %619 = call fastcc i32 @push_secondary_reload(i32 noundef 1, ptr noundef nonnull %616, i32 noundef %9, i32 noundef %8, i32 noundef %561, i32 noundef %604, i32 noundef %10, ptr noundef nonnull %13, ptr noundef null) #25
  br label %620

620:                                              ; preds = %618, %615
  %621 = phi i32 [ %619, %618 ], [ -1, %615 ]
  br i1 %508, label %629, label %622, !prof !450

622:                                              ; preds = %620
  %623 = load i32, ptr %502, align 8
  %624 = and i32 %623, 65535
  %625 = icmp eq i32 %624, 38
  br i1 %625, label %629, label %626, !prof !451

626:                                              ; preds = %622
  %627 = call fastcc i32 @push_secondary_reload(i32 noundef 0, ptr noundef nonnull %502, i32 noundef %9, i32 noundef %8, i32 noundef %561, i32 noundef %603, i32 noundef %10, ptr noundef nonnull %14, ptr noundef null) #25
  %628 = load ptr, ptr %12, align 8
  br label %629

629:                                              ; preds = %626, %622, %620
  %630 = phi ptr [ %628, %626 ], [ %616, %622 ], [ %616, %620 ]
  %631 = phi i32 [ %627, %626 ], [ -1, %622 ], [ -1, %620 ]
  %632 = icmp eq ptr %630, null
  br i1 %632, label %654, label %633, !prof !449

633:                                              ; preds = %629
  %634 = load i32, ptr %630, align 8
  %635 = trunc i32 %634 to i16
  switch i16 %635, label %654 [
    i16 37, label %642
    i16 39, label %636
  ], !prof !452

636:                                              ; preds = %633
  %637 = getelementptr inbounds %struct.rtx_def, ptr %630, i64 0, i32 1
  %638 = load ptr, ptr %637, align 8, !tbaa !300
  %639 = load i32, ptr %638, align 8
  %640 = and i32 %639, 65535
  %641 = icmp eq i32 %640, 37
  br i1 %641, label %642, label %654, !prof !453

642:                                              ; preds = %633, %636
  %643 = tail call i32 @reg_or_subregno(ptr noundef nonnull %630) #24
  %644 = icmp ult i32 %643, 53
  br i1 %644, label %645, label %654, !prof !454

645:                                              ; preds = %642
  %646 = tail call i32 @reg_or_subregno(ptr noundef nonnull %630) #24
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %647
  %649 = load i32, ptr %648, align 4, !tbaa !305
  %650 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %649, i32 noundef %561, i32 noundef %604, i32 noundef 1) #24
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %654, label %652, !prof !455

652:                                              ; preds = %645
  %653 = tail call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %604, i32 noundef %9, i32 noundef %10) #25
  br label %654

654:                                              ; preds = %633, %652, %645, %642, %636, %629
  %655 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656
  store ptr %630, ptr %657, align 8, !tbaa !456
  %658 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 1
  store ptr %502, ptr %658, align 8, !tbaa !458
  %659 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 2
  store i32 %561, ptr %659, align 8, !tbaa !459
  %660 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 3
  store i32 %604, ptr %660, align 4, !tbaa !460
  %661 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 4
  store i32 %603, ptr %661, align 8, !tbaa !461
  %662 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 11
  store ptr null, ptr %662, align 8, !tbaa !462
  %663 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 18
  %664 = trunc i32 %8 to i8
  %665 = load i8, ptr %663, align 8
  %666 = and i8 %664, 1
  %667 = and i8 %665, -2
  %668 = or disjoint i8 %667, %666
  %669 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 7
  store i32 0, ptr %669, align 4, !tbaa !463
  %670 = and i8 %668, -3
  store i8 %670, ptr %663, align 8
  %671 = icmp eq ptr %496, null
  br i1 %671, label %674, label %672, !prof !449

672:                                              ; preds = %654
  %673 = load ptr, ptr %496, align 8, !tbaa !301
  br label %674

674:                                              ; preds = %654, %672
  %675 = phi ptr [ %673, %672 ], [ null, %654 ]
  %676 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 8
  store ptr %675, ptr %676, align 8, !tbaa !464
  %677 = icmp eq ptr %500, null
  br i1 %677, label %680, label %678, !prof !450

678:                                              ; preds = %674
  %679 = load ptr, ptr %500, align 8, !tbaa !301
  br label %680

680:                                              ; preds = %674, %678
  %681 = phi ptr [ %679, %678 ], [ null, %674 ]
  %682 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 9
  store ptr %681, ptr %682, align 8, !tbaa !465
  %683 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 12
  store i32 %9, ptr %683, align 8, !tbaa !466
  %684 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 17
  store i32 %10, ptr %684, align 4, !tbaa !467
  %685 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 13
  store i32 %621, ptr %685, align 4, !tbaa !468
  %686 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 14
  store i32 %631, ptr %686, align 8, !tbaa !469
  %687 = load i32, ptr %13, align 4, !tbaa !305
  %688 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 15
  store i32 %687, ptr %688, align 4, !tbaa !470
  %689 = load i32, ptr %14, align 4, !tbaa !305
  %690 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %656, i32 16
  store i32 %689, ptr %690, align 8, !tbaa !471
  %691 = and i8 %668, -7
  store i8 %691, ptr %663, align 8
  %692 = add nsw i32 %655, 1
  store i32 %692, ptr @n_reloads, align 4, !tbaa !305
  br i1 %508, label %896, label %693, !prof !450

693:                                              ; preds = %680
  %694 = load i32, ptr %502, align 8
  %695 = trunc i32 %694 to i16
  switch i16 %695, label %896 [
    i16 37, label %702
    i16 39, label %696
  ], !prof !472

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.rtx_def, ptr %502, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !300
  %699 = load i32, ptr %698, align 8
  %700 = and i32 %699, 65535
  %701 = icmp eq i32 %700, 37
  br i1 %701, label %702, label %896, !prof !473

702:                                              ; preds = %693, %696
  %703 = tail call i32 @reg_or_subregno(ptr noundef nonnull %502) #24
  %704 = icmp ult i32 %703, 53
  br i1 %704, label %705, label %896, !prof !474

705:                                              ; preds = %702
  %706 = tail call i32 @reg_or_subregno(ptr noundef nonnull %502) #24
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %707
  %709 = load i32, ptr %708, align 4, !tbaa !305
  %710 = tail call i32 @ix86_secondary_memory_needed(i32 noundef %561, i32 noundef %709, i32 noundef %603, i32 noundef 1) #24
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %896, label %712, !prof !475

712:                                              ; preds = %705
  %713 = tail call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %603, i32 noundef %9, i32 noundef %10) #25
  br label %896

714:                                              ; preds = %611
  %715 = icmp eq i32 %604, 0
  br i1 %715, label %728, label %716, !prof !476

716:                                              ; preds = %714
  %717 = zext i32 %604 to i64
  %718 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !300
  %720 = sext i32 %612 to i64
  %721 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %720, i32 3
  %722 = load i32, ptr %721, align 4, !tbaa !460
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !300
  %726 = icmp ugt i8 %719, %725
  br i1 %726, label %727, label %728, !prof !476

727:                                              ; preds = %716
  store i32 %604, ptr %721, align 4, !tbaa !460
  br label %728

728:                                              ; preds = %727, %716, %714
  %729 = icmp eq i32 %603, 0
  br i1 %729, label %742, label %730, !prof !477

730:                                              ; preds = %728
  %731 = zext i32 %603 to i64
  %732 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !300
  %734 = sext i32 %612 to i64
  %735 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %734, i32 4
  %736 = load i32, ptr %735, align 8, !tbaa !461
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !300
  %740 = icmp ugt i8 %733, %739
  br i1 %740, label %741, label %742

741:                                              ; preds = %730
  store i32 %603, ptr %735, align 8, !tbaa !461
  br label %742

742:                                              ; preds = %741, %730, %728
  %743 = load ptr, ptr %12, align 8
  %744 = icmp eq ptr %743, null
  br i1 %744, label %827, label %745, !prof !476

745:                                              ; preds = %742
  %746 = icmp eq ptr %496, null
  br i1 %746, label %749, label %747, !prof !476

747:                                              ; preds = %745
  %748 = load ptr, ptr %496, align 8, !tbaa !301
  br label %749

749:                                              ; preds = %745, %747
  %750 = phi ptr [ %748, %747 ], [ null, %745 ]
  %751 = sext i32 %612 to i64
  %752 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751
  %753 = load ptr, ptr %752, align 8, !tbaa !456
  %754 = icmp eq ptr %753, %743
  br i1 %754, label %784, label %755, !prof !478

755:                                              ; preds = %749
  %756 = tail call i32 @rtx_equal_p(ptr noundef nonnull %743, ptr noundef %753) #24
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %777, label %758, !prof !479

758:                                              ; preds = %755
  %759 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 18
  %760 = load i8, ptr %759, align 8
  %761 = and i8 %760, 1
  %762 = icmp ne i8 %761, 0
  %763 = icmp ne i32 %8, 0
  %764 = and i1 %763, %762
  br i1 %764, label %777, label %765, !prof !480

765:                                              ; preds = %758
  %766 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 12
  %767 = load i32, ptr %766, align 8, !tbaa !466
  %768 = icmp slt i32 %767, %9
  br i1 %768, label %769, label %774, !prof !481

769:                                              ; preds = %765
  %770 = tail call i32 @remove_address_replacements(ptr noundef nonnull %743) #25, !range !401
  %771 = load ptr, ptr %752, align 8, !tbaa !456
  store ptr %771, ptr %12, align 8, !tbaa !301
  %772 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 8
  %773 = load ptr, ptr %772, align 8, !tbaa !464
  br label %779

774:                                              ; preds = %765
  %775 = load ptr, ptr %752, align 8, !tbaa !456
  %776 = tail call i32 @remove_address_replacements(ptr noundef %775) #25, !range !401
  br label %777

777:                                              ; preds = %755, %758, %774
  %778 = load ptr, ptr %752, align 8, !tbaa !456
  br label %779

779:                                              ; preds = %777, %769
  %780 = phi ptr [ %743, %777 ], [ %771, %769 ]
  %781 = phi ptr [ %778, %777 ], [ %771, %769 ]
  %782 = phi ptr [ %750, %777 ], [ %773, %769 ]
  %783 = icmp eq ptr %781, null
  br i1 %783, label %801, label %784, !prof !482

784:                                              ; preds = %749, %779
  %785 = phi ptr [ %782, %779 ], [ %750, %749 ]
  %786 = phi ptr [ %781, %779 ], [ %743, %749 ]
  %787 = phi ptr [ %780, %779 ], [ %743, %749 ]
  %788 = load i32, ptr %787, align 8
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  %791 = zext nneg i32 %790 to i64
  %792 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %791
  %793 = load i8, ptr %792, align 1, !tbaa !300
  %794 = load i32, ptr %786, align 8
  %795 = lshr i32 %794, 16
  %796 = and i32 %795, 255
  %797 = zext nneg i32 %796 to i64
  %798 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !300
  %800 = icmp ugt i8 %793, %799
  br i1 %800, label %801, label %804, !prof !476

801:                                              ; preds = %784, %779
  %802 = phi ptr [ %785, %784 ], [ %782, %779 ]
  %803 = phi ptr [ %787, %784 ], [ %780, %779 ]
  store ptr %803, ptr %752, align 8, !tbaa !456
  br label %804

804:                                              ; preds = %801, %784
  %805 = phi ptr [ %802, %801 ], [ %785, %784 ]
  %806 = phi ptr [ %803, %801 ], [ %787, %784 ]
  %807 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %751, i32 8
  %808 = load ptr, ptr %807, align 8, !tbaa !464
  %809 = icmp eq ptr %808, null
  br i1 %809, label %826, label %810, !prof !476

810:                                              ; preds = %804
  %811 = icmp eq ptr %805, null
  br i1 %811, label %827, label %812, !prof !476

812:                                              ; preds = %810
  %813 = load i32, ptr %805, align 8
  %814 = lshr i32 %813, 16
  %815 = and i32 %814, 255
  %816 = zext nneg i32 %815 to i64
  %817 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %816
  %818 = load i8, ptr %817, align 1, !tbaa !300
  %819 = load i32, ptr %808, align 8
  %820 = lshr i32 %819, 16
  %821 = and i32 %820, 255
  %822 = zext nneg i32 %821 to i64
  %823 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !300
  %825 = icmp ugt i8 %818, %824
  br i1 %825, label %826, label %827, !prof !476

826:                                              ; preds = %812, %804
  store ptr %805, ptr %807, align 8, !tbaa !464
  br label %827

827:                                              ; preds = %810, %812, %826, %742
  %828 = phi ptr [ %806, %810 ], [ %806, %812 ], [ %806, %826 ], [ null, %742 ]
  %829 = sext i32 %612 to i64
  br i1 %508, label %871, label %830, !prof !477

830:                                              ; preds = %827
  %831 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 1
  %832 = load ptr, ptr %831, align 8, !tbaa !458
  %833 = icmp eq ptr %832, null
  br i1 %833, label %848, label %834

834:                                              ; preds = %830
  %835 = load i32, ptr %502, align 8
  %836 = lshr i32 %835, 16
  %837 = and i32 %836, 255
  %838 = zext nneg i32 %837 to i64
  %839 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %838
  %840 = load i8, ptr %839, align 1, !tbaa !300
  %841 = load i32, ptr %832, align 8
  %842 = lshr i32 %841, 16
  %843 = and i32 %842, 255
  %844 = zext nneg i32 %843 to i64
  %845 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %844
  %846 = load i8, ptr %845, align 1, !tbaa !300
  %847 = icmp ugt i8 %840, %846
  br i1 %847, label %848, label %849

848:                                              ; preds = %834, %830
  store ptr %502, ptr %831, align 8, !tbaa !458
  br label %849

849:                                              ; preds = %848, %834
  %850 = icmp eq ptr %500, null
  br i1 %850, label %871, label %851

851:                                              ; preds = %849
  %852 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 9
  %853 = load ptr, ptr %852, align 8, !tbaa !465
  %854 = icmp eq ptr %853, null
  %855 = load ptr, ptr %500, align 8, !tbaa !301
  br i1 %854, label %870, label %856

856:                                              ; preds = %851
  %857 = load i32, ptr %855, align 8
  %858 = lshr i32 %857, 16
  %859 = and i32 %858, 255
  %860 = zext nneg i32 %859 to i64
  %861 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %860
  %862 = load i8, ptr %861, align 1, !tbaa !300
  %863 = load i32, ptr %853, align 8
  %864 = lshr i32 %863, 16
  %865 = and i32 %864, 255
  %866 = zext nneg i32 %865 to i64
  %867 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %866
  %868 = load i8, ptr %867, align 1, !tbaa !300
  %869 = icmp ugt i8 %862, %868
  br i1 %869, label %870, label %871

870:                                              ; preds = %856, %851
  store ptr %855, ptr %852, align 8, !tbaa !465
  br label %871

871:                                              ; preds = %827, %849, %856, %870
  %872 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 2
  %873 = load i32, ptr %872, align 8, !tbaa !459
  %874 = tail call i32 @reg_class_subset_p(i32 noundef %561, i32 noundef %873) #24
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %877, label %876, !prof !478

876:                                              ; preds = %871
  store i32 %561, ptr %872, align 8, !tbaa !459
  br label %877

877:                                              ; preds = %876, %871
  %878 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 18
  %879 = load i8, ptr %878, align 8
  %880 = trunc i32 %8 to i8
  %881 = or i8 %880, -2
  %882 = and i8 %881, %879
  store i8 %882, ptr %878, align 8
  %883 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 17
  %884 = load i32, ptr %883, align 4, !tbaa !467
  %885 = icmp eq i32 %884, %10
  %886 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 12
  %887 = load i32, ptr %886, align 8, !tbaa !466
  br i1 %885, label %888, label %891, !prof !483

888:                                              ; preds = %877
  %889 = icmp eq i32 %887, %9
  br i1 %889, label %892, label %890, !prof !484

890:                                              ; preds = %888
  switch i32 %10, label %891 [
    i32 10, label %892
    i32 7, label %892
    i32 0, label %892
  ]

891:                                              ; preds = %877, %890
  store i32 9, ptr %883, align 4, !tbaa !467
  br label %892

892:                                              ; preds = %890, %890, %890, %891, %888
  %893 = phi i32 [ %887, %890 ], [ %887, %890 ], [ %887, %890 ], [ %887, %891 ], [ %9, %888 ]
  %894 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %829, i32 12
  %895 = tail call i32 @llvm.smin.i32(i32 %893, i32 %9)
  store i32 %895, ptr %894, align 8, !tbaa !466
  br label %896

896:                                              ; preds = %693, %680, %696, %702, %705, %712, %892
  %897 = phi ptr [ %630, %712 ], [ %630, %705 ], [ %630, %702 ], [ %630, %696 ], [ %630, %680 ], [ %828, %892 ], [ %630, %693 ]
  %898 = phi i32 [ %655, %712 ], [ %655, %705 ], [ %655, %702 ], [ %655, %696 ], [ %655, %680 ], [ %612, %892 ], [ %655, %693 ]
  %899 = icmp eq ptr %897, null
  br i1 %899, label %908, label %900, !prof !371

900:                                              ; preds = %896
  %901 = load ptr, ptr %496, align 8, !tbaa !301
  %902 = icmp eq ptr %897, %901
  br i1 %902, label %908, label %903, !prof !485

903:                                              ; preds = %900
  %904 = sext i32 %898 to i64
  %905 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %904, i32 18
  %906 = load i8, ptr %905, align 8
  %907 = or i8 %906, 2
  store i8 %907, ptr %905, align 8
  br label %908

908:                                              ; preds = %903, %900, %896
  %909 = load i32, ptr @replace_reloads, align 4, !tbaa !305
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %933, label %911, !prof !486

911:                                              ; preds = %908
  %912 = icmp eq ptr %496, null
  br i1 %912, label %921, label %913, !prof !487

913:                                              ; preds = %911
  %914 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %915 = add nsw i32 %914, 1
  store i32 %915, ptr @n_replacements, align 4, !tbaa !305
  %916 = sext i32 %914 to i64
  %917 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916
  %918 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 2
  store i32 %898, ptr %918, align 8, !tbaa !488
  %919 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 1
  store ptr %494, ptr %919, align 8, !tbaa !490
  store ptr %496, ptr %917, align 8, !tbaa !491
  %920 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %916, i32 3
  store i32 %604, ptr %920, align 4, !tbaa !492
  br label %921

921:                                              ; preds = %913, %911
  %922 = icmp eq ptr %500, null
  %923 = icmp eq ptr %500, %496
  %924 = or i1 %922, %923
  br i1 %924, label %933, label %925, !prof !493

925:                                              ; preds = %921
  %926 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %927 = add nsw i32 %926, 1
  store i32 %927, ptr @n_replacements, align 4, !tbaa !305
  %928 = sext i32 %926 to i64
  %929 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928
  %930 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 2
  store i32 %898, ptr %930, align 8, !tbaa !488
  store ptr %500, ptr %929, align 8, !tbaa !491
  %931 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 1
  store ptr %499, ptr %931, align 8, !tbaa !490
  %932 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %928, i32 3
  store i32 %603, ptr %932, align 4, !tbaa !492
  br label %933

933:                                              ; preds = %921, %925, %908
  %934 = icmp eq ptr %897, %502
  %935 = or i1 %899, %934
  %936 = or i1 %508, %935
  %937 = sext i32 %898 to i64
  br i1 %936, label %965, label %938, !prof !494

938:                                              ; preds = %933
  %939 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937
  %940 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937, i32 11
  %941 = load ptr, ptr %940, align 8, !tbaa !462
  %942 = icmp eq ptr %941, null
  br i1 %942, label %943, label %965, !prof !495

943:                                              ; preds = %938
  %944 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937, i32 2
  %945 = load i32, ptr %944, align 8, !tbaa !459
  %946 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %502) #25, !range !401
  %947 = tail call fastcc ptr @find_dummy_reload(ptr noundef nonnull %897, ptr noundef nonnull %502, ptr noundef %496, ptr noundef %500, i32 noundef %604, i32 noundef %603, i32 noundef %945, i32 noundef %898, i32 noundef %946) #25
  store ptr %947, ptr %940, align 8, !tbaa !462
  %948 = icmp eq ptr %947, %502
  br i1 %948, label %949, label %965, !prof !496

949:                                              ; preds = %943
  %950 = load i32, ptr %897, align 8
  %951 = and i32 %950, 65535
  %952 = icmp eq i32 %951, 37
  br i1 %952, label %958, label %953, !prof !497

953:                                              ; preds = %949
  %954 = zext nneg i32 %951 to i64
  %955 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !305
  %957 = icmp eq i32 %956, 9
  br i1 %957, label %958, label %965, !prof !498

958:                                              ; preds = %953, %949
  %959 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %960 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %502) #25
  %961 = load ptr, ptr @static_reload_reg_p, align 8, !tbaa !301
  %962 = tail call ptr @find_equiv_reg(ptr noundef nonnull %897, ptr noundef %959, i32 noundef 0, i32 noundef %960, ptr noundef %961, i32 noundef %898, i32 noundef %604) #25
  %963 = icmp eq ptr %962, null
  br i1 %963, label %965, label %964, !prof !499

964:                                              ; preds = %958
  store ptr %502, ptr %939, align 8, !tbaa !456
  br label %965

965:                                              ; preds = %933, %943, %953, %958, %964, %938
  %966 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %937, i32 11
  %967 = load ptr, ptr %966, align 8, !tbaa !462
  %968 = icmp eq ptr %967, null
  %969 = icmp ne ptr %897, null
  %970 = and i1 %968, %969
  %971 = load i32, ptr @hard_regs_live_known, align 4
  %972 = icmp ne i32 %971, 0
  %973 = select i1 %970, i1 %972, i1 false
  br i1 %973, label %974, label %1142, !prof !500

974:                                              ; preds = %965
  br i1 %508, label %984, label %975, !prof !501

975:                                              ; preds = %974
  %976 = zext i32 %603 to i64
  %977 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %976
  %978 = load i8, ptr %977, align 1, !tbaa !300
  %979 = zext i32 %604 to i64
  %980 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %979
  %981 = load i8, ptr %980, align 1, !tbaa !300
  %982 = icmp ugt i8 %978, %981
  %983 = select i1 %982, i32 %603, i32 %604, !prof !502
  br label %984

984:                                              ; preds = %975, %974
  %985 = phi i32 [ %604, %974 ], [ %983, %975 ]
  %986 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %987 = getelementptr inbounds %struct.rtx_def, ptr %986, i64 1, i32 1, i32 0, i32 0, i64 1
  %988 = load ptr, ptr %987, align 8, !tbaa !300
  %989 = icmp eq ptr %988, null
  br i1 %989, label %1142, label %990, !prof !503

990:                                              ; preds = %984, %1138
  %991 = phi ptr [ %1140, %1138 ], [ %988, %984 ]
  %992 = load i32, ptr %991, align 8
  %993 = and i32 %992, 16711680
  %994 = icmp eq i32 %993, 65536
  br i1 %994, label %995, label %1138, !prof !504

995:                                              ; preds = %990
  %996 = getelementptr inbounds %struct.rtx_def, ptr %991, i64 0, i32 1
  %997 = load ptr, ptr %996, align 8, !tbaa !300
  %998 = load i32, ptr %997, align 8
  %999 = and i32 %998, 65535
  %1000 = icmp eq i32 %999, 37
  br i1 %1000, label %1001, label %1138, !prof !505

1001:                                             ; preds = %995
  %1002 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %997) #25
  %1003 = icmp slt i32 %1002, 53
  br i1 %1003, label %1004, label %1138, !prof !506

1004:                                             ; preds = %1001
  %1005 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %997, ptr noundef nonnull %897) #24
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1138, label %1007, !prof !507

1007:                                             ; preds = %1004
  %1008 = load ptr, ptr %996, align 8, !tbaa !300
  %1009 = getelementptr inbounds %struct.rtx_def, ptr %1008, i64 0, i32 1, i32 0, i32 0, i64 1
  %1010 = load i32, ptr %1009, align 8, !tbaa !300
  %1011 = icmp ult i32 %1010, 53
  br i1 %1011, label %1034, label %1012, !prof !508

1012:                                             ; preds = %1007
  %1013 = load ptr, ptr @cfun, align 8, !tbaa !301
  %1014 = getelementptr inbounds %struct.function, ptr %1013, i64 0, i32 1
  %1015 = load ptr, ptr %1014, align 8, !tbaa !509
  %1016 = load ptr, ptr %1015, align 8, !tbaa !511
  %1017 = getelementptr inbounds %struct.basic_block_def, ptr %1016, i64 0, i32 9
  %1018 = load i32, ptr %1017, align 8, !tbaa !513
  %1019 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %1018) #25
  %1020 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1019, i64 0, i32 3
  %1021 = load ptr, ptr %1020, align 8, !tbaa !515
  %1022 = tail call i32 @bitmap_bit_p(ptr noundef %1021, i32 noundef %1010) #24
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1138, !prof !517

1024:                                             ; preds = %1012
  %1025 = sext i32 %1002 to i64
  %1026 = load ptr, ptr %996, align 8, !tbaa !300
  %1027 = load i32, ptr %1026, align 8
  %1028 = lshr i32 %1027, 16
  %1029 = and i32 %1028, 255
  %1030 = zext nneg i32 %1029 to i64
  %1031 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1025, i64 %1030
  %1032 = load i8, ptr %1031, align 1, !tbaa !300
  %1033 = icmp eq i8 %1032, 1
  br i1 %1033, label %1034, label %1138, !prof !517

1034:                                             ; preds = %1024, %1007
  %1035 = tail call fastcc i32 @end_hard_regno(i32 noundef %985, i32 noundef %1002) #25
  %1036 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %1037 = getelementptr inbounds %struct.rtx_def, ptr %1036, i64 1
  %1038 = load ptr, ptr %1037, align 8, !tbaa !300
  %1039 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1002, i32 noundef %1035, ptr noundef %1038, ptr noundef %496) #25
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1138, !prof !518

1041:                                             ; preds = %1034
  br i1 %508, label %1050, label %1042, !prof !519

1042:                                             ; preds = %1041
  br i1 %934, label %1051, label %1043, !prof !520

1043:                                             ; preds = %1042
  %1044 = tail call fastcc i32 @end_hard_regno(i32 noundef %985, i32 noundef %1002) #25
  %1045 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %1046 = getelementptr inbounds %struct.rtx_def, ptr %1045, i64 1
  %1047 = load ptr, ptr %1046, align 8, !tbaa !300
  %1048 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %1002, i32 noundef %1044, ptr noundef %1047) #25, !range !401
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1075, label %1138, !prof !521

1050:                                             ; preds = %1041
  br i1 %934, label %1051, label %1075, !prof !522

1051:                                             ; preds = %1042, %1050
  %1052 = load i32, ptr %502, align 8
  %1053 = and i32 %1052, 65535
  %1054 = icmp eq i32 %1053, 39
  br i1 %1054, label %1055, label %1138

1055:                                             ; preds = %1051
  %1056 = getelementptr inbounds %struct.rtx_def, ptr %897, i64 0, i32 1
  %1057 = lshr i32 %1052, 16
  %1058 = and i32 %1057, 255
  %1059 = zext nneg i32 %1058 to i64
  %1060 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1059
  %1061 = load i8, ptr %1060, align 1, !tbaa !300
  %1062 = zext i8 %1061 to i32
  %1063 = add nuw nsw i32 %1062, 3
  %1064 = load ptr, ptr %1056, align 8, !tbaa !300
  %1065 = load i32, ptr %1064, align 8
  %1066 = lshr i32 %1065, 16
  %1067 = and i32 %1066, 255
  %1068 = zext nneg i32 %1067 to i64
  %1069 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1068
  %1070 = load i8, ptr %1069, align 1, !tbaa !300
  %1071 = zext i8 %1070 to i32
  %1072 = add nuw nsw i32 %1071, 3
  %1073 = xor i32 %1072, %1063
  %1074 = icmp ult i32 %1073, 4
  br i1 %1074, label %1075, label %1138

1075:                                             ; preds = %1043, %1055, %1050
  %1076 = zext i32 %985 to i64
  %1077 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1076
  %1078 = load i8, ptr %1077, align 1, !tbaa !300
  %1079 = load ptr, ptr %996, align 8, !tbaa !300
  %1080 = load i32, ptr %1079, align 8
  %1081 = lshr i32 %1080, 16
  %1082 = and i32 %1081, 255
  %1083 = zext nneg i32 %1082 to i64
  %1084 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1083
  %1085 = load i8, ptr %1084, align 1, !tbaa !300
  %1086 = icmp ugt i8 %1078, %1085
  br i1 %1086, label %1138, label %1087, !prof !523

1087:                                             ; preds = %1075
  %1088 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1002, i32 noundef %604) #24
  %1089 = icmp eq i8 %1088, 0
  br i1 %1089, label %1138, label %1090, !prof !524

1090:                                             ; preds = %1087
  %1091 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1002, i32 noundef %603) #24
  %1092 = icmp eq i8 %1091, 0
  br i1 %1092, label %1138, label %1093, !prof !525

1093:                                             ; preds = %1090
  %1094 = zext i32 %604 to i64
  %1095 = zext i32 %603 to i64
  %1096 = sext i32 %1002 to i64
  %1097 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1096, i64 %1094
  %1098 = load i8, ptr %1097, align 1, !tbaa !300
  %1099 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1096, i64 %1095
  %1100 = load i8, ptr %1099, align 1, !tbaa !300
  %1101 = tail call i8 @llvm.umax.i8(i8 %1098, i8 %1100)
  %1102 = zext i8 %1101 to i32
  %1103 = icmp eq i8 %1101, 0
  br i1 %1103, label %1126, label %1104, !prof !526

1104:                                             ; preds = %1093
  %1105 = sext i32 %561 to i64
  %1106 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %1105
  br label %1107

1107:                                             ; preds = %1104, %1120
  %1108 = phi i64 [ 0, %1104 ], [ %1122, %1120 ]
  %1109 = trunc i64 %1108 to i32
  %1110 = add i32 %1002, %1109
  %1111 = zext i32 %1110 to i64
  %1112 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1111
  %1113 = load i8, ptr %1112, align 1, !tbaa !300
  %1114 = icmp eq i8 %1113, 0
  br i1 %1114, label %1115, label %1124, !prof !527

1115:                                             ; preds = %1107
  %1116 = load i64, ptr %1106, align 8, !tbaa !445
  %1117 = shl nuw i64 1, %1111
  %1118 = and i64 %1116, %1117
  %1119 = icmp eq i64 %1118, 0
  br i1 %1119, label %1124, label %1120, !prof !528

1120:                                             ; preds = %1115
  %1121 = zext i8 %1101 to i64
  %1122 = add nuw nsw i64 %1108, 1
  %1123 = icmp eq i64 %1122, %1121
  br i1 %1123, label %1129, label %1107, !prof !529, !llvm.loop !530

1124:                                             ; preds = %1107, %1115
  %1125 = trunc i64 %1108 to i32
  br label %1126

1126:                                             ; preds = %1124, %1093
  %1127 = phi i32 [ 0, %1093 ], [ %1125, %1124 ]
  %1128 = icmp eq i32 %1127, %1102
  br i1 %1128, label %1129, label %1138, !prof !531

1129:                                             ; preds = %1120, %1126
  %1130 = tail call fastcc i32 @end_hard_regno(i32 noundef %604, i32 noundef %1002) #25
  %1131 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1002, i32 noundef %1130, ptr noundef nonnull %897, ptr noundef null) #25
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1136, label %1133, !prof !532

1133:                                             ; preds = %1129
  %1134 = tail call fastcc i32 @can_reload_into(ptr noundef nonnull %897, i32 noundef %1002, i32 noundef %604) #25
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1138, label %1136, !prof !532

1136:                                             ; preds = %1129, %1133
  %1137 = tail call ptr @gen_rtx_REG(i32 noundef %985, i32 noundef %1002) #24
  store ptr %1137, ptr %966, align 8, !tbaa !462
  br label %1142

1138:                                             ; preds = %1126, %1133, %990, %995, %1001, %1004, %1012, %1024, %1034, %1043, %1051, %1055, %1075, %1087, %1090
  %1139 = getelementptr inbounds %struct.rtx_def, ptr %991, i64 0, i32 1, i32 0, i32 0, i64 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !300
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1142, label %990, !prof !533, !llvm.loop !534

1142:                                             ; preds = %1138, %984, %1136, %965
  br i1 %508, label %1144, label %1143, !prof !432

1143:                                             ; preds = %1142
  store i32 %898, ptr @output_reloadnum, align 4, !tbaa !305
  br label %1144

1144:                                             ; preds = %596, %1142, %1143
  %1145 = phi i32 [ 0, %596 ], [ %898, %1143 ], [ %898, %1142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  ret i32 %1145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @subst_reg_equivs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !535 !PGOFuncName !536 {
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
  ], !prof !537

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %8 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !301
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !538

13:                                               ; preds = %6
  store i1 true, ptr @subst_reg_equivs_changed, align 4
  br label %68

14:                                               ; preds = %6
  %15 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %16 = getelementptr inbounds ptr, ptr %15, i64 %9
  %17 = load ptr, ptr %16, align 8, !tbaa !301
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19, !prof !538

19:                                               ; preds = %14
  %20 = load i32, ptr @num_not_at_initial_offset, align 4, !tbaa !305
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %68, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %7) #25
  %24 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %25 = getelementptr inbounds ptr, ptr %24, i64 %9
  %26 = load ptr, ptr %25, align 8, !tbaa !301
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
  %37 = load ptr, ptr %36, align 8, !tbaa !300
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !301
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %46, !prof !539

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !300
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %68, label %46

46:                                               ; preds = %2, %35, %40
  %47 = zext nneg i32 %4 to i64
  %48 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !301
  %50 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %51 = load i8, ptr %50, align 1, !tbaa !300
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %68, label %53, !prof !540

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = zext i8 %51 to i64
  br label %56

56:                                               ; preds = %53, %66
  %57 = phi i64 [ %55, %53 ], [ %58, %66 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !300
  %61 = icmp eq i8 %60, 101
  br i1 %61, label %62, label %66, !prof !541

62:                                               ; preds = %56
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !300
  %65 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %64, ptr noundef %1) #25
  store ptr %65, ptr %63, align 8, !tbaa !300
  br label %66

66:                                               ; preds = %56, %62
  %67 = icmp ugt i64 %57, 1
  br i1 %67, label %56, label %68, !prof !542, !llvm.loop !543

68:                                               ; preds = %66, %46, %29, %13, %19, %14, %22, %40, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %69 = phi ptr [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %40 ], [ %11, %13 ], [ %23, %29 ], [ %0, %19 ], [ %0, %14 ], [ %0, %22 ], [ %0, %46 ], [ %0, %66 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @copy_replacements(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !294 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !301
  store ptr %1, ptr %4, align 8, !tbaa !301
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6336, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i32, ptr @n_replacements, align 4, !tbaa !305
  call fastcc void @copy_replacements_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %10) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @maybe_memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !544 !PGOFuncName !545 {
  %5 = load ptr, ptr %3, align 8, !tbaa !301
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = tail call i32 @max_reg_num() #24
  %10 = tail call ptr @gen_rtx_REG(i32 noundef %8, i32 noundef %9) #24
  store ptr %10, ptr %3, align 8, !tbaa !301
  %11 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) #24
  store ptr %5, ptr %3, align 8, !tbaa !301
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @find_reloads_address_1(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 !prof !546 !PGOFuncName !547 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  br label %13

13:                                               ; preds = %189, %9
  %14 = phi ptr [ %0, %9 ], [ %190, %189 ]
  %15 = phi i32 [ %1, %9 ], [ %191, %189 ]
  %16 = phi ptr [ %4, %9 ], [ %192, %189 ]
  %17 = phi i1 [ false, %9 ], [ true, %189 ]
  store ptr %14, ptr %10, align 8, !tbaa !301
  %18 = load i32, ptr %14, align 8
  %19 = icmp eq i32 %15, 1
  %20 = trunc i32 %18 to i16
  switch i16 %20, label %705 [
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
    i16 39, label %629
  ], !prof !548

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !300
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !300
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = load i32, ptr %25, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %27, 39
  br i1 %30, label %31, label %53, !prof !549

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !300
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #25
  %39 = icmp ult i32 %38, 53
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, ptr @word_mode, align 4, !tbaa !305
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %33) #25
  %43 = lshr i32 %34, 16
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load i32, ptr %45, align 8, !tbaa !300
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
  br i1 %58, label %59, label %78, !prof !549

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !300
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
  %72 = load i32, ptr %71, align 8, !tbaa !300
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
  br i1 %19, label %82, label %97, !prof !549

82:                                               ; preds = %78
  %83 = load i32, ptr %14, align 8
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = load ptr, ptr %22, align 8, !tbaa !300
  %87 = icmp eq i32 %6, 3
  %88 = icmp eq i32 %6, 5
  %89 = select i1 %88, i32 6, i32 %6
  %90 = select i1 %87, i32 4, i32 %89
  %91 = tail call fastcc i32 @find_reloads_address(i32 noundef %85, ptr noundef %16, ptr noundef %86, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %90, i32 noundef %7, ptr noundef %8) #25
  %92 = load ptr, ptr %16, align 8, !tbaa !301
  %93 = load i32, ptr %14, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = tail call i32 @push_reload(ptr noundef %92, ptr noundef null, ptr noundef nonnull %16, ptr noundef null, i32 noundef 11, i32 noundef %95, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %728

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
  br i1 %117, label %118, label %208, !prof !550

118:                                              ; preds = %114
  %119 = tail call fastcc i32 @rhs_regno(ptr noundef %79) #25
  %120 = icmp ult i32 %119, 7
  br i1 %120, label %135, label %121, !prof !551

121:                                              ; preds = %118
  %122 = zext i32 %119 to i64
  %123 = add nsw i64 %122, -37
  %124 = icmp ult i64 %123, 8
  br i1 %124, label %135, label %125, !prof !552

125:                                              ; preds = %121
  %126 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %127 = getelementptr inbounds i16, ptr %126, i64 %122
  %128 = load i16, ptr %127, align 2, !tbaa !349
  %129 = icmp ult i16 %128, 7
  br i1 %129, label %135, label %130, !prof !552

130:                                              ; preds = %125
  %131 = sext i16 %128 to i64
  %132 = and i64 %131, 4294967295
  %133 = add nsw i64 %132, -37
  %134 = icmp ult i64 %133, 8
  br i1 %134, label %135, label %139, !prof !552

135:                                              ; preds = %130, %125, %121, %118
  %136 = tail call fastcc i32 @rhs_regno(ptr noundef %55) #25
  %137 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %136) #25
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %728, !prof !553

139:                                              ; preds = %135, %130
  %140 = tail call fastcc i32 @rhs_regno(ptr noundef %55) #25
  %141 = icmp ult i32 %140, 7
  br i1 %141, label %156, label %142, !prof !554

142:                                              ; preds = %139
  %143 = zext i32 %140 to i64
  %144 = add nsw i64 %143, -37
  %145 = icmp ult i64 %144, 8
  br i1 %145, label %156, label %146, !prof !555

146:                                              ; preds = %142
  %147 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %148 = getelementptr inbounds i16, ptr %147, i64 %143
  %149 = load i16, ptr %148, align 2, !tbaa !349
  %150 = icmp ult i16 %149, 7
  br i1 %150, label %156, label %151, !prof !555

151:                                              ; preds = %146
  %152 = sext i16 %149 to i64
  %153 = and i64 %152, 4294967295
  %154 = add nsw i64 %153, -37
  %155 = icmp ult i64 %154, 8
  br i1 %155, label %156, label %159, !prof !555

156:                                              ; preds = %151, %146, %142, %139
  %157 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %119) #25
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %728, !prof !556

159:                                              ; preds = %156, %151
  %160 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %140) #25
  %161 = icmp eq i8 %160, 0
  %162 = xor i1 %161, true
  %163 = or i1 %162, %120
  %164 = select i1 %162, ptr %25, ptr %23, !prof !557
  %165 = select i1 %162, i32 1, i32 0, !prof !557
  %166 = select i1 %162, ptr %24, ptr %22, !prof !557
  br i1 %163, label %189, label %167, !prof !558

167:                                              ; preds = %159
  %168 = zext i32 %119 to i64
  %169 = add nsw i64 %168, -37
  %170 = icmp ult i64 %169, 8
  br i1 %170, label %189, label %171, !prof !559

171:                                              ; preds = %167
  %172 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %173 = getelementptr inbounds i16, ptr %172, i64 %168
  %174 = load i16, ptr %173, align 2, !tbaa !349
  %175 = icmp ult i16 %174, 7
  br i1 %175, label %189, label %176, !prof !559

176:                                              ; preds = %171
  %177 = sext i16 %174 to i64
  %178 = and i64 %177, 4294967295
  %179 = add nsw i64 %178, -37
  %180 = icmp ult i64 %179, 8
  br i1 %180, label %189, label %181, !prof !559

181:                                              ; preds = %176
  %182 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %119) #25
  %183 = icmp eq i8 %182, 0
  %184 = xor i1 %183, true
  %185 = or i1 %184, %141
  %186 = select i1 %184, ptr %23, ptr %25, !prof !560
  %187 = select i1 %184, i32 1, i32 0, !prof !560
  %188 = select i1 %184, ptr %22, ptr %24, !prof !560
  br i1 %185, label %189, label %193, !prof !561

189:                                              ; preds = %181, %159, %193, %197, %201, %167, %171, %176, %110, %113, %113, %106, %109, %109, %101, %104, %206, %209, %212
  %190 = phi ptr [ %25, %101 ], [ %25, %104 ], [ %25, %206 ], [ %25, %209 ], [ %23, %212 ], [ %25, %109 ], [ %25, %109 ], [ %25, %106 ], [ %23, %113 ], [ %23, %113 ], [ %23, %110 ], [ %164, %159 ], [ %23, %176 ], [ %23, %171 ], [ %23, %167 ], [ %186, %181 ], [ %25, %201 ], [ %25, %197 ], [ %25, %193 ]
  %191 = phi i32 [ 0, %101 ], [ 1, %104 ], [ 1, %206 ], [ 0, %209 ], [ 0, %212 ], [ 0, %109 ], [ 0, %109 ], [ 0, %106 ], [ 0, %113 ], [ 0, %113 ], [ 0, %110 ], [ %165, %159 ], [ 0, %176 ], [ 0, %171 ], [ 0, %167 ], [ %187, %181 ], [ 0, %201 ], [ 0, %197 ], [ 0, %193 ]
  %192 = phi ptr [ %24, %101 ], [ %24, %104 ], [ %24, %206 ], [ %24, %209 ], [ %22, %212 ], [ %24, %109 ], [ %24, %109 ], [ %24, %106 ], [ %22, %113 ], [ %22, %113 ], [ %22, %110 ], [ %166, %159 ], [ %22, %176 ], [ %22, %171 ], [ %22, %167 ], [ %188, %181 ], [ %24, %201 ], [ %24, %197 ], [ %24, %193 ]
  br label %13

193:                                              ; preds = %181
  %194 = zext i32 %140 to i64
  %195 = add nsw i64 %194, -37
  %196 = icmp ult i64 %195, 8
  br i1 %196, label %189, label %197, !prof !559

197:                                              ; preds = %193
  %198 = getelementptr inbounds i16, ptr %172, i64 %194
  %199 = load i16, ptr %198, align 2, !tbaa !349
  %200 = icmp ult i16 %199, 7
  br i1 %200, label %189, label %201, !prof !559

201:                                              ; preds = %197
  %202 = sext i16 %199 to i64
  %203 = and i64 %202, 4294967295
  %204 = add nsw i64 %203, -37
  %205 = icmp ult i64 %204, 8
  br i1 %205, label %189, label %206, !prof !559

206:                                              ; preds = %201
  %207 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %23, i32 noundef 0, i32 noundef 49, i32 noundef 37, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

208:                                              ; preds = %114
  br i1 %115, label %209, label %211

209:                                              ; preds = %208
  %210 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %23, i32 noundef 1, i32 noundef 49, i32 noundef 38, ptr noundef nonnull %22, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

211:                                              ; preds = %208
  br i1 %116, label %212, label %728

212:                                              ; preds = %211
  %213 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %25, i32 noundef 1, i32 noundef 49, i32 noundef 38, ptr noundef nonnull %24, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %189

214:                                              ; preds = %13, %13
  %215 = and i32 %18, 65535
  %216 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !300
  %218 = load i32, ptr %217, align 8
  %219 = and i32 %218, 65535
  %220 = add nsw i32 %219, -49
  %221 = icmp ult i32 %220, 2
  br i1 %221, label %222, label %728

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !300
  %225 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !300
  %227 = icmp eq ptr %224, %226
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5673, ptr noundef nonnull @.str.1) #24
  br label %229

229:                                              ; preds = %222, %228
  %230 = getelementptr inbounds %struct.rtx_def, ptr %217, i64 0, i32 1, i32 0, i32 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !300
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
  %242 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %243 = getelementptr inbounds i16, ptr %242, i64 %238
  %244 = load i16, ptr %243, align 2, !tbaa !349
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
  %254 = load ptr, ptr %225, align 8, !tbaa !300
  %255 = load i32, ptr %254, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 37
  br i1 %257, label %260, label %258

258:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5695, ptr noundef nonnull @.str.1) #24
  %259 = load ptr, ptr %225, align 8, !tbaa !300
  br label %260

260:                                              ; preds = %253, %258
  %261 = phi ptr [ %254, %253 ], [ %259, %258 ]
  %262 = tail call fastcc i32 @rhs_regno(ptr noundef %261) #25
  %263 = icmp slt i32 %262, 53
  br i1 %263, label %271, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %266 = zext nneg i32 %262 to i64
  %267 = getelementptr inbounds ptr, ptr %265, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !301
  %269 = icmp eq ptr %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5702, ptr noundef nonnull @.str.1) #24
  br label %271

271:                                              ; preds = %260, %264, %270
  %272 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %273 = sext i32 %262 to i64
  %274 = getelementptr inbounds ptr, ptr %272, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !301
  %276 = icmp eq ptr %275, null
  br i1 %276, label %317, label %277

277:                                              ; preds = %271
  %278 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %279 = getelementptr inbounds ptr, ptr %278, i64 %273
  %280 = load ptr, ptr %279, align 8, !tbaa !301
  %281 = icmp ne ptr %280, null
  %282 = load i32, ptr @num_not_at_initial_offset, align 4
  %283 = icmp ne i32 %282, 0
  %284 = select i1 %281, i1 true, i1 %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  %286 = load ptr, ptr %223, align 8, !tbaa !300
  %287 = tail call fastcc ptr @make_memloc(ptr noundef %286, i32 noundef %262) #25
  store ptr %287, ptr %11, align 8, !tbaa !301
  %288 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %289 = getelementptr inbounds ptr, ptr %288, i64 %273
  %290 = load ptr, ptr %289, align 8, !tbaa !301
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %294 = getelementptr inbounds ptr, ptr %293, i64 %273
  %295 = load ptr, ptr %294, align 8, !tbaa !301
  %296 = tail call i32 @rtx_equal_p(ptr noundef %287, ptr noundef %295) #24
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %292, %285
  %299 = load i32, ptr %287, align 8
  %300 = lshr i32 %299, 16
  %301 = and i32 %300, 255
  %302 = getelementptr inbounds %struct.rtx_def, ptr %287, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !300
  %304 = call fastcc i32 @find_reloads_address(i32 noundef %301, ptr noundef nonnull %11, ptr noundef %303, ptr noundef nonnull %302, i32 noundef %5, i32 noundef 9, i32 noundef %7, ptr noundef %8) #25
  %305 = load ptr, ptr %11, align 8, !tbaa !301
  %306 = call i32 @rtx_equal_p(ptr noundef %305, ptr noundef nonnull %287) #24
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %298
  %309 = load ptr, ptr %11, align 8, !tbaa !301
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %262, ptr noundef %309) #25
  br label %310

310:                                              ; preds = %308, %298
  %311 = load ptr, ptr %11, align 8, !tbaa !301
  %312 = load i32, ptr %14, align 8
  %313 = lshr i32 %312, 16
  %314 = and i32 %313, 255
  %315 = call i32 @push_reload(ptr noundef %311, ptr noundef %311, ptr noundef nonnull %223, ptr noundef nonnull %225, i32 noundef 13, i32 noundef %314, i32 noundef %314, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef 9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  br label %728

316:                                              ; preds = %292
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  br label %317

317:                                              ; preds = %316, %277, %271
  %318 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %319 = getelementptr inbounds i16, ptr %318, i64 %273
  %320 = load i16, ptr %319, align 2, !tbaa !349
  %321 = sext i16 %320 to i32
  %322 = icmp slt i16 %320, 0
  %323 = select i1 %322, i32 %262, i32 %321
  %324 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %323) #25
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %728

326:                                              ; preds = %317
  %327 = load i32, ptr %14, align 8
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  %330 = load ptr, ptr %225, align 8, !tbaa !300
  %331 = load ptr, ptr %223, align 8, !tbaa !300
  %332 = tail call i32 @push_reload(ptr noundef %330, ptr noundef %331, ptr noundef nonnull %225, ptr noundef nonnull %223, i32 noundef 13, i32 noundef %329, i32 noundef %329, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef 9) #25
  br label %728

333:                                              ; preds = %13, %13, %13, %13
  %334 = select i1 %19, i32 11, i32 13, !prof !562
  %335 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !300
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 37
  br i1 %339, label %340, label %728

340:                                              ; preds = %333
  %341 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %336) #25
  %342 = icmp slt i32 %341, 53
  br i1 %342, label %350, label %343

343:                                              ; preds = %340
  %344 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %345 = zext nneg i32 %341 to i64
  %346 = getelementptr inbounds ptr, ptr %344, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !301
  %348 = icmp eq ptr %347, null
  br i1 %348, label %350, label %349

349:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5773, ptr noundef nonnull @.str.1) #24
  br label %350

350:                                              ; preds = %340, %343, %349
  %351 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %352 = sext i32 %341 to i64
  %353 = getelementptr inbounds ptr, ptr %351, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !301
  %355 = icmp eq ptr %354, null
  br i1 %355, label %398, label %356

356:                                              ; preds = %350
  %357 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %358 = getelementptr inbounds ptr, ptr %357, i64 %352
  %359 = load ptr, ptr %358, align 8, !tbaa !301
  %360 = icmp ne ptr %359, null
  %361 = load i32, ptr @num_not_at_initial_offset, align 4
  %362 = icmp ne i32 %361, 0
  %363 = select i1 %360, i1 true, i1 %362
  br i1 %363, label %364, label %398

364:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  %365 = load ptr, ptr %335, align 8, !tbaa !300
  %366 = tail call fastcc ptr @make_memloc(ptr noundef %365, i32 noundef %341) #25
  store ptr %366, ptr %12, align 8, !tbaa !301
  %367 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %368 = getelementptr inbounds ptr, ptr %367, i64 %352
  %369 = load ptr, ptr %368, align 8, !tbaa !301
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %364
  %372 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %373 = getelementptr inbounds ptr, ptr %372, i64 %352
  %374 = load ptr, ptr %373, align 8, !tbaa !301
  %375 = tail call i32 @rtx_equal_p(ptr noundef %366, ptr noundef %374) #24
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %396

377:                                              ; preds = %371, %364
  %378 = load i32, ptr %366, align 8
  %379 = lshr i32 %378, 16
  %380 = and i32 %379, 255
  %381 = getelementptr inbounds %struct.rtx_def, ptr %366, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !300
  %383 = call fastcc i32 @find_reloads_address(i32 noundef %380, ptr noundef nonnull %12, ptr noundef %382, ptr noundef nonnull %381, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  %384 = load ptr, ptr %12, align 8, !tbaa !301
  %385 = call i32 @rtx_equal_p(ptr noundef %384, ptr noundef nonnull %366) #24
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %377
  %388 = load ptr, ptr %12, align 8, !tbaa !301
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %341, ptr noundef %388) #25
  br label %389

389:                                              ; preds = %387, %377
  %390 = load i32, ptr %14, align 8
  %391 = and i32 %390, 65535
  %392 = lshr i32 %390, 16
  %393 = and i32 %392, 255
  %394 = load ptr, ptr %12, align 8, !tbaa !301
  %395 = call ptr @gen_rtx_fmt_e_stat(i32 noundef %391, i32 noundef %393, ptr noundef %394) #24
  store ptr %395, ptr %10, align 8, !tbaa !301
  br label %396

396:                                              ; preds = %389, %371
  %397 = phi ptr [ %395, %389 ], [ %14, %371 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  br label %398

398:                                              ; preds = %356, %396, %350
  %399 = phi ptr [ %14, %356 ], [ %397, %396 ], [ %14, %350 ]
  %400 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %401 = getelementptr inbounds i16, ptr %400, i64 %352
  %402 = load i16, ptr %401, align 2, !tbaa !349
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
  br i1 %411, label %427, label %728

412:                                              ; preds = %407
  %413 = icmp slt i32 %405, 7
  br i1 %413, label %728, label %414

414:                                              ; preds = %412
  %415 = zext nneg i32 %405 to i64
  %416 = add nsw i64 %415, -37
  %417 = icmp ult i64 %416, 8
  br i1 %417, label %728, label %418

418:                                              ; preds = %414
  %419 = getelementptr inbounds i16, ptr %400, i64 %415
  %420 = load i16, ptr %419, align 2, !tbaa !349
  %421 = icmp ult i16 %420, 7
  br i1 %421, label %728, label %422

422:                                              ; preds = %418
  %423 = sext i16 %420 to i64
  %424 = and i64 %423, 4294967295
  %425 = add nsw i64 %424, -37
  %426 = icmp ult i64 %425, 8
  br i1 %426, label %728, label %427

427:                                              ; preds = %422, %409, %398
  %428 = getelementptr inbounds %struct.rtx_def, ptr %399, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !300
  %430 = load i32, ptr %429, align 8
  %431 = and i32 %430, 65535
  %432 = icmp eq i32 %431, 43
  br i1 %432, label %438, label %433

433:                                              ; preds = %427
  %434 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %435 = sext i32 %405 to i64
  %436 = getelementptr inbounds ptr, ptr %434, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !301
  br label %438

438:                                              ; preds = %427, %433
  %439 = phi ptr [ %437, %433 ], [ %429, %427 ]
  %440 = load i32, ptr %399, align 8
  %441 = lshr i32 %440, 16
  %442 = and i32 %441, 255
  %443 = zext nneg i32 %442 to i64
  %444 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !563
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
  %464 = load ptr, ptr %463, align 8, !tbaa !297
  %465 = load ptr, ptr %464, align 8, !tbaa !565
  %466 = load i32, ptr %399, align 8
  %467 = lshr i32 %466, 16
  %468 = and i32 %467, 255
  %469 = call i32 %465(ptr noundef nonnull %439, i32 noundef %468) #24
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %479, label %471

471:                                              ; preds = %461
  %472 = getelementptr inbounds %struct.insn_operand_data, ptr %464, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !565
  %474 = load i32, ptr %399, align 8
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  %477 = call i32 %473(ptr noundef nonnull %439, i32 noundef %476) #24
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %471, %461, %459
  %480 = load ptr, ptr %428, align 8, !tbaa !300
  store ptr %480, ptr %10, align 8, !tbaa !301
  %481 = load i32, ptr %480, align 8
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  %484 = call i32 @push_reload(ptr noundef nonnull %480, ptr noundef nonnull %480, ptr noundef nonnull %335, ptr noundef nonnull %335, i32 noundef %334, i32 noundef %483, i32 noundef %483, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef 9) #25
  br label %728

485:                                              ; preds = %471, %453, %447, %438
  %486 = load i32, ptr %399, align 8
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 255
  %489 = call i32 @push_reload(ptr noundef nonnull %399, ptr noundef nonnull %399, ptr noundef %16, ptr noundef null, i32 noundef %334, i32 noundef %488, i32 noundef %488, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  %490 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %491 = getelementptr inbounds %struct.rtx_def, ptr %490, i64 1
  %492 = load ptr, ptr %491, align 8, !tbaa !300
  %493 = load ptr, ptr %335, align 8, !tbaa !300
  %494 = call fastcc i32 @find_inc_amount(ptr noundef %492, ptr noundef %493) #25
  %495 = sext i32 %489 to i64
  %496 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %495, i32 7
  store i32 %494, ptr %496, align 4, !tbaa !463
  br label %728

497:                                              ; preds = %499, %728
  %498 = phi i32 [ %730, %728 ], [ %510, %499 ]
  ret i32 %498

499:                                              ; preds = %13, %13, %13
  %500 = and i32 %18, 65535
  %501 = select i1 %19, i32 11, i32 13, !prof !562
  %502 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !300
  %504 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %503, i32 noundef %15, i32 noundef %500, i32 noundef 38, ptr noundef nonnull %502, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  %505 = load i32, ptr %14, align 8
  %506 = lshr i32 %505, 16
  %507 = and i32 %506, 255
  %508 = tail call i32 @push_reload(ptr noundef nonnull %14, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %501, i32 noundef %507, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  %509 = xor i1 %17, true
  %510 = zext i1 %509 to i32
  br label %497

511:                                              ; preds = %13
  %512 = select i1 %19, i32 11, i32 13, !prof !562
  %513 = lshr i32 %18, 16
  %514 = and i32 %513, 255
  %515 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !300
  %517 = icmp eq i32 %6, 3
  %518 = icmp eq i32 %6, 5
  %519 = select i1 %518, i32 6, i32 %6
  %520 = select i1 %517, i32 4, i32 %519
  %521 = tail call fastcc i32 @find_reloads_address(i32 noundef %514, ptr noundef %16, ptr noundef %516, ptr noundef nonnull %515, i32 noundef %5, i32 noundef %520, i32 noundef %7, ptr noundef %8) #25
  %522 = load ptr, ptr %16, align 8, !tbaa !301
  %523 = load i32, ptr %14, align 8
  %524 = lshr i32 %523, 16
  %525 = and i32 %524, 255
  %526 = tail call i32 @push_reload(ptr noundef %522, ptr noundef null, ptr noundef nonnull %16, ptr noundef null, i32 noundef %512, i32 noundef %525, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %728

527:                                              ; preds = %13
  %528 = select i1 %19, i32 11, i32 13, !prof !562
  %529 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #25
  %530 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %531 = sext i32 %529 to i64
  %532 = getelementptr inbounds ptr, ptr %530, i64 %531
  %533 = load ptr, ptr %532, align 8, !tbaa !301
  %534 = icmp eq ptr %533, null
  br i1 %534, label %538, label %535, !prof !566

535:                                              ; preds = %527
  %536 = lshr i32 %18, 16
  %537 = and i32 %536, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %533, ptr noundef %16, i32 noundef %528, i32 noundef %537, i32 noundef %5, i32 noundef %6, i32 noundef %7) #25
  br label %728

538:                                              ; preds = %527
  %539 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %540 = getelementptr inbounds ptr, ptr %539, i64 %531
  %541 = load ptr, ptr %540, align 8, !tbaa !301
  %542 = icmp eq ptr %541, null
  br i1 %542, label %579, label %543, !prof !567

543:                                              ; preds = %538
  %544 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %545 = getelementptr inbounds ptr, ptr %544, i64 %531
  %546 = load ptr, ptr %545, align 8, !tbaa !301
  %547 = icmp ne ptr %546, null
  %548 = load i32, ptr @num_not_at_initial_offset, align 4
  %549 = icmp ne i32 %548, 0
  %550 = select i1 %547, i1 true, i1 %549
  br i1 %550, label %551, label %579, !prof !568

551:                                              ; preds = %543
  %552 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %14, i32 noundef %529) #25
  %553 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %554 = getelementptr inbounds ptr, ptr %553, i64 %531
  %555 = load ptr, ptr %554, align 8, !tbaa !301
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %563

557:                                              ; preds = %551
  %558 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %559 = getelementptr inbounds ptr, ptr %558, i64 %531
  %560 = load ptr, ptr %559, align 8, !tbaa !301
  %561 = tail call i32 @rtx_equal_p(ptr noundef %552, ptr noundef %560) #24
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %579

563:                                              ; preds = %557, %551
  store ptr %552, ptr %10, align 8, !tbaa !301
  %564 = load i32, ptr %552, align 8
  %565 = lshr i32 %564, 16
  %566 = and i32 %565, 255
  %567 = getelementptr inbounds %struct.rtx_def, ptr %552, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !300
  %569 = icmp eq i32 %6, 3
  %570 = icmp eq i32 %6, 5
  %571 = select i1 %570, i32 6, i32 %6
  %572 = select i1 %569, i32 4, i32 %571
  %573 = call fastcc i32 @find_reloads_address(i32 noundef %566, ptr noundef nonnull %10, ptr noundef %568, ptr noundef nonnull %567, i32 noundef %5, i32 noundef %572, i32 noundef %7, ptr noundef %8) #25
  %574 = load ptr, ptr %10, align 8, !tbaa !301
  %575 = call i32 @rtx_equal_p(ptr noundef %574, ptr noundef nonnull %552) #24
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %563
  %578 = load ptr, ptr %10, align 8, !tbaa !301
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %529, ptr noundef %578) #25
  br label %579

579:                                              ; preds = %557, %577, %563, %543, %538
  %580 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %581 = getelementptr inbounds i16, ptr %580, i64 %531
  %582 = load i16, ptr %581, align 2, !tbaa !349
  %583 = icmp sgt i16 %582, -1
  br i1 %583, label %584, label %586, !prof !569

584:                                              ; preds = %579
  %585 = zext nneg i16 %582 to i32
  br label %586

586:                                              ; preds = %584, %579
  %587 = phi i32 [ %585, %584 ], [ %529, %579 ]
  %588 = icmp sgt i32 %587, 52
  br i1 %588, label %609, label %589, !prof !570

589:                                              ; preds = %586
  %590 = icmp eq i32 %15, 0
  br i1 %590, label %591, label %594, !prof !571

591:                                              ; preds = %589
  %592 = call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %587) #25
  %593 = icmp eq i8 %592, 0
  br i1 %593, label %609, label %615, !prof !572

594:                                              ; preds = %589
  %595 = icmp slt i32 %587, 7
  br i1 %595, label %615, label %596, !prof !572

596:                                              ; preds = %594
  %597 = zext nneg i32 %587 to i64
  %598 = add nsw i64 %597, -37
  %599 = icmp ult i64 %598, 8
  br i1 %599, label %615, label %600

600:                                              ; preds = %596
  %601 = getelementptr inbounds i16, ptr %580, i64 %597
  %602 = load i16, ptr %601, align 2, !tbaa !349
  %603 = icmp ult i16 %602, 7
  br i1 %603, label %615, label %604

604:                                              ; preds = %600
  %605 = sext i16 %602 to i64
  %606 = and i64 %605, 4294967295
  %607 = add nsw i64 %606, -37
  %608 = icmp ult i64 %607, 8
  br i1 %608, label %615, label %609, !prof !573

609:                                              ; preds = %604, %591, %586
  %610 = load ptr, ptr %10, align 8, !tbaa !301
  %611 = load i32, ptr %610, align 8
  %612 = lshr i32 %611, 16
  %613 = and i32 %612, 255
  %614 = call i32 @push_reload(ptr noundef nonnull %610, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %528, i32 noundef %613, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %728

615:                                              ; preds = %604, %600, %596, %594, %591
  %616 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %617 = load ptr, ptr %10, align 8, !tbaa !301
  %618 = load i32, ptr %617, align 8
  %619 = lshr i32 %618, 16
  %620 = and i32 %619, 255
  %621 = call i32 @regno_clobbered_p(i32 noundef %587, ptr noundef %616, i32 noundef %620, i32 noundef 0) #25
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %728, label %623, !prof !574

623:                                              ; preds = %615
  %624 = load ptr, ptr %10, align 8, !tbaa !301
  %625 = load i32, ptr %624, align 8
  %626 = lshr i32 %625, 16
  %627 = and i32 %626, 255
  %628 = call i32 @push_reload(ptr noundef nonnull %624, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %528, i32 noundef %627, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %728

629:                                              ; preds = %13
  %630 = select i1 %19, i32 11, i32 13, !prof !562
  %631 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %632 = load ptr, ptr %631, align 8, !tbaa !300
  %633 = load i32, ptr %632, align 8
  %634 = and i32 %633, 65535
  %635 = icmp eq i32 %634, 37
  br i1 %635, label %636, label %705

636:                                              ; preds = %629
  %637 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %632) #25
  %638 = icmp ult i32 %637, 53
  br i1 %638, label %639, label %666

639:                                              ; preds = %636
  %640 = tail call i32 @subreg_regno(ptr noundef nonnull %14) #24
  %641 = icmp eq i32 %15, 0
  br i1 %641, label %642, label %645

642:                                              ; preds = %639
  %643 = tail call fastcc zeroext i8 @regno_ok_for_base_p(i32 noundef %640) #25
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %661, label %705

645:                                              ; preds = %639
  %646 = icmp slt i32 %640, 7
  br i1 %646, label %705, label %647

647:                                              ; preds = %645
  %648 = zext nneg i32 %640 to i64
  %649 = add nsw i64 %648, -37
  %650 = icmp ult i64 %649, 8
  br i1 %650, label %705, label %651

651:                                              ; preds = %647
  %652 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %653 = getelementptr inbounds i16, ptr %652, i64 %648
  %654 = load i16, ptr %653, align 2, !tbaa !349
  %655 = icmp ult i16 %654, 7
  br i1 %655, label %705, label %656

656:                                              ; preds = %651
  %657 = sext i16 %654 to i64
  %658 = and i64 %657, 4294967295
  %659 = add nsw i64 %658, -37
  %660 = icmp ult i64 %659, 8
  br i1 %660, label %705, label %661

661:                                              ; preds = %656, %642
  %662 = load i32, ptr %14, align 8
  %663 = lshr i32 %662, 16
  %664 = and i32 %663, 255
  %665 = tail call i32 @push_reload(ptr noundef nonnull %14, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %630, i32 noundef %664, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %728

666:                                              ; preds = %636
  %667 = tail call i32 @reg_classes_intersect_p(i32 noundef %630, i32 noundef 13) #24
  %668 = icmp eq i32 %667, 0
  %669 = load ptr, ptr %631, align 8, !tbaa !300
  %670 = load i32, ptr %669, align 8
  %671 = lshr i32 %670, 16
  %672 = and i32 %671, 255
  br i1 %668, label %673, label %680

673:                                              ; preds = %666
  %674 = zext nneg i32 %672 to i64
  %675 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %674
  %676 = load i8, ptr %675, align 1, !tbaa !300
  %677 = and i8 %676, -2
  %678 = icmp eq i8 %677, 10
  %679 = select i1 %678, i32 2, i32 1
  br label %689

680:                                              ; preds = %666
  %681 = icmp eq i32 %672, 40
  br i1 %681, label %689, label %682

682:                                              ; preds = %680
  %683 = zext nneg i32 %672 to i64
  %684 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %683
  %685 = load i8, ptr %684, align 1, !tbaa !300
  %686 = zext i8 %685 to i32
  %687 = add nuw nsw i32 %686, 3
  %688 = lshr i32 %687, 2
  br label %689

689:                                              ; preds = %682, %680, %673
  %690 = phi i32 [ %679, %673 ], [ %688, %682 ], [ 3, %680 ]
  %691 = zext nneg i32 %630 to i64
  %692 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %691
  %693 = load i32, ptr %692, align 4, !tbaa !305
  %694 = icmp ugt i32 %690, %693
  br i1 %694, label %695, label %705

695:                                              ; preds = %689
  %696 = icmp eq i32 %6, 3
  %697 = icmp eq i32 %6, 5
  %698 = select i1 %697, i32 6, i32 %6
  %699 = select i1 %696, i32 4, i32 %698
  %700 = tail call fastcc ptr @find_reloads_subreg_address(ptr noundef nonnull %14, i32 noundef 0, i32 noundef %5, i32 noundef %699, i32 noundef %7, ptr noundef %8) #25
  %701 = load i32, ptr %700, align 8
  %702 = lshr i32 %701, 16
  %703 = and i32 %702, 255
  %704 = tail call i32 @push_reload(ptr noundef nonnull %700, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef %630, i32 noundef %703, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %5, i32 noundef %6) #25
  br label %728

705:                                              ; preds = %13, %689, %656, %651, %647, %645, %642, %629
  %706 = and i32 %18, 65535
  %707 = zext nneg i32 %706 to i64
  %708 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %707
  %709 = load ptr, ptr %708, align 8, !tbaa !301
  %710 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %707
  %711 = load i8, ptr %710, align 1, !tbaa !300
  %712 = icmp eq i8 %711, 0
  br i1 %712, label %728, label %713, !prof !575

713:                                              ; preds = %705
  %714 = zext i8 %711 to i64
  br label %715

715:                                              ; preds = %713, %726
  %716 = phi i64 [ %714, %713 ], [ %717, %726 ]
  %717 = add nsw i64 %716, -1
  %718 = getelementptr inbounds i8, ptr %709, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !300
  %720 = icmp eq i8 %719, 101
  br i1 %720, label %721, label %726, !prof !576

721:                                              ; preds = %715
  %722 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %723 = getelementptr inbounds [1 x %union.rtunion_def], ptr %722, i64 0, i64 %717
  %724 = load ptr, ptr %723, align 8, !tbaa !300
  %725 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %724, i32 noundef %15, i32 noundef %706, i32 noundef 38, ptr noundef nonnull %723, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #25
  br label %726

726:                                              ; preds = %715, %721
  %727 = icmp ugt i64 %716, 1
  br i1 %727, label %715, label %728, !prof !577, !llvm.loop !578

728:                                              ; preds = %156, %135, %211, %726, %705, %479, %485, %623, %609, %535, %615, %82, %695, %214, %326, %310, %661, %333, %409, %412, %414, %418, %422, %317, %511
  %729 = phi i32 [ 1, %695 ], [ 1, %511 ], [ 0, %317 ], [ 0, %409 ], [ 0, %412 ], [ 0, %414 ], [ 0, %418 ], [ 0, %422 ], [ 0, %333 ], [ 1, %661 ], [ 0, %310 ], [ 0, %214 ], [ 0, %326 ], [ 1, %82 ], [ 0, %615 ], [ 1, %535 ], [ 1, %609 ], [ 1, %623 ], [ 1, %485 ], [ 0, %479 ], [ 0, %705 ], [ 0, %726 ], [ 0, %211 ], [ 0, %135 ], [ 0, %156 ]
  %730 = select i1 %17, i32 0, i32 %729
  br label %497
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @subst_indexed_address(ptr noundef readonly %0) unnamed_addr #0 !prof !579 !PGOFuncName !580 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 49
  br i1 %4, label %5, label %99, !prof !581

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !300
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %27, !prof !582

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %15 = icmp sgt i32 %14, 52
  br i1 %15, label %16, label %27, !prof !583

16:                                               ; preds = %13
  %17 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds i16, ptr %17, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !349
  %21 = icmp slt i16 %20, 0
  br i1 %21, label %22, label %27, !prof !584

22:                                               ; preds = %16
  %23 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %24 = getelementptr inbounds ptr, ptr %23, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !301
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %59, !prof !584

27:                                               ; preds = %22, %16, %13, %5
  %28 = load i32, ptr %9, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %45, !prof !585

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %33 = icmp sgt i32 %32, 52
  br i1 %33, label %34, label %45, !prof !586

34:                                               ; preds = %31
  %35 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %36 = zext nneg i32 %32 to i64
  %37 = getelementptr inbounds i16, ptr %35, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !349
  %39 = icmp slt i16 %38, 0
  br i1 %39, label %40, label %45, !prof !587

40:                                               ; preds = %34
  %41 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %42 = getelementptr inbounds ptr, ptr %41, i64 %36
  %43 = load ptr, ptr %42, align 8, !tbaa !301
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %59, !prof !587

45:                                               ; preds = %40, %34, %31, %27
  %46 = icmp eq i32 %11, 49
  br i1 %46, label %47, label %52, !prof !588

47:                                               ; preds = %45
  %48 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %7) #25
  %49 = icmp eq ptr %48, %7
  br i1 %49, label %50, label %59, !prof !589

50:                                               ; preds = %47
  %51 = load i32, ptr %9, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = phi i32 [ %51, %50 ], [ %28, %45 ]
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 49
  br i1 %55, label %56, label %99, !prof !590

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
  %72 = load ptr, ptr %71, align 8, !tbaa !300
  %73 = load ptr, ptr %70, align 8, !tbaa !300
  br label %80

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %76 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !300
  %78 = load ptr, ptr %75, align 8, !tbaa !300
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

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_preferred_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #4 !prof !346 !PGOFuncName !591 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %21, label %3, !prof !592

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = add nsw i64 %4, -37
  %6 = icmp ult i64 %5, 8
  %7 = and i32 %0, -5
  %8 = icmp eq i32 %7, 16
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10, !prof !593

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !349
  %14 = icmp ult i16 %13, 8
  br i1 %14, label %21, label %15, !prof !351

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
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_inc_amount(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !prof !294 !PGOFuncName !594 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65534
  %11 = add nsw i32 %10, -74
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !300
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = lshr i32 %3, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !300
  %23 = zext i8 %22 to i32
  br label %88

24:                                               ; preds = %6
  %25 = icmp eq i32 %10, 78
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !300
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 49
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !300
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !300
  %37 = icmp eq ptr %34, %36
  %38 = icmp eq ptr %34, %1
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !300
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !300
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  br label %88

51:                                               ; preds = %13, %40, %32, %26, %24, %2
  %52 = zext nneg i32 %4 to i64
  %53 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !301
  %55 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !300
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
  %65 = load i8, ptr %64, align 1, !tbaa !300
  switch i8 %65, label %86 [
    i8 101, label %66
    i8 69, label %71
  ]

66:                                               ; preds = %61
  %67 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %63
  %68 = load ptr, ptr %67, align 8, !tbaa !300
  %69 = tail call fastcc i32 @find_inc_amount(ptr noundef %68, ptr noundef %1) #25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %88

71:                                               ; preds = %61
  %72 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %63
  %73 = load ptr, ptr %72, align 8, !tbaa !300
  %74 = load i32, ptr %73, align 8, !tbaa !360
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
  %83 = load ptr, ptr %82, align 8, !tbaa !301
  %84 = tail call fastcc i32 @find_inc_amount(ptr noundef %83, ptr noundef %1) #25
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %76, label %88, !llvm.loop !595

86:                                               ; preds = %76, %61, %66
  %87 = icmp sgt i64 %62, 1
  br i1 %87, label %61, label %88, !llvm.loop !596

88:                                               ; preds = %66, %86, %80, %51, %17, %46
  %89 = phi i32 [ %23, %17 ], [ %50, %46 ], [ 0, %51 ], [ %84, %80 ], [ %69, %66 ], [ 0, %86 ]
  ret i32 %89
}

; Function Attrs: optsize
declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reloads_subreg_address(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !prof !294 !PGOFuncName !597 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  %10 = tail call fastcc i32 @rhs_regno(ptr noundef %9) #25
  %11 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !301
  %15 = icmp eq ptr %14, null
  br i1 %15, label %225, label %16

16:                                               ; preds = %6
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !301
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %25 = getelementptr inbounds ptr, ptr %24, i64 %12
  %26 = load ptr, ptr %25, align 8, !tbaa !301
  %27 = tail call i32 @offsettable_memref_p(ptr noundef %26) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %8, align 8, !tbaa !300
  br label %31

31:                                               ; preds = %29, %18, %16
  %32 = phi ptr [ %30, %29 ], [ %9, %18 ], [ %9, %16 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %33 = tail call fastcc ptr @make_memloc(ptr noundef %32, i32 noundef %10) #25
  store ptr %33, ptr %7, align 8, !tbaa !301
  br label %45

34:                                               ; preds = %23
  %35 = load i32, ptr @num_not_at_initial_offset, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %225, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %38 = load ptr, ptr %8, align 8, !tbaa !300
  %39 = tail call fastcc ptr @make_memloc(ptr noundef %38, i32 noundef %10) #25
  store ptr %39, ptr %7, align 8, !tbaa !301
  %40 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %41 = getelementptr inbounds ptr, ptr %40, i64 %12
  %42 = load ptr, ptr %41, align 8, !tbaa !301
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
  %52 = load i8, ptr %51, align 1, !tbaa !300
  %53 = zext i8 %52 to i32
  %54 = load ptr, ptr %8, align 8, !tbaa !300
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !300
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !300
  %63 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !300
  %65 = sext i32 %62 to i64
  %66 = tail call ptr @plus_constant(ptr noundef %64, i64 noundef %65) #24
  store ptr %66, ptr %63, align 8, !tbaa !300
  %67 = load i32, ptr %0, align 8
  %68 = and i32 %67, 16711680
  %69 = load i32, ptr %46, align 8
  %70 = and i32 %69, -16711681
  %71 = or disjoint i32 %70, %68
  store i32 %71, ptr %46, align 8
  %72 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !300
  %74 = icmp eq ptr %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %45
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !598
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call ptr @plus_constant(ptr noundef nonnull %77, i64 noundef %65) #24
  tail call void @set_mem_offset(ptr noundef nonnull %46, ptr noundef %80) #24
  %81 = load ptr, ptr %72, align 8, !tbaa !300
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %75, %79
  %84 = phi ptr [ %81, %79 ], [ %73, %75 ]
  %85 = getelementptr inbounds %struct.mem_attrs, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !599
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
  %96 = load i8, ptr %95, align 1, !tbaa !300
  %97 = zext i8 %96 to i64
  %98 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %97) #24
  %99 = icmp eq ptr %98, null
  br i1 %99, label %125, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr %72, align 8, !tbaa !300
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %83, %100
  %104 = phi ptr [ %101, %100 ], [ %84, %83 ]
  %105 = getelementptr inbounds %struct.mem_attrs, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !599
  br label %117

107:                                              ; preds = %100
  %108 = load i32, ptr %46, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = icmp ne i32 %110, 1
  tail call void @llvm.assume(i1 %111)
  %112 = zext nneg i32 %110 to i64
  %113 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !300
  %115 = zext i8 %114 to i64
  %116 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %115) #24
  br label %117

117:                                              ; preds = %107, %103
  %118 = phi ptr [ %106, %103 ], [ %116, %107 ]
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !300
  %121 = zext i8 %52 to i64
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %121) #24
  tail call void @set_mem_size(ptr noundef nonnull %46, ptr noundef %124) #24
  br label %125

125:                                              ; preds = %88, %123, %117, %93, %83
  %126 = icmp ugt i8 %52, %60
  %127 = load ptr, ptr %63, align 8, !tbaa !300
  br i1 %126, label %128, label %162

128:                                              ; preds = %125
  %129 = load i32, ptr %127, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 49
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %134 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !300
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 30
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !300
  %142 = zext i8 %52 to i64
  %143 = srem i64 %141, %142
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %222

145:                                              ; preds = %139, %132
  %146 = load ptr, ptr %133, align 8, !tbaa !300
  %147 = load i32, ptr %146, align 8
  br label %148

148:                                              ; preds = %145, %128
  %149 = phi i32 [ %147, %145 ], [ %129, %128 ]
  %150 = phi ptr [ %146, %145 ], [ %127, %128 ]
  %151 = and i32 %149, 65535
  %152 = icmp eq i32 %151, 37
  br i1 %152, label %153, label %222

153:                                              ; preds = %148
  %154 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !600
  %155 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %150) #25
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %154, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !300
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
  %169 = load ptr, ptr %7, align 8, !tbaa !301
  %170 = call i32 @rtx_equal_p(ptr noundef %169, ptr noundef nonnull %46) #24
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load ptr, ptr %7, align 8, !tbaa !301
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %10, ptr noundef %173) #25
  br label %174

174:                                              ; preds = %172, %168, %162
  %175 = icmp eq i32 %166, 0
  br i1 %175, label %176, label %205

176:                                              ; preds = %174
  %177 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %178 = getelementptr inbounds ptr, ptr %177, i64 %12
  %179 = load ptr, ptr %178, align 8, !tbaa !301
  %180 = icmp eq ptr %179, null
  br i1 %180, label %205, label %181

181:                                              ; preds = %176
  %182 = load i32, ptr %0, align 8
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !300
  %187 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load ptr, ptr %187, align 8, !tbaa !300
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.mem_attrs, ptr %188, i64 0, i32 5
  %192 = load i8, ptr %191, align 8, !tbaa !302
  br label %193

193:                                              ; preds = %181, %190
  %194 = phi i8 [ %192, %190 ], [ 0, %181 ]
  %195 = call i32 @strict_memory_address_addr_space_p(i32 noundef %184, ptr noundef %186, i8 noundef zeroext %194) #25, !range !304
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %193
  %198 = load ptr, ptr %7, align 8, !tbaa !301
  %199 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !300
  %201 = load i32, ptr %200, align 8
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = call i32 @push_reload(ptr noundef nonnull %200, ptr noundef null, ptr noundef nonnull %199, ptr noundef null, i32 noundef 13, i32 noundef %203, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef %3) #25
  br label %205

205:                                              ; preds = %197, %193, %176, %174
  %206 = load i32, ptr @replace_reloads, align 4, !tbaa !305
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %205
  %209 = sext i32 %2 to i64
  %210 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !301
  %212 = icmp eq ptr %211, %0
  br i1 %212, label %220, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr %8, align 8, !tbaa !300
  %215 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %214) #24
  %216 = call ptr @emit_insn_before(ptr noundef %215, ptr noundef %5) #24
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, -16711681
  %219 = or disjoint i32 %218, 917504
  store i32 %219, ptr %216, align 8
  br label %220

220:                                              ; preds = %213, %208, %205
  %221 = load ptr, ptr %7, align 8, !tbaa !301
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
declare i32 @offsettable_memref_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @form_sum(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !609 {
  br label %4

4:                                                ; preds = %63, %3
  %5 = phi ptr [ %1, %3 ], [ %64, %63 ]
  %6 = phi ptr [ %2, %3 ], [ %65, %63 ]
  %7 = load i32, ptr %5, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %0
  %11 = icmp eq i32 %9, 0
  %12 = or i1 %10, %11
  br i1 %12, label %14, label %13, !prof !610

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
  br i1 %20, label %22, label %21, !prof !611

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5349, ptr noundef nonnull @.str.1) #24
  br label %22

22:                                               ; preds = %14, %21
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %30, !prof !612

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !300
  %29 = tail call ptr @plus_constant(ptr noundef nonnull %6, i64 noundef %28) #24
  br label %111

30:                                               ; preds = %22
  %31 = load i32, ptr %6, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %34, label %38, !prof !613

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !300
  %37 = tail call ptr @plus_constant(ptr noundef nonnull %5, i64 noundef %36) #24
  br label %111

38:                                               ; preds = %30
  %39 = zext nneg i32 %24 to i64
  %40 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !305
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %44, !prof !614

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %31, %43 ], [ %23, %38 ]
  %46 = phi ptr [ %6, %43 ], [ %5, %38 ]
  %47 = phi ptr [ %5, %43 ], [ %6, %38 ]
  %48 = and i32 %45, 65535
  %49 = icmp eq i32 %48, 49
  br i1 %49, label %50, label %66, !prof !615

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !300
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !305
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %66, !prof !616

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !300
  %62 = tail call ptr @form_sum(i32 noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %47) #25
  br label %63

63:                                               ; preds = %59, %79
  %64 = phi ptr [ %61, %59 ], [ %82, %79 ]
  %65 = phi ptr [ %62, %59 ], [ %83, %79 ]
  br label %4

66:                                               ; preds = %50, %44
  %67 = load i32, ptr %47, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 49
  br i1 %69, label %70, label %84, !prof !617

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !300
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !305
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %79, label %84, !prof !618

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !300
  %82 = tail call ptr @form_sum(i32 noundef %0, ptr noundef nonnull %46, ptr noundef %81) #25
  %83 = load ptr, ptr %71, align 8, !tbaa !300
  br label %63

84:                                               ; preds = %70, %66
  %85 = zext nneg i32 %48 to i64
  %86 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !305
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %89, label %109, !prof !619

89:                                               ; preds = %84
  %90 = zext nneg i32 %68 to i64
  %91 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !305
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = icmp eq i32 %48, 35
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !300
  br label %99

99:                                               ; preds = %96, %94
  %100 = phi ptr [ %98, %96 ], [ %46, %94 ]
  %101 = icmp eq i32 %68, 35
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !300
  br label %105

105:                                              ; preds = %102, %99
  %106 = phi ptr [ %104, %102 ], [ %47, %99 ]
  %107 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %100, ptr noundef %106) #24
  %108 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef 0, ptr noundef %107) #24
  br label %111

109:                                              ; preds = %89, %84
  %110 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %47) #24
  br label %111

111:                                              ; preds = %109, %105, %34, %26
  %112 = phi ptr [ %29, %26 ], [ %37, %34 ], [ %108, %105 ], [ %110, %109 ]
  ret ptr %112
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @clear_secondary_mem() local_unnamed_addr #6 !prof !620 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @secondary_memlocs, i8 0, i64 696, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !621 !PGOFuncName !622 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %50, !prof !623

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !300
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !305
  %15 = icmp eq i32 %14, 9
  %16 = icmp eq i32 %11, 49
  %17 = or i1 %15, %16
  br i1 %17, label %50, label %18, !prof !624

18:                                               ; preds = %7
  %19 = icmp eq i32 %11, 37
  br i1 %19, label %20, label %50, !prof !625

20:                                               ; preds = %18
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %22 = icmp ugt i32 %21, 52
  br i1 %22, label %50, label %23, !prof !626

23:                                               ; preds = %20
  %24 = tail call i32 @subreg_regno(ptr noundef nonnull %0) #24
  %25 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %24, i32 noundef %1) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %50, label %27, !prof !627

27:                                               ; preds = %23
  %28 = zext i32 %1 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !300
  %31 = icmp ult i8 %30, 5
  %32 = icmp ne i32 %2, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %50, !prof !628

34:                                               ; preds = %27
  %35 = load i32, ptr %9, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !300
  %41 = icmp ugt i8 %40, 4
  br i1 %41, label %42, label %50, !prof !629

42:                                               ; preds = %34
  %43 = lshr i8 %40, 2
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #25
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %45, i64 %38
  %47 = load i8, ptr %46, align 1, !tbaa !300
  %48 = icmp ne i8 %43, %47
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %27, %34, %42, %23, %18, %20, %7, %3
  %51 = phi i32 [ 0, %3 ], [ 1, %7 ], [ 0, %20 ], [ 0, %18 ], [ 1, %23 ], [ 0, %34 ], [ 0, %27 ], [ %49, %42 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_valid_class(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !294 !PGOFuncName !630 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !305
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
  %22 = load i64, ptr %18, align 8, !tbaa !445
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
  %31 = load i64, ptr %18, align 8, !tbaa !445
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
  br i1 %43, label %19, label %44, !llvm.loop !631

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %44
  %47 = trunc i64 %13 to i32
  %48 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %47, i32 noundef %7) #24
  %49 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %13
  %50 = load i32, ptr %49, align 4, !tbaa !305
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
  br i1 %67, label %68, label %12, !llvm.loop !632

68:                                               ; preds = %62
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #24
  br label %71

71:                                               ; preds = %68, %70
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !633 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %11, label %6, !prof !634

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !305
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %17, !prof !634

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i64 [ %16, %11 ], [ %7, %6 ]
  %19 = phi i32 [ %14, %11 ], [ %3, %6 ]
  %20 = phi ptr [ %13, %11 ], [ %0, %6 ]
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %22 = load i32, ptr %21, align 4, !tbaa !305
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %104, label %24, !prof !634

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !305
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %104, label %31, !prof !635

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
  ], !prof !636

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !300
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !401
  br label %104

41:                                               ; preds = %33
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #25
  %43 = icmp slt i32 %42, 53
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = lshr i32 %36, 16
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load i32, ptr %47, align 8, !tbaa !300
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
  br i1 %63, label %64, label %78, !prof !637

64:                                               ; preds = %61
  %65 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %66 = zext nneg i32 %62 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !301
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70, !prof !638

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !401
  br label %104

72:                                               ; preds = %64
  %73 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %74 = getelementptr inbounds ptr, ptr %73, i64 %66
  %75 = load ptr, ptr %74, align 8, !tbaa !301
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
  %84 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1) #25, !range !401
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
  %95 = load ptr, ptr %94, align 8, !tbaa !300
  br label %89, !llvm.loop !639

96:                                               ; preds = %89
  %97 = tail call i32 @rtx_equal_p(ptr noundef nonnull %20, ptr noundef nonnull %90) #24
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !300
  %102 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %20, ptr noundef %101) #25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %112, %96, %99, %77, %72, %17, %24, %85, %83, %78, %70, %56, %39, %89, %117, %106
  %105 = phi i32 [ %111, %106 ], [ %122, %117 ], [ %40, %39 ], [ %60, %56 ], [ %71, %70 ], [ %82, %78 ], [ %84, %83 ], [ %86, %85 ], [ 0, %24 ], [ 0, %17 ], [ 0, %72 ], [ 0, %77 ], [ 1, %99 ], [ 1, %96 ], [ 1, %112 ], [ 0, %89 ]
  ret i32 %105

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !300
  %109 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %20, ptr noundef %108) #25
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  br label %104

112:                                              ; preds = %89
  %113 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !300
  %115 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %114, ptr noundef nonnull %90) #25
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %104

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !300
  %120 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %119, ptr noundef nonnull %90) #25
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  br label %104
}

; Function Attrs: optsize
declare i32 @ix86_preferred_output_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @in_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !prof !640 !PGOFuncName !641 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8, !prof !642

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #25
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %2, %8 ], [ %12, %14 ]
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %14, label %19, !prof !643

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %0
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !prof !644, !llvm.loop !645

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 0, %3 ], [ 1, %10 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_reusable_reload(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !368 !PGOFuncName !646 {
  %7 = load ptr, ptr %0, align 8, !tbaa !301
  %8 = tail call i32 @earlyclobber_operand_p(ptr noundef %1) #25, !range !401
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %11 = icmp sgt i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %15, label %319, !prof !647

13:                                               ; preds = %172
  %14 = icmp sgt i32 %174, 0
  br i1 %14, label %177, label %319, !prof !648

15:                                               ; preds = %6, %172
  %16 = phi i64 [ %173, %172 ], [ 0, %6 ]
  %17 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16
  %18 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !459
  %20 = tail call i32 @reg_class_subset_p(i32 noundef %2, i32 noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26, !prof !649

22:                                               ; preds = %15
  %23 = load i32, ptr %18, align 8, !tbaa !459
  %24 = tail call i32 @reg_class_subset_p(i32 noundef %23, i32 noundef %2) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %172, label %26, !prof !650

26:                                               ; preds = %22, %15
  %27 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30, !prof !651

30:                                               ; preds = %26
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !445
  %34 = tail call i32 @true_regnum(ptr noundef nonnull %28) #24
  %35 = zext nneg i32 %34 to i64
  %36 = shl nuw i64 1, %35
  %37 = and i64 %36, %33
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %172, label %39, !prof !652

39:                                               ; preds = %30, %26
  %40 = icmp eq ptr %7, null
  %41 = icmp eq ptr %1, null
  br i1 %40, label %95, label %42, !prof !653

42:                                               ; preds = %39
  %43 = load ptr, ptr %17, align 8, !tbaa !456
  %44 = icmp eq ptr %43, %7
  br i1 %44, label %67, label %45, !prof !654

45:                                               ; preds = %42
  %46 = icmp eq ptr %43, null
  br i1 %46, label %95, label %47, !prof !655

47:                                               ; preds = %45
  %48 = load i32, ptr %43, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 37
  br i1 %50, label %51, label %59, !prof !656

51:                                               ; preds = %47
  %52 = load i32, ptr %7, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %95, !prof !657

55:                                               ; preds = %51
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #25
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %95, !prof !658

59:                                               ; preds = %47
  %60 = tail call i32 @rtx_equal_p(ptr noundef nonnull %43, ptr noundef nonnull %7) #24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %95, label %62, !prof !659

62:                                               ; preds = %59
  %63 = load ptr, ptr %17, align 8, !tbaa !456
  %64 = tail call i32 @side_effects_p(ptr noundef %63) #24
  %65 = or i32 %64, %5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %95, !prof !660

67:                                               ; preds = %55, %42
  %68 = icmp eq i32 %5, 0
  br i1 %68, label %69, label %95, !prof !661

69:                                               ; preds = %62, %67
  br i1 %41, label %146, label %70, !prof !661

70:                                               ; preds = %69
  %71 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !458
  %73 = icmp eq ptr %72, null
  %74 = icmp eq ptr %72, %1
  %75 = or i1 %73, %74
  br i1 %75, label %146, label %76

76:                                               ; preds = %70
  %77 = load i32, ptr %72, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 37
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, ptr %1, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 37
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %72) #25
  %86 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %146, label %96

88:                                               ; preds = %76
  %89 = tail call i32 @rtx_equal_p(ptr noundef nonnull %72, ptr noundef nonnull %1) #24
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %71, align 8, !tbaa !458
  %93 = tail call i32 @side_effects_p(ptr noundef %92) #24
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %146, label %96

95:                                               ; preds = %67, %62, %59, %55, %51, %45, %39
  br i1 %41, label %172, label %96, !prof !662

96:                                               ; preds = %80, %84, %88, %91, %95
  %97 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !458
  %99 = icmp eq ptr %98, %1
  br i1 %99, label %121, label %100, !prof !663

100:                                              ; preds = %96
  %101 = icmp eq ptr %98, null
  br i1 %101, label %172, label %102, !prof !664

102:                                              ; preds = %100
  %103 = load i32, ptr %98, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 37
  br i1 %105, label %106, label %114, !prof !665

106:                                              ; preds = %102
  %107 = load i32, ptr %1, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 37
  br i1 %109, label %110, label %172, !prof !665

110:                                              ; preds = %106
  %111 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %98) #25
  %112 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #25
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %121, label %172

114:                                              ; preds = %102
  %115 = tail call i32 @rtx_equal_p(ptr noundef nonnull %98, ptr noundef nonnull %1) #24
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %172, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %97, align 8, !tbaa !458
  %119 = tail call i32 @side_effects_p(ptr noundef %118) #24
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %172

121:                                              ; preds = %117, %110, %96
  br i1 %40, label %146, label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr %17, align 8, !tbaa !456
  %124 = icmp eq ptr %123, null
  %125 = icmp eq ptr %123, %7
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %146, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %123, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 37
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i32, ptr %7, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 37
  br i1 %134, label %135, label %172

135:                                              ; preds = %131
  %136 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %123) #25
  %137 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %146, label %172

139:                                              ; preds = %127
  %140 = tail call i32 @rtx_equal_p(ptr noundef nonnull %123, ptr noundef nonnull %7) #24
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %172, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %17, align 8, !tbaa !456
  %144 = tail call i32 @side_effects_p(ptr noundef %143) #24
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %142, %135, %122, %121, %91, %84, %70, %69
  %147 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !458
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150, !prof !666

150:                                              ; preds = %146
  %151 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %148) #25, !range !401
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %172, !prof !667

153:                                              ; preds = %150, %146
  %154 = icmp eq i32 %3, 9
  br i1 %154, label %317, label %155, !prof !668

155:                                              ; preds = %153
  %156 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 17
  %157 = load i32, ptr %156, align 4, !tbaa !467
  %158 = icmp eq i32 %157, 9
  br i1 %158, label %317, label %159, !prof !669

159:                                              ; preds = %155
  %160 = icmp eq i32 %157, %3
  br i1 %160, label %161, label %165, !prof !670

161:                                              ; preds = %159
  %162 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %16, i32 12
  %163 = load i32, ptr %162, align 8, !tbaa !466
  %164 = icmp eq i32 %163, %4
  br i1 %164, label %317, label %165, !prof !671

165:                                              ; preds = %161, %159
  switch i32 %3, label %172 [
    i32 0, label %166
    i32 7, label %168
    i32 10, label %170
  ], !prof !672

166:                                              ; preds = %165
  %167 = icmp eq i32 %157, 0
  br i1 %167, label %317, label %172, !prof !673

168:                                              ; preds = %165
  %169 = icmp eq i32 %157, 7
  br i1 %169, label %317, label %172

170:                                              ; preds = %165
  %171 = icmp eq i32 %157, 10
  br i1 %171, label %317, label %172

172:                                              ; preds = %168, %166, %165, %22, %30, %95, %100, %106, %110, %114, %117, %131, %135, %139, %142, %150, %170
  %173 = add nuw nsw i64 %16, 1
  %174 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %15, label %13, !prof !674, !llvm.loop !675

177:                                              ; preds = %13, %312
  %178 = phi i64 [ %313, %312 ], [ 0, %13 ]
  %179 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178
  %180 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 2
  %181 = load i32, ptr %180, align 8, !tbaa !459
  %182 = tail call i32 @reg_class_subset_p(i32 noundef %2, i32 noundef %181) #24
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188, !prof !676

184:                                              ; preds = %177
  %185 = load i32, ptr %180, align 8, !tbaa !459
  %186 = tail call i32 @reg_class_subset_p(i32 noundef %185, i32 noundef %2) #24
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %312, label %188, !prof !677

188:                                              ; preds = %184, %177
  %189 = icmp eq ptr %1, null
  %190 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 11
  %191 = load ptr, ptr %190, align 8, !tbaa !462
  %192 = icmp eq ptr %191, null
  br i1 %192, label %203, label %193, !prof !678

193:                                              ; preds = %188
  %194 = sext i32 %2 to i64
  %195 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !445
  %197 = tail call i32 @true_regnum(ptr noundef nonnull %191) #24
  %198 = zext nneg i32 %197 to i64
  %199 = shl nuw i64 1, %198
  %200 = and i64 %199, %196
  %201 = icmp ne i64 %200, 0
  %202 = and i1 %189, %201
  br i1 %202, label %204, label %312, !prof !679

203:                                              ; preds = %188
  br i1 %189, label %204, label %312, !prof !680

204:                                              ; preds = %193, %203
  %205 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !458
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %312, !prof !681

208:                                              ; preds = %204
  %209 = load ptr, ptr %179, align 8, !tbaa !456
  %210 = icmp eq ptr %209, null
  br i1 %210, label %312, label %211, !prof !682

211:                                              ; preds = %208
  %212 = load i32, ptr %7, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 37
  br i1 %214, label %215, label %247, !prof !683

215:                                              ; preds = %211
  %216 = load i32, ptr %209, align 8
  %217 = and i32 %216, 65535
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !305
  %221 = icmp eq i32 %220, 12
  br i1 %221, label %222, label %247, !prof !684

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.rtx_def, ptr %209, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !300
  %225 = icmp eq ptr %224, %7
  br i1 %225, label %280, label %226

226:                                              ; preds = %222
  %227 = icmp eq ptr %224, null
  br i1 %227, label %247, label %228

228:                                              ; preds = %226
  %229 = load i32, ptr %224, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 37
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %224) #25
  %234 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #25
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %280, label %247

236:                                              ; preds = %228
  %237 = tail call i32 @rtx_equal_p(ptr noundef nonnull %224, ptr noundef nonnull %7) #24
  %238 = icmp eq i32 %237, 0
  %239 = load ptr, ptr %179, align 8, !tbaa !456
  br i1 %238, label %247, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !300
  %243 = tail call i32 @side_effects_p(ptr noundef %242) #24
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %280, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr %179, align 8, !tbaa !456
  br label %247

247:                                              ; preds = %245, %236, %232, %226, %215, %211
  %248 = phi ptr [ %246, %245 ], [ %239, %236 ], [ %209, %232 ], [ %209, %226 ], [ %209, %215 ], [ %209, %211 ]
  %249 = load i32, ptr %248, align 8
  %250 = and i32 %249, 65535
  %251 = icmp eq i32 %250, 37
  br i1 %251, label %252, label %312, !prof !685

252:                                              ; preds = %247
  %253 = load i32, ptr %7, align 8
  %254 = and i32 %253, 65535
  %255 = zext nneg i32 %254 to i64
  %256 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !305
  %258 = icmp eq i32 %257, 12
  br i1 %258, label %259, label %312, !prof !686

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !300
  %262 = icmp eq ptr %261, %248
  br i1 %262, label %280, label %263

263:                                              ; preds = %259
  %264 = icmp eq ptr %261, null
  br i1 %264, label %312, label %265

265:                                              ; preds = %263
  %266 = load i32, ptr %261, align 8
  %267 = and i32 %266, 65535
  %268 = icmp eq i32 %267, 37
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %261) #25
  %271 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %248) #25
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %280, label %312

273:                                              ; preds = %265
  %274 = tail call i32 @rtx_equal_p(ptr noundef nonnull %261, ptr noundef nonnull %248) #24
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %312, label %276

276:                                              ; preds = %273
  %277 = load ptr, ptr %260, align 8, !tbaa !300
  %278 = tail call i32 @side_effects_p(ptr noundef %277) #24
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %312

280:                                              ; preds = %276, %269, %259, %240, %232, %222
  %281 = load ptr, ptr %205, align 8, !tbaa !458
  %282 = icmp eq ptr %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %281) #25, !range !401
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %312

286:                                              ; preds = %283, %280
  %287 = icmp eq i32 %3, 9
  br i1 %287, label %305, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 17
  %290 = load i32, ptr %289, align 4, !tbaa !467
  %291 = icmp eq i32 %290, 9
  br i1 %291, label %305, label %292

292:                                              ; preds = %288
  %293 = icmp eq i32 %290, %3
  br i1 %293, label %294, label %298

294:                                              ; preds = %292
  %295 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %178, i32 12
  %296 = load i32, ptr %295, align 8, !tbaa !466
  %297 = icmp eq i32 %296, %4
  br i1 %297, label %305, label %298

298:                                              ; preds = %294, %292
  switch i32 %3, label %312 [
    i32 0, label %299
    i32 7, label %301
    i32 10, label %303
  ]

299:                                              ; preds = %298
  %300 = icmp eq i32 %290, 0
  br i1 %300, label %305, label %312

301:                                              ; preds = %298
  %302 = icmp eq i32 %290, 7
  br i1 %302, label %305, label %312

303:                                              ; preds = %298
  %304 = icmp eq i32 %290, 10
  br i1 %304, label %305, label %312

305:                                              ; preds = %303, %301, %299, %294, %288, %286
  %306 = trunc i64 %178 to i32
  %307 = load i32, ptr %7, align 8
  %308 = and i32 %307, 65535
  %309 = icmp eq i32 %308, 37
  br i1 %309, label %310, label %319

310:                                              ; preds = %305
  %311 = load ptr, ptr %179, align 8, !tbaa !456
  store ptr %311, ptr %0, align 8, !tbaa !301
  br label %319

312:                                              ; preds = %301, %299, %298, %184, %193, %203, %204, %208, %247, %252, %263, %269, %273, %276, %283, %303
  %313 = add nuw nsw i64 %178, 1
  %314 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %315 = sext i32 %314 to i64
  %316 = icmp slt i64 %313, %315
  br i1 %316, label %177, label %319, !prof !687, !llvm.loop !688

317:                                              ; preds = %170, %168, %166, %161, %155, %153
  %318 = trunc i64 %16 to i32
  br label %319

319:                                              ; preds = %312, %6, %317, %13, %305, %310
  %320 = phi i32 [ %306, %310 ], [ %306, %305 ], [ %174, %13 ], [ %318, %317 ], [ %10, %6 ], [ %314, %312 ]
  ret i32 %320
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @push_secondary_reload(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr noundef %8) unnamed_addr #0 !prof !689 !PGOFuncName !690 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  store i32 2956, ptr %10, align 4, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  %12 = add i32 %6, -3
  %13 = icmp ult i32 %12, 4
  %14 = icmp eq i32 %0, 0
  %15 = select i1 %14, i32 5, i32 3
  %16 = select i1 %13, i32 %6, i32 %15, !prof !691
  store i32 2956, ptr %7, align 4, !tbaa !305
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %36, !prof !692

20:                                               ; preds = %9
  %21 = lshr i32 %17, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !300
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !300
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !300
  %34 = icmp ugt i8 %25, %33
  br i1 %34, label %35, label %36, !prof !693

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %20, %9
  %37 = phi i32 [ %28, %35 ], [ %17, %20 ], [ %17, %9 ]
  %38 = phi i32 [ %30, %35 ], [ %5, %20 ], [ %5, %9 ]
  %39 = phi ptr [ %27, %35 ], [ %1, %20 ], [ %1, %9 ]
  %40 = and i32 %37, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %52, !prof !694

42:                                               ; preds = %36
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %39) #25
  %44 = icmp ugt i32 %43, 52
  br i1 %44, label %45, label %52, !prof !695

45:                                               ; preds = %42
  %46 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %47 = zext i32 %43 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !301
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr %39, ptr %49, !prof !696
  br label %52

52:                                               ; preds = %45, %42, %36
  %53 = phi ptr [ %39, %42 ], [ %39, %36 ], [ %51, %45 ]
  store i32 2956, ptr %11, align 8, !tbaa !273
  %54 = getelementptr inbounds %struct.secondary_reload_info, ptr %11, i64 0, i32 2
  store ptr %8, ptr %54, align 8, !tbaa !279
  %55 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !280
  %56 = trunc i32 %0 to i8
  %57 = call i32 %55(i8 noundef zeroext %56, ptr noundef nonnull %53, i32 noundef %4, i32 noundef %38, ptr noundef nonnull %11) #24
  %58 = load i32, ptr %11, align 8, !tbaa !273
  %59 = icmp eq i32 %57, 0
  %60 = icmp eq i32 %58, 2956
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %262, label %62, !prof !697

62:                                               ; preds = %52
  br i1 %59, label %65, label %63, !prof !698

63:                                               ; preds = %62
  %64 = call fastcc i32 @push_secondary_reload(i32 noundef %0, ptr noundef nonnull %53, i32 noundef %2, i32 noundef %3, i32 noundef %57, i32 noundef %38, i32 noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ %64, %63 ], [ -1, %62 ]
  %67 = icmp ne i32 %58, 2956
  br i1 %67, label %68, label %100, !prof !698

68:                                               ; preds = %65
  %69 = sext i32 %58 to i64
  %70 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %69, i32 4
  %71 = load i8, ptr %70, align 8, !tbaa !295
  %72 = icmp eq i8 %71, 3
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 391, ptr noundef nonnull @.str.1) #24
  br label %74

74:                                               ; preds = %68, %73
  br i1 %59, label %76, label %75

75:                                               ; preds = %74
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 397, ptr noundef nonnull @.str.1) #24
  br label %76

76:                                               ; preds = %74, %75
  %77 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %69, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !297
  %79 = getelementptr inbounds %struct.insn_operand_data, ptr %78, i64 2, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !298
  %81 = load i8, ptr %80, align 1, !tbaa !300
  %82 = icmp eq i8 %81, 61
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #24
  br label %84

84:                                               ; preds = %76, %83
  %85 = getelementptr inbounds i8, ptr %80, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !300
  %87 = icmp eq i8 %86, 38
  %88 = getelementptr inbounds i8, ptr %80, i64 2
  %89 = select i1 %87, ptr %88, ptr %85
  %90 = load i8, ptr %89, align 1, !tbaa !300
  %91 = icmp eq i8 %90, 114
  br i1 %91, label %95, label %92

92:                                               ; preds = %84
  %93 = call i32 @lookup_constraint(ptr noundef nonnull %89) #24
  %94 = call i32 @regclass_for_constraint(i32 noundef %93) #24
  br label %95

95:                                               ; preds = %84, %92
  %96 = phi i32 [ %94, %92 ], [ 13, %84 ]
  %97 = getelementptr inbounds %struct.insn_operand_data, ptr %78, i64 2, i32 2
  %98 = load i16, ptr %97, align 8
  %99 = zext i16 %98 to i32
  br label %100

100:                                              ; preds = %95, %65
  %101 = phi i32 [ %96, %95 ], [ %57, %65 ]
  %102 = phi i32 [ %99, %95 ], [ %5, %65 ]
  %103 = icmp ne i32 %0, 0
  br i1 %103, label %104, label %111, !prof !698

104:                                              ; preds = %100
  %105 = icmp ne i32 %101, %4
  %106 = or i1 %67, %105
  %107 = load i32, ptr %10, align 4
  %108 = icmp ne i32 %107, 2956
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 428, ptr noundef nonnull @.str.1) #24
  br label %111

111:                                              ; preds = %100, %104, %110
  %112 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %208, !prof !699

114:                                              ; preds = %111
  %115 = load i32, ptr %10, align 4
  br label %116

116:                                              ; preds = %114, %201
  %117 = phi i64 [ 0, %114 ], [ %202, %201 ]
  %118 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 18
  %119 = load i8, ptr %118, align 8
  %120 = and i8 %119, 4
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %201, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !459
  %125 = call i32 @reg_class_subset_p(i32 noundef %101, i32 noundef %124) #24
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, ptr %123, align 8, !tbaa !459
  %129 = call i32 @reg_class_subset_p(i32 noundef %128, i32 noundef %101) #24
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %201, label %131

131:                                              ; preds = %127, %122
  br i1 %103, label %132, label %136

132:                                              ; preds = %131
  %133 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !460
  %135 = icmp eq i32 %134, %102
  br i1 %135, label %140, label %201

136:                                              ; preds = %131
  %137 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 4
  %138 = load i32, ptr %137, align 8, !tbaa !461
  %139 = icmp eq i32 %138, %102
  br i1 %139, label %144, label %201

140:                                              ; preds = %132
  %141 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 13
  %142 = load i32, ptr %141, align 4, !tbaa !468
  %143 = icmp eq i32 %142, %66
  br i1 %143, label %148, label %201

144:                                              ; preds = %136
  %145 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 14
  %146 = load i32, ptr %145, align 8, !tbaa !469
  %147 = icmp eq i32 %146, %66
  br i1 %147, label %152, label %201

148:                                              ; preds = %140
  %149 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 15
  %150 = load i32, ptr %149, align 4, !tbaa !470
  %151 = icmp eq i32 %150, %115
  br i1 %151, label %156, label %201

152:                                              ; preds = %144
  %153 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 16
  %154 = load i32, ptr %153, align 8, !tbaa !471
  %155 = icmp eq i32 %154, %115
  br i1 %155, label %156, label %201

156:                                              ; preds = %148, %152
  %157 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 17
  %158 = load i32, ptr %157, align 4, !tbaa !467
  %159 = icmp eq i32 %158, 9
  br i1 %159, label %173, label %160

160:                                              ; preds = %156
  %161 = icmp eq i32 %16, %158
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 12
  %164 = load i32, ptr %163, align 8, !tbaa !466
  %165 = icmp eq i32 %164, %2
  br i1 %165, label %173, label %166

166:                                              ; preds = %162, %160
  switch i32 %16, label %201 [
    i32 0, label %167
    i32 7, label %169
    i32 10, label %171
  ]

167:                                              ; preds = %166
  %168 = icmp eq i32 %158, 0
  br i1 %168, label %173, label %201

169:                                              ; preds = %166
  %170 = icmp eq i32 %158, 7
  br i1 %170, label %173, label %201

171:                                              ; preds = %166
  %172 = icmp eq i32 %158, 10
  br i1 %172, label %173, label %201

173:                                              ; preds = %171, %169, %167, %162, %156
  %174 = trunc i64 %117 to i32
  br i1 %103, label %175, label %177

175:                                              ; preds = %173
  %176 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 3
  store i32 %102, ptr %176, align 4, !tbaa !460
  br label %179

177:                                              ; preds = %173
  %178 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 4
  store i32 %102, ptr %178, align 8, !tbaa !461
  br label %179

179:                                              ; preds = %175, %177
  %180 = load i32, ptr %123, align 8, !tbaa !459
  %181 = call i32 @reg_class_subset_p(i32 noundef %101, i32 noundef %180) #24
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  store i32 %101, ptr %123, align 8, !tbaa !459
  br label %184

184:                                              ; preds = %183, %179
  %185 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 12
  %186 = load i32, ptr %185, align 8, !tbaa !466
  %187 = freeze i32 %186
  %188 = call i32 @llvm.smin.i32(i32 %187, i32 %2)
  store i32 %188, ptr %185, align 8, !tbaa !466
  %189 = load i8, ptr %118, align 8
  %190 = trunc i32 %3 to i8
  %191 = or i8 %190, -6
  %192 = and i8 %189, %191
  %193 = or i8 %192, 4
  store i8 %193, ptr %118, align 8
  %194 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %117, i32 17
  %195 = load i32, ptr %194, align 4, !tbaa !467
  %196 = icmp eq i32 %16, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %184
  %198 = icmp slt i32 %187, %2
  br i1 %198, label %199, label %208

199:                                              ; preds = %197
  switch i32 %16, label %200 [
    i32 10, label %208
    i32 7, label %208
    i32 0, label %208
  ]

200:                                              ; preds = %199, %184
  store i32 9, ptr %194, align 4, !tbaa !467
  br label %208

201:                                              ; preds = %169, %167, %148, %140, %132, %166, %116, %127, %136, %144, %152, %171
  %202 = add nuw nsw i64 %117, 1
  %203 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %204 = sext i32 %203 to i64
  %205 = icmp slt i64 %202, %204
  br i1 %205, label %116, label %206, !prof !700, !llvm.loop !701

206:                                              ; preds = %201
  %207 = trunc i64 %202 to i32
  br label %208

208:                                              ; preds = %206, %111, %199, %199, %199, %197, %200
  %209 = phi i32 [ %174, %199 ], [ %174, %199 ], [ %174, %199 ], [ %174, %197 ], [ %174, %200 ], [ 0, %111 ], [ %207, %206 ]
  %210 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %260, !prof !702

212:                                              ; preds = %208
  %213 = select i1 %103, i1 %60, i1 false
  br i1 %213, label %214, label %222, !prof !703

214:                                              ; preds = %212
  %215 = call i32 @ix86_secondary_memory_needed(i32 noundef %101, i32 noundef %4, i32 noundef %102, i32 noundef 1) #24
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32, ptr @n_reloads, align 4, !tbaa !305
  br label %222

219:                                              ; preds = %214
  %220 = call ptr @get_secondary_mem(ptr poison, i32 noundef %38, i32 noundef %2, i32 noundef %6) #25
  %221 = load i32, ptr @n_reloads, align 4, !tbaa !305
  br label %222

222:                                              ; preds = %217, %219, %212
  %223 = phi i32 [ %221, %219 ], [ %218, %217 ], [ %209, %212 ]
  %224 = phi i32 [ %221, %219 ], [ %209, %217 ], [ %209, %212 ]
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225
  %227 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %226, i8 0, i64 16, i1 false)
  store i32 %101, ptr %227, align 8, !tbaa !459
  %228 = select i1 %103, i32 %102, i32 0, !prof !698
  %229 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 3
  store i32 %228, ptr %229, align 4, !tbaa !460
  %230 = select i1 %103, i32 0, i32 %102, !prof !698
  %231 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 4
  store i32 %230, ptr %231, align 8, !tbaa !461
  %232 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 11
  store ptr null, ptr %232, align 8, !tbaa !462
  %233 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 18
  %234 = trunc i32 %3 to i8
  %235 = load i8, ptr %233, align 8
  %236 = and i8 %234, 1
  %237 = and i8 %235, -8
  %238 = or disjoint i8 %237, %236
  %239 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 7
  store i32 0, ptr %239, align 4, !tbaa !463
  %240 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 8
  %241 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %240, i8 0, i64 16, i1 false)
  store i32 %2, ptr %241, align 8, !tbaa !466
  %242 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 17
  store i32 %16, ptr %242, align 4, !tbaa !467
  %243 = select i1 %103, i32 %66, i32 -1, !prof !698
  %244 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 13
  store i32 %243, ptr %244, align 4, !tbaa !468
  %245 = select i1 %103, i32 -1, i32 %66, !prof !698
  %246 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 14
  store i32 %245, ptr %246, align 8, !tbaa !469
  %247 = load i32, ptr %10, align 4
  %248 = select i1 %103, i32 %247, i32 2956, !prof !698
  %249 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 15
  store i32 %248, ptr %249, align 4, !tbaa !470
  %250 = select i1 %103, i32 2956, i32 %247, !prof !698
  %251 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %225, i32 16
  store i32 %250, ptr %251, align 8, !tbaa !471
  %252 = or disjoint i8 %238, 6
  store i8 %252, ptr %233, align 8
  %253 = add nsw i32 %223, 1
  store i32 %253, ptr @n_reloads, align 4, !tbaa !305
  %254 = select i1 %14, i1 %60, i1 false
  br i1 %254, label %255, label %260, !prof !704

255:                                              ; preds = %222
  %256 = call i32 @ix86_secondary_memory_needed(i32 noundef %4, i32 noundef %101, i32 noundef %102, i32 noundef 1) #24
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258, !prof !702

258:                                              ; preds = %255
  %259 = call ptr @get_secondary_mem(ptr poison, i32 noundef %102, i32 noundef %2, i32 noundef %6) #25
  br label %260

260:                                              ; preds = %222, %255, %258, %208
  %261 = phi i32 [ %224, %258 ], [ %224, %255 ], [ %224, %222 ], [ %209, %208 ]
  store i32 %58, ptr %7, align 4, !tbaa !305
  br label %262

262:                                              ; preds = %52, %260
  %263 = phi i32 [ %261, %260 ], [ -1, %52 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  ret i32 %263
}

; Function Attrs: optsize
declare i32 @reg_or_subregno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_secondary_memory_needed(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @remove_address_replacements(ptr noundef %0) local_unnamed_addr #0 !prof !705 {
  %2 = alloca [180 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) %2, i8 0, i64 180, i1 false)
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %29, !prof !706

5:                                                ; preds = %1, %16
  %6 = phi i64 [ %25, %16 ], [ 0, %1 ]
  %7 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %8 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !491
  %10 = tail call i32 @loc_mentioned_in_p(ptr noundef %9, ptr noundef %0) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !707

12:                                               ; preds = %5
  %13 = add nsw i32 %7, 1
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !708
  br label %16

16:                                               ; preds = %5, %12
  %17 = phi i8 [ 2, %12 ], [ 1, %5 ]
  %18 = phi i32 [ %13, %12 ], [ %7, %5 ]
  %19 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !488
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [180 x i8], ptr %2, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !300
  %24 = or i8 %23, %17
  store i8 %24, ptr %22, align 1, !tbaa !300
  %25 = add nuw nsw i64 %6, 1
  %26 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %5, label %29, !prof !709, !llvm.loop !710

29:                                               ; preds = %16, %1
  %30 = phi i32 [ 0, %1 ], [ %18, %16 ]
  store i32 %30, ptr @n_replacements, align 4, !tbaa !305
  %31 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50, !prof !706

33:                                               ; preds = %29
  %34 = zext nneg i32 %31 to i64
  br label %35

35:                                               ; preds = %33, %47
  %36 = phi i64 [ %34, %33 ], [ %38, %47 ]
  %37 = phi i32 [ 0, %33 ], [ %48, %47 ]
  %38 = add nsw i64 %36, -1
  %39 = getelementptr inbounds [180 x i8], ptr %2, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !300
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %47, !prof !711

42:                                               ; preds = %35
  %43 = trunc i64 %38 to i32
  tail call void @deallocate_reload_reg(i32 noundef %43) #24
  %44 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %38
  %45 = load ptr, ptr %44, align 8, !tbaa !456
  %46 = tail call i32 @remove_address_replacements(ptr noundef %45) #25, !range !401
  store ptr null, ptr %44, align 8, !tbaa !456
  br label %47

47:                                               ; preds = %35, %42
  %48 = phi i32 [ 1, %42 ], [ %37, %35 ]
  %49 = icmp ugt i64 %36, 1
  br i1 %49, label %35, label %50, !prof !712, !llvm.loop !713

50:                                               ; preds = %47, %29
  %51 = phi i32 [ 0, %29 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %2) #23
  ret i32 %51
}

; Function Attrs: optsize
declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_dummy_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !prof !714 !PGOFuncName !715 {
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !300
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !300
  %16 = icmp eq i8 %12, %15
  br i1 %16, label %21, label %17, !prof !716

17:                                               ; preds = %9
  %18 = icmp ugt i8 %12, 4
  %19 = icmp ugt i8 %15, 4
  %20 = or i1 %18, %19
  br i1 %20, label %267, label %21, !prof !717

21:                                               ; preds = %17, %9
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %31, label %25, !prof !718

25:                                               ; preds = %40, %55, %21
  %26 = phi i32 [ 0, %21 ], [ %34, %40 ], [ %59, %55 ]
  %27 = phi ptr [ %1, %21 ], [ %36, %40 ], [ %58, %55 ]
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 39
  br i1 %30, label %61, label %91, !prof !719

31:                                               ; preds = %21, %55
  %32 = phi i32 [ %57, %55 ], [ %22, %21 ]
  %33 = phi ptr [ %58, %55 ], [ %1, %21 ]
  %34 = phi i32 [ %59, %55 ], [ 0, %21 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !300
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %55, !prof !720

40:                                               ; preds = %31
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #25
  %42 = icmp ult i32 %41, 53
  br i1 %42, label %43, label %25, !prof !721

43:                                               ; preds = %40
  %44 = lshr i32 %37, 16
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load i32, ptr %46, align 8, !tbaa !300
  %48 = lshr i32 %32, 16
  %49 = and i32 %48, 255
  %50 = tail call i32 @subreg_regno_offset(i32 noundef %41, i32 noundef %45, i32 noundef %47, i32 noundef %49) #24
  %51 = add i32 %50, %34
  %52 = load ptr, ptr %35, align 8, !tbaa !300
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  br label %55

55:                                               ; preds = %43, %31
  %56 = phi i32 [ %54, %43 ], [ %38, %31 ]
  %57 = phi i32 [ %53, %43 ], [ %37, %31 ]
  %58 = phi ptr [ %52, %43 ], [ %36, %31 ]
  %59 = phi i32 [ %51, %43 ], [ %34, %31 ]
  %60 = icmp eq i32 %56, 39
  br i1 %60, label %31, label %25, !prof !722, !llvm.loop !723

61:                                               ; preds = %25, %85
  %62 = phi i32 [ %87, %85 ], [ %28, %25 ]
  %63 = phi ptr [ %88, %85 ], [ %0, %25 ]
  %64 = phi i32 [ %89, %85 ], [ 0, %25 ]
  %65 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !300
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %85, !prof !724

70:                                               ; preds = %61
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %91, !prof !725

73:                                               ; preds = %70
  %74 = lshr i32 %67, 16
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load i32, ptr %76, align 8, !tbaa !300
  %78 = lshr i32 %62, 16
  %79 = and i32 %78, 255
  %80 = tail call i32 @subreg_regno_offset(i32 noundef %71, i32 noundef %75, i32 noundef %77, i32 noundef %79) #24
  %81 = add i32 %80, %64
  %82 = load ptr, ptr %65, align 8, !tbaa !300
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  br label %85

85:                                               ; preds = %73, %61
  %86 = phi i32 [ %84, %73 ], [ %68, %61 ]
  %87 = phi i32 [ %83, %73 ], [ %67, %61 ]
  %88 = phi ptr [ %82, %73 ], [ %66, %61 ]
  %89 = phi i32 [ %81, %73 ], [ %64, %61 ]
  %90 = icmp eq i32 %86, 39
  br i1 %90, label %61, label %91, !prof !722, !llvm.loop !726

91:                                               ; preds = %70, %85, %25
  %92 = phi i32 [ 0, %25 ], [ %64, %70 ], [ %89, %85 ]
  %93 = phi ptr [ %0, %25 ], [ %66, %70 ], [ %88, %85 ]
  %94 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %93, i32 noundef %6) #24
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 %6, i32 %94, !prof !727
  %97 = load i32, ptr %27, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %151, !prof !728

100:                                              ; preds = %91
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #25
  %102 = icmp ult i32 %101, 53
  br i1 %102, label %103, label %151, !prof !729

103:                                              ; preds = %100
  %104 = add i32 %101, %26
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %105, i64 %10
  %107 = load i8, ptr %106, align 1, !tbaa !300
  %108 = zext i8 %107 to i32
  %109 = load ptr, ptr %2, align 8, !tbaa !301
  %110 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !301
  store ptr %110, ptr %2, align 8, !tbaa !301
  %111 = icmp ult i32 %104, 53
  br i1 %111, label %112, label %149, !prof !730

112:                                              ; preds = %103
  %113 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %104, i32 noundef %5) #24
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %149, label %115, !prof !731

115:                                              ; preds = %112
  %116 = add nuw nsw i32 %104, %108
  %117 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !300
  %120 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %104, i32 noundef %116, ptr noundef %119, ptr noundef %3) #25
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %149, !prof !732

122:                                              ; preds = %115
  %123 = icmp eq i8 %107, 0
  br i1 %123, label %140, label %124, !prof !733

124:                                              ; preds = %122
  %125 = sext i32 %96 to i64
  %126 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !445
  %128 = zext i8 %107 to i64
  br label %129

129:                                              ; preds = %124, %135
  %130 = phi i64 [ 0, %124 ], [ %136, %135 ]
  %131 = add nuw nsw i64 %130, %105
  %132 = shl nuw i64 1, %131
  %133 = and i64 %127, %132
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %138, label %135, !prof !734

135:                                              ; preds = %129
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %143, label %129, !prof !735, !llvm.loop !736

138:                                              ; preds = %129
  %139 = trunc i64 %130 to i32
  br label %140

140:                                              ; preds = %138, %122
  %141 = phi i32 [ 0, %122 ], [ %139, %138 ]
  %142 = icmp eq i32 %141, %108
  br i1 %142, label %143, label %149, !prof !737

143:                                              ; preds = %135, %140
  %144 = load i32, ptr %1, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 37
  br i1 %146, label %149, label %147, !prof !738

147:                                              ; preds = %143
  %148 = tail call ptr @gen_rtx_REG(i32 noundef %5, i32 noundef %104) #24
  br label %149

149:                                              ; preds = %140, %147, %143, %115, %112, %103
  %150 = phi ptr [ null, %115 ], [ null, %112 ], [ null, %103 ], [ %148, %147 ], [ null, %140 ], [ %1, %143 ]
  store ptr %109, ptr %2, align 8, !tbaa !301
  br label %151

151:                                              ; preds = %149, %100, %91
  %152 = phi ptr [ %150, %149 ], [ null, %100 ], [ null, %91 ]
  %153 = load i32, ptr @hard_regs_live_known, align 4, !tbaa !305
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %267, label %155, !prof !739

155:                                              ; preds = %151
  %156 = load i32, ptr %93, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 37
  br i1 %158, label %159, label %267, !prof !740

159:                                              ; preds = %155
  %160 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %161 = icmp ult i32 %160, 53
  br i1 %161, label %162, label %267, !prof !741

162:                                              ; preds = %159
  %163 = icmp eq ptr %152, null
  br i1 %163, label %168, label %164, !prof !742

164:                                              ; preds = %162
  %165 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %166 = tail call ptr @find_reg_note(ptr noundef %165, i32 noundef 6, ptr noundef nonnull %1) #24
  %167 = icmp eq ptr %166, null
  br i1 %167, label %267, label %168, !prof !743

168:                                              ; preds = %164, %162
  %169 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %170 = tail call ptr @find_reg_note(ptr noundef %169, i32 noundef 1, ptr noundef nonnull %0) #24
  %171 = icmp eq ptr %170, null
  br i1 %171, label %267, label %172, !prof !744

172:                                              ; preds = %168
  %173 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !300
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %267, !prof !745

178:                                              ; preds = %172
  %179 = load i32, ptr %27, align 8
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 %5, i32 %181, !prof !746
  %184 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %173, i32 noundef %183) #24
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %267, label %186, !prof !746

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %188 = load i32, ptr %187, align 8, !tbaa !300
  %189 = icmp ult i32 %188, 53
  br i1 %189, label %212, label %190, !prof !746

190:                                              ; preds = %186
  %191 = load ptr, ptr @cfun, align 8, !tbaa !301
  %192 = getelementptr inbounds %struct.function, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !509
  %194 = load ptr, ptr %193, align 8, !tbaa !511
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %194, i64 0, i32 9
  %196 = load i32, ptr %195, align 8, !tbaa !513
  %197 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %196) #25
  %198 = getelementptr inbounds %struct.df_lr_bb_info, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !515
  %200 = tail call i32 @bitmap_bit_p(ptr noundef %199, i32 noundef %188) #24
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %267, !prof !745

202:                                              ; preds = %190
  %203 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %204 = zext i32 %203 to i64
  %205 = load i32, ptr %93, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %204, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !300
  %211 = icmp eq i8 %210, 1
  br i1 %211, label %212, label %267, !prof !747

212:                                              ; preds = %202, %186
  %213 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %93) #25
  %214 = add i32 %213, %92
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %215, i64 %13
  %217 = load i8, ptr %216, align 1, !tbaa !300
  %218 = zext i8 %217 to i32
  %219 = add i32 %214, %218
  %220 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %214, i32 noundef %219, ptr noundef nonnull %27, ptr noundef null) #25
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %267, !prof !748

222:                                              ; preds = %212
  %223 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !300
  %226 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %214, i32 noundef %219, ptr noundef %225) #25, !range !401
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %267, !prof !749

228:                                              ; preds = %222
  %229 = icmp eq i32 %8, 0
  br i1 %229, label %233, label %230, !prof !750

230:                                              ; preds = %228
  %231 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %214, i32 noundef %219, ptr noundef %225, ptr noundef %2) #25
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %267

233:                                              ; preds = %230, %228
  %234 = icmp eq i8 %217, 0
  br i1 %234, label %251, label %235, !prof !751

235:                                              ; preds = %233
  %236 = sext i32 %96 to i64
  %237 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8, !tbaa !445
  br label %239

239:                                              ; preds = %235, %247
  %240 = phi i64 [ 0, %235 ], [ %249, %247 ]
  %241 = trunc i64 %240 to i32
  %242 = add i32 %214, %241
  %243 = zext nneg i32 %242 to i64
  %244 = shl nuw i64 1, %243
  %245 = and i64 %238, %244
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %251, label %247, !prof !752

247:                                              ; preds = %239
  %248 = zext i8 %217 to i64
  %249 = add nuw nsw i64 %240, 1
  %250 = icmp eq i64 %249, %248
  br i1 %250, label %254, label %239, !prof !753, !llvm.loop !754

251:                                              ; preds = %239, %233
  %252 = phi i32 [ 0, %233 ], [ %241, %239 ]
  %253 = icmp eq i32 %252, %218
  br i1 %253, label %254, label %267, !prof !755

254:                                              ; preds = %247, %251
  %255 = icmp sgt i32 %7, -1
  %256 = icmp eq ptr %152, %1
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %258, label %261, !prof !756

258:                                              ; preds = %254
  %259 = zext nneg i32 %7 to i64
  %260 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %259, i32 1
  store ptr null, ptr %260, align 8, !tbaa !458
  br label %261

261:                                              ; preds = %258, %254
  %262 = load i32, ptr %0, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 37
  br i1 %264, label %267, label %265, !prof !757

265:                                              ; preds = %261
  %266 = tail call ptr @gen_rtx_REG(i32 noundef %4, i32 noundef %214) #24
  br label %267

267:                                              ; preds = %151, %155, %159, %164, %168, %172, %178, %190, %202, %251, %265, %261, %230, %222, %212, %17
  %268 = phi ptr [ null, %17 ], [ %152, %172 ], [ %152, %190 ], [ %152, %202 ], [ %152, %178 ], [ %152, %168 ], [ %152, %164 ], [ %152, %159 ], [ %152, %155 ], [ %152, %151 ], [ %152, %212 ], [ %152, %222 ], [ %152, %230 ], [ %266, %265 ], [ %152, %251 ], [ %0, %261 ]
  ret ptr %268
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @earlyclobber_operand_p(ptr noundef readnone %0) local_unnamed_addr #9 !prof !758 {
  %2 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !305
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %8, label %13, !prof !759

4:                                                ; preds = %8
  %5 = zext nneg i32 %2 to i64
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, %5
  br i1 %7, label %13, label %8, !prof !760, !llvm.loop !761

8:                                                ; preds = %1, %4
  %9 = phi i64 [ %6, %4 ], [ 0, %1 ]
  %10 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !301
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %4, !prof !762

13:                                               ; preds = %8, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 1, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_equiv_reg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !763 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %73, label %9, !prof !764

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %40 [
    i16 37, label %13
    i16 43, label %15
  ], !prof !765

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  br label %73

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !300
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %10, 134217728
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %714, !prof !766

21:                                               ; preds = %15
  %22 = load i32, ptr @flag_float_store, align 4, !tbaa !305
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24, !prof !767

24:                                               ; preds = %21
  %25 = lshr i32 %10, 16
  %26 = and i32 %25, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !300
  %30 = and i8 %29, -2
  %31 = icmp ne i8 %30, 8
  %32 = trunc i32 %18 to i16
  %33 = add i16 %32, -80
  %34 = icmp ult i16 %33, -6
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %73, label %714

36:                                               ; preds = %21
  %37 = trunc i32 %18 to i16
  %38 = add i16 %37, -80
  %39 = icmp ult i16 %38, -6
  br i1 %39, label %73, label %714

40:                                               ; preds = %9
  %41 = zext nneg i32 %11 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !305
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %73, label %45, !prof !768

45:                                               ; preds = %40
  %46 = icmp eq i32 %11, 49
  br i1 %46, label %47, label %714, !prof !769

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !300
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !301
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %61, !prof !770

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !300
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !305
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %73, label %61

61:                                               ; preds = %52, %47
  %62 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !301
  %63 = icmp eq ptr %49, %62
  br i1 %63, label %64, label %714, !prof !770

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !300
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !305
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %714

73:                                               ; preds = %24, %64, %52, %40, %7, %13, %36
  %74 = phi i1 [ true, %13 ], [ false, %36 ], [ true, %7 ], [ true, %40 ], [ true, %52 ], [ true, %64 ], [ false, %24 ]
  %75 = phi i32 [ 0, %13 ], [ 1, %36 ], [ 0, %7 ], [ 0, %40 ], [ 0, %52 ], [ 0, %64 ], [ 1, %24 ]
  %76 = phi i1 [ true, %13 ], [ true, %36 ], [ true, %7 ], [ false, %40 ], [ false, %52 ], [ false, %64 ], [ true, %24 ]
  %77 = phi i1 [ false, %13 ], [ false, %36 ], [ false, %7 ], [ true, %40 ], [ true, %52 ], [ true, %64 ], [ false, %24 ]
  %78 = phi i32 [ 0, %13 ], [ 0, %36 ], [ 0, %7 ], [ 0, %40 ], [ 1, %52 ], [ 0, %64 ], [ 0, %24 ]
  %79 = phi i32 [ %14, %13 ], [ -1, %36 ], [ %5, %7 ], [ -1, %40 ], [ -1, %52 ], [ -1, %64 ], [ -1, %24 ]
  %80 = icmp ult ptr %4, inttoptr (i64 2 to ptr)
  %81 = icmp sgt i32 %79, -1
  br label %82

82:                                               ; preds = %104, %73
  %83 = phi i32 [ 0, %73 ], [ %95, %104 ]
  %84 = phi ptr [ %1, %73 ], [ %88, %104 ]
  br label %85

85:                                               ; preds = %82, %90
  %86 = phi ptr [ %88, %90 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !300
  %89 = icmp eq ptr %88, null
  br i1 %89, label %714, label %90, !prof !771

90:                                               ; preds = %85
  %91 = load i32, ptr %88, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %85, label %94, !prof !772

94:                                               ; preds = %90
  %95 = add nuw nsw i32 %83, 1
  %96 = icmp eq i32 %92, 12
  br i1 %96, label %714, label %97, !prof !773

97:                                               ; preds = %94
  %98 = load ptr, ptr @compiler_params, align 8, !tbaa !301
  %99 = getelementptr inbounds %struct.param_info, ptr %98, i64 76, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !774
  %101 = icmp slt i32 %83, %100
  br i1 %101, label %102, label %714, !prof !776

102:                                              ; preds = %97
  %103 = icmp eq i32 %92, 8
  br i1 %103, label %105, label %104, !prof !777

104:                                              ; preds = %102, %106, %245, %267, %263, %260, %257, %253, %239, %233, %230, %117, %176, %274, %276, %278
  br label %82

105:                                              ; preds = %102
  br i1 %80, label %111, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !300
  %109 = load i32, ptr @reload_first_uid, align 4, !tbaa !305
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %104, !prof !778

111:                                              ; preds = %106, %105
  %112 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !300
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 23
  br i1 %116, label %120, label %117, !prof !779

117:                                              ; preds = %111
  %118 = tail call ptr @single_set_2(ptr noundef nonnull %88, ptr noundef nonnull %113) #24
  %119 = icmp eq ptr %118, null
  br i1 %119, label %104, label %120, !prof !780

120:                                              ; preds = %111, %117
  %121 = phi ptr [ %118, %117 ], [ %113, %111 ]
  br i1 %81, label %122, label %141, !prof !781

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !300
  %125 = tail call i32 @true_regnum(ptr noundef %124) #24
  %126 = icmp eq i32 %125, %79
  br i1 %126, label %127, label %132, !prof !782

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !300
  %130 = tail call i32 @true_regnum(ptr noundef %129) #24
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %270, label %132, !prof !783

132:                                              ; preds = %127, %122
  %133 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !300
  %135 = tail call i32 @true_regnum(ptr noundef %134) #24
  %136 = icmp eq i32 %135, %79
  br i1 %136, label %137, label %141, !prof !784

137:                                              ; preds = %132
  %138 = load ptr, ptr %123, align 8, !tbaa !300
  %139 = tail call i32 @true_regnum(ptr noundef %138) #24
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %270, label %141, !prof !785

141:                                              ; preds = %120, %137, %132
  br i1 %76, label %156, label %142, !prof !786

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %144 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !300
  %146 = tail call i32 @rtx_equal_p(ptr noundef %145, ptr noundef %0) #24
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %156, label %148, !prof !787

148:                                              ; preds = %142
  %149 = load ptr, ptr %143, align 8, !tbaa !300
  %150 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %149, ptr noundef %0) #25
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156, !prof !788

152:                                              ; preds = %148
  %153 = load ptr, ptr %143, align 8, !tbaa !300
  %154 = tail call i32 @true_regnum(ptr noundef %153) #24
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %270, label %156, !prof !789

156:                                              ; preds = %152, %148, %142, %141
  br i1 %74, label %176, label %157, !prof !790

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !300
  %160 = tail call i32 @true_regnum(ptr noundef %159) #24
  %161 = icmp sgt i32 %160, -1
  br i1 %161, label %162, label %167, !prof !791

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !300
  %165 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %164) #24
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %270, !prof !792

167:                                              ; preds = %162, %157
  %168 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !300
  %170 = tail call i32 @true_regnum(ptr noundef %169) #24
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %172, label %176, !prof !793

172:                                              ; preds = %167
  %173 = load ptr, ptr %158, align 8, !tbaa !300
  %174 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %173) #24
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %270, !prof !794

176:                                              ; preds = %156, %172, %167
  br i1 %76, label %104, label %177, !prof !795

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1, i32 1, i32 0, i32 0, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !300
  %180 = icmp eq ptr %179, null
  br i1 %180, label %230, label %181, !prof !796

181:                                              ; preds = %177
  %182 = tail call ptr @find_reg_note(ptr noundef nonnull %88, i32 noundef 3, ptr noundef null) #24
  %183 = icmp eq ptr %182, null
  br i1 %183, label %230, label %184, !prof !797

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !300
  %187 = tail call i32 @rtx_equal_p(ptr noundef %186, ptr noundef %0) #24
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %194, label %189, !prof !798

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !300
  %192 = tail call i32 @true_regnum(ptr noundef %191) #24
  %193 = icmp sgt i32 %192, -1
  br i1 %193, label %270, label %194

194:                                              ; preds = %189, %184
  %195 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !300
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 37
  br i1 %199, label %200, label %230, !prof !798

200:                                              ; preds = %194
  %201 = load ptr, ptr %185, align 8, !tbaa !300
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 32
  br i1 %204, label %205, label %230, !prof !799

205:                                              ; preds = %200
  %206 = lshr i32 %202, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !300
  %211 = and i8 %210, -2
  %212 = icmp eq i8 %211, 8
  br i1 %212, label %213, label %230, !prof !416

213:                                              ; preds = %205
  %214 = load i32, ptr %0, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 30
  br i1 %216, label %217, label %230, !prof !800

217:                                              ; preds = %213
  %218 = tail call ptr @operand_subword(ptr noundef nonnull %201, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %219 = icmp eq ptr %218, null
  br i1 %219, label %230, label %220

220:                                              ; preds = %217
  %221 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %218) #24
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr %195, align 8, !tbaa !300
  %225 = tail call ptr @operand_subword(ptr noundef %224, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %226 = icmp eq ptr %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %223
  %228 = tail call i32 @true_regnum(ptr noundef nonnull %225) #24
  %229 = icmp sgt i32 %228, -1
  br i1 %229, label %270, label %230

230:                                              ; preds = %205, %227, %223, %220, %217, %213, %200, %194, %181, %177
  %231 = tail call ptr @find_reg_note(ptr noundef nonnull %88, i32 noundef 3, ptr noundef null) #24
  %232 = icmp eq ptr %231, null
  br i1 %232, label %104, label %233, !prof !801

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !300
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 65535
  %238 = icmp eq i32 %237, 37
  br i1 %238, label %239, label %104, !prof !798

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !300
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 32
  br i1 %244, label %245, label %104, !prof !799

245:                                              ; preds = %239
  %246 = lshr i32 %242, 16
  %247 = and i32 %246, 255
  %248 = zext nneg i32 %247 to i64
  %249 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !300
  %251 = and i8 %250, -2
  %252 = icmp eq i8 %251, 8
  br i1 %252, label %253, label %104, !prof !416

253:                                              ; preds = %245
  %254 = load i32, ptr %0, align 8
  %255 = and i32 %254, 65535
  %256 = icmp eq i32 %255, 30
  br i1 %256, label %257, label %104, !prof !800

257:                                              ; preds = %253
  %258 = tail call ptr @operand_subword(ptr noundef nonnull %241, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %259 = icmp eq ptr %258, null
  br i1 %259, label %104, label %260

260:                                              ; preds = %257
  %261 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %258) #24
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %104, label %263

263:                                              ; preds = %260
  %264 = load ptr, ptr %234, align 8, !tbaa !300
  %265 = tail call ptr @operand_subword(ptr noundef %264, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %266 = icmp eq ptr %265, null
  br i1 %266, label %104, label %267

267:                                              ; preds = %263
  %268 = tail call i32 @true_regnum(ptr noundef nonnull %265) #24
  %269 = icmp sgt i32 %268, -1
  br i1 %269, label %270, label %104

270:                                              ; preds = %267, %227, %189, %172, %162, %152, %137, %127
  %271 = phi i32 [ %130, %127 ], [ %139, %137 ], [ %160, %162 ], [ %170, %172 ], [ %192, %189 ], [ %228, %227 ], [ %268, %267 ], [ %154, %152 ]
  %272 = phi ptr [ %129, %127 ], [ %138, %137 ], [ %159, %162 ], [ %169, %172 ], [ %191, %189 ], [ %225, %227 ], [ %265, %267 ], [ %153, %152 ]
  %273 = icmp sgt i32 %3, -1
  br i1 %273, label %274, label %276, !prof !802

274:                                              ; preds = %270
  %275 = icmp eq i32 %271, %3
  br i1 %275, label %284, label %104, !prof !803

276:                                              ; preds = %270
  %277 = icmp ugt i32 %271, 52
  br i1 %277, label %104, label %278, !prof !804

278:                                              ; preds = %276
  %279 = sext i32 %2 to i64
  %280 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %279
  %281 = load i64, ptr %280, align 8, !tbaa !445
  %282 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %281, i32 noundef %6, i32 noundef %271) #25, !range !446
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %104, label %284, !prof !642

284:                                              ; preds = %274, %278
  %285 = phi i32 [ %3, %274 ], [ %271, %278 ]
  %286 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1
  %287 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1, i32 1, i32 0, i32 0, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !300
  %289 = icmp eq ptr %288, null
  br i1 %289, label %293, label %290, !prof !805

290:                                              ; preds = %284
  %291 = tail call ptr @find_reg_note(ptr noundef nonnull %88, i32 noundef 6, ptr noundef %272) #24
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %714, !prof !806

293:                                              ; preds = %290, %284
  %294 = icmp eq i32 %285, 7
  %295 = icmp eq i32 %79, 7
  %296 = select i1 %294, i1 true, i1 %295
  br i1 %296, label %307, label %297, !prof !807

297:                                              ; preds = %293
  br i1 %74, label %312, label %298, !prof !808

298:                                              ; preds = %297
  %299 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !301
  %300 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %299, ptr noundef %0) #25
  %301 = icmp eq i32 %300, 0
  %302 = load i32, ptr %272, align 8
  %303 = lshr i32 %302, 16
  %304 = and i32 %303, 255
  %305 = icmp eq i32 %304, %6
  %306 = select i1 %301, i32 %78, i32 1, !prof !809
  br i1 %305, label %318, label %714, !prof !810

307:                                              ; preds = %293
  %308 = load i32, ptr %272, align 8
  %309 = lshr i32 %308, 16
  %310 = and i32 %309, 255
  %311 = icmp eq i32 %310, %6
  br i1 %311, label %317, label %714, !prof !810

312:                                              ; preds = %297
  %313 = load i32, ptr %272, align 8
  %314 = lshr i32 %313, 16
  %315 = and i32 %314, 255
  %316 = icmp eq i32 %315, %6
  br i1 %316, label %342, label %714, !prof !810

317:                                              ; preds = %307
  br i1 %74, label %342, label %318, !prof !722

318:                                              ; preds = %298, %317
  %319 = phi i32 [ 1, %317 ], [ %306, %298 ]
  %320 = load i32, ptr %88, align 8
  %321 = and i32 %320, 65535
  %322 = add nsw i32 %321, -7
  %323 = icmp ult i32 %322, 3
  br i1 %323, label %326, label %324, !prof !811

324:                                              ; preds = %318
  %325 = icmp eq i32 %321, 10
  tail call void @llvm.assume(i1 %325)
  br label %326

326:                                              ; preds = %318, %324
  %327 = load ptr, ptr %286, align 8, !tbaa !300
  %328 = load i32, ptr %327, align 8
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 23
  br i1 %330, label %333, label %331, !prof !809

331:                                              ; preds = %326
  %332 = tail call ptr @single_set_2(ptr noundef nonnull %88, ptr noundef nonnull %327) #24
  br label %333

333:                                              ; preds = %326, %331
  %334 = phi ptr [ %332, %331 ], [ %327, %326 ]
  %335 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !300
  %337 = icmp eq ptr %272, %336
  br i1 %337, label %338, label %342, !prof !812

338:                                              ; preds = %333
  %339 = tail call fastcc i32 @end_hard_regno(i32 noundef %6, i32 noundef %285) #25
  %340 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %285, i32 noundef %339, ptr noundef %0, ptr noundef null) #25
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %714, !prof !813

342:                                              ; preds = %312, %338, %333, %317
  %343 = phi i1 [ true, %338 ], [ true, %333 ], [ false, %317 ], [ false, %312 ]
  %344 = phi i32 [ %319, %338 ], [ %319, %333 ], [ 1, %317 ], [ %78, %312 ]
  %345 = icmp ult i32 %79, 53
  br i1 %345, label %348, label %346, !prof !814

346:                                              ; preds = %342
  %347 = zext nneg i32 %6 to i64
  br label %354

348:                                              ; preds = %342
  %349 = zext nneg i32 %79 to i64
  %350 = zext nneg i32 %6 to i64
  %351 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %349, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !300
  %353 = zext i8 %352 to i32
  br label %354

354:                                              ; preds = %346, %348
  %355 = phi i64 [ %347, %346 ], [ %350, %348 ]
  %356 = phi i32 [ 1, %346 ], [ %353, %348 ]
  %357 = zext nneg i32 %285 to i64
  %358 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %357, i64 %355
  %359 = load i8, ptr %358, align 1, !tbaa !300
  %360 = zext i8 %359 to i32
  %361 = or i1 %77, %343
  %362 = xor i1 %361, true
  %363 = add nsw i32 %356, %79
  %364 = icmp sgt i32 %363, %285
  %365 = select i1 %362, i1 %364, i1 false
  %366 = add nuw nsw i32 %285, %360
  %367 = icmp slt i32 %79, %366
  %368 = select i1 %365, i1 %367, i1 false
  br i1 %368, label %714, label %369, !prof !815

369:                                              ; preds = %354
  %370 = ptrtoint ptr %4 to i64
  switch i64 %370, label %371 [
    i64 0, label %414
    i64 1, label %384
  ], !prof !816

371:                                              ; preds = %369
  %372 = icmp eq i8 %359, 0
  br i1 %372, label %384, label %373, !prof !817

373:                                              ; preds = %371
  %374 = getelementptr i16, ptr %4, i64 %357
  br label %379

375:                                              ; preds = %379
  %376 = zext i8 %359 to i64
  %377 = add nuw nsw i64 %380, 1
  %378 = icmp eq i64 %377, %376
  br i1 %378, label %384, label %379, !prof !818, !llvm.loop !819

379:                                              ; preds = %373, %375
  %380 = phi i64 [ 0, %373 ], [ %377, %375 ]
  %381 = getelementptr i16, ptr %374, i64 %380
  %382 = load i16, ptr %381, align 2, !tbaa !349
  %383 = icmp sgt i16 %382, -1
  br i1 %383, label %714, label %375, !prof !820

384:                                              ; preds = %375, %371, %369
  %385 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %414, !prof !821

387:                                              ; preds = %384, %410
  %388 = phi i64 [ %412, %410 ], [ 0, %384 ]
  %389 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %388, i32 11
  %390 = load ptr, ptr %389, align 8, !tbaa !462
  %391 = icmp eq ptr %390, null
  br i1 %391, label %410, label %392, !prof !822

392:                                              ; preds = %387
  %393 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %388
  %394 = load ptr, ptr %393, align 8, !tbaa !456
  %395 = icmp eq ptr %394, null
  br i1 %395, label %410, label %396, !prof !823

396:                                              ; preds = %392
  %397 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %390) #25
  %398 = icmp slt i32 %397, %366
  br i1 %398, label %399, label %410, !prof !824

399:                                              ; preds = %396
  %400 = sext i32 %397 to i64
  %401 = load i32, ptr %390, align 8
  %402 = lshr i32 %401, 16
  %403 = and i32 %402, 255
  %404 = zext nneg i32 %403 to i64
  %405 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %400, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !300
  %407 = zext i8 %406 to i32
  %408 = add nsw i32 %397, %407
  %409 = icmp sgt i32 %408, %285
  br i1 %409, label %714, label %410, !prof !824

410:                                              ; preds = %396, %399, %387, %392
  %411 = zext nneg i32 %385 to i64
  %412 = add nuw nsw i64 %388, 1
  %413 = icmp eq i64 %412, %411
  br i1 %413, label %414, label %387, !prof !825, !llvm.loop !826

414:                                              ; preds = %410, %384, %369
  br i1 %343, label %415, label %420, !prof !827

415:                                              ; preds = %414
  %416 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !300
  %418 = tail call zeroext i8 @constant_address_p(ptr noundef %417) #24
  %419 = icmp ne i8 %418, 0
  br label %420

420:                                              ; preds = %415, %414
  %421 = phi i1 [ %419, %415 ], [ true, %414 ]
  %422 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !300
  %424 = icmp eq ptr %423, %88
  br i1 %424, label %714, label %425, !prof !828

425:                                              ; preds = %420, %710
  %426 = phi ptr [ %712, %710 ], [ %423, %420 ]
  %427 = load i32, ptr %426, align 8
  %428 = and i32 %427, 65535
  %429 = icmp eq i32 %428, 10
  br i1 %429, label %430, label %462, !prof !829

430:                                              ; preds = %425
  %431 = or i32 %344, %75
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %714, !prof !830

433:                                              ; preds = %430
  br i1 %345, label %434, label %448, !prof !831

434:                                              ; preds = %433
  %435 = icmp eq i32 %356, 0
  br i1 %435, label %448, label %436, !prof !832

436:                                              ; preds = %434
  %437 = zext i32 %79 to i64
  br label %442

438:                                              ; preds = %442
  %439 = zext nneg i32 %356 to i64
  %440 = add nuw nsw i64 %443, 1
  %441 = icmp eq i64 %440, %439
  br i1 %441, label %448, label %442, !prof !833, !llvm.loop !834

442:                                              ; preds = %436, %438
  %443 = phi i64 [ %440, %438 ], [ 0, %436 ]
  %444 = add nuw nsw i64 %443, %437
  %445 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !300
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %438, label %714, !prof !835

448:                                              ; preds = %438, %434, %433
  %449 = icmp ugt i32 %285, 52
  %450 = icmp eq i8 %359, 0
  %451 = select i1 %449, i1 true, i1 %450
  br i1 %451, label %462, label %456, !prof !836

452:                                              ; preds = %456
  %453 = zext i8 %359 to i64
  %454 = add nuw nsw i64 %457, 1
  %455 = icmp eq i64 %454, %453
  br i1 %455, label %462, label %456, !prof !837, !llvm.loop !838

456:                                              ; preds = %448, %452
  %457 = phi i64 [ %454, %452 ], [ 0, %448 ]
  %458 = add nuw nsw i64 %457, %357
  %459 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !300
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %452, label %714, !prof !839

462:                                              ; preds = %452, %448, %425
  %463 = add nsw i32 %428, -7
  %464 = icmp ult i32 %463, 4
  br i1 %464, label %465, label %710, !prof !840

465:                                              ; preds = %462
  %466 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 1
  %467 = load ptr, ptr %466, align 8, !tbaa !300
  %468 = tail call i32 @volatile_insn_p(ptr noundef %467) #24
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %714, !prof !841

470:                                              ; preds = %465
  %471 = load i32, ptr %467, align 8
  %472 = and i32 %471, 65535
  %473 = icmp eq i32 %472, 14
  br i1 %473, label %474, label %478, !prof !842

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.rtx_def, ptr %467, i64 0, i32 1, i32 0, i32 0, i64 1
  %476 = load ptr, ptr %475, align 8, !tbaa !300
  %477 = load i32, ptr %476, align 8
  br label %478

478:                                              ; preds = %474, %470
  %479 = phi i32 [ %477, %474 ], [ %471, %470 ]
  %480 = phi ptr [ %476, %474 ], [ %467, %470 ]
  %481 = trunc i32 %479 to i16
  switch i16 %481, label %642 [
    i16 23, label %482
    i16 25, label %482
    i16 15, label %549
  ], !prof !843

482:                                              ; preds = %478, %478
  br label %483

483:                                              ; preds = %489, %482
  %484 = phi ptr [ %480, %482 ], [ %486, %489 ]
  %485 = getelementptr inbounds %struct.rtx_def, ptr %484, i64 0, i32 1
  %486 = load ptr, ptr %485, align 8, !tbaa !300
  %487 = load i32, ptr %486, align 8
  %488 = trunc i32 %487 to i16
  switch i16 %488, label %519 [
    i16 39, label %489
    i16 120, label %489
    i16 40, label %489
    i16 37, label %490
  ], !prof !844

489:                                              ; preds = %483, %483, %483
  br label %483, !llvm.loop !845

490:                                              ; preds = %483
  %491 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %486) #25
  %492 = icmp ult i32 %491, 53
  br i1 %492, label %493, label %501, !prof !846

493:                                              ; preds = %490
  %494 = zext nneg i32 %491 to i64
  %495 = lshr i32 %487, 16
  %496 = and i32 %495, 255
  %497 = zext nneg i32 %496 to i64
  %498 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %494, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !300
  %500 = zext i8 %499 to i32
  br label %501

501:                                              ; preds = %490, %493
  %502 = phi i32 [ %500, %493 ], [ 1, %490 ]
  %503 = icmp slt i32 %491, %363
  %504 = add nsw i32 %502, %491
  %505 = icmp sgt i32 %504, %79
  %506 = select i1 %503, i1 %505, i1 false
  br i1 %506, label %714, label %507, !prof !847

507:                                              ; preds = %501
  %508 = icmp slt i32 %491, %366
  %509 = icmp sgt i32 %504, %285
  %510 = select i1 %508, i1 %509, i1 false
  br i1 %510, label %714, label %511, !prof !848

511:                                              ; preds = %507
  br i1 %421, label %515, label %512, !prof !849

512:                                              ; preds = %511
  %513 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %486, ptr noundef %0) #25
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %714, !prof !850

515:                                              ; preds = %512, %511
  %516 = icmp eq i32 %491, 7
  br i1 %516, label %517, label %642, !prof !851

517:                                              ; preds = %515
  %518 = icmp eq i32 %344, 0
  br i1 %518, label %642, label %714

519:                                              ; preds = %483
  %520 = and i32 %487, 65535
  %521 = icmp eq i32 %520, 43
  %522 = and i1 %343, %521
  br i1 %522, label %523, label %530, !prof !852

523:                                              ; preds = %519
  %524 = lshr i32 %487, 16
  %525 = and i32 %524, 255
  %526 = tail call i32 @push_operand(ptr noundef nonnull %486, i32 noundef %525) #24
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %714, label %528, !prof !853

528:                                              ; preds = %523
  %529 = load i32, ptr %486, align 8
  br label %530

530:                                              ; preds = %528, %519
  %531 = phi i32 [ %529, %528 ], [ %487, %519 ]
  %532 = icmp sgt i32 %79, 52
  %533 = and i32 %531, 65535
  %534 = icmp eq i32 %533, 43
  %535 = select i1 %534, i1 %532, i1 false
  br i1 %535, label %536, label %542, !prof !854

536:                                              ; preds = %530
  %537 = zext i32 %79 to i64
  %538 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %539 = getelementptr inbounds ptr, ptr %538, i64 %537
  %540 = load ptr, ptr %539, align 8, !tbaa !301
  %541 = icmp eq ptr %540, null
  br i1 %541, label %542, label %714, !prof !855

542:                                              ; preds = %536, %530
  %543 = icmp eq i32 %344, 0
  br i1 %543, label %642, label %544, !prof !856

544:                                              ; preds = %542
  %545 = lshr i32 %531, 16
  %546 = and i32 %545, 255
  %547 = tail call i32 @push_operand(ptr noundef nonnull %486, i32 noundef %546) #24
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %642, label %714

549:                                              ; preds = %478
  %550 = getelementptr inbounds %struct.rtx_def, ptr %480, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !300
  %552 = load i32, ptr %551, align 8, !tbaa !360
  %553 = icmp slt i32 %552, 1
  br i1 %553, label %642, label %554, !prof !857

554:                                              ; preds = %549
  %555 = zext nneg i32 %552 to i64
  br label %556

556:                                              ; preds = %554, %640
  %557 = phi i64 [ %555, %554 ], [ %558, %640 ]
  %558 = add nsw i64 %557, -1
  %559 = load ptr, ptr %550, align 8, !tbaa !300
  %560 = getelementptr inbounds %struct.rtvec_def, ptr %559, i64 0, i32 1, i64 %558
  %561 = load ptr, ptr %560, align 8, !tbaa !301
  %562 = load i32, ptr %561, align 8
  %563 = and i32 %562, 65535
  %564 = icmp eq i32 %563, 14
  br i1 %564, label %565, label %569, !prof !858

565:                                              ; preds = %556
  %566 = getelementptr inbounds %struct.rtx_def, ptr %561, i64 0, i32 1, i32 0, i32 0, i64 1
  %567 = load ptr, ptr %566, align 8, !tbaa !300
  %568 = load i32, ptr %567, align 8
  br label %569

569:                                              ; preds = %565, %556
  %570 = phi i32 [ %568, %565 ], [ %562, %556 ]
  %571 = phi ptr [ %567, %565 ], [ %561, %556 ]
  %572 = trunc i32 %570 to i16
  switch i16 %572, label %640 [
    i16 23, label %573
    i16 25, label %573
  ], !prof !859

573:                                              ; preds = %569, %569
  br label %574

574:                                              ; preds = %580, %573
  %575 = phi ptr [ %571, %573 ], [ %577, %580 ]
  %576 = getelementptr inbounds %struct.rtx_def, ptr %575, i64 0, i32 1
  %577 = load ptr, ptr %576, align 8, !tbaa !300
  %578 = load i32, ptr %577, align 8
  %579 = trunc i32 %578 to i16
  switch i16 %579, label %610 [
    i16 39, label %580
    i16 120, label %580
    i16 40, label %580
    i16 37, label %581
  ], !prof !860

580:                                              ; preds = %574, %574, %574
  br label %574, !llvm.loop !861

581:                                              ; preds = %574
  %582 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %577) #25
  %583 = icmp ult i32 %582, 53
  br i1 %583, label %584, label %592, !prof !862

584:                                              ; preds = %581
  %585 = zext nneg i32 %582 to i64
  %586 = lshr i32 %578, 16
  %587 = and i32 %586, 255
  %588 = zext nneg i32 %587 to i64
  %589 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %585, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !300
  %591 = zext i8 %590 to i32
  br label %592

592:                                              ; preds = %581, %584
  %593 = phi i32 [ %591, %584 ], [ 1, %581 ]
  %594 = icmp slt i32 %582, %363
  %595 = add nsw i32 %593, %582
  %596 = icmp sgt i32 %595, %79
  %597 = select i1 %594, i1 %596, i1 false
  br i1 %597, label %714, label %598, !prof !863

598:                                              ; preds = %592
  %599 = icmp slt i32 %582, %366
  %600 = icmp sgt i32 %595, %285
  %601 = select i1 %599, i1 %600, i1 false
  br i1 %601, label %714, label %602, !prof !864

602:                                              ; preds = %598
  br i1 %421, label %606, label %603, !prof !865

603:                                              ; preds = %602
  %604 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %577, ptr noundef %0) #25
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %714, !prof !866

606:                                              ; preds = %603, %602
  %607 = icmp eq i32 %582, 7
  br i1 %607, label %608, label %640, !prof !867

608:                                              ; preds = %606
  %609 = icmp eq i32 %344, 0
  br i1 %609, label %640, label %714, !prof !868

610:                                              ; preds = %574
  %611 = and i32 %578, 65535
  %612 = icmp eq i32 %611, 43
  %613 = and i1 %343, %612
  br i1 %613, label %614, label %621, !prof !869

614:                                              ; preds = %610
  %615 = lshr i32 %578, 16
  %616 = and i32 %615, 255
  %617 = tail call i32 @push_operand(ptr noundef nonnull %577, i32 noundef %616) #24
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %714, label %619, !prof !870

619:                                              ; preds = %614
  %620 = load i32, ptr %577, align 8
  br label %621

621:                                              ; preds = %619, %610
  %622 = phi i32 [ %620, %619 ], [ %578, %610 ]
  %623 = icmp sgt i32 %79, 52
  %624 = and i32 %622, 65535
  %625 = icmp eq i32 %624, 43
  %626 = select i1 %625, i1 %623, i1 false
  br i1 %626, label %627, label %633, !prof !871

627:                                              ; preds = %621
  %628 = zext i32 %79 to i64
  %629 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %630 = getelementptr inbounds ptr, ptr %629, i64 %628
  %631 = load ptr, ptr %630, align 8, !tbaa !301
  %632 = icmp eq ptr %631, null
  br i1 %632, label %633, label %714, !prof !872

633:                                              ; preds = %627, %621
  %634 = icmp eq i32 %344, 0
  br i1 %634, label %640, label %635, !prof !873

635:                                              ; preds = %633
  %636 = lshr i32 %622, 16
  %637 = and i32 %636, 255
  %638 = tail call i32 @push_operand(ptr noundef nonnull %577, i32 noundef %637) #24
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %714

640:                                              ; preds = %635, %633, %608, %606, %569
  %641 = icmp slt i64 %557, 2
  br i1 %641, label %642, label %556, !prof !874, !llvm.loop !875

642:                                              ; preds = %640, %549, %544, %542, %517, %515, %478
  %643 = load i32, ptr %426, align 8
  %644 = and i32 %643, 65535
  %645 = icmp eq i32 %644, 10
  br i1 %645, label %646, label %710, !prof !876

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 1, i32 1, i32 0, i32 0, i64 2
  %648 = load ptr, ptr %647, align 8, !tbaa !300
  %649 = icmp eq ptr %648, null
  br i1 %649, label %710, label %650, !prof !877

650:                                              ; preds = %646
  %651 = getelementptr inbounds %struct.rtx_def, ptr %648, i64 0, i32 1, i32 0, i32 0, i64 1
  %652 = load ptr, ptr %651, align 8, !tbaa !300
  %653 = icmp eq ptr %652, null
  br i1 %653, label %710, label %654, !prof !644

654:                                              ; preds = %650, %705
  %655 = phi ptr [ %707, %705 ], [ %651, %650 ]
  %656 = phi ptr [ %706, %705 ], [ %648, %650 ]
  %657 = getelementptr inbounds %struct.rtx_def, ptr %656, i64 0, i32 1
  %658 = load ptr, ptr %657, align 8, !tbaa !300
  %659 = load i32, ptr %658, align 8
  %660 = and i32 %659, 65535
  %661 = icmp eq i32 %660, 25
  br i1 %661, label %662, label %705, !prof !644

662:                                              ; preds = %654
  %663 = getelementptr inbounds %struct.rtx_def, ptr %658, i64 0, i32 1
  %664 = load ptr, ptr %663, align 8, !tbaa !300
  %665 = load i32, ptr %664, align 8
  %666 = and i32 %665, 65535
  %667 = icmp eq i32 %666, 37
  br i1 %667, label %668, label %689

668:                                              ; preds = %662
  %669 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %664) #25
  %670 = sext i32 %669 to i64
  %671 = lshr i32 %665, 16
  %672 = and i32 %671, 255
  %673 = zext nneg i32 %672 to i64
  %674 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %670, i64 %673
  %675 = load i8, ptr %674, align 1, !tbaa !300
  %676 = zext i8 %675 to i32
  %677 = icmp slt i32 %669, %363
  %678 = add nsw i32 %669, %676
  %679 = icmp sgt i32 %678, %79
  %680 = select i1 %677, i1 %679, i1 false
  br i1 %680, label %714, label %681

681:                                              ; preds = %668
  %682 = icmp slt i32 %669, %366
  %683 = icmp sgt i32 %678, %285
  %684 = select i1 %682, i1 %683, i1 false
  br i1 %684, label %714, label %685

685:                                              ; preds = %681
  br i1 %421, label %705, label %686

686:                                              ; preds = %685
  %687 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %664, ptr noundef %0) #25
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %705, label %714

689:                                              ; preds = %662
  %690 = icmp eq i32 %666, 43
  %691 = and i1 %343, %690
  br i1 %691, label %692, label %697

692:                                              ; preds = %689
  %693 = lshr i32 %665, 16
  %694 = and i32 %693, 255
  %695 = tail call i32 @push_operand(ptr noundef nonnull %664, i32 noundef %694) #24
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %714, label %697

697:                                              ; preds = %692, %689
  %698 = icmp eq i32 %344, 0
  br i1 %698, label %705, label %699

699:                                              ; preds = %697
  %700 = load i32, ptr %664, align 8
  %701 = lshr i32 %700, 16
  %702 = and i32 %701, 255
  %703 = tail call i32 @push_operand(ptr noundef nonnull %664, i32 noundef %702) #24
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %714

705:                                              ; preds = %697, %699, %686, %685, %654
  %706 = load ptr, ptr %655, align 8, !tbaa !300
  %707 = getelementptr inbounds %struct.rtx_def, ptr %706, i64 0, i32 1, i32 0, i32 0, i64 1
  %708 = load ptr, ptr %707, align 8, !tbaa !300
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %654, !prof !878, !llvm.loop !879

710:                                              ; preds = %705, %650, %462, %642, %646
  %711 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1, i32 0, i32 0, i64 1
  %712 = load ptr, ptr %711, align 8, !tbaa !300
  %713 = icmp eq ptr %712, %88
  br i1 %713, label %714, label %425, !prof !880

714:                                              ; preds = %94, %97, %85, %379, %399, %710, %465, %544, %536, %523, %501, %507, %512, %517, %430, %442, %456, %608, %603, %598, %592, %614, %627, %635, %699, %692, %668, %681, %686, %298, %420, %24, %15, %312, %45, %354, %338, %307, %290, %61, %64, %36
  %715 = phi ptr [ null, %36 ], [ null, %64 ], [ null, %61 ], [ null, %290 ], [ null, %307 ], [ null, %338 ], [ null, %354 ], [ null, %45 ], [ null, %312 ], [ null, %15 ], [ null, %24 ], [ %272, %420 ], [ null, %298 ], [ null, %686 ], [ null, %681 ], [ null, %668 ], [ null, %692 ], [ null, %699 ], [ null, %635 ], [ null, %627 ], [ null, %614 ], [ null, %592 ], [ null, %598 ], [ null, %603 ], [ null, %608 ], [ null, %456 ], [ null, %442 ], [ %272, %710 ], [ null, %465 ], [ null, %544 ], [ null, %536 ], [ null, %523 ], [ null, %501 ], [ null, %507 ], [ null, %512 ], [ null, %517 ], [ null, %430 ], [ null, %399 ], [ null, %379 ], [ null, %85 ], [ null, %97 ], [ null, %94 ]
  ret ptr %715
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #4 !prof !881 !PGOFuncName !882 {
  %2 = load ptr, ptr @df, align 8, !tbaa !301
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !301
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !883
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !885

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !886
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !301
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !887 !PGOFuncName !888 {
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi ptr [ %2, %4 ], [ %22, %18 ]
  %7 = phi ptr [ %3, %4 ], [ null, %18 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %156, label %9, !prof !889

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
  ], !prof !890

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %17 = icmp ugt i32 %16, 52
  br i1 %17, label %18, label %35, !prof !891

18:                                               ; preds = %15
  %19 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !301
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !prof !892

24:                                               ; preds = %18
  %25 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %26 = getelementptr inbounds ptr, ptr %25, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !301
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %156, !prof !893

29:                                               ; preds = %24
  %30 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !301
  %31 = getelementptr inbounds ptr, ptr %30, i64 %20
  %32 = load ptr, ptr %31, align 8, !tbaa !301
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %156

34:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6505, ptr noundef nonnull @.str.1) #24
  br label %156

35:                                               ; preds = %15
  %36 = icmp ult i32 %16, %1
  br i1 %36, label %37, label %156, !prof !894

37:                                               ; preds = %35
  %38 = zext nneg i32 %16 to i64
  %39 = lshr i32 %11, 16
  %40 = and i32 %39, 255
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !300
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %16, %44
  %46 = icmp ugt i32 %45, %0
  br label %156

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !300
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %111, !prof !895

53:                                               ; preds = %47
  %54 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %49) #25
  %55 = icmp ult i32 %54, 53
  br i1 %55, label %56, label %111, !prof !896

56:                                               ; preds = %53
  %57 = tail call i32 @subreg_regno(ptr noundef nonnull %10) #24
  %58 = icmp ult i32 %57, 53
  br i1 %58, label %59, label %61, !prof !897

59:                                               ; preds = %56
  %60 = tail call i32 @subreg_nregs(ptr noundef nonnull %10) #24
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi i32 [ %60, %59 ], [ 1, %56 ]
  %63 = add i32 %62, %57
  %64 = icmp ult i32 %57, %1
  %65 = icmp ugt i32 %63, %0
  %66 = select i1 %64, i1 %65, i1 false, !prof !898
  br label %156

67:                                               ; preds = %9, %9
  %68 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %69 = icmp eq ptr %68, %7
  br i1 %69, label %103, label %70, !prof !899

70:                                               ; preds = %67
  %71 = load ptr, ptr %68, align 8, !tbaa !300
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 39
  br i1 %74, label %75, label %92, !prof !900

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %77 = icmp eq ptr %76, %7
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %76, align 8, !tbaa !300
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
  %90 = load ptr, ptr %68, align 8, !tbaa !300
  %91 = load i32, ptr %90, align 8
  br label %92

92:                                               ; preds = %89, %83, %78, %75, %70
  %93 = phi i32 [ %91, %89 ], [ %72, %83 ], [ %72, %78 ], [ %72, %75 ], [ %72, %70 ]
  %94 = phi ptr [ %90, %89 ], [ %71, %83 ], [ %71, %78 ], [ %71, %75 ], [ %71, %70 ]
  %95 = and i32 %93, 65535
  %96 = icmp eq i32 %95, 37
  br i1 %96, label %97, label %100, !prof !901

97:                                               ; preds = %92
  %98 = tail call i32 @earlyclobber_operand_p(ptr noundef nonnull %94) #25, !range !401
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100, !prof !902

100:                                              ; preds = %97, %92
  %101 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %94, ptr noundef %7) #25
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %156, !prof !903

103:                                              ; preds = %100, %97, %67
  %104 = icmp eq i32 %12, 25
  %105 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = icmp eq ptr %105, %7
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %156, label %108, !prof !904

108:                                              ; preds = %129, %103
  %109 = phi ptr [ %105, %103 ], [ %119, %129 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !300
  br label %9

111:                                              ; preds = %9, %47, %53
  %112 = zext nneg i32 %12 to i64
  %113 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !301
  %115 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %112
  %116 = load i8, ptr %115, align 1, !tbaa !300
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %156, label %118, !prof !905

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %120 = zext i8 %116 to i64
  br label %121

121:                                              ; preds = %118, %154
  %122 = phi i64 [ %120, %118 ], [ %123, %154 ]
  %123 = add nsw i64 %122, -1
  %124 = getelementptr inbounds i8, ptr %114, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !300
  switch i8 %125, label %154 [
    i8 101, label %126
    i8 69, label %135
  ], !prof !906

126:                                              ; preds = %121
  %127 = getelementptr inbounds [1 x %union.rtunion_def], ptr %119, i64 0, i64 %123
  %128 = icmp eq ptr %127, %7
  br i1 %128, label %154, label %129, !prof !907

129:                                              ; preds = %126
  %130 = icmp eq i64 %123, 0
  br i1 %130, label %108, label %131, !prof !908

131:                                              ; preds = %129
  %132 = load ptr, ptr %127, align 8, !tbaa !300
  %133 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %132, ptr noundef %7) #25
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %154, label %156, !prof !909

135:                                              ; preds = %121
  %136 = getelementptr inbounds [1 x %union.rtunion_def], ptr %119, i64 0, i64 %123
  %137 = load ptr, ptr %136, align 8, !tbaa !300
  %138 = load i32, ptr %137, align 8, !tbaa !360
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %154, label %140, !prof !910

140:                                              ; preds = %135
  %141 = zext nneg i32 %138 to i64
  br label %142

142:                                              ; preds = %140, %152
  %143 = phi i64 [ %141, %140 ], [ %144, %152 ]
  %144 = add nsw i64 %143, -1
  %145 = load ptr, ptr %136, align 8, !tbaa !300
  %146 = getelementptr inbounds %struct.rtvec_def, ptr %145, i64 0, i32 1, i64 %144
  %147 = icmp eq ptr %146, %7
  br i1 %147, label %152, label %148, !prof !911

148:                                              ; preds = %142
  %149 = load ptr, ptr %146, align 8, !tbaa !301
  %150 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %149, ptr noundef %7) #25
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156, !prof !912

152:                                              ; preds = %142, %148
  %153 = icmp ult i64 %143, 2
  br i1 %153, label %154, label %142, !prof !913, !llvm.loop !914

154:                                              ; preds = %152, %135, %121, %126, %131
  %155 = icmp sgt i64 %122, 1
  br i1 %155, label %121, label %156, !prof !915, !llvm.loop !916

156:                                              ; preds = %5, %103, %86, %100, %111, %131, %154, %148, %35, %37, %34, %29, %24, %61
  %157 = phi i1 [ %66, %61 ], [ false, %24 ], [ false, %29 ], [ false, %34 ], [ false, %35 ], [ %46, %37 ], [ true, %148 ], [ true, %131 ], [ false, %154 ], [ false, %111 ], [ false, %103 ], [ true, %86 ], [ true, %100 ], [ false, %5 ]
  %158 = zext i1 %157 to i32
  ret i32 %158
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !prof !917 !PGOFuncName !918 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !300
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !prof !919 !PGOFuncName !920 {
  %4 = load i32, ptr %2, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %37 [
    i16 23, label %6
    i16 25, label %6
    i16 15, label %22
  ], !prof !921

6:                                                ; preds = %3, %3
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi ptr [ %10, %7 ], [ %2, %6 ]
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !300
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %21 [
    i16 39, label %7
    i16 37, label %13
  ], !prof !922

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #25
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %16, label %21, !prof !923

16:                                               ; preds = %13
  %17 = lshr i32 %11, 16
  %18 = and i32 %17, 255
  %19 = tail call fastcc i32 @end_hard_regno(i32 noundef %18, i32 noundef %14) #25
  %20 = icmp ugt i32 %19, %0
  br i1 %20, label %37, label %21, !prof !924

21:                                               ; preds = %7, %16, %13
  br label %37

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !300
  %25 = load i32, ptr %24, align 8, !tbaa !360
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %31, %22
  %28 = phi i64 [ %32, %31 ], [ %26, %22 ]
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37, !prof !925

31:                                               ; preds = %27
  %32 = add nsw i64 %28, -1
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !301
  %35 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr noundef %34) #25, !range !401
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %27, label %37, !prof !926, !llvm.loop !927

37:                                               ; preds = %27, %31, %3, %21, %16
  %38 = phi i32 [ 1, %16 ], [ 0, %21 ], [ 0, %3 ], [ 0, %27 ], [ 1, %31 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @can_reload_into(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !928 !PGOFuncName !929 {
  %4 = alloca %struct.recog_data, align 8
  call void @llvm.lifetime.start.p0(i64 1128, ptr nonnull %4)
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %17
    i16 43, label %17
  ], !prof !930

7:                                                ; preds = %3
  %8 = tail call ptr @gen_rtx_REG(i32 noundef %2, i32 noundef %1) #24
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %8, ptr noundef nonnull %0) #24
  %10 = tail call ptr @make_insn_raw(ptr noundef %9) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) %4, ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, i64 1128, i1 false), !tbaa.struct !931
  %11 = tail call fastcc i32 @recog_memoized(ptr noundef %10) #25
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @extract_insn(ptr noundef %10) #24
  %14 = tail call i32 @constrain_operands(i32 noundef 1) #24
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, ptr noundef nonnull align 8 dereferenceable(1128) %4, i64 1128, i1 false), !tbaa.struct !931
  br label %17

17:                                               ; preds = %3, %3, %15
  %18 = phi i32 [ %16, %15 ], [ 1, %3 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %4)
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @true_regnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !294 !PGOFuncName !932 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !300
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !300
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #24
  store i32 %8, ptr %2, align 8, !tbaa !300
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @transfer_replacements(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !933 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16, !prof !934

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %13
  %8 = phi i64 [ 0, %5 ], [ %14, %13 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !488
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13, !prof !935

12:                                               ; preds = %7
  store i32 %0, ptr %9, align 8, !tbaa !488
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !prof !936, !llvm.loop !937

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: optsize
declare i32 @loc_mentioned_in_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @deallocate_reload_reg(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @operands_match_p(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !938 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %82, label %4, !prof !939

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
  ], !prof !940

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !300
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %70, !prof !941

17:                                               ; preds = %6, %11
  %18 = load i32, ptr %1, align 8
  %19 = trunc i32 %18 to i16
  switch i16 %19, label %70 [
    i16 37, label %25
    i16 39, label %20
  ], !prof !942

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8, !tbaa !300
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %70, !prof !943

25:                                               ; preds = %17, %20
  %26 = icmp eq i32 %9, 39
  br i1 %26, label %27, label %43, !prof !944

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !300
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #25
  %31 = icmp sgt i32 %30, 52
  br i1 %31, label %89, label %32, !prof !945

32:                                               ; preds = %27
  %33 = load i32, ptr %29, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !300
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
  br i1 %49, label %50, label %64, !prof !946

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8, !tbaa !300
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef %51) #25
  %53 = icmp sgt i32 %52, 52
  br i1 %53, label %89, label %54, !prof !947

54:                                               ; preds = %50
  %55 = load i32, ptr %51, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load i32, ptr %58, align 8, !tbaa !300
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
  br i1 %74, label %75, label %79, !prof !948

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !300
  %78 = icmp eq ptr %77, %1
  br i1 %78, label %82, label %6, !prof !949

79:                                               ; preds = %70
  %80 = load i32, ptr %1, align 8
  %81 = trunc i32 %80 to i16
  switch i16 %81, label %89 [
    i16 74, label %84
    i16 75, label %84
    i16 78, label %84
  ], !prof !950

82:                                               ; preds = %66, %120, %120, %120, %117, %93, %89, %127, %121, %2, %199, %133, %180, %168, %161, %155, %149, %75, %84
  %83 = phi i32 [ %88, %84 ], [ %132, %127 ], [ %126, %121 ], [ %69, %66 ], [ 0, %89 ], [ 0, %93 ], [ 0, %117 ], [ 0, %120 ], [ 0, %120 ], [ 0, %120 ], [ 1, %2 ], [ 1, %133 ], [ %200, %199 ], [ %190, %180 ], [ 0, %149 ], [ 0, %155 ], [ %166, %161 ], [ 0, %168 ], [ 1, %75 ]
  ret i32 %83

84:                                               ; preds = %79, %79, %79
  %85 = load ptr, ptr %5, align 8, !tbaa !300
  %86 = tail call i32 @operands_match_p(ptr noundef nonnull %7, ptr noundef %85) #25
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 0, i32 2
  br label %82

89:                                               ; preds = %50, %27, %79
  %90 = phi i32 [ %46, %50 ], [ %18, %27 ], [ %80, %79 ]
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %9, %91
  br i1 %92, label %93, label %82, !prof !951

93:                                               ; preds = %89
  %94 = load i32, ptr %7, align 8
  %95 = xor i32 %94, %90
  %96 = and i32 %95, 16711680
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %82, !prof !952

98:                                               ; preds = %93
  %99 = icmp eq i32 %9, 43
  br i1 %99, label %100, label %120, !prof !953

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !300
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104, !prof !954

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.mem_attrs, ptr %102, i64 0, i32 5
  %106 = load i8, ptr %105, align 8, !tbaa !302
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %100, %104
  %109 = phi i32 [ %107, %104 ], [ 0, %100 ]
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !300
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113, !prof !954

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.mem_attrs, ptr %111, i64 0, i32 5
  %115 = load i8, ptr %114, align 8, !tbaa !302
  %116 = zext i8 %115 to i32
  br label %117

117:                                              ; preds = %108, %113
  %118 = phi i32 [ %116, %113 ], [ 0, %108 ]
  %119 = icmp eq i32 %109, %118
  br i1 %119, label %120, label %82, !prof !955

120:                                              ; preds = %117, %98
  switch i16 %10, label %133 [
    i16 30, label %82
    i16 32, label %82
    i16 31, label %82
    i16 44, label %121
    i16 45, label %127
  ], !prof !956

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !300
  %124 = load ptr, ptr %5, align 8, !tbaa !300
  %125 = icmp eq ptr %123, %124
  %126 = zext i1 %125 to i32
  br label %82

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !300
  %130 = load ptr, ptr %5, align 8, !tbaa !300
  %131 = icmp eq ptr %129, %130
  %132 = zext i1 %131 to i32
  br label %82

133:                                              ; preds = %120
  %134 = zext nneg i32 %9 to i64
  %135 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !301
  %137 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %134
  %138 = load i8, ptr %137, align 1, !tbaa !300
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %82, label %140, !prof !957

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %142 = zext i8 %138 to i64
  br label %143

143:                                              ; preds = %140, %196
  %144 = phi i64 [ %142, %140 ], [ %146, %196 ]
  %145 = phi i32 [ 0, %140 ], [ %197, %196 ]
  %146 = add nsw i64 %144, -1
  %147 = getelementptr inbounds i8, ptr %136, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !300
  switch i8 %148, label %195 [
    i8 119, label %149
    i8 105, label %155
    i8 101, label %161
    i8 48, label %196
    i8 69, label %168
  ], !prof !958

149:                                              ; preds = %143
  %150 = getelementptr inbounds [1 x i64], ptr %141, i64 0, i64 %146
  %151 = load i64, ptr %150, align 8, !tbaa !300
  %152 = getelementptr inbounds [1 x i64], ptr %5, i64 0, i64 %146
  %153 = load i64, ptr %152, align 8, !tbaa !300
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %196, label %82

155:                                              ; preds = %143
  %156 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %157 = load i32, ptr %156, align 8, !tbaa !300
  %158 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %159 = load i32, ptr %158, align 8, !tbaa !300
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %196, label %82, !prof !959

161:                                              ; preds = %143
  %162 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %163 = load ptr, ptr %162, align 8, !tbaa !300
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %165 = load ptr, ptr %164, align 8, !tbaa !300
  %166 = tail call i32 @operands_match_p(ptr noundef %163, ptr noundef %165) #25
  switch i32 %166, label %196 [
    i32 0, label %82
    i32 2, label %167
  ], !prof !960

167:                                              ; preds = %161
  br label %196

168:                                              ; preds = %143
  %169 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %146
  %170 = load ptr, ptr %169, align 8, !tbaa !300
  %171 = load i32, ptr %170, align 8, !tbaa !360
  %172 = getelementptr inbounds [1 x %union.rtunion_def], ptr %5, i64 0, i64 %146
  %173 = load ptr, ptr %172, align 8, !tbaa !300
  %174 = load i32, ptr %173, align 8, !tbaa !360
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
  %184 = load ptr, ptr %169, align 8, !tbaa !300
  %185 = getelementptr inbounds %struct.rtvec_def, ptr %184, i64 0, i32 1, i64 %183
  %186 = load ptr, ptr %185, align 8, !tbaa !301
  %187 = load ptr, ptr %172, align 8, !tbaa !300
  %188 = getelementptr inbounds %struct.rtvec_def, ptr %187, i64 0, i32 1, i64 %183
  %189 = load ptr, ptr %188, align 8, !tbaa !301
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
  br i1 %194, label %180, label %196, !llvm.loop !961

195:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2324, ptr noundef nonnull @.str.1) #24
  br label %196

196:                                              ; preds = %192, %176, %143, %195, %149, %155, %167, %161
  %197 = phi i32 [ %145, %195 ], [ %145, %143 ], [ 1, %167 ], [ %145, %155 ], [ %145, %149 ], [ %145, %161 ], [ %145, %176 ], [ %193, %192 ]
  %198 = icmp sgt i64 %144, 1
  br i1 %198, label %143, label %199, !prof !962, !llvm.loop !963

199:                                              ; preds = %196
  %200 = add nuw nsw i32 %197, 1
  br label %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @safe_from_earlyclobber(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !964 {
  %3 = alloca %struct.decomposition, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %3, ptr noundef %1) #25
  %4 = tail call fastcc i32 @immune_p(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.decomposition) align 8 %3) #25, !range !401
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decompose(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.decomposition) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !965 !PGOFuncName !966 {
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
  ], !prof !967

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !300
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
  %14 = load ptr, ptr %13, align 8, !tbaa !300
  %15 = lshr i32 %5, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !300
  %20 = zext i8 %19 to i64
  %21 = sub nsw i64 0, %20
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #25
  %23 = icmp eq i32 %22, 7
  br label %201

24:                                               ; preds = %7, %7
  %25 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !300
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 49
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !300
  %33 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !300
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !300
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !305
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !300
  %48 = sub nsw i64 0, %47
  %49 = tail call fastcc i32 @rhs_regno(ptr noundef %32) #25
  %50 = icmp eq i32 %49, 7
  br label %201

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !300
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
  %63 = load ptr, ptr %62, align 8, !tbaa !300
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !305
  %69 = icmp eq i32 %68, 9
  %70 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !300
  br i1 %69, label %81, label %72

72:                                               ; preds = %61
  %73 = load i32, ptr %71, align 8
  %74 = and i32 %73, 65535
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !305
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
  %93 = load ptr, ptr %92, align 8, !tbaa !300
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
  %101 = load ptr, ptr %100, align 8, !tbaa !300
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 30
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i32, ptr %86, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !300
  %111 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %108, ptr noundef nonnull %86, ptr noundef %110) #24
  %112 = load ptr, ptr %100, align 8, !tbaa !300
  br label %134

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !300
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 30
  %119 = load i32, ptr %86, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  br i1 %118, label %122, label %125

122:                                              ; preds = %113
  %123 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %121, ptr noundef nonnull %86, ptr noundef nonnull %101) #24
  %124 = load ptr, ptr %114, align 8, !tbaa !300
  br label %134

125:                                              ; preds = %113
  %126 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %121, ptr noundef nonnull %86, ptr noundef nonnull %97) #24
  %127 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !301
  br label %134

128:                                              ; preds = %95
  %129 = load i32, ptr %86, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %131, ptr noundef nonnull %86, ptr noundef nonnull %97) #24
  %133 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !301
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
  %153 = load i64, ptr %152, align 8, !tbaa !300
  %154 = load i32, ptr %4, align 8
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !300
  %160 = zext i8 %159 to i64
  %161 = add nsw i64 %153, %160
  br label %201

162:                                              ; preds = %3
  %163 = tail call i32 @true_regnum(ptr noundef nonnull %4) #24
  %164 = icmp ugt i32 %163, 52
  br i1 %164, label %165, label %169, !prof !968

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
  %178 = load ptr, ptr %177, align 8, !tbaa !300
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 37
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = tail call i32 @true_regnum(ptr noundef nonnull %4) #24
  %184 = icmp ugt i32 %183, 52
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load ptr, ptr %177, align 8, !tbaa !300
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
  %198 = load i32, ptr %197, align 4, !tbaa !305
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
define internal fastcc i32 @immune_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct.decomposition) align 8 %2) unnamed_addr #0 !prof !969 !PGOFuncName !970 {
  %4 = alloca %struct.decomposition, align 8
  %5 = load i32, ptr %2, align 8, !tbaa !971
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7, !prof !973

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !974
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !975
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %10, i32 noundef %13, ptr noundef %0, ptr noundef null) #25
  %15 = icmp eq i32 %14, 0
  br label %85

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !976
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
  %31 = load ptr, ptr %30, align 8, !tbaa.struct !977
  %32 = getelementptr inbounds i8, ptr %4, i64 16
  %33 = load i64, ptr %32, align 8, !tbaa.struct !978
  %34 = getelementptr inbounds i8, ptr %4, i64 24
  %35 = load i64, ptr %34, align 8, !tbaa.struct !979
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  %36 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !980
  %38 = tail call i32 @rtx_equal_p(ptr noundef %31, ptr noundef %37) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %29
  %41 = load i32, ptr %31, align 8
  %42 = and i32 %41, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !305
  %46 = icmp eq i32 %45, 9
  %47 = load i32, ptr %37, align 8
  %48 = and i32 %47, 65535
  %49 = zext nneg i32 %48 to i64
  br i1 %46, label %50, label %63

50:                                               ; preds = %40
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %49
  %52 = load i32, ptr %51, align 4, !tbaa !305
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !301
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
  %65 = load i32, ptr %64, align 4, !tbaa !305
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !301
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
  %79 = load i64, ptr %78, align 8, !tbaa !975
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
define dso_local i32 @find_reloads(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !981 {
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
  %38 = load ptr, ptr %37, align 8, !tbaa !300
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %49, !prof !982

43:                                               ; preds = %5
  %44 = load i32, ptr %38, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 23
  br i1 %46, label %49, label %47, !prof !983

47:                                               ; preds = %43
  %48 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %38) #24
  br label %49

49:                                               ; preds = %5, %43, %47
  %50 = phi ptr [ %48, %47 ], [ null, %5 ], [ %38, %43 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %30) #23
  store ptr %0, ptr @this_insn, align 8, !tbaa !301
  store i32 0, ptr @n_reloads, align 4, !tbaa !305
  store i32 0, ptr @n_replacements, align 4, !tbaa !305
  store i32 0, ptr @n_earlyclobbers, align 4, !tbaa !305
  store i32 %1, ptr @replace_reloads, align 4, !tbaa !305
  store i32 %3, ptr @hard_regs_live_known, align 4, !tbaa !305
  store ptr %4, ptr @static_reload_reg_p, align 8, !tbaa !301
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -9
  %54 = icmp ult i32 %53, 2
  %55 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !305
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57, !prof !984

57:                                               ; preds = %49
  %58 = sext i32 %55 to i64
  %59 = mul nsw i64 %58, 240
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @secondary_memlocs_elim, i8 0, i64 %59, i1 false)
  store i32 0, ptr @secondary_memlocs_elim_used, align 4, !tbaa !305
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, ptr %38, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %64, label %94, !prof !985

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !300
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %94, !prof !986

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %72 = icmp ult i32 %71, 53
  br i1 %72, label %73, label %94, !prof !987

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !300
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %94, !prof !988

79:                                               ; preds = %73
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #25
  %81 = icmp ult i32 %80, 53
  br i1 %81, label %82, label %94, !prof !989

82:                                               ; preds = %79
  %83 = lshr i32 %76, 16
  %84 = and i32 %83, 255
  %85 = zext nneg i32 %80 to i64
  %86 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !305
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #25
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !305
  %92 = tail call i32 @ix86_register_move_cost(i32 noundef %84, i32 noundef %87, i32 noundef %91) #24
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %2692, label %94, !prof !990

94:                                               ; preds = %82, %79, %73, %70, %64, %60
  tail call void @extract_insn(ptr noundef nonnull %0) #24
  %95 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !991
  %96 = sext i8 %95 to i32
  store i32 %96, ptr @reload_n_operands, align 4, !tbaa !305
  %97 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !993
  %98 = sext i8 %97 to i64
  %99 = icmp eq i8 %95, 0
  %100 = icmp eq i8 %97, 0
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %2692, label %102, !prof !994

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !300
  %105 = icmp slt i32 %104, 0
  %106 = lshr i32 %104, 31
  store i32 %106, ptr @this_insn_is_asm, align 4, !tbaa !305
  %107 = sext i8 %95 to i64
  %108 = shl nsw i64 %107, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %30, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), i64 %108, i1 false)
  %109 = shl nsw i64 %107, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %109, i1 false)
  %110 = icmp sgt i8 %95, 0
  br i1 %110, label %111, label %435, !prof !995

111:                                              ; preds = %102
  %112 = add nsw i32 %96, -1
  %113 = zext i32 %112 to i64
  %114 = zext nneg i32 %96 to i64
  br label %118

115:                                              ; preds = %205
  br i1 %110, label %116, label %435, !prof !780

116:                                              ; preds = %115
  %117 = zext nneg i32 %96 to i64
  br label %209

118:                                              ; preds = %111, %205
  %119 = phi i64 [ 0, %111 ], [ %207, %205 ]
  %120 = phi i32 [ -1, %111 ], [ %206, %205 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #23
  %121 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %119
  %122 = load ptr, ptr %121, align 8, !tbaa !301
  %123 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %119
  store ptr %122, ptr %123, align 8, !tbaa !301
  %124 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %119
  %125 = load ptr, ptr %124, align 8, !tbaa !301
  %126 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %119
  store i32 0, ptr %126, align 4, !tbaa !305
  %127 = load i8, ptr %125, align 1, !tbaa !300
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %205, label %129, !prof !996

129:                                              ; preds = %118
  %130 = icmp eq i64 %119, %113
  %131 = trunc i64 %119 to i32
  br label %132

132:                                              ; preds = %129, %200
  %133 = phi i8 [ %127, %129 ], [ %203, %200 ]
  %134 = phi i32 [ %120, %129 ], [ %202, %200 ]
  %135 = phi ptr [ %125, %129 ], [ %201, %200 ]
  %136 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %133) #25
  %137 = getelementptr inbounds i8, ptr %135, i64 %136
  switch i8 %133, label %200 [
    i8 61, label %138
    i8 43, label %139
    i8 37, label %140
    i8 48, label %148
    i8 49, label %148
    i8 50, label %148
    i8 51, label %148
    i8 52, label %148
    i8 53, label %148
    i8 54, label %148
    i8 55, label %148
    i8 56, label %148
    i8 57, label %148
  ], !prof !997

138:                                              ; preds = %132
  store i32 2, ptr %126, align 4, !tbaa !305
  br label %200

139:                                              ; preds = %132
  store i32 1, ptr %126, align 4, !tbaa !305
  br label %200

140:                                              ; preds = %132
  br i1 %130, label %141, label %142, !prof !998

141:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2709, ptr noundef nonnull @.str.1) #24
  br label %142

142:                                              ; preds = %140, %141
  %143 = icmp slt i32 %134, 0
  br i1 %143, label %200, label %144, !prof !999

144:                                              ; preds = %142
  %145 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !305
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %200

147:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2721, ptr noundef nonnull @.str.1) #24
  br label %200

148:                                              ; preds = %132, %132, %132, %132, %132, %132, %132, %132, %132, %132
  %149 = getelementptr inbounds i8, ptr %137, i64 -1
  %150 = call i64 @strtoul(ptr noundef nonnull %149, ptr noundef nonnull %31, i32 noundef 10) #25
  %151 = trunc i64 %150 to i32
  %152 = load ptr, ptr %31, align 8, !tbaa !301
  %153 = shl i64 %150, 32
  %154 = ashr exact i64 %153, 32
  %155 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !301
  %157 = load ptr, ptr %121, align 8, !tbaa !301
  %158 = tail call i32 @operands_match_p(ptr noundef %156, ptr noundef %157) #25
  %159 = trunc i32 %158 to i8
  %160 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %154, i64 %119
  store i8 %159, ptr %160, align 1, !tbaa !300
  %161 = and i64 %150, 4294967295
  %162 = icmp eq i64 %119, %161
  br i1 %162, label %163, label %164, !prof !1000

163:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2737, ptr noundef nonnull @.str.1) #24
  br label %164

164:                                              ; preds = %148, %163
  %165 = icmp sgt i32 %134, -1
  br i1 %165, label %166, label %200, !prof !1001

166:                                              ; preds = %164
  %167 = icmp eq i32 %134, %151
  br i1 %167, label %171, label %168, !prof !1002

168:                                              ; preds = %166
  %169 = add nuw nsw i32 %134, 1
  %170 = icmp eq i32 %169, %151
  br i1 %170, label %171, label %182, !prof !1003

171:                                              ; preds = %168, %166
  %172 = phi i64 [ -1, %168 ], [ 1, %166 ]
  %173 = add i64 %172, %150
  %174 = shl i64 %173, 32
  %175 = ashr exact i64 %174, 32
  %176 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !301
  %178 = load ptr, ptr %121, align 8, !tbaa !301
  %179 = tail call i32 @operands_match_p(ptr noundef %177, ptr noundef %178) #25
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %175, i64 %119
  store i8 %180, ptr %181, align 1, !tbaa !300
  br label %182

182:                                              ; preds = %171, %168
  %183 = zext nneg i32 %134 to i64
  %184 = icmp eq i64 %119, %183
  br i1 %184, label %189, label %185, !prof !1004

185:                                              ; preds = %182
  %186 = add nuw nsw i32 %134, 1
  %187 = zext nneg i32 %186 to i64
  %188 = icmp eq i64 %119, %187
  br i1 %188, label %189, label %200, !prof !1005

189:                                              ; preds = %185, %182
  %190 = phi i64 [ -1, %185 ], [ 1, %182 ]
  %191 = add nsw i64 %190, %119
  %192 = load ptr, ptr %155, align 8, !tbaa !301
  %193 = shl i64 %191, 32
  %194 = ashr exact i64 %193, 32
  %195 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !301
  %197 = tail call i32 @operands_match_p(ptr noundef %192, ptr noundef %196) #25
  %198 = trunc i32 %197 to i8
  %199 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %154, i64 %194
  store i8 %198, ptr %199, align 1, !tbaa !300
  br label %200

200:                                              ; preds = %142, %147, %144, %164, %189, %185, %132, %139, %138
  %201 = phi ptr [ %137, %132 ], [ %152, %189 ], [ %152, %185 ], [ %152, %164 ], [ %137, %144 ], [ %137, %147 ], [ %137, %139 ], [ %137, %138 ], [ %137, %142 ]
  %202 = phi i32 [ %134, %132 ], [ %134, %189 ], [ %134, %185 ], [ %134, %164 ], [ %134, %144 ], [ %134, %147 ], [ %134, %139 ], [ %134, %138 ], [ %131, %142 ]
  %203 = load i8, ptr %201, align 1, !tbaa !300
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %132, !prof !1006, !llvm.loop !1007

205:                                              ; preds = %200, %118
  %206 = phi i32 [ %120, %118 ], [ %202, %200 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #23
  %207 = add nuw nsw i64 %119, 1
  %208 = icmp eq i64 %207, %114
  br i1 %208, label %115, label %118, !prof !1008, !llvm.loop !1009

209:                                              ; preds = %116, %403
  %210 = phi i64 [ 0, %116 ], [ %407, %403 ]
  %211 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !301
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, 65535
  %215 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %210
  store i32 0, ptr %215, align 4, !tbaa !305
  %216 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %210
  store i32 0, ptr %216, align 4, !tbaa !305
  %217 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %210
  %218 = load i32, ptr %217, align 4, !tbaa !305
  %219 = icmp eq i32 %218, 0
  %220 = icmp eq i32 %218, 2
  %221 = select i1 %220, i32 1, i32 9
  %222 = select i1 %219, i32 0, i32 %221, !prof !1010
  %223 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %210
  store i32 %222, ptr %223, align 4, !tbaa !305
  %224 = select i1 %220, i32 5, i32 9
  %225 = select i1 %219, i32 3, i32 %224, !prof !1010
  %226 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %210
  store i32 %225, ptr %226, align 4, !tbaa !305
  %227 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %210
  %228 = load ptr, ptr %227, align 8, !tbaa !301
  %229 = load i8, ptr %228, align 1, !tbaa !300
  switch i8 %229, label %258 [
    i8 0, label %379
    i8 112, label %230
  ], !prof !1011

230:                                              ; preds = %209
  %231 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %210
  %232 = load i32, ptr %231, align 4, !tbaa !305
  %233 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %210
  %234 = load ptr, ptr %233, align 8, !tbaa !301
  %235 = trunc i64 %210 to i32
  %236 = call fastcc i32 @find_reloads_address(i32 noundef %232, ptr noundef null, ptr noundef nonnull %212, ptr noundef %234, i32 noundef %235, i32 noundef %222, i32 noundef %2, ptr noundef nonnull %0) #25
  store i32 %236, ptr %216, align 4, !tbaa !305
  %237 = load ptr, ptr %233, align 8, !tbaa !301
  %238 = load ptr, ptr %237, align 8, !tbaa !301
  %239 = load i32, ptr %238, align 8
  %240 = and i32 %239, 65535
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !305
  %244 = and i32 %243, -2
  %245 = icmp eq i32 %244, 8
  %246 = icmp eq i32 %240, 39
  %247 = or i1 %246, %245
  br i1 %247, label %248, label %252, !prof !1012

248:                                              ; preds = %230
  %249 = load ptr, ptr %211, align 8, !tbaa !301
  %250 = load i32, ptr %249, align 8
  %251 = trunc i32 %250 to i16
  switch i16 %251, label %252 [
    i16 52, label %401
    i16 49, label %401
  ]

252:                                              ; preds = %248, %230
  store ptr %238, ptr %211, align 8, !tbaa !301
  %253 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %210
  store ptr %238, ptr %253, align 8, !tbaa !301
  %254 = load i32, ptr %238, align 8
  %255 = lshr i32 %254, 16
  %256 = and i32 %255, 255
  %257 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %210
  store i32 %256, ptr %257, align 4, !tbaa !305
  br label %379

258:                                              ; preds = %209
  %259 = trunc i32 %213 to i16
  switch i16 %259, label %326 [
    i16 43, label %260
    i16 39, label %273
    i16 49, label %331
  ], !prof !1013

260:                                              ; preds = %258
  %261 = load i32, ptr %212, align 8
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 255
  %264 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %210
  %265 = load ptr, ptr %264, align 8, !tbaa !301
  %266 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !300
  %268 = trunc i64 %210 to i32
  %269 = call fastcc i32 @find_reloads_address(i32 noundef %263, ptr noundef %265, ptr noundef %267, ptr noundef nonnull %266, i32 noundef %268, i32 noundef %225, i32 noundef %2, ptr noundef nonnull %0) #25
  store i32 %269, ptr %215, align 4, !tbaa !305
  %270 = load ptr, ptr %264, align 8, !tbaa !301
  %271 = load ptr, ptr %270, align 8, !tbaa !301
  store ptr %271, ptr %211, align 8, !tbaa !301
  %272 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %210
  store ptr %271, ptr %272, align 8, !tbaa !301
  br label %379

273:                                              ; preds = %258
  %274 = icmp eq ptr %50, null
  %275 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !300
  br i1 %274, label %282, label %277, !prof !1014

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %279 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %210
  %280 = load ptr, ptr %279, align 8, !tbaa !301
  %281 = icmp eq ptr %278, %280
  br label %282

282:                                              ; preds = %277, %273
  %283 = phi i1 [ false, %273 ], [ %281, %277 ]
  %284 = icmp eq i32 %1, 0
  %285 = zext i1 %283 to i32
  %286 = trunc i64 %210 to i32
  %287 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %212, i32 noundef %286, i32 noundef %225, i32 noundef %2, i32 noundef %285, ptr noundef nonnull %0, ptr noundef nonnull %215) #25
  br i1 %284, label %324, label %288, !prof !1015

288:                                              ; preds = %282
  %289 = load i32, ptr %287, align 8
  %290 = and i32 %289, 65535
  %291 = icmp eq i32 %290, 43
  br i1 %291, label %292, label %324, !prof !1016

292:                                              ; preds = %288
  %293 = load i32, ptr %276, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 37
  br i1 %295, label %296, label %324

296:                                              ; preds = %292
  %297 = lshr i32 %293, 16
  %298 = and i32 %297, 255
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !300
  %302 = lshr i32 %289, 16
  %303 = and i32 %302, 255
  %304 = zext nneg i32 %303 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !300
  %307 = icmp ult i8 %301, %306
  br i1 %307, label %324, label %308

308:                                              ; preds = %296
  %309 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %310 = call fastcc i32 @rhs_regno(ptr noundef nonnull %276) #25
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds ptr, ptr %309, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !301
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %324

315:                                              ; preds = %308
  %316 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %276) #24
  %317 = call ptr @emit_insn_before(ptr noundef %316, ptr noundef nonnull %0) #24
  %318 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %319 = call fastcc i32 @rhs_regno(ptr noundef nonnull %276) #25
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds ptr, ptr %318, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !301
  %323 = call ptr @set_unique_reg_note(ptr noundef %317, i32 noundef 4, ptr noundef %322) #24
  br label %324

324:                                              ; preds = %315, %308, %296, %292, %288, %282
  store ptr %287, ptr %211, align 8, !tbaa !301
  %325 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %210
  store ptr %287, ptr %325, align 8, !tbaa !301
  br label %379

326:                                              ; preds = %258
  %327 = zext nneg i32 %214 to i64
  %328 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !305
  %330 = icmp eq i32 %329, 4
  br i1 %330, label %331, label %335, !prof !1017

331:                                              ; preds = %258, %326
  %332 = trunc i64 %210 to i32
  %333 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %212, i32 noundef %332, i32 noundef %225, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %215) #25
  store ptr %333, ptr %211, align 8, !tbaa !301
  %334 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %210
  store ptr %333, ptr %334, align 8, !tbaa !301
  br label %379

335:                                              ; preds = %326
  %336 = icmp eq i32 %214, 37
  br i1 %336, label %337, label %379, !prof !1018

337:                                              ; preds = %335
  %338 = call fastcc i32 @rhs_regno(ptr noundef nonnull %212) #25
  %339 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds ptr, ptr %339, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !301
  %343 = icmp eq ptr %342, null
  br i1 %343, label %361, label %344, !prof !1019

344:                                              ; preds = %337
  %345 = icmp eq ptr %50, null
  br i1 %345, label %351, label %346, !prof !1020

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %348 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %210
  %349 = load ptr, ptr %348, align 8, !tbaa !301
  %350 = icmp eq ptr %347, %349
  br i1 %350, label %361, label %351, !prof !1020

351:                                              ; preds = %346, %344
  %352 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %210
  %353 = load i32, ptr %352, align 4, !tbaa !305
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %359, !prof !1020

355:                                              ; preds = %351
  %356 = load i32, ptr %212, align 8
  %357 = lshr i32 %356, 16
  %358 = and i32 %357, 255
  store i32 %358, ptr %352, align 4, !tbaa !305
  br label %359

359:                                              ; preds = %355, %351
  store ptr %342, ptr %211, align 8, !tbaa !301
  %360 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %210
  store ptr %342, ptr %360, align 8, !tbaa !301
  br label %361

361:                                              ; preds = %359, %346, %337
  %362 = phi ptr [ %342, %359 ], [ %212, %346 ], [ %212, %337 ]
  %363 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %364 = getelementptr inbounds ptr, ptr %363, i64 %340
  %365 = load ptr, ptr %364, align 8, !tbaa !301
  %366 = icmp eq ptr %365, null
  br i1 %366, label %379, label %367, !prof !1021

367:                                              ; preds = %361
  %368 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %369 = getelementptr inbounds ptr, ptr %368, i64 %340
  %370 = load ptr, ptr %369, align 8, !tbaa !301
  %371 = icmp ne ptr %370, null
  %372 = load i32, ptr @num_not_at_initial_offset, align 4
  %373 = icmp ne i32 %372, 0
  %374 = select i1 %371, i1 true, i1 %373
  br i1 %374, label %375, label %379, !prof !1022

375:                                              ; preds = %367
  %376 = trunc i64 %210 to i32
  %377 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %362, i32 noundef %376, i32 noundef %225, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %215) #25
  store ptr %377, ptr %211, align 8, !tbaa !301
  %378 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %210
  store ptr %377, ptr %378, align 8, !tbaa !301
  br label %379

379:                                              ; preds = %361, %375, %367, %209, %252, %324, %335, %331, %260
  %380 = phi ptr [ %362, %361 ], [ %377, %375 ], [ %362, %367 ], [ %212, %209 ], [ %238, %252 ], [ %287, %324 ], [ %212, %335 ], [ %333, %331 ], [ %271, %260 ]
  %381 = load i32, ptr %380, align 8
  %382 = and i32 %381, 65535
  %383 = icmp eq i32 %382, 37
  br i1 %383, label %384, label %399, !prof !1023

384:                                              ; preds = %379
  %385 = call fastcc i32 @rhs_regno(ptr noundef nonnull %380) #25
  %386 = icmp ugt i32 %385, 52
  br i1 %386, label %387, label %390, !prof !1024

387:                                              ; preds = %384
  %388 = call i32 @reg_preferred_class(i32 noundef %385) #24
  %389 = load ptr, ptr %211, align 8, !tbaa !301
  br label %390

390:                                              ; preds = %387, %384
  %391 = phi ptr [ %389, %387 ], [ %380, %384 ]
  %392 = phi i32 [ %388, %387 ], [ 0, %384 ]
  %393 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %210
  store i32 %392, ptr %393, align 4, !tbaa !305
  %394 = call fastcc i32 @rhs_regno(ptr noundef %391) #25
  %395 = icmp ugt i32 %394, 52
  br i1 %395, label %396, label %403, !prof !1024

396:                                              ; preds = %390
  %397 = call i32 @reg_alternate_class(i32 noundef %394) #24
  %398 = icmp eq i32 %397, 0
  br label %403

399:                                              ; preds = %379
  %400 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %210
  store i32 0, ptr %400, align 4, !tbaa !305
  br label %403

401:                                              ; preds = %248, %248
  store i32 -1, ptr %103, align 8, !tbaa !300
  %402 = call i32 @find_reloads(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #25
  br label %2692

403:                                              ; preds = %390, %396, %399
  %404 = phi i1 [ false, %390 ], [ %398, %396 ], [ false, %399 ]
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %210
  store i8 %405, ptr %406, align 1, !tbaa !300
  %407 = add nuw nsw i64 %210, 1
  %408 = icmp eq i64 %407, %117
  br i1 %408, label %409, label %209, !prof !1008, !llvm.loop !1025

409:                                              ; preds = %403
  %410 = icmp ne ptr %50, null
  %411 = icmp ne i8 %95, 1
  %412 = and i1 %410, %411
  br i1 %412, label %413, label %435, !prof !1026

413:                                              ; preds = %409
  %414 = load ptr, ptr @recog_data, align 8, !tbaa !301
  %415 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !300
  %417 = icmp eq ptr %414, %416
  br i1 %417, label %418, label %435, !prof !1027

418:                                              ; preds = %413
  %419 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !301
  %420 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %421 = load ptr, ptr %420, align 8, !tbaa !300
  %422 = icmp eq ptr %419, %421
  br i1 %422, label %423, label %435, !prof !1028

423:                                              ; preds = %418
  %424 = load i32, ptr %7, align 16, !tbaa !305
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 1
  %427 = load i32, ptr %426, align 4, !tbaa !305
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %425, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !305
  store i32 %430, ptr %426, align 4, !tbaa !305
  store i32 %430, ptr %7, align 16, !tbaa !305
  %431 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 1
  %432 = load i8, ptr %431, align 1, !tbaa !300
  %433 = load i8, ptr %8, align 16, !tbaa !300
  %434 = or i8 %433, %432
  store i8 %434, ptr %8, align 16, !tbaa !300
  store i8 %434, ptr %431, align 1, !tbaa !300
  br label %435

435:                                              ; preds = %102, %115, %423, %418, %413, %409
  %436 = phi i32 [ %206, %423 ], [ %206, %418 ], [ %206, %413 ], [ %206, %409 ], [ %206, %115 ], [ -1, %102 ]
  %437 = icmp sgt i8 %97, 0
  %438 = add nsw i32 %436, 1
  %439 = icmp sgt i32 %436, -1
  %440 = zext i32 %438 to i64
  %441 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %440
  %442 = zext i32 %436 to i64
  %443 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %442
  %444 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %442
  %445 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %440
  %446 = zext i32 %96 to i64
  %447 = shl nuw nsw i64 %446, 2
  br label %448

448:                                              ; preds = %1453, %435
  %449 = phi i32 [ 0, %435 ], [ %1421, %1453 ]
  %450 = phi i32 [ 0, %435 ], [ %1422, %1453 ]
  %451 = phi i32 [ 660, %435 ], [ %1423, %1453 ]
  %452 = phi i32 [ 0, %435 ], [ %1424, %1453 ]
  %453 = phi i32 [ 0, %435 ], [ %1425, %1453 ]
  %454 = phi i32 [ 0, %435 ], [ %1428, %1453 ]
  br i1 %437, label %455, label %1420, !prof !1029

455:                                              ; preds = %448, %1412
  %456 = phi i64 [ %1418, %1412 ], [ 0, %448 ]
  %457 = phi i32 [ %1417, %1412 ], [ %453, %448 ]
  %458 = phi i32 [ %1416, %1412 ], [ %452, %448 ]
  %459 = phi i32 [ %1415, %1412 ], [ %451, %448 ]
  %460 = phi i32 [ %1414, %1412 ], [ %450, %448 ]
  %461 = phi i32 [ %1413, %1412 ], [ %449, %448 ]
  %462 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %456
  %463 = load i8, ptr %462, align 1, !tbaa !300
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %466, label %465, !prof !1030

465:                                              ; preds = %455
  br i1 %110, label %479, label %1366, !prof !1031

466:                                              ; preds = %455
  %467 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !991
  %468 = icmp sgt i8 %467, 0
  br i1 %468, label %469, label %1412

469:                                              ; preds = %466
  %470 = zext nneg i8 %467 to i64
  br label %471

471:                                              ; preds = %469, %471
  %472 = phi i64 [ 0, %469 ], [ %476, %471 ]
  %473 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !301
  %475 = call fastcc ptr @skip_alternative(ptr noundef %474) #25
  store ptr %475, ptr %473, align 8, !tbaa !301
  %476 = add nuw nsw i64 %472, 1
  %477 = icmp eq i64 %476, %470
  br i1 %477, label %1412, label %471, !llvm.loop !1032

478:                                              ; preds = %1240
  br i1 %110, label %1246, label %1363, !prof !780

479:                                              ; preds = %465, %1240
  %480 = phi i64 [ %1244, %1240 ], [ 0, %465 ]
  %481 = phi i32 [ %1079, %1240 ], [ 0, %465 ]
  %482 = phi i32 [ %1243, %1240 ], [ 0, %465 ]
  %483 = phi i32 [ %1241, %1240 ], [ 0, %465 ]
  %484 = phi i32 [ %1242, %1240 ], [ 0, %465 ]
  %485 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %480
  %486 = load ptr, ptr %485, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #23
  %487 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %480
  %488 = load ptr, ptr %487, align 8, !tbaa !301
  %489 = load i32, ptr %488, align 8
  %490 = and i32 %489, 65535
  %491 = zext nneg i32 %490 to i64
  %492 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !305
  %494 = icmp eq i32 %493, 4
  br i1 %494, label %495, label %502, !prof !1033

495:                                              ; preds = %479
  %496 = load i8, ptr %486, align 1, !tbaa !300
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %502, label %498

498:                                              ; preds = %495
  %499 = getelementptr inbounds %struct.rtx_def, ptr %488, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !300
  %501 = load i32, ptr %500, align 8
  br label %502

502:                                              ; preds = %498, %495, %479
  %503 = phi i32 [ %501, %498 ], [ %489, %495 ], [ %489, %479 ]
  %504 = phi ptr [ %500, %498 ], [ %488, %495 ], [ %488, %479 ]
  %505 = and i32 %503, 65535
  %506 = icmp eq i32 %505, 39
  br i1 %506, label %507, label %587, !prof !1034

507:                                              ; preds = %502, %584
  %508 = phi i32 [ %548, %584 ], [ %503, %502 ]
  %509 = phi i32 [ %585, %584 ], [ 0, %502 ]
  %510 = phi i32 [ %550, %584 ], [ 0, %502 ]
  %511 = phi ptr [ %549, %584 ], [ %504, %502 ]
  %512 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 0, i32 1
  %513 = load ptr, ptr %512, align 8, !tbaa !300
  %514 = load i32, ptr %513, align 8
  %515 = and i32 %514, 65535
  %516 = icmp eq i32 %515, 37
  br i1 %516, label %517, label %546, !prof !1035

517:                                              ; preds = %507
  %518 = call fastcc i32 @rhs_regno(ptr noundef nonnull %513) #25
  %519 = icmp ult i32 %518, 53
  br i1 %519, label %520, label %546, !prof !1036

520:                                              ; preds = %517
  %521 = lshr i32 %514, 16
  %522 = and i32 %521, 255
  %523 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 0, i32 1, i32 0, i32 0, i64 1
  %524 = load i32, ptr %523, align 8, !tbaa !300
  %525 = lshr i32 %508, 16
  %526 = and i32 %525, 255
  %527 = call i32 @simplify_subreg_regno(i32 noundef %518, i32 noundef %522, i32 noundef %524, i32 noundef %526) #24
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %530, !prof !1037

529:                                              ; preds = %520
  br label %530

530:                                              ; preds = %529, %520
  %531 = phi i32 [ 1, %529 ], [ %509, %520 ]
  %532 = load ptr, ptr %512, align 8, !tbaa !300
  %533 = call fastcc i32 @rhs_regno(ptr noundef %532) #25
  %534 = load i32, ptr %532, align 8
  %535 = lshr i32 %534, 16
  %536 = and i32 %535, 255
  %537 = load i32, ptr %523, align 8, !tbaa !300
  %538 = load i32, ptr %511, align 8
  %539 = lshr i32 %538, 16
  %540 = and i32 %539, 255
  %541 = call i32 @subreg_regno_offset(i32 noundef %533, i32 noundef %536, i32 noundef %537, i32 noundef %540) #24
  %542 = add i32 %541, %510
  %543 = load ptr, ptr %512, align 8, !tbaa !300
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
  %554 = load i32, ptr %553, align 4, !tbaa !305
  %555 = icmp eq i32 %554, 9
  %556 = icmp eq i32 %547, 49
  %557 = or i1 %555, %556
  br i1 %557, label %583, label %558, !prof !1038

558:                                              ; preds = %546
  %559 = trunc i32 %548 to i16
  switch i16 %559, label %584 [
    i16 43, label %563
    i16 37, label %560
  ], !prof !1039

560:                                              ; preds = %558
  %561 = call fastcc i32 @rhs_regno(ptr noundef nonnull %549) #25
  %562 = icmp ugt i32 %561, 52
  br i1 %562, label %563, label %584, !prof !1040

563:                                              ; preds = %558, %560
  %564 = lshr i32 %548, 16
  %565 = and i32 %564, 255
  %566 = zext nneg i32 %565 to i64
  %567 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %566
  %568 = load i8, ptr %567, align 1, !tbaa !300
  %569 = zext i8 %568 to i32
  %570 = shl nuw nsw i32 %569, 3
  %571 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !305
  %572 = and i32 %571, 32
  %573 = icmp eq i32 %572, 0
  %574 = select i1 %573, i32 128, i32 256
  %575 = icmp ult i32 %570, %574
  br i1 %575, label %576, label %584, !prof !1041

576:                                              ; preds = %563
  %577 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %480
  %578 = load i32, ptr %577, align 4, !tbaa !305
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %579
  %581 = load i8, ptr %580, align 1, !tbaa !300
  %582 = icmp ugt i8 %581, %568
  br i1 %582, label %583, label %584, !prof !1042

583:                                              ; preds = %576, %546
  br label %584

584:                                              ; preds = %558, %583, %576, %563, %560
  %585 = phi i32 [ 1, %583 ], [ %551, %576 ], [ %551, %563 ], [ %551, %560 ], [ %551, %558 ]
  %586 = icmp eq i32 %547, 39
  br i1 %586, label %507, label %587, !prof !1043, !llvm.loop !1044

587:                                              ; preds = %584, %502
  %588 = phi ptr [ %504, %502 ], [ %549, %584 ]
  %589 = phi i32 [ 0, %502 ], [ %550, %584 ]
  %590 = phi i32 [ 0, %502 ], [ %585, %584 ]
  %591 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %480
  store i32 0, ptr %591, align 4, !tbaa !305
  %592 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %480
  store i8 0, ptr %592, align 1, !tbaa !300
  %593 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %480
  store i8 0, ptr %593, align 1, !tbaa !300
  %594 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %480
  store i8 0, ptr %594, align 1, !tbaa !300
  %595 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %480
  store i8 0, ptr %595, align 1, !tbaa !300
  %596 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %480
  store i32 -1, ptr %596, align 4, !tbaa !305
  %597 = load i8, ptr %486, align 1, !tbaa !300
  switch i8 %597, label %599 [
    i8 0, label %598
    i8 44, label %598
  ], !prof !1045

598:                                              ; preds = %587, %587
  br label %599

599:                                              ; preds = %587, %598
  %600 = phi i32 [ 1, %598 ], [ 0, %587 ]
  %601 = phi i32 [ 0, %598 ], [ 1, %587 ]
  %602 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %480
  br label %603

603:                                              ; preds = %1055, %599
  %604 = phi i32 [ %484, %599 ], [ %1056, %1055 ]
  %605 = phi i32 [ %483, %599 ], [ %1057, %1055 ]
  %606 = phi i32 [ %482, %599 ], [ %1058, %1055 ]
  %607 = phi ptr [ %486, %599 ], [ %1071, %1055 ]
  %608 = phi i32 [ %600, %599 ], [ %1061, %1055 ]
  %609 = phi i32 [ 0, %599 ], [ %1062, %1055 ]
  %610 = phi i32 [ %601, %599 ], [ %1063, %1055 ]
  %611 = phi i32 [ 0, %599 ], [ %1064, %1055 ]
  %612 = phi i32 [ %481, %599 ], [ %1066, %1055 ]
  %613 = phi i32 [ %590, %599 ], [ %1067, %1055 ]
  %614 = phi i8 [ 0, %599 ], [ %1068, %1055 ]
  %615 = phi i32 [ 0, %599 ], [ %1069, %1055 ]
  %616 = phi i8 [ 0, %599 ], [ %1070, %1055 ]
  %617 = load i8, ptr %607, align 1, !tbaa !300
  %618 = sext i8 %617 to i32
  %619 = call fastcc i64 @insn_constraint_len(i8 noundef signext %617) #25
  switch i8 %617, label %1017 [
    i8 0, label %1051
    i8 44, label %1052
    i8 61, label %1055
    i8 43, label %1055
    i8 42, label %1055
    i8 37, label %1055
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
    i8 112, label %757
    i8 109, label %758
    i8 60, label %787
    i8 62, label %801
    i8 86, label %815
    i8 111, label %849
    i8 38, label %919
    i8 69, label %920
    i8 70, label %920
    i8 71, label %931
    i8 72, label %931
    i8 115, label %940
    i8 105, label %620
    i8 110, label %960
    i8 73, label %967
    i8 74, label %967
    i8 75, label %967
    i8 76, label %967
    i8 77, label %967
    i8 78, label %967
    i8 79, label %967
    i8 80, label %967
    i8 88, label %978
    i8 103, label %979
    i8 114, label %1012
  ], !prof !1046

620:                                              ; preds = %603
  %621 = load i32, ptr %588, align 8
  br label %946

622:                                              ; preds = %603
  %623 = add nsw i32 %606, 6
  br label %1055

624:                                              ; preds = %603
  br label %1055

625:                                              ; preds = %603, %625
  %626 = phi ptr [ %627, %625 ], [ %607, %603 ]
  %627 = getelementptr inbounds i8, ptr %626, i64 1
  %628 = load i8, ptr %627, align 1, !tbaa !300
  switch i8 %628, label %625 [
    i8 0, label %1055
    i8 44, label %1055
  ]

629:                                              ; preds = %603, %603, %603, %603, %603, %603, %603, %603, %603, %603
  %630 = icmp ne i32 %454, 0
  %631 = call i64 @strtoul(ptr noundef nonnull %607, ptr noundef nonnull %32, i32 noundef 10) #25
  %632 = trunc i64 %631 to i32
  %633 = load ptr, ptr %32, align 8, !tbaa !301
  store i32 %632, ptr %596, align 4, !tbaa !305
  br i1 %630, label %634, label %658, !prof !1047

634:                                              ; preds = %629
  %635 = shl nsw i32 %436, 1
  %636 = or disjoint i32 %635, 1
  %637 = icmp eq i64 %480, %440
  %638 = icmp eq i32 %436, %632
  br i1 %638, label %639, label %640, !prof !1048

639:                                              ; preds = %634
  br i1 %637, label %658, label %642, !prof !1049

640:                                              ; preds = %634
  %641 = icmp eq i32 %438, %632
  br i1 %641, label %642, label %644, !prof !1050

642:                                              ; preds = %639, %640
  %643 = sub i32 %636, %632
  br label %644

644:                                              ; preds = %640, %642
  %645 = phi i32 [ %643, %642 ], [ %632, %640 ]
  %646 = icmp eq i64 %480, %442
  %647 = trunc i64 %480 to i32
  %648 = sub i32 %636, %647
  %649 = select i1 %646, i1 true, i1 %637
  %650 = select i1 %649, i32 %648, i32 %647
  %651 = sext i32 %650 to i64
  %652 = sext i32 %645 to i64
  %653 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %652, i64 %651
  %654 = load i8, ptr %653, align 1, !tbaa !300
  %655 = icmp eq i8 %654, 0
  %656 = shl i64 %631, 32
  %657 = ashr exact i64 %656, 32
  br i1 %655, label %691, label %664, !prof !1051

658:                                              ; preds = %639, %629
  %659 = shl i64 %631, 32
  %660 = ashr exact i64 %659, 32
  %661 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %660, i64 %480
  %662 = load i8, ptr %661, align 1, !tbaa !300
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %691, label %664, !prof !1052

664:                                              ; preds = %644, %658
  %665 = phi i64 [ %660, %658 ], [ %657, %644 ]
  %666 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %665
  %667 = load i8, ptr %666, align 1, !tbaa !300
  %668 = icmp eq i8 %667, 0
  br i1 %668, label %684, label %669, !prof !1053

669:                                              ; preds = %664
  %670 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %665
  %671 = load ptr, ptr %670, align 8, !tbaa !301
  %672 = load i32, ptr %671, align 8
  %673 = and i32 %672, 65535
  %674 = icmp eq i32 %673, 43
  br i1 %674, label %675, label %684

675:                                              ; preds = %669
  %676 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %665
  %677 = load i32, ptr %676, align 4, !tbaa !305
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %684

679:                                              ; preds = %675
  %680 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %665
  %681 = load i8, ptr %680, align 1, !tbaa !300
  %682 = icmp eq i8 %681, 0
  %683 = select i1 %682, i32 1, i32 %605
  br label %684

684:                                              ; preds = %679, %675, %669, %664
  %685 = phi i32 [ %605, %675 ], [ %605, %669 ], [ %605, %664 ], [ %683, %679 ]
  %686 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %665
  %687 = load i8, ptr %686, align 1, !tbaa !300
  %688 = sext i8 %687 to i32
  %689 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %665
  %690 = load i32, ptr %689, align 4, !tbaa !305
  br label %736

691:                                              ; preds = %644, %658
  %692 = phi i64 [ %660, %658 ], [ %657, %644 ]
  %693 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %692
  %694 = load i8, ptr %693, align 1, !tbaa !300
  %695 = icmp ne i8 %694, 0
  %696 = zext i1 %695 to i32
  %697 = add nsw i32 %604, %696
  store i8 0, ptr %693, align 1, !tbaa !300
  %698 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %692
  %699 = load i32, ptr %698, align 4, !tbaa !305
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %702, !prof !1054

701:                                              ; preds = %691
  br label %702

702:                                              ; preds = %701, %691
  %703 = phi i32 [ 1, %701 ], [ %605, %691 ]
  %704 = icmp eq i64 %480, %440
  %705 = icmp eq i64 %480, %442
  %706 = trunc i64 %480 to i32
  %707 = select i1 %630, i1 %705, i1 false
  %708 = select i1 %630, i1 %704, i1 false
  %709 = select i1 %708, i32 %436, i32 %706
  %710 = select i1 %707, i32 %438, i32 %709
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %711
  %713 = icmp eq i32 %436, %632
  %714 = select i1 %630, i1 %713, i1 false
  %715 = icmp eq i32 %438, %632
  %716 = select i1 %630, i1 %715, i1 false
  %717 = select i1 %716, i32 %436, i32 %632
  %718 = select i1 %714, i32 %438, i32 %717, !prof !1055
  %719 = load ptr, ptr %487, align 8, !tbaa !301
  %720 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %692
  %721 = load ptr, ptr %720, align 8, !tbaa !301
  %722 = load ptr, ptr %712, align 8, !tbaa !301
  %723 = sext i32 %718 to i64
  %724 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %723
  %725 = load ptr, ptr %724, align 8, !tbaa !301
  %726 = load i32, ptr %602, align 4, !tbaa !305
  %727 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %692
  %728 = load i32, ptr %727, align 4, !tbaa !305
  %729 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %692
  %730 = load i8, ptr %729, align 1, !tbaa !300
  %731 = sext i8 %730 to i32
  %732 = call fastcc ptr @find_dummy_reload(ptr noundef %719, ptr noundef %721, ptr noundef %722, ptr noundef %725, i32 noundef %726, i32 noundef %728, i32 noundef %699, i32 noundef -1, i32 noundef %731) #25
  %733 = icmp ne ptr %732, null
  %734 = sext i1 %733 to i32
  %735 = add nsw i32 %697, %734
  br label %736

736:                                              ; preds = %702, %684
  %737 = phi i32 [ %699, %702 ], [ %690, %684 ]
  %738 = phi i32 [ %735, %702 ], [ %604, %684 ]
  %739 = phi i32 [ %703, %702 ], [ %685, %684 ]
  %740 = phi i32 [ %609, %702 ], [ %688, %684 ]
  store i32 %737, ptr %591, align 4, !tbaa !305
  %741 = icmp eq i32 %740, 0
  %742 = icmp ne i32 %613, 0
  %743 = select i1 %741, i1 true, i1 %742
  br i1 %743, label %744, label %1055, !prof !1056

744:                                              ; preds = %736
  %745 = icmp eq i64 %480, 0
  br i1 %745, label %1055, label %746, !prof !1057

746:                                              ; preds = %744, %753
  %747 = phi i64 [ %755, %753 ], [ 0, %744 ]
  %748 = phi i32 [ %754, %753 ], [ 0, %744 ]
  %749 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %747
  %750 = load i32, ptr %749, align 4, !tbaa !305
  %751 = icmp eq i32 %750, %632
  br i1 %751, label %752, label %753, !prof !1058

752:                                              ; preds = %746
  br label %753

753:                                              ; preds = %746, %752
  %754 = phi i32 [ 1, %752 ], [ %748, %746 ]
  %755 = add nuw nsw i64 %747, 1
  %756 = icmp eq i64 %755, %480
  br i1 %756, label %1055, label %746, !prof !1059, !llvm.loop !1060

757:                                              ; preds = %603
  store i32 13, ptr %591, align 4, !tbaa !305
  br label %1055

758:                                              ; preds = %603
  %759 = icmp eq i32 %613, 0
  br i1 %759, label %760, label %1055, !prof !1061

760:                                              ; preds = %758
  %761 = load i32, ptr %588, align 8
  %762 = and i32 %761, 65535
  %763 = trunc i32 %761 to i16
  switch i16 %763, label %774 [
    i16 43, label %773
    i16 37, label %764
  ], !prof !1062

764:                                              ; preds = %760
  %765 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %766 = icmp ugt i32 %765, 52
  br i1 %766, label %767, label %774, !prof !1063

767:                                              ; preds = %764
  %768 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %769 = zext i32 %765 to i64
  %770 = getelementptr inbounds i16, ptr %768, i64 %769
  %771 = load i16, ptr %770, align 2, !tbaa !349
  %772 = icmp slt i16 %771, 0
  br i1 %772, label %773, label %774, !prof !1064

773:                                              ; preds = %760, %767
  br label %774

774:                                              ; preds = %760, %773, %767, %764
  %775 = phi i32 [ 1, %773 ], [ %608, %767 ], [ %608, %764 ], [ %608, %760 ]
  %776 = zext nneg i32 %762 to i64
  %777 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !305
  %779 = icmp ne i32 %778, 9
  %780 = icmp eq i32 %762, 121
  %781 = or i1 %780, %779
  br i1 %781, label %1055, label %782, !prof !1065

782:                                              ; preds = %774
  %783 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !1066
  %784 = call zeroext i8 %783(ptr noundef nonnull %588) #24
  %785 = icmp eq i8 %784, 0
  %786 = select i1 %785, i32 0, i32 %610, !prof !1067
  br label %1055

787:                                              ; preds = %603
  %788 = load i32, ptr %588, align 8
  %789 = and i32 %788, 65535
  %790 = icmp eq i32 %789, 43
  br i1 %790, label %791, label %1055

791:                                              ; preds = %787
  %792 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %480
  %793 = load i32, ptr %792, align 4, !tbaa !305
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %795, label %1055

795:                                              ; preds = %791
  %796 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %797 = load ptr, ptr %796, align 8, !tbaa !300
  %798 = load i32, ptr %797, align 8
  %799 = trunc i32 %798 to i16
  switch i16 %799, label %1055 [
    i16 74, label %800
    i16 76, label %800
  ]

800:                                              ; preds = %795, %795
  br label %1055

801:                                              ; preds = %603
  %802 = load i32, ptr %588, align 8
  %803 = and i32 %802, 65535
  %804 = icmp eq i32 %803, 43
  br i1 %804, label %805, label %1055

805:                                              ; preds = %801
  %806 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %480
  %807 = load i32, ptr %806, align 4, !tbaa !305
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %1055

809:                                              ; preds = %805
  %810 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %811 = load ptr, ptr %810, align 8, !tbaa !300
  %812 = load i32, ptr %811, align 8
  %813 = trunc i32 %812 to i16
  switch i16 %813, label %1055 [
    i16 75, label %814
    i16 77, label %814
  ]

814:                                              ; preds = %809, %809
  br label %1055

815:                                              ; preds = %603
  %816 = icmp eq i32 %613, 0
  br i1 %816, label %817, label %1055

817:                                              ; preds = %815
  %818 = load i32, ptr %588, align 8
  %819 = and i32 %818, 65535
  %820 = icmp eq i32 %819, 43
  br i1 %820, label %821, label %1055

821:                                              ; preds = %817
  %822 = icmp eq i32 %2, 0
  br i1 %822, label %826, label %823

823:                                              ; preds = %821
  %824 = call i32 @offsettable_memref_p(ptr noundef nonnull %588) #24
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %835, label %1055

826:                                              ; preds = %821
  %827 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %588) #24
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %1055

829:                                              ; preds = %826
  %830 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %831 = load ptr, ptr %830, align 8, !tbaa !300
  %832 = load i32, ptr %831, align 8
  %833 = and i32 %832, 65535
  %834 = icmp eq i32 %833, 37
  br i1 %834, label %1055, label %848

835:                                              ; preds = %823
  %836 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %837 = load ptr, ptr %836, align 8, !tbaa !300
  %838 = load i32, ptr %837, align 8
  %839 = and i32 %838, 65535
  %840 = icmp eq i32 %839, 37
  br i1 %840, label %841, label %848

841:                                              ; preds = %835
  %842 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %843 = call fastcc i32 @rhs_regno(ptr noundef nonnull %837) #25
  %844 = zext i32 %843 to i64
  %845 = getelementptr inbounds ptr, ptr %842, i64 %844
  %846 = load ptr, ptr %845, align 8, !tbaa !301
  %847 = icmp eq ptr %846, null
  br i1 %847, label %848, label %1055

848:                                              ; preds = %835, %841, %829
  br label %1055

849:                                              ; preds = %603
  %850 = icmp eq i32 %613, 0
  br i1 %850, label %851, label %1055, !prof !1068

851:                                              ; preds = %849
  %852 = load i32, ptr %588, align 8
  %853 = and i32 %852, 65535
  %854 = icmp eq i32 %853, 43
  br i1 %854, label %855, label %869, !prof !1069

855:                                              ; preds = %851
  %856 = icmp eq i32 %2, 0
  br i1 %856, label %860, label %857, !prof !1070

857:                                              ; preds = %855
  %858 = call i32 @offsettable_memref_p(ptr noundef nonnull %588) #24
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %863, label %897

860:                                              ; preds = %855
  %861 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %588) #24
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %897, !prof !1071

863:                                              ; preds = %860, %857
  %864 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %480
  %865 = load i32, ptr %864, align 4, !tbaa !305
  %866 = icmp eq i32 %865, 1
  br i1 %866, label %897, label %867

867:                                              ; preds = %863
  %868 = load i32, ptr %588, align 8
  br label %869

869:                                              ; preds = %867, %851
  %870 = phi i32 [ %868, %867 ], [ %852, %851 ]
  %871 = and i32 %870, 65535
  %872 = icmp eq i32 %871, 37
  br i1 %872, label %873, label %898, !prof !1072

873:                                              ; preds = %869
  %874 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %875 = icmp ugt i32 %874, 52
  br i1 %875, label %876, label %898, !prof !1073

876:                                              ; preds = %873
  %877 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %878 = zext i32 %874 to i64
  %879 = getelementptr inbounds i16, ptr %877, i64 %878
  %880 = load i16, ptr %879, align 2, !tbaa !349
  %881 = icmp slt i16 %880, 0
  br i1 %881, label %882, label %898, !prof !1074

882:                                              ; preds = %876
  %883 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %884 = getelementptr inbounds ptr, ptr %883, i64 %878
  %885 = load ptr, ptr %884, align 8, !tbaa !301
  %886 = icmp eq ptr %885, null
  br i1 %886, label %890, label %887, !prof !1075

887:                                              ; preds = %882
  %888 = call i32 @offsettable_memref_p(ptr noundef nonnull %885) #24
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %897, !prof !1075

890:                                              ; preds = %887, %882
  %891 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %892 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %893 = zext i32 %892 to i64
  %894 = getelementptr inbounds ptr, ptr %891, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !301
  %896 = icmp eq ptr %895, null
  br i1 %896, label %898, label %897

897:                                              ; preds = %890, %887, %863, %860, %857
  br label %898

898:                                              ; preds = %897, %890, %876, %873, %869
  %899 = phi i32 [ 1, %897 ], [ %608, %890 ], [ %608, %876 ], [ %608, %873 ], [ %608, %869 ]
  %900 = load i32, ptr %588, align 8
  %901 = and i32 %900, 65535
  %902 = zext nneg i32 %901 to i64
  %903 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %902
  %904 = load i32, ptr %903, align 4, !tbaa !305
  %905 = icmp ne i32 %904, 9
  %906 = icmp eq i32 %901, 121
  %907 = or i1 %905, %906
  br i1 %907, label %915, label %908, !prof !1076

908:                                              ; preds = %898
  %909 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !1066
  %910 = call zeroext i8 %909(ptr noundef nonnull %588) #24
  %911 = icmp eq i8 %910, 0
  br i1 %911, label %918, label %912, !prof !1077

912:                                              ; preds = %908
  %913 = load i32, ptr %588, align 8
  %914 = and i32 %913, 65535
  br label %915

915:                                              ; preds = %912, %898
  %916 = phi i32 [ %914, %912 ], [ %901, %898 ]
  %917 = icmp eq i32 %916, 43
  br i1 %917, label %918, label %1055, !prof !1078

918:                                              ; preds = %915, %908
  br label %1055

919:                                              ; preds = %603
  br label %1055

920:                                              ; preds = %603, %603
  %921 = load i32, ptr %588, align 8
  %922 = trunc i32 %921 to i16
  switch i16 %922, label %1055 [
    i16 32, label %930
    i16 33, label %923
  ], !prof !1079

923:                                              ; preds = %920
  %924 = lshr i32 %921, 16
  %925 = and i32 %924, 255
  %926 = zext nneg i32 %925 to i64
  %927 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %926
  %928 = load i8, ptr %927, align 1, !tbaa !300
  %929 = icmp eq i8 %928, 17
  br i1 %929, label %930, label %1055

930:                                              ; preds = %920, %923
  br label %1055

931:                                              ; preds = %603, %603
  %932 = load i32, ptr %588, align 8
  %933 = and i32 %932, 65535
  %934 = icmp eq i32 %933, 32
  br i1 %934, label %935, label %1055, !prof !1080

935:                                              ; preds = %931
  %936 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %937 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %588, i32 noundef %936) #24
  %938 = icmp eq i8 %937, 0
  %939 = select i1 %938, i32 %608, i32 1, !prof !1081
  br label %1055

940:                                              ; preds = %603
  %941 = load i32, ptr %588, align 8
  %942 = trunc i32 %941 to i16
  switch i16 %942, label %946 [
    i16 30, label %1055
    i16 32, label %943
  ], !prof !1082

943:                                              ; preds = %940
  %944 = and i32 %941, 16711680
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %1055, label %946

946:                                              ; preds = %620, %940, %943
  %947 = phi i32 [ %621, %620 ], [ %941, %940 ], [ %941, %943 ]
  %948 = and i32 %947, 65535
  %949 = zext nneg i32 %948 to i64
  %950 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %949
  %951 = load i32, ptr %950, align 4, !tbaa !305
  %952 = icmp eq i32 %951, 9
  br i1 %952, label %953, label %1055, !prof !1083

953:                                              ; preds = %946
  %954 = load i32, ptr @flag_pic, align 4, !tbaa !305
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %959, label %956, !prof !1084

956:                                              ; preds = %953
  %957 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %588) #24
  %958 = icmp eq i8 %957, 0
  br i1 %958, label %1055, label %959

959:                                              ; preds = %956, %953
  br label %1055

960:                                              ; preds = %603
  %961 = load i32, ptr %588, align 8
  %962 = trunc i32 %961 to i16
  switch i16 %962, label %1055 [
    i16 30, label %966
    i16 32, label %963
  ], !prof !1085

963:                                              ; preds = %960
  %964 = and i32 %961, 16711680
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %1055

966:                                              ; preds = %960, %963
  br label %1055

967:                                              ; preds = %603, %603, %603, %603, %603, %603, %603, %603
  %968 = load i32, ptr %588, align 8
  %969 = and i32 %968, 65535
  %970 = icmp eq i32 %969, 30
  br i1 %970, label %971, label %1055, !prof !1086

971:                                              ; preds = %967
  %972 = getelementptr inbounds %struct.rtx_def, ptr %588, i64 0, i32 1
  %973 = load i64, ptr %972, align 8, !tbaa !300
  %974 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %975 = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %973, i32 noundef %974) #24
  %976 = icmp eq i8 %975, 0
  %977 = select i1 %976, i32 %608, i32 1, !prof !1087
  br label %1055

978:                                              ; preds = %603
  br label %1055

979:                                              ; preds = %603
  %980 = icmp eq i32 %613, 0
  br i1 %980, label %981, label %1012, !prof !1088

981:                                              ; preds = %979
  %982 = load i32, ptr %588, align 8
  %983 = trunc i32 %982 to i16
  switch i16 %983, label %984 [
    i16 49, label %1012
    i16 38, label %1012
  ], !prof !1089

984:                                              ; preds = %981
  %985 = and i32 %982, 65535
  %986 = zext nneg i32 %985 to i64
  %987 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %986
  %988 = load i32, ptr %987, align 4, !tbaa !305
  %989 = icmp eq i32 %988, 9
  %990 = load i32, ptr @flag_pic, align 4
  %991 = icmp ne i32 %990, 0
  %992 = select i1 %989, i1 %991, i1 false
  br i1 %992, label %993, label %998, !prof !1090

993:                                              ; preds = %984
  %994 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %588) #24
  %995 = icmp eq i8 %994, 0
  br i1 %995, label %1012, label %996

996:                                              ; preds = %993
  %997 = load i32, ptr %588, align 8
  br label %998

998:                                              ; preds = %996, %984
  %999 = phi i32 [ %997, %996 ], [ %982, %984 ]
  %1000 = and i32 %999, 65535
  %1001 = icmp eq i32 %1000, 37
  br i1 %1001, label %1002, label %1011, !prof !1091

1002:                                             ; preds = %998
  %1003 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %1004 = icmp ugt i32 %1003, 52
  br i1 %1004, label %1005, label %1012, !prof !1092

1005:                                             ; preds = %1002
  %1006 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %1007 = zext i32 %1003 to i64
  %1008 = getelementptr inbounds i16, ptr %1006, i64 %1007
  %1009 = load i16, ptr %1008, align 2, !tbaa !349
  %1010 = icmp slt i16 %1009, 0
  br i1 %1010, label %1011, label %1012, !prof !1093

1011:                                             ; preds = %1005, %998
  br label %1012

1012:                                             ; preds = %981, %981, %979, %993, %1002, %1005, %1011, %603
  %1013 = phi i32 [ %608, %603 ], [ %608, %979 ], [ 1, %1011 ], [ %608, %1005 ], [ %608, %1002 ], [ %608, %993 ], [ %608, %981 ], [ %608, %981 ]
  %1014 = load i32, ptr %591, align 4, !tbaa !305
  %1015 = zext i32 %1014 to i64
  %1016 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1015, i64 13
  br label %1033

1017:                                             ; preds = %603
  %1018 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %1019 = call i32 @regclass_for_constraint(i32 noundef %1018) #24
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1021, label %1026, !prof !1094

1021:                                             ; preds = %1017
  %1022 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %1023 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %588, i32 noundef %1022) #24
  %1024 = icmp eq i8 %1023, 0
  br i1 %1024, label %1055, label %1025, !prof !1095

1025:                                             ; preds = %1021
  br label %1055

1026:                                             ; preds = %1017
  %1027 = load i32, ptr %591, align 4, !tbaa !305
  %1028 = zext i32 %1027 to i64
  %1029 = call i32 @lookup_constraint(ptr noundef nonnull %607) #24
  %1030 = call i32 @regclass_for_constraint(i32 noundef %1029) #24
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1028, i64 %1031
  br label %1033

1033:                                             ; preds = %1026, %1012
  %1034 = phi ptr [ %1016, %1012 ], [ %1032, %1026 ]
  %1035 = phi i32 [ %1013, %1012 ], [ %608, %1026 ]
  %1036 = load i32, ptr %1034, align 4, !tbaa !305
  store i32 %1036, ptr %591, align 4, !tbaa !305
  %1037 = load i32, ptr %588, align 8
  %1038 = and i32 %1037, 16711680
  %1039 = icmp eq i32 %1038, 65536
  br i1 %1039, label %1055, label %1040, !prof !1096

1040:                                             ; preds = %1033
  %1041 = and i32 %1037, 65535
  %1042 = icmp eq i32 %1041, 37
  br i1 %1042, label %1043, label %1055, !prof !1097

1043:                                             ; preds = %1040
  %1044 = load ptr, ptr %487, align 8, !tbaa !301
  %1045 = load i32, ptr %1044, align 8
  %1046 = lshr i32 %1045, 16
  %1047 = and i32 %1046, 255
  %1048 = call i32 @reg_fits_class_p(ptr noundef nonnull %588, i32 noundef %1036, i32 noundef %589, i32 noundef %1047) #24
  %1049 = icmp eq i32 %1048, 0
  %1050 = select i1 %1049, i32 %1035, i32 1, !prof !1098
  br label %1055

1051:                                             ; preds = %603
  br label %1052

1052:                                             ; preds = %603, %1051
  %1053 = phi i64 [ 0, %1051 ], [ %619, %603 ]
  %1054 = getelementptr inbounds i8, ptr %607, i64 %1053
  br label %1073

1055:                                             ; preds = %753, %625, %625, %744, %829, %1043, %971, %935, %782, %960, %940, %920, %915, %918, %809, %795, %774, %622, %624, %757, %919, %603, %978, %603, %603, %603, %736, %758, %800, %791, %787, %814, %805, %801, %815, %848, %841, %826, %823, %817, %849, %930, %923, %931, %943, %959, %956, %946, %966, %963, %967, %1025, %1021, %1033, %1040
  %1056 = phi i32 [ %604, %1025 ], [ %604, %1021 ], [ %604, %1033 ], [ %604, %1040 ], [ %604, %978 ], [ %604, %967 ], [ %604, %966 ], [ %604, %963 ], [ %604, %959 ], [ %604, %956 ], [ %604, %946 ], [ %604, %940 ], [ %604, %943 ], [ %604, %931 ], [ %604, %930 ], [ %604, %923 ], [ %604, %919 ], [ %604, %849 ], [ %604, %815 ], [ %604, %823 ], [ %604, %841 ], [ %604, %848 ], [ %604, %826 ], [ %604, %817 ], [ %604, %805 ], [ %604, %814 ], [ %604, %801 ], [ %604, %791 ], [ %604, %800 ], [ %604, %787 ], [ %604, %758 ], [ %604, %757 ], [ %738, %736 ], [ %604, %624 ], [ %604, %622 ], [ %604, %603 ], [ %604, %603 ], [ %604, %603 ], [ %604, %603 ], [ %604, %782 ], [ %604, %774 ], [ %604, %795 ], [ %604, %809 ], [ %604, %918 ], [ %604, %915 ], [ %604, %920 ], [ %604, %935 ], [ %604, %960 ], [ %604, %971 ], [ %604, %1043 ], [ %604, %829 ], [ %738, %744 ], [ %604, %625 ], [ %604, %625 ], [ %738, %753 ]
  %1057 = phi i32 [ %605, %1025 ], [ %605, %1021 ], [ %605, %1033 ], [ %605, %1040 ], [ %605, %978 ], [ %605, %967 ], [ %605, %966 ], [ %605, %963 ], [ %605, %959 ], [ %605, %956 ], [ %605, %946 ], [ %605, %940 ], [ %605, %943 ], [ %605, %931 ], [ %605, %930 ], [ %605, %923 ], [ %605, %919 ], [ %605, %849 ], [ %605, %815 ], [ %605, %823 ], [ %605, %841 ], [ %605, %848 ], [ %605, %826 ], [ %605, %817 ], [ %605, %805 ], [ %605, %814 ], [ %605, %801 ], [ %605, %791 ], [ %605, %800 ], [ %605, %787 ], [ %605, %758 ], [ %605, %757 ], [ %739, %736 ], [ %605, %624 ], [ %605, %622 ], [ %605, %603 ], [ %605, %603 ], [ %605, %603 ], [ %605, %603 ], [ %605, %782 ], [ %605, %774 ], [ %605, %795 ], [ %605, %809 ], [ %605, %918 ], [ %605, %915 ], [ %605, %920 ], [ %605, %935 ], [ %605, %960 ], [ %605, %971 ], [ %605, %1043 ], [ %605, %829 ], [ %739, %744 ], [ %605, %625 ], [ %605, %625 ], [ %739, %753 ]
  %1058 = phi i32 [ %606, %1025 ], [ %606, %1021 ], [ %606, %1033 ], [ %606, %1040 ], [ %606, %978 ], [ %606, %967 ], [ %606, %966 ], [ %606, %963 ], [ %606, %959 ], [ %606, %956 ], [ %606, %946 ], [ %606, %940 ], [ %606, %943 ], [ %606, %931 ], [ %606, %930 ], [ %606, %923 ], [ %606, %919 ], [ %606, %849 ], [ %606, %815 ], [ %606, %823 ], [ %606, %841 ], [ %606, %848 ], [ %606, %826 ], [ %606, %817 ], [ %606, %805 ], [ %606, %814 ], [ %606, %801 ], [ %606, %791 ], [ %606, %800 ], [ %606, %787 ], [ %606, %758 ], [ %606, %757 ], [ %606, %736 ], [ 600, %624 ], [ %623, %622 ], [ %606, %603 ], [ %606, %603 ], [ %606, %603 ], [ %606, %603 ], [ %606, %782 ], [ %606, %774 ], [ %606, %795 ], [ %606, %809 ], [ %606, %918 ], [ %606, %915 ], [ %606, %920 ], [ %606, %935 ], [ %606, %960 ], [ %606, %971 ], [ %606, %1043 ], [ %606, %829 ], [ %606, %744 ], [ %606, %625 ], [ %606, %625 ], [ %606, %753 ]
  %1059 = phi ptr [ %607, %1025 ], [ %607, %1021 ], [ %607, %1033 ], [ %607, %1040 ], [ %607, %978 ], [ %607, %967 ], [ %607, %966 ], [ %607, %963 ], [ %607, %959 ], [ %607, %956 ], [ %607, %946 ], [ %607, %940 ], [ %607, %943 ], [ %607, %931 ], [ %607, %930 ], [ %607, %923 ], [ %607, %919 ], [ %607, %849 ], [ %607, %815 ], [ %607, %823 ], [ %607, %841 ], [ %607, %848 ], [ %607, %826 ], [ %607, %817 ], [ %607, %805 ], [ %607, %814 ], [ %607, %801 ], [ %607, %791 ], [ %607, %800 ], [ %607, %787 ], [ %607, %758 ], [ %607, %757 ], [ %633, %736 ], [ %607, %624 ], [ %607, %622 ], [ %607, %603 ], [ %607, %603 ], [ %607, %603 ], [ %607, %603 ], [ %607, %782 ], [ %607, %774 ], [ %607, %795 ], [ %607, %809 ], [ %607, %918 ], [ %607, %915 ], [ %607, %920 ], [ %607, %935 ], [ %607, %960 ], [ %607, %971 ], [ %607, %1043 ], [ %607, %829 ], [ %633, %744 ], [ %627, %625 ], [ %627, %625 ], [ %633, %753 ]
  %1060 = phi i64 [ %619, %1025 ], [ %619, %1021 ], [ %619, %1033 ], [ %619, %1040 ], [ %619, %978 ], [ %619, %967 ], [ %619, %966 ], [ %619, %963 ], [ %619, %959 ], [ %619, %956 ], [ %619, %946 ], [ %619, %940 ], [ %619, %943 ], [ %619, %931 ], [ %619, %930 ], [ %619, %923 ], [ %619, %919 ], [ %619, %849 ], [ %619, %815 ], [ %619, %823 ], [ %619, %841 ], [ %619, %848 ], [ %619, %826 ], [ %619, %817 ], [ %619, %805 ], [ %619, %814 ], [ %619, %801 ], [ %619, %791 ], [ %619, %800 ], [ %619, %787 ], [ %619, %758 ], [ %619, %757 ], [ 0, %736 ], [ %619, %624 ], [ %619, %622 ], [ %619, %603 ], [ %619, %603 ], [ %619, %603 ], [ %619, %603 ], [ %619, %782 ], [ %619, %774 ], [ %619, %795 ], [ %619, %809 ], [ %619, %918 ], [ %619, %915 ], [ %619, %920 ], [ %619, %935 ], [ %619, %960 ], [ %619, %971 ], [ %619, %1043 ], [ %619, %829 ], [ 0, %744 ], [ 0, %625 ], [ 0, %625 ], [ 0, %753 ]
  %1061 = phi i32 [ 1, %1025 ], [ %608, %1021 ], [ %1035, %1033 ], [ %1035, %1040 ], [ 1, %978 ], [ %608, %967 ], [ 1, %966 ], [ %608, %963 ], [ 1, %959 ], [ %608, %956 ], [ %608, %946 ], [ %608, %940 ], [ %608, %943 ], [ %608, %931 ], [ 1, %930 ], [ %608, %923 ], [ %608, %919 ], [ %608, %849 ], [ %608, %815 ], [ %608, %823 ], [ %608, %841 ], [ 1, %848 ], [ %608, %826 ], [ %608, %817 ], [ %608, %805 ], [ 1, %814 ], [ %608, %801 ], [ %608, %791 ], [ 1, %800 ], [ %608, %787 ], [ %608, %758 ], [ 1, %757 ], [ %608, %736 ], [ %608, %624 ], [ %608, %622 ], [ %608, %603 ], [ %608, %603 ], [ %608, %603 ], [ %608, %603 ], [ %775, %782 ], [ %775, %774 ], [ %608, %795 ], [ %608, %809 ], [ %899, %918 ], [ %899, %915 ], [ %608, %920 ], [ %939, %935 ], [ %608, %960 ], [ %977, %971 ], [ %1050, %1043 ], [ %608, %829 ], [ %608, %744 ], [ %608, %625 ], [ %608, %625 ], [ %608, %753 ]
  %1062 = phi i32 [ %609, %1025 ], [ %609, %1021 ], [ %609, %1033 ], [ %609, %1040 ], [ %609, %978 ], [ %609, %967 ], [ %609, %966 ], [ %609, %963 ], [ %609, %959 ], [ %609, %956 ], [ %609, %946 ], [ %609, %940 ], [ %609, %943 ], [ %609, %931 ], [ %609, %930 ], [ %609, %923 ], [ %609, %919 ], [ %609, %849 ], [ %609, %815 ], [ %609, %823 ], [ %609, %841 ], [ %609, %848 ], [ %609, %826 ], [ %609, %817 ], [ %609, %805 ], [ %609, %814 ], [ %609, %801 ], [ %609, %791 ], [ %609, %800 ], [ %609, %787 ], [ %609, %758 ], [ %609, %757 ], [ %740, %736 ], [ %609, %624 ], [ %609, %622 ], [ %609, %603 ], [ %609, %603 ], [ %609, %603 ], [ %609, %603 ], [ %609, %782 ], [ %609, %774 ], [ %609, %795 ], [ %609, %809 ], [ %609, %918 ], [ %609, %915 ], [ %609, %920 ], [ %609, %935 ], [ %609, %960 ], [ %609, %971 ], [ %609, %1043 ], [ %609, %829 ], [ %740, %744 ], [ %609, %625 ], [ %609, %625 ], [ %740, %753 ]
  %1063 = phi i32 [ %610, %1025 ], [ %610, %1021 ], [ %610, %1033 ], [ %610, %1040 ], [ %610, %978 ], [ %610, %967 ], [ %610, %966 ], [ %610, %963 ], [ %610, %959 ], [ %610, %956 ], [ %610, %946 ], [ %610, %940 ], [ %610, %943 ], [ %610, %931 ], [ %610, %930 ], [ %610, %923 ], [ %610, %919 ], [ %610, %849 ], [ %610, %815 ], [ %610, %823 ], [ %610, %841 ], [ %610, %848 ], [ %610, %826 ], [ %610, %817 ], [ %610, %805 ], [ %610, %814 ], [ %610, %801 ], [ %610, %791 ], [ %610, %800 ], [ %610, %787 ], [ %610, %758 ], [ 0, %757 ], [ 0, %736 ], [ %610, %624 ], [ %610, %622 ], [ %610, %603 ], [ %610, %603 ], [ %610, %603 ], [ %610, %603 ], [ %786, %782 ], [ %610, %774 ], [ %610, %795 ], [ %610, %809 ], [ 0, %918 ], [ %610, %915 ], [ %610, %920 ], [ %610, %935 ], [ %610, %960 ], [ %610, %971 ], [ %610, %1043 ], [ %610, %829 ], [ 0, %744 ], [ %610, %625 ], [ %610, %625 ], [ %754, %753 ]
  %1064 = phi i32 [ %611, %1025 ], [ %611, %1021 ], [ %611, %1033 ], [ 1, %1040 ], [ %611, %978 ], [ %611, %967 ], [ %611, %966 ], [ %611, %963 ], [ %611, %959 ], [ %611, %956 ], [ %611, %946 ], [ %611, %940 ], [ %611, %943 ], [ %611, %931 ], [ %611, %930 ], [ %611, %923 ], [ %611, %919 ], [ %611, %849 ], [ %611, %815 ], [ %611, %823 ], [ %611, %841 ], [ %611, %848 ], [ %611, %826 ], [ %611, %817 ], [ %611, %805 ], [ %611, %814 ], [ %611, %801 ], [ %611, %791 ], [ %611, %800 ], [ %611, %787 ], [ %611, %758 ], [ %611, %757 ], [ %611, %736 ], [ %611, %624 ], [ %611, %622 ], [ %611, %603 ], [ %611, %603 ], [ %611, %603 ], [ %611, %603 ], [ %611, %782 ], [ %611, %774 ], [ %611, %795 ], [ %611, %809 ], [ %611, %918 ], [ %611, %915 ], [ %611, %920 ], [ %611, %935 ], [ %611, %960 ], [ %611, %971 ], [ 1, %1043 ], [ %611, %829 ], [ %611, %744 ], [ %611, %625 ], [ %611, %625 ], [ %611, %753 ]
  %1065 = phi i32 [ %618, %1025 ], [ %618, %1021 ], [ %618, %1033 ], [ %618, %1040 ], [ 88, %978 ], [ %618, %967 ], [ 88, %966 ], [ 88, %963 ], [ %618, %959 ], [ %618, %956 ], [ %618, %946 ], [ 88, %940 ], [ 88, %943 ], [ %618, %931 ], [ %618, %930 ], [ %618, %923 ], [ 88, %919 ], [ 88, %849 ], [ 88, %815 ], [ 88, %823 ], [ 88, %841 ], [ 88, %848 ], [ 88, %826 ], [ 88, %817 ], [ 88, %805 ], [ 88, %814 ], [ 88, %801 ], [ 88, %791 ], [ 88, %800 ], [ 88, %787 ], [ 88, %758 ], [ 88, %757 ], [ %618, %736 ], [ 88, %624 ], [ 88, %622 ], [ %618, %603 ], [ %618, %603 ], [ %618, %603 ], [ %618, %603 ], [ 88, %782 ], [ 88, %774 ], [ 88, %795 ], [ 88, %809 ], [ 88, %918 ], [ 88, %915 ], [ %618, %920 ], [ %618, %935 ], [ 88, %960 ], [ %618, %971 ], [ %618, %1043 ], [ 88, %829 ], [ %618, %744 ], [ %618, %625 ], [ %618, %625 ], [ %618, %753 ]
  %1066 = phi i32 [ %612, %1025 ], [ %612, %1021 ], [ %612, %1033 ], [ %612, %1040 ], [ %612, %978 ], [ %612, %967 ], [ %612, %966 ], [ %612, %963 ], [ %612, %959 ], [ %612, %956 ], [ %612, %946 ], [ %612, %940 ], [ %612, %943 ], [ %612, %931 ], [ %612, %930 ], [ %612, %923 ], [ 1, %919 ], [ %612, %849 ], [ %612, %815 ], [ %612, %823 ], [ %612, %841 ], [ %612, %848 ], [ %612, %826 ], [ %612, %817 ], [ %612, %805 ], [ %612, %814 ], [ %612, %801 ], [ %612, %791 ], [ %612, %800 ], [ %612, %787 ], [ %612, %758 ], [ %612, %757 ], [ %612, %736 ], [ %612, %624 ], [ %612, %622 ], [ %612, %603 ], [ %612, %603 ], [ %612, %603 ], [ %612, %603 ], [ %612, %782 ], [ %612, %774 ], [ %612, %795 ], [ %612, %809 ], [ %612, %918 ], [ %612, %915 ], [ %612, %920 ], [ %612, %935 ], [ %612, %960 ], [ %612, %971 ], [ %612, %1043 ], [ %612, %829 ], [ %612, %744 ], [ %612, %625 ], [ %612, %625 ], [ %612, %753 ]
  %1067 = phi i32 [ %613, %1025 ], [ %613, %1021 ], [ %613, %1033 ], [ %613, %1040 ], [ 0, %978 ], [ %613, %967 ], [ %613, %966 ], [ %613, %963 ], [ %613, %959 ], [ %613, %956 ], [ %613, %946 ], [ %613, %940 ], [ %613, %943 ], [ %613, %931 ], [ %613, %930 ], [ %613, %923 ], [ %613, %919 ], [ 1, %849 ], [ 1, %815 ], [ 0, %823 ], [ 0, %841 ], [ 0, %848 ], [ 0, %826 ], [ 0, %817 ], [ %613, %805 ], [ %613, %814 ], [ %613, %801 ], [ %613, %791 ], [ %613, %800 ], [ %613, %787 ], [ 1, %758 ], [ %613, %757 ], [ 0, %736 ], [ %613, %624 ], [ %613, %622 ], [ %613, %603 ], [ %613, %603 ], [ %613, %603 ], [ %613, %603 ], [ 0, %782 ], [ 0, %774 ], [ %613, %795 ], [ %613, %809 ], [ 0, %918 ], [ 0, %915 ], [ %613, %920 ], [ %613, %935 ], [ %613, %960 ], [ %613, %971 ], [ %613, %1043 ], [ 0, %829 ], [ %613, %744 ], [ %613, %625 ], [ %613, %625 ], [ %613, %753 ]
  %1068 = phi i8 [ %614, %1025 ], [ %614, %1021 ], [ %614, %1033 ], [ %614, %1040 ], [ %614, %978 ], [ %614, %967 ], [ %614, %966 ], [ %614, %963 ], [ %614, %959 ], [ %614, %956 ], [ %614, %946 ], [ %614, %940 ], [ %614, %943 ], [ %614, %931 ], [ %614, %930 ], [ %614, %923 ], [ %614, %919 ], [ %614, %849 ], [ %614, %815 ], [ %614, %823 ], [ %614, %841 ], [ %614, %848 ], [ %614, %826 ], [ %614, %817 ], [ %614, %805 ], [ %614, %814 ], [ %614, %801 ], [ %614, %791 ], [ %614, %800 ], [ %614, %787 ], [ %614, %758 ], [ %614, %757 ], [ %614, %736 ], [ %614, %624 ], [ %614, %622 ], [ %614, %603 ], [ %614, %603 ], [ %614, %603 ], [ %614, %603 ], [ %614, %782 ], [ %614, %774 ], [ %614, %795 ], [ %614, %809 ], [ 1, %918 ], [ 1, %915 ], [ %614, %920 ], [ %614, %935 ], [ %614, %960 ], [ %614, %971 ], [ %614, %1043 ], [ %614, %829 ], [ %614, %744 ], [ %614, %625 ], [ %614, %625 ], [ %614, %753 ]
  %1069 = phi i32 [ %615, %1025 ], [ %615, %1021 ], [ %615, %1033 ], [ %615, %1040 ], [ %615, %978 ], [ %615, %967 ], [ %615, %966 ], [ %615, %963 ], [ %615, %959 ], [ %615, %956 ], [ %615, %946 ], [ %615, %940 ], [ %615, %943 ], [ %615, %931 ], [ %615, %930 ], [ %615, %923 ], [ %615, %919 ], [ %615, %849 ], [ %615, %815 ], [ %615, %823 ], [ %615, %841 ], [ %615, %848 ], [ %615, %826 ], [ %615, %817 ], [ %615, %805 ], [ %615, %814 ], [ %615, %801 ], [ %615, %791 ], [ %615, %800 ], [ %615, %787 ], [ %615, %758 ], [ %615, %757 ], [ %615, %736 ], [ %615, %624 ], [ %615, %622 ], [ %615, %603 ], [ %615, %603 ], [ %615, %603 ], [ %615, %603 ], [ 1, %782 ], [ 1, %774 ], [ %615, %795 ], [ %615, %809 ], [ 1, %918 ], [ 1, %915 ], [ %615, %920 ], [ %615, %935 ], [ %615, %960 ], [ %615, %971 ], [ %615, %1043 ], [ %615, %829 ], [ %615, %744 ], [ %615, %625 ], [ %615, %625 ], [ %615, %753 ]
  %1070 = phi i8 [ %616, %1025 ], [ %616, %1021 ], [ %616, %1033 ], [ %616, %1040 ], [ %616, %978 ], [ %616, %967 ], [ %616, %966 ], [ %616, %963 ], [ %616, %959 ], [ %616, %956 ], [ %616, %946 ], [ %616, %940 ], [ %616, %943 ], [ %616, %931 ], [ %616, %930 ], [ %616, %923 ], [ 1, %919 ], [ %616, %849 ], [ %616, %815 ], [ %616, %823 ], [ %616, %841 ], [ %616, %848 ], [ %616, %826 ], [ %616, %817 ], [ %616, %805 ], [ %616, %814 ], [ %616, %801 ], [ %616, %791 ], [ %616, %800 ], [ %616, %787 ], [ %616, %758 ], [ %616, %757 ], [ %616, %736 ], [ %616, %624 ], [ %616, %622 ], [ %616, %603 ], [ %616, %603 ], [ %616, %603 ], [ %616, %603 ], [ %616, %782 ], [ %616, %774 ], [ %616, %795 ], [ %616, %809 ], [ %616, %918 ], [ %616, %915 ], [ %616, %920 ], [ %616, %935 ], [ %616, %960 ], [ %616, %971 ], [ %616, %1043 ], [ %616, %829 ], [ %616, %744 ], [ %616, %625 ], [ %616, %625 ], [ %616, %753 ]
  %1071 = getelementptr inbounds i8, ptr %1059, i64 %1060
  %1072 = icmp eq i32 %1065, 0
  br i1 %1072, label %1073, label %603, !prof !1099, !llvm.loop !1100

1073:                                             ; preds = %1055, %1052
  %1074 = phi ptr [ %1054, %1052 ], [ %1071, %1055 ]
  %1075 = phi i8 [ %616, %1052 ], [ %1070, %1055 ]
  %1076 = phi i32 [ %615, %1052 ], [ %1069, %1055 ]
  %1077 = phi i8 [ %614, %1052 ], [ %1068, %1055 ]
  %1078 = phi i32 [ %613, %1052 ], [ %1067, %1055 ]
  %1079 = phi i32 [ %612, %1052 ], [ %1066, %1055 ]
  %1080 = phi i32 [ %611, %1052 ], [ %1064, %1055 ]
  %1081 = phi i32 [ %610, %1052 ], [ %1063, %1055 ]
  %1082 = phi i32 [ %609, %1052 ], [ %1062, %1055 ]
  %1083 = phi i32 [ %608, %1052 ], [ %1061, %1055 ]
  %1084 = phi i32 [ %606, %1052 ], [ %1058, %1055 ]
  %1085 = phi i32 [ %605, %1052 ], [ %1057, %1055 ]
  %1086 = phi i32 [ %604, %1052 ], [ %1056, %1055 ]
  store ptr %1074, ptr %485, align 8, !tbaa !301
  %1087 = icmp eq i32 %1080, 0
  br i1 %1087, label %1092, label %1088, !prof !1101

1088:                                             ; preds = %1073
  %1089 = load i32, ptr %591, align 4, !tbaa !305
  %1090 = icmp eq i32 %1089, 0
  %1091 = select i1 %1090, i32 %1081, i32 0, !prof !1096
  br label %1092

1092:                                             ; preds = %1088, %1073
  %1093 = phi i32 [ %1081, %1073 ], [ %1091, %1088 ]
  store i8 %1075, ptr %595, align 1, !tbaa !300
  %1094 = icmp eq i32 %1083, 0
  %1095 = icmp ne i32 %1078, 0
  %1096 = select i1 %1094, i1 true, i1 %1095
  br i1 %1096, label %1098, label %1097, !prof !1102

1097:                                             ; preds = %1092
  store i8 1, ptr %592, align 1, !tbaa !300
  br label %1240

1098:                                             ; preds = %1092
  %1099 = icmp eq i32 %1082, 0
  %1100 = select i1 %1099, i1 true, i1 %1095
  br i1 %1100, label %1102, label %1101, !prof !1103

1101:                                             ; preds = %1098
  store i8 1, ptr %593, align 1, !tbaa !300
  br label %1240

1102:                                             ; preds = %1098
  store i8 %1077, ptr %594, align 1, !tbaa !300
  %1103 = add nsw i32 %1086, 1
  %1104 = icmp eq i32 %1093, 0
  %1105 = select i1 %1104, i32 %1085, i32 1, !prof !1104
  %1106 = load i32, ptr %588, align 8
  %1107 = and i32 %1106, 65535
  %1108 = icmp eq i32 %1107, 37
  br i1 %1108, label %1109, label %1116, !prof !1105

1109:                                             ; preds = %1102
  %1110 = load i32, ptr %591, align 4, !tbaa !305
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1112, label %1116, !prof !1106

1112:                                             ; preds = %1109
  %1113 = load i32, ptr %596, align 4, !tbaa !305
  %1114 = icmp slt i32 %1113, 0
  %1115 = select i1 %1114, i32 1, i32 %1105, !prof !1107
  br label %1116

1116:                                             ; preds = %1112, %1109, %1102
  %1117 = phi i32 [ %1105, %1109 ], [ %1105, %1102 ], [ %1115, %1112 ]
  %1118 = zext nneg i32 %1107 to i64
  %1119 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1118
  %1120 = load i32, ptr %1119, align 4, !tbaa !305
  %1121 = icmp ne i32 %1120, 9
  %1122 = icmp eq i32 %1107, 121
  %1123 = or i1 %1122, %1121
  br i1 %1123, label %1140, label %1124, !prof !1108

1124:                                             ; preds = %1116
  %1125 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !1066
  %1126 = call zeroext i8 %1125(ptr noundef nonnull %588) #24
  %1127 = icmp eq i8 %1126, 0
  br i1 %1127, label %1128, label %1140, !prof !1109

1128:                                             ; preds = %1124
  %1129 = load i32, ptr %591, align 4, !tbaa !305
  %1130 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %588, i32 noundef %1129) #24
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1132, label %1140, !prof !1110

1132:                                             ; preds = %1128
  %1133 = load i32, ptr %602, align 4, !tbaa !305
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1140, label %1135, !prof !1111

1135:                                             ; preds = %1132
  %1136 = load i32, ptr %591, align 4, !tbaa !305
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1140, label %1138, !prof !1112

1138:                                             ; preds = %1135
  %1139 = add nsw i32 %1086, 2
  br label %1140

1140:                                             ; preds = %1135, %1138, %1128, %1132, %1124, %1116
  %1141 = phi i32 [ %1103, %1124 ], [ %1139, %1138 ], [ %1103, %1135 ], [ %1103, %1132 ], [ %1103, %1128 ], [ %1103, %1116 ]
  %1142 = phi i1 [ true, %1124 ], [ false, %1138 ], [ false, %1135 ], [ true, %1132 ], [ true, %1128 ], [ true, %1116 ]
  %1143 = load i32, ptr %588, align 8
  %1144 = and i32 %1143, 65535
  %1145 = icmp eq i32 %1144, 38
  br i1 %1145, label %1154, label %1146, !prof !1113

1146:                                             ; preds = %1140
  %1147 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %480
  %1148 = load i32, ptr %1147, align 4, !tbaa !305
  %1149 = icmp ne i32 %1148, 0
  %1150 = and i1 %54, %1149
  br i1 %1150, label %1151, label %1154, !prof !1114

1151:                                             ; preds = %1146
  %1152 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %588) #24
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1155, label %1154

1154:                                             ; preds = %1151, %1146, %1140
  br label %1155

1155:                                             ; preds = %1151, %1154
  %1156 = phi i32 [ %1117, %1154 ], [ 1, %1151 ]
  %1157 = load i32, ptr %588, align 8
  %1158 = and i32 %1157, 65535
  %1159 = zext nneg i32 %1158 to i64
  %1160 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1159
  %1161 = load i32, ptr %1160, align 4, !tbaa !305
  %1162 = icmp eq i32 %1161, 9
  br i1 %1162, label %1180, label %1163, !prof !1115

1163:                                             ; preds = %1155
  %1164 = load i32, ptr %591, align 4, !tbaa !305
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1180, label %1166, !prof !1116

1166:                                             ; preds = %1163
  %1167 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %588, i32 noundef %1164) #24
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1169, label %1170, !prof !1117

1169:                                             ; preds = %1166
  br label %1170

1170:                                             ; preds = %1169, %1166
  %1171 = phi i32 [ 600, %1169 ], [ %1084, %1166 ]
  %1172 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %480
  %1173 = load i32, ptr %1172, align 4, !tbaa !305
  %1174 = icmp eq i32 %1173, 1
  br i1 %1174, label %1175, label %1180, !prof !1118

1175:                                             ; preds = %1170
  %1176 = load i32, ptr %591, align 4, !tbaa !305
  %1177 = call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %588, i32 noundef %1176) #24
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1180, !prof !1119

1179:                                             ; preds = %1175
  br label %1180

1180:                                             ; preds = %1170, %1175, %1179, %1163, %1155
  %1181 = phi i32 [ %1084, %1155 ], [ 600, %1179 ], [ %1171, %1175 ], [ %1171, %1170 ], [ %1084, %1163 ]
  %1182 = load i32, ptr %588, align 8
  %1183 = and i32 %1182, 65535
  %1184 = trunc i32 %1182 to i16
  switch i16 %1184, label %1188 [
    i16 37, label %1185
    i16 38, label %1193
  ], !prof !1120

1185:                                             ; preds = %1180
  %1186 = call fastcc i32 @rhs_regno(ptr noundef nonnull %588) #25
  %1187 = icmp ugt i32 %1186, 52
  br i1 %1187, label %1193, label %1188, !prof !1121

1188:                                             ; preds = %1180, %1185
  br i1 %1142, label %1191, label %1189, !prof !1122

1189:                                             ; preds = %1188
  %1190 = icmp eq i32 %1076, 0
  br i1 %1190, label %1191, label %1193, !prof !1123

1191:                                             ; preds = %1189, %1188
  %1192 = add nsw i32 %1181, 2
  br label %1193

1193:                                             ; preds = %1180, %1191, %1189, %1185
  %1194 = phi i32 [ %1181, %1185 ], [ %1181, %1189 ], [ %1192, %1191 ], [ %1181, %1180 ]
  %1195 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %480
  %1196 = load i32, ptr %1195, align 4, !tbaa !305
  %1197 = icmp ne i32 %1196, 0
  %1198 = icmp ne i32 %1183, 38
  %1199 = and i1 %1198, %1197
  %1200 = zext i1 %1199 to i32
  %1201 = add nsw i32 %1194, %1200
  %1202 = icmp ne i32 %1083, 0
  %1203 = icmp ne i32 %1082, 0
  %1204 = select i1 %1202, i1 true, i1 %1203
  br i1 %1204, label %1240, label %1205, !prof !1124

1205:                                             ; preds = %1193
  %1206 = load i32, ptr %591, align 4, !tbaa !305
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1240, label %1208, !prof !1125

1208:                                             ; preds = %1205
  %1209 = load i32, ptr %602, align 4, !tbaa !305
  %1210 = zext i32 %1209 to i64
  %1211 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1210
  %1212 = load i8, ptr %1211, align 1, !tbaa !300
  %1213 = icmp ult i8 %1212, 5
  br i1 %1213, label %1214, label %1240, !prof !1126

1214:                                             ; preds = %1208
  %1215 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %480
  %1216 = load i32, ptr %1215, align 4, !tbaa !305
  %1217 = sext i32 %1216 to i64
  %1218 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1217
  %1219 = load i32, ptr %1218, align 4, !tbaa !305
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1240, label %1221, !prof !1127

1221:                                             ; preds = %1214
  %1222 = zext i32 %1216 to i64
  %1223 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1222
  %1224 = load i32, ptr %1223, align 4, !tbaa !305
  switch i32 %1224, label %1225 [
    i32 1, label %1240
    i32 0, label %1226
  ], !prof !1128

1225:                                             ; preds = %1221
  switch i32 %1216, label %1226 [
    i32 1, label %1240
    i32 2, label %1240
    i32 3, label %1240
    i32 4, label %1240
    i32 7, label %1240
    i32 5, label %1240
    i32 6, label %1240
    i32 17, label %1240
    i32 14, label %1240
    i32 15, label %1240
  ], !prof !1129

1226:                                             ; preds = %1225, %1221
  %1227 = call i32 @reg_class_subset_p(i32 noundef %1206, i32 noundef %1216) #24
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1229, label %1240, !prof !1130

1229:                                             ; preds = %1226
  %1230 = call i32 @reg_class_subset_p(i32 noundef %1216, i32 noundef %1206) #24
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1233, label %1232, !prof !1131

1232:                                             ; preds = %1229
  store i32 %1216, ptr %591, align 4, !tbaa !305
  br label %1240

1233:                                             ; preds = %1229
  %1234 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %480
  %1235 = load i8, ptr %1234, align 1, !tbaa !300
  %1236 = sext i8 %1235 to i32
  %1237 = shl nsw i32 %1236, 1
  %1238 = add i32 %1201, 2
  %1239 = add i32 %1238, %1237
  br label %1240

1240:                                             ; preds = %1101, %1097, %1225, %1225, %1225, %1225, %1225, %1225, %1225, %1225, %1225, %1225, %1221, %1226, %1233, %1232, %1214, %1208, %1205, %1193
  %1241 = phi i32 [ %1156, %1193 ], [ %1156, %1221 ], [ %1156, %1225 ], [ %1156, %1226 ], [ %1156, %1232 ], [ %1156, %1233 ], [ %1156, %1214 ], [ %1156, %1208 ], [ %1156, %1205 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1156, %1225 ], [ %1085, %1097 ], [ %1085, %1101 ]
  %1242 = phi i32 [ %1141, %1193 ], [ %1141, %1221 ], [ %1141, %1225 ], [ %1141, %1226 ], [ %1141, %1232 ], [ %1141, %1233 ], [ %1141, %1214 ], [ %1141, %1208 ], [ %1141, %1205 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1141, %1225 ], [ %1086, %1097 ], [ %1086, %1101 ]
  %1243 = phi i32 [ %1201, %1193 ], [ %1201, %1221 ], [ %1201, %1225 ], [ %1201, %1226 ], [ %1201, %1232 ], [ %1239, %1233 ], [ %1201, %1214 ], [ %1201, %1208 ], [ %1201, %1205 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1201, %1225 ], [ %1084, %1097 ], [ %1084, %1101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #23
  %1244 = add nuw nsw i64 %480, 1
  %1245 = icmp eq i64 %1244, %446
  br i1 %1245, label %478, label %479, !prof !1132, !llvm.loop !1133

1246:                                             ; preds = %478, %1359
  %1247 = phi i64 [ %1361, %1359 ], [ 0, %478 ]
  %1248 = phi i32 [ %1360, %1359 ], [ %1242, %478 ]
  %1249 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %1247
  %1250 = load i8, ptr %1249, align 1, !tbaa !300
  %1251 = icmp eq i8 %1250, 0
  br i1 %1251, label %1359, label %1252, !prof !1134

1252:                                             ; preds = %1246
  %1253 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1247
  %1254 = load i8, ptr %1253, align 1, !tbaa !300
  %1255 = icmp eq i8 %1254, 0
  br i1 %1255, label %1256, label %1260, !prof !1135

1256:                                             ; preds = %1252
  %1257 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1247
  %1258 = load i8, ptr %1257, align 1, !tbaa !300
  %1259 = icmp eq i8 %1258, 0
  br i1 %1259, label %1359, label %1260, !prof !1136

1260:                                             ; preds = %1256, %1252
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #23
  %1261 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1247
  %1262 = load ptr, ptr %1261, align 8, !tbaa !301
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %33, ptr noundef %1262) #25
  %1263 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1247
  %1264 = load i32, ptr %1263, align 4, !tbaa !305
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1266, label %1267, !prof !1137

1266:                                             ; preds = %1260
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3618, ptr noundef nonnull @.str.1) #24
  br label %1267

1267:                                             ; preds = %1260, %1266
  %1268 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1247
  %1269 = load i32, ptr %1268, align 4, !tbaa !305
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1277, !prof !1137

1271:                                             ; preds = %1267
  store i8 0, ptr %1249, align 1, !tbaa !300
  %1272 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !305
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1274, label %1275

1274:                                             ; preds = %1271
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3623, ptr noundef nonnull @.str.1) #24
  br label %1275

1275:                                             ; preds = %1271, %1274
  %1276 = load ptr, ptr @this_insn, align 8, !tbaa !301
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %1276, ptr noundef nonnull @.str.4) #24
  br label %1277

1277:                                             ; preds = %1267, %1275
  br label %1278

1278:                                             ; preds = %1277, %1328
  %1279 = phi i64 [ 0, %1277 ], [ %1330, %1328 ]
  %1280 = phi i32 [ %1248, %1277 ], [ %1329, %1328 ]
  %1281 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1279
  %1282 = load ptr, ptr %1281, align 8, !tbaa !301
  %1283 = load i32, ptr %1282, align 8
  %1284 = and i32 %1283, 65535
  %1285 = icmp eq i32 %1284, 43
  br i1 %1285, label %1292, label %1286, !prof !1138

1286:                                             ; preds = %1278
  %1287 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1279
  %1288 = load i32, ptr %1287, align 4, !tbaa !305
  %1289 = icmp eq i32 %1288, 2
  %1290 = icmp eq i64 %1279, %1247
  %1291 = or i1 %1290, %1289
  br i1 %1291, label %1328, label %1294, !prof !1139

1292:                                             ; preds = %1278
  %1293 = icmp eq i64 %1279, %1247
  br i1 %1293, label %1328, label %1294, !prof !1140

1294:                                             ; preds = %1286, %1292
  %1295 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1279
  %1296 = load ptr, ptr %1295, align 8, !tbaa !301
  %1297 = load i8, ptr %1296, align 1, !tbaa !300
  %1298 = icmp eq i8 %1297, 0
  br i1 %1298, label %1328, label %1299, !prof !1140

1299:                                             ; preds = %1294
  %1300 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1279
  %1301 = load i32, ptr %1300, align 4, !tbaa !305
  %1302 = zext i32 %1301 to i64
  %1303 = icmp eq i64 %1247, %1302
  br i1 %1303, label %1304, label %1310, !prof !1140

1304:                                             ; preds = %1299
  %1305 = load ptr, ptr %1261, align 8, !tbaa !301
  %1306 = call i32 @rtx_equal_p(ptr noundef %1305, ptr noundef nonnull %1282) #24
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1308, label %1328

1308:                                             ; preds = %1304
  %1309 = load ptr, ptr %1281, align 8, !tbaa !301
  br label %1310

1310:                                             ; preds = %1308, %1299
  %1311 = phi ptr [ %1309, %1308 ], [ %1282, %1299 ]
  %1312 = load ptr, ptr %1261, align 8, !tbaa !301
  %1313 = call fastcc i32 @immune_p(ptr noundef %1311, ptr noundef %1312, ptr noundef nonnull byval(%struct.decomposition) align 8 %33) #25, !range !401
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1315, label %1328, !prof !1141

1315:                                             ; preds = %1310
  %1316 = zext i32 %1269 to i64
  %1317 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1316
  %1318 = load i32, ptr %1317, align 4, !tbaa !305
  switch i32 %1318, label %1319 [
    i32 1, label %1320
    i32 0, label %1332
  ], !prof !1142

1319:                                             ; preds = %1315
  switch i32 %1269, label %1332 [
    i32 1, label %1320
    i32 2, label %1320
    i32 3, label %1320
    i32 4, label %1320
    i32 7, label %1320
    i32 5, label %1320
    i32 6, label %1320
    i32 17, label %1320
    i32 14, label %1320
    i32 15, label %1320
  ], !prof !1143

1320:                                             ; preds = %1319, %1319, %1319, %1319, %1319, %1319, %1319, %1319, %1319, %1319, %1315
  %1321 = load ptr, ptr %1281, align 8, !tbaa !301
  %1322 = load i32, ptr %1321, align 8
  %1323 = trunc i32 %1322 to i16
  switch i16 %1323, label %1332 [
    i16 37, label %1324
    i16 39, label %1324
  ], !prof !1144

1324:                                             ; preds = %1320, %1320
  %1325 = add nsw i32 %1280, 1
  %1326 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1279
  store i8 0, ptr %1326, align 1, !tbaa !300
  %1327 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1279
  store i8 0, ptr %1327, align 1, !tbaa !300
  br label %1328

1328:                                             ; preds = %1286, %1292, %1294, %1304, %1310, %1324
  %1329 = phi i32 [ %1280, %1304 ], [ %1280, %1310 ], [ %1325, %1324 ], [ %1280, %1294 ], [ %1280, %1292 ], [ %1280, %1286 ]
  %1330 = add nuw nsw i64 %1279, 1
  %1331 = icmp eq i64 %1330, %446
  br i1 %1331, label %1357, label %1278, !prof !1145, !llvm.loop !1146

1332:                                             ; preds = %1315, %1319, %1320
  %1333 = trunc i64 %1279 to i32
  %1334 = icmp eq i32 %1333, %96
  br i1 %1334, label %1357, label %1335, !prof !722

1335:                                             ; preds = %1332
  %1336 = add nsw i32 %1280, 1
  store i8 0, ptr %1253, align 1, !tbaa !300
  %1337 = and i64 %1279, 4294967295
  %1338 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1337
  store i8 0, ptr %1338, align 1, !tbaa !300
  br label %1339

1339:                                             ; preds = %1335, %1353
  %1340 = phi i64 [ 0, %1335 ], [ %1355, %1353 ]
  %1341 = phi i32 [ %1336, %1335 ], [ %1354, %1353 ]
  %1342 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1340
  %1343 = load i32, ptr %1342, align 4, !tbaa !305
  %1344 = zext i32 %1343 to i64
  %1345 = icmp eq i64 %1247, %1344
  br i1 %1345, label %1346, label %1353, !prof !1081

1346:                                             ; preds = %1339
  %1347 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1340
  %1348 = load i8, ptr %1347, align 1, !tbaa !300
  %1349 = icmp eq i8 %1348, 0
  br i1 %1349, label %1353, label %1350

1350:                                             ; preds = %1346
  %1351 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1340
  store i8 0, ptr %1351, align 1, !tbaa !300
  store i8 0, ptr %1347, align 1, !tbaa !300
  %1352 = add nsw i32 %1341, 1
  br label %1353

1353:                                             ; preds = %1339, %1346, %1350
  %1354 = phi i32 [ %1352, %1350 ], [ %1341, %1346 ], [ %1341, %1339 ]
  %1355 = add nuw nsw i64 %1340, 1
  %1356 = icmp eq i64 %1355, %446
  br i1 %1356, label %1357, label %1339, !prof !1147, !llvm.loop !1148

1357:                                             ; preds = %1328, %1353, %1332
  %1358 = phi i32 [ %1280, %1332 ], [ %1354, %1353 ], [ %1329, %1328 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #23
  br label %1359

1359:                                             ; preds = %1246, %1256, %1357
  %1360 = phi i32 [ %1358, %1357 ], [ %1248, %1256 ], [ %1248, %1246 ]
  %1361 = add nuw nsw i64 %1247, 1
  %1362 = icmp eq i64 %1361, %446
  br i1 %1362, label %1363, label %1246, !prof !1132, !llvm.loop !1149

1363:                                             ; preds = %1359, %478
  %1364 = phi i32 [ %1242, %478 ], [ %1360, %1359 ]
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1366, label %1374, !prof !1150

1366:                                             ; preds = %465, %1363
  %1367 = phi i32 [ %1079, %1363 ], [ 0, %465 ]
  %1368 = trunc i64 %456 to i32
  br i1 %439, label %1369, label %1372, !prof !1151

1369:                                             ; preds = %1366
  %1370 = load ptr, ptr %444, align 8, !tbaa !301
  store ptr %1370, ptr %443, align 8, !tbaa !301
  %1371 = load ptr, ptr %441, align 8, !tbaa !301
  store ptr %1371, ptr %445, align 8, !tbaa !301
  br label %1372

1372:                                             ; preds = %1369, %1366
  br i1 %110, label %1373, label %1529, !prof !1152

1373:                                             ; preds = %1372
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %446, i1 false), !tbaa !300
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %446, i1 false), !tbaa !300
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %447, i1 false), !tbaa !305
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %26, ptr nonnull align 16 %17, i64 %446, i1 false), !tbaa !300
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr nonnull align 16 %19, i64 %447, i1 false), !tbaa !305
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %27, ptr nonnull align 16 %18, i64 %446, i1 false), !tbaa !300
  br label %1499

1374:                                             ; preds = %1363
  %1375 = mul nsw i32 %1364, 6
  %1376 = add nsw i32 %1375, %1243
  %1377 = icmp ne i32 %1241, 0
  %1378 = icmp slt i32 %459, %1376
  %1379 = select i1 %1377, i1 true, i1 %1378
  br i1 %1379, label %1412, label %1380, !prof !1153

1380:                                             ; preds = %1374
  br i1 %110, label %1381, label %1402, !prof !1154

1381:                                             ; preds = %1380, %1397
  %1382 = phi i64 [ %1400, %1397 ], [ 0, %1380 ]
  %1383 = phi i32 [ %1399, %1397 ], [ 0, %1380 ]
  %1384 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1382
  %1385 = load i32, ptr %1384, align 4, !tbaa !305
  %1386 = zext i32 %1385 to i64
  %1387 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1386
  %1388 = load i32, ptr %1387, align 4, !tbaa !305
  switch i32 %1388, label %1389 [
    i32 1, label %1397
    i32 0, label %1392
  ], !prof !1155

1389:                                             ; preds = %1381
  %1390 = add i32 %1385, -1
  %1391 = icmp ult i32 %1390, 17
  br i1 %1391, label %1393, label %1397

1392:                                             ; preds = %1381
  br label %1397

1393:                                             ; preds = %1389
  %1394 = zext nneg i32 %1390 to i64
  %1395 = getelementptr inbounds [17 x i32], ptr @switch.table.find_reloads, i64 0, i64 %1394
  %1396 = load i32, ptr %1395, align 4
  br label %1397

1397:                                             ; preds = %1389, %1393, %1381, %1392
  %1398 = phi i32 [ %1388, %1381 ], [ 0, %1392 ], [ %1396, %1393 ], [ 0, %1389 ]
  %1399 = add nuw nsw i32 %1398, %1383
  %1400 = add nuw nsw i64 %1382, 1
  %1401 = icmp eq i64 %1400, %446
  br i1 %1401, label %1402, label %1381, !prof !1156, !llvm.loop !1157

1402:                                             ; preds = %1397, %1380
  %1403 = phi i32 [ 0, %1380 ], [ %1399, %1397 ]
  %1404 = icmp sgt i32 %459, %1376
  br i1 %1404, label %1409, label %1405, !prof !1158

1405:                                             ; preds = %1402
  %1406 = icmp eq i32 %459, %1376
  %1407 = icmp slt i32 %1403, %460
  %1408 = select i1 %1406, i1 %1407, i1 false
  br i1 %1408, label %1409, label %1412, !prof !1159

1409:                                             ; preds = %1402, %1405
  %1410 = trunc i64 %456 to i32
  br i1 %110, label %1411, label %1412, !prof !1160

1411:                                             ; preds = %1409
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %447, i1 false), !tbaa !305
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %446, i1 false), !tbaa !300
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %446, i1 false), !tbaa !300
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %26, ptr nonnull align 16 %17, i64 %446, i1 false), !tbaa !300
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr nonnull align 16 %19, i64 %447, i1 false), !tbaa !305
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %27, ptr nonnull align 16 %18, i64 %446, i1 false), !tbaa !300
  br label %1412

1412:                                             ; preds = %471, %1411, %1409, %466, %1405, %1374
  %1413 = phi i32 [ %461, %1374 ], [ %461, %1405 ], [ %461, %466 ], [ %1079, %1409 ], [ %1079, %1411 ], [ %461, %471 ]
  %1414 = phi i32 [ %460, %1374 ], [ %460, %1405 ], [ %460, %466 ], [ %1403, %1409 ], [ %1403, %1411 ], [ %460, %471 ]
  %1415 = phi i32 [ %459, %1374 ], [ %459, %1405 ], [ %459, %466 ], [ %1376, %1409 ], [ %1376, %1411 ], [ %459, %471 ]
  %1416 = phi i32 [ %458, %1374 ], [ %458, %1405 ], [ %458, %466 ], [ %454, %1409 ], [ %454, %1411 ], [ %458, %471 ]
  %1417 = phi i32 [ %457, %1374 ], [ %457, %1405 ], [ %457, %466 ], [ %1410, %1409 ], [ %1410, %1411 ], [ %457, %471 ]
  %1418 = add nuw nsw i64 %456, 1
  %1419 = icmp eq i64 %1418, %98
  br i1 %1419, label %1420, label %455, !prof !1161, !llvm.loop !1162

1420:                                             ; preds = %1412, %448
  %1421 = phi i32 [ %449, %448 ], [ %1413, %1412 ]
  %1422 = phi i32 [ %450, %448 ], [ %1414, %1412 ]
  %1423 = phi i32 [ %451, %448 ], [ %1415, %1412 ]
  %1424 = phi i32 [ %452, %448 ], [ %1416, %1412 ]
  %1425 = phi i32 [ %453, %448 ], [ %1417, %1412 ]
  br i1 %439, label %1426, label %1490, !prof !1163

1426:                                             ; preds = %1420
  %1427 = icmp eq i32 %454, 0
  %1428 = xor i32 %454, 1
  br i1 %1427, label %1429, label %1466, !prof !1164

1429:                                             ; preds = %1426
  %1430 = load ptr, ptr %441, align 8, !tbaa !301
  store ptr %1430, ptr %443, align 8, !tbaa !301
  %1431 = load ptr, ptr %444, align 8, !tbaa !301
  store ptr %1431, ptr %445, align 8, !tbaa !301
  %1432 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !1165
  %1433 = icmp sgt i8 %1432, 0
  br i1 %1433, label %1434, label %1453, !prof !1166

1434:                                             ; preds = %1429
  %1435 = zext nneg i8 %1432 to i64
  br label %1436

1436:                                             ; preds = %1434, %1450
  %1437 = phi i64 [ 0, %1434 ], [ %1451, %1450 ]
  %1438 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1437
  %1439 = load i8, ptr %1438, align 1, !tbaa !300
  %1440 = sext i8 %1439 to i32
  %1441 = icmp eq i32 %436, %1440
  %1442 = icmp eq i32 %438, %1440
  %1443 = or i1 %1441, %1442
  br i1 %1443, label %1444, label %1450, !prof !1167

1444:                                             ; preds = %1436
  %1445 = sext i8 %1439 to i64
  %1446 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1445
  %1447 = load ptr, ptr %1446, align 8, !tbaa !301
  %1448 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1437
  %1449 = load ptr, ptr %1448, align 8, !tbaa !301
  store ptr %1447, ptr %1449, align 8, !tbaa !301
  br label %1450

1450:                                             ; preds = %1436, %1444
  %1451 = add nuw nsw i64 %1437, 1
  %1452 = icmp eq i64 %1451, %1435
  br i1 %1452, label %1453, label %1436, !prof !1168, !llvm.loop !1169

1453:                                             ; preds = %1450, %1429
  %1454 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %442
  %1455 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %440
  %1456 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %442
  %1457 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %440
  %1458 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %442
  %1459 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %440
  %1460 = load i32, ptr %1454, align 4, !tbaa !305
  %1461 = load i32, ptr %1455, align 4, !tbaa !305
  store i32 %1461, ptr %1454, align 4, !tbaa !305
  store i32 %1460, ptr %1455, align 4, !tbaa !305
  %1462 = load i8, ptr %1456, align 1, !tbaa !300
  %1463 = load i8, ptr %1457, align 1, !tbaa !300
  store i8 %1463, ptr %1456, align 1, !tbaa !300
  store i8 %1462, ptr %1457, align 1, !tbaa !300
  %1464 = load i32, ptr %1458, align 4, !tbaa !305
  %1465 = load i32, ptr %1459, align 4, !tbaa !305
  store i32 %1465, ptr %1458, align 4, !tbaa !305
  store i32 %1464, ptr %1459, align 4, !tbaa !305
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %109, i1 false)
  br label %448

1466:                                             ; preds = %1426
  %1467 = load ptr, ptr %444, align 8, !tbaa !301
  store ptr %1467, ptr %443, align 8, !tbaa !301
  %1468 = load ptr, ptr %441, align 8, !tbaa !301
  store ptr %1468, ptr %445, align 8, !tbaa !301
  %1469 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !1165
  %1470 = icmp sgt i8 %1469, 0
  br i1 %1470, label %1471, label %1490, !prof !1170

1471:                                             ; preds = %1466
  %1472 = zext nneg i8 %1469 to i64
  br label %1473

1473:                                             ; preds = %1471, %1487
  %1474 = phi i64 [ 0, %1471 ], [ %1488, %1487 ]
  %1475 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1474
  %1476 = load i8, ptr %1475, align 1, !tbaa !300
  %1477 = sext i8 %1476 to i32
  %1478 = icmp eq i32 %436, %1477
  %1479 = icmp eq i32 %438, %1477
  %1480 = or i1 %1478, %1479
  br i1 %1480, label %1481, label %1487, !prof !1171

1481:                                             ; preds = %1473
  %1482 = sext i8 %1476 to i64
  %1483 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1482
  %1484 = load ptr, ptr %1483, align 8, !tbaa !301
  %1485 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1474
  %1486 = load ptr, ptr %1485, align 8, !tbaa !301
  store ptr %1484, ptr %1486, align 8, !tbaa !301
  br label %1487

1487:                                             ; preds = %1473, %1481
  %1488 = add nuw nsw i64 %1474, 1
  %1489 = icmp eq i64 %1488, %1472
  br i1 %1489, label %1490, label %1473, !prof !1172, !llvm.loop !1173

1490:                                             ; preds = %1420, %1487, %1466
  %1491 = icmp eq i32 %1423, 660
  br i1 %1491, label %1492, label %1498, !prof !1174

1492:                                             ; preds = %1490
  %1493 = icmp sgt i32 %104, -1
  br i1 %1493, label %1494, label %1495

1494:                                             ; preds = %1492
  call void @_fatal_insn(ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 3821, ptr noundef nonnull @.str.1) #24
  br label %1495

1495:                                             ; preds = %1494, %1492
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %1496 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !301
  %1497 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %1496) #24
  store ptr %1497, ptr %37, align 8, !tbaa !300
  store i32 0, ptr @n_reloads, align 4, !tbaa !305
  br label %2692

1498:                                             ; preds = %1490
  br i1 %110, label %1499, label %1529, !prof !780

1499:                                             ; preds = %1373, %1498
  %1500 = phi i32 [ %1368, %1373 ], [ %1425, %1498 ]
  %1501 = phi i32 [ %454, %1373 ], [ %1424, %1498 ]
  %1502 = phi i32 [ %1367, %1373 ], [ %1421, %1498 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %23, i8 -1, i64 %447, i1 false), !tbaa !305
  br label %1504

1503:                                             ; preds = %1517
  br i1 %110, label %1520, label %1529, !prof !780

1504:                                             ; preds = %1499, %1517
  %1505 = phi i64 [ 0, %1499 ], [ %1518, %1517 ]
  %1506 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1505
  %1507 = load i8, ptr %1506, align 1, !tbaa !300
  %1508 = icmp eq i8 %1507, 0
  br i1 %1508, label %1509, label %1517, !prof !1175

1509:                                             ; preds = %1504
  %1510 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1505
  %1511 = load i32, ptr %1510, align 4, !tbaa !305
  %1512 = icmp sgt i32 %1511, -1
  br i1 %1512, label %1513, label %1517, !prof !1176

1513:                                             ; preds = %1509
  %1514 = zext nneg i32 %1511 to i64
  %1515 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1514
  %1516 = trunc i64 %1505 to i32
  store i32 %1516, ptr %1515, align 4, !tbaa !305
  br label %1517

1517:                                             ; preds = %1504, %1509, %1513
  %1518 = add nuw nsw i64 %1505, 1
  %1519 = icmp eq i64 %1518, %446
  br i1 %1519, label %1503, label %1504, !prof !1008, !llvm.loop !1177

1520:                                             ; preds = %1503, %1520
  %1521 = phi i64 [ %1527, %1520 ], [ 0, %1503 ]
  %1522 = getelementptr inbounds [30 x i8], ptr %24, i64 0, i64 %1521
  %1523 = load i8, ptr %1522, align 1, !tbaa !300
  %1524 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1521
  %1525 = load i8, ptr %1524, align 1, !tbaa !300
  %1526 = or i8 %1525, %1523
  store i8 %1526, ptr %1524, align 1, !tbaa !300
  %1527 = add nuw nsw i64 %1521, 1
  %1528 = icmp eq i64 %1527, %446
  br i1 %1528, label %1529, label %1520, !prof !1008, !llvm.loop !1178

1529:                                             ; preds = %1520, %1498, %1372, %1503
  %1530 = phi i32 [ %1500, %1503 ], [ %1425, %1498 ], [ %1368, %1372 ], [ %1500, %1520 ]
  %1531 = phi i32 [ %1501, %1503 ], [ %1424, %1498 ], [ %454, %1372 ], [ %1501, %1520 ]
  %1532 = phi i32 [ %1502, %1503 ], [ %1421, %1498 ], [ %1367, %1372 ], [ %1502, %1520 ]
  %1533 = icmp eq i32 %1531, 0
  br i1 %1533, label %1568, label %1534, !prof !1179

1534:                                             ; preds = %1529
  %1535 = sext i32 %436 to i64
  %1536 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1535
  %1537 = load ptr, ptr %1536, align 8, !tbaa !301
  %1538 = sext i32 %438 to i64
  %1539 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1538
  %1540 = load ptr, ptr %1539, align 8, !tbaa !301
  store ptr %1540, ptr %1536, align 8, !tbaa !301
  store ptr %1537, ptr %1539, align 8, !tbaa !301
  %1541 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1535
  %1542 = load ptr, ptr %1541, align 8, !tbaa !301
  %1543 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1538
  %1544 = load ptr, ptr %1543, align 8, !tbaa !301
  store ptr %1544, ptr %1541, align 8, !tbaa !301
  store ptr %1542, ptr %1543, align 8, !tbaa !301
  %1545 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1535
  %1546 = load ptr, ptr %1545, align 8, !tbaa !301
  %1547 = load ptr, ptr %1546, align 8, !tbaa !301
  %1548 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1538
  %1549 = load ptr, ptr %1548, align 8, !tbaa !301
  %1550 = load ptr, ptr %1549, align 8, !tbaa !301
  store ptr %1550, ptr %1546, align 8, !tbaa !301
  %1551 = load ptr, ptr %1548, align 8, !tbaa !301
  store ptr %1547, ptr %1551, align 8, !tbaa !301
  %1552 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %1553 = icmp sgt i32 %1552, 0
  br i1 %1553, label %1554, label %1568, !prof !1180

1554:                                             ; preds = %1534
  %1555 = zext nneg i32 %1552 to i64
  br label %1556

1556:                                             ; preds = %1554, %1565
  %1557 = phi i64 [ 0, %1554 ], [ %1566, %1565 ]
  %1558 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1557, i32 12
  %1559 = load i32, ptr %1558, align 8, !tbaa !466
  %1560 = icmp eq i32 %1559, %436
  br i1 %1560, label %1563, label %1561, !prof !1181

1561:                                             ; preds = %1556
  %1562 = icmp eq i32 %1559, %438
  br i1 %1562, label %1563, label %1565, !prof !1182

1563:                                             ; preds = %1561, %1556
  %1564 = phi i32 [ %438, %1556 ], [ %436, %1561 ]
  store i32 %1564, ptr %1558, align 8, !tbaa !466
  br label %1565

1565:                                             ; preds = %1563, %1561
  %1566 = add nuw nsw i64 %1557, 1
  %1567 = icmp eq i64 %1566, %1555
  br i1 %1567, label %1568, label %1556, !prof !1183, !llvm.loop !1184

1568:                                             ; preds = %1565, %1534, %1529
  br i1 %110, label %1570, label %1674, !prof !995

1569:                                             ; preds = %1586
  br i1 %110, label %1589, label %1674, !prof !780

1570:                                             ; preds = %1568, %1586
  %1571 = phi i64 [ %1587, %1586 ], [ 0, %1568 ]
  %1572 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1571
  store i32 -1, ptr %1572, align 4, !tbaa !305
  %1573 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1571
  %1574 = load i8, ptr %1573, align 1, !tbaa !300
  %1575 = icmp eq i8 %1574, 0
  br i1 %1575, label %1586, label %1576, !prof !1185

1576:                                             ; preds = %1570
  %1577 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1571
  %1578 = load i32, ptr %1577, align 4, !tbaa !305
  %1579 = icmp eq i32 %1578, 9
  br i1 %1579, label %1586, label %1580, !prof !1186

1580:                                             ; preds = %1576
  %1581 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1571
  %1582 = load ptr, ptr %1581, align 8, !tbaa !301
  %1583 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %1582) #24
  %1584 = icmp eq ptr %1583, null
  %1585 = select i1 %1584, i32 9, i32 2
  store i32 %1585, ptr %1577, align 4, !tbaa !305
  br label %1586

1586:                                             ; preds = %1570, %1576, %1580
  %1587 = add nuw nsw i64 %1571, 1
  %1588 = icmp eq i64 %1587, %446
  br i1 %1588, label %1569, label %1570, !prof !1008, !llvm.loop !1187

1589:                                             ; preds = %1569, %1671
  %1590 = phi i64 [ %1672, %1671 ], [ 0, %1569 ]
  %1591 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1590
  %1592 = load i8, ptr %1591, align 1, !tbaa !300
  %1593 = icmp eq i8 %1592, 0
  br i1 %1593, label %1594, label %1671, !prof !1188

1594:                                             ; preds = %1589
  %1595 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1590
  %1596 = load ptr, ptr %1595, align 8, !tbaa !301
  %1597 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1590
  %1598 = load i32, ptr %1597, align 4, !tbaa !305
  %1599 = load i32, ptr %1596, align 8
  %1600 = and i32 %1599, 65535
  %1601 = icmp eq i32 %1600, 39
  br i1 %1601, label %1602, label %1608, !prof !1189

1602:                                             ; preds = %1594
  %1603 = getelementptr inbounds %struct.rtx_def, ptr %1596, i64 0, i32 1
  %1604 = load ptr, ptr %1603, align 8, !tbaa !300
  %1605 = load i32, ptr %1604, align 8
  %1606 = lshr i32 %1605, 16
  %1607 = and i32 %1606, 255
  br label %1608

1608:                                             ; preds = %1602, %1594
  %1609 = phi i32 [ %1605, %1602 ], [ %1599, %1594 ]
  %1610 = phi ptr [ %1604, %1602 ], [ %1596, %1594 ]
  %1611 = phi ptr [ %1596, %1602 ], [ null, %1594 ]
  %1612 = phi i32 [ %1607, %1602 ], [ %1598, %1594 ]
  %1613 = and i32 %1609, 65535
  %1614 = icmp eq i32 %1613, 49
  br i1 %1614, label %1615, label %1620, !prof !1190

1615:                                             ; preds = %1608
  %1616 = getelementptr inbounds %struct.rtx_def, ptr %1610, i64 0, i32 1, i32 0, i32 0, i64 1
  %1617 = load ptr, ptr %1616, align 8, !tbaa !300
  %1618 = load i32, ptr %1617, align 8
  %1619 = and i32 %1618, 65535
  br label %1620

1620:                                             ; preds = %1615, %1608
  %1621 = phi i32 [ %1619, %1615 ], [ %1613, %1608 ]
  %1622 = phi ptr [ %1617, %1615 ], [ %1610, %1608 ]
  %1623 = phi ptr [ %1610, %1615 ], [ null, %1608 ]
  %1624 = zext nneg i32 %1621 to i64
  %1625 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1624
  %1626 = load i32, ptr %1625, align 4, !tbaa !305
  %1627 = icmp ne i32 %1626, 9
  %1628 = icmp eq i32 %1621, 121
  %1629 = or i1 %1627, %1628
  br i1 %1629, label %1671, label %1630, !prof !1191

1630:                                             ; preds = %1620
  %1631 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !1066
  %1632 = call zeroext i8 %1631(ptr noundef nonnull %1622) #24
  %1633 = icmp eq i8 %1632, 0
  br i1 %1633, label %1634, label %1671, !prof !1192

1634:                                             ; preds = %1630
  %1635 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1590
  %1636 = load i32, ptr %1635, align 4, !tbaa !305
  %1637 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %1622, i32 noundef %1636) #24
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1639, label %1671, !prof !1193

1639:                                             ; preds = %1634
  %1640 = icmp eq i32 %1612, 0
  br i1 %1640, label %1671, label %1641, !prof !1194

1641:                                             ; preds = %1639
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #23
  %1642 = call ptr @force_const_mem(i32 noundef %1612, ptr noundef nonnull %1622) #24
  %1643 = icmp eq ptr %1623, null
  br i1 %1643, label %1648, label %1644, !prof !667

1644:                                             ; preds = %1641
  %1645 = getelementptr inbounds %struct.rtx_def, ptr %1623, i64 0, i32 1
  %1646 = load ptr, ptr %1645, align 8, !tbaa !300
  %1647 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1612, ptr noundef %1646, ptr noundef %1642) #24
  br label %1648

1648:                                             ; preds = %1644, %1641
  %1649 = phi ptr [ %1647, %1644 ], [ %1642, %1641 ]
  %1650 = icmp eq ptr %1611, null
  br i1 %1650, label %1656, label %1651, !prof !667

1651:                                             ; preds = %1648
  %1652 = load i32, ptr %1597, align 4, !tbaa !305
  %1653 = getelementptr inbounds %struct.rtx_def, ptr %1611, i64 0, i32 1, i32 0, i32 0, i64 1
  %1654 = load i32, ptr %1653, align 8, !tbaa !300
  %1655 = call ptr @gen_rtx_SUBREG(i32 noundef %1652, ptr noundef %1649, i32 noundef %1654) #24
  br label %1656

1656:                                             ; preds = %1651, %1648
  %1657 = phi ptr [ %1655, %1651 ], [ %1649, %1648 ]
  store i32 0, ptr %34, align 4, !tbaa !305
  %1658 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %1590
  %1659 = load i32, ptr %1658, align 4, !tbaa !305
  %1660 = trunc i64 %1590 to i32
  %1661 = call fastcc ptr @find_reloads_toplev(ptr noundef %1657, i32 noundef %1660, i32 noundef %1659, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %34) #25
  store ptr %1661, ptr %1595, align 8, !tbaa !301
  %1662 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1590
  store ptr %1661, ptr %1662, align 8, !tbaa !301
  %1663 = and i1 %1650, %1643
  br i1 %1663, label %1664, label %1670, !prof !1195

1664:                                             ; preds = %1656
  %1665 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1590
  %1666 = load ptr, ptr %1665, align 8, !tbaa !301
  %1667 = call fastcc zeroext i8 @alternative_allows_const_pool_ref(ptr noundef %1666, i32 noundef %1530) #25
  %1668 = icmp eq i8 %1667, 0
  br i1 %1668, label %1670, label %1669, !prof !667

1669:                                             ; preds = %1664
  store i8 1, ptr %1591, align 1, !tbaa !300
  br label %1670

1670:                                             ; preds = %1669, %1664, %1656
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #23
  br label %1671

1671:                                             ; preds = %1620, %1630, %1639, %1670, %1634, %1589
  %1672 = add nuw nsw i64 %1590, 1
  %1673 = icmp eq i64 %1672, %446
  br i1 %1673, label %1674, label %1589, !prof !1008, !llvm.loop !1196

1674:                                             ; preds = %1671, %1568, %1569
  %1675 = icmp eq i32 %1532, 0
  br i1 %1675, label %1695, label %1676, !prof !1197

1676:                                             ; preds = %1674
  br i1 %110, label %1677, label %2098, !prof !1198

1677:                                             ; preds = %1676
  %1678 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !305
  br label %1679

1679:                                             ; preds = %1677, %1691
  %1680 = phi i64 [ 0, %1677 ], [ %1693, %1691 ]
  %1681 = phi i32 [ %1678, %1677 ], [ %1692, %1691 ]
  %1682 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1680
  %1683 = load i8, ptr %1682, align 1, !tbaa !300
  %1684 = icmp eq i8 %1683, 0
  br i1 %1684, label %1691, label %1685, !prof !1199

1685:                                             ; preds = %1679
  %1686 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1680
  %1687 = load ptr, ptr %1686, align 8, !tbaa !301
  %1688 = add nsw i32 %1681, 1
  store i32 %1688, ptr @n_earlyclobbers, align 4, !tbaa !305
  %1689 = sext i32 %1681 to i64
  %1690 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %1689
  store ptr %1687, ptr %1690, align 8, !tbaa !301
  br label %1691

1691:                                             ; preds = %1679, %1685
  %1692 = phi i32 [ %1681, %1679 ], [ %1688, %1685 ]
  %1693 = add nuw nsw i64 %1680, 1
  %1694 = icmp eq i64 %1693, %446
  br i1 %1694, label %1695, label %1679, !prof !1200, !llvm.loop !1201

1695:                                             ; preds = %1691, %1674
  br i1 %110, label %1696, label %2098, !prof !780

1696:                                             ; preds = %1695
  %1697 = icmp eq i32 %1, 0
  br label %1701

1698:                                             ; preds = %2060
  br i1 %110, label %1699, label %2098, !prof !780

1699:                                             ; preds = %1698
  %1700 = icmp eq i32 %1, 0
  br label %2063

1701:                                             ; preds = %1696, %2060
  %1702 = phi i64 [ 0, %1696 ], [ %2061, %2060 ]
  %1703 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1702
  %1704 = load i8, ptr %1703, align 1, !tbaa !300
  %1705 = icmp eq i8 %1704, 0
  br i1 %1705, label %1706, label %1889, !prof !1188

1706:                                             ; preds = %1701
  %1707 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1702
  %1708 = load i32, ptr %1707, align 4, !tbaa !305
  %1709 = icmp sgt i32 %1708, -1
  br i1 %1709, label %2060, label %1710, !prof !1202

1710:                                             ; preds = %1706
  %1711 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1702
  %1712 = load i32, ptr %1711, align 4, !tbaa !305
  %1713 = icmp eq i32 %1712, -1
  br i1 %1713, label %1714, label %1831, !prof !1203

1714:                                             ; preds = %1710
  %1715 = getelementptr inbounds [30 x i8], ptr %26, i64 0, i64 %1702
  %1716 = load i8, ptr %1715, align 1, !tbaa !300
  %1717 = icmp eq i8 %1716, 0
  br i1 %1717, label %1786, label %1718, !prof !1204

1718:                                             ; preds = %1714
  %1719 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1702
  %1720 = load ptr, ptr %1719, align 8, !tbaa !301
  %1721 = load i32, ptr %1720, align 8
  %1722 = and i32 %1721, 65535
  %1723 = icmp eq i32 %1722, 43
  br i1 %1723, label %1724, label %1786

1724:                                             ; preds = %1718
  %1725 = getelementptr inbounds %struct.rtx_def, ptr %1720, i64 0, i32 1
  %1726 = load ptr, ptr %1725, align 8, !tbaa !300
  %1727 = load i32, ptr %1726, align 8
  %1728 = lshr i32 %1727, 16
  %1729 = and i32 %1728, 255
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1731, label %1745

1731:                                             ; preds = %1724
  %1732 = getelementptr inbounds %struct.rtx_def, ptr %1720, i64 0, i32 1, i32 0, i32 0, i64 1
  %1733 = load ptr, ptr %1732, align 8, !tbaa !300
  %1734 = icmp eq ptr %1733, null
  br i1 %1734, label %1738, label %1735

1735:                                             ; preds = %1731
  %1736 = getelementptr inbounds %struct.mem_attrs, ptr %1733, i64 0, i32 5
  %1737 = load i8, ptr %1736, align 8, !tbaa !302
  br label %1738

1738:                                             ; preds = %1731, %1735
  %1739 = phi i8 [ %1737, %1735 ], [ 0, %1731 ]
  %1740 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !339
  %1741 = call i32 %1740(i8 noundef zeroext %1739) #24
  %1742 = load ptr, ptr %1719, align 8, !tbaa !301
  %1743 = getelementptr inbounds %struct.rtx_def, ptr %1742, i64 0, i32 1
  %1744 = load ptr, ptr %1743, align 8, !tbaa !300
  br label %1745

1745:                                             ; preds = %1738, %1724
  %1746 = phi ptr [ %1744, %1738 ], [ %1726, %1724 ]
  %1747 = phi ptr [ %1742, %1738 ], [ %1720, %1724 ]
  %1748 = phi i32 [ %1741, %1738 ], [ %1729, %1724 ]
  %1749 = getelementptr inbounds %struct.rtx_def, ptr %1747, i64 0, i32 1
  %1750 = trunc i64 %1702 to i32
  %1751 = call i32 @push_reload(ptr noundef %1746, ptr noundef null, ptr noundef nonnull %1749, ptr noundef null, i32 noundef 13, i32 noundef %1748, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1750, i32 noundef 0) #25
  %1752 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1702
  store i32 %1751, ptr %1752, align 4, !tbaa !305
  %1753 = load ptr, ptr %1719, align 8, !tbaa !301
  %1754 = load i32, ptr %1753, align 8
  %1755 = lshr i32 %1754, 16
  %1756 = and i32 %1755, 255
  %1757 = zext nneg i32 %1756 to i64
  %1758 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1757
  %1759 = load i8, ptr %1758, align 1, !tbaa !300
  %1760 = zext i8 %1759 to i32
  %1761 = sext i32 %1751 to i64
  %1762 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1761, i32 7
  store i32 %1760, ptr %1762, align 4, !tbaa !463
  %1763 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1702
  %1764 = load i32, ptr %1763, align 4, !tbaa !305
  %1765 = icmp eq i32 %1764, 2
  br i1 %1765, label %1766, label %2060

1766:                                             ; preds = %1745
  %1767 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %1768 = icmp sgt i32 %1767, 0
  br i1 %1768, label %1769, label %2060

1769:                                             ; preds = %1766
  %1770 = zext nneg i32 %1767 to i64
  br label %1771

1771:                                             ; preds = %1769, %1783
  %1772 = phi i64 [ 0, %1769 ], [ %1784, %1783 ]
  %1773 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1772, i32 12
  %1774 = load i32, ptr %1773, align 8, !tbaa !466
  %1775 = zext i32 %1774 to i64
  %1776 = icmp eq i64 %1702, %1775
  br i1 %1776, label %1777, label %1783

1777:                                             ; preds = %1771
  %1778 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1772, i32 17
  %1779 = load i32, ptr %1778, align 4, !tbaa !467
  switch i32 %1779, label %1783 [
    i32 5, label %1781
    i32 6, label %1780
  ]

1780:                                             ; preds = %1777
  br label %1781

1781:                                             ; preds = %1777, %1780
  %1782 = phi i32 [ 4, %1780 ], [ 3, %1777 ]
  store i32 %1782, ptr %1778, align 4, !tbaa !467
  br label %1783

1783:                                             ; preds = %1781, %1777, %1771
  %1784 = add nuw nsw i64 %1772, 1
  %1785 = icmp eq i64 %1784, %1770
  br i1 %1785, label %2060, label %1771, !llvm.loop !1205

1786:                                             ; preds = %1718, %1714
  %1787 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1702
  %1788 = load i32, ptr %1787, align 4, !tbaa !305
  %1789 = icmp eq i32 %1788, 2
  br i1 %1789, label %1790, label %1797, !prof !1206

1790:                                             ; preds = %1786
  %1791 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1792 = load ptr, ptr %1791, align 8, !tbaa !301
  %1793 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1702
  %1794 = load ptr, ptr %1793, align 8, !tbaa !301
  %1795 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %1796 = load i32, ptr %1795, align 4, !tbaa !305
  br label %1808

1797:                                             ; preds = %1786
  %1798 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1702
  %1799 = load ptr, ptr %1798, align 8, !tbaa !301
  %1800 = icmp eq i32 %1788, 0
  %1801 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1802 = load ptr, ptr %1801, align 8, !tbaa !301
  %1803 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %1804 = load i32, ptr %1803, align 4, !tbaa !305
  %1805 = select i1 %1800, ptr null, ptr %1799, !prof !1207
  %1806 = select i1 %1800, ptr null, ptr %1802, !prof !1207
  %1807 = select i1 %1800, i32 0, i32 %1804, !prof !1207
  br label %1808

1808:                                             ; preds = %1797, %1790
  %1809 = phi i32 [ 0, %1790 ], [ %1804, %1797 ]
  %1810 = phi ptr [ null, %1790 ], [ %1802, %1797 ]
  %1811 = phi ptr [ null, %1790 ], [ %1799, %1797 ]
  %1812 = phi ptr [ %1794, %1790 ], [ %1805, %1797 ]
  %1813 = phi ptr [ %1792, %1790 ], [ %1806, %1797 ]
  %1814 = phi i32 [ %1796, %1790 ], [ %1807, %1797 ]
  %1815 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1702
  %1816 = load i32, ptr %1815, align 4, !tbaa !305
  br i1 %105, label %1824, label %1817, !prof !1208

1817:                                             ; preds = %1808
  %1818 = zext nneg i32 %104 to i64
  %1819 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %1818, i32 3
  %1820 = load ptr, ptr %1819, align 8, !tbaa !297
  %1821 = getelementptr inbounds %struct.insn_operand_data, ptr %1820, i64 %1702, i32 3
  %1822 = load i8, ptr %1821, align 2, !tbaa !1209
  %1823 = sext i8 %1822 to i32
  br label %1824

1824:                                             ; preds = %1808, %1817
  %1825 = phi i32 [ %1823, %1817 ], [ 0, %1808 ]
  %1826 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1702
  %1827 = load i32, ptr %1826, align 4, !tbaa !305
  %1828 = trunc i64 %1702 to i32
  %1829 = call i32 @push_reload(ptr noundef %1811, ptr noundef %1812, ptr noundef %1810, ptr noundef %1813, i32 noundef %1816, i32 noundef %1809, i32 noundef %1814, i32 noundef %1825, i32 noundef 0, i32 noundef %1828, i32 noundef %1827) #25
  %1830 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1702
  store i32 %1829, ptr %1830, align 4, !tbaa !305
  br label %2060

1831:                                             ; preds = %1710
  %1832 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1702
  %1833 = load i32, ptr %1832, align 4, !tbaa !305
  switch i32 %1833, label %1884 [
    i32 0, label %1834
    i32 2, label %1859
  ], !prof !1210

1834:                                             ; preds = %1831
  %1835 = sext i32 %1712 to i64
  %1836 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1835
  %1837 = load i32, ptr %1836, align 4, !tbaa !305
  %1838 = icmp eq i32 %1837, 2
  br i1 %1838, label %1839, label %1884, !prof !1211

1839:                                             ; preds = %1834
  %1840 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1702
  %1841 = load ptr, ptr %1840, align 8, !tbaa !301
  %1842 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1835
  %1843 = load ptr, ptr %1842, align 8, !tbaa !301
  %1844 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1845 = load ptr, ptr %1844, align 8, !tbaa !301
  %1846 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1835
  %1847 = load ptr, ptr %1846, align 8, !tbaa !301
  %1848 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1702
  %1849 = load i32, ptr %1848, align 4, !tbaa !305
  %1850 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %1851 = load i32, ptr %1850, align 4, !tbaa !305
  %1852 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1835
  %1853 = load i32, ptr %1852, align 4, !tbaa !305
  %1854 = trunc i64 %1702 to i32
  %1855 = call i32 @push_reload(ptr noundef %1841, ptr noundef %1843, ptr noundef %1845, ptr noundef %1847, i32 noundef %1849, i32 noundef %1851, i32 noundef %1853, i32 noundef 0, i32 noundef 0, i32 noundef %1854, i32 noundef 9) #25
  %1856 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1702
  store i32 %1855, ptr %1856, align 4, !tbaa !305
  %1857 = load i32, ptr @output_reloadnum, align 4, !tbaa !305
  %1858 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1835
  store i32 %1857, ptr %1858, align 4, !tbaa !305
  br label %2060

1859:                                             ; preds = %1831
  %1860 = sext i32 %1712 to i64
  %1861 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1860
  %1862 = load i32, ptr %1861, align 4, !tbaa !305
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %1864, label %1884, !prof !1212

1864:                                             ; preds = %1859
  %1865 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1860
  %1866 = load ptr, ptr %1865, align 8, !tbaa !301
  %1867 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1702
  %1868 = load ptr, ptr %1867, align 8, !tbaa !301
  %1869 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1860
  %1870 = load ptr, ptr %1869, align 8, !tbaa !301
  %1871 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1872 = load ptr, ptr %1871, align 8, !tbaa !301
  %1873 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1702
  %1874 = load i32, ptr %1873, align 4, !tbaa !305
  %1875 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1860
  %1876 = load i32, ptr %1875, align 4, !tbaa !305
  %1877 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %1878 = load i32, ptr %1877, align 4, !tbaa !305
  %1879 = trunc i64 %1702 to i32
  %1880 = call i32 @push_reload(ptr noundef %1866, ptr noundef %1868, ptr noundef %1870, ptr noundef %1872, i32 noundef %1874, i32 noundef %1876, i32 noundef %1878, i32 noundef 0, i32 noundef 0, i32 noundef %1879, i32 noundef 9) #25
  %1881 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1860
  store i32 %1880, ptr %1881, align 4, !tbaa !305
  %1882 = load i32, ptr @output_reloadnum, align 4, !tbaa !305
  %1883 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1702
  store i32 %1882, ptr %1883, align 4, !tbaa !305
  br label %2060

1884:                                             ; preds = %1831, %1834, %1859
  br i1 %105, label %1886, label %1885

1885:                                             ; preds = %1884
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4082, ptr noundef nonnull @.str.1) #24
  br label %1886

1886:                                             ; preds = %1884, %1885
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %1887 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !301
  %1888 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %1887) #24
  store ptr %1888, ptr %37, align 8, !tbaa !300
  store i32 0, ptr @n_reloads, align 4, !tbaa !305
  br label %2692

1889:                                             ; preds = %1701
  %1890 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1702
  %1891 = load i32, ptr %1890, align 4, !tbaa !305
  %1892 = icmp slt i32 %1891, 0
  %1893 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1702
  %1894 = load i32, ptr %1893, align 4, !tbaa !305
  br i1 %1892, label %1895, label %2010, !prof !1213

1895:                                             ; preds = %1889
  %1896 = icmp slt i32 %1894, 0
  br i1 %1896, label %1897, label %2012, !prof !1214

1897:                                             ; preds = %1895
  %1898 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %1702
  %1899 = load i32, ptr %1898, align 4, !tbaa !305
  %1900 = icmp ne i32 %1899, 1
  %1901 = load i32, ptr @optimize, align 4
  %1902 = icmp ne i32 %1901, 0
  %1903 = select i1 %1900, i1 %1902, i1 false
  br i1 %1903, label %1904, label %2060, !prof !1215

1904:                                             ; preds = %1897
  %1905 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1702
  br label %1906

1906:                                             ; preds = %1911, %1904
  %1907 = phi ptr [ %1905, %1904 ], [ %1912, %1911 ]
  %1908 = load ptr, ptr %1907, align 8, !tbaa !300
  %1909 = load i32, ptr %1908, align 8
  %1910 = trunc i32 %1909 to i16
  switch i16 %1910, label %1975 [
    i16 39, label %1911
    i16 43, label %1916
    i16 37, label %1913
  ], !prof !1216

1911:                                             ; preds = %1906
  %1912 = getelementptr inbounds %struct.rtx_def, ptr %1908, i64 0, i32 1
  br label %1906, !llvm.loop !1217

1913:                                             ; preds = %1906
  %1914 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1908) #25
  %1915 = icmp ugt i32 %1914, 52
  br i1 %1915, label %1916, label %1975, !prof !1218

1916:                                             ; preds = %1906, %1913
  %1917 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1702
  %1918 = load i32, ptr %1917, align 4, !tbaa !305
  %1919 = icmp eq i32 %1918, 0
  %1920 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1702
  %1921 = load i32, ptr %1920, align 4, !tbaa !305
  br i1 %1919, label %1922, label %1924, !prof !1219

1922:                                             ; preds = %1916
  %1923 = icmp eq i32 %1921, 2
  br i1 %1923, label %1936, label %1975, !prof !1220

1924:                                             ; preds = %1916
  %1925 = icmp eq i32 %1921, 0
  br i1 %1925, label %1926, label %1932, !prof !1221

1926:                                             ; preds = %1924
  %1927 = load ptr, ptr %1905, align 8, !tbaa !301
  %1928 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1929 = load ptr, ptr %1928, align 8, !tbaa !301
  %1930 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %1931 = load i32, ptr %1930, align 4, !tbaa !305
  br label %1954

1932:                                             ; preds = %1924
  %1933 = load i32, ptr @this_insn_is_asm, align 4
  %1934 = icmp ne i32 %1933, 0
  %1935 = select i1 %54, i1 true, i1 %1934
  br i1 %1935, label %1975, label %1940, !prof !1222

1936:                                             ; preds = %1922
  %1937 = load i32, ptr @this_insn_is_asm, align 4
  %1938 = icmp ne i32 %1937, 0
  %1939 = select i1 %54, i1 true, i1 %1938
  br i1 %1939, label %1975, label %1942, !prof !1222

1940:                                             ; preds = %1932
  %1941 = icmp eq i32 %1921, 2
  br i1 %1941, label %1942, label %1948, !prof !780

1942:                                             ; preds = %1936, %1940
  %1943 = load ptr, ptr %1905, align 8, !tbaa !301
  %1944 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1945 = load ptr, ptr %1944, align 8, !tbaa !301
  %1946 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %1947 = load i32, ptr %1946, align 4, !tbaa !305
  br label %1954

1948:                                             ; preds = %1940
  %1949 = load ptr, ptr %1905, align 8, !tbaa !301
  %1950 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1951 = load ptr, ptr %1950, align 8, !tbaa !301
  %1952 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %1953 = load i32, ptr %1952, align 4, !tbaa !305
  br label %1954

1954:                                             ; preds = %1942, %1948, %1926
  %1955 = phi i32 [ %1931, %1926 ], [ 0, %1942 ], [ %1953, %1948 ]
  %1956 = phi ptr [ %1929, %1926 ], [ null, %1942 ], [ %1951, %1948 ]
  %1957 = phi ptr [ %1927, %1926 ], [ null, %1942 ], [ %1949, %1948 ]
  %1958 = phi ptr [ null, %1926 ], [ %1943, %1942 ], [ %1949, %1948 ]
  %1959 = phi ptr [ null, %1926 ], [ %1945, %1942 ], [ %1951, %1948 ]
  %1960 = phi i32 [ 0, %1926 ], [ %1947, %1942 ], [ %1953, %1948 ]
  br i1 %105, label %1968, label %1961, !prof !1223

1961:                                             ; preds = %1954
  %1962 = zext nneg i32 %104 to i64
  %1963 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %1962, i32 3
  %1964 = load ptr, ptr %1963, align 8, !tbaa !297
  %1965 = getelementptr inbounds %struct.insn_operand_data, ptr %1964, i64 %1702, i32 3
  %1966 = load i8, ptr %1965, align 2, !tbaa !1209
  %1967 = sext i8 %1966 to i32
  br label %1968

1968:                                             ; preds = %1954, %1961
  %1969 = phi i32 [ %1967, %1961 ], [ 0, %1954 ]
  %1970 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1702
  %1971 = load i32, ptr %1970, align 4, !tbaa !305
  %1972 = trunc i64 %1702 to i32
  %1973 = call i32 @push_reload(ptr noundef %1957, ptr noundef %1958, ptr noundef %1956, ptr noundef %1959, i32 noundef %1918, i32 noundef %1955, i32 noundef %1960, i32 noundef %1969, i32 noundef 1, i32 noundef %1972, i32 noundef %1971) #25
  %1974 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1702
  store i32 %1973, ptr %1974, align 4, !tbaa !305
  br label %2060

1975:                                             ; preds = %1906, %1936, %1932, %1922, %1913
  br i1 %1697, label %2060, label %1976, !prof !1224

1976:                                             ; preds = %1975
  switch i16 %1910, label %2060 [
    i16 43, label %1986
    i16 37, label %1977
  ], !prof !1225

1977:                                             ; preds = %1976
  %1978 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1908) #25
  %1979 = icmp ugt i32 %1978, 52
  br i1 %1979, label %1980, label %2060, !prof !1226

1980:                                             ; preds = %1977
  %1981 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %1982 = zext i32 %1978 to i64
  %1983 = getelementptr inbounds i16, ptr %1981, i64 %1982
  %1984 = load i16, ptr %1983, align 2, !tbaa !349
  %1985 = icmp slt i16 %1984, 0
  br i1 %1985, label %1986, label %2060, !prof !1227

1986:                                             ; preds = %1976, %1980
  %1987 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %1988 = load ptr, ptr %1987, align 8, !tbaa !301
  br label %1989

1989:                                             ; preds = %1994, %1986
  %1990 = phi ptr [ %1988, %1986 ], [ %1995, %1994 ]
  %1991 = load ptr, ptr %1990, align 8, !tbaa !300
  %1992 = load i32, ptr %1991, align 8
  %1993 = trunc i32 %1992 to i16
  switch i16 %1993, label %2060 [
    i16 39, label %1994
    i16 37, label %1996
  ], !prof !1228

1994:                                             ; preds = %1989
  %1995 = getelementptr inbounds %struct.rtx_def, ptr %1991, i64 0, i32 1
  br label %1989, !llvm.loop !1229

1996:                                             ; preds = %1989
  %1997 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1702
  %1998 = load i32, ptr %1997, align 4, !tbaa !305
  %1999 = icmp eq i32 %1998, 2
  br i1 %1999, label %2007, label %2000, !prof !1230

2000:                                             ; preds = %1996
  %2001 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %1991) #24
  %2002 = call ptr @emit_insn_before(ptr noundef %2001, ptr noundef nonnull %0) #24
  %2003 = load i32, ptr %2002, align 8
  %2004 = and i32 %2003, -16711681
  %2005 = or disjoint i32 %2004, 917504
  store i32 %2005, ptr %2002, align 8
  %2006 = icmp eq i32 %1998, 0
  br i1 %2006, label %2060, label %2007, !prof !780

2007:                                             ; preds = %1996, %2000
  %2008 = call ptr @gen_clobber(ptr noundef nonnull %1991) #24
  %2009 = call ptr @emit_insn_after(ptr noundef %2008, ptr noundef nonnull %0) #24
  br label %2060

2010:                                             ; preds = %1889
  %2011 = icmp sgt i32 %1894, -1
  br i1 %2011, label %2012, label %2060, !prof !1231

2012:                                             ; preds = %1895, %2010
  %2013 = zext nneg i32 %1894 to i64
  %2014 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %2013
  %2015 = load i8, ptr %2014, align 1, !tbaa !300
  %2016 = icmp eq i8 %2015, 0
  br i1 %2016, label %2060, label %2017, !prof !1232

2017:                                             ; preds = %2012
  %2018 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1702
  %2019 = load i32, ptr %2018, align 4, !tbaa !305
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2021, label %2060, !prof !1233

2021:                                             ; preds = %2017
  %2022 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %2013
  %2023 = load i32, ptr %2022, align 4, !tbaa !305
  %2024 = icmp ne i32 %2023, 2
  %2025 = or i1 %54, %2024
  %2026 = load i32, ptr @optimize, align 4
  %2027 = icmp eq i32 %2026, 0
  %2028 = select i1 %2025, i1 true, i1 %2027
  br i1 %2028, label %2060, label %2029, !prof !1234

2029:                                             ; preds = %2021
  %2030 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1702
  br label %2031

2031:                                             ; preds = %2036, %2029
  %2032 = phi ptr [ %2030, %2029 ], [ %2037, %2036 ]
  %2033 = load ptr, ptr %2032, align 8, !tbaa !300
  %2034 = load i32, ptr %2033, align 8
  %2035 = trunc i32 %2034 to i16
  switch i16 %2035, label %2060 [
    i16 39, label %2036
    i16 43, label %2041
    i16 37, label %2038
  ], !prof !1235

2036:                                             ; preds = %2031
  %2037 = getelementptr inbounds %struct.rtx_def, ptr %2033, i64 0, i32 1
  br label %2031, !llvm.loop !1236

2038:                                             ; preds = %2031
  %2039 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2033) #25
  %2040 = icmp ugt i32 %2039, 52
  br i1 %2040, label %2041, label %2060, !prof !1237

2041:                                             ; preds = %2031, %2038
  %2042 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %2013
  %2043 = load i32, ptr %2042, align 4, !tbaa !305
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2060, label %2045, !prof !1238

2045:                                             ; preds = %2041
  %2046 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %2013
  %2047 = load ptr, ptr %2046, align 8, !tbaa !301
  %2048 = load ptr, ptr %2030, align 8, !tbaa !301
  %2049 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2013
  %2050 = load ptr, ptr %2049, align 8, !tbaa !301
  %2051 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1702
  %2052 = load ptr, ptr %2051, align 8, !tbaa !301
  %2053 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %2013
  %2054 = load i32, ptr %2053, align 4, !tbaa !305
  %2055 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1702
  %2056 = load i32, ptr %2055, align 4, !tbaa !305
  %2057 = call i32 @push_reload(ptr noundef %2047, ptr noundef %2048, ptr noundef %2050, ptr noundef %2052, i32 noundef %2043, i32 noundef %2054, i32 noundef %2056, i32 noundef 0, i32 noundef 1, i32 noundef %1894, i32 noundef 9) #25
  %2058 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2013
  store i32 %2057, ptr %2058, align 4, !tbaa !305
  %2059 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1702
  store i32 %2057, ptr %2059, align 4, !tbaa !305
  br label %2060

2060:                                             ; preds = %2031, %1989, %1783, %1897, %1766, %2038, %2041, %2045, %1968, %2007, %2000, %1980, %1977, %1975, %1976, %1745, %1839, %1864, %1824, %1706, %2010, %2012, %2017, %2021
  %2061 = add nuw nsw i64 %1702, 1
  %2062 = icmp eq i64 %2061, %446
  br i1 %2062, label %1698, label %1701, !prof !1008, !llvm.loop !1239

2063:                                             ; preds = %1699, %2094
  %2064 = phi i64 [ 0, %1699 ], [ %2096, %2094 ]
  %2065 = phi i32 [ 0, %1699 ], [ %2095, %2094 ]
  %2066 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %2064
  %2067 = load ptr, ptr %2066, align 8, !tbaa !301
  %2068 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2064
  %2069 = load ptr, ptr %2068, align 8, !tbaa !301
  br i1 %1700, label %2089, label %2070, !prof !1240

2070:                                             ; preds = %2063
  store ptr %2067, ptr %2069, align 8, !tbaa !301
  %2071 = load i32, ptr %2067, align 8
  %2072 = and i32 %2071, 65535
  %2073 = icmp eq i32 %2072, 44
  br i1 %2073, label %2074, label %2094, !prof !1241

2074:                                             ; preds = %2070
  %2075 = getelementptr inbounds %struct.rtx_def, ptr %2067, i64 0, i32 1
  %2076 = load ptr, ptr %2075, align 8, !tbaa !300
  %2077 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2076) #24
  %2078 = icmp eq ptr %2077, null
  br i1 %2078, label %2079, label %2094

2079:                                             ; preds = %2074
  %2080 = load i32, ptr %0, align 8
  %2081 = and i32 %2080, 65535
  %2082 = icmp eq i32 %2081, 9
  br i1 %2082, label %2083, label %2087

2083:                                             ; preds = %2079
  %2084 = load ptr, ptr %2075, align 8, !tbaa !300
  %2085 = call zeroext i8 @label_is_jump_target_p(ptr noundef %2084, ptr noundef nonnull %0) #24
  %2086 = icmp eq i8 %2085, 0
  br i1 %2086, label %2087, label %2094

2087:                                             ; preds = %2083, %2079
  %2088 = load ptr, ptr %2075, align 8, !tbaa !300
  call void @add_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2088) #24
  br label %2094

2089:                                             ; preds = %2063
  %2090 = load ptr, ptr %2069, align 8, !tbaa !301
  %2091 = icmp ne ptr %2067, %2090
  %2092 = zext i1 %2091 to i32
  %2093 = or i32 %2065, %2092
  br label %2094

2094:                                             ; preds = %2070, %2074, %2083, %2087, %2089
  %2095 = phi i32 [ %2093, %2089 ], [ %2065, %2087 ], [ %2065, %2083 ], [ %2065, %2074 ], [ %2065, %2070 ]
  %2096 = add nuw nsw i64 %2064, 1
  %2097 = icmp eq i64 %2096, %446
  br i1 %2097, label %2098, label %2063, !prof !1008, !llvm.loop !1242

2098:                                             ; preds = %2094, %1676, %1695, %1698
  %2099 = phi i32 [ 0, %1698 ], [ 0, %1695 ], [ 0, %1676 ], [ %2095, %2094 ]
  %2100 = icmp sgt i32 %104, -1
  %2101 = icmp ne i32 %1, 0
  %2102 = and i1 %2101, %2100
  br i1 %2102, label %2103, label %2124, !prof !1243

2103:                                             ; preds = %2098
  %2104 = zext nneg i32 %104 to i64
  %2105 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2104, i32 5
  %2106 = load i8, ptr %2105, align 1, !tbaa !1244
  %2107 = icmp sgt i8 %2106, 0
  br i1 %2107, label %2108, label %2124, !prof !1245

2108:                                             ; preds = %2103
  %2109 = zext nneg i8 %2106 to i64
  br label %2110

2110:                                             ; preds = %2108, %2110
  %2111 = phi i64 [ %2109, %2108 ], [ %2112, %2110 ]
  %2112 = add nsw i64 %2111, -1
  %2113 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %2112
  %2114 = load i8, ptr %2113, align 1, !tbaa !300
  %2115 = sext i8 %2114 to i64
  %2116 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2115
  %2117 = load ptr, ptr %2116, align 8, !tbaa !301
  %2118 = load ptr, ptr %2117, align 8, !tbaa !301
  %2119 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %2112
  %2120 = load ptr, ptr %2119, align 8, !tbaa !301
  store ptr %2118, ptr %2120, align 8, !tbaa !301
  %2121 = load ptr, ptr %2119, align 8, !tbaa !301
  %2122 = load ptr, ptr %2116, align 8, !tbaa !301
  call fastcc void @dup_replacements(ptr noundef %2121, ptr noundef %2122) #25
  %2123 = icmp ugt i64 %2111, 1
  br i1 %2123, label %2110, label %2124, !prof !1246, !llvm.loop !1247

2124:                                             ; preds = %2110, %2103, %2098
  %2125 = load ptr, ptr %37, align 8, !tbaa !300
  %2126 = load i32, ptr %2125, align 8
  %2127 = and i32 %2126, 65535
  %2128 = icmp eq i32 %2127, 24
  br i1 %2128, label %2129, label %2136, !prof !1248

2129:                                             ; preds = %2124
  %2130 = getelementptr inbounds %struct.rtx_def, ptr %2125, i64 0, i32 1
  %2131 = load ptr, ptr %2130, align 8, !tbaa !300
  %2132 = load i32, ptr %2131, align 8
  %2133 = and i32 %2132, 65535
  %2134 = icmp eq i32 %2133, 30
  br i1 %2134, label %2135, label %2136

2135:                                             ; preds = %2129
  store i32 0, ptr @n_reloads, align 4, !tbaa !305
  br label %2136

2136:                                             ; preds = %2135, %2129, %2124
  br i1 %1675, label %2137, label %2138, !prof !1197

2137:                                             ; preds = %2136
  call fastcc void @combine_reloads() #25
  br label %2138

2138:                                             ; preds = %2137, %2136
  %2139 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %2140 = icmp sgt i32 %2139, 0
  br i1 %2140, label %2152, label %2347, !prof !1249

2141:                                             ; preds = %2233
  %2142 = sext i32 %2235 to i64
  br label %2143

2143:                                             ; preds = %2141, %2152
  %2144 = phi i64 [ %2142, %2141 ], [ %2157, %2152 ]
  %2145 = phi i32 [ %2235, %2141 ], [ %2153, %2152 ]
  %2146 = icmp slt i64 %2156, %2144
  %2147 = add nuw nsw i64 %2155, 1
  br i1 %2146, label %2152, label %2148, !prof !1250, !llvm.loop !1251

2148:                                             ; preds = %2143
  %2149 = icmp sgt i32 %2145, 0
  br i1 %2149, label %2150, label %2347, !prof !780

2150:                                             ; preds = %2148
  %2151 = zext nneg i32 %2145 to i64
  br label %2238

2152:                                             ; preds = %2138, %2143
  %2153 = phi i32 [ %2145, %2143 ], [ %2139, %2138 ]
  %2154 = phi i64 [ %2156, %2143 ], [ 0, %2138 ]
  %2155 = phi i64 [ %2147, %2143 ], [ 1, %2138 ]
  %2156 = add nuw nsw i64 %2154, 1
  %2157 = sext i32 %2153 to i64
  %2158 = icmp slt i64 %2156, %2157
  br i1 %2158, label %2159, label %2143, !prof !1252

2159:                                             ; preds = %2152
  %2160 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2154, i32 17
  br label %2161

2161:                                             ; preds = %2159, %2233
  %2162 = phi i64 [ %2155, %2159 ], [ %2234, %2233 ]
  %2163 = load i32, ptr %2160, align 4, !tbaa !467
  %2164 = add i32 %2163, -3
  %2165 = icmp ult i32 %2164, 4
  br i1 %2165, label %2166, label %2233, !prof !1253

2166:                                             ; preds = %2161
  %2167 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2162
  %2168 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2162, i32 17
  %2169 = load i32, ptr %2168, align 4, !tbaa !467
  %2170 = add i32 %2169, -3
  %2171 = icmp ult i32 %2170, 4
  br i1 %2171, label %2172, label %2233, !prof !1254

2172:                                             ; preds = %2166
  %2173 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2154
  %2174 = load ptr, ptr %2173, align 8, !tbaa !456
  %2175 = load ptr, ptr %2167, align 8, !tbaa !456
  %2176 = call i32 @rtx_equal_p(ptr noundef %2174, ptr noundef %2175) #24
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2233, label %2178, !prof !1255

2178:                                             ; preds = %2172
  %2179 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2154, i32 12
  %2180 = load i32, ptr %2179, align 8, !tbaa !466
  %2181 = sext i32 %2180 to i64
  %2182 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2181
  %2183 = load i32, ptr %2182, align 4, !tbaa !305
  %2184 = icmp slt i32 %2183, 0
  br i1 %2184, label %2191, label %2185, !prof !1256

2185:                                             ; preds = %2178
  %2186 = zext nneg i32 %2183 to i64
  %2187 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2186, i32 18
  %2188 = load i8, ptr %2187, align 8
  %2189 = and i8 %2188, 1
  %2190 = icmp eq i8 %2189, 0
  br i1 %2190, label %2233, label %2191, !prof !1257

2191:                                             ; preds = %2185, %2178
  %2192 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2162, i32 12
  %2193 = load i32, ptr %2192, align 8, !tbaa !466
  %2194 = sext i32 %2193 to i64
  %2195 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2194
  %2196 = load i32, ptr %2195, align 4, !tbaa !305
  %2197 = icmp slt i32 %2196, 0
  br i1 %2197, label %2204, label %2198, !prof !1256

2198:                                             ; preds = %2191
  %2199 = zext nneg i32 %2196 to i64
  %2200 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2199, i32 18
  %2201 = load i8, ptr %2200, align 8
  %2202 = and i8 %2201, 1
  %2203 = icmp eq i8 %2202, 0
  br i1 %2203, label %2233, label %2204, !prof !1258

2204:                                             ; preds = %2198, %2191
  %2205 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2181
  %2206 = load i32, ptr %2205, align 4, !tbaa !305
  %2207 = icmp eq i32 %2206, %2193
  br i1 %2207, label %2212, label %2208, !prof !1259

2208:                                             ; preds = %2204
  %2209 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2194
  %2210 = load i32, ptr %2209, align 4, !tbaa !305
  %2211 = icmp eq i32 %2210, %2180
  br i1 %2211, label %2212, label %2233, !prof !1260

2212:                                             ; preds = %2208, %2204
  %2213 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %2214 = icmp sgt i32 %2213, 0
  br i1 %2214, label %2215, label %2228, !prof !1261

2215:                                             ; preds = %2212
  %2216 = zext nneg i32 %2213 to i64
  br label %2217

2217:                                             ; preds = %2215, %2225
  %2218 = phi i64 [ 0, %2215 ], [ %2226, %2225 ]
  %2219 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2218, i32 2
  %2220 = load i32, ptr %2219, align 8, !tbaa !488
  %2221 = zext i32 %2220 to i64
  %2222 = icmp eq i64 %2162, %2221
  br i1 %2222, label %2223, label %2225, !prof !1262

2223:                                             ; preds = %2217
  %2224 = trunc i64 %2154 to i32
  store i32 %2224, ptr %2219, align 8, !tbaa !488
  br label %2225

2225:                                             ; preds = %2217, %2223
  %2226 = add nuw nsw i64 %2218, 1
  %2227 = icmp eq i64 %2226, %2216
  br i1 %2227, label %2228, label %2217, !prof !1263, !llvm.loop !1264

2228:                                             ; preds = %2225, %2212
  %2229 = load i32, ptr %2160, align 4, !tbaa !467
  %2230 = and i32 %2229, -3
  %2231 = icmp eq i32 %2230, 4
  %2232 = select i1 %2231, i32 8, i32 7
  store i32 %2232, ptr %2160, align 4, !tbaa !467
  store ptr null, ptr %2167, align 8, !tbaa !456
  br label %2233

2233:                                             ; preds = %2166, %2161, %2172, %2185, %2198, %2208, %2228
  %2234 = add nuw nsw i64 %2162, 1
  %2235 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %2236 = trunc i64 %2234 to i32
  %2237 = icmp sgt i32 %2235, %2236
  br i1 %2237, label %2161, label %2141, !prof !1265, !llvm.loop !1266

2238:                                             ; preds = %2150, %2344
  %2239 = phi i64 [ 0, %2150 ], [ %2345, %2344 ]
  %2240 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 18
  %2241 = load i8, ptr %2240, align 8
  %2242 = and i8 %2241, 4
  %2243 = icmp eq i8 %2242, 0
  %2244 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 17
  %2245 = load i32, ptr %2244, align 4, !tbaa !467
  br i1 %2243, label %2256, label %2246, !prof !1267

2246:                                             ; preds = %2238
  %2247 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 12
  %2248 = load i32, ptr %2247, align 8, !tbaa !466
  %2249 = sext i32 %2248 to i64
  %2250 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %2249
  %2251 = load i32, ptr %2250, align 4, !tbaa !305
  %2252 = icmp eq i32 %2245, %2251
  br i1 %2252, label %2253, label %2256, !prof !698

2253:                                             ; preds = %2246
  %2254 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %2249
  %2255 = load i32, ptr %2254, align 4, !tbaa !305
  store i32 %2255, ptr %2244, align 4, !tbaa !467
  br label %2256

2256:                                             ; preds = %2238, %2253, %2246
  %2257 = phi i32 [ %2255, %2253 ], [ %2245, %2246 ], [ %2245, %2238 ]
  %2258 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 17
  %2259 = add i32 %2257, -3
  %2260 = icmp ult i32 %2259, 4
  br i1 %2260, label %2261, label %2317, !prof !1268

2261:                                             ; preds = %2256
  %2262 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 12
  %2263 = load i32, ptr %2262, align 8, !tbaa !466
  %2264 = sext i32 %2263 to i64
  %2265 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2264
  %2266 = load i32, ptr %2265, align 4, !tbaa !305
  %2267 = icmp slt i32 %2266, 0
  br i1 %2267, label %2274, label %2268, !prof !1269

2268:                                             ; preds = %2261
  %2269 = zext nneg i32 %2266 to i64
  %2270 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2269, i32 18
  %2271 = load i8, ptr %2270, align 8
  %2272 = and i8 %2271, 1
  %2273 = icmp eq i8 %2272, 0
  br i1 %2273, label %2317, label %2274, !prof !1270

2274:                                             ; preds = %2268, %2261
  %2275 = icmp ult i32 %2259, 2
  br i1 %2275, label %2276, label %2291, !prof !1271

2276:                                             ; preds = %2274
  %2277 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 13
  %2278 = load i32, ptr %2277, align 4, !tbaa !468
  %2279 = icmp eq i32 %2278, -1
  br i1 %2279, label %2291, label %2280, !prof !1272

2280:                                             ; preds = %2276
  %2281 = sext i32 %2278 to i64
  %2282 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2281, i32 17
  store i32 8, ptr %2282, align 4, !tbaa !467
  %2283 = icmp sgt i32 %2278, 0
  br i1 %2283, label %2284, label %2291

2284:                                             ; preds = %2280
  %2285 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2281, i32 13
  %2286 = load i32, ptr %2285, align 4, !tbaa !468
  %2287 = icmp eq i32 %2286, -1
  br i1 %2287, label %2291, label %2288

2288:                                             ; preds = %2284
  %2289 = sext i32 %2286 to i64
  %2290 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2289, i32 17
  store i32 8, ptr %2290, align 4, !tbaa !467
  br label %2291

2291:                                             ; preds = %2274, %2280, %2284, %2288, %2276
  %2292 = load i32, ptr %2258, align 4, !tbaa !467
  %2293 = add i32 %2292, -5
  %2294 = icmp ult i32 %2293, 2
  br i1 %2294, label %2295, label %2312, !prof !1273

2295:                                             ; preds = %2291
  %2296 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 14
  %2297 = load i32, ptr %2296, align 8, !tbaa !469
  %2298 = icmp eq i32 %2297, -1
  br i1 %2298, label %2310, label %2299, !prof !1274

2299:                                             ; preds = %2295
  %2300 = sext i32 %2297 to i64
  %2301 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2300, i32 17
  store i32 8, ptr %2301, align 4, !tbaa !467
  %2302 = icmp eq i32 %2297, 0
  br i1 %2302, label %2310, label %2303

2303:                                             ; preds = %2299
  %2304 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2300, i32 14
  %2305 = load i32, ptr %2304, align 8, !tbaa !469
  %2306 = icmp eq i32 %2305, -1
  br i1 %2306, label %2310, label %2307

2307:                                             ; preds = %2303
  %2308 = sext i32 %2305 to i64
  %2309 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2308, i32 17
  store i32 8, ptr %2309, align 4, !tbaa !467
  br label %2310

2310:                                             ; preds = %2295, %2307, %2303, %2299
  %2311 = load i32, ptr %2258, align 4, !tbaa !467
  br label %2312

2312:                                             ; preds = %2310, %2291
  %2313 = phi i32 [ %2311, %2310 ], [ %2292, %2291 ]
  %2314 = and i32 %2313, -3
  %2315 = icmp eq i32 %2314, 4
  %2316 = select i1 %2315, i32 8, i32 7
  store i32 %2316, ptr %2258, align 4, !tbaa !467
  br label %2320

2317:                                             ; preds = %2256, %2268
  %2318 = add i32 %2257, -3
  %2319 = icmp ult i32 %2318, 2
  br i1 %2319, label %2324, label %2320, !prof !1275

2320:                                             ; preds = %2312, %2317
  %2321 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 12
  %2322 = load i32, ptr %2321, align 8, !tbaa !466
  %2323 = sext i32 %2322 to i64
  br label %2337

2324:                                             ; preds = %2317
  %2325 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 12
  %2326 = load i32, ptr %2325, align 8, !tbaa !466
  %2327 = sext i32 %2326 to i64
  %2328 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2327
  %2329 = load i32, ptr %2328, align 4, !tbaa !305
  %2330 = icmp sgt i32 %2329, -1
  br i1 %2330, label %2331, label %2337, !prof !1276

2331:                                             ; preds = %2324
  %2332 = zext nneg i32 %2329 to i64
  %2333 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2332, i32 17
  %2334 = load i32, ptr %2333, align 4, !tbaa !467
  %2335 = icmp eq i32 %2334, 9
  br i1 %2335, label %2336, label %2337, !prof !1277

2336:                                             ; preds = %2331
  store i32 10, ptr %2258, align 4, !tbaa !467
  br label %2337

2337:                                             ; preds = %2320, %2336, %2331, %2324
  %2338 = phi i64 [ %2323, %2320 ], [ %2327, %2336 ], [ %2327, %2331 ], [ %2327, %2324 ]
  %2339 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2338
  %2340 = load i32, ptr %2339, align 4, !tbaa !305
  %2341 = icmp sgt i32 %2340, -1
  br i1 %2341, label %2342, label %2344, !prof !1278

2342:                                             ; preds = %2337
  %2343 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2239, i32 12
  store i32 %2340, ptr %2343, align 8, !tbaa !466
  br label %2344

2344:                                             ; preds = %2337, %2342
  %2345 = add nuw nsw i64 %2239, 1
  %2346 = icmp eq i64 %2345, %2151
  br i1 %2346, label %2347, label %2238, !prof !1279, !llvm.loop !1280

2347:                                             ; preds = %2344, %2138, %2148
  %2348 = phi i1 [ false, %2148 ], [ false, %2138 ], [ %2149, %2344 ]
  %2349 = phi i32 [ %2145, %2148 ], [ %2139, %2138 ], [ %2145, %2344 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %36) #23
  br i1 %110, label %2353, label %2350, !prof !995

2350:                                             ; preds = %2353, %2347
  br i1 %2348, label %2351, label %2458, !prof !1249

2351:                                             ; preds = %2350
  %2352 = zext nneg i32 %2349 to i64
  br label %2359

2353:                                             ; preds = %2347, %2353
  %2354 = phi i64 [ %2357, %2353 ], [ 0, %2347 ]
  %2355 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2354
  store i32 -2, ptr %2355, align 4, !tbaa !305
  %2356 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2354
  store i32 -2, ptr %2356, align 4, !tbaa !305
  %2357 = add nuw nsw i64 %2354, 1
  %2358 = icmp eq i64 %2357, %446
  br i1 %2358, label %2350, label %2353, !prof !1008, !llvm.loop !1281

2359:                                             ; preds = %2351, %2394
  %2360 = phi i64 [ %2352, %2351 ], [ %2363, %2394 ]
  %2361 = phi i32 [ 0, %2351 ], [ %2396, %2394 ]
  %2362 = phi i32 [ -2, %2351 ], [ %2395, %2394 ]
  %2363 = add nsw i64 %2360, -1
  %2364 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2363, i32 17
  %2365 = load i32, ptr %2364, align 4, !tbaa !467
  switch i32 %2365, label %2394 [
    i32 7, label %2366
    i32 3, label %2372
    i32 5, label %2383
  ], !prof !1282

2366:                                             ; preds = %2359
  %2367 = add nsw i32 %2362, 1
  %2368 = icmp sgt i32 %2362, -2
  %2369 = trunc i64 %2363 to i32
  %2370 = select i1 %2368, i32 %2369, i32 %2367, !prof !1283
  %2371 = select i1 %2368, i32 1, i32 %2361, !prof !1283
  br label %2394

2372:                                             ; preds = %2359
  %2373 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2363, i32 12
  %2374 = load i32, ptr %2373, align 8, !tbaa !466
  %2375 = sext i32 %2374 to i64
  %2376 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2375
  %2377 = load i32, ptr %2376, align 4, !tbaa !305
  %2378 = add nsw i32 %2377, 1
  %2379 = icmp sgt i32 %2377, -2
  %2380 = trunc i64 %2363 to i32
  %2381 = select i1 %2379, i32 %2380, i32 %2378, !prof !1284
  store i32 %2381, ptr %2376, align 4
  %2382 = select i1 %2379, i32 1, i32 %2361, !prof !1284
  br label %2394

2383:                                             ; preds = %2359
  %2384 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2363, i32 12
  %2385 = load i32, ptr %2384, align 8, !tbaa !466
  %2386 = sext i32 %2385 to i64
  %2387 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2386
  %2388 = load i32, ptr %2387, align 4, !tbaa !305
  %2389 = add nsw i32 %2388, 1
  %2390 = icmp sgt i32 %2388, -2
  %2391 = trunc i64 %2363 to i32
  %2392 = select i1 %2390, i32 %2391, i32 %2389, !prof !698
  store i32 %2392, ptr %2387, align 4
  %2393 = select i1 %2390, i32 1, i32 %2361, !prof !698
  br label %2394

2394:                                             ; preds = %2383, %2372, %2366, %2359
  %2395 = phi i32 [ %2362, %2359 ], [ %2370, %2366 ], [ %2362, %2372 ], [ %2362, %2383 ]
  %2396 = phi i32 [ %2361, %2359 ], [ %2371, %2366 ], [ %2382, %2372 ], [ %2393, %2383 ]
  %2397 = icmp ugt i64 %2360, 1
  br i1 %2397, label %2359, label %2398, !prof !1250, !llvm.loop !1285

2398:                                             ; preds = %2394
  %2399 = icmp eq i32 %2396, 0
  br i1 %2399, label %2458, label %2400, !prof !1286

2400:                                             ; preds = %2398
  br i1 %2348, label %2401, label %2458, !prof !1287

2401:                                             ; preds = %2400, %2453
  %2402 = phi i64 [ %2454, %2453 ], [ 0, %2400 ]
  %2403 = phi i32 [ %2455, %2453 ], [ %2349, %2400 ]
  %2404 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2402
  %2405 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2402, i32 17
  %2406 = load i32, ptr %2405, align 4, !tbaa !467
  switch i32 %2406, label %2453 [
    i32 8, label %2416
    i32 4, label %2408
    i32 6, label %2407
  ], !prof !1288

2407:                                             ; preds = %2401
  br label %2408

2408:                                             ; preds = %2401, %2407
  %2409 = phi ptr [ %36, %2407 ], [ %35, %2401 ]
  %2410 = phi i32 [ 5, %2407 ], [ 3, %2401 ]
  %2411 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2402, i32 12
  %2412 = load i32, ptr %2411, align 8, !tbaa !466
  %2413 = sext i32 %2412 to i64
  %2414 = getelementptr inbounds [30 x i32], ptr %2409, i64 0, i64 %2413
  %2415 = load i32, ptr %2414, align 4, !tbaa !305
  br label %2416

2416:                                             ; preds = %2408, %2401
  %2417 = phi i32 [ %2395, %2401 ], [ %2415, %2408 ]
  %2418 = phi i32 [ 7, %2401 ], [ %2410, %2408 ]
  %2419 = icmp slt i32 %2417, 0
  br i1 %2419, label %2453, label %2420

2420:                                             ; preds = %2416
  %2421 = zext nneg i32 %2417 to i64
  %2422 = icmp ugt i64 %2402, %2421
  br i1 %2422, label %2452, label %2423

2423:                                             ; preds = %2420
  %2424 = add nsw i32 %2403, -1
  %2425 = icmp sgt i32 %2424, %2417
  br i1 %2425, label %2426, label %2453

2426:                                             ; preds = %2423
  %2427 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2402, i32 18
  br label %2428

2428:                                             ; preds = %2426, %2449
  %2429 = phi i32 [ %2424, %2426 ], [ %2450, %2449 ]
  %2430 = zext nneg i32 %2429 to i64
  %2431 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2430
  %2432 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2430, i32 17
  %2433 = load i32, ptr %2432, align 4, !tbaa !467
  %2434 = icmp eq i32 %2433, %2418
  br i1 %2434, label %2435, label %2449

2435:                                             ; preds = %2428
  %2436 = load i8, ptr %2427, align 8
  %2437 = and i8 %2436, 4
  %2438 = icmp eq i8 %2437, 0
  br i1 %2438, label %2444, label %2439

2439:                                             ; preds = %2435
  %2440 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2430, i32 13
  %2441 = load i32, ptr %2440, align 4, !tbaa !468
  %2442 = zext i32 %2441 to i64
  %2443 = icmp eq i64 %2402, %2442
  br i1 %2443, label %2452, label %2449

2444:                                             ; preds = %2435
  %2445 = load ptr, ptr %2404, align 8, !tbaa !456
  %2446 = load ptr, ptr %2431, align 8, !tbaa !456
  %2447 = call i32 @reg_mentioned_p(ptr noundef %2445, ptr noundef %2446) #24
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2449, label %2452

2449:                                             ; preds = %2428, %2439, %2444
  %2450 = add nsw i32 %2429, -1
  %2451 = icmp sgt i32 %2450, %2417
  br i1 %2451, label %2428, label %2453, !llvm.loop !1289

2452:                                             ; preds = %2439, %2444, %2420
  store i32 %2418, ptr %2405, align 4, !tbaa !467
  br label %2453

2453:                                             ; preds = %2449, %2452, %2423, %2416, %2401
  %2454 = add nuw nsw i64 %2402, 1
  %2455 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %2456 = sext i32 %2455 to i64
  %2457 = icmp slt i64 %2454, %2456
  br i1 %2457, label %2401, label %2458, !prof !1290, !llvm.loop !1291

2458:                                             ; preds = %2453, %2350, %2400, %2398
  %2459 = phi i32 [ %2349, %2400 ], [ %2349, %2398 ], [ %2349, %2350 ], [ %2455, %2453 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %35) #23
  %2460 = icmp sgt i32 %2459, 0
  br i1 %2460, label %2463, label %2692, !prof !1249

2461:                                             ; preds = %2553
  %2462 = icmp sgt i32 %2554, 0
  br i1 %2462, label %2560, label %2692, !prof !780

2463:                                             ; preds = %2458, %2553
  %2464 = phi i32 [ %2554, %2553 ], [ %2459, %2458 ]
  %2465 = phi i64 [ %2555, %2553 ], [ 0, %2458 ]
  %2466 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2465
  %2467 = load ptr, ptr %2466, align 8, !tbaa !456
  %2468 = icmp eq ptr %2467, null
  br i1 %2468, label %2553, label %2469, !prof !1292

2469:                                             ; preds = %2463
  %2470 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2465, i32 1
  %2471 = load ptr, ptr %2470, align 8, !tbaa !458
  %2472 = icmp eq ptr %2471, null
  br i1 %2472, label %2473, label %2553, !prof !1293

2473:                                             ; preds = %2469
  %2474 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2465, i32 17
  %2475 = load i32, ptr %2474, align 4, !tbaa !467
  switch i32 %2475, label %2553 [
    i32 7, label %2476
    i32 8, label %2476
    i32 10, label %2476
  ], !prof !1294

2476:                                             ; preds = %2473, %2473, %2473
  %2477 = icmp sgt i32 %2464, 0
  br i1 %2477, label %2478, label %2553, !prof !1295

2478:                                             ; preds = %2476, %2548
  %2479 = phi i64 [ %2549, %2548 ], [ 0, %2476 ]
  %2480 = icmp eq i64 %2465, %2479
  br i1 %2480, label %2548, label %2481, !prof !1296

2481:                                             ; preds = %2478
  %2482 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2479
  %2483 = load ptr, ptr %2482, align 8, !tbaa !456
  %2484 = icmp eq ptr %2483, null
  br i1 %2484, label %2548, label %2485, !prof !1297

2485:                                             ; preds = %2481
  %2486 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2479, i32 1
  %2487 = load ptr, ptr %2486, align 8, !tbaa !458
  %2488 = icmp eq ptr %2487, null
  br i1 %2488, label %2489, label %2548, !prof !1298

2489:                                             ; preds = %2485
  %2490 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2479, i32 17
  %2491 = load i32, ptr %2490, align 4, !tbaa !467
  %2492 = load i32, ptr %2474, align 4, !tbaa !467
  %2493 = icmp eq i32 %2491, %2492
  br i1 %2493, label %2494, label %2548, !prof !1299

2494:                                             ; preds = %2489
  %2495 = load ptr, ptr %2466, align 8, !tbaa !456
  %2496 = icmp eq ptr %2495, %2483
  br i1 %2496, label %2518, label %2497, !prof !1300

2497:                                             ; preds = %2494
  %2498 = icmp eq ptr %2495, null
  br i1 %2498, label %2548, label %2499, !prof !1300

2499:                                             ; preds = %2497
  %2500 = load i32, ptr %2495, align 8
  %2501 = and i32 %2500, 65535
  %2502 = icmp eq i32 %2501, 37
  br i1 %2502, label %2503, label %2511, !prof !1300

2503:                                             ; preds = %2499
  %2504 = load i32, ptr %2483, align 8
  %2505 = and i32 %2504, 65535
  %2506 = icmp eq i32 %2505, 37
  br i1 %2506, label %2507, label %2548, !prof !1301

2507:                                             ; preds = %2503
  %2508 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2495) #25
  %2509 = call fastcc i32 @rhs_regno(ptr noundef nonnull %2483) #25
  %2510 = icmp eq i32 %2508, %2509
  br i1 %2510, label %2518, label %2548, !prof !1300

2511:                                             ; preds = %2499
  %2512 = call i32 @rtx_equal_p(ptr noundef nonnull %2495, ptr noundef nonnull %2483) #24
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2548, label %2514, !prof !1301

2514:                                             ; preds = %2511
  %2515 = load ptr, ptr %2466, align 8, !tbaa !456
  %2516 = call i32 @side_effects_p(ptr noundef %2515) #24
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %2518, label %2548

2518:                                             ; preds = %2514, %2507, %2494
  %2519 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2465, i32 2
  %2520 = load i32, ptr %2519, align 8, !tbaa !459
  %2521 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2479, i32 2
  %2522 = load i32, ptr %2521, align 8, !tbaa !459
  %2523 = icmp eq i32 %2520, %2522
  br i1 %2523, label %2524, label %2548

2524:                                             ; preds = %2518
  %2525 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2465, i32 18
  %2526 = load i8, ptr %2525, align 8
  %2527 = and i8 %2526, 2
  %2528 = icmp eq i8 %2527, 0
  br i1 %2528, label %2529, label %2548

2529:                                             ; preds = %2524
  %2530 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2479, i32 18
  %2531 = load i8, ptr %2530, align 8
  %2532 = and i8 %2531, 2
  %2533 = icmp eq i8 %2532, 0
  br i1 %2533, label %2534, label %2548

2534:                                             ; preds = %2529
  %2535 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2465, i32 11
  %2536 = load ptr, ptr %2535, align 8, !tbaa !462
  %2537 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2479, i32 11
  %2538 = load ptr, ptr %2537, align 8, !tbaa !462
  %2539 = icmp eq ptr %2536, %2538
  br i1 %2539, label %2540, label %2548

2540:                                             ; preds = %2534
  %2541 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2465, i32 12
  %2542 = trunc i64 %2465 to i32
  %2543 = load i32, ptr %2541, align 8, !tbaa !466
  %2544 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2479, i32 12
  %2545 = load i32, ptr %2544, align 8, !tbaa !466
  %2546 = call i32 @llvm.smin.i32(i32 %2543, i32 %2545)
  store i32 %2546, ptr %2541, align 8, !tbaa !466
  %2547 = trunc i64 %2479 to i32
  call void @transfer_replacements(i32 noundef %2542, i32 noundef %2547) #25
  store ptr null, ptr %2482, align 8, !tbaa !456
  br label %2548

2548:                                             ; preds = %2478, %2481, %2485, %2489, %2497, %2503, %2507, %2511, %2514, %2518, %2524, %2529, %2534, %2540
  %2549 = add nuw nsw i64 %2479, 1
  %2550 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %2551 = sext i32 %2550 to i64
  %2552 = icmp slt i64 %2549, %2551
  br i1 %2552, label %2478, label %2553, !prof !1302, !llvm.loop !1303

2553:                                             ; preds = %2548, %2476, %2473, %2463, %2469
  %2554 = phi i32 [ %2464, %2476 ], [ %2464, %2473 ], [ %2464, %2463 ], [ %2464, %2469 ], [ %2550, %2548 ]
  %2555 = add nuw nsw i64 %2465, 1
  %2556 = sext i32 %2554 to i64
  %2557 = icmp slt i64 %2555, %2556
  br i1 %2557, label %2463, label %2461, !prof !1250, !llvm.loop !1304

2558:                                             ; preds = %2602
  %2559 = icmp sgt i32 %2606, 0
  br i1 %2559, label %2609, label %2692, !prof !780

2560:                                             ; preds = %2461, %2602
  %2561 = phi i64 [ %2605, %2602 ], [ 0, %2461 ]
  %2562 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2561, i32 3
  %2563 = load i32, ptr %2562, align 4, !tbaa !460
  %2564 = icmp eq i32 %2563, 0
  %2565 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2561, i32 4
  %2566 = load i32, ptr %2565, align 8, !tbaa !461
  br i1 %2564, label %2576, label %2567, !prof !1305

2567:                                             ; preds = %2560
  %2568 = zext i32 %2566 to i64
  %2569 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2568
  %2570 = load i8, ptr %2569, align 1, !tbaa !300
  %2571 = zext i32 %2563 to i64
  %2572 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2571
  %2573 = load i8, ptr %2572, align 1, !tbaa !300
  %2574 = icmp ugt i8 %2570, %2573
  br i1 %2574, label %2575, label %2576, !prof !1306

2575:                                             ; preds = %2567
  br label %2576

2576:                                             ; preds = %2560, %2567, %2575
  %2577 = phi i32 [ %2563, %2567 ], [ %2566, %2575 ], [ %2566, %2560 ]
  %2578 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2561, i32 5
  store i32 %2577, ptr %2578, align 4, !tbaa !1307
  %2579 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2561, i32 2
  %2580 = load i32, ptr %2579, align 8, !tbaa !459
  %2581 = call i32 @reg_classes_intersect_p(i32 noundef %2580, i32 noundef 13) #24
  %2582 = icmp eq i32 %2581, 0
  %2583 = load i32, ptr %2578, align 4, !tbaa !1307
  br i1 %2582, label %2584, label %2591, !prof !1308

2584:                                             ; preds = %2576
  %2585 = zext i32 %2583 to i64
  %2586 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2585
  %2587 = load i8, ptr %2586, align 1, !tbaa !300
  %2588 = and i8 %2587, -2
  %2589 = icmp eq i8 %2588, 10
  %2590 = select i1 %2589, i32 2, i32 1
  br label %2602

2591:                                             ; preds = %2576
  %2592 = icmp eq i32 %2583, 40
  br i1 %2592, label %2598, label %2593, !prof !1309

2593:                                             ; preds = %2591
  %2594 = zext i32 %2583 to i64
  %2595 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2594
  %2596 = load i8, ptr %2595, align 1, !tbaa !300
  %2597 = zext i8 %2596 to i32
  br label %2598

2598:                                             ; preds = %2591, %2593
  %2599 = phi i32 [ %2597, %2593 ], [ 12, %2591 ]
  %2600 = add nuw nsw i32 %2599, 3
  %2601 = lshr i32 %2600, 2
  br label %2602

2602:                                             ; preds = %2598, %2584
  %2603 = phi i32 [ %2590, %2584 ], [ %2601, %2598 ]
  %2604 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2561, i32 6
  store i32 %2603, ptr %2604, align 8, !tbaa !1310
  %2605 = add nuw nsw i64 %2561, 1
  %2606 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %2607 = sext i32 %2606 to i64
  %2608 = icmp slt i64 %2605, %2607
  br i1 %2608, label %2560, label %2558, !prof !1250, !llvm.loop !1311

2609:                                             ; preds = %2558, %2687
  %2610 = phi i64 [ %2688, %2687 ], [ 0, %2558 ]
  %2611 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2610
  %2612 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2610, i32 17
  %2613 = load i32, ptr %2612, align 4, !tbaa !467
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2615, label %2687, !prof !1312

2615:                                             ; preds = %2609
  %2616 = load ptr, ptr %37, align 8, !tbaa !300
  %2617 = load i32, ptr %2616, align 8
  %2618 = and i32 %2617, 65535
  %2619 = icmp eq i32 %2618, 23
  br i1 %2619, label %2620, label %2687, !prof !1313

2620:                                             ; preds = %2615
  %2621 = getelementptr inbounds %struct.rtx_def, ptr %2616, i64 0, i32 1
  %2622 = load ptr, ptr %2621, align 8, !tbaa !300
  %2623 = load i32, ptr %2622, align 8
  %2624 = and i32 %2623, 65535
  %2625 = icmp eq i32 %2624, 37
  br i1 %2625, label %2626, label %2687, !prof !1314

2626:                                             ; preds = %2620
  %2627 = getelementptr inbounds %struct.rtx_def, ptr %2616, i64 0, i32 1, i32 0, i32 0, i64 1
  %2628 = load ptr, ptr %2627, align 8, !tbaa !300
  %2629 = load ptr, ptr %2611, align 8, !tbaa !456
  %2630 = icmp eq ptr %2628, %2629
  br i1 %2630, label %2635, label %2631, !prof !1315

2631:                                             ; preds = %2626
  %2632 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2610, i32 8
  %2633 = load ptr, ptr %2632, align 8, !tbaa !464
  %2634 = icmp eq ptr %2628, %2633
  br i1 %2634, label %2635, label %2687, !prof !1316

2635:                                             ; preds = %2631, %2626
  %2636 = call zeroext i8 @elimination_target_reg_p(ptr noundef nonnull %2622) #24
  %2637 = icmp eq i8 %2636, 0
  br i1 %2637, label %2638, label %2687, !prof !1317

2638:                                             ; preds = %2635
  %2639 = load ptr, ptr %37, align 8, !tbaa !300
  %2640 = getelementptr inbounds %struct.rtx_def, ptr %2639, i64 0, i32 1
  %2641 = load ptr, ptr %2640, align 8, !tbaa !300
  %2642 = call fastcc i32 @rhs_regno(ptr noundef %2641) #25
  %2643 = icmp ult i32 %2642, 53
  br i1 %2643, label %2644, label %2687, !prof !1318

2644:                                             ; preds = %2638
  %2645 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2610, i32 2
  %2646 = load i32, ptr %2645, align 8, !tbaa !459
  %2647 = zext i32 %2646 to i64
  %2648 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2647
  %2649 = load i64, ptr %2648, align 8, !tbaa !445
  %2650 = zext nneg i32 %2642 to i64
  %2651 = shl nuw nsw i64 1, %2650
  %2652 = and i64 %2649, %2651
  %2653 = icmp eq i64 %2652, 0
  br i1 %2653, label %2687, label %2654, !prof !1319

2654:                                             ; preds = %2644
  %2655 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2610, i32 5
  %2656 = load i32, ptr %2655, align 4, !tbaa !1307
  %2657 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %2642, i32 noundef %2656) #24
  %2658 = icmp eq i8 %2657, 0
  br i1 %2658, label %2687, label %2659, !prof !1320

2659:                                             ; preds = %2654
  %2660 = load i32, ptr %2655, align 4, !tbaa !1307
  %2661 = zext i32 %2660 to i64
  %2662 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2650, i64 %2661
  %2663 = load i8, ptr %2662, align 1, !tbaa !300
  %2664 = icmp ugt i8 %2663, 1
  br i1 %2664, label %2665, label %2685, !prof !1321

2665:                                             ; preds = %2659
  %2666 = load i32, ptr %2645, align 8, !tbaa !459
  %2667 = zext i32 %2666 to i64
  %2668 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2667
  %2669 = load i64, ptr %2668, align 8, !tbaa !445
  %2670 = zext i8 %2663 to i64
  br label %2671

2671:                                             ; preds = %2665, %2679
  %2672 = phi i64 [ 1, %2665 ], [ %2681, %2679 ]
  %2673 = phi i32 [ 1, %2665 ], [ %2680, %2679 ]
  %2674 = add nuw nsw i64 %2672, %2650
  %2675 = shl nuw i64 1, %2674
  %2676 = and i64 %2669, %2675
  %2677 = icmp eq i64 %2676, 0
  br i1 %2677, label %2678, label %2679, !prof !1322

2678:                                             ; preds = %2671
  br label %2679

2679:                                             ; preds = %2671, %2678
  %2680 = phi i32 [ %2673, %2671 ], [ 0, %2678 ]
  %2681 = add nuw nsw i64 %2672, 1
  %2682 = icmp eq i64 %2681, %2670
  br i1 %2682, label %2683, label %2671, !prof !1323, !llvm.loop !1324

2683:                                             ; preds = %2679
  %2684 = icmp eq i32 %2680, 0
  br i1 %2684, label %2687, label %2685, !prof !1325

2685:                                             ; preds = %2659, %2683
  %2686 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2610, i32 11
  store ptr %2641, ptr %2686, align 8, !tbaa !462
  br label %2687

2687:                                             ; preds = %2638, %2644, %2654, %2685, %2683, %2609, %2615, %2620, %2631, %2635
  %2688 = add nuw nsw i64 %2610, 1
  %2689 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %2690 = sext i32 %2689 to i64
  %2691 = icmp slt i64 %2688, %2690
  br i1 %2691, label %2609, label %2692, !prof !1250, !llvm.loop !1326

2692:                                             ; preds = %2687, %2458, %2461, %2558, %401, %94, %82, %1886, %1495
  %2693 = phi i32 [ %402, %401 ], [ 0, %1886 ], [ 0, %1495 ], [ 0, %82 ], [ 0, %94 ], [ %2099, %2558 ], [ %2099, %2461 ], [ %2099, %2458 ], [ %2099, %2687 ]
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
  ret i32 %2693
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #13 !prof !1327 !PGOFuncName !1328 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !1329
  ret i64 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_reloads_toplev(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !1330 !PGOFuncName !1331 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !301
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !301
  %16 = trunc i32 %11 to i16
  switch i16 %16, label %186 [
    i16 37, label %17
    i16 43, label %83
    i16 39, label %93
  ], !prof !1332

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %19 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !301
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !1333

24:                                               ; preds = %17
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store ptr %22, ptr %8, align 8, !tbaa !301
  br label %81

27:                                               ; preds = %24, %17
  %28 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %29 = getelementptr inbounds ptr, ptr %28, i64 %20
  %30 = load ptr, ptr %29, align 8, !tbaa !301
  %31 = icmp eq ptr %30, null
  br i1 %31, label %81, label %32, !prof !1334

32:                                               ; preds = %27
  %33 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %34 = getelementptr inbounds ptr, ptr %33, i64 %20
  %35 = load ptr, ptr %34, align 8, !tbaa !301
  %36 = icmp ne ptr %35, null
  %37 = load i32, ptr @num_not_at_initial_offset, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %81, !prof !1335

40:                                               ; preds = %32
  %41 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %18) #25
  %42 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  %44 = load ptr, ptr %43, align 8, !tbaa !301
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %48 = getelementptr inbounds ptr, ptr %47, i64 %20
  %49 = load ptr, ptr %48, align 8, !tbaa !301
  %50 = tail call i32 @rtx_equal_p(ptr noundef %41, ptr noundef %49) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %46, %40
  %53 = load i32, ptr @replace_reloads, align 4, !tbaa !305
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = sext i32 %1 to i64
  %57 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !301
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
  store ptr %41, ptr %8, align 8, !tbaa !301
  %67 = load i32, ptr %41, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !300
  %72 = call fastcc i32 @find_reloads_address(i32 noundef %69, ptr noundef nonnull %8, ptr noundef %71, ptr noundef nonnull %70, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %73 = load ptr, ptr %8, align 8, !tbaa !301
  %74 = call i32 @rtx_equal_p(ptr noundef %73, ptr noundef nonnull %41) #24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load ptr, ptr %8, align 8, !tbaa !301
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %18, ptr noundef %77) #25
  br label %78

78:                                               ; preds = %76, %66
  %79 = icmp eq ptr %6, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  store i32 %72, ptr %6, align 4, !tbaa !305
  br label %81

81:                                               ; preds = %46, %80, %78, %27, %32, %26
  %82 = load ptr, ptr %8, align 8, !tbaa !301
  br label %230

83:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  store ptr %0, ptr %9, align 8, !tbaa !301
  %84 = lshr i32 %11, 16
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !300
  %88 = call fastcc i32 @find_reloads_address(i32 noundef %85, ptr noundef nonnull %9, ptr noundef %87, ptr noundef nonnull %86, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %89 = icmp eq ptr %6, null
  br i1 %89, label %91, label %90, !prof !1194

90:                                               ; preds = %83
  store i32 %88, ptr %6, align 4, !tbaa !305
  br label %91

91:                                               ; preds = %90, %83
  %92 = load ptr, ptr %9, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  br label %230

93:                                               ; preds = %7
  %94 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !300
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %186, !prof !1336

99:                                               ; preds = %93
  %100 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %95) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  %101 = icmp sgt i32 %100, 52
  br i1 %101, label %102, label %182, !prof !1337

102:                                              ; preds = %99
  %103 = load ptr, ptr @reg_renumber, align 8, !tbaa !301
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr inbounds i16, ptr %103, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !349
  %107 = icmp slt i16 %106, 0
  br i1 %107, label %108, label %146, !prof !1338

108:                                              ; preds = %102
  %109 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !301
  %110 = getelementptr inbounds ptr, ptr %109, i64 %104
  %111 = load ptr, ptr %110, align 8, !tbaa !301
  %112 = icmp eq ptr %111, null
  br i1 %112, label %146, label %113, !prof !1338

113:                                              ; preds = %108
  %114 = lshr i32 %11, 16
  %115 = and i32 %114, 255
  %116 = lshr i32 %96, 16
  %117 = and i32 %116, 255
  %118 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load i32, ptr %118, align 8, !tbaa !300
  %120 = tail call ptr @simplify_gen_subreg(i32 noundef %115, ptr noundef nonnull %111, i32 noundef %117, i32 noundef %119) #24
  store ptr %120, ptr %10, align 8, !tbaa !301
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
  %128 = load i32, ptr %127, align 4, !tbaa !305
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
  store ptr %137, ptr %10, align 8, !tbaa !301
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !300
  %143 = call fastcc i32 @find_reloads_address(i32 noundef %140, ptr noundef nonnull %10, ptr noundef %142, ptr noundef nonnull %141, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  %144 = icmp eq ptr %6, null
  br i1 %144, label %184, label %145

145:                                              ; preds = %133
  store i32 %143, ptr %6, align 4, !tbaa !305
  br label %184

146:                                              ; preds = %102, %108
  %147 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !301
  %148 = getelementptr inbounds ptr, ptr %147, i64 %104
  %149 = load ptr, ptr %148, align 8, !tbaa !301
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %180, !prof !1338

151:                                              ; preds = %146
  %152 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %153 = getelementptr inbounds ptr, ptr %152, i64 %104
  %154 = load ptr, ptr %153, align 8, !tbaa !301
  %155 = icmp eq ptr %154, null
  br i1 %155, label %182, label %156, !prof !1339

156:                                              ; preds = %151
  %157 = lshr i32 %11, 16
  %158 = and i32 %157, 255
  %159 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !300
  %161 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !300
  %163 = icmp eq ptr %162, null
  br i1 %163, label %167, label %164, !prof !1339

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.mem_attrs, ptr %162, i64 0, i32 5
  %166 = load i8, ptr %165, align 8, !tbaa !302
  br label %167

167:                                              ; preds = %156, %164
  %168 = phi i8 [ %166, %164 ], [ 0, %156 ]
  %169 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %158, ptr noundef %160, i8 noundef zeroext %168) #25, !range !304
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %180, label %171, !prof !1339

171:                                              ; preds = %167
  %172 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !301
  %173 = getelementptr inbounds ptr, ptr %172, i64 %104
  %174 = load ptr, ptr %173, align 8, !tbaa !301
  %175 = tail call i32 @offsettable_memref_p(ptr noundef %174) #24
  %176 = icmp eq i32 %175, 0
  %177 = load i32, ptr @num_not_at_initial_offset, align 4
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %180, label %182, !prof !1335

180:                                              ; preds = %171, %167, %146
  %181 = tail call fastcc ptr @find_reloads_subreg_address(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) #25
  store ptr %181, ptr %8, align 8, !tbaa !301
  br label %182

182:                                              ; preds = %99, %171, %180, %151
  %183 = phi ptr [ %0, %99 ], [ %0, %171 ], [ %181, %180 ], [ %0, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %186

184:                                              ; preds = %123, %130, %145, %133
  %185 = load ptr, ptr %10, align 8, !tbaa !301
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  br label %230

186:                                              ; preds = %182, %7, %93
  %187 = phi ptr [ %183, %182 ], [ %0, %7 ], [ %0, %93 ]
  %188 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %189 = load i8, ptr %188, align 1, !tbaa !300
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %230, label %191, !prof !1340

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
  %200 = load i8, ptr %199, align 1, !tbaa !300
  %201 = icmp eq i8 %200, 101
  br i1 %201, label %202, label %225, !prof !1341

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %204 = getelementptr inbounds [1 x %union.rtunion_def], ptr %203, i64 0, i64 %198
  %205 = load ptr, ptr %204, align 8, !tbaa !300
  %206 = tail call fastcc ptr @find_reloads_toplev(ptr noundef %205, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #25
  %207 = load ptr, ptr %204, align 8, !tbaa !300
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %220, label %209, !prof !1342

209:                                              ; preds = %202
  %210 = load i32, ptr %206, align 8
  %211 = and i32 %210, 65535
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !305
  %215 = icmp eq i32 %214, 9
  %216 = icmp ne i32 %197, 0
  %217 = select i1 %215, i1 true, i1 %216
  br i1 %217, label %220, label %218

218:                                              ; preds = %209
  %219 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %195) #24
  store ptr %219, ptr %8, align 8, !tbaa !301
  br label %220

220:                                              ; preds = %218, %209, %202
  %221 = phi ptr [ %194, %209 ], [ %219, %218 ], [ %194, %202 ]
  %222 = phi i32 [ %197, %209 ], [ 1, %218 ], [ %197, %202 ]
  %223 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %224 = getelementptr inbounds [1 x %union.rtunion_def], ptr %223, i64 0, i64 %198
  store ptr %206, ptr %224, align 8, !tbaa !300
  br label %225

225:                                              ; preds = %193, %220
  %226 = phi ptr [ %221, %220 ], [ %194, %193 ]
  %227 = phi ptr [ %221, %220 ], [ %195, %193 ]
  %228 = phi i32 [ %222, %220 ], [ %197, %193 ]
  %229 = icmp ugt i64 %196, 1
  br i1 %229, label %193, label %230, !prof !1343, !llvm.loop !1344

230:                                              ; preds = %225, %186, %184, %91, %81
  %231 = phi ptr [ %82, %81 ], [ %92, %91 ], [ %185, %184 ], [ %187, %186 ], [ %226, %225 ]
  ret ptr %231
}

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @skip_alternative(ptr noundef readonly %0) unnamed_addr #8 !prof !294 !PGOFuncName !1345 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %5 ]
  %4 = load i8, ptr %3, align 1, !tbaa !300
  switch i8 %4, label %5 [
    i8 0, label %7
    i8 44, label %7
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !1346

7:                                                ; preds = %2, %2
  %8 = icmp eq i8 %4, 44
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @simplify_subreg_regno(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @alternative_allows_const_pool_ref(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !1347 !PGOFuncName !1348 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15, !prof !1230

4:                                                ; preds = %2, %12
  %5 = phi i32 [ %13, %12 ], [ %1, %2 ]
  %6 = phi ptr [ %9, %12 ], [ %0, %2 ]
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %6, %4 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = load i8, ptr %8, align 1, !tbaa !300
  %11 = icmp eq i8 %10, 44
  br i1 %11, label %12, label %7, !llvm.loop !1349

12:                                               ; preds = %7
  %13 = add nsw i32 %5, -1
  %14 = icmp sgt i32 %5, 1
  br i1 %14, label %4, label %15, !prof !700, !llvm.loop !1350

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %0, %2 ], [ %9, %12 ]
  br label %17

17:                                               ; preds = %15, %23
  %18 = phi ptr [ %25, %23 ], [ %16, %15 ]
  %19 = load i8, ptr %18, align 1, !tbaa !300
  switch i8 %19, label %20 [
    i8 44, label %26
    i8 35, label %26
    i8 0, label %26
  ]

20:                                               ; preds = %17
  %21 = and i8 %19, -3
  %22 = icmp eq i8 %21, 109
  br i1 %22, label %26, label %23, !prof !1351

23:                                               ; preds = %20
  %24 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %19) #25
  %25 = getelementptr inbounds i8, ptr %18, i64 %24
  br label %17, !llvm.loop !1352

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
define internal fastcc void @dup_replacements(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #15 !prof !1353 !PGOFuncName !1354 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20, !prof !1355

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi i64 [ 0, %5 ], [ %18, %17 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !491
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17, !prof !1356

12:                                               ; preds = %7
  %13 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !488
  %15 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !492
  tail call fastcc void @push_replacement(ptr noundef %0, i32 noundef %14, i32 noundef %16) #25
  br label %17

17:                                               ; preds = %12, %7
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %6
  br i1 %19, label %20, label %7, !prof !1357, !llvm.loop !1358

20:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @combine_reloads() unnamed_addr #0 !prof !1359 !PGOFuncName !1360 {
  %1 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %399, !prof !1361

3:                                                ; preds = %0, %12
  %4 = phi i64 [ %15, %12 ], [ 0, %0 ]
  %5 = phi i32 [ %13, %12 ], [ -1, %0 ]
  %6 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !458
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !1362

9:                                                ; preds = %3
  %10 = icmp sgt i32 %5, -1
  %11 = trunc i64 %4 to i32
  br i1 %10, label %399, label %12, !prof !1363

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %5, %3 ], [ %11, %9 ]
  %14 = zext nneg i32 %1 to i64
  %15 = add nuw nsw i64 %4, 1
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %17, label %3, !prof !1364, !llvm.loop !1365

17:                                               ; preds = %12
  %18 = icmp slt i32 %13, 0
  br i1 %18, label %399, label %19, !prof !1366

19:                                               ; preds = %17
  %20 = zext nneg i32 %13 to i64
  %21 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 18
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %399, !prof !1367

25:                                               ; preds = %19
  %26 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !456
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %399, !prof !1368

29:                                               ; preds = %25
  %30 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !458
  %32 = tail call i32 @earlyclobber_operand_p(ptr noundef %31) #25, !range !401
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %399, !prof !1369

34:                                               ; preds = %29
  br i1 %2, label %35, label %259, !prof !1370

35:                                               ; preds = %34
  %36 = zext nneg i32 %1 to i64
  br label %42

37:                                               ; preds = %54
  br i1 %2, label %38, label %259, !prof !1371

38:                                               ; preds = %37
  %39 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 2
  %40 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 4
  %41 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 12
  br label %57

42:                                               ; preds = %35, %54
  %43 = phi i64 [ 0, %35 ], [ %55, %54 ]
  %44 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %43, i32 17
  %45 = load i32, ptr %44, align 4, !tbaa !467
  %46 = add i32 %45, -5
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %54, !prof !1372

48:                                               ; preds = %42
  %49 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 12
  %50 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %43, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !466
  %52 = load i32, ptr %49, align 8, !tbaa !466
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %399, label %54, !prof !702

54:                                               ; preds = %42, %48
  %55 = add nuw nsw i64 %43, 1
  %56 = icmp eq i64 %55, %36
  br i1 %56, label %37, label %42, !prof !1373, !llvm.loop !1374

57:                                               ; preds = %38, %254
  %58 = phi i64 [ 0, %38 ], [ %255, %254 ]
  %59 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !456
  %61 = icmp eq ptr %60, null
  br i1 %61, label %254, label %62, !prof !1375

62:                                               ; preds = %57
  %63 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 18
  %64 = load i8, ptr %63, align 8
  %65 = and i8 %64, 3
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %254, !prof !1376

67:                                               ; preds = %62
  %68 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 17
  %69 = load i32, ptr %68, align 4, !tbaa !467
  switch i32 %69, label %70 [
    i32 5, label %254
    i32 6, label %254
    i32 9, label %254
  ], !prof !1377

70:                                               ; preds = %67
  %71 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !459
  %73 = tail call i32 @reg_classes_intersect_p(i32 noundef %72, i32 noundef 13) #24
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !460
  br i1 %74, label %77, label %85, !prof !1378

77:                                               ; preds = %70
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !300
  %81 = freeze i8 %80
  %82 = and i8 %81, -2
  %83 = icmp eq i8 %82, 10
  %84 = select i1 %83, i32 2, i32 1, !prof !1379
  br label %96

85:                                               ; preds = %70
  %86 = icmp eq i32 %76, 40
  br i1 %86, label %92, label %87, !prof !673

87:                                               ; preds = %85
  %88 = zext i32 %76 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !300
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %85, %87
  %93 = phi i32 [ %91, %87 ], [ 12, %85 ]
  %94 = add nuw nsw i32 %93, 3
  %95 = lshr i32 %94, 2
  br label %96

96:                                               ; preds = %77, %92
  %97 = phi i32 [ %95, %92 ], [ %84, %77 ]
  %98 = load i32, ptr %39, align 8, !tbaa !459
  %99 = tail call i32 @reg_classes_intersect_p(i32 noundef %98, i32 noundef 13) #24
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr %40, align 8, !tbaa !461
  br i1 %100, label %102, label %109, !prof !673

102:                                              ; preds = %96
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !300
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
  %114 = load i8, ptr %113, align 1, !tbaa !300
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
  br i1 %122, label %123, label %254, !prof !1380

123:                                              ; preds = %120
  %124 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 7
  %125 = load i32, ptr %124, align 4, !tbaa !463
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %254, !prof !1380

127:                                              ; preds = %123
  %128 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 11
  %129 = load ptr, ptr %128, align 8, !tbaa !462
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %254, !prof !1380

131:                                              ; preds = %127
  %132 = sext i32 %101 to i64
  %133 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 12
  %134 = load i32, ptr %133, align 8, !tbaa !466
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %132, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !301
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139, !prof !1380

139:                                              ; preds = %131
  %140 = load i32, ptr %41, align 8, !tbaa !466
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %132, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !301
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = tail call i32 @rtx_equal_p(ptr noundef nonnull %137, ptr noundef nonnull %143) #24
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %254, label %148

148:                                              ; preds = %131, %139, %145
  %149 = load i32, ptr %71, align 8, !tbaa !459
  %150 = load i32, ptr %39, align 8, !tbaa !459
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %254, !prof !1381

152:                                              ; preds = %148
  %153 = load ptr, ptr %59, align 8, !tbaa !456
  %154 = load ptr, ptr %30, align 8, !tbaa !458
  %155 = icmp eq ptr %153, %154
  br i1 %155, label %194, label %156, !prof !1382

156:                                              ; preds = %152
  %157 = icmp eq ptr %153, null
  br i1 %157, label %178, label %158, !prof !1383

158:                                              ; preds = %156
  %159 = load i32, ptr %153, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 37
  br i1 %161, label %162, label %170, !prof !1383

162:                                              ; preds = %158
  %163 = load i32, ptr %154, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %166, label %178, !prof !1384

166:                                              ; preds = %162
  %167 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %153) #25
  %168 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %154) #25
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %194, label %178, !prof !1383

170:                                              ; preds = %158
  %171 = tail call i32 @rtx_equal_p(ptr noundef nonnull %153, ptr noundef %154) #24
  %172 = icmp eq i32 %171, 0
  %173 = load ptr, ptr %59, align 8, !tbaa !456
  br i1 %172, label %178, label %174, !prof !1384

174:                                              ; preds = %170
  %175 = tail call i32 @side_effects_p(ptr noundef %173) #24
  %176 = icmp eq i32 %175, 0
  %177 = load ptr, ptr %59, align 8, !tbaa !456
  br i1 %176, label %194, label %178

178:                                              ; preds = %174, %170, %166, %162, %156
  %179 = phi ptr [ %173, %170 ], [ %153, %166 ], [ %153, %162 ], [ null, %156 ], [ %177, %174 ]
  %180 = load ptr, ptr %30, align 8, !tbaa !458
  %181 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %180, ptr noundef %179) #25
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %254, !prof !1383

183:                                              ; preds = %178
  %184 = load ptr, ptr %59, align 8, !tbaa !456
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 37
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load ptr, ptr %30, align 8, !tbaa !458
  %190 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %184, ptr noundef %189) #25
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %254

192:                                              ; preds = %188
  %193 = load ptr, ptr %59, align 8, !tbaa !456
  br label %194

194:                                              ; preds = %192, %183, %174, %166, %152
  %195 = phi ptr [ %193, %192 ], [ %184, %183 ], [ %177, %174 ], [ %153, %166 ], [ %153, %152 ]
  %196 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !460
  %198 = load i32, ptr %68, align 4, !tbaa !467
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = tail call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %195, i32 noundef %197, i32 noundef %200) #25, !range !401
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %254, !prof !1385

203:                                              ; preds = %194
  %204 = load i32, ptr %68, align 4, !tbaa !467
  %205 = icmp ult i32 %204, 2
  br i1 %205, label %206, label %254, !prof !1386

206:                                              ; preds = %203
  %207 = trunc i64 %58 to i32
  %208 = load ptr, ptr %30, align 8, !tbaa !458
  %209 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 1
  store ptr %208, ptr %209, align 8, !tbaa !458
  %210 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 9
  %211 = load ptr, ptr %210, align 8, !tbaa !465
  %212 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 9
  store ptr %211, ptr %212, align 8, !tbaa !465
  %213 = load i32, ptr %40, align 8, !tbaa !461
  %214 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 4
  store i32 %213, ptr %214, align 8, !tbaa !461
  store ptr null, ptr %30, align 8, !tbaa !458
  store i32 9, ptr %68, align 4, !tbaa !467
  %215 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 14
  %216 = load i32, ptr %215, align 8, !tbaa !469
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %223, label %218, !prof !1387

218:                                              ; preds = %206
  %219 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 14
  store i32 %216, ptr %219, align 8, !tbaa !469
  %220 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 16
  %221 = load i32, ptr %220, align 8, !tbaa !471
  %222 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %58, i32 16
  store i32 %221, ptr %222, align 8, !tbaa !471
  br label %223

223:                                              ; preds = %218, %206
  %224 = sext i32 %213 to i64
  %225 = load i32, ptr %41, align 8, !tbaa !466
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %224, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !301
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230, !prof !1387

230:                                              ; preds = %223
  %231 = load i32, ptr %133, align 8, !tbaa !466
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %224, i64 %232
  store ptr %228, ptr %233, align 8, !tbaa !301
  br label %234

234:                                              ; preds = %230, %223
  %235 = load i32, ptr %39, align 8, !tbaa !459
  %236 = load i32, ptr %71, align 8, !tbaa !459
  %237 = tail call i32 @reg_class_subset_p(i32 noundef %235, i32 noundef %236) #24
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239, !prof !1388

239:                                              ; preds = %234
  %240 = load i32, ptr %39, align 8, !tbaa !459
  store i32 %240, ptr %71, align 8, !tbaa !459
  br label %241

241:                                              ; preds = %239, %234
  %242 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %399, !prof !1389

244:                                              ; preds = %241, %250
  %245 = phi i64 [ %252, %250 ], [ 0, %241 ]
  %246 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %245, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !488
  %248 = icmp eq i32 %247, %13
  br i1 %248, label %249, label %250, !prof !1390

249:                                              ; preds = %244
  store i32 %207, ptr %246, align 8, !tbaa !488
  br label %250

250:                                              ; preds = %244, %249
  %251 = zext nneg i32 %242 to i64
  %252 = add nuw nsw i64 %245, 1
  %253 = icmp eq i64 %252, %251
  br i1 %253, label %399, label %244, !prof !1391, !llvm.loop !1392

254:                                              ; preds = %203, %67, %67, %67, %57, %62, %120, %123, %127, %145, %148, %178, %188, %194
  %255 = add nuw nsw i64 %58, 1
  %256 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %257 = sext i32 %256 to i64
  %258 = icmp slt i64 %255, %257
  br i1 %258, label %57, label %259, !prof !1393, !llvm.loop !1394

259:                                              ; preds = %254, %34, %37
  %260 = load ptr, ptr @this_insn, align 8, !tbaa !301
  %261 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 1, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !300
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %399, label %264, !prof !1395

264:                                              ; preds = %259
  %265 = sext i32 %262 to i64
  %266 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %265, i32 4
  %267 = load i8, ptr %266, align 8, !tbaa !295
  %268 = icmp sgt i8 %267, 1
  br i1 %268, label %269, label %281, !prof !1396

269:                                              ; preds = %264
  %270 = zext nneg i8 %267 to i64
  %271 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %265, i32 3
  %272 = load ptr, ptr %271, align 8, !tbaa !297
  br label %273

273:                                              ; preds = %269, %278
  %274 = phi i64 [ 1, %269 ], [ %279, %278 ]
  %275 = getelementptr inbounds %struct.insn_operand_data, ptr %272, i64 %274, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !298
  %277 = load i8, ptr %276, align 1, !tbaa !300
  switch i8 %277, label %278 [
    i8 61, label %399
    i8 43, label %399
  ], !prof !1397

278:                                              ; preds = %273
  %279 = add nuw nsw i64 %274, 1
  %280 = icmp eq i64 %279, %270
  br i1 %280, label %281, label %273, !prof !1398, !llvm.loop !1399

281:                                              ; preds = %278, %264
  %282 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 1, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !300
  %284 = icmp eq ptr %283, null
  br i1 %284, label %399, label %285, !prof !1400

285:                                              ; preds = %281
  %286 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 4
  br label %287

287:                                              ; preds = %285, %395
  %288 = phi ptr [ %283, %285 ], [ %397, %395 ]
  %289 = load i32, ptr %288, align 8
  %290 = and i32 %289, 16711680
  %291 = icmp eq i32 %290, 65536
  br i1 %291, label %292, label %395, !prof !1401

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.rtx_def, ptr %288, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !300
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 37
  br i1 %297, label %298, label %395, !prof !1402

298:                                              ; preds = %292
  %299 = load ptr, ptr %30, align 8, !tbaa !458
  %300 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %294, ptr noundef %299) #25
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %395, !prof !1403

302:                                              ; preds = %298
  %303 = load ptr, ptr %293, align 8, !tbaa !300
  %304 = tail call fastcc i32 @rhs_regno(ptr noundef %303) #25
  %305 = icmp slt i32 %304, 53
  br i1 %305, label %306, label %395, !prof !1404

306:                                              ; preds = %302
  %307 = load i32, ptr %286, align 8, !tbaa !461
  %308 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %304, i32 noundef %307) #24
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %395, label %310, !prof !1405

310:                                              ; preds = %306
  %311 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 2
  %312 = load i32, ptr %311, align 8, !tbaa !459
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %313
  %315 = load i64, ptr %314, align 8, !tbaa !445
  %316 = zext nneg i32 %304 to i64
  %317 = shl nuw i64 1, %316
  %318 = and i64 %315, %317
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %395, label %320, !prof !1406

320:                                              ; preds = %310
  %321 = sext i32 %304 to i64
  %322 = load i32, ptr %286, align 8, !tbaa !461
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !300
  %326 = load ptr, ptr %293, align 8, !tbaa !300
  %327 = load i32, ptr %326, align 8
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !300
  %333 = icmp ugt i8 %325, %332
  br i1 %333, label %395, label %334, !prof !1407

334:                                              ; preds = %320
  %335 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 14
  %336 = load i32, ptr %335, align 8, !tbaa !469
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %360, label %338, !prof !1408

338:                                              ; preds = %334
  %339 = sext i32 %336 to i64
  %340 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %339, i32 2
  %341 = load i32, ptr %340, align 8, !tbaa !459
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %342
  %344 = load i64, ptr %343, align 8, !tbaa !445
  %345 = and i64 %344, %317
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %395

347:                                              ; preds = %338
  %348 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %339, i32 14
  %349 = load i32, ptr %348, align 8, !tbaa !469
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %360, label %351

351:                                              ; preds = %347
  %352 = sext i32 %349 to i64
  %353 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %352, i32 2
  %354 = load i32, ptr %353, align 8, !tbaa !459
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %355
  %357 = load i64, ptr %356, align 8, !tbaa !445
  %358 = and i64 %357, %317
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %395

360:                                              ; preds = %351, %347, %334
  %361 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %321
  %362 = load i8, ptr %361, align 1, !tbaa !300
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %395, !prof !1408

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %366 = load i32, ptr %365, align 8, !tbaa !300
  %367 = icmp ult i32 %366, 53
  br i1 %367, label %391, label %368, !prof !1409

368:                                              ; preds = %364
  %369 = load ptr, ptr @cfun, align 8, !tbaa !301
  %370 = getelementptr inbounds %struct.function, ptr %369, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !509
  %372 = load ptr, ptr %371, align 8, !tbaa !511
  %373 = getelementptr inbounds %struct.basic_block_def, ptr %372, i64 0, i32 9
  %374 = load i32, ptr %373, align 8, !tbaa !513
  %375 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %374) #25
  %376 = getelementptr inbounds %struct.df_lr_bb_info, ptr %375, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !515
  %378 = tail call i32 @bitmap_bit_p(ptr noundef %377, i32 noundef %366) #24
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %395, !prof !1408

380:                                              ; preds = %368
  %381 = load ptr, ptr %293, align 8, !tbaa !300
  %382 = load i32, ptr %381, align 8
  %383 = lshr i32 %382, 16
  %384 = and i32 %383, 255
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %321, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !300
  %388 = icmp eq i8 %387, 1
  br i1 %388, label %389, label %395, !prof !1408

389:                                              ; preds = %380
  %390 = load i32, ptr %286, align 8, !tbaa !461
  br label %391

391:                                              ; preds = %364, %389
  %392 = phi i32 [ %390, %389 ], [ %322, %364 ]
  %393 = tail call ptr @gen_rtx_REG(i32 noundef %392, i32 noundef %304) #24
  %394 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %20, i32 11
  store ptr %393, ptr %394, align 8, !tbaa !462
  br label %399

395:                                              ; preds = %287, %292, %298, %302, %306, %310, %320, %338, %351, %360, %368, %380
  %396 = getelementptr inbounds %struct.rtx_def, ptr %288, i64 0, i32 1, i32 0, i32 0, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !300
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %287, !prof !1410, !llvm.loop !1411

399:                                              ; preds = %9, %48, %250, %273, %273, %395, %0, %281, %241, %259, %29, %25, %17, %19, %391
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @elimination_target_reg_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @push_replacement(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 !prof !1412 !PGOFuncName !1413 {
  %4 = load i32, ptr @replace_reloads, align 4, !tbaa !305
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !1414

6:                                                ; preds = %3
  %7 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @n_replacements, align 4, !tbaa !305
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9
  %11 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 2
  store i32 %1, ptr %11, align 8, !tbaa !488
  store ptr %0, ptr %10, align 8, !tbaa !491
  %12 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 1
  store ptr null, ptr %12, align 8, !tbaa !490
  %13 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 3
  store i32 %2, ptr %13, align 4, !tbaa !492
  br label %14

14:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @subst_reloads(ptr noundef %0) local_unnamed_addr #0 !prof !1415 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %98, !prof !1416

4:                                                ; preds = %1, %93
  %5 = phi i64 [ %94, %93 ], [ 0, %1 ]
  %6 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5
  %7 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !488
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !462
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13, !prof !1417

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !491
  %15 = load ptr, ptr %14, align 8, !tbaa !301
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %36, !prof !1418

19:                                               ; preds = %13
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !300
  %26 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %25) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load ptr, ptr %6, align 8, !tbaa !491
  %30 = load ptr, ptr %29, align 8, !tbaa !301
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !300
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
  %41 = load i32, ptr %40, align 4, !tbaa !492
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %47, label %43, !prof !1419

43:                                               ; preds = %36
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %47, label %45, !prof !1420

45:                                               ; preds = %43
  %46 = tail call ptr @reload_adjust_reg_for_mode(ptr noundef nonnull %11, i32 noundef %41) #25
  br label %47

47:                                               ; preds = %45, %43, %36
  %48 = phi ptr [ %46, %45 ], [ %11, %43 ], [ %11, %36 ]
  %49 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !490
  %51 = icmp eq ptr %50, null
  br i1 %51, label %85, label %52, !prof !1421

52:                                               ; preds = %47
  %53 = load i32, ptr %48, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 39
  br i1 %55, label %56, label %85, !prof !1422

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 8, !tbaa !301
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !300
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %60, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store ptr %62, ptr %50, align 8, !tbaa !301
  br label %93

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !300
  %71 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load i32, ptr %71, align 8, !tbaa !300
  %73 = add i32 %72, %70
  %74 = zext nneg i32 %60 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !300
  %77 = zext i8 %76 to i32
  %78 = freeze i32 %73
  %79 = srem i32 %78, %77
  %80 = sub nsw i32 %78, %79
  %81 = load ptr, ptr %6, align 8, !tbaa !491
  store ptr %62, ptr %81, align 8, !tbaa !301
  %82 = load ptr, ptr %49, align 8, !tbaa !490
  %83 = load ptr, ptr %82, align 8, !tbaa !301
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %80, ptr %84, align 8, !tbaa !300
  br label %93

85:                                               ; preds = %52, %47
  %86 = load ptr, ptr %6, align 8, !tbaa !491
  store ptr %48, ptr %86, align 8, !tbaa !301
  br label %93

87:                                               ; preds = %4
  %88 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 18
  %89 = load i8, ptr %88, align 8
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %93, !prof !1423

92:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6324, ptr noundef nonnull @.str.1) #24
  br label %93

93:                                               ; preds = %92, %87, %85, %68, %67
  %94 = add nuw nsw i64 %5, 1
  %95 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %4, label %98, !prof !1424, !llvm.loop !1425

98:                                               ; preds = %93, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reload_adjust_reg_for_mode(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !1426 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %10, label %7, !prof !1427

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %9 = tail call ptr @gen_rtx_REG(i32 noundef %1, i32 noundef %8) #24
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ %0, %2 ]
  ret ptr %11
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @copy_replacements_1(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #17 !prof !294 !PGOFuncName !1428 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %35
  %9 = phi i64 [ 0, %5 ], [ %37, %35 ]
  %10 = phi i32 [ %6, %5 ], [ %36, %35 ]
  %11 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9
  %12 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !490
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr @n_replacements, align 4, !tbaa !305
  %17 = sext i32 %10 to i64
  %18 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %17
  %19 = load ptr, ptr %11, align 8, !tbaa !491
  store ptr %19, ptr %18, align 8, !tbaa !491
  br label %27

20:                                               ; preds = %8
  %21 = load ptr, ptr %11, align 8, !tbaa !491
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = add nsw i32 %10, 1
  store i32 %24, ptr @n_replacements, align 4, !tbaa !305
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %25
  store ptr %1, ptr %26, align 8, !tbaa !491
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi i64 [ %17, %15 ], [ %25, %23 ]
  %29 = phi ptr [ %1, %15 ], [ null, %23 ]
  %30 = phi i32 [ %16, %15 ], [ %24, %23 ]
  %31 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !490
  %32 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 2
  %33 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 2
  %34 = load <2 x i32>, ptr %32, align 8, !tbaa !305
  store <2 x i32> %34, ptr %33, align 8, !tbaa !305
  br label %35

35:                                               ; preds = %27, %20
  %36 = phi i32 [ %10, %20 ], [ %30, %27 ]
  %37 = add nuw nsw i64 %9, 1
  %38 = icmp eq i64 %37, %7
  br i1 %38, label %39, label %8, !llvm.loop !1429

39:                                               ; preds = %35, %3
  %40 = load ptr, ptr %0, align 8, !tbaa !301
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !301
  %46 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %43
  %47 = load i8, ptr %46, align 1, !tbaa !300
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %39
  %50 = load ptr, ptr %1, align 8, !tbaa !301
  %51 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %52 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %53 = zext i8 %47 to i64
  br label %54

54:                                               ; preds = %49, %78
  %55 = phi i64 [ %53, %49 ], [ %56, %78 ]
  %56 = add nsw i64 %55, -1
  %57 = getelementptr inbounds i8, ptr %45, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !300
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
  %64 = load ptr, ptr %63, align 8, !tbaa !300
  %65 = load i32, ptr %64, align 8, !tbaa !360
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = getelementptr inbounds [1 x %union.rtunion_def], ptr %52, i64 0, i64 %56
  %69 = zext nneg i32 %65 to i64
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ %69, %67 ], [ %72, %70 ]
  %72 = add nsw i64 %71, -1
  %73 = load ptr, ptr %63, align 8, !tbaa !300
  %74 = getelementptr inbounds %struct.rtvec_def, ptr %73, i64 0, i32 1, i64 %72
  %75 = load ptr, ptr %68, align 8, !tbaa !300
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %72
  tail call fastcc void @copy_replacements_1(ptr noundef nonnull %74, ptr noundef nonnull %76, i32 noundef %2) #25
  %77 = icmp ugt i64 %71, 1
  br i1 %77, label %70, label %78, !llvm.loop !1430

78:                                               ; preds = %70, %62, %54, %59
  %79 = icmp sgt i64 %55, 1
  br i1 %79, label %54, label %80, !llvm.loop !1431

80:                                               ; preds = %78, %39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @move_replacements(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #12 !prof !294 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i64 [ 0, %5 ], [ %20, %19 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8
  %10 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !490
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %9, align 8, !tbaa !491
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  store ptr %1, ptr %9, align 8, !tbaa !491
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi ptr [ null, %16 ], [ %1, %7 ]
  store ptr %18, ptr %10, align 8, !tbaa !490
  br label %19

19:                                               ; preds = %17, %13
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %7, !llvm.loop !1432

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_replacement(ptr noundef readonly %0) local_unnamed_addr #0 !prof !1433 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !305
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %3
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %81, !prof !1434

6:                                                ; preds = %1, %78
  %7 = phi ptr [ %79, %78 ], [ @replacements, %1 ]
  %8 = getelementptr inbounds %struct.replacement, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !488
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %10, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = icmp eq ptr %12, null
  br i1 %13, label %78, label %14, !prof !1435

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !491
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %29, !prof !1436

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.replacement, ptr %7, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !492
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
  %31 = load ptr, ptr %30, align 8, !tbaa !490
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %78, !prof !1436

33:                                               ; preds = %29
  %34 = load i32, ptr %12, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 37
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !301
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %12) #25
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !300
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef %44) #25
  %46 = load i32, ptr %44, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !300
  %51 = tail call i32 @subreg_regno_offset(i32 noundef %45, i32 noundef %48, i32 noundef %50, i32 noundef %41) #24
  %52 = add i32 %51, %42
  %53 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %52) #24
  br label %105

54:                                               ; preds = %33
  %55 = lshr i32 %34, 16
  %56 = and i32 %55, 255
  %57 = load ptr, ptr %0, align 8, !tbaa !301
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %105, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load i32, ptr %64, align 8, !tbaa !300
  %66 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load i32, ptr %66, align 8, !tbaa !300
  %68 = add i32 %67, %65
  %69 = zext nneg i32 %60 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !300
  %72 = zext i8 %71 to i32
  %73 = freeze i32 %68
  %74 = srem i32 %73, %72
  %75 = sub nsw i32 %73, %74
  %76 = load ptr, ptr %63, align 8, !tbaa !300
  %77 = tail call ptr @gen_rtx_SUBREG(i32 noundef %60, ptr noundef %76, i32 noundef %75) #24
  br label %105

78:                                               ; preds = %6, %29
  %79 = getelementptr inbounds %struct.replacement, ptr %7, i64 1
  %80 = icmp ult ptr %79, %4
  br i1 %80, label %6, label %81, !prof !1437, !llvm.loop !1438

81:                                               ; preds = %78, %1
  %82 = load ptr, ptr %0, align 8, !tbaa !301
  %83 = load i32, ptr %82, align 8
  %84 = trunc i32 %83 to i16
  switch i16 %84, label %105 [
    i16 49, label %85
    i16 50, label %85
    i16 52, label %85
  ], !prof !1439

85:                                               ; preds = %81, %81, %81
  %86 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %87 = tail call ptr @find_replacement(ptr noundef nonnull %86) #25
  %88 = load ptr, ptr %0, align 8, !tbaa !301
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = tail call ptr @find_replacement(ptr noundef nonnull %89) #25
  %91 = load ptr, ptr %0, align 8, !tbaa !301
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !300
  %94 = icmp eq ptr %87, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !300
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
define internal fastcc i32 @refers_to_mem_for_reload_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1440 !PGOFuncName !1441 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %14 [
    i16 43, label %42
    i16 37, label %4
  ], !prof !1442

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #25
  %6 = icmp ugt i32 %5, 52
  br i1 %6, label %7, label %42, !prof !1443

7:                                                ; preds = %4
  %8 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !301
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !301
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  br label %42

14:                                               ; preds = %1
  %15 = and i32 %2, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !301
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !300
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %42, label %23, !prof !1444

23:                                               ; preds = %14
  %24 = zext i8 %20 to i64
  br label %25

25:                                               ; preds = %23, %40
  %26 = phi i64 [ %24, %23 ], [ %27, %40 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds i8, ptr %18, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !300
  %30 = icmp eq i8 %29, 101
  br i1 %30, label %31, label %40, !prof !1445

31:                                               ; preds = %25
  %32 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !300
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %42, label %37, !prof !1446

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %33) #25, !range !401
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42, !prof !1447

40:                                               ; preds = %25, %37
  %41 = icmp ugt i64 %26, 1
  br i1 %41, label %25, label %42, !prof !1448, !llvm.loop !1449

42:                                               ; preds = %37, %31, %40, %14, %4, %7, %1
  %43 = phi i32 [ 1, %1 ], [ 0, %4 ], [ %13, %7 ], [ 0, %14 ], [ 1, %37 ], [ 1, %31 ], [ 0, %40 ]
  ret i32 %43
}

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
define dso_local void @debug_reload_to_stream(ptr noundef %0) local_unnamed_addr #0 !prof !294 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @stderr, align 8
  %4 = select i1 %2, ptr %3, ptr %0
  %5 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %142

7:                                                ; preds = %1, %136
  %8 = phi i64 [ %138, %136 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %9) #25
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !456
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !460
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !301
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef %19) #25
  %21 = load ptr, ptr %11, align 8, !tbaa !456
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %21, i32 noundef 24) #24
  %22 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %23

23:                                               ; preds = %14, %7
  %24 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !458
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !461
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !301
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef %32) #25
  %34 = load ptr, ptr %24, align 8, !tbaa !458
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %34, i32 noundef 24) #24
  %35 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %36

36:                                               ; preds = %27, %23
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !459
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !301
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef %41) #25
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !467
  %45 = sext i32 %44 to i64
  %46 = shl i64 %45, 2
  %47 = call ptr @llvm.load.relative.i64(ptr @reltable.debug_reload_to_stream, i64 %46)
  %48 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 12
  %49 = load i32, ptr %48, align 8, !tbaa !466
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
  %66 = load i32, ptr %65, align 4, !tbaa !463
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
  %85 = load ptr, ptr %84, align 8, !tbaa !464
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 17, i64 1, ptr %4)
  %89 = load ptr, ptr %84, align 8, !tbaa !464
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %89, i32 noundef 24) #24
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !465
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 18, i64 1, ptr %4)
  %96 = load ptr, ptr %91, align 8, !tbaa !465
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %96, i32 noundef 24) #24
  br label %97

97:                                               ; preds = %94, %90
  %98 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 11
  %99 = load ptr, ptr %98, align 8, !tbaa !462
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %4)
  %103 = load ptr, ptr %98, align 8, !tbaa !462
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %103, i32 noundef 24) #24
  br label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 13
  %106 = load i32, ptr %105, align 4, !tbaa !468
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.9, i32 noundef %106) #25
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ @.str.22, %108 ], [ @.str.9, %104 ]
  %112 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 14
  %113 = load i32, ptr %112, align 8, !tbaa !469
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull %111, i32 noundef %113) #25
  br label %117

117:                                              ; preds = %115, %110
  %118 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 15
  %119 = load i32, ptr %118, align 4, !tbaa !470
  %120 = icmp eq i32 %119, 2956
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = zext i32 %119 to i64
  %123 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !1450
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef %124) #25
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi ptr [ @.str.22, %121 ], [ @.str.9, %117 ]
  %128 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 16
  %129 = load i32, ptr %128, align 8, !tbaa !471
  %130 = icmp eq i32 %129, 2956
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = zext i32 %129 to i64
  %133 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !1450
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull %127, ptr noundef %134) #25
  br label %136

136:                                              ; preds = %131, %126
  %137 = tail call i32 @fputc(i32 10, ptr %4)
  %138 = add nuw nsw i64 %8, 1
  %139 = load i32, ptr @n_reloads, align 4, !tbaa !305
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %7, label %142, !llvm.loop !1451

142:                                              ; preds = %136, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_reload() local_unnamed_addr #0 !prof !294 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !301
  tail call void @debug_reload_to_stream(ptr noundef %1) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!271}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!36 = !{ptr @find_reloads_address, ptr @rhs_regno, i64 1226227}
!37 = !{ptr @find_reloads_address, ptr @find_reloads_address_part, i64 6}
!38 = !{ptr @find_reloads_address, ptr @make_memloc, i64 2}
!39 = !{ptr @find_reloads_address, ptr @strict_memory_address_addr_space_p, i64 1071679}
!40 = !{ptr @find_reloads_address, ptr @find_reloads_address, i64 2}
!41 = !{ptr @find_reloads_address, ptr @rtx_equal_p, i64 1}
!42 = !{ptr @find_reloads_address, ptr @regno_ok_for_base_p, i64 327048}
!43 = !{ptr @find_reloads_address, ptr @regno_clobbered_p, i64 305386}
!44 = !{ptr @find_reloads_address, ptr @push_reload, i64 21710}
!45 = !{ptr @find_reloads_address, ptr @subst_reg_equivs, i64 221480}
!46 = !{ptr @find_reloads_address, ptr @maybe_memory_address_addr_space_p, i64 21657}
!47 = !{ptr @find_reloads_address, ptr @plus_constant, i64 5}
!48 = !{ptr @find_reloads_address, ptr @gen_rtx_fmt_ee_stat, i64 5}
!49 = !{ptr @find_reloads_address, ptr @find_reloads_address_1, i64 87053}
!50 = !{ptr @find_reloads_address, ptr @subst_indexed_address, i64 87048}
!51 = !{ptr @regno_ok_for_base_p, ptr @ok_for_base_p_1, i64 321831}
!52 = !{ptr @regno_clobbered_p, ptr @fancy_abort, i64 1}
!53 = !{ptr @regno_clobbered_p, ptr @rhs_regno, i64 3535}
!54 = !{ptr @push_reload, ptr @rhs_regno, i64 808598}
!55 = !{ptr @push_reload, ptr @fancy_abort, i64 6}
!56 = !{ptr @push_reload, ptr @rtx_equal_p, i64 9784}
!57 = !{ptr @push_reload, ptr @replace_equiv_address_nv, i64 6}
!58 = !{ptr @push_reload, ptr @subreg_lowpart_p, i64 5508}
!59 = !{ptr @push_reload, ptr @ix86_cannot_change_mode_class, i64 6561}
!60 = !{ptr @push_reload, ptr @subreg_regno, i64 4196}
!61 = !{ptr @push_reload, ptr @ix86_hard_regno_mode_ok, i64 284300}
!62 = !{ptr @push_reload, ptr @secondary_reload_class, i64 4132}
!63 = !{ptr @push_reload, ptr @reload_inner_reg_of_subreg, i64 1878280}
!64 = !{ptr @push_reload, ptr @push_reload, i64 2}
!65 = !{ptr @push_reload, ptr @subreg_regno_offset, i64 1}
!66 = !{ptr @push_reload, ptr @find_valid_class, i64 1}
!67 = !{ptr @push_reload, ptr @reg_overlap_mentioned_for_reload_p, i64 9335}
!68 = !{ptr @push_reload, ptr @gen_rtx_REG, i64 2203}
!69 = !{ptr @push_reload, ptr @ix86_preferred_reload_class, i64 1049454}
!70 = !{ptr @push_reload, ptr @ix86_preferred_output_reload_class, i64 828826}
!71 = !{ptr @push_reload, ptr @in_hard_reg_set_p, i64 12}
!72 = !{ptr @push_reload, ptr @error_for_asm, i64 1}
!73 = !{ptr @push_reload, ptr @gen_rtx_fmt_e_stat, i64 1}
!74 = !{ptr @push_reload, ptr @find_reusable_reload, i64 1823811}
!75 = !{ptr @push_reload, ptr @push_secondary_reload, i64 1876700}
!76 = !{ptr @push_reload, ptr @reg_or_subregno, i64 532671}
!77 = !{ptr @push_reload, ptr @ix86_secondary_memory_needed, i64 44680}
!78 = !{ptr @push_reload, ptr @get_secondary_mem, i64 2}
!79 = !{ptr @push_reload, ptr @remove_address_replacements, i64 3}
!80 = !{ptr @push_reload, ptr @reg_class_subset_p, i64 461}
!81 = !{ptr @push_reload, ptr @earlyclobber_operand_p, i64 42951}
!82 = !{ptr @push_reload, ptr @find_dummy_reload, i64 42951}
!83 = !{ptr @push_reload, ptr @find_equiv_reg, i64 20668}
!84 = !{ptr @push_reload, ptr @reg_mentioned_p, i64 183860}
!85 = !{ptr @push_reload, ptr @df_lr_get_bb_info, i64 145464}
!86 = !{ptr @push_reload, ptr @bitmap_bit_p, i64 145464}
!87 = !{ptr @push_reload, ptr @end_hard_regno, i64 145905}
!88 = !{ptr @push_reload, ptr @refers_to_regno_for_reload_p, i64 145516}
!89 = !{ptr @push_reload, ptr @hard_reg_set_here_p, i64 389}
!90 = !{ptr @push_reload, ptr @can_reload_into, i64 52}
!91 = !{ptr @subst_reg_equivs, ptr @rhs_regno, i64 84272}
!92 = !{ptr @subst_reg_equivs, ptr @make_memloc, i64 1}
!93 = !{ptr @subst_reg_equivs, ptr @rtx_equal_p, i64 1}
!94 = !{ptr @subst_reg_equivs, ptr @subst_reg_equivs, i64 220585}
!95 = !{ptr @maybe_memory_address_addr_space_p, ptr @max_reg_num, i64 3936}
!96 = !{ptr @maybe_memory_address_addr_space_p, ptr @gen_rtx_REG, i64 3936}
!97 = !{ptr @maybe_memory_address_addr_space_p, ptr @memory_address_addr_space_p, i64 3936}
!98 = !{ptr @find_reloads_address_1, ptr @rhs_regno, i64 175618}
!99 = !{ptr @find_reloads_address_1, ptr @find_reloads_address, i64 8}
!100 = !{ptr @find_reloads_address_1, ptr @push_reload, i64 159748}
!101 = !{ptr @find_reloads_address_1, ptr @find_reloads_address_1, i64 214962}
!102 = !{ptr @find_reloads_address_1, ptr @regno_ok_for_base_p, i64 159}
!103 = !{ptr @find_reloads_address_1, ptr @fancy_abort, i64 4}
!104 = !{ptr @find_reloads_address_1, ptr @make_memloc, i64 5}
!105 = !{ptr @find_reloads_address_1, ptr @rtx_equal_p, i64 5}
!106 = !{ptr @find_reloads_address_1, ptr @gen_rtx_fmt_e_stat, i64 1}
!107 = !{ptr @find_reloads_address_1, ptr @memory_operand, i64 1}
!108 = !{ptr @find_reloads_address_1, ptr @find_inc_amount, i64 2}
!109 = !{ptr @find_reloads_address_1, ptr @find_reloads_address_part, i64 2}
!110 = !{ptr @find_reloads_address_1, ptr @push_reg_equiv_alt_mem, i64 1}
!111 = !{ptr @find_reloads_address_1, ptr @regno_clobbered_p, i64 15683}
!112 = !{ptr @subst_indexed_address, ptr @rhs_regno, i64 90045}
!113 = !{ptr @subst_indexed_address, ptr @subst_indexed_address, i64 9374}
!114 = !{ptr @subst_indexed_address, ptr @form_sum, i64 5}
!115 = !{ptr @form_sum, ptr @fancy_abort, i64 2}
!116 = !{ptr @form_sum, ptr @plus_constant, i64 11000}
!117 = !{ptr @form_sum, ptr @form_sum, i64 6777}
!118 = !{ptr @form_sum, ptr @gen_rtx_fmt_ee_stat, i64 5511}
!119 = !{ptr @form_sum, ptr @gen_rtx_fmt_e_stat, i64 1}
!120 = !{ptr @reload_inner_reg_of_subreg, ptr @rhs_regno, i64 4518}
!121 = !{ptr @reload_inner_reg_of_subreg, ptr @subreg_regno, i64 2076}
!122 = !{ptr @reload_inner_reg_of_subreg, ptr @ix86_hard_regno_mode_ok, i64 2076}
!123 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @rhs_regno, i64 67875}
!124 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @refers_to_mem_for_reload_p, i64 21742}
!125 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @end_hard_regno, i64 53712}
!126 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @refers_to_regno_for_reload_p, i64 53712}
!127 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @reg_mentioned_p, i64 3}
!128 = !{ptr @in_hard_reg_set_p, ptr @end_hard_regno, i64 37473}
!129 = !{ptr @find_reusable_reload, ptr @earlyclobber_operand_p, i64 1823820}
!130 = !{ptr @find_reusable_reload, ptr @reg_class_subset_p, i64 718815}
!131 = !{ptr @find_reusable_reload, ptr @true_regnum, i64 9199}
!132 = !{ptr @find_reusable_reload, ptr @rtx_equal_p, i64 124868}
!133 = !{ptr @find_reusable_reload, ptr @side_effects_p, i64 46}
!134 = !{ptr @find_reusable_reload, ptr @rhs_regno, i64 2}
!135 = !{ptr @push_secondary_reload, ptr @rhs_regno, i64 485559}
!136 = !{ptr @push_secondary_reload, ptr @push_secondary_reload, i64 18}
!137 = !{ptr @push_secondary_reload, ptr @fancy_abort, i64 1}
!138 = !{ptr @push_secondary_reload, ptr @reg_class_subset_p, i64 1}
!139 = !{ptr @push_secondary_reload, ptr @ix86_secondary_memory_needed, i64 16}
!140 = !{ptr @push_secondary_reload, ptr @get_secondary_mem, i64 1}
!141 = !{ptr @remove_address_replacements, ptr @loc_mentioned_in_p, i64 71397}
!142 = !{ptr @remove_address_replacements, ptr @deallocate_reload_reg, i64 1}
!143 = !{ptr @remove_address_replacements, ptr @remove_address_replacements, i64 1}
!144 = !{ptr @find_dummy_reload, ptr @rhs_regno, i64 428977}
!145 = !{ptr @find_dummy_reload, ptr @subreg_regno_offset, i64 2049}
!146 = !{ptr @find_dummy_reload, ptr @ix86_preferred_reload_class, i64 233226}
!147 = !{ptr @find_dummy_reload, ptr @ix86_hard_regno_mode_ok, i64 167577}
!148 = !{ptr @find_dummy_reload, ptr @refers_to_regno_for_reload_p, i64 167571}
!149 = !{ptr @find_dummy_reload, ptr @gen_rtx_REG, i64 326}
!150 = !{ptr @find_dummy_reload, ptr @find_reg_note, i64 99768}
!151 = !{ptr @find_dummy_reload, ptr @df_lr_get_bb_info, i64 15766}
!152 = !{ptr @find_dummy_reload, ptr @bitmap_bit_p, i64 15766}
!153 = !{ptr @find_dummy_reload, ptr @hard_reg_set_here_p, i64 15676}
!154 = !{ptr @find_equiv_reg, ptr @rhs_regno, i64 121870}
!155 = !{ptr @find_equiv_reg, ptr @single_set_2, i64 2}
!156 = !{ptr @find_equiv_reg, ptr @true_regnum, i64 2423711}
!157 = !{ptr @find_equiv_reg, ptr @rtx_equal_p, i64 785580}
!158 = !{ptr @find_equiv_reg, ptr @reg_overlap_mentioned_for_reload_p, i64 72500}
!159 = !{ptr @find_equiv_reg, ptr @rtx_renumbered_equal_p, i64 920708}
!160 = !{ptr @find_equiv_reg, ptr @find_reg_note, i64 1006722}
!161 = !{ptr @find_equiv_reg, ptr @in_hard_reg_set_p, i64 27339}
!162 = !{ptr @find_equiv_reg, ptr @end_hard_regno, i64 15817}
!163 = !{ptr @find_equiv_reg, ptr @refers_to_regno_for_reload_p, i64 15817}
!164 = !{ptr @find_equiv_reg, ptr @constant_address_p, i64 12944}
!165 = !{ptr @find_equiv_reg, ptr @volatile_insn_p, i64 35249}
!166 = !{ptr @find_equiv_reg, ptr @push_operand, i64 3581}
!167 = !{ptr @refers_to_regno_for_reload_p, ptr @rhs_regno, i64 262032}
!168 = !{ptr @refers_to_regno_for_reload_p, ptr @subreg_regno, i64 6444}
!169 = !{ptr @refers_to_regno_for_reload_p, ptr @subreg_nregs, i64 6443}
!170 = !{ptr @refers_to_regno_for_reload_p, ptr @earlyclobber_operand_p, i64 350013}
!171 = !{ptr @refers_to_regno_for_reload_p, ptr @refers_to_regno_for_reload_p, i64 901467}
!172 = !{ptr @hard_reg_set_here_p, ptr @rhs_regno, i64 31208}
!173 = !{ptr @hard_reg_set_here_p, ptr @end_hard_regno, i64 1856}
!174 = !{ptr @hard_reg_set_here_p, ptr @hard_reg_set_here_p, i64 32603}
!175 = !{ptr @can_reload_into, ptr @gen_rtx_REG, i64 1}
!176 = !{ptr @can_reload_into, ptr @gen_rtx_fmt_ee_stat, i64 1}
!177 = !{ptr @can_reload_into, ptr @make_insn_raw, i64 1}
!178 = !{ptr @can_reload_into, ptr @recog_memoized, i64 1}
!179 = !{ptr @can_reload_into, ptr @extract_insn, i64 1}
!180 = !{ptr @can_reload_into, ptr @constrain_operands, i64 1}
!181 = !{ptr @operands_match_p, ptr @rhs_regno, i64 2472980}
!182 = !{ptr @operands_match_p, ptr @subreg_regno_offset, i64 10669}
!183 = !{ptr @operands_match_p, ptr @operands_match_p, i64 1027506}
!184 = !{ptr @operands_match_p, ptr @fancy_abort, i64 2}
!185 = !{ptr @safe_from_earlyclobber, ptr @decompose, i64 1903}
!186 = !{ptr @safe_from_earlyclobber, ptr @immune_p, i64 1903}
!187 = !{ptr @decompose, ptr @true_regnum, i64 2980}
!188 = !{ptr @decompose, ptr @rhs_regno, i64 2}
!189 = !{ptr @decompose, ptr @end_hard_regno, i64 2978}
!190 = !{ptr @immune_p, ptr @refers_to_regno_for_reload_p, i64 4060}
!191 = !{ptr @find_reloads, ptr @single_set_2, i64 1}
!192 = !{ptr @find_reloads, ptr @rhs_regno, i64 12733889}
!193 = !{ptr @find_reloads, ptr @ix86_register_move_cost, i64 235924}
!194 = !{ptr @find_reloads, ptr @extract_insn, i64 2456113}
!195 = !{ptr @find_reloads, ptr @insn_constraint_len, i64 116006692}
!196 = !{ptr @find_reloads, ptr @fancy_abort, i64 107}
!197 = !{ptr @find_reloads, ptr @strtoul, i64 17430667}
!198 = !{ptr @find_reloads, ptr @operands_match_p, i64 30598668}
!199 = !{ptr @find_reloads, ptr @find_reloads_address, i64 1398762}
!200 = !{ptr @find_reloads, ptr @find_reloads_toplev, i64 15374}
!201 = !{ptr @find_reloads, ptr @reg_preferred_class, i64 327770}
!202 = !{ptr @find_reloads, ptr @reg_alternate_class, i64 327770}
!203 = !{ptr @find_reloads, ptr @skip_alternative, i64 21}
!204 = !{ptr @find_reloads, ptr @simplify_subreg_regno, i64 25223}
!205 = !{ptr @find_reloads, ptr @subreg_regno_offset, i64 25223}
!206 = !{ptr @find_reloads, ptr @find_dummy_reload, i64 198565}
!207 = !{ptr @find_reloads, ptr @offsettable_memref_p, i64 925}
!208 = !{ptr @find_reloads, ptr @offsettable_nonstrict_memref_p, i64 2195}
!209 = !{ptr @find_reloads, ptr @lookup_constraint, i64 4619267}
!210 = !{ptr @find_reloads, ptr @constraint_satisfied_p, i64 1545202}
!211 = !{ptr @find_reloads, ptr @legitimate_pic_operand_p, i64 2}
!212 = !{ptr @find_reloads, ptr @insn_const_int_ok_for_constraint, i64 31955}
!213 = !{ptr @find_reloads, ptr @regclass_for_constraint, i64 3042110}
!214 = !{ptr @find_reloads, ptr @reg_fits_class_p, i64 3128142}
!215 = !{ptr @find_reloads, ptr @ix86_preferred_reload_class, i64 2004082}
!216 = !{ptr @find_reloads, ptr @find_reg_note, i64 1404}
!217 = !{ptr @find_reloads, ptr @ix86_preferred_output_reload_class, i64 1127342}
!218 = !{ptr @find_reloads, ptr @reg_class_subset_p, i64 643591}
!219 = !{ptr @find_reloads, ptr @decompose, i64 1124}
!220 = !{ptr @find_reloads, ptr @error_for_asm, i64 4}
!221 = !{ptr @find_reloads, ptr @rtx_equal_p, i64 14570}
!222 = !{ptr @find_reloads, ptr @immune_p, i64 2246}
!223 = !{ptr @find_reloads, ptr @gen_rtx_fmt_e_stat, i64 8}
!224 = !{ptr @find_reloads, ptr @force_const_mem, i64 7}
!225 = !{ptr @find_reloads, ptr @gen_rtx_fmt_ee_stat, i64 1}
!226 = !{ptr @find_reloads, ptr @gen_rtx_SUBREG, i64 1}
!227 = !{ptr @find_reloads, ptr @alternative_allows_const_pool_ref, i64 5}
!228 = !{ptr @find_reloads, ptr @push_reload, i64 1709957}
!229 = !{ptr @find_reloads, ptr @emit_insn_before, i64 5}
!230 = !{ptr @find_reloads, ptr @gen_clobber, i64 1}
!231 = !{ptr @find_reloads, ptr @emit_insn_after, i64 1}
!232 = !{ptr @find_reloads, ptr @dup_replacements, i64 2545}
!233 = !{ptr @find_reloads, ptr @combine_reloads, i64 1904125}
!234 = !{ptr @find_reloads, ptr @reg_mentioned_p, i64 3}
!235 = !{ptr @find_reloads, ptr @side_effects_p, i64 1}
!236 = !{ptr @find_reloads, ptr @reg_classes_intersect_p, i64 1823366}
!237 = !{ptr @find_reloads, ptr @elimination_target_reg_p, i64 567696}
!238 = !{ptr @find_reloads, ptr @ix86_hard_regno_mode_ok, i64 518468}
!239 = !{ptr @find_reloads_toplev, ptr @rhs_regno, i64 27454}
!240 = !{ptr @find_reloads_toplev, ptr @make_memloc, i64 2}
!241 = !{ptr @find_reloads_toplev, ptr @rtx_equal_p, i64 3}
!242 = !{ptr @find_reloads_toplev, ptr @gen_rtx_fmt_e_stat, i64 1}
!243 = !{ptr @find_reloads_toplev, ptr @emit_insn_before, i64 1}
!244 = !{ptr @find_reloads_toplev, ptr @find_reloads_address, i64 9}
!245 = !{ptr @find_reloads_toplev, ptr @push_reg_equiv_alt_mem, i64 1}
!246 = !{ptr @find_reloads_toplev, ptr @simplify_gen_subreg, i64 1}
!247 = !{ptr @find_reloads_toplev, ptr @strict_memory_address_addr_space_p, i64 2807}
!248 = !{ptr @find_reloads_toplev, ptr @offsettable_memref_p, i64 2806}
!249 = !{ptr @find_reloads_toplev, ptr @find_reloads_subreg_address, i64 4}
!250 = !{ptr @find_reloads_toplev, ptr @find_reloads_toplev, i64 18627}
!251 = !{ptr @alternative_allows_const_pool_ref, ptr @insn_constraint_len, i64 14}
!252 = !{ptr @dup_replacements, ptr @push_replacement, i64 1390}
!253 = !{ptr @combine_reloads, ptr @earlyclobber_operand_p, i64 56880}
!254 = !{ptr @combine_reloads, ptr @reg_classes_intersect_p, i64 36316}
!255 = !{ptr @combine_reloads, ptr @rtx_equal_p, i64 2}
!256 = !{ptr @combine_reloads, ptr @reg_overlap_mentioned_for_reload_p, i64 17940}
!257 = !{ptr @combine_reloads, ptr @rhs_regno, i64 15822}
!258 = !{ptr @combine_reloads, ptr @ix86_hard_regno_mode_ok, i64 15820}
!259 = !{ptr @combine_reloads, ptr @df_lr_get_bb_info, i64 12744}
!260 = !{ptr @combine_reloads, ptr @bitmap_bit_p, i64 12744}
!261 = !{ptr @combine_reloads, ptr @gen_rtx_REG, i64 12743}
!262 = !{ptr @subst_reloads, ptr @find_reg_note, i64 1}
!263 = !{ptr @subst_reloads, ptr @reload_adjust_reg_for_mode, i64 150}
!264 = !{ptr @subst_reloads, ptr @fancy_abort, i64 1}
!265 = !{ptr @reload_adjust_reg_for_mode, ptr @rhs_regno, i64 298}
!266 = !{ptr @reload_adjust_reg_for_mode, ptr @gen_rtx_REG, i64 298}
!267 = !{ptr @find_replacement, ptr @find_replacement, i64 6}
!268 = !{ptr @find_replacement, ptr @gen_rtx_fmt_ee_stat, i64 3}
!269 = !{ptr @refers_to_mem_for_reload_p, ptr @rhs_regno, i64 21804}
!270 = !{ptr @refers_to_mem_for_reload_p, ptr @refers_to_mem_for_reload_p, i64 20473}
!271 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!272 = !{!"function_entry_count", i64 4259}
!273 = !{!274, !275, i64 0}
!274 = !{!"secondary_reload_info", !275, i64 0, !275, i64 4, !278, i64 8, !275, i64 16}
!275 = !{!"int", !276, i64 0}
!276 = !{!"omnipotent char", !277, i64 0}
!277 = !{!"Simple C/C++ TBAA"}
!278 = !{!"any pointer", !276, i64 0}
!279 = !{!274, !278, i64 8}
!280 = !{!281, !278, i64 1728}
!281 = !{!"gcc_target", !282, i64 0, !284, i64 368, !285, i64 664, !275, i64 744, !278, i64 752, !278, i64 760, !278, i64 768, !278, i64 776, !278, i64 784, !278, i64 792, !278, i64 800, !278, i64 808, !278, i64 816, !278, i64 824, !278, i64 832, !278, i64 840, !278, i64 848, !278, i64 856, !278, i64 864, !278, i64 872, !278, i64 880, !278, i64 888, !278, i64 896, !278, i64 904, !278, i64 912, !278, i64 920, !278, i64 928, !278, i64 936, !278, i64 944, !278, i64 952, !278, i64 960, !278, i64 968, !278, i64 976, !278, i64 984, !278, i64 992, !278, i64 1000, !278, i64 1008, !278, i64 1016, !278, i64 1024, !278, i64 1032, !278, i64 1040, !278, i64 1048, !278, i64 1056, !286, i64 1064, !286, i64 1072, !278, i64 1080, !278, i64 1088, !278, i64 1096, !278, i64 1104, !278, i64 1112, !278, i64 1120, !278, i64 1128, !278, i64 1136, !278, i64 1144, !278, i64 1152, !278, i64 1160, !278, i64 1168, !287, i64 1176, !278, i64 1232, !278, i64 1240, !278, i64 1248, !278, i64 1256, !278, i64 1264, !278, i64 1272, !278, i64 1280, !278, i64 1288, !278, i64 1296, !278, i64 1304, !278, i64 1312, !278, i64 1320, !278, i64 1328, !278, i64 1336, !278, i64 1344, !278, i64 1352, !278, i64 1360, !278, i64 1368, !278, i64 1376, !278, i64 1384, !278, i64 1392, !278, i64 1400, !278, i64 1408, !278, i64 1416, !278, i64 1424, !278, i64 1432, !278, i64 1440, !278, i64 1448, !278, i64 1456, !286, i64 1464, !288, i64 1472, !278, i64 1664, !278, i64 1672, !278, i64 1680, !278, i64 1688, !278, i64 1696, !278, i64 1704, !278, i64 1712, !278, i64 1720, !278, i64 1728, !278, i64 1736, !278, i64 1744, !278, i64 1752, !278, i64 1760, !278, i64 1768, !278, i64 1776, !289, i64 1784, !290, i64 1792, !291, i64 1896, !292, i64 1968, !278, i64 2016, !276, i64 2024, !276, i64 2025, !276, i64 2026, !276, i64 2027, !276, i64 2028, !276, i64 2029, !276, i64 2030, !276, i64 2031, !276, i64 2032, !276, i64 2033, !276, i64 2034, !276, i64 2035}
!282 = !{!"asm_out", !278, i64 0, !278, i64 8, !278, i64 16, !283, i64 24, !283, i64 56, !278, i64 88, !278, i64 96, !278, i64 104, !278, i64 112, !278, i64 120, !278, i64 128, !278, i64 136, !278, i64 144, !278, i64 152, !278, i64 160, !278, i64 168, !278, i64 176, !278, i64 184, !278, i64 192, !278, i64 200, !278, i64 208, !278, i64 216, !278, i64 224, !278, i64 232, !278, i64 240, !278, i64 248, !278, i64 256, !278, i64 264, !278, i64 272, !278, i64 280, !278, i64 288, !278, i64 296, !278, i64 304, !278, i64 312, !278, i64 320, !278, i64 328, !278, i64 336, !278, i64 344, !278, i64 352, !278, i64 360}
!283 = !{!"asm_int_op", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24}
!284 = !{!"sched", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48, !278, i64 56, !278, i64 64, !278, i64 72, !278, i64 80, !278, i64 88, !278, i64 96, !278, i64 104, !278, i64 112, !278, i64 120, !278, i64 128, !278, i64 136, !278, i64 144, !278, i64 152, !278, i64 160, !278, i64 168, !278, i64 176, !278, i64 184, !278, i64 192, !278, i64 200, !278, i64 208, !278, i64 216, !278, i64 224, !278, i64 232, !278, i64 240, !278, i64 248, !278, i64 256, !278, i64 264, !278, i64 272, !278, i64 280, !278, i64 288}
!285 = !{!"vectorize", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48, !278, i64 56, !278, i64 64, !278, i64 72}
!286 = !{!"long", !276, i64 0}
!287 = !{!"addr_space", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48}
!288 = !{!"calls", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48, !278, i64 56, !278, i64 64, !278, i64 72, !278, i64 80, !278, i64 88, !278, i64 96, !278, i64 104, !278, i64 112, !278, i64 120, !278, i64 128, !278, i64 136, !278, i64 144, !278, i64 152, !278, i64 160, !278, i64 168, !278, i64 176, !278, i64 184}
!289 = !{!"c", !278, i64 0}
!290 = !{!"cxx", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48, !278, i64 56, !278, i64 64, !278, i64 72, !278, i64 80, !278, i64 88, !278, i64 96}
!291 = !{!"emutls", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48, !278, i64 56, !276, i64 64, !276, i64 65}
!292 = !{!"target_option_hooks", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40}
!293 = !{!"branch_weights", i32 4260, i32 1}
!294 = !{!"function_entry_count", i64 0}
!295 = !{!296, !276, i64 32}
!296 = !{!"insn_data", !278, i64 0, !276, i64 8, !278, i64 16, !278, i64 24, !276, i64 32, !276, i64 33, !276, i64 34, !276, i64 35}
!297 = !{!296, !278, i64 24}
!298 = !{!299, !278, i64 8}
!299 = !{!"insn_operand_data", !278, i64 0, !278, i64 8, !275, i64 16, !276, i64 18, !276, i64 19}
!300 = !{!276, !276, i64 0}
!301 = !{!278, !278, i64 0}
!302 = !{!303, !276, i64 32}
!303 = !{!"mem_attrs", !278, i64 0, !278, i64 8, !278, i64 16, !275, i64 24, !275, i64 28, !276, i64 32}
!304 = !{i32 0, i32 256}
!305 = !{!275, !275, i64 0}
!306 = !{!"function_entry_count", i64 5450555}
!307 = !{!281, !278, i64 1200}
!308 = !{!"function_entry_count", i64 1398768}
!309 = !{!"reload.c:find_reloads_address"}
!310 = !{!"branch_weights", i32 1387683, i32 11087}
!311 = !{!"branch_weights", i32 28348, i32 1370422}
!312 = !{!"branch_weights", i32 327095, i32 1071675}
!313 = !{!"branch_weights", i32 327095, i32 1}
!314 = !{!"branch_weights", i32 305390, i32 21706}
!315 = !{!"branch_weights", i32 43413, i32 471150436}
!316 = !{!"branch_weights", i32 305390, i32 1}
!317 = !{!"branch_weights", i32 1, i32 305390}
!318 = !{!"branch_weights", i32 87056, i32 984620}
!319 = !{!"branch_weights", i32 819075, i32 165546}
!320 = !{!"branch_weights", i32 778443, i32 40633}
!321 = !{!"branch_weights", i32 763144, i32 15300}
!322 = !{!"branch_weights", i32 763144, i32 1}
!323 = !{!"branch_weights", i32 1, i32 221477}
!324 = !{!"branch_weights", i32 87056, i32 1}
!325 = !{!"branch_weights", i32 43528, i32 43528, i32 -505593728}
!326 = !{!"branch_weights", i32 69501, i32 17556}
!327 = !{!"branch_weights", i32 548, i32 68954}
!328 = !{!"branch_weights", i32 1, i32 548}
!329 = !{!"branch_weights", i32 174111, i32 1}
!330 = !{!"branch_weights", i32 150593, i32 23519}
!331 = !{!"branch_weights", i32 12085, i32 6161}
!332 = !{!"branch_weights", i32 8149, i32 3937}
!333 = !{!"branch_weights", i32 1, i32 3937}
!334 = !{!"branch_weights", i32 87055, i32 87056}
!335 = distinct !{!335, !336}
!336 = !{!"llvm.loop.mustprogress"}
!337 = !{!"branch_weights", i32 2147458980, i32 24668}
!338 = !{!"branch_weights", i32 1, i32 87056}
!339 = !{!281, !278, i64 1184}
!340 = !{!"function_entry_count", i64 20369318}
!341 = !{!"reload.c:rhs_regno"}
!342 = !{!"reload.c:find_reloads_address_part"}
!343 = !{!"reload.c:make_memloc"}
!344 = !{!"reload.c:push_reg_equiv_alt_mem"}
!345 = distinct !{!345, !336}
!346 = !{!"function_entry_count", i64 321831}
!347 = !{!"reload.c:regno_ok_for_base_p"}
!348 = !{!"branch_weights", i32 7920, i32 313913}
!349 = !{!350, !350, i64 0}
!350 = !{!"short", !276, i64 0}
!351 = !{!"branch_weights", i32 1, i32 7920}
!352 = !{!"function_entry_count", i64 316092}
!353 = !{!"branch_weights", i32 316093, i32 1}
!354 = !{!"branch_weights", i32 1, i32 316093}
!355 = !{!"branch_weights", i32 829, i32 315265}
!356 = !{!"branch_weights", i32 569345335, i32 -1388314624, i32 5274312}
!357 = !{!"branch_weights", i32 648, i32 46}
!358 = !{!"branch_weights", i32 593, i32 56}
!359 = !{!"branch_weights", i32 19711300, i32 2127772348}
!360 = !{!361, !275, i64 0}
!361 = !{!"rtvec_def", !275, i64 0, !276, i64 8}
!362 = !{!"branch_weights", i32 1, i32 2894}
!363 = !{!"branch_weights", i32 1162977190, i32 1165390274}
!364 = !{!"branch_weights", i32 2889, i32 10}
!365 = !{!"branch_weights", i32 2889, i32 8349211}
!366 = !{!"branch_weights", i32 2894, i32 2909}
!367 = distinct !{!367, !336}
!368 = !{!"function_entry_count", i64 1823812}
!369 = !{!"branch_weights", i32 1512, i32 -1536592619}
!370 = !{!"branch_weights", i32 1943, i32 -750685950}
!371 = !{!"branch_weights", i32 774359, i32 1049455}
!372 = !{!"branch_weights", i32 325409, i32 724047}
!373 = !{!"branch_weights", i32 17641, i32 307769}
!374 = !{!"branch_weights", i32 1, i32 307769}
!375 = !{!"branch_weights", i32 307769, i32 1}
!376 = !{!"branch_weights", i32 828827, i32 994987}
!377 = !{!"branch_weights", i32 158156, i32 670672}
!378 = !{!"branch_weights", i32 24962, i32 133195}
!379 = !{!"branch_weights", i32 1, i32 133195}
!380 = !{!"branch_weights", i32 133195, i32 1}
!381 = !{!"branch_weights", i32 141128577, i32 2006355071}
!382 = !{!"branch_weights", i32 9780, i32 44690}
!383 = !{!"branch_weights", i32 451, i32 9330}
!384 = !{!"branch_weights", i32 9330, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!385 = !{!"branch_weights", i32 2045, i32 2147481603}
!386 = !{!"branch_weights", i32 4601, i32 1044855}
!387 = !{!"branch_weights", i32 87025, i32 1275167}
!388 = !{!"branch_weights", i32 4307, i32 1}
!389 = !{!"branch_weights", i32 1739489, i32 -1798219720}
!390 = !{!"branch_weights", i32 2400, i32 1908}
!391 = !{!"branch_weights", i32 2146987160, i32 496488}
!392 = !{!"branch_weights", i32 331, i32 2070}
!393 = !{!"branch_weights", i32 2146446456, i32 1037192}
!394 = !{!"branch_weights", i32 1908, i32 2070}
!395 = !{!"branch_weights", i32 1289, i32 620}
!396 = !{!"branch_weights", i32 1, i32 620}
!397 = !{!"branch_weights", i32 1908, i32 1}
!398 = !{!"branch_weights", i32 1, i32 1908}
!399 = !{!"branch_weights", i32 3977, i32 1}
!400 = !{!"branch_weights", i32 1, i32 331}
!401 = !{i32 0, i32 2}
!402 = !{!"branch_weights", i32 1049455, i32 1}
!403 = !{i32 -2147483648, i32 27}
!404 = !{!"branch_weights", i32 2036024778, i32 111458870}
!405 = !{!"branch_weights", i32 288, i32 828540}
!406 = !{!"branch_weights", i32 6400, i32 17009}
!407 = !{!"branch_weights", i32 209, i32 1}
!408 = !{!"branch_weights", i32 419, i32 43681}
!409 = !{!"branch_weights", i32 63, i32 147}
!410 = !{!"branch_weights", i32 2137326602, i32 10157046}
!411 = !{!"branch_weights", i32 47, i32 17}
!412 = !{!"branch_weights", i32 2021757815, i32 125725833}
!413 = !{!"branch_weights", i32 147, i32 17}
!414 = !{!"branch_weights", i32 147, i32 1}
!415 = !{!"branch_weights", i32 5, i32 143}
!416 = !{!"branch_weights", i32 5, i32 1}
!417 = !{!"branch_weights", i32 1, i32 147}
!418 = !{!"branch_weights", i32 163, i32 1}
!419 = !{!"branch_weights", i32 1, i32 47}
!420 = !{!"branch_weights", i32 828827, i32 1}
!421 = !{!"branch_weights", i32 2006355071, i32 141128577}
!422 = !{!"branch_weights", i32 9336, i32 45134}
!423 = !{!"branch_weights", i32 9330, i32 130634, i32 174097800, i32 9330}
!424 = !{!"branch_weights", i32 2046, i32 2147481602}
!425 = !{!"branch_weights", i32 4271, i32 1045185}
!426 = !{!"branch_weights", i32 4271, i32 1}
!427 = !{!"branch_weights", i32 4523504, i32 3717184}
!428 = !{!"branch_weights", i32 975918244, i32 1171565404}
!429 = !{!"branch_weights", i32 242, i32 828586}
!430 = !{!"branch_weights", i32 242, i32 1}
!431 = !{!"branch_weights", i32 14135, i32 22801}
!432 = !{!"branch_weights", i32 994987, i32 828827}
!433 = !{!"branch_weights", i32 715923, i32 1107891}
!434 = !{!"branch_weights", i32 -290703688, i32 11186}
!435 = !{!"branch_weights", i32 1823483, i32 331}
!436 = !{!"branch_weights", i32 222, i32 110}
!437 = !{!"branch_weights", i32 774359, i32 1049125}
!438 = !{!"branch_weights", i32 2344, i32 1046782}
!439 = !{!"branch_weights", i32 1, i32 2344}
!440 = !{!"branch_weights", i32 1823767, i32 47}
!441 = !{!"branch_weights", i32 47, i32 1}
!442 = !{!"branch_weights", i32 92, i32 828736}
!443 = !{!"branch_weights", i32 1, i32 92}
!444 = !{!"branch_weights", i32 1823813, i32 1}
!445 = !{!286, !286, i64 0}
!446 = !{i8 0, i8 2}
!447 = distinct !{!447, !336}
!448 = !{!"branch_weights", i32 1823353, i32 461}
!449 = !{!"branch_weights", i32 774359, i32 1048995}
!450 = !{!"branch_weights", i32 994527, i32 828827}
!451 = !{!"branch_weights", i32 1118, i32 827710}
!452 = !{!"branch_weights", i32 -238033767, i32 1845121325, i32 13200807}
!453 = !{!"branch_weights", i32 2341, i32 1}
!454 = !{!"branch_weights", i32 19568, i32 309982}
!455 = !{!"branch_weights", i32 19568, i32 1}
!456 = !{!457, !278, i64 0}
!457 = !{!"reload", !278, i64 0, !278, i64 8, !275, i64 16, !275, i64 20, !275, i64 24, !275, i64 28, !275, i64 32, !275, i64 36, !278, i64 40, !278, i64 48, !275, i64 56, !278, i64 64, !275, i64 72, !275, i64 76, !275, i64 80, !275, i64 84, !275, i64 88, !275, i64 92, !275, i64 96, !275, i64 96, !275, i64 96, !275, i64 96}
!458 = !{!457, !278, i64 8}
!459 = !{!457, !275, i64 16}
!460 = !{!457, !275, i64 20}
!461 = !{!457, !275, i64 24}
!462 = !{!457, !278, i64 64}
!463 = !{!457, !275, i64 36}
!464 = !{!457, !278, i64 40}
!465 = !{!457, !278, i64 48}
!466 = !{!457, !275, i64 72}
!467 = !{!457, !275, i64 92}
!468 = !{!457, !275, i64 76}
!469 = !{!457, !275, i64 80}
!470 = !{!457, !275, i64 84}
!471 = !{!457, !275, i64 88}
!472 = !{!"branch_weights", i32 -783427818, i32 829463858, i32 481904}
!473 = !{!"branch_weights", i32 92, i32 1}
!474 = !{!"branch_weights", i32 25112, i32 133332}
!475 = !{!"branch_weights", i32 25112, i32 1}
!476 = !{!"branch_weights", i32 1, i32 461}
!477 = !{!"branch_weights", i32 461, i32 1}
!478 = !{!"branch_weights", i32 458, i32 4}
!479 = !{!"branch_weights", i32 1, i32 4}
!480 = !{!"branch_weights", i32 1, i32 9}
!481 = !{!"branch_weights", i32 4, i32 1}
!482 = !{!"branch_weights", i32 536870912, i32 1610612736}
!483 = !{!"branch_weights", i32 455, i32 7}
!484 = !{!"branch_weights", i32 455, i32 1}
!485 = !{!"branch_weights", i32 1044580, i32 4876}
!486 = !{!"branch_weights", i32 1197022, i32 626792}
!487 = !{!"branch_weights", i32 276842, i32 349951}
!488 = !{!489, !275, i64 16}
!489 = !{!"replacement", !278, i64 0, !278, i64 8, !275, i64 16, !275, i64 20}
!490 = !{!489, !278, i64 8}
!491 = !{!489, !278, i64 0}
!492 = !{!489, !275, i64 20}
!493 = !{!"branch_weights", i32 -1237589050, i32 -1596662123}
!494 = !{!"branch_weights", i32 -1261062532, i32 73174006}
!495 = !{!"branch_weights", i32 42953, i32 1}
!496 = !{!"branch_weights", i32 21107, i32 21847}
!497 = !{!"branch_weights", i32 19527, i32 1581}
!498 = !{!"branch_weights", i32 1144, i32 438}
!499 = !{!"branch_weights", i32 20670, i32 1}
!500 = !{!"branch_weights", i32 -764292734, i32 -1549933477}
!501 = !{!"branch_weights", i32 994987, i32 31082}
!502 = !{!"branch_weights", i32 369, i32 30714}
!503 = !{!"branch_weights", i32 463323, i32 562701}
!504 = !{!"branch_weights", i32 286954, i32 275748}
!505 = !{!"branch_weights", i32 286954, i32 1}
!506 = !{!"branch_weights", i32 183854, i32 103101}
!507 = !{!"branch_weights", i32 38394, i32 145461}
!508 = !{!"branch_weights", i32 1, i32 145461}
!509 = !{!510, !278, i64 8}
!510 = !{!"function", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !278, i64 48, !278, i64 56, !278, i64 64, !278, i64 72, !278, i64 80, !278, i64 88, !278, i64 96, !275, i64 104, !275, i64 108, !275, i64 112, !275, i64 116, !275, i64 120, !275, i64 124, !278, i64 128, !275, i64 136, !275, i64 137, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 138, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139, !275, i64 139}
!511 = !{!512, !278, i64 0}
!512 = !{!"control_flow_graph", !278, i64 0, !278, i64 8, !278, i64 16, !275, i64 24, !275, i64 28, !275, i64 32, !278, i64 40, !275, i64 48, !276, i64 52, !276, i64 60, !275, i64 68, !275, i64 72}
!513 = !{!514, !275, i64 80}
!514 = !{!"basic_block_def", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !276, i64 32, !278, i64 48, !278, i64 56, !276, i64 64, !286, i64 72, !275, i64 80, !275, i64 84, !275, i64 88, !275, i64 92, !275, i64 96}
!515 = !{!516, !278, i64 24}
!516 = !{!"df_lr_bb_info", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24}
!517 = !{!"branch_weights", i32 145461, i32 1}
!518 = !{!"branch_weights", i32 141603, i32 3859}
!519 = !{!"branch_weights", i32 141214, i32 390}
!520 = !{!"branch_weights", i32 1, i32 390}
!521 = !{!"branch_weights", i32 345, i32 46}
!522 = !{!"branch_weights", i32 38, i32 2147483610}
!523 = !{!"branch_weights", i32 439, i32 141120}
!524 = !{!"branch_weights", i32 1, i32 141120}
!525 = !{!"branch_weights", i32 141061, i32 60}
!526 = !{!"branch_weights", i32 1, i32 179}
!527 = !{!"branch_weights", i32 60, i32 1}
!528 = !{!"branch_weights", i32 16, i32 45}
!529 = !{!"branch_weights", i32 179, i32 61}
!530 = distinct !{!530, !336}
!531 = !{!"branch_weights", i32 1420795769, i32 726687879}
!532 = !{!"branch_weights", i32 1, i32 45}
!533 = !{!"branch_weights", i32 562701, i32 0}
!534 = distinct !{!534, !336}
!535 = !{!"function_entry_count", i64 442066}
!536 = !{!"reload.c:subst_reg_equivs"}
!537 = !{!"branch_weights", i32 38394, i32 1, i32 53783, i32 57794, i32 1, i32 1, i32 1, i32 133742, i32 2183, i32 1, i32 1, i32 84274, i32 71903}
!538 = !{!"branch_weights", i32 84274, i32 1}
!539 = !{!"branch_weights", i32 1, i32 71903}
!540 = !{!"branch_weights", i32 1, i32 110295}
!541 = !{!"branch_weights", i32 220591, i32 1}
!542 = !{!"branch_weights", i32 110296, i32 110295}
!543 = distinct !{!543, !336}
!544 = !{!"function_entry_count", i64 3936}
!545 = !{!"reload.c:maybe_memory_address_addr_space_p"}
!546 = !{!"function_entry_count", i64 228380}
!547 = !{!"reload.c:find_reloads_address_1"}
!548 = !{!"branch_weights", i32 30538, i32 96655, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 101190, i32 1}
!549 = !{!"branch_weights", i32 1, i32 96655}
!550 = !{!"branch_weights", i32 21068100, i32 9181}
!551 = !{!"branch_weights", i32 1955, i32 2636}
!552 = !{!"branch_weights", i32 1, i32 2636}
!553 = !{!"branch_weights", i32 1955, i32 1}
!554 = !{!"branch_weights", i32 1260, i32 3331}
!555 = !{!"branch_weights", i32 1, i32 3331}
!556 = !{!"branch_weights", i32 1260, i32 1}
!557 = !{!"branch_weights", i32 4198320, i32 6512105}
!558 = !{!"branch_weights", i32 10710425, i32 4586787}
!559 = !{!"branch_weights", i32 1, i32 1377}
!560 = !{!"branch_weights", i32 1378, i32 1377}
!561 = !{!"branch_weights", i32 2755, i32 1896129}
!562 = !{!"branch_weights", i32 45704, i32 182678}
!563 = !{!564, !275, i64 0}
!564 = !{!"optab_handlers", !275, i64 0}
!565 = !{!299, !278, i64 0}
!566 = !{!"branch_weights", i32 101190, i32 1}
!567 = !{!"branch_weights", i32 9048, i32 92143}
!568 = !{!"branch_weights", i32 92143, i32 -49801072}
!569 = !{!"branch_weights", i32 1, i32 101190}
!570 = !{!"branch_weights", i32 92143, i32 9048}
!571 = !{!"branch_weights", i32 1, i32 9048}
!572 = !{!"branch_weights", i32 3329, i32 1}
!573 = !{!"branch_weights", i32 5720, i32 1}
!574 = !{!"branch_weights", i32 9048, i32 1}
!575 = !{!"branch_weights", i32 1, i32 30537}
!576 = !{!"branch_weights", i32 28940, i32 18459}
!577 = !{!"branch_weights", i32 16861, i32 30537}
!578 = distinct !{!578, !336}
!579 = !{!"function_entry_count", i64 96427}
!580 = !{!"reload.c:subst_indexed_address"}
!581 = !{!"branch_weights", i32 96428, i32 1}
!582 = !{!"branch_weights", i32 72700, i32 23729}
!583 = !{!"branch_weights", i32 71441, i32 1260}
!584 = !{!"branch_weights", i32 71441, i32 1}
!585 = !{!"branch_weights", i32 17348, i32 79081}
!586 = !{!"branch_weights", i32 12066, i32 5283}
!587 = !{!"branch_weights", i32 12066, i32 1}
!588 = !{!"branch_weights", i32 9373, i32 87056}
!589 = !{!"branch_weights", i32 9373, i32 1}
!590 = !{!"branch_weights", i32 1, i32 96428}
!591 = !{!"reload.c:ok_for_base_p_1"}
!592 = !{!"branch_weights", i32 313913, i32 7920}
!593 = !{!"branch_weights", i32 1470335, i32 -413771296}
!594 = !{!"reload.c:find_inc_amount"}
!595 = distinct !{!595, !336}
!596 = distinct !{!596, !336}
!597 = !{!"reload.c:find_reloads_subreg_address"}
!598 = !{!303, !278, i64 8}
!599 = !{!303, !278, i64 16}
!600 = !{!601, !278, i64 88}
!601 = !{!"rtl_data", !602, i64 0, !603, i64 40, !604, i64 96, !605, i64 112, !607, i64 208, !608, i64 248, !275, i64 312, !278, i64 320, !278, i64 328, !278, i64 336, !278, i64 344, !278, i64 352, !278, i64 360, !278, i64 368, !278, i64 376, !278, i64 384, !278, i64 392, !286, i64 400, !278, i64 408, !278, i64 416, !278, i64 424, !275, i64 432, !275, i64 436, !275, i64 440, !275, i64 444, !275, i64 448, !275, i64 452, !278, i64 456, !276, i64 464, !276, i64 465, !276, i64 466, !276, i64 467, !276, i64 468, !276, i64 469, !276, i64 470, !276, i64 471, !276, i64 472, !276, i64 473, !276, i64 474, !276, i64 475, !276, i64 476, !276, i64 477, !276, i64 478, !276, i64 479, !276, i64 480, !276, i64 481, !276, i64 482, !276, i64 483, !276, i64 484, !276, i64 485}
!602 = !{!"expr_status", !275, i64 0, !275, i64 4, !275, i64 8, !278, i64 16, !278, i64 24, !278, i64 32}
!603 = !{!"emit_status", !275, i64 0, !275, i64 4, !278, i64 8, !278, i64 16, !278, i64 24, !275, i64 32, !275, i64 36, !275, i64 40, !275, i64 44, !278, i64 48}
!604 = !{!"varasm_status", !278, i64 0, !275, i64 8}
!605 = !{!"incoming_args", !275, i64 0, !275, i64 4, !275, i64 8, !278, i64 16, !606, i64 24, !278, i64 88}
!606 = !{!"ix86_args", !275, i64 0, !275, i64 4, !275, i64 8, !275, i64 12, !275, i64 16, !275, i64 20, !275, i64 24, !275, i64 28, !275, i64 32, !275, i64 36, !275, i64 40, !275, i64 44, !275, i64 48, !275, i64 52, !275, i64 56, !275, i64 60}
!607 = !{!"function_subsections", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32}
!608 = !{!"rtl_eh", !278, i64 0, !278, i64 8, !278, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !276, i64 48}
!609 = !{!"function_entry_count", i64 16511}
!610 = !{!"branch_weights", i32 15042433, i32 910}
!611 = !{!"branch_weights", i32 113800705, i32 6891}
!612 = !{!"branch_weights", i32 910, i32 15603}
!613 = !{!"branch_weights", i32 6891, i32 8713}
!614 = !{!"branch_weights", i32 1, i32 8713}
!615 = !{!"branch_weights", i32 910, i32 7804}
!616 = !{!"branch_weights", i32 910, i32 1}
!617 = !{!"branch_weights", i32 3898, i32 3907}
!618 = !{!"branch_weights", i32 3898, i32 1}
!619 = !{!"branch_weights", i32 1, i32 3907}
!620 = !{!"function_entry_count", i64 6652}
!621 = !{!"function_entry_count", i64 1881844}
!622 = !{!"reload.c:reload_inner_reg_of_subreg"}
!623 = !{!"branch_weights", i32 4512, i32 1877334}
!624 = !{!"branch_weights", i32 9025, i32 20358144}
!625 = !{!"branch_weights", i32 4512, i32 1}
!626 = !{!"branch_weights", i32 2435, i32 2078}
!627 = !{!"branch_weights", i32 1, i32 2078}
!628 = !{!"branch_weights", i32 313778, i32 4008463}
!629 = !{!"branch_weights", i32 9, i32 143}
!630 = !{!"reload.c:find_valid_class"}
!631 = distinct !{!631, !336}
!632 = distinct !{!632, !336}
!633 = !{!"function_entry_count", i64 142547}
!634 = !{!"branch_weights", i32 1, i32 142548}
!635 = !{!"branch_weights", i32 67088, i32 75461}
!636 = !{!"branch_weights", i32 2046, i32 32767, i32 2046, i32 -2070771236, i32 248403513, i32 28665, i32 28665, i32 28665}
!637 = !{!"branch_weights", i32 14164, i32 53717}
!638 = !{!"branch_weights", i32 1, i32 14164}
!639 = distinct !{!639, !336}
!640 = !{!"function_entry_count", i64 39928}
!641 = !{!"reload.c:in_hard_reg_set_p"}
!642 = !{!"branch_weights", i32 2455, i32 37475}
!643 = !{!"branch_weights", i32 32, i32 37475}
!644 = !{!"branch_weights", i32 1, i32 32}
!645 = distinct !{!645, !336}
!646 = !{!"reload.c:find_reusable_reload"}
!647 = !{!"branch_weights", i32 495053331, i32 -1543109855}
!648 = !{!"branch_weights", i32 2146989040, i32 494608}
!649 = !{!"branch_weights", i32 81817, i32 196189}
!650 = !{!"branch_weights", i32 359, i32 81459}
!651 = !{!"branch_weights", i32 273049, i32 4599}
!652 = !{!"branch_weights", i32 627, i32 3973}
!653 = !{!"branch_weights", i32 36306, i32 240716}
!654 = !{!"branch_weights", i32 2314, i32 238403}
!655 = !{!"branch_weights", i32 113590, i32 124814}
!656 = !{!"branch_weights", i32 1, i32 124814}
!657 = !{!"branch_weights", i32 17468, i32 107347}
!658 = !{!"branch_weights", i32 1, i32 17468}
!659 = !{!"branch_weights", i32 17465, i32 4}
!660 = !{!"branch_weights", i32 9268, i32 2322}
!661 = !{!"branch_weights", i32 2317, i32 1}
!662 = !{!"branch_weights", i32 1835939798, i32 311543850}
!663 = !{!"branch_weights", i32 1, i32 39853}
!664 = !{!"branch_weights", i32 39828, i32 26}
!665 = !{!"branch_weights", i32 1, i32 26}
!666 = !{!"branch_weights", i32 2311, i32 7}
!667 = !{!"branch_weights", i32 7, i32 1}
!668 = !{!"branch_weights", i32 1, i32 2317}
!669 = !{!"branch_weights", i32 7, i32 2311}
!670 = !{!"branch_weights", i32 587, i32 1725}
!671 = !{!"branch_weights", i32 455, i32 133}
!672 = !{!"branch_weights", i32 -1134463788, i32 43152050, i32 1702857, i32 1701940}
!673 = !{!"branch_weights", i32 1, i32 25}
!674 = !{!"branch_weights", i32 0, i32 278005}
!675 = distinct !{!675, !336}
!676 = !{!"branch_weights", i32 81360, i32 196186}
!677 = !{!"branch_weights", i32 359, i32 81002}
!678 = !{!"branch_weights", i32 272589, i32 4599}
!679 = !{!"branch_weights", i32 940444857, i32 331740343}
!680 = !{!"branch_weights", i32 236709, i32 39853}
!681 = !{!"branch_weights", i32 114889, i32 121821}
!682 = !{!"branch_weights", i32 1, i32 114889}
!683 = !{!"branch_weights", i32 16520, i32 98370}
!684 = !{!"branch_weights", i32 1, i32 16520}
!685 = !{!"branch_weights", i32 107287, i32 7603}
!686 = !{!"branch_weights", i32 1, i32 107287}
!687 = !{!"branch_weights", i32 0, i32 277545}
!688 = distinct !{!688, !336}
!689 = !{!"function_entry_count", i64 1876720}
!690 = !{!"reload.c:push_secondary_reload"}
!691 = !{!"branch_weights", i32 135626899, i32 -2104489440}
!692 = !{!"branch_weights", i32 2432, i32 1874290}
!693 = !{!"branch_weights", i32 1, i32 2432}
!694 = !{!"branch_weights", i32 485560, i32 1391162}
!695 = !{!"branch_weights", i32 440882, i32 44679}
!696 = !{!"branch_weights", i32 42, i32 440841}
!697 = !{!"branch_weights", i32 -855496687, i32 34821}
!698 = !{!"branch_weights", i32 1, i32 18}
!699 = !{!"branch_weights", i32 1, i32 17}
!700 = !{!"branch_weights", i32 0, i32 1}
!701 = distinct !{!701, !336}
!702 = !{!"branch_weights", i32 18, i32 1}
!703 = !{!"branch_weights", i32 1, i32 37}
!704 = !{!"branch_weights", i32 324, i32 37}
!705 = !{!"function_entry_count", i64 37043}
!706 = !{!"branch_weights", i32 37043, i32 1}
!707 = !{!"branch_weights", i32 71399, i32 1}
!708 = !{i64 0, i64 8, !301, i64 8, i64 8, !301, i64 16, i64 4, !305, i64 20, i64 4, !305}
!709 = !{!"branch_weights", i32 34356, i32 37043}
!710 = distinct !{!710, !336}
!711 = !{!"branch_weights", i32 1, i32 68248}
!712 = !{!"branch_weights", i32 31205, i32 37043}
!713 = distinct !{!713, !336}
!714 = !{!"function_entry_count", i64 234028}
!715 = !{!"reload.c:find_dummy_reload"}
!716 = !{!"branch_weights", i32 229818, i32 4212}
!717 = !{!"branch_weights", i32 2737225, i32 11641744}
!718 = !{!"branch_weights", i32 623, i32 232606}
!719 = !{!"branch_weights", i32 3134, i32 230095}
!720 = !{!"branch_weights", i32 623, i32 1}
!721 = !{!"branch_weights", i32 403, i32 221}
!722 = !{!"branch_weights", i32 0, i32 -2147483648}
!723 = distinct !{!723, !336}
!724 = !{!"branch_weights", i32 3134, i32 1}
!725 = !{!"branch_weights", i32 1648, i32 1487}
!726 = distinct !{!726, !336}
!727 = !{!"branch_weights", i32 1027, i32 232203}
!728 = !{!"branch_weights", i32 219184, i32 14046}
!729 = !{!"branch_weights", i32 151813, i32 67372}
!730 = !{!"branch_weights", i32 151813, i32 1}
!731 = !{!"branch_weights", i32 1, i32 151813}
!732 = !{!"branch_weights", i32 142160, i32 9654}
!733 = !{!"branch_weights", i32 1, i32 138745}
!734 = !{!"branch_weights", i32 3415, i32 138856}
!735 = !{!"branch_weights", i32 138745, i32 3525}
!736 = distinct !{!736, !336}
!737 = !{!"branch_weights", i32 2094585797, i32 52897851}
!738 = !{!"branch_weights", i32 138430, i32 317}
!739 = !{!"branch_weights", i32 1, i32 233229}
!740 = !{!"branch_weights", i32 158749, i32 74481}
!741 = !{!"branch_weights", i32 99403, i32 59347}
!742 = !{!"branch_weights", i32 33898, i32 65506}
!743 = !{!"branch_weights", i32 65140, i32 367}
!744 = !{!"branch_weights", i32 18495, i32 15770}
!745 = !{!"branch_weights", i32 15770, i32 1}
!746 = !{!"branch_weights", i32 1, i32 15770}
!747 = !{!"branch_weights", i32 15767, i32 4}
!748 = !{!"branch_weights", i32 15682, i32 86}
!749 = !{!"branch_weights", i32 15632, i32 51}
!750 = !{!"branch_weights", i32 15632, i32 1}
!751 = !{!"branch_weights", i32 1, i32 15170}
!752 = !{!"branch_weights", i32 462, i32 15171}
!753 = !{!"branch_weights", i32 15170, i32 462}
!754 = distinct !{!754, !336}
!755 = !{!"branch_weights", i32 2082088468, i32 65395180}
!756 = !{!"branch_weights", i32 2282, i32 34635394}
!757 = !{!"branch_weights", i32 15171, i32 1}
!758 = !{!"function_entry_count", i64 2229447}
!759 = !{!"branch_weights", i32 4179, i32 2224174}
!760 = !{!"branch_weights", i32 4179, i32 0}
!761 = distinct !{!761, !336}
!762 = !{!"branch_weights", i32 1096, i32 3084}
!763 = !{!"function_entry_count", i64 421697}
!764 = !{!"branch_weights", i32 1, i32 421698}
!765 = !{!"branch_weights", i32 912162278, i32 960351778, i32 -1844934822}
!766 = !{!"branch_weights", i32 239016, i32 6}
!767 = !{!"branch_weights", i32 239016, i32 1}
!768 = !{!"branch_weights", i32 87943, i32 1047}
!769 = !{!"branch_weights", i32 1047, i32 1}
!770 = !{!"branch_weights", i32 1, i32 1047}
!771 = !{!"branch_weights", i32 39876, i32 4627904}
!772 = !{!"branch_weights", i32 1, i32 4627904}
!773 = !{!"branch_weights", i32 339272, i32 4288633}
!774 = !{!775, !275, i64 8}
!775 = !{!"param_info", !278, i64 0, !275, i64 8, !276, i64 12, !275, i64 16, !275, i64 20, !278, i64 24}
!776 = !{!"branch_weights", i32 4284880, i32 3754}
!777 = !{!"branch_weights", i32 2762329, i32 1522552}
!778 = !{!"branch_weights", i32 118725, i32 14133}
!779 = !{!"branch_weights", i32 2536855, i32 1}
!780 = !{!"branch_weights", i32 -2147483648, i32 0}
!781 = !{!"branch_weights", i32 488768, i32 2257599}
!782 = !{!"branch_weights", i32 10879, i32 477890}
!783 = !{!"branch_weights", i32 9718, i32 1162}
!784 = !{!"branch_weights", i32 21706, i32 457346}
!785 = !{!"branch_weights", i32 6160, i32 15547}
!786 = !{!"branch_weights", i32 1715218, i32 1015273}
!787 = !{!"branch_weights", i32 950005, i32 65269}
!788 = !{!"branch_weights", i32 65269, i32 1}
!789 = !{!"branch_weights", i32 10546, i32 54724}
!790 = !{!"branch_weights", i32 1477619, i32 1242327}
!791 = !{!"branch_weights", i32 855514, i32 386814}
!792 = !{!"branch_weights", i32 845106, i32 10409}
!793 = !{!"branch_weights", i32 489216, i32 742704}
!794 = !{!"branch_weights", i32 476495, i32 12722}
!795 = !{!"branch_weights", i32 1692089, i32 1004728}
!796 = !{!"branch_weights", i32 548813, i32 455916}
!797 = !{!"branch_weights", i32 323821, i32 132096}
!798 = !{!"branch_weights", i32 132096, i32 1}
!799 = !{!"branch_weights", i32 2, i32 132095}
!800 = !{!"branch_weights", i32 1, i32 2}
!801 = !{!"branch_weights", i32 872633, i32 132096}
!802 = !{!"branch_weights", i32 1431, i32 48121}
!803 = !{!"branch_weights", i32 274, i32 1158}
!804 = !{!"branch_weights", i32 8193, i32 39929}
!805 = !{!"branch_weights", i32 28036, i32 9713}
!806 = !{!"branch_weights", i32 9713, i32 1}
!807 = !{!"branch_weights", i32 75497, i32 1424911504}
!808 = !{!"branch_weights", i32 14634, i32 23115}
!809 = !{!"branch_weights", i32 23115, i32 1}
!810 = !{!"branch_weights", i32 37731, i32 18}
!811 = !{!"branch_weights", i32 92463, i32 1}
!812 = !{!"branch_weights", i32 10394, i32 1}
!813 = !{!"branch_weights", i32 7943, i32 2452}
!814 = !{!"branch_weights", i32 2616443, i32 513121215}
!815 = !{!"branch_weights", i32 92850, i32 -1018532888}
!816 = !{!"branch_weights", i32 72900, i32 9487981, i32 270}
!817 = !{!"branch_weights", i32 1, i32 205}
!818 = !{!"branch_weights", i32 205, i32 335}
!819 = distinct !{!819, !336}
!820 = !{!"branch_weights", i32 168, i32 103}
!821 = !{!"branch_weights", i32 127, i32 1}
!822 = !{!"branch_weights", i32 2, i32 103}
!823 = !{!"branch_weights", i32 1, i32 103}
!824 = !{!"branch_weights", i32 103, i32 1}
!825 = !{!"branch_weights", i32 127, i32 13185}
!826 = distinct !{!826, !336}
!827 = !{!"branch_weights", i32 20664, i32 14348}
!828 = !{!"branch_weights", i32 1, i32 1973}
!829 = !{!"branch_weights", i32 14417, i32 64934}
!830 = !{!"branch_weights", i32 9114361, i32 34427999}
!831 = !{!"branch_weights", i32 81513, i32 9038887}
!832 = !{!"branch_weights", i32 1, i32 215}
!833 = !{!"branch_weights", i32 215, i32 1}
!834 = distinct !{!834, !336}
!835 = !{!"branch_weights", i32 27, i32 1}
!836 = !{!"branch_weights", i32 10334239, i32 1831986561}
!837 = !{!"branch_weights", i32 201, i32 5837}
!838 = distinct !{!838, !336}
!839 = !{!"branch_weights", i32 101, i32 2919}
!840 = !{!"branch_weights", i32 -479952352, i32 652109111}
!841 = !{!"branch_weights", i32 55539, i32 1}
!842 = !{!"branch_weights", i32 1, i32 55539}
!843 = !{!"branch_weights", i32 1439671, i32 -1426560297, i32 55386, i32 207091177}
!844 = !{!"branch_weights", i32 1013842175, i32 323190, i32 64636, i32 323152, i32 -1962555092}
!845 = distinct !{!845, !336}
!846 = !{!"branch_weights", i32 32282, i32 3808}
!847 = !{!"branch_weights", i32 170220, i32 511802520}
!848 = !{!"branch_weights", i32 67702812, i32 487733393}
!849 = !{!"branch_weights", i32 14045, i32 17637}
!850 = !{!"branch_weights", i32 14922, i32 2716}
!851 = !{!"branch_weights", i32 1, i32 28966}
!852 = !{!"branch_weights", i32 40109319, i32 73220793}
!853 = !{!"branch_weights", i32 5553, i32 1}
!854 = !{!"branch_weights", i32 17880170, i32 25055926}
!855 = !{!"branch_weights", i32 1, i32 4222}
!856 = !{!"branch_weights", i32 5914, i32 1}
!857 = !{!"branch_weights", i32 1, i32 1914}
!858 = !{!"branch_weights", i32 1, i32 7473}
!859 = !{!"branch_weights", i32 77574, i32 13967100, i32 13571756}
!860 = !{!"branch_weights", i32 85280001, i32 1185238, i32 395026, i32 1184602, i32 -1437297602}
!861 = distinct !{!861, !336}
!862 = !{!"branch_weights", i32 7030, i32 209}
!863 = !{!"branch_weights", i32 643416, i32 40220739}
!864 = !{!"branch_weights", i32 3351942, i32 13037858}
!865 = !{!"branch_weights", i32 4571, i32 1098}
!866 = !{!"branch_weights", i32 1050, i32 49}
!867 = !{!"branch_weights", i32 3, i32 5618}
!868 = !{!"branch_weights", i32 3, i32 1}
!869 = !{!"branch_weights", i32 6241, i32 11119}
!870 = !{!"branch_weights", i32 79, i32 1}
!871 = !{!"branch_weights", i32 16900, i32 1309}
!872 = !{!"branch_weights", i32 1, i32 130}
!873 = !{!"branch_weights", i32 9, i32 1}
!874 = !{!"branch_weights", i32 1914, i32 5559}
!875 = distinct !{!875, !336}
!876 = !{!"branch_weights", i32 101, i32 36718}
!877 = !{!"branch_weights", i32 69, i32 33}
!878 = !{!"branch_weights", i32 32, i32 0}
!879 = distinct !{!879, !336}
!880 = !{!"branch_weights", i32 1973, i32 77377}
!881 = !{!"function_entry_count", i64 171629}
!882 = !{!"reload.c:df_lr_get_bb_info"}
!883 = !{!884, !275, i64 16}
!884 = !{!"dataflow", !278, i64 0, !278, i64 8, !275, i64 16, !278, i64 24, !278, i64 32, !278, i64 40, !275, i64 48, !276, i64 52, !276, i64 53, !276, i64 54}
!885 = !{!"branch_weights", i32 171630, i32 1}
!886 = !{!884, !278, i64 8}
!887 = !{!"function_entry_count", i64 1076286}
!888 = !{!"reload.c:refers_to_regno_for_reload_p"}
!889 = !{!"branch_weights", i32 1, i32 1076287}
!890 = !{!"branch_weights", i32 984990, i32 222337, i32 6637, i32 162617, i32 301689}
!891 = !{!"branch_weights", i32 54166, i32 168172}
!892 = !{!"branch_weights", i32 1129, i32 53038}
!893 = !{!"branch_weights", i32 1, i32 1129}
!894 = !{!"branch_weights", i32 69475, i32 98698}
!895 = !{!"branch_weights", i32 6591, i32 47}
!896 = !{!"branch_weights", i32 5632, i32 960}
!897 = !{!"branch_weights", i32 5632, i32 1}
!898 = !{!"branch_weights", i32 3984, i32 1649}
!899 = !{!"branch_weights", i32 154919, i32 309387}
!900 = !{!"branch_weights", i32 1, i32 309387}
!901 = !{!"branch_weights", i32 305794, i32 3594}
!902 = !{!"branch_weights", i32 305047, i32 748}
!903 = !{!"branch_weights", i32 4323, i32 19}
!904 = !{!"branch_weights", i32 -1764291332, i32 1846283083}
!905 = !{!"branch_weights", i32 1, i32 556615}
!906 = !{!"branch_weights", i32 2118950958, i32 -1254993920, i32 684494801}
!907 = !{!"branch_weights", i32 36197, i32 705985}
!908 = !{!"branch_weights", i32 406135, i32 299851}
!909 = !{!"branch_weights", i32 289954, i32 9898}
!910 = !{!"branch_weights", i32 1, i32 153764}
!911 = !{!"branch_weights", i32 1, i32 337808}
!912 = !{!"branch_weights", i32 324460, i32 13349}
!913 = !{!"branch_weights", i32 153764, i32 184044}
!914 = distinct !{!914, !336}
!915 = !{!"branch_weights", i32 870000, i32 556615}
!916 = distinct !{!916, !336}
!917 = !{!"function_entry_count", i64 252314}
!918 = !{!"reload.c:end_hard_regno"}
!919 = !{!"function_entry_count", i64 48678}
!920 = !{!"reload.c:hard_reg_set_here_p"}
!921 = !{!"branch_weights", i32 11043075, i32 -2113573815, i32 1694089648, i32 1894421841}
!922 = !{!"branch_weights", i32 46503450, i32 3981470, i32 1018507140}
!923 = !{!"branch_weights", i32 1856, i32 29355}
!924 = !{!"branch_weights", i32 96, i32 1761}
!925 = !{!"branch_weights", i32 32609, i32 15859}
!926 = !{!"branch_weights", i32 32514, i32 96}
!927 = distinct !{!927, !336}
!928 = !{!"function_entry_count", i64 44}
!929 = !{!"reload.c:can_reload_into"}
!930 = !{!"branch_weights", i32 18, i32 532, i32 324}
!931 = !{i64 0, i64 240, !300, i64 240, i64 240, !300, i64 480, i64 240, !300, i64 720, i64 120, !300, i64 840, i64 120, !300, i64 960, i64 112, !300, i64 1072, i64 14, !300, i64 1086, i64 1, !300, i64 1087, i64 1, !300, i64 1088, i64 1, !300, i64 1089, i64 30, !300, i64 1120, i64 8, !301}
!932 = !{!"reload.c:recog_memoized"}
!933 = !{!"function_entry_count", i64 43}
!934 = !{!"branch_weights", i32 175, i32 1}
!935 = !{!"branch_weights", i32 44, i32 138}
!936 = !{!"branch_weights", i32 175, i32 549}
!937 = distinct !{!937, !336}
!938 = !{!"function_entry_count", i64 2539212}
!939 = !{!"branch_weights", i32 1, i32 1217127}
!940 = !{!"branch_weights", i32 1254365358, i32 -1407658023, i32 4534802}
!941 = !{!"branch_weights", i32 1446, i32 1}
!942 = !{!"branch_weights", i32 1245076844, i32 -1448390313, i32 39451155}
!943 = !{!"branch_weights", i32 8806, i32 1}
!944 = !{!"branch_weights", i32 1446, i32 642750}
!945 = !{!"branch_weights", i32 786, i32 661}
!946 = !{!"branch_weights", i32 8542, i32 634869}
!947 = !{!"branch_weights", i32 3648, i32 4895}
!948 = !{!"branch_weights", i32 10271, i32 -1973985987}
!949 = !{!"branch_weights", i32 1217127, i32 104959}
!950 = !{!"branch_weights", i32 -1973985987, i32 3423, i32 3423, i32 3423}
!951 = !{!"branch_weights", i32 357500, i32 324825}
!952 = !{!"branch_weights", i32 357500, i32 1}
!953 = !{!"branch_weights", i32 179734, i32 177767}
!954 = !{!"branch_weights", i32 12007, i32 167728}
!955 = !{!"branch_weights", i32 179734, i32 1}
!956 = !{!"branch_weights", i32 357500, i32 1, i32 1, i32 1, i32 1, i32 1}
!957 = !{!"branch_weights", i32 1, i32 357443}
!958 = !{!"branch_weights", i32 1, i32 1, i32 265, i32 534952, i32 179734, i32 1}
!959 = !{!"branch_weights", i32 265, i32 1}
!960 = !{!"branch_weights", i32 -2059703774, i32 238196, i32 4178}
!961 = distinct !{!961, !336}
!962 = !{!"branch_weights", i32 357506, i32 357443}
!963 = distinct !{!963, !336}
!964 = !{!"function_entry_count", i64 1903}
!965 = !{!"function_entry_count", i64 2983}
!966 = !{!"reload.c:decompose"}
!967 = !{!"branch_weights", i32 1, i32 1, i32 2984, i32 1, i32 1}
!968 = !{!"branch_weights", i32 5969, i32 8904256}
!969 = !{!"function_entry_count", i64 4061}
!970 = !{!"reload.c:immune_p"}
!971 = !{!972, !275, i64 0}
!972 = !{!"decomposition", !275, i64 0, !275, i64 4, !278, i64 8, !286, i64 16, !286, i64 24}
!973 = !{!"branch_weights", i32 1, i32 4062}
!974 = !{!972, !286, i64 16}
!975 = !{!972, !286, i64 24}
!976 = !{!972, !275, i64 4}
!977 = !{i64 0, i64 8, !301, i64 8, i64 8, !445, i64 16, i64 8, !445}
!978 = !{i64 0, i64 8, !445, i64 8, i64 8, !445}
!979 = !{i64 0, i64 8, !445}
!980 = !{!972, !278, i64 8}
!981 = !{!"function_entry_count", i64 2692010}
!982 = !{!"branch_weights", i32 -601630083, i32 1371}
!983 = !{!"branch_weights", i32 2459629, i32 1}
!984 = !{!"branch_weights", i32 2692011, i32 1}
!985 = !{!"branch_weights", i32 2459629, i32 232383}
!986 = !{!"branch_weights", i32 1405863, i32 1053767}
!987 = !{!"branch_weights", i32 1300409, i32 105455}
!988 = !{!"branch_weights", i32 270573, i32 1029837}
!989 = !{!"branch_weights", i32 235925, i32 34649}
!990 = !{!"branch_weights", i32 235899, i32 27}
!991 = !{!992, !276, i64 1086}
!992 = !{!"recog_data", !276, i64 0, !276, i64 240, !276, i64 480, !276, i64 720, !276, i64 840, !276, i64 960, !276, i64 1072, !276, i64 1086, !276, i64 1087, !276, i64 1088, !276, i64 1089, !278, i64 1120}
!993 = !{!992, !276, i64 1088}
!994 = !{!"branch_weights", i32 658711535, i32 -2015209467}
!995 = !{!"branch_weights", i32 1905531, i32 1}
!996 = !{!"branch_weights", i32 1, i32 3969535}
!997 = !{!"branch_weights", i32 1, i32 1548638, i32 79, i32 135533, i32 384910, i32 705, i32 391, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!998 = !{!"branch_weights", i32 1, i32 135533}
!999 = !{!"branch_weights", i32 135533, i32 1}
!1000 = !{!"branch_weights", i32 1, i32 386004}
!1001 = !{!"branch_weights", i32 304518, i32 81487}
!1002 = !{!"branch_weights", i32 307, i32 304212}
!1003 = !{!"branch_weights", i32 1, i32 304212}
!1004 = !{!"branch_weights", i32 239232, i32 65287}
!1005 = !{!"branch_weights", i32 64981, i32 307}
!1006 = !{!"branch_weights", i32 3969535, i32 87766663}
!1007 = distinct !{!1007, !336}
!1008 = !{!"branch_weights", i32 1905531, i32 2064005}
!1009 = distinct !{!1009, !336}
!1010 = !{!"branch_weights", i32 2420821, i32 1548716}
!1011 = !{!"branch_weights", i32 -770066578, i32 152595976, i32 10300090}
!1012 = !{!"branch_weights", i32 22175, i32 122921569}
!1013 = !{!"branch_weights", i32 -1086926733, i32 1861744791, i32 16226969, i32 4385774}
!1014 = !{!"branch_weights", i32 14, i32 12082}
!1015 = !{!"branch_weights", i32 9532, i32 2551}
!1016 = !{!"branch_weights", i32 1, i32 2551}
!1017 = !{!"branch_weights", i32 1, i32 2391159}
!1018 = !{!"branch_weights", i32 1843580, i32 547580}
!1019 = !{!"branch_weights", i32 1840617, i32 2964}
!1020 = !{!"branch_weights", i32 1, i32 2964}
!1021 = !{!"branch_weights", i32 1515811, i32 327770}
!1022 = !{!"branch_weights", i32 20485, i32 -937680643}
!1023 = !{!"branch_weights", i32 1843564, i32 2125973}
!1024 = !{!"branch_weights", i32 327770, i32 1515795}
!1025 = distinct !{!1025, !336}
!1026 = !{!"branch_weights", i32 2138862304, i32 8621344}
!1027 = !{!"branch_weights", i32 1542885, i32 354999}
!1028 = !{!"branch_weights", i32 1356487, i32 186399}
!1029 = !{!"branch_weights", i32 202777, i32 1}
!1030 = !{!"branch_weights", i32 1, i32 4293313}
!1031 = !{!"branch_weights", i32 4293312, i32 1}
!1032 = distinct !{!1032, !336}
!1033 = !{!"branch_weights", i32 1, i32 8967873}
!1034 = !{!"branch_weights", i32 33361, i32 8934512}
!1035 = !{!"branch_weights", i32 33361, i32 1}
!1036 = !{!"branch_weights", i32 24274, i32 9088}
!1037 = !{!"branch_weights", i32 1, i32 24274}
!1038 = !{!"branch_weights", i32 66723, i32 1112956321}
!1039 = !{!"branch_weights", i32 33361, i32 33362, i32 1112956321}
!1040 = !{!"branch_weights", i32 9088, i32 24274}
!1041 = !{!"branch_weights", i32 9088, i32 1}
!1042 = !{!"branch_weights", i32 1841, i32 7248}
!1043 = !{!"branch_weights", i32 0, i32 33361}
!1044 = distinct !{!1044, !336}
!1045 = !{!"branch_weights", i32 -1961095249, i32 59460531, i32 266}
!1046 = !{!"branch_weights", i32 2207202, i32 969772, i32 7998102, i32 1572776, i32 79, i32 1295875, i32 159730, i32 506197, i32 20016, i32 1, i32 312226, i32 1011, i32 391, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 11087, i32 1807352, i32 1, i32 1, i32 1, i32 4363, i32 1476, i32 1, i32 4195, i32 14, i32 1, i32 6403, i32 991596, i32 275121, i32 24492, i32 62, i32 6314, i32 8413, i32 8002, i32 3423, i32 1, i32 1, i32 1086, i32 1352016, i32 3806977}
!1047 = !{!"branch_weights", i32 58345, i32 255282}
!1048 = !{!"branch_weights", i32 307, i32 58039}
!1049 = !{!"branch_weights", i32 1, i32 -1}
!1050 = !{!"branch_weights", i32 36999, i32 2147446649}
!1051 = !{!"branch_weights", i32 58345, i32 1}
!1052 = !{!"branch_weights", i32 132733, i32 122550}
!1053 = !{!"branch_weights", i32 122550, i32 1}
!1054 = !{!"branch_weights", i32 1027, i32 190051}
!1055 = !{!"branch_weights", i32 4278812, i32 -1636048714}
!1056 = !{!"branch_weights", i32 -1605629984, i32 1284003150}
!1057 = !{!"branch_weights", i32 1, i32 212275}
!1058 = !{!"branch_weights", i32 1, i32 252007}
!1059 = !{!"branch_weights", i32 212275, i32 39732}
!1060 = distinct !{!1060, !336}
!1061 = !{!"branch_weights", i32 1806756, i32 597}
!1062 = !{!"branch_weights", i32 139762137, i32 -1249777162, i32 1841953852}
!1063 = !{!"branch_weights", i32 422801, i32 239231}
!1064 = !{!"branch_weights", i32 422801, i32 1}
!1065 = !{!"branch_weights", i32 -1877297157, i32 60184163}
!1066 = !{!281, !278, i64 1008}
!1067 = !{!"branch_weights", i32 43885, i32 1}
!1068 = !{!"branch_weights", i32 4363, i32 1}
!1069 = !{!"branch_weights", i32 2114, i32 2250}
!1070 = !{!"branch_weights", i32 2114, i32 1}
!1071 = !{!"branch_weights", i32 1, i32 2114}
!1072 = !{!"branch_weights", i32 1893, i32 358}
!1073 = !{!"branch_weights", i32 892, i32 1002}
!1074 = !{!"branch_weights", i32 892, i32 1}
!1075 = !{!"branch_weights", i32 1, i32 892}
!1076 = !{!"branch_weights", i32 1438512, i32 128164}
!1077 = !{!"branch_weights", i32 358, i32 1}
!1078 = !{!"branch_weights", i32 2114, i32 1893}
!1079 = !{!"branch_weights", i32 17430625, i32 87696, i32 4175}
!1080 = !{!"branch_weights", i32 11, i32 4}
!1081 = !{!"branch_weights", i32 1, i32 11}
!1082 = !{!"branch_weights", i32 40998409, i32 6404, i32 6403}
!1083 = !{!"branch_weights", i32 356394, i32 641605}
!1084 = !{!"branch_weights", i32 356394, i32 1}
!1085 = !{!"branch_weights", i32 -2086155292, i32 -38642141, i32 23499}
!1086 = !{!"branch_weights", i32 30747, i32 19955}
!1087 = !{!"branch_weights", i32 5044, i32 25704}
!1088 = !{!"branch_weights", i32 1352012, i32 5}
!1089 = !{!"branch_weights", i32 -742017340, i32 8611420, i32 2634}
!1090 = !{!"branch_weights", i32 2559, i32 -842688435}
!1091 = !{!"branch_weights", i32 530208, i32 818537}
!1092 = !{!"branch_weights", i32 108358, i32 421851}
!1093 = !{!"branch_weights", i32 108358, i32 1}
!1094 = !{!"branch_weights", i32 1486953, i32 720250}
!1095 = !{!"branch_weights", i32 1486953, i32 1}
!1096 = !{!"branch_weights", i32 1, i32 5879241}
!1097 = !{!"branch_weights", i32 3010241, i32 2869001}
!1098 = !{!"branch_weights", i32 822975, i32 2187267}
!1099 = !{!"branch_weights", i32 2314, i32 2147481334}
!1100 = distinct !{!1100, !336}
!1101 = !{!"branch_weights", i32 3088633, i32 5879241}
!1102 = !{!"branch_weights", i32 -1950534862, i32 -692185283}
!1103 = !{!"branch_weights", i32 -1576004319, i32 80250196}
!1104 = !{!"branch_weights", i32 1918749, i32 1515098}
!1105 = !{!"branch_weights", i32 1405890, i32 2027957}
!1106 = !{!"branch_weights", i32 767203, i32 638688}
!1107 = !{!"branch_weights", i32 766146, i32 1058}
!1108 = !{!"branch_weights", i32 -504481563, i32 170295819}
!1109 = !{!"branch_weights", i32 147641, i32 1}
!1110 = !{!"branch_weights", i32 91782015, i32 -1757042284}
!1111 = !{!"branch_weights", i32 1, i32 5152}
!1112 = !{!"branch_weights", i32 5146, i32 7}
!1113 = !{!"branch_weights", i32 2033, i32 3431814}
!1114 = !{!"branch_weights", i32 892, i32 -1233030121}
!1115 = !{!"branch_weights", i32 147641, i32 3286206}
!1116 = !{!"branch_weights", i32 1511340, i32 1774867}
!1117 = !{!"branch_weights", i32 1, i32 1774867}
!1118 = !{!"branch_weights", i32 1084851, i32 690017}
!1119 = !{!"branch_weights", i32 14, i32 1084838}
!1120 = !{!"branch_weights", i32 -145874945, i32 -1415704576, i32 4163584}
!1121 = !{!"branch_weights", i32 1282613, i32 123278}
!1122 = !{!"branch_weights", i32 2144051, i32 5152}
!1123 = !{!"branch_weights", i32 5152, i32 1}
!1124 = !{!"branch_weights", i32 1234, i32 2147482414}
!1125 = !{!"branch_weights", i32 1516485, i32 1917362}
!1126 = !{!"branch_weights", i32 1913687, i32 3676}
!1127 = !{!"branch_weights", i32 1160364, i32 753324}
!1128 = !{!"branch_weights", i32 -1529463069, i32 736081087, i32 4648}
!1129 = !{!"branch_weights", i32 -714820198, i32 6073, i32 6073, i32 6073, i32 6073, i32 36214549, i32 6074, i32 6076, i32 6076, i32 6077, i32 6078}
!1130 = !{!"branch_weights", i32 30336, i32 558674}
!1131 = !{!"branch_weights", i32 1, i32 30336}
!1132 = !{!"branch_weights", i32 4293312, i32 4674561}
!1133 = distinct !{!1133, !336}
!1134 = !{!"branch_weights", i32 8966398, i32 1476}
!1135 = !{!"branch_weights", i32 396, i32 1081}
!1136 = !{!"branch_weights", i32 396, i32 1}
!1137 = !{!"branch_weights", i32 1, i32 1081}
!1138 = !{!"branch_weights", i32 161, i32 4141}
!1139 = !{!"branch_weights", i32 4630879, i32 4315841}
!1140 = !{!"branch_weights", i32 1, i32 2159}
!1141 = !{!"branch_weights", i32 25, i32 2135}
!1142 = !{!"branch_weights", i32 9, i32 92, i32 3}
!1143 = !{!"branch_weights", i32 59049, i32 262144, i32 196608, i32 147456, i32 110592, i32 82944, i32 62208, i32 46656, i32 34992, i32 26244, i32 19683}
!1144 = !{!"branch_weights", i32 4, i32 66, i32 2}
!1145 = !{!"branch_weights", i32 1077, i32 3224}
!1146 = distinct !{!1146, !336}
!1147 = !{!"branch_weights", i32 127, i32 225}
!1148 = distinct !{!1148, !336}
!1149 = distinct !{!1149, !336}
!1150 = !{!"branch_weights", i32 863808214, i32 1283675434}
!1151 = !{!"branch_weights", i32 112877, i32 1614076}
!1152 = !{!"branch_weights", i32 1726951, i32 1}
!1153 = !{!"branch_weights", i32 -598469856, i32 -578309677}
!1154 = !{!"branch_weights", i32 1286671, i32 1}
!1155 = !{!"branch_weights", i32 -957591800, i32 42255903, i32 220835717}
!1156 = !{!"branch_weights", i32 1286671, i32 1444870}
!1157 = distinct !{!1157, !336}
!1158 = !{!"branch_weights", i32 1124920, i32 161753}
!1159 = !{!"branch_weights", i32 20077591, i32 -1044500323}
!1160 = !{!"branch_weights", i32 1125911, i32 1}
!1161 = !{!"branch_weights", i32 202777, i32 4090536}
!1162 = distinct !{!1162, !336}
!1163 = !{!"branch_weights", i32 46854, i32 155925}
!1164 = !{!"branch_weights", i32 24198, i32 22657}
!1165 = !{!992, !276, i64 1087}
!1166 = !{!"branch_weights", i32 2166, i32 22032}
!1167 = !{!"branch_weights", i32 2298127, i32 1060}
!1168 = !{!"branch_weights", i32 2166, i32 0}
!1169 = distinct !{!1169, !336}
!1170 = !{!"branch_weights", i32 2117, i32 20540}
!1171 = !{!"branch_weights", i32 2199564, i32 1038}
!1172 = !{!"branch_weights", i32 2117, i32 0}
!1173 = distinct !{!1173, !336}
!1174 = !{!"branch_weights", i32 1, i32 178581}
!1175 = !{!"branch_weights", i32 311674, i32 3657863}
!1176 = !{!"branch_weights", i32 130859, i32 180816}
!1177 = distinct !{!1177, !336}
!1178 = distinct !{!1178, !336}
!1179 = !{!"branch_weights", i32 1903482, i32 2051}
!1180 = !{!"branch_weights", i32 164, i32 1887}
!1181 = !{!"branch_weights", i32 106, i32 59}
!1182 = !{!"branch_weights", i32 48, i32 12}
!1183 = !{!"branch_weights", i32 164, i32 0}
!1184 = distinct !{!1184, !336}
!1185 = !{!"branch_weights", i32 3968134, i32 1403}
!1186 = !{!"branch_weights", i32 1, i32 1403}
!1187 = distinct !{!1187, !336}
!1188 = !{!"branch_weights", i32 214530, i32 3755007}
!1189 = !{!"branch_weights", i32 4312, i32 210219}
!1190 = !{!"branch_weights", i32 3269, i32 211262}
!1191 = !{!"branch_weights", i32 1307424889, i32 39400729}
!1192 = !{!"branch_weights", i32 6277, i32 1}
!1193 = !{!"branch_weights", i32 50175, i32 39325441}
!1194 = !{!"branch_weights", i32 1, i32 7}
!1195 = !{!"branch_weights", i32 49, i32 15}
!1196 = distinct !{!1196, !336}
!1197 = !{!"branch_weights", i32 1904130, i32 1403}
!1198 = !{!"branch_weights", i32 1402, i32 1}
!1199 = !{!"branch_weights", i32 4099, i32 1403}
!1200 = !{!"branch_weights", i32 1402, i32 4099}
!1201 = distinct !{!1201, !336}
!1202 = !{!"branch_weights", i32 33715, i32 180816}
!1203 = !{!"branch_weights", i32 147102, i32 33715}
!1204 = !{!"branch_weights", i32 147102, i32 1}
!1205 = distinct !{!1205, !336}
!1206 = !{!"branch_weights", i32 57314, i32 89789}
!1207 = !{!"branch_weights", i32 2147411898, i32 71750}
!1208 = !{!"branch_weights", i32 1, i32 147102}
!1209 = !{!299, !276, i64 18}
!1210 = !{!"branch_weights", i32 208, i32 20381696, i32 -2105737425}
!1211 = !{!"branch_weights", i32 311, i32 1}
!1212 = !{!"branch_weights", i32 33405, i32 1}
!1213 = !{!"branch_weights", i32 3657863, i32 97145}
!1214 = !{!"branch_weights", i32 3560719, i32 97145}
!1215 = !{!"branch_weights", i32 -1199576721, i32 1738}
!1216 = !{!"branch_weights", i32 1313248715, i32 11133600, i32 -1815746768, i32 -1582083126}
!1217 = distinct !{!1217, !336}
!1218 = !{!"branch_weights", i32 151719, i32 1333186}
!1219 = !{!"branch_weights", i32 716248, i32 792478}
!1220 = !{!"branch_weights", i32 -76614745, i32 1923650}
!1221 = !{!"branch_weights", i32 2144438408, i32 3045240}
!1222 = !{!"branch_weights", i32 11203, i32 -278131624}
!1223 = !{!"branch_weights", i32 1, i32 1508400}
!1224 = !{!"branch_weights", i32 1540747, i32 511574}
!1225 = !{!"branch_weights", i32 1238591687, i32 855112, i32 -1446058570}
!1226 = !{!"branch_weights", i32 6, i32 356479}
!1227 = !{!"branch_weights", i32 6, i32 1}
!1228 = !{!"branch_weights", i32 11984, i32 113, i32 672}
!1229 = distinct !{!1229, !336}
!1230 = !{!"branch_weights", i32 1, i32 6}
!1231 = !{!"branch_weights", i32 22386, i32 2147461262}
!1232 = !{!"branch_weights", i32 1, i32 97145}
!1233 = !{!"branch_weights", i32 97145, i32 1}
!1234 = !{!"branch_weights", i32 106726, i32 -1702985411}
!1235 = !{!"branch_weights", i32 31629, i32 48900497, i32 373044330, i32 -1595314364}
!1236 = distinct !{!1236, !336}
!1237 = !{!"branch_weights", i32 11743, i32 73610}
!1238 = !{!"branch_weights", i32 2785, i32 20752}
!1239 = distinct !{!1239, !336}
!1240 = !{!"branch_weights", i32 2842865, i32 1126672}
!1241 = !{!"branch_weights", i32 1, i32 1126672}
!1242 = distinct !{!1242, !336}
!1243 = !{!"branch_weights", i32 1023717293, i32 -1772731451}
!1244 = !{!296, !276, i64 33}
!1245 = !{!"branch_weights", i32 2545, i32 547583}
!1246 = !{!"branch_weights", i32 0, i32 2545}
!1247 = distinct !{!1247, !336}
!1248 = !{!"branch_weights", i32 1, i32 1905532}
!1249 = !{!"branch_weights", i32 1823370, i32 82162}
!1250 = !{!"branch_weights", i32 0, i32 1823370}
!1251 = distinct !{!1251, !336}
!1252 = !{!"branch_weights", i32 277820, i32 1545550}
!1253 = !{!"branch_weights", i32 -1044966222, i32 -943473375}
!1254 = !{!"branch_weights", i32 207495593, i32 -72961627}
!1255 = !{!"branch_weights", i32 4499, i32 1906}
!1256 = !{!"branch_weights", i32 285, i32 1622}
!1257 = !{!"branch_weights", i32 1, i32 1622}
!1258 = !{!"branch_weights", i32 133, i32 1490}
!1259 = !{!"branch_weights", i32 1, i32 1774}
!1260 = !{!"branch_weights", i32 1701, i32 74}
!1261 = !{!"branch_weights", i32 1700, i32 1}
!1262 = !{!"branch_weights", i32 524, i32 1573}
!1263 = !{!"branch_weights", i32 1700, i32 396}
!1264 = distinct !{!1264, !336}
!1265 = !{!"branch_weights", i32 0, i32 277820}
!1266 = distinct !{!1266, !336}
!1267 = !{!"branch_weights", i32 1823353, i32 18}
!1268 = !{!"branch_weights", i32 244179950, i32 -406769077}
!1269 = !{!"branch_weights", i32 285, i32 107455}
!1270 = !{!"branch_weights", i32 1006, i32 106450}
!1271 = !{!"branch_weights", i32 1609966259, i32 330476041}
!1272 = !{!"branch_weights", i32 88556, i32 1}
!1273 = !{!"branch_weights", i32 804983129, i32 -373884728}
!1274 = !{!"branch_weights", i32 18179, i32 1}
!1275 = !{!"branch_weights", i32 1238473, i32 2146245175}
!1276 = !{!"branch_weights", i32 989, i32 1}
!1277 = !{!"branch_weights", i32 58, i32 932}
!1278 = !{!"branch_weights", i32 1758, i32 1821613}
!1279 = !{!"branch_weights", i32 1823370, i32 0}
!1280 = distinct !{!1280, !336}
!1281 = distinct !{!1281, !336}
!1282 = !{!"branch_weights", i32 1713989, i32 108434, i32 932, i32 18}
!1283 = !{!"branch_weights", i32 5783, i32 102652}
!1284 = !{!"branch_weights", i32 33, i32 900}
!1285 = distinct !{!1285, !336}
!1286 = !{!"branch_weights", i32 2140842290, i32 6641358}
!1287 = !{!"branch_weights", i32 5638, i32 1}
!1288 = !{!"branch_weights", i32 18413, i32 1, i32 1, i32 1}
!1289 = distinct !{!1289, !336}
!1290 = !{!"branch_weights", i32 12775, i32 5638}
!1291 = distinct !{!1291, !336}
!1292 = !{!"branch_weights", i32 776076, i32 1047295}
!1293 = !{!"branch_weights", i32 992756, i32 54540}
!1294 = !{!"branch_weights", i32 -1703968755, i32 312143199, i32 2924, i32 169620}
!1295 = !{!"branch_weights", i32 106790, i32 1}
!1296 = !{!"branch_weights", i32 106791, i32 138968}
!1297 = !{!"branch_weights", i32 36663, i32 102306}
!1298 = !{!"branch_weights", i32 100327, i32 1980}
!1299 = !{!"branch_weights", i32 8165, i32 92163}
!1300 = !{!"branch_weights", i32 1, i32 8165}
!1301 = !{!"branch_weights", i32 8165, i32 1}
!1302 = !{!"branch_weights", i32 138968, i32 106790}
!1303 = distinct !{!1303, !336}
!1304 = distinct !{!1304, !336}
!1305 = !{!"branch_weights", i32 774376, i32 1048995}
!1306 = !{!"branch_weights", i32 413, i32 1048583}
!1307 = !{!457, !275, i64 28}
!1308 = !{!"branch_weights", i32 716595, i32 1106776}
!1309 = !{!"branch_weights", i32 1, i32 716595}
!1310 = !{!457, !275, i64 32}
!1311 = distinct !{!1311, !336}
!1312 = !{!"branch_weights", i32 885035, i32 938336}
!1313 = !{!"branch_weights", i32 839537, i32 45499}
!1314 = !{!"branch_weights", i32 776865, i32 62673}
!1315 = !{!"branch_weights", i32 567699, i32 209167}
!1316 = !{!"branch_weights", i32 1, i32 209167}
!1317 = !{!"branch_weights", i32 567699, i32 1}
!1318 = !{!"branch_weights", i32 519644, i32 48056}
!1319 = !{!"branch_weights", i32 1172, i32 518473}
!1320 = !{!"branch_weights", i32 1, i32 518473}
!1321 = !{!"branch_weights", i32 627, i32 517846}
!1322 = !{!"branch_weights", i32 1, i32 627}
!1323 = !{!"branch_weights", i32 627, i32 0}
!1324 = distinct !{!1324, !336}
!1325 = !{!"branch_weights", i32 3425064, i32 2144058584}
!1326 = distinct !{!1326, !336}
!1327 = !{!"function_entry_count", i64 115091942}
!1328 = !{!"reload.c:insn_constraint_len"}
!1329 = !{!"branch_weights", i32 2749745, i32 112342199}
!1330 = !{!"function_entry_count", i64 33998}
!1331 = !{!"reload.c:find_reloads_toplev"}
!1332 = !{!"branch_weights", i32 1108308601, i32 -1689984490, i32 1186871, i32 2050633705}
!1333 = !{!"branch_weights", i32 15363, i32 1}
!1334 = !{!"branch_weights", i32 12553, i32 2811}
!1335 = !{!"branch_weights", i32 5623, i32 7901721}
!1336 = !{!"branch_weights", i32 12095, i32 1}
!1337 = !{!"branch_weights", i32 2811, i32 9285}
!1338 = !{!"branch_weights", i32 2811, i32 1}
!1339 = !{!"branch_weights", i32 1, i32 2811}
!1340 = !{!"branch_weights", i32 1, i32 18630}
!1341 = !{!"branch_weights", i32 18631, i32 15363}
!1342 = !{!"branch_weights", i32 18631, i32 1}
!1343 = !{!"branch_weights", i32 15363, i32 18630}
!1344 = distinct !{!1344, !336}
!1345 = !{!"reload.c:skip_alternative"}
!1346 = distinct !{!1346, !336}
!1347 = !{!"function_entry_count", i64 6}
!1348 = !{!"reload.c:alternative_allows_const_pool_ref"}
!1349 = distinct !{!1349, !336}
!1350 = distinct !{!1350, !336}
!1351 = !{!"branch_weights", i32 15, i32 49}
!1352 = distinct !{!1352, !336}
!1353 = !{!"function_entry_count", i64 2544}
!1354 = !{!"reload.c:dup_replacements"}
!1355 = !{!"branch_weights", i32 2544, i32 1}
!1356 = !{!"branch_weights", i32 1391, i32 4691}
!1357 = !{!"branch_weights", i32 2544, i32 3537}
!1358 = distinct !{!1358, !336}
!1359 = !{!"function_entry_count", i64 1904129}
!1360 = !{!"reload.c:combine_reloads"}
!1361 = !{!"branch_weights", i32 1821425, i32 82458}
!1362 = !{!"branch_weights", i32 993896, i32 827530}
!1363 = !{!"branch_weights", i32 248, i32 827283}
!1364 = !{!"branch_weights", i32 1821425, i32 0}
!1365 = distinct !{!1365, !336}
!1366 = !{!"branch_weights", i32 1172392261, i32 975091387}
!1367 = !{!"branch_weights", i32 89396, i32 737641}
!1368 = !{!"branch_weights", i32 56881, i32 32516}
!1369 = !{!"branch_weights", i32 56881, i32 1}
!1370 = !{!"branch_weights", i32 56863, i32 1}
!1371 = !{!"branch_weights", i32 2147483613, i32 35}
!1372 = !{!"branch_weights", i32 578487, i32 -587009847}
!1373 = !{!"branch_weights", i32 56863, i32 64940}
!1374 = distinct !{!1374, !336}
!1375 = !{!"branch_weights", i32 56793, i32 64885}
!1376 = !{!"branch_weights", i32 329277291, i32 848533381}
!1377 = !{!"branch_weights", i32 -1379865550, i32 160709, i32 160700, i32 160691}
!1378 = !{!"branch_weights", i32 25, i32 18117}
!1379 = !{!"branch_weights", i32 36259, i32 25}
!1380 = !{!"branch_weights", i32 18120, i32 1}
!1381 = !{!"branch_weights", i32 1, i32 18120}
!1382 = !{!"branch_weights", i32 3565, i32 11355}
!1383 = !{!"branch_weights", i32 1, i32 11355}
!1384 = !{!"branch_weights", i32 11355, i32 1}
!1385 = !{!"branch_weights", i32 3565, i32 1}
!1386 = !{!"branch_weights", i32 255134, i32 12208036}
!1387 = !{!"branch_weights", i32 72, i32 1}
!1388 = !{!"branch_weights", i32 1, i32 72}
!1389 = !{!"branch_weights", i32 69, i32 3}
!1390 = !{!"branch_weights", i32 27, i32 43}
!1391 = !{!"branch_weights", i32 69, i32 0}
!1392 = distinct !{!1392, !336}
!1393 = !{!"branch_weights", i32 64885, i32 56792}
!1394 = distinct !{!1394, !336}
!1395 = !{!"branch_weights", i32 1, i32 56793}
!1396 = !{!"branch_weights", i32 56657, i32 1}
!1397 = !{!"branch_weights", i32 -518004447, i32 8358288, i32 61457}
!1398 = !{!"branch_weights", i32 56657, i32 4935}
!1399 = distinct !{!1399, !336}
!1400 = !{!"branch_weights", i32 22614, i32 23644}
!1401 = !{!"branch_weights", i32 14631, i32 9014}
!1402 = !{!"branch_weights", i32 14631, i32 1}
!1403 = !{!"branch_weights", i32 12905, i32 1727}
!1404 = !{!"branch_weights", i32 12905, i32 1}
!1405 = !{!"branch_weights", i32 2319, i32 10587}
!1406 = !{!"branch_weights", i32 180, i32 10408}
!1407 = !{!"branch_weights", i32 8, i32 10401}
!1408 = !{!"branch_weights", i32 10401, i32 1}
!1409 = !{!"branch_weights", i32 1, i32 10401}
!1410 = !{!"branch_weights", i32 23644, i32 0}
!1411 = distinct !{!1411, !336}
!1412 = !{!"function_entry_count", i64 1390}
!1413 = !{!"reload.c:push_replacement"}
!1414 = !{!"branch_weights", i32 1, i32 1391}
!1415 = !{!"function_entry_count", i64 547769}
!1416 = !{!"branch_weights", i32 547769, i32 1}
!1417 = !{!"branch_weights", i32 533321, i32 111866}
!1418 = !{!"branch_weights", i32 1, i32 111866}
!1419 = !{!"branch_weights", i32 111716, i32 151}
!1420 = !{!"branch_weights", i32 1, i32 151}
!1421 = !{!"branch_weights", i32 111731, i32 136}
!1422 = !{!"branch_weights", i32 1, i32 136}
!1423 = !{!"branch_weights", i32 1, i32 533321}
!1424 = !{!"branch_weights", i32 97417, i32 547769}
!1425 = distinct !{!1425, !336}
!1426 = !{!"function_entry_count", i64 299}
!1427 = !{!"branch_weights", i32 1, i32 300}
!1428 = !{!"reload.c:copy_replacements_1"}
!1429 = distinct !{!1429, !336}
!1430 = distinct !{!1430, !336}
!1431 = distinct !{!1431, !336}
!1432 = distinct !{!1432, !336}
!1433 = !{!"function_entry_count", i64 2112}
!1434 = !{!"branch_weights", i32 2112, i32 1}
!1435 = !{!"branch_weights", i32 2077, i32 2135}
!1436 = !{!"branch_weights", i32 1, i32 2135}
!1437 = !{!"branch_weights", i32 2099, i32 2112}
!1438 = distinct !{!1438, !336}
!1439 = !{!"branch_weights", i32 -1936453072, i32 1117249, i32 1116720, i32 1116192}
!1440 = !{!"function_entry_count", i64 41049}
!1441 = !{!"reload.c:refers_to_mem_for_reload_p"}
!1442 = !{!"branch_weights", i32 726694656, i32 42780740, i32 871825686}
!1443 = !{!"branch_weights", i32 14503, i32 7304}
!1444 = !{!"branch_weights", i32 1, i32 16364}
!1445 = !{!"branch_weights", i32 19306, i32 9203}
!1446 = !{!"branch_weights", i32 1, i32 19306}
!1447 = !{!"branch_weights", i32 17495, i32 1812}
!1448 = !{!"branch_weights", i32 12144, i32 16364}
!1449 = distinct !{!1449, !336}
!1450 = !{!296, !278, i64 0}
!1451 = distinct !{!1451, !336}
