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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.decomposition = type { i32, i32, ptr, i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !90 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !91
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !90 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !91
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !90 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !101

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !95
  %11 = load i8, ptr %3, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !90 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !91
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !90 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !90 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !90 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !101

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !103
  store i8 %12, ptr %4, align 1, !tbaa !102
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !90 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !90 {
  %2 = load i32, ptr %0, align 8, !tbaa !105
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !90 {
  %2 = load i32, ptr %0, align 8, !tbaa !105
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !90 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !90 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !90 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
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
  br i1 %23, label %7, label %24, !llvm.loop !107

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !90 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local i32 @secondary_reload_class(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !90 {
  %5 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #24
  store i32 2956, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.secondary_reload_info, ptr %5, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !112
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !113
  %8 = call i32 %7(i8 noundef zeroext %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #24
  %9 = load i32, ptr %5, align 8, !tbaa !110
  %10 = icmp eq i32 %9, 2956
  %11 = icmp ne i32 %8, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = call i32 @scratch_reload_class(i32 noundef %9)
  br label %15

15:                                               ; preds = %4, %13
  %16 = phi i32 [ %14, %13 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #24
  ret i32 %16
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @scratch_reload_class(i32 noundef %0) local_unnamed_addr #9 !prof !90 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 4
  %4 = load i8, ptr %3, align 8, !tbaa !125
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 554, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.insn_operand_data, ptr %9, i64 2, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = load i8, ptr %11, align 1, !tbaa !102
  %13 = icmp eq i8 %12, 61
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 556, ptr noundef nonnull @.str.1) #24
  br label %15

15:                                               ; preds = %7, %14
  %16 = getelementptr inbounds i8, ptr %11, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !102
  %18 = icmp eq i8 %17, 38
  %19 = getelementptr inbounds i8, ptr %11, i64 2
  %20 = select i1 %18, ptr %19, ptr %16
  %21 = load i8, ptr %20, align 1, !tbaa !102
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
  %29 = phi i32 [ 13, %15 ], [ %25, %23 ], [ %25, %27 ]
  ret i32 %29
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_secondary_mem(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !90 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !102
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !102
  switch i8 %12, label %16 [
    i8 2, label %13
    i8 3, label %13
    i8 10, label %13
    i8 12, label %13
  ]

13:                                               ; preds = %10, %10, %10, %10
  %14 = zext i8 %12 to i32
  %15 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef %14, i32 noundef 0) #24
  br label %16

16:                                               ; preds = %4, %10, %13
  %17 = phi i32 [ %15, %13 ], [ %1, %10 ], [ %1, %4 ]
  %18 = sext i32 %17 to i64
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %70

23:                                               ; preds = %16
  %24 = getelementptr inbounds [87 x ptr], ptr @secondary_memlocs, i64 0, i64 %18
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = zext i32 %17 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !102
  %31 = zext i8 %30 to i64
  %32 = tail call ptr @assign_stack_local(i32 noundef %17, i64 noundef %31, i32 noundef 0) #24
  store ptr %32, ptr %24, align 8, !tbaa !91
  br label %33

33:                                               ; preds = %27, %23
  %34 = load ptr, ptr %24, align 8, !tbaa !91
  %35 = tail call ptr @eliminate_regs(ptr noundef %34, i32 noundef 0, ptr noundef null) #24
  store ptr %35, ptr %5, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  %38 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 5
  %43 = load i8, ptr %42, align 8, !tbaa !130
  br label %44

44:                                               ; preds = %33, %41
  %45 = phi i8 [ %43, %41 ], [ 0, %33 ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %47 = tail call zeroext i8 %46(i32 noundef %17, ptr noundef %37, i8 noundef zeroext 1, i8 noundef zeroext %45) #24
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load ptr, ptr %5, align 8, !tbaa !91
  %51 = load ptr, ptr %24, align 8, !tbaa !91
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call ptr @copy_rtx(ptr noundef %50) #24
  store ptr %54, ptr %5, align 8, !tbaa !91
  br label %55

55:                                               ; preds = %49, %53
  %56 = icmp eq i32 %3, 0
  %57 = icmp eq i32 %3, 1
  %58 = select i1 %57, i32 5, i32 9
  %59 = select i1 %56, i32 3, i32 %58
  %60 = load ptr, ptr %5, align 8, !tbaa !91
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !102
  %63 = call fastcc i32 @find_reloads_address(i32 noundef %17, ptr noundef nonnull %5, ptr noundef %62, ptr noundef nonnull %61, i32 noundef %2, i32 noundef %59, i32 noundef 0, ptr noundef null)
  br label %64

64:                                               ; preds = %44, %55
  %65 = load ptr, ptr %5, align 8, !tbaa !91
  store ptr %65, ptr %20, align 8, !tbaa !91
  %66 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !106
  %67 = icmp sgt i32 %66, %17
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = add nsw i32 %17, 1
  store i32 %69, ptr @secondary_memlocs_elim_used, align 4, !tbaa !106
  br label %70

70:                                               ; preds = %64, %68, %16
  %71 = phi ptr [ %21, %16 ], [ %65, %68 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret ptr %71
}

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @assign_stack_local(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @eliminate_regs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @strict_memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #10 !prof !133 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %5 = tail call zeroext i8 %4(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %2) #24, !prof !134
  %6 = zext i8 %5 to i32
  ret i32 %6
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef i32 @find_reloads_address(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #10 !prof !135 !PGOFuncName !136 {
  %9 = alloca ptr, align 8
  %10 = icmp ne ptr %1, null
  br i1 %10, label %11, label %19, !prof !137

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !138

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !130
  br label %19

19:                                               ; preds = %8, %16, %11
  %20 = phi i8 [ %18, %16 ], [ 0, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  %21 = load i32, ptr %2, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %229, !prof !139

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !102
  %27 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32, !prof !140

32:                                               ; preds = %24
  %33 = lshr i32 %21, 16
  %34 = and i32 %33, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %30, ptr noundef %3, i32 noundef 13, i32 noundef %34, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  br label %563

35:                                               ; preds = %24
  %36 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %37 = getelementptr inbounds ptr, ptr %36, i64 %28
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  store ptr %38, ptr %9, align 8, !tbaa !91
  %39 = icmp eq ptr %38, null
  br i1 %39, label %132, label %40, !prof !140

40:                                               ; preds = %35
  %41 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %42 = getelementptr inbounds ptr, ptr %41, i64 %28
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  %44 = icmp ne ptr %43, null
  %45 = load i32, ptr @num_not_at_initial_offset, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %223

48:                                               ; preds = %40
  %49 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %2, i32 noundef %26)
  store ptr %49, ptr %9, align 8, !tbaa !91
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !102
  %55 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !102
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 5
  %60 = load i8, ptr %59, align 8, !tbaa !130
  br label %61

61:                                               ; preds = %48, %58
  %62 = phi i8 [ %60, %58 ], [ 0, %48 ]
  %63 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %64 = tail call zeroext i8 %63(i32 noundef %52, ptr noundef %54, i8 noundef zeroext 1, i8 noundef zeroext %62) #24
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load ptr, ptr %9, align 8, !tbaa !91
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !102
  %73 = icmp eq i32 %5, 3
  %74 = icmp eq i32 %5, 5
  %75 = select i1 %74, i32 6, i32 %5
  %76 = select i1 %73, i32 4, i32 %75
  %77 = call fastcc i32 @find_reloads_address(i32 noundef %70, ptr noundef nonnull %9, ptr noundef %72, ptr noundef nonnull %71, i32 noundef %4, i32 noundef %76, i32 noundef %6, ptr noundef %7)
  %78 = load ptr, ptr %9, align 8, !tbaa !91
  %79 = call i32 @rtx_equal_p(ptr noundef %78, ptr noundef nonnull %67) #24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load ptr, ptr %9, align 8, !tbaa !91
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %26, ptr noundef %82)
  br label %83

83:                                               ; preds = %66, %81, %61
  %84 = icmp sgt i32 %6, 0
  br i1 %84, label %85, label %130

85:                                               ; preds = %83
  %86 = load ptr, ptr %9, align 8, !tbaa !91
  %87 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %88 = call zeroext i8 %87(i32 noundef %0, ptr noundef %86, i8 noundef zeroext 1, i8 noundef zeroext %20) #24
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %130, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %9, align 8, !tbaa !91
  %92 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !102
  %94 = load i32, ptr %93, align 8
  %95 = trunc i32 %94 to i16
  switch i16 %95, label %130 [
    i16 37, label %111
    i16 49, label %96
  ]

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !102
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 37
  br i1 %101, label %102, label %130

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !102
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !106
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %111, label %130

111:                                              ; preds = %90, %102
  %112 = load i32, ptr @replace_reloads, align 4, !tbaa !106
  %113 = icmp ne i32 %112, 0
  %114 = load i32, ptr @num_not_at_initial_offset, align 4
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %563

117:                                              ; preds = %111
  %118 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %119 = getelementptr inbounds ptr, ptr %118, i64 %28
  %120 = load ptr, ptr %119, align 8, !tbaa !91
  %121 = call i32 @rtx_equal_p(ptr noundef %91, ptr noundef %120) #24
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %563

123:                                              ; preds = %117
  %124 = load ptr, ptr %9, align 8, !tbaa !91
  store ptr %124, ptr %3, align 8, !tbaa !91
  %125 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %2) #24
  %126 = call ptr @emit_insn_before(ptr noundef %125, ptr noundef %7) #24
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, -16711681
  %129 = or disjoint i32 %128, 917504
  store i32 %129, ptr %126, align 8
  br label %563

130:                                              ; preds = %102, %90, %96, %85, %83
  %131 = load ptr, ptr %9, align 8, !tbaa !91
  br label %223

132:                                              ; preds = %35
  %133 = icmp slt i32 %26, 53
  br i1 %133, label %134, label %223, !prof !140

134:                                              ; preds = %132
  %135 = icmp ugt i32 %26, 52
  br i1 %135, label %136, label %144, !prof !141

136:                                              ; preds = %134
  %137 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %138 = zext i32 %26 to i64
  %139 = getelementptr inbounds i16, ptr %137, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !142
  %141 = sext i16 %140 to i32
  %142 = icmp slt i16 %140, 0
  %143 = select i1 %142, i32 %26, i32 %141
  br label %144

144:                                              ; preds = %136, %134
  %145 = phi i32 [ %26, %134 ], [ %143, %136 ]
  %146 = icmp ult i32 %145, 8
  br i1 %146, label %164, label %147, !prof !140

147:                                              ; preds = %144
  %148 = zext i32 %145 to i64
  %149 = add nsw i64 %148, -37
  %150 = icmp ult i64 %149, 8
  %151 = and i32 %145, -5
  %152 = icmp eq i32 %151, 16
  %153 = or i1 %152, %150
  br i1 %153, label %164, label %154

154:                                              ; preds = %147
  %155 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %156 = getelementptr inbounds i16, ptr %155, i64 %148
  %157 = load i16, ptr %156, align 2, !tbaa !142
  %158 = icmp ult i16 %157, 8
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = sext i16 %157 to i64
  %161 = and i64 %160, 4294967295
  %162 = add nsw i64 %161, -45
  %163 = icmp ult i64 %162, -8
  br i1 %163, label %223, label %164, !prof !141

164:                                              ; preds = %147, %144, %154, %159
  %165 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %166 = icmp ult i32 %26, 53
  br i1 %166, label %168, label %167, !prof !140

167:                                              ; preds = %164
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7261, ptr noundef nonnull @.str.1) #24
  br label %168

168:                                              ; preds = %167, %164
  %169 = zext i32 %26 to i64
  %170 = zext i32 %0 to i64
  %171 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %169, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !102
  %173 = zext i8 %172 to i32
  %174 = add i32 %26, %173
  %175 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !102
  %177 = load i32, ptr %176, align 8
  %178 = and i32 %177, 65535
  %179 = trunc i32 %177 to i16
  switch i16 %179, label %563 [
    i16 25, label %180
    i16 15, label %194
  ], !prof !143

180:                                              ; preds = %168
  %181 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !102
  %183 = load i32, ptr %182, align 8
  %184 = and i32 %183, 65535
  %185 = icmp eq i32 %184, 37
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.rtx_def, ptr %182, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !102
  %189 = icmp ult i32 %188, %26
  %190 = icmp uge i32 %188, %174
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %563, label %223, !prof !140

192:                                              ; preds = %180
  %193 = icmp eq i32 %178, 15
  br i1 %193, label %194, label %563, !prof !141

194:                                              ; preds = %168, %192
  %195 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !102
  %197 = load i32, ptr %196, align 8, !tbaa !144
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %563, label %199

199:                                              ; preds = %194
  %200 = zext nneg i32 %197 to i64
  br label %201

201:                                              ; preds = %221, %199
  %202 = phi i64 [ %200, %199 ], [ %203, %221 ]
  %203 = add nsw i64 %202, -1
  %204 = getelementptr inbounds %struct.rtvec_def, ptr %196, i64 0, i32 1, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !91
  %206 = load i32, ptr %205, align 8
  %207 = and i32 %206, 65535
  %208 = icmp eq i32 %207, 25
  br i1 %208, label %209, label %221

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.rtx_def, ptr %205, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !102
  %212 = load i32, ptr %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 37
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !102
  %218 = icmp uge i32 %217, %26
  %219 = icmp ult i32 %217, %174
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %223, label %221

221:                                              ; preds = %215, %209, %201
  %222 = icmp slt i64 %202, 2
  br i1 %222, label %563, label %201, !llvm.loop !146

223:                                              ; preds = %215, %132, %159, %186, %130, %40
  %224 = phi ptr [ %131, %130 ], [ %2, %40 ], [ %2, %186 ], [ %2, %159 ], [ %2, %132 ], [ %2, %215 ]
  %225 = load i32, ptr %224, align 8
  %226 = lshr i32 %225, 16
  %227 = and i32 %226, 255
  %228 = call i32 @push_reload(ptr noundef nonnull %224, ptr noundef null, ptr noundef %3, ptr noundef null, i32 noundef 13, i32 noundef %227, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5)
  br label %563

229:                                              ; preds = %19
  %230 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %231 = tail call zeroext i8 %230(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 1, i8 noundef zeroext %20) #24, !prof !147
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %264, label %233, !prof !148

233:                                              ; preds = %229
  %234 = load i32, ptr %2, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 49
  br i1 %236, label %237, label %257, !prof !149

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !102
  %240 = load i32, ptr %239, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 30
  br i1 %242, label %243, label %257, !prof !150

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !102
  %246 = load i32, ptr %245, align 8
  %247 = and i32 %246, 65535
  %248 = icmp eq i32 %247, 37
  br i1 %248, label %249, label %257, !prof !151

249:                                              ; preds = %243
  %250 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %251 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !102
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds ptr, ptr %250, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !91
  %256 = icmp eq ptr %255, null
  br i1 %256, label %563, label %257, !prof !152

257:                                              ; preds = %249, %243, %237, %233
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %258 = tail call fastcc ptr @subst_reg_equivs(ptr noundef nonnull %2, ptr noundef %7)
  store ptr %258, ptr %3, align 8, !tbaa !91
  %259 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %259, label %260, label %563, !prof !153

260:                                              ; preds = %257
  %261 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %262 = tail call zeroext i8 %261(i32 noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 1, i8 noundef zeroext %20) #24
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %563

264:                                              ; preds = %260, %229
  %265 = load i32, ptr %2, align 8
  %266 = and i32 %265, 65535
  %267 = icmp ne i32 %266, 61
  br i1 %267, label %271, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !91
  br label %271

271:                                              ; preds = %268, %264
  %272 = phi ptr [ %269, %268 ], [ %3, %264 ]
  %273 = phi ptr [ %270, %268 ], [ %2, %264 ]
  %274 = load i32, ptr %273, align 8
  %275 = trunc i32 %274 to i16
  switch i16 %275, label %373 [
    i16 43, label %276
    i16 49, label %338
  ]

276:                                              ; preds = %271
  store ptr %273, ptr %9, align 8, !tbaa !91
  %277 = load i32, ptr %273, align 8
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 255
  %280 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !102
  %282 = icmp eq i32 %5, 3
  %283 = icmp eq i32 %5, 5
  %284 = select i1 %283, i32 6, i32 %5
  %285 = select i1 %282, i32 4, i32 %284
  %286 = icmp eq i32 %6, 0
  %287 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 1)
  %288 = call fastcc i32 @find_reloads_address(i32 noundef %279, ptr noundef nonnull %9, ptr noundef %281, ptr noundef nonnull %280, i32 noundef %4, i32 noundef %285, i32 noundef %287, ptr noundef %7)
  %289 = load ptr, ptr %9, align 8, !tbaa !91
  %290 = icmp ne ptr %289, %273
  %291 = and i1 %10, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %276
  %293 = load ptr, ptr %1, align 8, !tbaa !91
  %294 = call ptr @copy_rtx(ptr noundef %293) #24
  store ptr %294, ptr %1, align 8, !tbaa !91
  %295 = load ptr, ptr %9, align 8, !tbaa !91
  %296 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !102
  call void @copy_replacements(ptr noundef %295, ptr noundef %297)
  %298 = load ptr, ptr %1, align 8, !tbaa !91
  %299 = getelementptr inbounds %struct.rtx_def, ptr %298, i64 0, i32 1
  br i1 %267, label %303, label %300

300:                                              ; preds = %292
  %301 = load ptr, ptr %299, align 8, !tbaa !91
  %302 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1
  br label %303

303:                                              ; preds = %292, %300, %276
  %304 = phi ptr [ %302, %300 ], [ %299, %292 ], [ %272, %276 ]
  br i1 %286, label %331, label %305

305:                                              ; preds = %303
  %306 = load ptr, ptr %9, align 8, !tbaa !91
  %307 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !102
  %309 = load i32, ptr %308, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 45
  %312 = load i8, ptr @indirect_symref_ok, align 1
  %313 = icmp eq i8 %312, 0
  %314 = select i1 %311, i1 %313, i1 false
  %315 = icmp eq i32 %310, 43
  %316 = or i1 %315, %314
  br i1 %316, label %331, label %317

317:                                              ; preds = %305
  %318 = trunc i32 %309 to i16
  switch i16 %318, label %331 [
    i16 37, label %563
    i16 49, label %319
  ]

319:                                              ; preds = %317
  %320 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !102
  %322 = load i32, ptr %321, align 8
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 37
  br i1 %324, label %325, label %331

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.rtx_def, ptr %308, i64 0, i32 1, i32 0, i32 0, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !102
  %328 = load i32, ptr %327, align 8
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 30
  br i1 %330, label %563, label %331

331:                                              ; preds = %325, %317, %305, %319, %303
  %332 = load ptr, ptr %9, align 8, !tbaa !91
  %333 = load i32, ptr %332, align 8
  %334 = lshr i32 %333, 16
  %335 = and i32 %334, 255
  %336 = call i32 @push_reload(ptr noundef nonnull %332, ptr noundef null, ptr noundef %304, ptr noundef null, i32 noundef 13, i32 noundef %335, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5)
  %337 = zext i1 %267 to i32
  br label %563

338:                                              ; preds = %271
  %339 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !102
  %341 = load i32, ptr %340, align 8
  %342 = and i32 %341, 65535
  %343 = icmp eq i32 %342, 37
  br i1 %343, label %344, label %373

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.rtx_def, ptr %340, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !102
  %347 = icmp ult i32 %346, 53
  br i1 %347, label %348, label %373

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !102
  %351 = load i32, ptr %350, align 8
  %352 = and i32 %351, 65535
  %353 = icmp eq i32 %352, 30
  br i1 %353, label %354, label %373

354:                                              ; preds = %348
  %355 = icmp ult i32 %346, 8
  br i1 %355, label %374, label %356

356:                                              ; preds = %354
  %357 = zext nneg i32 %346 to i64
  %358 = add nsw i64 %357, -37
  %359 = icmp ult i64 %358, 8
  %360 = and i32 %346, 59
  %361 = icmp eq i32 %360, 16
  %362 = or i1 %361, %359
  br i1 %362, label %374, label %363

363:                                              ; preds = %356
  %364 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %365 = getelementptr inbounds i16, ptr %364, i64 %357
  %366 = load i16, ptr %365, align 2, !tbaa !142
  %367 = icmp ult i16 %366, 8
  br i1 %367, label %374, label %368

368:                                              ; preds = %363
  %369 = sext i16 %366 to i64
  %370 = and i64 %369, 4294967295
  %371 = add nsw i64 %370, -45
  %372 = icmp ult i64 %371, -8
  br i1 %372, label %373, label %374

373:                                              ; preds = %271, %338, %344, %348, %368
  br label %398

374:                                              ; preds = %356, %354, %363, %368
  br i1 %10, label %375, label %382

375:                                              ; preds = %374
  %376 = load ptr, ptr %1, align 8, !tbaa !91
  %377 = tail call ptr @copy_rtx(ptr noundef %376) #24
  store ptr %377, ptr %1, align 8, !tbaa !91
  %378 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1
  br i1 %267, label %382, label %379

379:                                              ; preds = %375
  %380 = load ptr, ptr %378, align 8, !tbaa !91
  %381 = getelementptr inbounds %struct.rtx_def, ptr %380, i64 0, i32 1
  br label %382

382:                                              ; preds = %375, %379, %374
  %383 = phi ptr [ %381, %379 ], [ %378, %375 ], [ %272, %374 ]
  %384 = load i8, ptr @double_reg_address_ok, align 1, !tbaa !102
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %382
  %387 = tail call ptr @copy_rtx(ptr noundef nonnull %273) #24
  store ptr %387, ptr %383, align 8, !tbaa !91
  %388 = getelementptr inbounds %struct.rtx_def, ptr %387, i64 0, i32 1, i32 0, i32 0, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !102
  %390 = load i32, ptr %387, align 8
  %391 = lshr i32 %390, 16
  %392 = and i32 %391, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef %389, ptr noundef nonnull %388, i32 noundef 11, i32 noundef %392, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  br label %563

393:                                              ; preds = %382
  %394 = load i32, ptr %273, align 8
  %395 = lshr i32 %394, 16
  %396 = and i32 %395, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %273, ptr noundef %383, i32 noundef 13, i32 noundef %396, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %397 = zext i1 %267 to i32
  br label %563

398:                                              ; preds = %373, %500
  %399 = phi i64 [ %501, %500 ], [ 0, %373 ]
  %400 = phi ptr [ %499, %500 ], [ %273, %373 ]
  %401 = load i32, ptr %400, align 8
  %402 = and i32 %401, 65535
  %403 = icmp eq i32 %402, 49
  br i1 %403, label %404, label %497

404:                                              ; preds = %398
  %405 = getelementptr inbounds %struct.rtx_def, ptr %400, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !102
  %407 = getelementptr inbounds %struct.rtx_def, ptr %400, i64 0, i32 1, i32 0, i32 0, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !102
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 30
  br i1 %411, label %412, label %497

412:                                              ; preds = %404
  %413 = load i32, ptr %406, align 8
  %414 = trunc i32 %413 to i16
  switch i16 %414, label %497 [
    i16 122, label %415
    i16 49, label %415
  ]

415:                                              ; preds = %412, %412
  %416 = getelementptr inbounds %struct.rtx_def, ptr %406, i64 0, i32 1
  %417 = getelementptr inbounds [1 x %union.rtunion_def], ptr %416, i64 0, i64 %399
  %418 = load ptr, ptr %417, align 8, !tbaa !102
  %419 = load i32, ptr %418, align 8
  %420 = and i32 %419, 65535
  %421 = icmp eq i32 %420, 37
  br i1 %421, label %422, label %497

422:                                              ; preds = %415
  %423 = getelementptr inbounds %struct.rtx_def, ptr %418, i64 0, i32 1
  %424 = load i32, ptr %423, align 8, !tbaa !102
  %425 = icmp ugt i32 %424, 52
  br i1 %425, label %497, label %426

426:                                              ; preds = %422
  %427 = and i64 %399, 4294967295
  %428 = xor i64 %427, 1
  %429 = getelementptr inbounds [1 x %union.rtunion_def], ptr %416, i64 0, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !102
  %431 = icmp ult i32 %424, 8
  br i1 %431, label %449, label %432

432:                                              ; preds = %426
  %433 = zext nneg i32 %424 to i64
  %434 = add nsw i64 %433, -37
  %435 = icmp ult i64 %434, 8
  %436 = and i32 %424, 59
  %437 = icmp eq i32 %436, 16
  %438 = or i1 %437, %435
  br i1 %438, label %449, label %439

439:                                              ; preds = %432
  %440 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %441 = getelementptr inbounds i16, ptr %440, i64 %433
  %442 = load i16, ptr %441, align 2, !tbaa !142
  %443 = icmp ult i16 %442, 8
  br i1 %443, label %449, label %444

444:                                              ; preds = %439
  %445 = sext i16 %442 to i64
  %446 = and i64 %445, 4294967295
  %447 = add nsw i64 %446, -37
  %448 = icmp ult i64 %447, 8
  br label %449

449:                                              ; preds = %426, %432, %439, %444
  %450 = phi i1 [ true, %432 ], [ true, %426 ], [ true, %439 ], [ %448, %444 ]
  %451 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8
  %452 = icmp eq ptr %418, %451
  %453 = select i1 %450, i1 true, i1 %452
  %454 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %455 = icmp eq ptr %418, %454
  %456 = select i1 %453, i1 true, i1 %455
  %457 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8
  %458 = icmp eq ptr %418, %457
  %459 = select i1 %456, i1 true, i1 %458
  %460 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %461 = icmp eq ptr %418, %460
  %462 = select i1 %459, i1 true, i1 %461
  br i1 %462, label %463, label %497

463:                                              ; preds = %449
  %464 = load i32, ptr %430, align 8
  %465 = lshr i32 %464, 16
  %466 = and i32 %465, 255
  %467 = tail call i32 @max_reg_num() #24
  %468 = tail call ptr @gen_rtx_REG(i32 noundef %466, i32 noundef %467) #24
  store ptr %468, ptr %429, align 8, !tbaa !91
  %469 = tail call i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef nonnull %400, i8 noundef zeroext %20) #24
  store ptr %430, ptr %429, align 8, !tbaa !91
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %497

471:                                              ; preds = %463
  %472 = load ptr, ptr %407, align 8, !tbaa !102
  %473 = getelementptr inbounds %struct.rtx_def, ptr %472, i64 0, i32 1
  %474 = load i64, ptr %473, align 8, !tbaa !102
  %475 = tail call ptr @plus_constant(ptr noundef nonnull %418, i64 noundef %474) #24
  %476 = load ptr, ptr %405, align 8, !tbaa !102
  %477 = load i32, ptr %476, align 8
  %478 = and i32 %477, 65535
  %479 = icmp eq i32 %478, 49
  %480 = load i32, ptr %400, align 8
  %481 = lshr i32 %480, 16
  %482 = and i32 %481, 255
  %483 = icmp eq i64 %399, 0
  %484 = select i1 %483, ptr %475, ptr %430
  %485 = select i1 %483, ptr %430, ptr %475
  %486 = select i1 %479, i32 49, i32 122
  %487 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %486, i32 noundef %482, ptr noundef %484, ptr noundef %485) #24
  store ptr %487, ptr %272, align 8, !tbaa !91
  %488 = getelementptr inbounds %struct.rtx_def, ptr %487, i64 0, i32 1
  %489 = getelementptr inbounds [1 x %union.rtunion_def], ptr %488, i64 0, i64 %399
  %490 = load ptr, ptr %489, align 8, !tbaa !102
  %491 = load i32, ptr %487, align 8
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef %490, ptr noundef nonnull %489, i32 noundef 13, i32 noundef %493, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %494 = getelementptr inbounds [1 x %union.rtunion_def], ptr %488, i64 0, i64 %428
  %495 = load ptr, ptr %494, align 8, !tbaa !102
  %496 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %495, i32 noundef 1, ptr noundef nonnull %494, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %7)
  br label %497

497:                                              ; preds = %415, %463, %449, %422, %404, %412, %398, %471
  %498 = phi i32 [ 1, %471 ], [ 4, %398 ], [ 4, %412 ], [ 4, %404 ], [ 4, %422 ], [ 0, %449 ], [ 0, %463 ], [ 4, %415 ]
  %499 = phi ptr [ %487, %471 ], [ %400, %398 ], [ %400, %412 ], [ %400, %404 ], [ %400, %422 ], [ %400, %449 ], [ %400, %463 ], [ %400, %415 ]
  switch i32 %498, label %563 [
    i32 0, label %500
    i32 4, label %500
  ]

500:                                              ; preds = %497, %497
  %501 = add nuw nsw i64 %399, 1
  %502 = icmp eq i64 %399, 0
  br i1 %502, label %398, label %503, !llvm.loop !154

503:                                              ; preds = %500
  store ptr %499, ptr %9, align 8, !tbaa !91
  %504 = load i32, ptr %499, align 8
  %505 = and i32 %504, 65535
  %506 = icmp eq i32 %505, 49
  br i1 %506, label %507, label %509

507:                                              ; preds = %503
  %508 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %499)
  store ptr %508, ptr %9, align 8, !tbaa !91
  br label %509

509:                                              ; preds = %507, %503
  %510 = load ptr, ptr %9, align 8, !tbaa !91
  %511 = icmp eq ptr %510, %499
  br i1 %511, label %526, label %512

512:                                              ; preds = %509
  %513 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %514 = tail call zeroext i8 %513(i32 noundef %0, ptr noundef %510, i8 noundef zeroext 1, i8 noundef zeroext %20) #24
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %526, label %516

516:                                              ; preds = %512
  store i1 false, ptr @subst_reg_equivs_changed, align 4
  %517 = load ptr, ptr %9, align 8, !tbaa !91
  %518 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %517, ptr noundef %7)
  store ptr %518, ptr %9, align 8, !tbaa !91
  %519 = load i1, ptr @subst_reg_equivs_changed, align 4
  br i1 %519, label %520, label %524

520:                                              ; preds = %516
  %521 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %522 = tail call zeroext i8 %521(i32 noundef %0, ptr noundef %518, i8 noundef zeroext 1, i8 noundef zeroext %20) #24
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %526, label %524

524:                                              ; preds = %520, %516
  %525 = load ptr, ptr %9, align 8, !tbaa !91
  store ptr %525, ptr %272, align 8, !tbaa !91
  br label %563

526:                                              ; preds = %520, %512, %509
  %527 = load i32, ptr %499, align 8
  %528 = and i32 %527, 65535
  %529 = zext nneg i32 %528 to i64
  %530 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %529
  %531 = load i32, ptr %530, align 4, !tbaa !106
  %532 = icmp eq i32 %531, 9
  br i1 %532, label %533, label %561

533:                                              ; preds = %526
  %534 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %535 = tail call zeroext i8 %534(i32 noundef %0, ptr noundef nonnull %499, i8 noundef zeroext 1, i8 noundef zeroext %20) #24
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %537, label %561

537:                                              ; preds = %533
  %538 = load i32, ptr %499, align 8
  %539 = lshr i32 %538, 16
  %540 = and i32 %539, 255
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %537
  %543 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !155
  %544 = tail call i32 %543(i8 noundef zeroext %20) #24
  br label %545

545:                                              ; preds = %542, %537
  %546 = phi i32 [ %544, %542 ], [ %540, %537 ]
  br i1 %10, label %547, label %558

547:                                              ; preds = %545
  %548 = load i32, ptr %499, align 8
  %549 = and i32 %548, 67174399
  %550 = icmp eq i32 %549, 67108909
  br i1 %550, label %551, label %558

551:                                              ; preds = %547
  %552 = load ptr, ptr %1, align 8, !tbaa !91
  %553 = tail call ptr @copy_rtx(ptr noundef %552) #24
  store ptr %553, ptr %1, align 8, !tbaa !91
  %554 = getelementptr inbounds %struct.rtx_def, ptr %553, i64 0, i32 1
  br i1 %267, label %558, label %555

555:                                              ; preds = %551
  %556 = load ptr, ptr %554, align 8, !tbaa !91
  %557 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1
  br label %558

558:                                              ; preds = %551, %555, %547, %545
  %559 = phi ptr [ %557, %555 ], [ %554, %551 ], [ %272, %547 ], [ %272, %545 ]
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %499, ptr noundef %559, i32 noundef 13, i32 noundef %546, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %560 = zext i1 %267 to i32
  br label %563

561:                                              ; preds = %533, %526
  %562 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %499, i32 noundef 0, ptr noundef %272, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
  br label %563

563:                                              ; preds = %497, %221, %192, %194, %168, %249, %325, %317, %260, %257, %186, %111, %117, %123, %561, %558, %524, %393, %386, %331, %223, %32
  %564 = phi i32 [ 1, %32 ], [ 1, %223 ], [ %337, %331 ], [ 0, %386 ], [ %397, %393 ], [ 0, %524 ], [ %562, %561 ], [ %560, %558 ], [ 0, %123 ], [ 0, %117 ], [ 0, %111 ], [ 0, %186 ], [ 0, %257 ], [ 0, %260 ], [ 0, %317 ], [ 0, %325 ], [ 0, %249 ], [ 0, %168 ], [ 0, %194 ], [ 0, %192 ], [ 0, %221 ], [ 0, %497 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  ret i32 %564
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @clear_secondary_mem() local_unnamed_addr #11 !prof !156 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) @secondary_memlocs, i8 0, i64 696, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @push_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #10 !prof !157 {
  %12 = alloca %struct.secondary_reload_info, align 8
  %13 = alloca %struct.secondary_reload_info, align 8
  %14 = alloca %struct.secondary_reload_info, align 8
  %15 = alloca %struct.secondary_reload_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #24
  store i32 2956, ptr %16, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #24
  store i32 2956, ptr %17, align 4, !tbaa !106
  %18 = icmp eq i32 %5, 0
  %19 = icmp ne ptr %0, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %25, !prof !158

21:                                               ; preds = %11
  %22 = load i32, ptr %0, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %21, %11
  %26 = phi i32 [ %24, %21 ], [ %5, %11 ]
  %27 = icmp eq i32 %6, 0
  %28 = icmp ne ptr %1, null
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %34, !prof !158

30:                                               ; preds = %25
  %31 = load i32, ptr %1, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %33, %30 ], [ %6, %25 ]
  %36 = icmp eq ptr %0, null
  br i1 %36, label %57, label %37, !prof !159

37:                                               ; preds = %34
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %41, label %57, !prof !160

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !102
  %44 = icmp slt i32 %43, 53
  br i1 %44, label %57, label %45, !prof !161

45:                                               ; preds = %41
  %46 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %47 = zext nneg i32 %43 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !142
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %57, label %51, !prof !161

51:                                               ; preds = %45
  %52 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %53 = getelementptr inbounds ptr, ptr %52, i64 %47
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56, !prof !162

56:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #24
  br label %57

57:                                               ; preds = %56, %51, %45, %41, %37, %34
  br i1 %28, label %58, label %78, !prof !159

58:                                               ; preds = %57
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %78, !prof !163

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !102
  %65 = icmp slt i32 %64, 53
  br i1 %65, label %78, label %66, !prof !164

66:                                               ; preds = %62
  %67 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %68 = zext nneg i32 %64 to i64
  %69 = getelementptr inbounds i16, ptr %67, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !142
  %71 = icmp sgt i16 %70, -1
  br i1 %71, label %78, label %72, !prof !161

72:                                               ; preds = %66
  %73 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %74 = getelementptr inbounds ptr, ptr %73, i64 %68
  %75 = load ptr, ptr %74, align 8, !tbaa !91
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77, !prof !162

77:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #24
  br label %78

78:                                               ; preds = %77, %72, %66, %62, %58, %57
  %79 = and i1 %19, %28
  br i1 %79, label %80, label %102, !prof !158

80:                                               ; preds = %78
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 43
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !102
  %90 = load i32, ptr %89, align 8
  %91 = trunc i32 %90 to i16
  switch i16 %91, label %102 [
    i16 77, label %92
    i16 76, label %92
    i16 79, label %92
    i16 75, label %96
    i16 74, label %96
    i16 78, label %96
  ]

92:                                               ; preds = %87, %87, %87
  %93 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !102
  %95 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %94) #24
  br label %102

96:                                               ; preds = %87, %87, %87
  %97 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !102
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %1, ptr noundef %100) #24
  br label %102

102:                                              ; preds = %92, %96, %87, %84, %80, %78
  %103 = phi ptr [ %0, %84 ], [ %0, %87 ], [ %0, %96 ], [ %95, %92 ], [ %0, %80 ], [ %0, %78 ]
  %104 = phi ptr [ %1, %84 ], [ %1, %87 ], [ %101, %96 ], [ %1, %92 ], [ %1, %80 ], [ %1, %78 ]
  %105 = icmp eq ptr %103, null
  br i1 %105, label %255, label %106, !prof !159

106:                                              ; preds = %102
  %107 = load i32, ptr %103, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 39
  br i1 %109, label %110, label %255, !prof !165

110:                                              ; preds = %106
  %111 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %103) #24
  %112 = icmp ne i32 %7, 0
  %113 = or i32 %111, %7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %255, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !102
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %120, i32 noundef %26, i32 noundef %4) #24
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %255

123:                                              ; preds = %115
  %124 = load ptr, ptr %116, align 8, !tbaa !102
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !106
  %130 = icmp eq i32 %129, 9
  %131 = icmp eq i32 %126, 49
  %132 = or i1 %112, %131
  %133 = or i1 %130, %132
  br i1 %133, label %235, label %134

134:                                              ; preds = %123
  %135 = icmp eq i32 %126, 37
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !102
  %139 = icmp ugt i32 %138, 52
  br i1 %139, label %142, label %152

140:                                              ; preds = %134
  %141 = icmp eq i32 %126, 43
  br i1 %141, label %142, label %152

142:                                              ; preds = %140, %136
  %143 = zext i32 %26 to i64
  %144 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !102
  %146 = lshr i32 %125, 16
  %147 = and i32 %146, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !102
  %151 = icmp ugt i8 %145, %150
  br i1 %151, label %235, label %152

152:                                              ; preds = %142, %136, %140
  br i1 %135, label %153, label %188

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %155 = load i32, ptr %154, align 8, !tbaa !102
  %156 = icmp ult i32 %155, 53
  br i1 %156, label %157, label %188

157:                                              ; preds = %153
  %158 = icmp eq ptr %104, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %157
  %160 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %103) #24
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %188, label %162

162:                                              ; preds = %159, %157
  %163 = zext i32 %26 to i64
  %164 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !102
  %166 = icmp ult i8 %165, 5
  br i1 %166, label %167, label %184

167:                                              ; preds = %162
  %168 = load ptr, ptr %116, align 8, !tbaa !102
  %169 = load i32, ptr %168, align 8
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !102
  %175 = icmp ugt i8 %174, 4
  br i1 %175, label %176, label %184

176:                                              ; preds = %167
  %177 = lshr i8 %174, 2
  %178 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !102
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %180, i64 %172
  %182 = load i8, ptr %181, align 1, !tbaa !102
  %183 = icmp eq i8 %177, %182
  br i1 %183, label %184, label %235

184:                                              ; preds = %176, %167, %162
  %185 = tail call i32 @subreg_regno(ptr noundef nonnull %103) #24
  %186 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %185, i32 noundef %26) #24
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %235, label %188

188:                                              ; preds = %159, %184, %153, %152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #24
  store i32 2956, ptr %15, align 8, !tbaa !110
  %189 = getelementptr inbounds %struct.secondary_reload_info, ptr %15, i64 0, i32 2
  store ptr null, ptr %189, align 8, !tbaa !112
  %190 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !113
  %191 = call i32 %190(i8 noundef zeroext 1, ptr noundef nonnull %103, i32 noundef %4, i32 noundef %26, ptr noundef nonnull %15) #24
  %192 = load i32, ptr %15, align 8, !tbaa !110
  %193 = icmp eq i32 %192, 2956
  %194 = icmp ne i32 %191, 0
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %198, label %196

196:                                              ; preds = %188
  %197 = call i32 @scratch_reload_class(i32 noundef %192)
  br label %198

198:                                              ; preds = %188, %196
  %199 = phi i32 [ %197, %196 ], [ %191, %188 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #24
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %218, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr %116, align 8, !tbaa !102
  %203 = load i32, ptr %202, align 8
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #24
  store i32 2956, ptr %14, align 8, !tbaa !110
  %206 = getelementptr inbounds %struct.secondary_reload_info, ptr %14, i64 0, i32 2
  store ptr null, ptr %206, align 8, !tbaa !112
  %207 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !113
  %208 = call i32 %207(i8 noundef zeroext 1, ptr noundef nonnull %202, i32 noundef %4, i32 noundef %205, ptr noundef nonnull %14) #24
  %209 = load i32, ptr %14, align 8, !tbaa !110
  %210 = icmp eq i32 %209, 2956
  %211 = icmp ne i32 %208, 0
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %215, label %213

213:                                              ; preds = %201
  %214 = call i32 @scratch_reload_class(i32 noundef %209)
  br label %215

215:                                              ; preds = %201, %213
  %216 = phi i32 [ %214, %213 ], [ %208, %201 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #24
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %235, label %218

218:                                              ; preds = %215, %198
  %219 = load ptr, ptr %116, align 8, !tbaa !102
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 37
  br i1 %222, label %223, label %255

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !102
  %226 = icmp ult i32 %225, 53
  br i1 %226, label %227, label %255

227:                                              ; preds = %223
  %228 = lshr i32 %220, 16
  %229 = and i32 %228, 255
  %230 = zext nneg i32 %225 to i64
  %231 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !106
  %233 = call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %229, i32 noundef %26, i32 noundef %232) #24
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %255, label %235

235:                                              ; preds = %215, %184, %176, %227, %142, %123
  %236 = load ptr, ptr %116, align 8, !tbaa !91
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 43
  br i1 %239, label %240, label %251

240:                                              ; preds = %235
  %241 = lshr i32 %237, 16
  %242 = and i32 %241, 255
  %243 = zext nneg i32 %242 to i64
  %244 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !102
  %246 = zext i32 %26 to i64
  %247 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !102
  %249 = icmp ugt i8 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1069, ptr noundef nonnull @.str.1) #24
  br label %251

251:                                              ; preds = %250, %240, %235
  %252 = load i32, ptr %236, align 8
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  br label %255

255:                                              ; preds = %227, %110, %251, %223, %218, %115, %106, %102
  %256 = phi ptr [ %103, %102 ], [ %103, %110 ], [ %236, %251 ], [ %103, %223 ], [ %103, %218 ], [ %103, %115 ], [ %103, %106 ], [ %103, %227 ]
  %257 = phi ptr [ null, %102 ], [ null, %110 ], [ %2, %251 ], [ null, %223 ], [ null, %218 ], [ null, %115 ], [ null, %106 ], [ null, %227 ]
  %258 = phi i32 [ %26, %102 ], [ %26, %110 ], [ %254, %251 ], [ %26, %223 ], [ %26, %218 ], [ %26, %115 ], [ %26, %106 ], [ %26, %227 ]
  %259 = phi ptr [ %2, %102 ], [ %2, %110 ], [ %116, %251 ], [ %2, %223 ], [ %2, %218 ], [ %2, %115 ], [ %2, %106 ], [ %2, %227 ]
  %260 = icmp eq ptr %256, null
  br i1 %260, label %315, label %261, !prof !159

261:                                              ; preds = %255
  %262 = load i32, ptr %256, align 8
  %263 = and i32 %262, 65535
  %264 = icmp eq i32 %263, 39
  br i1 %264, label %265, label %287, !prof !158

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !102
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = zext nneg i32 %269 to i64
  %271 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !106
  %273 = icmp eq i32 %272, 9
  %274 = icmp eq i32 %269, 49
  %275 = or i1 %273, %274
  br i1 %275, label %287, label %276

276:                                              ; preds = %265
  %277 = icmp eq i32 %269, 37
  br i1 %277, label %278, label %287

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.rtx_def, ptr %267, i64 0, i32 1
  %280 = load i32, ptr %279, align 8, !tbaa !102
  %281 = icmp ugt i32 %280, 52
  br i1 %281, label %287, label %282

282:                                              ; preds = %278
  %283 = call i32 @subreg_regno(ptr noundef nonnull %256) #24
  %284 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %283, i32 noundef %258) #24
  %285 = icmp eq i8 %284, 0
  %286 = zext i1 %285 to i32
  br label %287

287:                                              ; preds = %282, %261, %265, %276, %278
  %288 = phi i32 [ 0, %261 ], [ 1, %265 ], [ 0, %278 ], [ 0, %276 ], [ %286, %282 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %315, label %290, !prof !166

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !102
  %293 = load i32, ptr %292, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 37
  br i1 %295, label %296, label %311

296:                                              ; preds = %290
  %297 = lshr i32 %293, 16
  %298 = and i32 %297, 255
  %299 = getelementptr inbounds %struct.rtx_def, ptr %292, i64 0, i32 1
  %300 = load i32, ptr %299, align 8, !tbaa !102
  %301 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1, i32 0, i32 0, i64 1
  %302 = load i32, ptr %301, align 8, !tbaa !102
  %303 = load i32, ptr %256, align 8
  %304 = lshr i32 %303, 16
  %305 = and i32 %304, 255
  %306 = call i32 @subreg_regno_offset(i32 noundef %300, i32 noundef %298, i32 noundef %302, i32 noundef %305) #24
  %307 = load ptr, ptr %291, align 8, !tbaa !102
  %308 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %309 = load i32, ptr %308, align 8, !tbaa !102
  %310 = call fastcc i32 @find_valid_class(i32 noundef %258, i32 noundef %298, i32 noundef %306, i32 noundef %309), !range !167
  br label %311

311:                                              ; preds = %296, %290
  %312 = phi i32 [ %310, %296 ], [ %4, %290 ]
  %313 = load ptr, ptr %291, align 8, !tbaa !102
  %314 = call i32 @push_reload(ptr noundef %313, ptr noundef null, ptr noundef nonnull %291, ptr noundef null, i32 noundef %312, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef %10)
  br label %315

315:                                              ; preds = %311, %287, %255
  %316 = phi i32 [ 1, %311 ], [ 0, %287 ], [ 0, %255 ]
  %317 = icmp eq ptr %104, null
  br i1 %317, label %456, label %318, !prof !168

318:                                              ; preds = %315
  %319 = load i32, ptr %104, align 8
  %320 = and i32 %319, 65535
  %321 = icmp eq i32 %320, 39
  br i1 %321, label %322, label %456, !prof !169

322:                                              ; preds = %318
  %323 = call i32 @subreg_lowpart_p(ptr noundef nonnull %104) #24
  %324 = icmp ne i32 %7, 0
  %325 = or i32 %323, %7
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %456, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !102
  %330 = load i32, ptr %329, align 8
  %331 = lshr i32 %330, 16
  %332 = and i32 %331, 255
  %333 = call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %332, i32 noundef %35, i32 noundef %4) #24
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %456

335:                                              ; preds = %327
  %336 = load ptr, ptr %328, align 8, !tbaa !102
  %337 = load i32, ptr %336, align 8
  %338 = and i32 %337, 65535
  %339 = zext nneg i32 %338 to i64
  %340 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !106
  %342 = icmp eq i32 %341, 9
  %343 = or i1 %324, %342
  br i1 %343, label %436, label %344

344:                                              ; preds = %335
  %345 = icmp eq i32 %338, 37
  br i1 %345, label %346, label %350

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %348 = load i32, ptr %347, align 8, !tbaa !102
  %349 = icmp ugt i32 %348, 52
  br i1 %349, label %352, label %362

350:                                              ; preds = %344
  %351 = icmp eq i32 %338, 43
  br i1 %351, label %352, label %362

352:                                              ; preds = %350, %346
  %353 = zext i32 %35 to i64
  %354 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !102
  %356 = lshr i32 %337, 16
  %357 = and i32 %356, 255
  %358 = zext nneg i32 %357 to i64
  %359 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !102
  %361 = icmp ugt i8 %355, %360
  br i1 %361, label %436, label %362

362:                                              ; preds = %352, %346, %350
  br i1 %345, label %363, label %389

363:                                              ; preds = %362
  %364 = getelementptr inbounds %struct.rtx_def, ptr %336, i64 0, i32 1
  %365 = load i32, ptr %364, align 8, !tbaa !102
  %366 = icmp ult i32 %365, 53
  br i1 %366, label %367, label %389

367:                                              ; preds = %363
  %368 = zext i32 %35 to i64
  %369 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !102
  %371 = icmp ult i8 %370, 5
  br i1 %371, label %372, label %385

372:                                              ; preds = %367
  %373 = lshr i32 %337, 16
  %374 = and i32 %373, 255
  %375 = zext nneg i32 %374 to i64
  %376 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !102
  %378 = icmp ugt i8 %377, 4
  br i1 %378, label %379, label %385

379:                                              ; preds = %372
  %380 = lshr i8 %377, 2
  %381 = zext nneg i32 %365 to i64
  %382 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %381, i64 %375
  %383 = load i8, ptr %382, align 1, !tbaa !102
  %384 = icmp eq i8 %380, %383
  br i1 %384, label %385, label %436

385:                                              ; preds = %379, %372, %367
  %386 = call i32 @subreg_regno(ptr noundef nonnull %104) #24
  %387 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %386, i32 noundef %35) #24
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %436, label %389

389:                                              ; preds = %385, %363, %362
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #24
  store i32 2956, ptr %13, align 8, !tbaa !110
  %390 = getelementptr inbounds %struct.secondary_reload_info, ptr %13, i64 0, i32 2
  store ptr null, ptr %390, align 8, !tbaa !112
  %391 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !113
  %392 = call i32 %391(i8 noundef zeroext 0, ptr noundef nonnull %104, i32 noundef %4, i32 noundef %35, ptr noundef nonnull %13) #24
  %393 = load i32, ptr %13, align 8, !tbaa !110
  %394 = icmp eq i32 %393, 2956
  %395 = icmp ne i32 %392, 0
  %396 = select i1 %394, i1 true, i1 %395
  br i1 %396, label %399, label %397

397:                                              ; preds = %389
  %398 = call i32 @scratch_reload_class(i32 noundef %393)
  br label %399

399:                                              ; preds = %389, %397
  %400 = phi i32 [ %398, %397 ], [ %392, %389 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #24
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %419, label %402

402:                                              ; preds = %399
  %403 = load ptr, ptr %328, align 8, !tbaa !102
  %404 = load i32, ptr %403, align 8
  %405 = lshr i32 %404, 16
  %406 = and i32 %405, 255
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #24
  store i32 2956, ptr %12, align 8, !tbaa !110
  %407 = getelementptr inbounds %struct.secondary_reload_info, ptr %12, i64 0, i32 2
  store ptr null, ptr %407, align 8, !tbaa !112
  %408 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !113
  %409 = call i32 %408(i8 noundef zeroext 0, ptr noundef nonnull %403, i32 noundef %4, i32 noundef %406, ptr noundef nonnull %12) #24
  %410 = load i32, ptr %12, align 8, !tbaa !110
  %411 = icmp eq i32 %410, 2956
  %412 = icmp ne i32 %409, 0
  %413 = select i1 %411, i1 true, i1 %412
  br i1 %413, label %416, label %414

414:                                              ; preds = %402
  %415 = call i32 @scratch_reload_class(i32 noundef %410)
  br label %416

416:                                              ; preds = %402, %414
  %417 = phi i32 [ %415, %414 ], [ %409, %402 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #24
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %436, label %419

419:                                              ; preds = %416, %399
  %420 = load ptr, ptr %328, align 8, !tbaa !102
  %421 = load i32, ptr %420, align 8
  %422 = and i32 %421, 65535
  %423 = icmp eq i32 %422, 37
  br i1 %423, label %424, label %456

424:                                              ; preds = %419
  %425 = getelementptr inbounds %struct.rtx_def, ptr %420, i64 0, i32 1
  %426 = load i32, ptr %425, align 8, !tbaa !102
  %427 = icmp ult i32 %426, 53
  br i1 %427, label %428, label %456

428:                                              ; preds = %424
  %429 = lshr i32 %421, 16
  %430 = and i32 %429, 255
  %431 = zext nneg i32 %426 to i64
  %432 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !106
  %434 = call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %430, i32 noundef %35, i32 noundef %433) #24
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %456, label %436

436:                                              ; preds = %416, %385, %379, %428, %352, %335
  %437 = load ptr, ptr %328, align 8, !tbaa !91
  %438 = load i32, ptr %437, align 8
  %439 = and i32 %438, 65535
  %440 = icmp eq i32 %439, 43
  br i1 %440, label %441, label %452

441:                                              ; preds = %436
  %442 = lshr i32 %438, 16
  %443 = and i32 %442, 255
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !102
  %447 = zext i32 %35 to i64
  %448 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %447
  %449 = load i8, ptr %448, align 1, !tbaa !102
  %450 = icmp ugt i8 %446, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %441
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1162, ptr noundef nonnull @.str.1) #24
  br label %452

452:                                              ; preds = %436, %441, %451
  %453 = load i32, ptr %437, align 8
  %454 = lshr i32 %453, 16
  %455 = and i32 %454, 255
  br label %456

456:                                              ; preds = %428, %322, %452, %424, %419, %327, %318, %315
  %457 = phi i32 [ %35, %327 ], [ %455, %452 ], [ %35, %424 ], [ %35, %419 ], [ %35, %322 ], [ %35, %318 ], [ %35, %315 ], [ %35, %428 ]
  %458 = phi ptr [ null, %327 ], [ %3, %452 ], [ null, %424 ], [ null, %419 ], [ null, %322 ], [ null, %318 ], [ null, %315 ], [ null, %428 ]
  %459 = phi ptr [ %3, %327 ], [ %328, %452 ], [ %3, %424 ], [ %3, %419 ], [ %3, %322 ], [ %3, %318 ], [ %3, %315 ], [ %3, %428 ]
  %460 = phi ptr [ %104, %327 ], [ %437, %452 ], [ %104, %424 ], [ %104, %419 ], [ %104, %322 ], [ %104, %318 ], [ null, %315 ], [ %104, %428 ]
  %461 = icmp ne ptr %460, null
  br i1 %461, label %462, label %530, !prof !159

462:                                              ; preds = %456
  %463 = load i32, ptr %460, align 8
  %464 = and i32 %463, 65535
  %465 = icmp eq i32 %464, 39
  br i1 %465, label %466, label %508, !prof !158

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !102
  %469 = load i32, ptr %468, align 8
  %470 = and i32 %469, 65535
  %471 = zext nneg i32 %470 to i64
  %472 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %471
  %473 = load i32, ptr %472, align 4, !tbaa !106
  %474 = icmp eq i32 %473, 9
  %475 = icmp eq i32 %470, 49
  %476 = or i1 %474, %475
  br i1 %476, label %508, label %477

477:                                              ; preds = %466
  %478 = icmp eq i32 %470, 37
  br i1 %478, label %479, label %508

479:                                              ; preds = %477
  %480 = getelementptr inbounds %struct.rtx_def, ptr %468, i64 0, i32 1
  %481 = load i32, ptr %480, align 8, !tbaa !102
  %482 = icmp ugt i32 %481, 52
  br i1 %482, label %508, label %483

483:                                              ; preds = %479
  %484 = call i32 @subreg_regno(ptr noundef nonnull %460) #24
  %485 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %484, i32 noundef %457) #24
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %508, label %487

487:                                              ; preds = %483
  %488 = zext i32 %457 to i64
  %489 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %488
  %490 = load i8, ptr %489, align 1, !tbaa !102
  %491 = icmp ult i8 %490, 5
  br i1 %491, label %492, label %508

492:                                              ; preds = %487
  %493 = load i32, ptr %468, align 8
  %494 = lshr i32 %493, 16
  %495 = and i32 %494, 255
  %496 = zext nneg i32 %495 to i64
  %497 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !102
  %499 = icmp ugt i8 %498, 4
  br i1 %499, label %500, label %508

500:                                              ; preds = %492
  %501 = lshr i8 %498, 2
  %502 = load i32, ptr %480, align 8, !tbaa !102
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %503, i64 %496
  %505 = load i8, ptr %504, align 1, !tbaa !102
  %506 = icmp ne i8 %501, %505
  %507 = zext i1 %506 to i32
  br label %508

508:                                              ; preds = %462, %466, %477, %479, %483, %487, %492, %500
  %509 = phi i32 [ 0, %462 ], [ 1, %466 ], [ 0, %479 ], [ 0, %477 ], [ 1, %483 ], [ 0, %492 ], [ 0, %487 ], [ %507, %500 ]
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %530, label %511, !prof !170

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1
  %513 = load ptr, ptr %512, align 8, !tbaa !102
  %514 = load i32, ptr %513, align 8
  %515 = lshr i32 %514, 16
  %516 = and i32 %515, 255
  %517 = getelementptr inbounds %struct.rtx_def, ptr %513, i64 0, i32 1
  %518 = load i32, ptr %517, align 8, !tbaa !102
  %519 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1, i32 0, i32 0, i64 1
  %520 = load i32, ptr %519, align 8, !tbaa !102
  %521 = load i32, ptr %460, align 8
  %522 = lshr i32 %521, 16
  %523 = and i32 %522, 255
  %524 = call i32 @subreg_regno_offset(i32 noundef %518, i32 noundef %516, i32 noundef %520, i32 noundef %523) #24
  %525 = load ptr, ptr %512, align 8, !tbaa !102
  %526 = getelementptr inbounds %struct.rtx_def, ptr %525, i64 0, i32 1
  %527 = load i32, ptr %526, align 8, !tbaa !102
  %528 = call fastcc i32 @find_valid_class(i32 noundef %457, i32 noundef %516, i32 noundef %524, i32 noundef %527), !range !167
  %529 = call i32 @push_reload(ptr noundef nonnull %513, ptr noundef nonnull %513, ptr noundef nonnull %512, ptr noundef nonnull %512, i32 noundef %528, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, i32 noundef 9)
  br label %530

530:                                              ; preds = %511, %508, %456
  %531 = phi i32 [ 1, %511 ], [ %316, %508 ], [ %316, %456 ]
  %532 = icmp ne ptr %256, null
  %533 = and i1 %532, %461
  br i1 %533, label %534, label %547, !prof !158

534:                                              ; preds = %530
  %535 = load i32, ptr %460, align 8
  %536 = and i32 %535, 65535
  %537 = icmp eq i32 %536, 43
  br i1 %537, label %538, label %547

538:                                              ; preds = %534
  %539 = load i32, ptr %256, align 8
  %540 = trunc i32 %539 to i16
  switch i16 %540, label %547 [
    i16 37, label %541
    i16 43, label %541
    i16 49, label %541
  ]

541:                                              ; preds = %538, %538, %538
  %542 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !102
  %544 = call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %256, ptr noundef %543)
  %545 = icmp ne i32 %544, 0
  %546 = zext i1 %545 to i32
  br label %547

547:                                              ; preds = %541, %538, %534, %530
  %548 = phi i32 [ 0, %534 ], [ 0, %530 ], [ 0, %538 ], [ %546, %541 ]
  br i1 %260, label %570, label %549, !prof !159

549:                                              ; preds = %547
  %550 = load i32, ptr %256, align 8
  %551 = and i32 %550, 65535
  %552 = icmp eq i32 %551, 39
  br i1 %552, label %553, label %570, !prof !165

553:                                              ; preds = %549
  %554 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %555 = load ptr, ptr %554, align 8, !tbaa !102
  %556 = load i32, ptr %555, align 8
  %557 = and i32 %556, 65535
  %558 = icmp eq i32 %557, 37
  br i1 %558, label %559, label %570

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.rtx_def, ptr %555, i64 0, i32 1
  %561 = load i32, ptr %560, align 8, !tbaa !102
  %562 = icmp ugt i32 %561, 52
  %563 = icmp ne i32 %531, 0
  %564 = or i1 %563, %562
  br i1 %564, label %570, label %565

565:                                              ; preds = %559
  %566 = lshr i32 %550, 16
  %567 = and i32 %566, 255
  %568 = call i32 @subreg_regno(ptr noundef nonnull %256) #24
  %569 = call ptr @gen_rtx_REG(i32 noundef %567, i32 noundef %568) #24
  br label %570

570:                                              ; preds = %565, %559, %553, %549, %547
  %571 = phi ptr [ %256, %547 ], [ %256, %559 ], [ %569, %565 ], [ %256, %553 ], [ %256, %549 ]
  br i1 %461, label %572, label %593, !prof !159

572:                                              ; preds = %570
  %573 = load i32, ptr %460, align 8
  %574 = and i32 %573, 65535
  %575 = icmp eq i32 %574, 39
  br i1 %575, label %576, label %593, !prof !169

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.rtx_def, ptr %460, i64 0, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !102
  %579 = load i32, ptr %578, align 8
  %580 = and i32 %579, 65535
  %581 = icmp eq i32 %580, 37
  br i1 %581, label %582, label %593

582:                                              ; preds = %576
  %583 = getelementptr inbounds %struct.rtx_def, ptr %578, i64 0, i32 1
  %584 = load i32, ptr %583, align 8, !tbaa !102
  %585 = icmp ugt i32 %584, 52
  %586 = icmp ne i32 %531, 0
  %587 = or i1 %586, %585
  br i1 %587, label %593, label %588

588:                                              ; preds = %582
  %589 = lshr i32 %573, 16
  %590 = and i32 %589, 255
  %591 = call i32 @subreg_regno(ptr noundef nonnull %460) #24
  %592 = call ptr @gen_rtx_REG(i32 noundef %590, i32 noundef %591) #24
  br label %593

593:                                              ; preds = %588, %582, %576, %572, %570
  %594 = phi ptr [ %460, %582 ], [ %592, %588 ], [ %460, %576 ], [ %460, %572 ], [ null, %570 ]
  %595 = icmp eq ptr %571, null
  br i1 %595, label %598, label %596, !prof !159

596:                                              ; preds = %593
  %597 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %571, i32 noundef %4) #24
  br label %598

598:                                              ; preds = %596, %593
  %599 = phi i32 [ %597, %596 ], [ %4, %593 ]
  %600 = icmp ne ptr %594, null
  br i1 %600, label %601, label %603, !prof !159

601:                                              ; preds = %598
  %602 = call i32 @ix86_preferred_output_reload_class(ptr noundef %594, i32 noundef %599) #24
  br label %603

603:                                              ; preds = %601, %598
  %604 = phi i32 [ %602, %601 ], [ %599, %598 ]
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %610, !prof !171

606:                                              ; preds = %603
  %607 = icmp ne i32 %8, 0
  %608 = icmp eq i32 %10, 1
  %609 = and i1 %607, %608
  br i1 %609, label %610, label %611, !prof !172

610:                                              ; preds = %606, %603
  br label %611

611:                                              ; preds = %610, %606
  %612 = phi i32 [ %604, %610 ], [ %4, %606 ]
  %613 = icmp eq ptr %257, null
  br i1 %613, label %618, label %614, !prof !173

614:                                              ; preds = %611
  %615 = icmp eq i32 %258, 14
  br i1 %615, label %616, label %617

616:                                              ; preds = %614
  switch i32 %612, label %617 [
    i32 26, label %631
    i32 13, label %631
    i32 12, label %631
    i32 11, label %631
  ]

617:                                              ; preds = %616, %614
  br label %631

618:                                              ; preds = %611
  br i1 %595, label %631, label %619, !prof !159

619:                                              ; preds = %618
  %620 = load i32, ptr %571, align 8
  %621 = and i32 %620, 65535
  %622 = icmp eq i32 %621, 39
  br i1 %622, label %623, label %631, !prof !165

623:                                              ; preds = %619
  %624 = getelementptr inbounds %struct.rtx_def, ptr %571, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !102
  %626 = load i32, ptr %625, align 8
  %627 = and i32 %626, 16711680
  %628 = icmp eq i32 %627, 917504
  br i1 %628, label %629, label %630

629:                                              ; preds = %623
  switch i32 %612, label %630 [
    i32 26, label %631
    i32 13, label %631
    i32 12, label %631
    i32 11, label %631
  ]

630:                                              ; preds = %629, %623
  br label %631

631:                                              ; preds = %629, %629, %629, %616, %616, %616, %630, %629, %617, %616, %618, %619
  %632 = phi i32 [ %612, %619 ], [ %612, %618 ], [ %612, %617 ], [ 9, %616 ], [ %612, %630 ], [ 9, %629 ], [ 9, %616 ], [ 9, %616 ], [ 9, %616 ], [ 9, %629 ], [ 9, %629 ], [ 9, %629 ]
  %633 = icmp eq ptr %458, null
  br i1 %633, label %638, label %634, !prof !173

634:                                              ; preds = %631
  %635 = icmp eq i32 %457, 14
  br i1 %635, label %636, label %637

636:                                              ; preds = %634
  switch i32 %632, label %637 [
    i32 26, label %638
    i32 13, label %638
    i32 12, label %638
    i32 11, label %638
  ]

637:                                              ; preds = %636, %634
  br label %638

638:                                              ; preds = %636, %636, %636, %637, %636, %631
  %639 = phi i32 [ %632, %631 ], [ %632, %637 ], [ 9, %636 ], [ 9, %636 ], [ 9, %636 ], [ 9, %636 ]
  br i1 %600, label %640, label %652, !prof !159

640:                                              ; preds = %638
  %641 = load i32, ptr %594, align 8
  %642 = and i32 %641, 65535
  %643 = icmp eq i32 %642, 39
  br i1 %643, label %644, label %652, !prof !169

644:                                              ; preds = %640
  %645 = getelementptr inbounds %struct.rtx_def, ptr %594, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !102
  %647 = load i32, ptr %646, align 8
  %648 = and i32 %647, 16711680
  %649 = icmp eq i32 %648, 917504
  br i1 %649, label %650, label %651

650:                                              ; preds = %644
  switch i32 %639, label %651 [
    i32 26, label %652
    i32 13, label %652
    i32 12, label %652
    i32 11, label %652
  ]

651:                                              ; preds = %650, %644
  br label %652

652:                                              ; preds = %650, %650, %650, %651, %650, %640, %638
  %653 = phi i32 [ %639, %640 ], [ %639, %638 ], [ %639, %651 ], [ 9, %650 ], [ 9, %650 ], [ 9, %650 ], [ 9, %650 ]
  %654 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !106
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %715, label %656, !prof !173

656:                                              ; preds = %652
  %657 = zext i32 %258 to i64
  %658 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %657
  %659 = load i8, ptr %658, align 1, !tbaa !102
  %660 = zext i32 %457 to i64
  %661 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %660
  %662 = load i8, ptr %661, align 1, !tbaa !102
  %663 = icmp ugt i8 %659, %662
  %664 = select i1 %663, i32 %258, i32 %457
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %656
  %667 = load ptr, ptr @this_insn, align 8, !tbaa !91
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %667, ptr noundef nonnull @.str.2) #24
  %668 = load i32, ptr @word_mode, align 4
  %669 = select i1 %595, i32 %258, i32 %668
  %670 = select i1 %600, i32 %668, i32 %457
  br label %671

671:                                              ; preds = %666, %656
  %672 = phi i32 [ %457, %656 ], [ %670, %666 ]
  %673 = phi i32 [ %258, %656 ], [ %669, %666 ]
  %674 = phi i32 [ %664, %656 ], [ %668, %666 ]
  %675 = sext i32 %653 to i64
  %676 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %675
  %677 = sext i32 %674 to i64
  br label %678

678:                                              ; preds = %671, %701
  %679 = phi i64 [ 0, %671 ], [ %702, %701 ]
  %680 = trunc i64 %679 to i32
  %681 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %680, i32 noundef %674) #24
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %701, label %683

683:                                              ; preds = %678
  %684 = load i64, ptr %676, align 8, !tbaa !174
  %685 = shl nuw i64 1, %679
  %686 = and i64 %684, %685
  %687 = icmp eq i64 %686, 0
  br i1 %687, label %701, label %688

688:                                              ; preds = %683
  %689 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %679, i64 %677
  %690 = load i8, ptr %689, align 1, !tbaa !102
  %691 = zext i8 %690 to i64
  %692 = add nuw nsw i64 %679, %691
  br label %693

693:                                              ; preds = %697, %688
  %694 = phi i64 [ %695, %697 ], [ %679, %688 ]
  %695 = add nuw nsw i64 %694, 1
  %696 = icmp ult i64 %695, %692
  br i1 %696, label %697, label %704

697:                                              ; preds = %693
  %698 = shl i64 2, %694
  %699 = and i64 %698, %684
  %700 = icmp eq i64 %699, 0
  br i1 %700, label %701, label %693, !llvm.loop !175

701:                                              ; preds = %697, %683, %678
  %702 = add nuw nsw i64 %679, 1
  %703 = icmp eq i64 %702, 53
  br i1 %703, label %706, label %678, !llvm.loop !176

704:                                              ; preds = %693
  %705 = trunc i64 %679 to i32
  br label %706

706:                                              ; preds = %701, %704
  %707 = phi i32 [ %705, %704 ], [ 53, %701 ]
  %708 = icmp eq i32 %707, 53
  br i1 %708, label %709, label %715

709:                                              ; preds = %706
  %710 = load ptr, ptr @this_insn, align 8, !tbaa !91
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %710, ptr noundef nonnull @.str.3) #24
  %711 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !91
  %712 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %711) #24
  %713 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %714 = getelementptr inbounds %struct.rtx_def, ptr %713, i64 1
  store ptr %712, ptr %714, align 8, !tbaa !102
  br label %1655

715:                                              ; preds = %706, %652
  %716 = phi i32 [ %457, %652 ], [ %672, %706 ]
  %717 = phi i32 [ %258, %652 ], [ %673, %706 ]
  %718 = icmp eq i32 %653, 0
  br i1 %718, label %719, label %724, !prof !171

719:                                              ; preds = %715
  %720 = icmp ne i32 %8, 0
  %721 = icmp eq i32 %10, 1
  %722 = and i1 %720, %721
  br i1 %722, label %724, label %723, !prof !172

723:                                              ; preds = %719
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @.str.1) #24
  br label %724

724:                                              ; preds = %715, %719, %723
  %725 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %726 = icmp sgt i32 %725, 0
  br i1 %726, label %734, label %731, !prof !177

727:                                              ; preds = %734
  %728 = zext nneg i32 %725 to i64
  %729 = add nuw nsw i64 %735, 1
  %730 = icmp eq i64 %729, %728
  br i1 %730, label %731, label %734, !prof !178, !llvm.loop !179

731:                                              ; preds = %727, %724
  %732 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %733 = icmp sgt i32 %732, 0
  br i1 %733, label %744, label %741, !prof !177

734:                                              ; preds = %724, %727
  %735 = phi i64 [ %729, %727 ], [ 0, %724 ]
  %736 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %735
  %737 = load ptr, ptr %736, align 8, !tbaa !91
  %738 = icmp eq ptr %737, %594
  br i1 %738, label %739, label %727

739:                                              ; preds = %734
  %740 = load i32, ptr @n_reloads, align 4, !tbaa !106
  br label %1091

741:                                              ; preds = %926, %731
  %742 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %743 = icmp sgt i32 %742, 0
  br i1 %743, label %931, label %1091, !prof !177

744:                                              ; preds = %731, %926
  %745 = phi i64 [ %927, %926 ], [ 0, %731 ]
  %746 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745
  %747 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745, i32 2
  %748 = load i32, ptr %747, align 8, !tbaa !180
  %749 = call i32 @reg_class_subset_p(i32 noundef %653, i32 noundef %748) #24
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %755

751:                                              ; preds = %744
  %752 = load i32, ptr %747, align 8, !tbaa !180
  %753 = call i32 @reg_class_subset_p(i32 noundef %752, i32 noundef %653) #24
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %926, label %755

755:                                              ; preds = %751, %744
  %756 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745, i32 11
  %757 = load ptr, ptr %756, align 8, !tbaa !182
  %758 = icmp eq ptr %757, null
  br i1 %758, label %768, label %759

759:                                              ; preds = %755
  %760 = sext i32 %653 to i64
  %761 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %760
  %762 = load i64, ptr %761, align 8, !tbaa !174
  %763 = call i32 @true_regnum(ptr noundef nonnull %757) #24
  %764 = zext nneg i32 %763 to i64
  %765 = shl nuw i64 1, %764
  %766 = and i64 %765, %762
  %767 = icmp eq i64 %766, 0
  br i1 %767, label %926, label %768

768:                                              ; preds = %759, %755
  br i1 %595, label %829, label %769

769:                                              ; preds = %768
  %770 = load ptr, ptr %746, align 8, !tbaa !183
  %771 = icmp eq ptr %770, %571
  br i1 %771, label %798, label %772

772:                                              ; preds = %769
  %773 = icmp eq ptr %770, null
  br i1 %773, label %829, label %774

774:                                              ; preds = %772
  %775 = load i32, ptr %770, align 8
  %776 = and i32 %775, 65535
  %777 = icmp eq i32 %776, 37
  br i1 %777, label %778, label %790

778:                                              ; preds = %774
  %779 = load i32, ptr %571, align 8
  %780 = and i32 %779, 65535
  %781 = icmp eq i32 %780, 37
  br i1 %781, label %782, label %829

782:                                              ; preds = %778
  %783 = getelementptr inbounds %struct.rtx_def, ptr %571, i64 0, i32 1
  %784 = icmp eq i32 %548, 0
  %785 = getelementptr inbounds %struct.rtx_def, ptr %770, i64 0, i32 1
  %786 = load i32, ptr %785, align 8, !tbaa !102
  %787 = load i32, ptr %783, align 8, !tbaa !102
  %788 = icmp eq i32 %786, %787
  %789 = and i1 %784, %788
  br i1 %789, label %800, label %829

790:                                              ; preds = %774
  %791 = call i32 @rtx_equal_p(ptr noundef nonnull %770, ptr noundef nonnull %571) #24
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %829, label %793

793:                                              ; preds = %790
  %794 = load ptr, ptr %746, align 8, !tbaa !183
  %795 = call i32 @side_effects_p(ptr noundef %794) #24
  %796 = or i32 %795, %548
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %800, label %829

798:                                              ; preds = %769
  %799 = icmp eq i32 %548, 0
  br i1 %799, label %800, label %829

800:                                              ; preds = %793, %798, %782
  %801 = icmp eq ptr %594, null
  br i1 %801, label %885, label %802

802:                                              ; preds = %800
  %803 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745, i32 1
  %804 = load ptr, ptr %803, align 8, !tbaa !184
  %805 = icmp eq ptr %804, null
  %806 = icmp eq ptr %804, %594
  %807 = or i1 %805, %806
  br i1 %807, label %885, label %808

808:                                              ; preds = %802
  %809 = load i32, ptr %804, align 8
  %810 = and i32 %809, 65535
  %811 = icmp eq i32 %810, 37
  br i1 %811, label %812, label %822

812:                                              ; preds = %808
  %813 = load i32, ptr %594, align 8
  %814 = and i32 %813, 65535
  %815 = icmp eq i32 %814, 37
  br i1 %815, label %816, label %829

816:                                              ; preds = %812
  %817 = getelementptr inbounds %struct.rtx_def, ptr %594, i64 0, i32 1
  %818 = getelementptr inbounds %struct.rtx_def, ptr %804, i64 0, i32 1
  %819 = load i32, ptr %818, align 8, !tbaa !102
  %820 = load i32, ptr %817, align 8, !tbaa !102
  %821 = icmp eq i32 %819, %820
  br i1 %821, label %885, label %829

822:                                              ; preds = %808
  %823 = call i32 @rtx_equal_p(ptr noundef nonnull %804, ptr noundef nonnull %594) #24
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %829, label %825

825:                                              ; preds = %822
  %826 = load ptr, ptr %803, align 8, !tbaa !184
  %827 = call i32 @side_effects_p(ptr noundef %826) #24
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %885, label %829

829:                                              ; preds = %816, %782, %825, %822, %812, %798, %793, %790, %778, %772, %768
  %830 = icmp eq ptr %594, null
  br i1 %830, label %926, label %831

831:                                              ; preds = %829
  %832 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745, i32 1
  %833 = load ptr, ptr %832, align 8, !tbaa !184
  %834 = icmp eq ptr %833, %594
  br i1 %834, label %858, label %835

835:                                              ; preds = %831
  %836 = icmp eq ptr %833, null
  br i1 %836, label %926, label %837

837:                                              ; preds = %835
  %838 = load i32, ptr %833, align 8
  %839 = and i32 %838, 65535
  %840 = icmp eq i32 %839, 37
  br i1 %840, label %841, label %851

841:                                              ; preds = %837
  %842 = load i32, ptr %594, align 8
  %843 = and i32 %842, 65535
  %844 = icmp eq i32 %843, 37
  br i1 %844, label %845, label %926

845:                                              ; preds = %841
  %846 = getelementptr inbounds %struct.rtx_def, ptr %594, i64 0, i32 1
  %847 = getelementptr inbounds %struct.rtx_def, ptr %833, i64 0, i32 1
  %848 = load i32, ptr %847, align 8, !tbaa !102
  %849 = load i32, ptr %846, align 8, !tbaa !102
  %850 = icmp eq i32 %848, %849
  br i1 %850, label %858, label %926

851:                                              ; preds = %837
  %852 = call i32 @rtx_equal_p(ptr noundef nonnull %833, ptr noundef nonnull %594) #24
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %926, label %854

854:                                              ; preds = %851
  %855 = load ptr, ptr %832, align 8, !tbaa !184
  %856 = call i32 @side_effects_p(ptr noundef %855) #24
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %926

858:                                              ; preds = %854, %845, %831
  br i1 %595, label %885, label %859

859:                                              ; preds = %858
  %860 = load ptr, ptr %746, align 8, !tbaa !183
  %861 = icmp eq ptr %860, null
  %862 = icmp eq ptr %860, %571
  %863 = select i1 %861, i1 true, i1 %862
  br i1 %863, label %885, label %864

864:                                              ; preds = %859
  %865 = load i32, ptr %860, align 8
  %866 = and i32 %865, 65535
  %867 = icmp eq i32 %866, 37
  br i1 %867, label %868, label %878

868:                                              ; preds = %864
  %869 = load i32, ptr %571, align 8
  %870 = and i32 %869, 65535
  %871 = icmp eq i32 %870, 37
  br i1 %871, label %872, label %926

872:                                              ; preds = %868
  %873 = getelementptr inbounds %struct.rtx_def, ptr %571, i64 0, i32 1
  %874 = getelementptr inbounds %struct.rtx_def, ptr %860, i64 0, i32 1
  %875 = load i32, ptr %874, align 8, !tbaa !102
  %876 = load i32, ptr %873, align 8, !tbaa !102
  %877 = icmp eq i32 %875, %876
  br i1 %877, label %885, label %926

878:                                              ; preds = %864
  %879 = call i32 @rtx_equal_p(ptr noundef nonnull %860, ptr noundef nonnull %571) #24
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %926, label %881

881:                                              ; preds = %878
  %882 = load ptr, ptr %746, align 8, !tbaa !183
  %883 = call i32 @side_effects_p(ptr noundef %882) #24
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %926

885:                                              ; preds = %881, %825, %872, %859, %858, %816, %802, %800
  %886 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745, i32 1
  %887 = load ptr, ptr %886, align 8, !tbaa !184
  %888 = icmp eq ptr %887, null
  br i1 %888, label %902, label %889

889:                                              ; preds = %885
  %890 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %891 = icmp sgt i32 %890, 0
  br i1 %891, label %892, label %902

892:                                              ; preds = %889
  %893 = zext nneg i32 %890 to i64
  br label %897

894:                                              ; preds = %897
  %895 = add nuw nsw i64 %898, 1
  %896 = icmp eq i64 %895, %893
  br i1 %896, label %902, label %897, !llvm.loop !179

897:                                              ; preds = %892, %894
  %898 = phi i64 [ 0, %892 ], [ %895, %894 ]
  %899 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %898
  %900 = load ptr, ptr %899, align 8, !tbaa !91
  %901 = icmp eq ptr %900, %887
  br i1 %901, label %926, label %894

902:                                              ; preds = %894, %889, %885
  %903 = icmp eq i32 %10, 9
  br i1 %903, label %1089, label %904

904:                                              ; preds = %902
  %905 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745, i32 17
  %906 = load i32, ptr %905, align 4, !tbaa !185
  %907 = icmp eq i32 %906, 9
  br i1 %907, label %1089, label %908

908:                                              ; preds = %904
  %909 = icmp eq i32 %906, %10
  br i1 %909, label %910, label %914

910:                                              ; preds = %908
  %911 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %745, i32 12
  %912 = load i32, ptr %911, align 8, !tbaa !186
  %913 = icmp eq i32 %912, %9
  br i1 %913, label %1089, label %914

914:                                              ; preds = %910, %908
  switch i32 %10, label %926 [
    i32 0, label %915
    i32 7, label %918
    i32 10, label %924
  ]

915:                                              ; preds = %914
  %916 = icmp eq i32 %906, 0
  br i1 %916, label %1089, label %917

917:                                              ; preds = %915
  switch i32 %10, label %926 [
    i32 7, label %918
    i32 10, label %924
  ]

918:                                              ; preds = %917, %914
  %919 = icmp eq i32 %10, 10
  %920 = icmp eq i32 %906, 7
  %921 = icmp eq i32 %906, 10
  %922 = and i1 %919, %921
  %923 = or i1 %920, %922
  br i1 %923, label %1089, label %926

924:                                              ; preds = %917, %914
  %925 = icmp eq i32 %906, 10
  br i1 %925, label %1089, label %926

926:                                              ; preds = %897, %918, %872, %845, %759, %751, %924, %917, %914, %881, %878, %868, %854, %851, %841, %835, %829
  %927 = add nuw nsw i64 %745, 1
  %928 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %929 = sext i32 %928 to i64
  %930 = icmp slt i64 %927, %929
  br i1 %930, label %744, label %741, !prof !177, !llvm.loop !187

931:                                              ; preds = %741, %1084
  %932 = phi i64 [ %1085, %1084 ], [ 0, %741 ]
  %933 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %932
  %934 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %932, i32 2
  %935 = load i32, ptr %934, align 8, !tbaa !180
  %936 = call i32 @reg_class_subset_p(i32 noundef %653, i32 noundef %935) #24
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %942

938:                                              ; preds = %931
  %939 = load i32, ptr %934, align 8, !tbaa !180
  %940 = call i32 @reg_class_subset_p(i32 noundef %939, i32 noundef %653) #24
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1084, label %942

942:                                              ; preds = %938, %931
  %943 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %932, i32 11
  %944 = load ptr, ptr %943, align 8, !tbaa !182
  %945 = icmp eq ptr %944, null
  br i1 %945, label %957, label %946

946:                                              ; preds = %942
  %947 = sext i32 %653 to i64
  %948 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %947
  %949 = icmp eq ptr %594, null
  %950 = load i64, ptr %948, align 8, !tbaa !174
  %951 = call i32 @true_regnum(ptr noundef nonnull %944) #24
  %952 = zext nneg i32 %951 to i64
  %953 = shl nuw i64 1, %952
  %954 = and i64 %953, %950
  %955 = icmp ne i64 %954, 0
  %956 = and i1 %949, %955
  br i1 %956, label %959, label %1084

957:                                              ; preds = %942
  %958 = icmp eq ptr %594, null
  br i1 %958, label %959, label %1084

959:                                              ; preds = %957, %946
  %960 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %932, i32 1
  %961 = load ptr, ptr %960, align 8, !tbaa !184
  %962 = icmp eq ptr %961, null
  br i1 %962, label %963, label %1084

963:                                              ; preds = %959
  %964 = load ptr, ptr %933, align 8, !tbaa !183
  %965 = icmp eq ptr %964, null
  br i1 %965, label %1084, label %966

966:                                              ; preds = %963
  %967 = load i32, ptr %571, align 8
  %968 = and i32 %967, 65535
  %969 = icmp eq i32 %968, 37
  br i1 %969, label %970, label %1002

970:                                              ; preds = %966
  %971 = load i32, ptr %964, align 8
  %972 = and i32 %971, 65535
  %973 = zext nneg i32 %972 to i64
  %974 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %973
  %975 = load i32, ptr %974, align 4, !tbaa !106
  %976 = icmp eq i32 %975, 12
  br i1 %976, label %977, label %1002

977:                                              ; preds = %970
  %978 = getelementptr inbounds %struct.rtx_def, ptr %964, i64 0, i32 1
  %979 = load ptr, ptr %978, align 8, !tbaa !102
  %980 = icmp eq ptr %979, %571
  br i1 %980, label %1037, label %981

981:                                              ; preds = %977
  %982 = icmp eq ptr %979, null
  br i1 %982, label %1002, label %983

983:                                              ; preds = %981
  %984 = load i32, ptr %979, align 8
  %985 = and i32 %984, 65535
  %986 = icmp eq i32 %985, 37
  br i1 %986, label %987, label %993

987:                                              ; preds = %983
  %988 = getelementptr inbounds %struct.rtx_def, ptr %571, i64 0, i32 1
  %989 = getelementptr inbounds %struct.rtx_def, ptr %979, i64 0, i32 1
  %990 = load i32, ptr %989, align 8, !tbaa !102
  %991 = load i32, ptr %988, align 8, !tbaa !102
  %992 = icmp eq i32 %990, %991
  br i1 %992, label %1037, label %1002

993:                                              ; preds = %983
  %994 = call i32 @rtx_equal_p(ptr noundef nonnull %979, ptr noundef nonnull %571) #24
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1002, label %996

996:                                              ; preds = %993
  %997 = load ptr, ptr %933, align 8, !tbaa !183
  %998 = getelementptr inbounds %struct.rtx_def, ptr %997, i64 0, i32 1
  %999 = load ptr, ptr %998, align 8, !tbaa !102
  %1000 = call i32 @side_effects_p(ptr noundef %999) #24
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1037, label %1002

1002:                                             ; preds = %987, %996, %993, %981, %970, %966
  %1003 = load ptr, ptr %933, align 8, !tbaa !183
  %1004 = load i32, ptr %1003, align 8
  %1005 = and i32 %1004, 65535
  %1006 = icmp eq i32 %1005, 37
  br i1 %1006, label %1007, label %1084

1007:                                             ; preds = %1002
  %1008 = load i32, ptr %571, align 8
  %1009 = and i32 %1008, 65535
  %1010 = zext nneg i32 %1009 to i64
  %1011 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1010
  %1012 = load i32, ptr %1011, align 4, !tbaa !106
  %1013 = icmp eq i32 %1012, 12
  br i1 %1013, label %1014, label %1084

1014:                                             ; preds = %1007
  %1015 = getelementptr inbounds %struct.rtx_def, ptr %571, i64 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !102
  %1017 = icmp eq ptr %1016, %1003
  br i1 %1017, label %1037, label %1018

1018:                                             ; preds = %1014
  %1019 = icmp eq ptr %1016, null
  br i1 %1019, label %1084, label %1020

1020:                                             ; preds = %1018
  %1021 = load i32, ptr %1016, align 8
  %1022 = and i32 %1021, 65535
  %1023 = icmp eq i32 %1022, 37
  br i1 %1023, label %1024, label %1030

1024:                                             ; preds = %1020
  %1025 = getelementptr inbounds %struct.rtx_def, ptr %1016, i64 0, i32 1
  %1026 = load i32, ptr %1025, align 8, !tbaa !102
  %1027 = getelementptr inbounds %struct.rtx_def, ptr %1003, i64 0, i32 1
  %1028 = load i32, ptr %1027, align 8, !tbaa !102
  %1029 = icmp eq i32 %1026, %1028
  br i1 %1029, label %1037, label %1084

1030:                                             ; preds = %1020
  %1031 = call i32 @rtx_equal_p(ptr noundef nonnull %1016, ptr noundef nonnull %1003) #24
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1084, label %1033

1033:                                             ; preds = %1030
  %1034 = load ptr, ptr %1015, align 8, !tbaa !102
  %1035 = call i32 @side_effects_p(ptr noundef %1034) #24
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1037, label %1084

1037:                                             ; preds = %1033, %996, %1024, %1014, %987, %977
  %1038 = load ptr, ptr %960, align 8, !tbaa !184
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1053, label %1040

1040:                                             ; preds = %1037
  %1041 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %1042 = icmp sgt i32 %1041, 0
  br i1 %1042, label %1043, label %1053

1043:                                             ; preds = %1040
  %1044 = zext nneg i32 %1041 to i64
  br label %1048

1045:                                             ; preds = %1048
  %1046 = add nuw nsw i64 %1049, 1
  %1047 = icmp eq i64 %1046, %1044
  br i1 %1047, label %1053, label %1048, !llvm.loop !179

1048:                                             ; preds = %1043, %1045
  %1049 = phi i64 [ 0, %1043 ], [ %1046, %1045 ]
  %1050 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %1049
  %1051 = load ptr, ptr %1050, align 8, !tbaa !91
  %1052 = icmp eq ptr %1051, %1038
  br i1 %1052, label %1084, label %1045

1053:                                             ; preds = %1045, %1040, %1037
  %1054 = icmp eq i32 %10, 9
  br i1 %1054, label %1077, label %1055

1055:                                             ; preds = %1053
  %1056 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %932, i32 17
  %1057 = load i32, ptr %1056, align 4, !tbaa !185
  %1058 = icmp eq i32 %1057, 9
  br i1 %1058, label %1077, label %1059

1059:                                             ; preds = %1055
  %1060 = icmp eq i32 %1057, %10
  br i1 %1060, label %1061, label %1065

1061:                                             ; preds = %1059
  %1062 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %932, i32 12
  %1063 = load i32, ptr %1062, align 8, !tbaa !186
  %1064 = icmp eq i32 %1063, %9
  br i1 %1064, label %1077, label %1065

1065:                                             ; preds = %1061, %1059
  switch i32 %10, label %1084 [
    i32 0, label %1066
    i32 7, label %1069
    i32 10, label %1075
  ]

1066:                                             ; preds = %1065
  %1067 = icmp eq i32 %1057, 0
  br i1 %1067, label %1077, label %1068

1068:                                             ; preds = %1066
  switch i32 %10, label %1084 [
    i32 7, label %1069
    i32 10, label %1075
  ]

1069:                                             ; preds = %1068, %1065
  %1070 = icmp eq i32 %10, 10
  %1071 = icmp eq i32 %1057, 7
  %1072 = icmp eq i32 %1057, 10
  %1073 = and i1 %1070, %1072
  %1074 = or i1 %1071, %1073
  br i1 %1074, label %1077, label %1084

1075:                                             ; preds = %1068, %1065
  %1076 = icmp eq i32 %1057, 10
  br i1 %1076, label %1077, label %1084

1077:                                             ; preds = %1075, %1069, %1061, %1053, %1066, %1055
  %1078 = trunc i64 %932 to i32
  %1079 = load i32, ptr %571, align 8
  %1080 = and i32 %1079, 65535
  %1081 = icmp eq i32 %1080, 37
  br i1 %1081, label %1082, label %1091

1082:                                             ; preds = %1077
  %1083 = load ptr, ptr %933, align 8, !tbaa !183
  br label %1091

1084:                                             ; preds = %1048, %1069, %1024, %959, %1075, %1068, %1065, %1033, %1030, %1018, %1007, %1002, %963, %957, %946, %938
  %1085 = add nuw nsw i64 %932, 1
  %1086 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %1087 = sext i32 %1086 to i64
  %1088 = icmp slt i64 %1085, %1087
  br i1 %1088, label %931, label %1091, !prof !177, !llvm.loop !188

1089:                                             ; preds = %915, %904, %902, %910, %918, %924
  %1090 = trunc i64 %745 to i32
  br label %1091

1091:                                             ; preds = %1084, %1089, %741, %739, %1077, %1082
  %1092 = phi ptr [ %571, %739 ], [ %1083, %1082 ], [ %571, %1077 ], [ %571, %741 ], [ %571, %1089 ], [ %571, %1084 ]
  %1093 = phi i32 [ %740, %739 ], [ %1078, %1082 ], [ %1078, %1077 ], [ %742, %741 ], [ %1090, %1089 ], [ %1086, %1084 ]
  %1094 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %1095 = icmp eq i32 %1093, %1094
  br i1 %1095, label %1096, label %1191, !prof !173

1096:                                             ; preds = %1091
  %1097 = icmp eq ptr %1092, null
  br i1 %1097, label %1100, label %1098, !prof !159

1098:                                             ; preds = %1096
  %1099 = call fastcc i32 @push_secondary_reload(i32 noundef 1, ptr noundef nonnull %1092, i32 noundef %9, i32 noundef %8, i32 noundef %653, i32 noundef %717, i32 noundef %10, ptr noundef nonnull %16, ptr noundef null)
  br label %1100

1100:                                             ; preds = %1098, %1096
  %1101 = phi i32 [ %1099, %1098 ], [ -1, %1096 ]
  br i1 %600, label %1102, label %1108, !prof !159

1102:                                             ; preds = %1100
  %1103 = load i32, ptr %594, align 8
  %1104 = and i32 %1103, 65535
  %1105 = icmp eq i32 %1104, 38
  br i1 %1105, label %1108, label %1106, !prof !169

1106:                                             ; preds = %1102
  %1107 = call fastcc i32 @push_secondary_reload(i32 noundef 0, ptr noundef nonnull %594, i32 noundef %9, i32 noundef %8, i32 noundef %653, i32 noundef %716, i32 noundef %10, ptr noundef nonnull %17, ptr noundef null)
  br label %1108

1108:                                             ; preds = %1106, %1102, %1100
  %1109 = phi i32 [ %1107, %1106 ], [ -1, %1102 ], [ -1, %1100 ]
  br i1 %1097, label %1131, label %1110, !prof !159

1110:                                             ; preds = %1108
  %1111 = load i32, ptr %1092, align 8
  %1112 = trunc i32 %1111 to i16
  switch i16 %1112, label %1131 [
    i16 37, label %1119
    i16 39, label %1113
  ], !prof !189

1113:                                             ; preds = %1110
  %1114 = getelementptr inbounds %struct.rtx_def, ptr %1092, i64 0, i32 1
  %1115 = load ptr, ptr %1114, align 8, !tbaa !102
  %1116 = load i32, ptr %1115, align 8
  %1117 = and i32 %1116, 65535
  %1118 = icmp eq i32 %1117, 37
  br i1 %1118, label %1119, label %1131

1119:                                             ; preds = %1110, %1113
  %1120 = call i32 @reg_or_subregno(ptr noundef nonnull %1092) #24
  %1121 = icmp ult i32 %1120, 53
  br i1 %1121, label %1122, label %1131, !prof !161

1122:                                             ; preds = %1119
  %1123 = call i32 @reg_or_subregno(ptr noundef nonnull %1092) #24
  %1124 = zext i32 %1123 to i64
  %1125 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %1124
  %1126 = load i32, ptr %1125, align 4, !tbaa !106
  %1127 = call i32 @ix86_secondary_memory_needed(i32 noundef %1126, i32 noundef %653, i32 noundef %717, i32 noundef 1) #24
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1131, label %1129

1129:                                             ; preds = %1122
  %1130 = call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %717, i32 noundef %9, i32 noundef %10)
  br label %1131

1131:                                             ; preds = %1119, %1113, %1110, %1129, %1122, %1108
  %1132 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133
  store ptr %1092, ptr %1134, align 8, !tbaa !183
  %1135 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 1
  store ptr %594, ptr %1135, align 8, !tbaa !184
  %1136 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 2
  store i32 %653, ptr %1136, align 8, !tbaa !180
  %1137 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 3
  store i32 %717, ptr %1137, align 4, !tbaa !190
  %1138 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 4
  store i32 %716, ptr %1138, align 8, !tbaa !191
  %1139 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 11
  store ptr null, ptr %1139, align 8, !tbaa !182
  %1140 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 18
  %1141 = trunc i32 %8 to i8
  %1142 = load i8, ptr %1140, align 8
  %1143 = and i8 %1141, 1
  %1144 = and i8 %1142, -2
  %1145 = or disjoint i8 %1144, %1143
  store i8 %1145, ptr %1140, align 8
  %1146 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 7
  store i32 0, ptr %1146, align 4, !tbaa !192
  %1147 = and i8 %1145, -3
  store i8 %1147, ptr %1140, align 8
  %1148 = icmp eq ptr %259, null
  br i1 %1148, label %1151, label %1149, !prof !159

1149:                                             ; preds = %1131
  %1150 = load ptr, ptr %259, align 8, !tbaa !91
  br label %1151

1151:                                             ; preds = %1131, %1149
  %1152 = phi ptr [ %1150, %1149 ], [ null, %1131 ]
  %1153 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 8
  store ptr %1152, ptr %1153, align 8, !tbaa !193
  %1154 = icmp eq ptr %459, null
  br i1 %1154, label %1157, label %1155, !prof !168

1155:                                             ; preds = %1151
  %1156 = load ptr, ptr %459, align 8, !tbaa !91
  br label %1157

1157:                                             ; preds = %1151, %1155
  %1158 = phi ptr [ %1156, %1155 ], [ null, %1151 ]
  %1159 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 9
  store ptr %1158, ptr %1159, align 8, !tbaa !194
  %1160 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 12
  store i32 %9, ptr %1160, align 8, !tbaa !186
  %1161 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 17
  store i32 %10, ptr %1161, align 4, !tbaa !185
  %1162 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 13
  store i32 %1101, ptr %1162, align 4, !tbaa !195
  %1163 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 14
  store i32 %1109, ptr %1163, align 8, !tbaa !196
  %1164 = load i32, ptr %16, align 4, !tbaa !106
  %1165 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 15
  store i32 %1164, ptr %1165, align 4, !tbaa !197
  %1166 = load i32, ptr %17, align 4, !tbaa !106
  %1167 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1133, i32 16
  store i32 %1166, ptr %1167, align 8, !tbaa !198
  %1168 = and i8 %1145, -7
  store i8 %1168, ptr %1140, align 8
  %1169 = add nsw i32 %1132, 1
  store i32 %1169, ptr @n_reloads, align 4, !tbaa !106
  br i1 %600, label %1170, label %1366, !prof !159

1170:                                             ; preds = %1157
  %1171 = load i32, ptr %594, align 8
  %1172 = trunc i32 %1171 to i16
  switch i16 %1172, label %1366 [
    i16 37, label %1179
    i16 39, label %1173
  ], !prof !199

1173:                                             ; preds = %1170
  %1174 = getelementptr inbounds %struct.rtx_def, ptr %594, i64 0, i32 1
  %1175 = load ptr, ptr %1174, align 8, !tbaa !102
  %1176 = load i32, ptr %1175, align 8
  %1177 = and i32 %1176, 65535
  %1178 = icmp eq i32 %1177, 37
  br i1 %1178, label %1179, label %1366

1179:                                             ; preds = %1170, %1173
  %1180 = call i32 @reg_or_subregno(ptr noundef nonnull %594) #24
  %1181 = icmp ult i32 %1180, 53
  br i1 %1181, label %1182, label %1366, !prof !164

1182:                                             ; preds = %1179
  %1183 = call i32 @reg_or_subregno(ptr noundef nonnull %594) #24
  %1184 = zext i32 %1183 to i64
  %1185 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %1184
  %1186 = load i32, ptr %1185, align 4, !tbaa !106
  %1187 = call i32 @ix86_secondary_memory_needed(i32 noundef %653, i32 noundef %1186, i32 noundef %716, i32 noundef 1) #24
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1366, label %1189, !prof !200

1189:                                             ; preds = %1182
  %1190 = call ptr @get_secondary_mem(ptr nonnull poison, i32 noundef %716, i32 noundef %9, i32 noundef %10)
  br label %1366

1191:                                             ; preds = %1091
  %1192 = icmp eq i32 %717, 0
  br i1 %1192, label %1205, label %1193

1193:                                             ; preds = %1191
  %1194 = zext i32 %717 to i64
  %1195 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1194
  %1196 = load i8, ptr %1195, align 1, !tbaa !102
  %1197 = sext i32 %1093 to i64
  %1198 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1197, i32 3
  %1199 = load i32, ptr %1198, align 4, !tbaa !190
  %1200 = zext i32 %1199 to i64
  %1201 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1200
  %1202 = load i8, ptr %1201, align 1, !tbaa !102
  %1203 = icmp ugt i8 %1196, %1202
  br i1 %1203, label %1204, label %1205

1204:                                             ; preds = %1193
  store i32 %717, ptr %1198, align 4, !tbaa !190
  br label %1205

1205:                                             ; preds = %1204, %1193, %1191
  %1206 = icmp eq i32 %716, 0
  br i1 %1206, label %1219, label %1207

1207:                                             ; preds = %1205
  %1208 = zext i32 %716 to i64
  %1209 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1208
  %1210 = load i8, ptr %1209, align 1, !tbaa !102
  %1211 = sext i32 %1093 to i64
  %1212 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1211, i32 4
  %1213 = load i32, ptr %1212, align 8, !tbaa !191
  %1214 = zext i32 %1213 to i64
  %1215 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1214
  %1216 = load i8, ptr %1215, align 1, !tbaa !102
  %1217 = icmp ugt i8 %1210, %1216
  br i1 %1217, label %1218, label %1219

1218:                                             ; preds = %1207
  store i32 %716, ptr %1212, align 8, !tbaa !191
  br label %1219

1219:                                             ; preds = %1218, %1207, %1205
  %1220 = icmp eq ptr %1092, null
  br i1 %1220, label %1294, label %1221

1221:                                             ; preds = %1219
  %1222 = icmp eq ptr %259, null
  br i1 %1222, label %1225, label %1223

1223:                                             ; preds = %1221
  %1224 = load ptr, ptr %259, align 8, !tbaa !91
  br label %1225

1225:                                             ; preds = %1221, %1223
  %1226 = phi ptr [ %1224, %1223 ], [ null, %1221 ]
  %1227 = sext i32 %1093 to i64
  %1228 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1227
  %1229 = load ptr, ptr %1228, align 8, !tbaa !183
  %1230 = icmp eq ptr %1229, %1092
  br i1 %1230, label %1253, label %1231

1231:                                             ; preds = %1225
  %1232 = call i32 @rtx_equal_p(ptr noundef nonnull %1092, ptr noundef %1229) #24
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1253, label %1234

1234:                                             ; preds = %1231
  %1235 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1227, i32 18
  %1236 = load i8, ptr %1235, align 8
  %1237 = and i8 %1236, 1
  %1238 = icmp ne i8 %1237, 0
  %1239 = icmp ne i32 %8, 0
  %1240 = and i1 %1239, %1238
  br i1 %1240, label %1253, label %1241

1241:                                             ; preds = %1234
  %1242 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1227, i32 12
  %1243 = load i32, ptr %1242, align 8, !tbaa !186
  %1244 = icmp slt i32 %1243, %9
  br i1 %1244, label %1245, label %1250

1245:                                             ; preds = %1241
  %1246 = call i32 @remove_address_replacements(ptr noundef nonnull %1092), !range !201
  %1247 = load ptr, ptr %1228, align 8, !tbaa !183
  %1248 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1227, i32 8
  %1249 = load ptr, ptr %1248, align 8, !tbaa !193
  br label %1253

1250:                                             ; preds = %1241
  %1251 = load ptr, ptr %1228, align 8, !tbaa !183
  %1252 = call i32 @remove_address_replacements(ptr noundef %1251), !range !201
  br label %1253

1253:                                             ; preds = %1245, %1250, %1234, %1231, %1225
  %1254 = phi ptr [ %1092, %1225 ], [ %1092, %1231 ], [ %1092, %1234 ], [ %1247, %1245 ], [ %1092, %1250 ]
  %1255 = phi ptr [ %1226, %1225 ], [ %1226, %1231 ], [ %1226, %1234 ], [ %1249, %1245 ], [ %1226, %1250 ]
  %1256 = load ptr, ptr %1228, align 8, !tbaa !183
  %1257 = icmp eq ptr %1256, null
  br i1 %1257, label %1272, label %1258

1258:                                             ; preds = %1253
  %1259 = load i32, ptr %1254, align 8
  %1260 = lshr i32 %1259, 16
  %1261 = and i32 %1260, 255
  %1262 = zext nneg i32 %1261 to i64
  %1263 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1262
  %1264 = load i8, ptr %1263, align 1, !tbaa !102
  %1265 = load i32, ptr %1256, align 8
  %1266 = lshr i32 %1265, 16
  %1267 = and i32 %1266, 255
  %1268 = zext nneg i32 %1267 to i64
  %1269 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1268
  %1270 = load i8, ptr %1269, align 1, !tbaa !102
  %1271 = icmp ugt i8 %1264, %1270
  br i1 %1271, label %1272, label %1273

1272:                                             ; preds = %1258, %1253
  store ptr %1254, ptr %1228, align 8, !tbaa !183
  br label %1273

1273:                                             ; preds = %1272, %1258
  %1274 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1227, i32 8
  %1275 = load ptr, ptr %1274, align 8, !tbaa !193
  %1276 = icmp eq ptr %1275, null
  br i1 %1276, label %1293, label %1277

1277:                                             ; preds = %1273
  %1278 = icmp eq ptr %1255, null
  br i1 %1278, label %1294, label %1279

1279:                                             ; preds = %1277
  %1280 = load i32, ptr %1255, align 8
  %1281 = lshr i32 %1280, 16
  %1282 = and i32 %1281, 255
  %1283 = zext nneg i32 %1282 to i64
  %1284 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1283
  %1285 = load i8, ptr %1284, align 1, !tbaa !102
  %1286 = load i32, ptr %1275, align 8
  %1287 = lshr i32 %1286, 16
  %1288 = and i32 %1287, 255
  %1289 = zext nneg i32 %1288 to i64
  %1290 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1289
  %1291 = load i8, ptr %1290, align 1, !tbaa !102
  %1292 = icmp ugt i8 %1285, %1291
  br i1 %1292, label %1293, label %1294

1293:                                             ; preds = %1279, %1273
  store ptr %1255, ptr %1274, align 8, !tbaa !193
  br label %1294

1294:                                             ; preds = %1277, %1279, %1293, %1219
  %1295 = phi ptr [ %1092, %1219 ], [ %1254, %1293 ], [ %1254, %1277 ], [ %1254, %1279 ]
  br i1 %600, label %1296, label %1339

1296:                                             ; preds = %1294
  %1297 = sext i32 %1093 to i64
  %1298 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1297, i32 1
  %1299 = load ptr, ptr %1298, align 8, !tbaa !184
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1315, label %1301

1301:                                             ; preds = %1296
  %1302 = load i32, ptr %594, align 8
  %1303 = lshr i32 %1302, 16
  %1304 = and i32 %1303, 255
  %1305 = zext nneg i32 %1304 to i64
  %1306 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1305
  %1307 = load i8, ptr %1306, align 1, !tbaa !102
  %1308 = load i32, ptr %1299, align 8
  %1309 = lshr i32 %1308, 16
  %1310 = and i32 %1309, 255
  %1311 = zext nneg i32 %1310 to i64
  %1312 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1311
  %1313 = load i8, ptr %1312, align 1, !tbaa !102
  %1314 = icmp ugt i8 %1307, %1313
  br i1 %1314, label %1315, label %1316

1315:                                             ; preds = %1301, %1296
  store ptr %594, ptr %1298, align 8, !tbaa !184
  br label %1316

1316:                                             ; preds = %1315, %1301
  %1317 = icmp eq ptr %459, null
  br i1 %1317, label %1339, label %1318

1318:                                             ; preds = %1316
  %1319 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1297, i32 9
  %1320 = load ptr, ptr %1319, align 8, !tbaa !194
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1337, label %1322

1322:                                             ; preds = %1318
  %1323 = load ptr, ptr %459, align 8, !tbaa !91
  %1324 = load i32, ptr %1323, align 8
  %1325 = lshr i32 %1324, 16
  %1326 = and i32 %1325, 255
  %1327 = zext nneg i32 %1326 to i64
  %1328 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1327
  %1329 = load i8, ptr %1328, align 1, !tbaa !102
  %1330 = load i32, ptr %1320, align 8
  %1331 = lshr i32 %1330, 16
  %1332 = and i32 %1331, 255
  %1333 = zext nneg i32 %1332 to i64
  %1334 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1333
  %1335 = load i8, ptr %1334, align 1, !tbaa !102
  %1336 = icmp ugt i8 %1329, %1335
  br i1 %1336, label %1337, label %1339

1337:                                             ; preds = %1322, %1318
  %1338 = load ptr, ptr %459, align 8, !tbaa !91
  store ptr %1338, ptr %1319, align 8, !tbaa !194
  br label %1339

1339:                                             ; preds = %1316, %1322, %1337, %1294
  %1340 = sext i32 %1093 to i64
  %1341 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1340, i32 2
  %1342 = load i32, ptr %1341, align 8, !tbaa !180
  %1343 = call i32 @reg_class_subset_p(i32 noundef %653, i32 noundef %1342) #24
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1346, label %1345

1345:                                             ; preds = %1339
  store i32 %653, ptr %1341, align 8, !tbaa !180
  br label %1346

1346:                                             ; preds = %1345, %1339
  %1347 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1340, i32 18
  %1348 = load i8, ptr %1347, align 8
  %1349 = trunc i32 %8 to i8
  %1350 = or i8 %1349, -2
  %1351 = and i8 %1350, %1348
  store i8 %1351, ptr %1347, align 8
  %1352 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1340, i32 17
  %1353 = load i32, ptr %1352, align 4, !tbaa !185
  %1354 = icmp eq i32 %1353, %10
  br i1 %1354, label %1355, label %1361

1355:                                             ; preds = %1346
  %1356 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1340, i32 12
  %1357 = load i32, ptr %1356, align 8, !tbaa !186
  %1358 = freeze i32 %1357
  %1359 = icmp eq i32 %1358, %9
  br i1 %1359, label %1362, label %1360

1360:                                             ; preds = %1355
  switch i32 %10, label %1361 [
    i32 10, label %1362
    i32 7, label %1362
    i32 0, label %1362
  ]

1361:                                             ; preds = %1360, %1346
  store i32 9, ptr %1352, align 4, !tbaa !185
  br label %1362

1362:                                             ; preds = %1360, %1360, %1360, %1355, %1361
  %1363 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1340, i32 12
  %1364 = load i32, ptr %1363, align 8, !tbaa !186
  %1365 = call i32 @llvm.smin.i32(i32 %1364, i32 %9)
  store i32 %1365, ptr %1363, align 8, !tbaa !186
  br label %1366

1366:                                             ; preds = %1179, %1173, %1170, %1157, %1182, %1189, %1362
  %1367 = phi ptr [ %1092, %1170 ], [ %1092, %1182 ], [ %1092, %1189 ], [ %1092, %1157 ], [ %1295, %1362 ], [ %1092, %1173 ], [ %1092, %1179 ]
  %1368 = phi i32 [ %1132, %1170 ], [ %1132, %1182 ], [ %1132, %1189 ], [ %1132, %1157 ], [ %1093, %1362 ], [ %1132, %1173 ], [ %1132, %1179 ]
  %1369 = icmp eq ptr %1367, null
  br i1 %1369, label %1378, label %1370, !prof !159

1370:                                             ; preds = %1366
  %1371 = load ptr, ptr %259, align 8, !tbaa !91
  %1372 = icmp eq ptr %1367, %1371
  br i1 %1372, label %1378, label %1373, !prof !166

1373:                                             ; preds = %1370
  %1374 = sext i32 %1368 to i64
  %1375 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1374, i32 18
  %1376 = load i8, ptr %1375, align 8
  %1377 = or i8 %1376, 2
  store i8 %1377, ptr %1375, align 8
  br label %1378

1378:                                             ; preds = %1373, %1370, %1366
  %1379 = load i32, ptr @replace_reloads, align 4, !tbaa !106
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1403, label %1381, !prof !202

1381:                                             ; preds = %1378
  %1382 = icmp eq ptr %259, null
  br i1 %1382, label %1391, label %1383, !prof !203

1383:                                             ; preds = %1381
  %1384 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %1385 = add nsw i32 %1384, 1
  store i32 %1385, ptr @n_replacements, align 4, !tbaa !106
  %1386 = sext i32 %1384 to i64
  %1387 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1386
  %1388 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1386, i32 2
  store i32 %1368, ptr %1388, align 8, !tbaa !204
  %1389 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1386, i32 1
  store ptr %257, ptr %1389, align 8, !tbaa !206
  store ptr %259, ptr %1387, align 8, !tbaa !207
  %1390 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1386, i32 3
  store i32 %717, ptr %1390, align 4, !tbaa !208
  br label %1391

1391:                                             ; preds = %1383, %1381
  %1392 = icmp eq ptr %459, null
  %1393 = icmp eq ptr %459, %259
  %1394 = or i1 %1392, %1393
  br i1 %1394, label %1403, label %1395, !prof !209

1395:                                             ; preds = %1391
  %1396 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %1397 = add nsw i32 %1396, 1
  store i32 %1397, ptr @n_replacements, align 4, !tbaa !106
  %1398 = sext i32 %1396 to i64
  %1399 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1398
  %1400 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1398, i32 2
  store i32 %1368, ptr %1400, align 8, !tbaa !204
  store ptr %459, ptr %1399, align 8, !tbaa !207
  %1401 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1398, i32 1
  store ptr %458, ptr %1401, align 8, !tbaa !206
  %1402 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %1398, i32 3
  store i32 %716, ptr %1402, align 4, !tbaa !208
  br label %1403

1403:                                             ; preds = %1391, %1395, %1378
  %1404 = icmp ne ptr %1367, null
  %1405 = and i1 %600, %1404
  %1406 = xor i1 %1405, true
  %1407 = icmp eq ptr %1367, %594
  %1408 = select i1 %1406, i1 true, i1 %1407, !prof !173
  br i1 %1408, label %1451, label %1409, !prof !173

1409:                                             ; preds = %1403
  %1410 = sext i32 %1368 to i64
  %1411 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1410
  %1412 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1410, i32 11
  %1413 = load ptr, ptr %1412, align 8, !tbaa !182
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1415, label %1451

1415:                                             ; preds = %1409
  %1416 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1410, i32 2
  %1417 = load i32, ptr %1416, align 8, !tbaa !180
  %1418 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %1419 = icmp sgt i32 %1418, 0
  br i1 %1419, label %1420, label %1430

1420:                                             ; preds = %1415
  %1421 = zext nneg i32 %1418 to i64
  br label %1425

1422:                                             ; preds = %1425
  %1423 = add nuw nsw i64 %1426, 1
  %1424 = icmp eq i64 %1423, %1421
  br i1 %1424, label %1430, label %1425, !llvm.loop !179

1425:                                             ; preds = %1420, %1422
  %1426 = phi i64 [ 0, %1420 ], [ %1423, %1422 ]
  %1427 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %1426
  %1428 = load ptr, ptr %1427, align 8, !tbaa !91
  %1429 = icmp eq ptr %1428, %594
  br i1 %1429, label %1430, label %1422

1430:                                             ; preds = %1425, %1422, %1415
  %1431 = phi i32 [ 0, %1415 ], [ 1, %1425 ], [ 0, %1422 ]
  %1432 = call fastcc ptr @find_dummy_reload(ptr noundef nonnull %1367, ptr noundef %594, ptr noundef %259, ptr noundef %459, i32 noundef %717, i32 noundef %716, i32 noundef %1417, i32 noundef %1368, i32 noundef %1431)
  store ptr %1432, ptr %1412, align 8, !tbaa !182
  %1433 = icmp eq ptr %1432, %594
  br i1 %1433, label %1434, label %1451

1434:                                             ; preds = %1430
  %1435 = load i32, ptr %1367, align 8
  %1436 = and i32 %1435, 65535
  %1437 = icmp eq i32 %1436, 37
  br i1 %1437, label %1443, label %1438

1438:                                             ; preds = %1434
  %1439 = zext nneg i32 %1436 to i64
  %1440 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1439
  %1441 = load i32, ptr %1440, align 4, !tbaa !106
  %1442 = icmp eq i32 %1441, 9
  br i1 %1442, label %1443, label %1451

1443:                                             ; preds = %1438, %1434
  %1444 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %1445 = getelementptr inbounds %struct.rtx_def, ptr %594, i64 0, i32 1
  %1446 = load i32, ptr %1445, align 8, !tbaa !102
  %1447 = load ptr, ptr @static_reload_reg_p, align 8, !tbaa !91
  %1448 = call ptr @find_equiv_reg(ptr noundef nonnull %1367, ptr noundef %1444, i32 noundef 0, i32 noundef %1446, ptr noundef %1447, i32 noundef %1368, i32 noundef %717)
  %1449 = icmp eq ptr %1448, null
  br i1 %1449, label %1451, label %1450

1450:                                             ; preds = %1443
  store ptr %594, ptr %1411, align 8, !tbaa !183
  br label %1451

1451:                                             ; preds = %1438, %1430, %1443, %1450, %1409, %1403
  %1452 = sext i32 %1368 to i64
  %1453 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1452, i32 11
  %1454 = load ptr, ptr %1453, align 8, !tbaa !182
  %1455 = icmp eq ptr %1454, null
  %1456 = and i1 %1404, %1455
  %1457 = load i32, ptr @hard_regs_live_known, align 4
  %1458 = icmp ne i32 %1457, 0
  %1459 = select i1 %1456, i1 %1458, i1 false, !prof !168
  br i1 %1459, label %1460, label %1653, !prof !168

1460:                                             ; preds = %1451
  br i1 %600, label %1461, label %1470, !prof !165

1461:                                             ; preds = %1460
  %1462 = zext i32 %716 to i64
  %1463 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1462
  %1464 = load i8, ptr %1463, align 1, !tbaa !102
  %1465 = zext i32 %717 to i64
  %1466 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1465
  %1467 = load i8, ptr %1466, align 1, !tbaa !102
  %1468 = icmp ugt i8 %1464, %1467
  %1469 = select i1 %1468, i32 %716, i32 %717
  br label %1470

1470:                                             ; preds = %1461, %1460
  %1471 = phi i32 [ %717, %1460 ], [ %1469, %1461 ]
  %1472 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %1473 = getelementptr inbounds %struct.rtx_def, ptr %1472, i64 1, i32 1, i32 0, i32 0, i64 1
  %1474 = load ptr, ptr %1473, align 8, !tbaa !102
  %1475 = icmp eq ptr %1474, null
  br i1 %1475, label %1653, label %1476, !prof !210

1476:                                             ; preds = %1470, %1649
  %1477 = phi ptr [ %1651, %1649 ], [ %1474, %1470 ]
  %1478 = load i32, ptr %1477, align 8
  %1479 = and i32 %1478, 16711680
  %1480 = icmp eq i32 %1479, 65536
  br i1 %1480, label %1481, label %1649, !prof !211

1481:                                             ; preds = %1476
  %1482 = getelementptr inbounds %struct.rtx_def, ptr %1477, i64 0, i32 1
  %1483 = load ptr, ptr %1482, align 8, !tbaa !102
  %1484 = load i32, ptr %1483, align 8
  %1485 = and i32 %1484, 65535
  %1486 = icmp eq i32 %1485, 37
  br i1 %1486, label %1487, label %1649, !prof !212

1487:                                             ; preds = %1481
  %1488 = getelementptr inbounds %struct.rtx_def, ptr %1483, i64 0, i32 1
  %1489 = load i32, ptr %1488, align 8, !tbaa !102
  %1490 = icmp slt i32 %1489, 53
  br i1 %1490, label %1491, label %1649, !prof !213

1491:                                             ; preds = %1487
  %1492 = call i32 @reg_mentioned_p(ptr noundef nonnull %1483, ptr noundef nonnull %1367) #24
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1649, label %1494, !prof !214

1494:                                             ; preds = %1491
  %1495 = load ptr, ptr %1482, align 8, !tbaa !102
  %1496 = getelementptr inbounds %struct.rtx_def, ptr %1495, i64 0, i32 1, i32 0, i32 0, i64 1
  %1497 = load i32, ptr %1496, align 8, !tbaa !102
  %1498 = icmp ult i32 %1497, 53
  br i1 %1498, label %1531, label %1499, !prof !215

1499:                                             ; preds = %1494
  %1500 = load ptr, ptr @cfun, align 8, !tbaa !91
  %1501 = getelementptr inbounds %struct.function, ptr %1500, i64 0, i32 1
  %1502 = load ptr, ptr %1501, align 8, !tbaa !216
  %1503 = load ptr, ptr %1502, align 8, !tbaa !218
  %1504 = getelementptr inbounds %struct.basic_block_def, ptr %1503, i64 0, i32 9
  %1505 = load i32, ptr %1504, align 8, !tbaa !220
  %1506 = load ptr, ptr @df, align 8, !tbaa !91
  %1507 = getelementptr inbounds %struct.df, ptr %1506, i64 0, i32 1, i64 1
  %1508 = load ptr, ptr %1507, align 8, !tbaa !91
  %1509 = getelementptr inbounds %struct.dataflow, ptr %1508, i64 0, i32 2
  %1510 = load i32, ptr %1509, align 8, !tbaa !222
  %1511 = icmp ugt i32 %1510, %1505
  call void @llvm.assume(i1 %1511)
  %1512 = getelementptr inbounds %struct.dataflow, ptr %1508, i64 0, i32 1
  %1513 = load ptr, ptr %1512, align 8, !tbaa !224
  %1514 = zext i32 %1505 to i64
  %1515 = getelementptr inbounds ptr, ptr %1513, i64 %1514
  %1516 = load ptr, ptr %1515, align 8, !tbaa !91
  %1517 = getelementptr inbounds %struct.df_lr_bb_info, ptr %1516, i64 0, i32 3
  %1518 = load ptr, ptr %1517, align 8, !tbaa !225
  %1519 = call i32 @bitmap_bit_p(ptr noundef %1518, i32 noundef %1497) #24
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1521, label %1649, !prof !227

1521:                                             ; preds = %1499
  %1522 = sext i32 %1489 to i64
  %1523 = load ptr, ptr %1482, align 8, !tbaa !102
  %1524 = load i32, ptr %1523, align 8
  %1525 = lshr i32 %1524, 16
  %1526 = and i32 %1525, 255
  %1527 = zext nneg i32 %1526 to i64
  %1528 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1522, i64 %1527
  %1529 = load i8, ptr %1528, align 1, !tbaa !102
  %1530 = icmp eq i8 %1529, 1
  br i1 %1530, label %1531, label %1649, !prof !227

1531:                                             ; preds = %1521, %1494
  %1532 = sext i32 %1471 to i64
  %1533 = zext i32 %1489 to i64
  %1534 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1533, i64 %1532
  %1535 = load i8, ptr %1534, align 1, !tbaa !102
  %1536 = zext i8 %1535 to i32
  %1537 = add i32 %1489, %1536
  %1538 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %1539 = getelementptr inbounds %struct.rtx_def, ptr %1538, i64 1
  %1540 = load ptr, ptr %1539, align 8, !tbaa !102
  %1541 = call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1489, i32 noundef %1537, ptr noundef %1540, ptr noundef %259)
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1543, label %1649, !prof !227

1543:                                             ; preds = %1531
  %1544 = icmp eq ptr %594, null
  %1545 = or i1 %1544, %1407
  br i1 %1545, label %1555, label %1546, !prof !227

1546:                                             ; preds = %1543
  %1547 = load i8, ptr %1534, align 1, !tbaa !102
  %1548 = zext i8 %1547 to i32
  %1549 = add i32 %1489, %1548
  %1550 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %1551 = getelementptr inbounds %struct.rtx_def, ptr %1550, i64 1
  %1552 = load ptr, ptr %1551, align 8, !tbaa !102
  %1553 = call fastcc i32 @hard_reg_set_here_p(i32 noundef %1489, i32 noundef %1549, ptr noundef %1552), !range !201
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1555, label %1649

1555:                                             ; preds = %1546, %1543
  br i1 %1407, label %1556, label %1580, !prof !215

1556:                                             ; preds = %1555
  %1557 = load i32, ptr %1367, align 8
  %1558 = and i32 %1557, 65535
  %1559 = icmp eq i32 %1558, 39
  br i1 %1559, label %1560, label %1649

1560:                                             ; preds = %1556
  %1561 = getelementptr inbounds %struct.rtx_def, ptr %1367, i64 0, i32 1
  %1562 = lshr i32 %1557, 16
  %1563 = and i32 %1562, 255
  %1564 = zext nneg i32 %1563 to i64
  %1565 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1564
  %1566 = load i8, ptr %1565, align 1, !tbaa !102
  %1567 = zext i8 %1566 to i32
  %1568 = add nuw nsw i32 %1567, 3
  %1569 = load ptr, ptr %1561, align 8, !tbaa !102
  %1570 = load i32, ptr %1569, align 8
  %1571 = lshr i32 %1570, 16
  %1572 = and i32 %1571, 255
  %1573 = zext nneg i32 %1572 to i64
  %1574 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1573
  %1575 = load i8, ptr %1574, align 1, !tbaa !102
  %1576 = zext i8 %1575 to i32
  %1577 = add nuw nsw i32 %1576, 3
  %1578 = xor i32 %1577, %1568
  %1579 = icmp ult i32 %1578, 4
  br i1 %1579, label %1580, label %1649

1580:                                             ; preds = %1560, %1555
  %1581 = zext i32 %1471 to i64
  %1582 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1581
  %1583 = load i8, ptr %1582, align 1, !tbaa !102
  %1584 = load ptr, ptr %1482, align 8, !tbaa !102
  %1585 = load i32, ptr %1584, align 8
  %1586 = lshr i32 %1585, 16
  %1587 = and i32 %1586, 255
  %1588 = zext nneg i32 %1587 to i64
  %1589 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1588
  %1590 = load i8, ptr %1589, align 1, !tbaa !102
  %1591 = icmp ugt i8 %1583, %1590
  br i1 %1591, label %1649, label %1592, !prof !215

1592:                                             ; preds = %1580
  %1593 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1489, i32 noundef %717) #24
  %1594 = icmp eq i8 %1593, 0
  br i1 %1594, label %1649, label %1595, !prof !215

1595:                                             ; preds = %1592
  %1596 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %1489, i32 noundef %716) #24
  %1597 = icmp eq i8 %1596, 0
  br i1 %1597, label %1649, label %1598, !prof !227

1598:                                             ; preds = %1595
  %1599 = zext i32 %717 to i64
  %1600 = zext i32 %716 to i64
  %1601 = sext i32 %1489 to i64
  %1602 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1601, i64 %1599
  %1603 = load i8, ptr %1602, align 1, !tbaa !102
  %1604 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1601, i64 %1600
  %1605 = load i8, ptr %1604, align 1, !tbaa !102
  %1606 = call i8 @llvm.umax.i8(i8 %1603, i8 %1605)
  %1607 = zext i8 %1606 to i32
  %1608 = icmp eq i8 %1606, 0
  br i1 %1608, label %1633, label %1609

1609:                                             ; preds = %1598
  %1610 = sext i32 %653 to i64
  %1611 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %1610
  %1612 = zext i8 %1606 to i64
  br label %1613

1613:                                             ; preds = %1609, %1626
  %1614 = phi i64 [ 0, %1609 ], [ %1627, %1626 ]
  %1615 = trunc i64 %1614 to i32
  %1616 = add i32 %1489, %1615
  %1617 = zext i32 %1616 to i64
  %1618 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %1617
  %1619 = load i8, ptr %1618, align 1, !tbaa !102
  %1620 = icmp eq i8 %1619, 0
  br i1 %1620, label %1621, label %1629

1621:                                             ; preds = %1613
  %1622 = load i64, ptr %1611, align 8, !tbaa !174
  %1623 = shl nuw i64 1, %1617
  %1624 = and i64 %1622, %1623
  %1625 = icmp eq i64 %1624, 0
  br i1 %1625, label %1631, label %1626

1626:                                             ; preds = %1621
  %1627 = add nuw nsw i64 %1614, 1
  %1628 = icmp eq i64 %1627, %1612
  br i1 %1628, label %1633, label %1613, !llvm.loop !228

1629:                                             ; preds = %1613
  %1630 = trunc i64 %1614 to i32
  br label %1633

1631:                                             ; preds = %1621
  %1632 = trunc i64 %1614 to i32
  br label %1633

1633:                                             ; preds = %1629, %1631, %1626, %1598
  %1634 = phi i32 [ 0, %1598 ], [ %1630, %1629 ], [ %1632, %1631 ], [ %1607, %1626 ]
  %1635 = icmp eq i32 %1634, %1607
  br i1 %1635, label %1636, label %1649

1636:                                             ; preds = %1633
  %1637 = sext i32 %717 to i64
  %1638 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %1533, i64 %1637
  %1639 = load i8, ptr %1638, align 1, !tbaa !102
  %1640 = zext i8 %1639 to i32
  %1641 = add i32 %1489, %1640
  %1642 = call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %1489, i32 noundef %1641, ptr noundef nonnull %1367, ptr noundef null)
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1647, label %1644

1644:                                             ; preds = %1636
  %1645 = call fastcc i32 @can_reload_into(ptr noundef nonnull %1367, i32 noundef %1489, i32 noundef %717)
  %1646 = icmp eq i32 %1645, 0
  br i1 %1646, label %1649, label %1647

1647:                                             ; preds = %1644, %1636
  %1648 = call ptr @gen_rtx_REG(i32 noundef %1471, i32 noundef %1489) #24
  store ptr %1648, ptr %1453, align 8, !tbaa !182
  br label %1653

1649:                                             ; preds = %1644, %1633, %1560, %1521, %1476, %1481, %1487, %1491, %1499, %1531, %1546, %1556, %1580, %1592, %1595
  %1650 = getelementptr inbounds %struct.rtx_def, ptr %1477, i64 0, i32 1, i32 0, i32 0, i64 1
  %1651 = load ptr, ptr %1650, align 8, !tbaa !102
  %1652 = icmp eq ptr %1651, null
  br i1 %1652, label %1653, label %1476, !prof !229, !llvm.loop !230

1653:                                             ; preds = %1649, %1470, %1647, %1451
  br i1 %600, label %1654, label %1655, !prof !159

1654:                                             ; preds = %1653
  store i32 %1368, ptr @output_reloadnum, align 4, !tbaa !106
  br label %1655

1655:                                             ; preds = %709, %1653, %1654
  %1656 = phi i32 [ 0, %709 ], [ %1368, %1654 ], [ %1368, %1653 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #24
  ret i32 %1656
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 !prof !90 !PGOFuncName !231 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %51, !prof !158

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !106
  %15 = icmp eq i32 %14, 9
  %16 = icmp eq i32 %11, 49
  %17 = or i1 %15, %16
  br i1 %17, label %51, label %18

18:                                               ; preds = %7
  %19 = icmp eq i32 %11, 37
  br i1 %19, label %20, label %51

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !102
  %23 = icmp ugt i32 %22, 52
  br i1 %23, label %51, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @subreg_regno(ptr noundef nonnull %0) #24
  %26 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %25, i32 noundef %1) #24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = zext i32 %1 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !102
  %32 = icmp ult i8 %31, 5
  %33 = icmp ne i32 %2, 0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load i32, ptr %9, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !102
  %42 = icmp ugt i8 %41, 4
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = lshr i8 %41, 2
  %45 = load i32, ptr %21, align 8, !tbaa !102
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %46, i64 %39
  %48 = load i8, ptr %47, align 1, !tbaa !102
  %49 = icmp ne i8 %44, %48
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %28, %35, %43, %24, %18, %20, %7, %3
  %52 = phi i32 [ 0, %3 ], [ 1, %7 ], [ 0, %20 ], [ 0, %18 ], [ 1, %24 ], [ 0, %35 ], [ 0, %28 ], [ %50, %43 ]
  ret i32 %52
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @find_valid_class(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !90 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = sub nsw i32 53, %2
  %9 = icmp slt i32 %2, 53
  %10 = sext i32 %2 to i64
  %11 = sext i32 %8 to i64
  br label %12

12:                                               ; preds = %4, %72
  %13 = phi i64 [ 1, %4 ], [ %76, %72 ]
  %14 = phi i32 [ -1, %4 ], [ %75, %72 ]
  %15 = phi i32 [ 0, %4 ], [ %74, %72 ]
  %16 = phi i32 [ 0, %4 ], [ %73, %72 ]
  br i1 %9, label %17, label %49

17:                                               ; preds = %12
  %18 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %13
  br label %19

19:                                               ; preds = %17, %42
  %20 = phi i64 [ 0, %17 ], [ %45, %42 ]
  %21 = phi i32 [ 0, %17 ], [ %44, %42 ]
  %22 = phi i32 [ 0, %17 ], [ %43, %42 ]
  %23 = load i64, ptr %18, align 8, !tbaa !174
  %24 = shl nuw i64 1, %20
  %25 = and i64 %23, %24
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %19
  %28 = trunc i64 %20 to i32
  %29 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %28, i32 noundef %1) #24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load i64, ptr %18, align 8, !tbaa !174
  %33 = add nsw i64 %20, %10
  %34 = shl nuw i64 1, %33
  %35 = and i64 %32, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = trunc i64 %33 to i32
  %39 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %38, i32 noundef %0) #24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %19, %37, %41, %27
  %43 = phi i32 [ %22, %37 ], [ 1, %41 ], [ %22, %27 ], [ %22, %19 ]
  %44 = phi i32 [ 1, %37 ], [ 1, %41 ], [ %21, %27 ], [ %21, %19 ]
  %45 = add nuw nsw i64 %20, 1
  %46 = icmp slt i64 %45, %11
  %47 = icmp eq i32 %43, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %19, label %49, !llvm.loop !232

49:                                               ; preds = %42, %12
  %50 = phi i32 [ 0, %12 ], [ %44, %42 ]
  %51 = phi i1 [ true, %12 ], [ %47, %42 ]
  %52 = icmp ne i32 %50, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = trunc i64 %13 to i32
  %56 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %55, i32 noundef %7) #24
  %57 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %13
  %58 = load i32, ptr %57, align 4, !tbaa !106
  %59 = icmp ugt i32 %58, %15
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = icmp slt i32 %14, 0
  %62 = icmp sge i32 %14, %56
  %63 = select i1 %61, i1 true, i1 %62
  %64 = icmp sgt i32 %14, %56
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %68, label %72

66:                                               ; preds = %54
  %67 = icmp sgt i32 %14, %56
  br i1 %67, label %68, label %72

68:                                               ; preds = %66, %60
  %69 = trunc i64 %13 to i32
  %70 = tail call i32 @ix86_register_move_cost(i32 noundef %0, i32 noundef %69, i32 noundef %7) #24
  %71 = trunc i64 %13 to i32
  br label %72

72:                                               ; preds = %66, %68, %60, %49
  %73 = phi i32 [ %16, %49 ], [ %71, %68 ], [ %16, %60 ], [ %16, %66 ]
  %74 = phi i32 [ %15, %49 ], [ %58, %68 ], [ %15, %60 ], [ %15, %66 ]
  %75 = phi i32 [ %14, %49 ], [ %70, %68 ], [ %14, %60 ], [ %14, %66 ]
  %76 = add nuw nsw i64 %13, 1
  %77 = icmp eq i64 %76, 27
  br i1 %77, label %78, label %12, !llvm.loop !233

78:                                               ; preds = %72
  %79 = icmp eq i32 %74, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 704, ptr noundef nonnull @.str.1) #24
  br label %81

81:                                               ; preds = %78, %80
  ret i32 %73
}

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !234 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %11, label %6, !prof !235

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !106
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %14, !prof !235

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %0, %6 ]
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %115, label %22, !prof !235

22:                                               ; preds = %14
  %23 = load i32, ptr %1, align 8
  %24 = and i32 %23, 65535
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !106
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %115, label %29, !prof !236

29:                                               ; preds = %22
  %30 = icmp eq i32 %17, 39
  br i1 %30, label %31, label %39, !prof !237

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1), !range !201
  br label %115

39:                                               ; preds = %31, %29
  %40 = trunc i32 %16 to i16
  switch i16 %40, label %98 [
    i16 39, label %41
    i16 37, label %66
    i16 43, label %94
    i16 38, label %96
    i16 36, label %96
    i16 46, label %96
    i16 49, label %99
  ], !prof !238

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !102
  %46 = icmp slt i32 %45, 53
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, ptr %43, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load i32, ptr %51, align 8, !tbaa !102
  %53 = lshr i32 %16, 16
  %54 = and i32 %53, 255
  %55 = tail call i32 @subreg_regno_offset(i32 noundef %45, i32 noundef %50, i32 noundef %52, i32 noundef %54) #24
  %56 = add i32 %55, %45
  br label %57

57:                                               ; preds = %47, %41
  %58 = phi i32 [ %56, %47 ], [ %45, %41 ]
  %59 = icmp slt i32 %58, 53
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call i32 @subreg_nregs(ptr noundef nonnull %15) #24
  br label %62

62:                                               ; preds = %57, %60
  %63 = phi i32 [ %61, %60 ], [ 1, %57 ]
  %64 = add i32 %63, %58
  %65 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %58, i32 noundef %64, ptr noundef nonnull %1, ptr noundef null)
  br label %115

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !102
  %69 = icmp sgt i32 %68, 52
  br i1 %69, label %70, label %84, !prof !237

70:                                               ; preds = %66
  %71 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %72 = zext nneg i32 %68 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1), !range !201
  br label %115

78:                                               ; preds = %70
  %79 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %80 = getelementptr inbounds ptr, ptr %79, i64 %72
  %81 = load ptr, ptr %80, align 8, !tbaa !91
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %115

83:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6637, ptr noundef nonnull @.str.1) #24
  br label %115

84:                                               ; preds = %66
  %85 = lshr i32 %16, 16
  %86 = and i32 %85, 255
  %87 = zext i32 %68 to i64
  %88 = zext nneg i32 %86 to i64
  %89 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %87, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !102
  %91 = zext i8 %90 to i32
  %92 = add i32 %68, %91
  %93 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %68, i32 noundef %92, ptr noundef nonnull %1, ptr noundef null)
  br label %115

94:                                               ; preds = %39
  %95 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %1), !range !201
  br label %115

96:                                               ; preds = %39, %39, %39
  %97 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %15, ptr noundef nonnull %1) #24
  br label %115

98:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6652, ptr noundef nonnull @.str.1) #24
  br label %99

99:                                               ; preds = %39, %98
  br label %100

100:                                              ; preds = %99, %104
  %101 = phi ptr [ %106, %104 ], [ %1, %99 ]
  %102 = load i32, ptr %101, align 8
  %103 = trunc i32 %102 to i16
  switch i16 %103, label %123 [
    i16 43, label %104
    i16 37, label %115
    i16 49, label %107
  ]

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  br label %100, !llvm.loop !239

107:                                              ; preds = %100
  %108 = tail call i32 @rtx_equal_p(ptr noundef nonnull %15, ptr noundef nonnull %101) #24
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !102
  %113 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %15, ptr noundef %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %37, %62, %76, %84, %94, %96, %22, %14, %78, %83, %110, %107, %123, %100, %128, %117
  %116 = phi i32 [ %122, %117 ], [ %133, %128 ], [ %38, %37 ], [ %65, %62 ], [ %77, %76 ], [ %93, %84 ], [ %95, %94 ], [ %97, %96 ], [ 0, %22 ], [ 0, %14 ], [ 0, %78 ], [ 0, %83 ], [ 1, %110 ], [ 1, %107 ], [ 1, %123 ], [ 0, %100 ]
  ret i32 %116

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !102
  %120 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %15, ptr noundef %119)
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  br label %115

123:                                              ; preds = %100
  %124 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !102
  %126 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %125, ptr noundef nonnull %101)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %115

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !102
  %131 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %130, ptr noundef nonnull %101)
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  br label %115
}

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_preferred_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_preferred_output_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @push_secondary_reload(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr noundef %8) unnamed_addr #10 !prof !157 !PGOFuncName !240 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #24
  store i32 2956, ptr %10, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #24
  %12 = add i32 %6, -3
  %13 = icmp ult i32 %12, 4
  %14 = icmp eq i32 %0, 0
  %15 = select i1 %14, i32 5, i32 3, !prof !159
  %16 = select i1 %13, i32 %6, i32 %15, !prof !158
  store i32 2956, ptr %7, align 4, !tbaa !106
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %37, !prof !158

20:                                               ; preds = %9
  %21 = lshr i32 %17, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !102
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !102
  %34 = icmp ugt i8 %25, %33
  %35 = select i1 %34, i32 %30, i32 %5
  %36 = select i1 %34, ptr %27, ptr %1
  br label %37

37:                                               ; preds = %20, %9
  %38 = phi i32 [ %5, %9 ], [ %35, %20 ]
  %39 = phi ptr [ %1, %9 ], [ %36, %20 ]
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %54, !prof !241

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !102
  %46 = icmp ugt i32 %45, 52
  br i1 %46, label %47, label %54, !prof !242

47:                                               ; preds = %43
  %48 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %49 = zext i32 %45 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !91
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr %39, ptr %51, !prof !243
  br label %54

54:                                               ; preds = %47, %43, %37
  %55 = phi ptr [ %39, %43 ], [ %39, %37 ], [ %53, %47 ]
  store i32 2956, ptr %11, align 8, !tbaa !110
  %56 = getelementptr inbounds %struct.secondary_reload_info, ptr %11, i64 0, i32 2
  store ptr %8, ptr %56, align 8, !tbaa !112
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !113
  %58 = trunc i32 %0 to i8
  %59 = call i32 %57(i8 noundef zeroext %58, ptr noundef %55, i32 noundef %4, i32 noundef %38, ptr noundef nonnull %11) #24, !prof !244
  %60 = load i32, ptr %11, align 8, !tbaa !110
  %61 = icmp eq i32 %59, 0
  %62 = icmp eq i32 %60, 2956
  %63 = select i1 %61, i1 %62, i1 false, !prof !173
  br i1 %63, label %272, label %64, !prof !173

64:                                               ; preds = %54
  br i1 %61, label %67, label %65

65:                                               ; preds = %64
  %66 = call fastcc i32 @push_secondary_reload(i32 noundef %0, ptr noundef %55, i32 noundef %2, i32 noundef %3, i32 noundef %59, i32 noundef %38, i32 noundef %6, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ %66, %65 ], [ -1, %64 ]
  %69 = icmp ne i32 %60, 2956
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = sext i32 %60 to i64
  %72 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %71, i32 4
  %73 = load i8, ptr %72, align 8, !tbaa !125
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
  %80 = load ptr, ptr %79, align 8, !tbaa !127
  %81 = getelementptr inbounds %struct.insn_operand_data, ptr %80, i64 2, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !128
  %83 = load i8, ptr %82, align 1, !tbaa !102
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #24
  br label %86

86:                                               ; preds = %78, %85
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !102
  %89 = icmp eq i8 %88, 38
  %90 = getelementptr inbounds i8, ptr %82, i64 2
  %91 = select i1 %89, ptr %90, ptr %87
  %92 = load i8, ptr %91, align 1, !tbaa !102
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
  %114 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %219

116:                                              ; preds = %113
  %117 = load i32, ptr %10, align 4
  %118 = icmp eq i32 %16, 9
  br label %119

119:                                              ; preds = %116, %212
  %120 = phi i64 [ 0, %116 ], [ %213, %212 ]
  %121 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 18
  %122 = load i8, ptr %121, align 8
  %123 = and i8 %122, 4
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %212, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !180
  %128 = call i32 @reg_class_subset_p(i32 noundef %103, i32 noundef %127) #24
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, ptr %126, align 8, !tbaa !180
  %132 = call i32 @reg_class_subset_p(i32 noundef %131, i32 noundef %103) #24
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %212, label %134

134:                                              ; preds = %130, %125
  br i1 %105, label %135, label %139

135:                                              ; preds = %134
  %136 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !190
  %138 = icmp eq i32 %137, %104
  br i1 %138, label %143, label %212

139:                                              ; preds = %134
  %140 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 4
  %141 = load i32, ptr %140, align 8, !tbaa !191
  %142 = icmp eq i32 %141, %104
  br i1 %142, label %143, label %212

143:                                              ; preds = %139, %135
  br i1 %105, label %144, label %148

144:                                              ; preds = %143
  %145 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 13
  %146 = load i32, ptr %145, align 4, !tbaa !195
  %147 = icmp eq i32 %146, %68
  br i1 %147, label %152, label %212

148:                                              ; preds = %143
  %149 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 14
  %150 = load i32, ptr %149, align 8, !tbaa !196
  %151 = icmp eq i32 %150, %68
  br i1 %151, label %152, label %212

152:                                              ; preds = %148, %144
  br i1 %105, label %153, label %157

153:                                              ; preds = %152
  %154 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 15
  %155 = load i32, ptr %154, align 4, !tbaa !197
  %156 = icmp eq i32 %155, %117
  br i1 %156, label %161, label %212

157:                                              ; preds = %152
  %158 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 16
  %159 = load i32, ptr %158, align 8, !tbaa !198
  %160 = icmp eq i32 %159, %117
  br i1 %160, label %161, label %212

161:                                              ; preds = %157, %153
  br i1 %118, label %184, label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 17
  %164 = load i32, ptr %163, align 4, !tbaa !185
  %165 = icmp eq i32 %164, 9
  br i1 %165, label %184, label %166

166:                                              ; preds = %162
  %167 = icmp eq i32 %16, %164
  br i1 %167, label %168, label %172

168:                                              ; preds = %166
  %169 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 12
  %170 = load i32, ptr %169, align 8, !tbaa !186
  %171 = icmp eq i32 %170, %2
  br i1 %171, label %184, label %172

172:                                              ; preds = %168, %166
  switch i32 %16, label %212 [
    i32 0, label %173
    i32 7, label %176
    i32 10, label %182
  ]

173:                                              ; preds = %172
  %174 = icmp eq i32 %164, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %173
  switch i32 %16, label %212 [
    i32 7, label %176
    i32 10, label %182
  ]

176:                                              ; preds = %175, %172
  %177 = icmp eq i32 %16, 10
  %178 = icmp eq i32 %164, 7
  %179 = icmp eq i32 %164, 10
  %180 = and i1 %177, %179
  %181 = or i1 %178, %180
  br i1 %181, label %184, label %212

182:                                              ; preds = %175, %172
  %183 = icmp eq i32 %164, 10
  br i1 %183, label %184, label %212

184:                                              ; preds = %182, %176, %168, %173, %162, %161
  %185 = trunc i64 %120 to i32
  br i1 %105, label %186, label %188

186:                                              ; preds = %184
  %187 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 3
  store i32 %104, ptr %187, align 4, !tbaa !190
  br label %190

188:                                              ; preds = %184
  %189 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 4
  store i32 %104, ptr %189, align 8, !tbaa !191
  br label %190

190:                                              ; preds = %186, %188
  %191 = load i32, ptr %126, align 8, !tbaa !180
  %192 = call i32 @reg_class_subset_p(i32 noundef %103, i32 noundef %191) #24
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  store i32 %103, ptr %126, align 8, !tbaa !180
  br label %195

195:                                              ; preds = %194, %190
  %196 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 12
  %197 = load i32, ptr %196, align 8, !tbaa !186
  %198 = freeze i32 %197
  %199 = call i32 @llvm.smin.i32(i32 %198, i32 %2)
  store i32 %199, ptr %196, align 8, !tbaa !186
  %200 = load i8, ptr %121, align 8
  %201 = trunc i32 %3 to i8
  %202 = or i8 %201, -6
  %203 = and i8 %200, %202
  %204 = or i8 %203, 4
  store i8 %204, ptr %121, align 8
  %205 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %120, i32 17
  %206 = load i32, ptr %205, align 4, !tbaa !185
  %207 = icmp eq i32 %16, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %195
  %209 = icmp slt i32 %198, %2
  br i1 %209, label %210, label %219

210:                                              ; preds = %208
  switch i32 %16, label %211 [
    i32 10, label %219
    i32 7, label %219
    i32 0, label %219
  ]

211:                                              ; preds = %210, %195
  store i32 9, ptr %205, align 4, !tbaa !185
  br label %219

212:                                              ; preds = %176, %157, %148, %139, %153, %144, %135, %172, %175, %119, %130, %182
  %213 = add nuw nsw i64 %120, 1
  %214 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %213, %215
  br i1 %216, label %119, label %217, !llvm.loop !245

217:                                              ; preds = %212
  %218 = trunc i64 %213 to i32
  br label %219

219:                                              ; preds = %217, %113, %210, %210, %210, %208, %211
  %220 = phi i32 [ %185, %210 ], [ %185, %210 ], [ %185, %210 ], [ %185, %208 ], [ %185, %211 ], [ 0, %113 ], [ %218, %217 ]
  %221 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %270

223:                                              ; preds = %219
  %224 = select i1 %105, i1 %62, i1 false
  br i1 %224, label %225, label %231

225:                                              ; preds = %223
  %226 = call i32 @ix86_secondary_memory_needed(i32 noundef %103, i32 noundef %4, i32 noundef %104, i32 noundef 1) #24
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = call ptr @get_secondary_mem(ptr poison, i32 noundef %38, i32 noundef %2, i32 noundef %6)
  %230 = load i32, ptr @n_reloads, align 4, !tbaa !106
  br label %231

231:                                              ; preds = %228, %225, %223
  %232 = phi i32 [ %230, %228 ], [ %220, %225 ], [ %220, %223 ]
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233
  %235 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %234, i8 0, i64 16, i1 false)
  store i32 %103, ptr %235, align 8, !tbaa !180
  %236 = select i1 %105, i32 %104, i32 0
  %237 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 3
  store i32 %236, ptr %237, align 4, !tbaa !190
  %238 = select i1 %105, i32 0, i32 %104
  %239 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 4
  store i32 %238, ptr %239, align 8, !tbaa !191
  %240 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 11
  store ptr null, ptr %240, align 8, !tbaa !182
  %241 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 18
  %242 = trunc i32 %3 to i8
  %243 = load i8, ptr %241, align 8
  %244 = and i8 %242, 1
  %245 = and i8 %243, -2
  %246 = or disjoint i8 %245, %244
  store i8 %246, ptr %241, align 8
  %247 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 7
  store i32 0, ptr %247, align 4, !tbaa !192
  %248 = or i8 %246, 2
  store i8 %248, ptr %241, align 8
  %249 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 8
  %250 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %249, i8 0, i64 16, i1 false)
  store i32 %2, ptr %250, align 8, !tbaa !186
  %251 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 17
  store i32 %16, ptr %251, align 4, !tbaa !185
  %252 = select i1 %105, i32 %68, i32 -1
  %253 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 13
  store i32 %252, ptr %253, align 4, !tbaa !195
  %254 = select i1 %105, i32 -1, i32 %68
  %255 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 14
  store i32 %254, ptr %255, align 8, !tbaa !196
  %256 = load i32, ptr %10, align 4
  %257 = select i1 %105, i32 %256, i32 2956
  %258 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 15
  store i32 %257, ptr %258, align 4, !tbaa !197
  %259 = select i1 %105, i32 2956, i32 %256
  %260 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %233, i32 16
  store i32 %259, ptr %260, align 8, !tbaa !198
  %261 = or i8 %246, 6
  store i8 %261, ptr %241, align 8
  %262 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr @n_reloads, align 4, !tbaa !106
  %264 = select i1 %14, i1 %62, i1 false
  br i1 %264, label %265, label %270

265:                                              ; preds = %231
  %266 = call i32 @ix86_secondary_memory_needed(i32 noundef %4, i32 noundef %103, i32 noundef %104, i32 noundef 1) #24
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = call ptr @get_secondary_mem(ptr poison, i32 noundef %104, i32 noundef %2, i32 noundef %6)
  br label %270

270:                                              ; preds = %231, %265, %268, %219
  %271 = phi i32 [ %232, %268 ], [ %232, %265 ], [ %232, %231 ], [ %220, %219 ]
  store i32 %60, ptr %7, align 4, !tbaa !106
  br label %272

272:                                              ; preds = %54, %270
  %273 = phi i32 [ %271, %270 ], [ -1, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #24
  ret i32 %273
}

declare i32 @reg_or_subregno(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_secondary_memory_needed(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @remove_address_replacements(ptr noundef %0) local_unnamed_addr #9 !prof !90 {
  %2 = alloca [180 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(180) %2, i8 0, i64 180, i1 false)
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1, %16
  %6 = phi i64 [ %25, %16 ], [ 0, %1 ]
  %7 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %8 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !207
  %10 = tail call i32 @loc_mentioned_in_p(ptr noundef %9, ptr noundef %0) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = add nsw i32 %7, 1
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !246
  br label %16

16:                                               ; preds = %5, %12
  %17 = phi i8 [ 2, %12 ], [ 1, %5 ]
  %18 = phi i32 [ %13, %12 ], [ %7, %5 ]
  %19 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %6, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !204
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [180 x i8], ptr %2, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !102
  %24 = or i8 %23, %17
  store i8 %24, ptr %22, align 1, !tbaa !102
  %25 = add nuw nsw i64 %6, 1
  %26 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %5, label %29, !llvm.loop !247

29:                                               ; preds = %16, %1
  %30 = phi i32 [ 0, %1 ], [ %18, %16 ]
  store i32 %30, ptr @n_replacements, align 4, !tbaa !106
  %31 = load i32, ptr @n_reloads, align 4, !tbaa !106
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
  %40 = load i8, ptr %39, align 1, !tbaa !102
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = trunc i64 %38 to i32
  tail call void @deallocate_reload_reg(i32 noundef %43) #24
  %44 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %38
  %45 = load ptr, ptr %44, align 8, !tbaa !183
  %46 = tail call i32 @remove_address_replacements(ptr noundef %45), !range !201
  store ptr null, ptr %44, align 8, !tbaa !183
  br label %47

47:                                               ; preds = %35, %42
  %48 = phi i32 [ 1, %42 ], [ %37, %35 ]
  %49 = icmp sgt i64 %36, 1
  br i1 %49, label %35, label %50, !llvm.loop !248

50:                                               ; preds = %47, %29
  %51 = phi i32 [ 0, %29 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %2) #24
  ret i32 %51
}

declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_dummy_reload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #13 !prof !249 !PGOFuncName !250 {
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !102
  %13 = zext i32 %4 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !102
  %16 = icmp eq i8 %12, %15
  br i1 %16, label %21, label %17, !prof !251

17:                                               ; preds = %9
  %18 = icmp ugt i8 %12, 4
  %19 = icmp ugt i8 %15, 4
  %20 = or i1 %18, %19
  br i1 %20, label %278, label %21

21:                                               ; preds = %17, %9
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %31, label %25, !prof !177

25:                                               ; preds = %53, %21
  %26 = phi i32 [ 0, %21 ], [ %54, %53 ]
  %27 = phi ptr [ %1, %21 ], [ %55, %53 ]
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 39
  br i1 %30, label %59, label %87, !prof !177

31:                                               ; preds = %21, %53
  %32 = phi i32 [ %56, %53 ], [ %22, %21 ]
  %33 = phi ptr [ %55, %53 ], [ %1, %21 ]
  %34 = phi i32 [ %54, %53 ], [ 0, %21 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !102
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %53

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !102
  %43 = icmp ult i32 %42, 53
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = lshr i32 %37, 16
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load i32, ptr %47, align 8, !tbaa !102
  %49 = lshr i32 %32, 16
  %50 = and i32 %49, 255
  %51 = tail call i32 @subreg_regno_offset(i32 noundef %42, i32 noundef %46, i32 noundef %48, i32 noundef %50) #24
  %52 = add i32 %51, %34
  br label %53

53:                                               ; preds = %44, %40, %31
  %54 = phi i32 [ %52, %44 ], [ %34, %40 ], [ %34, %31 ]
  %55 = load ptr, ptr %35, align 8, !tbaa !102
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 39
  br i1 %58, label %31, label %25, !prof !177, !llvm.loop !252

59:                                               ; preds = %25, %81
  %60 = phi i32 [ %84, %81 ], [ %28, %25 ]
  %61 = phi ptr [ %83, %81 ], [ %0, %25 ]
  %62 = phi i32 [ %82, %81 ], [ 0, %25 ]
  %63 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 37
  br i1 %67, label %68, label %81

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !102
  %71 = icmp ult i32 %70, 53
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = lshr i32 %65, 16
  %74 = and i32 %73, 255
  %75 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load i32, ptr %75, align 8, !tbaa !102
  %77 = lshr i32 %60, 16
  %78 = and i32 %77, 255
  %79 = tail call i32 @subreg_regno_offset(i32 noundef %70, i32 noundef %74, i32 noundef %76, i32 noundef %78) #24
  %80 = add i32 %79, %62
  br label %81

81:                                               ; preds = %72, %68, %59
  %82 = phi i32 [ %80, %72 ], [ %62, %68 ], [ %62, %59 ]
  %83 = load ptr, ptr %63, align 8, !tbaa !102
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 39
  br i1 %86, label %59, label %87, !prof !177, !llvm.loop !253

87:                                               ; preds = %81, %25
  %88 = phi i32 [ 0, %25 ], [ %82, %81 ]
  %89 = phi ptr [ %0, %25 ], [ %83, %81 ]
  %90 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %89, i32 noundef %6) #24
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 %6, i32 %90, !prof !254
  %93 = load i32, ptr %27, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 37
  br i1 %95, label %96, label %149, !prof !251

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !102
  %99 = icmp ult i32 %98, 53
  br i1 %99, label %100, label %149, !prof !251

100:                                              ; preds = %96
  %101 = add i32 %98, %26
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %102, i64 %10
  %104 = load i8, ptr %103, align 1, !tbaa !102
  %105 = zext i8 %104 to i32
  %106 = load ptr, ptr %2, align 8, !tbaa !91
  %107 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !91
  store ptr %107, ptr %2, align 8, !tbaa !91
  %108 = icmp ult i32 %101, 53
  br i1 %108, label %109, label %147, !prof !251

109:                                              ; preds = %100
  %110 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %101, i32 noundef %5) #24
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %147, label %112, !prof !254

112:                                              ; preds = %109
  %113 = add nuw nsw i32 %101, %105
  %114 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !102
  %117 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %101, i32 noundef %113, ptr noundef %116, ptr noundef %3)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %147, !prof !255

119:                                              ; preds = %112
  %120 = icmp eq i8 %104, 0
  br i1 %120, label %138, label %121, !prof !256

121:                                              ; preds = %119
  %122 = sext i32 %92 to i64
  %123 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !174
  %125 = zext nneg i32 %101 to i64
  %126 = zext i8 %104 to i64
  br label %127

127:                                              ; preds = %121, %133
  %128 = phi i64 [ 0, %121 ], [ %134, %133 ]
  %129 = add nuw nsw i64 %128, %125
  %130 = shl nuw i64 1, %129
  %131 = and i64 %124, %130
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %136, label %133, !prof !257

133:                                              ; preds = %127
  %134 = add nuw nsw i64 %128, 1
  %135 = icmp eq i64 %134, %126
  br i1 %135, label %138, label %127, !prof !258, !llvm.loop !259

136:                                              ; preds = %127
  %137 = trunc i64 %128 to i32
  br label %138

138:                                              ; preds = %136, %133, %119
  %139 = phi i32 [ 0, %119 ], [ %137, %136 ], [ %105, %133 ]
  %140 = icmp eq i32 %139, %105
  br i1 %140, label %141, label %147, !prof !260

141:                                              ; preds = %138
  %142 = load i32, ptr %1, align 8
  %143 = and i32 %142, 65535
  %144 = icmp eq i32 %143, 37
  br i1 %144, label %147, label %145, !prof !260

145:                                              ; preds = %141
  %146 = tail call ptr @gen_rtx_REG(i32 noundef %5, i32 noundef %101) #24
  br label %147

147:                                              ; preds = %138, %145, %141, %112, %109, %100
  %148 = phi ptr [ null, %112 ], [ null, %109 ], [ null, %100 ], [ %146, %145 ], [ %1, %141 ], [ null, %138 ]
  store ptr %106, ptr %2, align 8, !tbaa !91
  br label %149

149:                                              ; preds = %147, %96, %87
  %150 = phi ptr [ %148, %147 ], [ null, %96 ], [ null, %87 ]
  %151 = load i32, ptr @hard_regs_live_known, align 4, !tbaa !106
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %278, label %153, !prof !254

153:                                              ; preds = %149
  %154 = load i32, ptr %89, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 37
  br i1 %156, label %157, label %278, !prof !261

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %159 = load i32, ptr %158, align 8, !tbaa !102
  %160 = icmp ult i32 %159, 53
  br i1 %160, label %161, label %278, !prof !262

161:                                              ; preds = %157
  %162 = icmp eq ptr %150, null
  br i1 %162, label %167, label %163, !prof !263

163:                                              ; preds = %161
  %164 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %165 = tail call ptr @find_reg_note(ptr noundef %164, i32 noundef 6, ptr noundef nonnull %1) #24
  %166 = icmp eq ptr %165, null
  br i1 %166, label %278, label %167, !prof !264

167:                                              ; preds = %163, %161
  %168 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %169 = tail call ptr @find_reg_note(ptr noundef %168, i32 noundef 1, ptr noundef nonnull %0) #24
  %170 = icmp eq ptr %169, null
  br i1 %170, label %278, label %171, !prof !265

171:                                              ; preds = %167
  %172 = load i32, ptr %158, align 8, !tbaa !102
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !102
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %278, !prof !266

177:                                              ; preds = %171
  %178 = load i32, ptr %27, align 8
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, i32 %5, i32 %180, !prof !265
  %183 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %172, i32 noundef %182) #24
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %278, label %185, !prof !265

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %187 = load i32, ptr %186, align 8, !tbaa !102
  %188 = icmp ult i32 %187, 53
  br i1 %188, label %221, label %189, !prof !265

189:                                              ; preds = %185
  %190 = load ptr, ptr @cfun, align 8, !tbaa !91
  %191 = getelementptr inbounds %struct.function, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !216
  %193 = load ptr, ptr %192, align 8, !tbaa !218
  %194 = getelementptr inbounds %struct.basic_block_def, ptr %193, i64 0, i32 9
  %195 = load i32, ptr %194, align 8, !tbaa !220
  %196 = load ptr, ptr @df, align 8, !tbaa !91
  %197 = getelementptr inbounds %struct.df, ptr %196, i64 0, i32 1, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !91
  %199 = getelementptr inbounds %struct.dataflow, ptr %198, i64 0, i32 2
  %200 = load i32, ptr %199, align 8, !tbaa !222
  %201 = icmp ugt i32 %200, %195
  tail call void @llvm.assume(i1 %201)
  %202 = getelementptr inbounds %struct.dataflow, ptr %198, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !224
  %204 = zext i32 %195 to i64
  %205 = getelementptr inbounds ptr, ptr %203, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !91
  %207 = getelementptr inbounds %struct.df_lr_bb_info, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !225
  %209 = tail call i32 @bitmap_bit_p(ptr noundef %208, i32 noundef %187) #24
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %278, !prof !266

211:                                              ; preds = %189
  %212 = load i32, ptr %158, align 8, !tbaa !102
  %213 = zext i32 %212 to i64
  %214 = load i32, ptr %89, align 8
  %215 = lshr i32 %214, 16
  %216 = and i32 %215, 255
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %213, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !102
  %220 = icmp eq i8 %219, 1
  br i1 %220, label %221, label %278, !prof !266

221:                                              ; preds = %211, %185
  %222 = load i32, ptr %158, align 8, !tbaa !102
  %223 = add i32 %222, %88
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %224, i64 %13
  %226 = load i8, ptr %225, align 1, !tbaa !102
  %227 = zext i8 %226 to i32
  %228 = add i32 %223, %227
  %229 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %223, i32 noundef %228, ptr noundef nonnull %27, ptr noundef null)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %278, !prof !266

231:                                              ; preds = %221
  %232 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %233 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 1
  %234 = load ptr, ptr %233, align 8, !tbaa !102
  %235 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %223, i32 noundef %228, ptr noundef %234), !range !201
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %278, !prof !266

237:                                              ; preds = %231
  %238 = icmp eq i32 %8, 0
  br i1 %238, label %242, label %239, !prof !266

239:                                              ; preds = %237
  %240 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %223, i32 noundef %228, ptr noundef %234, ptr noundef %2)
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %278

242:                                              ; preds = %239, %237
  %243 = icmp eq i8 %226, 0
  br i1 %243, label %262, label %244, !prof !267

244:                                              ; preds = %242
  %245 = sext i32 %92 to i64
  %246 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %245
  %247 = load i64, ptr %246, align 8, !tbaa !174
  %248 = zext i8 %226 to i64
  br label %249

249:                                              ; preds = %244, %257
  %250 = phi i64 [ 0, %244 ], [ %258, %257 ]
  %251 = trunc i64 %250 to i32
  %252 = add i32 %223, %251
  %253 = zext nneg i32 %252 to i64
  %254 = shl nuw i64 1, %253
  %255 = and i64 %247, %254
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %260, label %257, !prof !265

257:                                              ; preds = %249
  %258 = add nuw nsw i64 %250, 1
  %259 = icmp eq i64 %258, %248
  br i1 %259, label %262, label %249, !prof !268, !llvm.loop !269

260:                                              ; preds = %249
  %261 = trunc i64 %250 to i32
  br label %262

262:                                              ; preds = %260, %257, %242
  %263 = phi i32 [ 0, %242 ], [ %261, %260 ], [ %227, %257 ]
  %264 = icmp eq i32 %263, %227
  br i1 %264, label %265, label %278, !prof !266

265:                                              ; preds = %262
  %266 = icmp sgt i32 %7, -1
  %267 = icmp eq ptr %150, %1
  %268 = select i1 %266, i1 %267, i1 false, !prof !265
  br i1 %268, label %269, label %272, !prof !265

269:                                              ; preds = %265
  %270 = zext nneg i32 %7 to i64
  %271 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %270, i32 1
  store ptr null, ptr %271, align 8, !tbaa !184
  br label %272

272:                                              ; preds = %269, %265
  %273 = load i32, ptr %0, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 37
  br i1 %275, label %278, label %276, !prof !266

276:                                              ; preds = %272
  %277 = tail call ptr @gen_rtx_REG(i32 noundef %4, i32 noundef %223) #24
  br label %278

278:                                              ; preds = %211, %163, %149, %153, %157, %167, %171, %177, %189, %262, %276, %272, %239, %231, %221, %17
  %279 = phi ptr [ null, %17 ], [ %150, %171 ], [ %150, %189 ], [ %150, %177 ], [ %150, %167 ], [ %150, %157 ], [ %150, %153 ], [ %150, %149 ], [ %150, %221 ], [ %150, %231 ], [ %150, %239 ], [ %277, %276 ], [ %150, %262 ], [ %0, %272 ], [ %150, %163 ], [ %150, %211 ]
  ret ptr %279
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @earlyclobber_operand_p(ptr noundef readnone %0) local_unnamed_addr #14 !prof !90 {
  %2 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9, !llvm.loop !179

9:                                                ; preds = %4, %6
  %10 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %11 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %6

14:                                               ; preds = %9, %6, %1
  %15 = phi i32 [ 0, %1 ], [ 1, %9 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @find_equiv_reg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #10 !prof !270 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %77, label %9, !prof !271

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = trunc i32 %10 to i16
  switch i16 %12, label %41 [
    i16 37, label %13
    i16 43, label %16
  ], !prof !272

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !102
  br label %77

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %10, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38, !prof !273

22:                                               ; preds = %16
  %23 = load i32, ptr @flag_float_store, align 4, !tbaa !106
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25, !prof !273

25:                                               ; preds = %22
  %26 = lshr i32 %10, 16
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !102
  %31 = and i8 %30, -2
  %32 = icmp eq i8 %31, 8
  br i1 %32, label %38, label %33

33:                                               ; preds = %25, %22
  %34 = trunc i32 %19 to i16
  %35 = add i16 %34, -80
  %36 = icmp ult i16 %35, -6
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %25, %33, %16
  %39 = phi i32 [ 0, %16 ], [ 0, %25 ], [ %37, %33 ]
  %40 = phi i1 [ false, %16 ], [ false, %25 ], [ %36, %33 ]
  br i1 %40, label %77, label %771, !prof !273

41:                                               ; preds = %9
  %42 = zext nneg i32 %11 to i64
  %43 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !106
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %77, label %46, !prof !274

46:                                               ; preds = %41
  %47 = icmp eq i32 %11, 49
  br i1 %47, label %48, label %771

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !91
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !102
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !106
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %77, label %62

62:                                               ; preds = %53, %48
  br i1 %47, label %63, label %771

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !102
  %66 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !91
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %771

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !102
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !106
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %771

77:                                               ; preds = %68, %53, %41, %7, %13, %38
  %78 = phi i32 [ 0, %13 ], [ %39, %38 ], [ 0, %7 ], [ 0, %41 ], [ 0, %53 ], [ 0, %68 ]
  %79 = phi i1 [ true, %13 ], [ true, %38 ], [ true, %7 ], [ false, %41 ], [ false, %53 ], [ false, %68 ]
  %80 = phi i1 [ false, %13 ], [ false, %38 ], [ false, %7 ], [ true, %41 ], [ true, %53 ], [ true, %68 ]
  %81 = phi i32 [ 0, %13 ], [ 0, %38 ], [ 0, %7 ], [ 0, %41 ], [ 1, %53 ], [ 0, %68 ]
  %82 = phi i32 [ %15, %13 ], [ -1, %38 ], [ %5, %7 ], [ -1, %41 ], [ -1, %53 ], [ -1, %68 ]
  %83 = icmp ult ptr %4, inttoptr (i64 2 to ptr)
  %84 = icmp sgt i32 %82, -1
  %85 = icmp eq i32 %78, 0
  br label %86

86:                                               ; preds = %331, %77
  %87 = phi i32 [ %332, %331 ], [ undef, %77 ]
  %88 = phi i32 [ %107, %331 ], [ 0, %77 ]
  %89 = phi ptr [ %334, %331 ], [ undef, %77 ]
  %90 = phi ptr [ %335, %331 ], [ undef, %77 ]
  %91 = phi ptr [ %100, %331 ], [ %1, %77 ]
  %92 = load ptr, ptr @compiler_params, align 8
  %93 = getelementptr inbounds %struct.param_info, ptr %92, i64 76, i32 1
  br label %94

94:                                               ; preds = %117, %86
  %95 = phi i32 [ %88, %86 ], [ %107, %117 ]
  %96 = phi ptr [ %91, %86 ], [ %100, %117 ]
  br label %97

97:                                               ; preds = %94, %102
  %98 = phi ptr [ %100, %102 ], [ %96, %94 ]
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !102
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102, !prof !275

102:                                              ; preds = %97
  %103 = load i32, ptr %100, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 7
  br i1 %105, label %97, label %106, !prof !276, !llvm.loop !277

106:                                              ; preds = %102, %97
  %107 = add nuw nsw i32 %95, 1
  br i1 %101, label %771, label %108, !prof !275

108:                                              ; preds = %106
  %109 = load i32, ptr %100, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 12
  br i1 %111, label %771, label %112, !prof !278

112:                                              ; preds = %108
  %113 = load i32, ptr %93, align 8, !tbaa !279
  %114 = icmp slt i32 %95, %113
  br i1 %114, label %115, label %771, !prof !281

115:                                              ; preds = %112
  %116 = icmp eq i32 %110, 8
  br i1 %116, label %118, label %117, !prof !282

117:                                              ; preds = %115, %119
  br label %94, !llvm.loop !277

118:                                              ; preds = %115
  br i1 %83, label %124, label %119, !prof !283

119:                                              ; preds = %118
  %120 = load i32, ptr @reload_first_uid, align 4
  %121 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !102
  %123 = icmp slt i32 %122, %120
  br i1 %123, label %124, label %117

124:                                              ; preds = %118, %119
  %125 = add nsw i32 %110, -7
  %126 = icmp ult i32 %125, 4
  br i1 %126, label %127, label %135, !prof !283

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !102
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 23
  br i1 %132, label %135, label %133, !prof !284

133:                                              ; preds = %127
  %134 = tail call ptr @single_set_2(ptr noundef nonnull %100, ptr noundef nonnull %129) #24
  br label %135

135:                                              ; preds = %124, %127, %133
  %136 = phi ptr [ %134, %133 ], [ null, %124 ], [ %129, %127 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %331, label %138, !prof !285

138:                                              ; preds = %135
  br i1 %84, label %139, label %149, !prof !286

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %141 = load ptr, ptr %140, align 8, !tbaa !102
  %142 = tail call i32 @true_regnum(ptr noundef %141) #24
  %143 = icmp eq i32 %142, %82
  br i1 %143, label %144, label %149, !prof !287

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !102
  %147 = tail call i32 @true_regnum(ptr noundef %146) #24
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %299, label %149

149:                                              ; preds = %144, %139, %138
  %150 = phi i32 [ %147, %144 ], [ %87, %139 ], [ %87, %138 ]
  br i1 %84, label %151, label %161, !prof !286

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !102
  %154 = tail call i32 @true_regnum(ptr noundef %153) #24
  %155 = icmp eq i32 %154, %82
  br i1 %155, label %156, label %161, !prof !288

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !102
  %159 = tail call i32 @true_regnum(ptr noundef %158) #24
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %299, label %161, !prof !289

161:                                              ; preds = %156, %151, %149
  %162 = phi i32 [ %150, %151 ], [ %150, %149 ], [ %159, %156 ]
  br i1 %79, label %177, label %163, !prof !290

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %165 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !102
  %167 = tail call i32 @rtx_equal_p(ptr noundef %166, ptr noundef %0) #24
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %177, label %169, !prof !291

169:                                              ; preds = %163
  %170 = load ptr, ptr %164, align 8, !tbaa !102
  %171 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %170, ptr noundef %0)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177, !prof !292

173:                                              ; preds = %169
  %174 = load ptr, ptr %164, align 8, !tbaa !102
  %175 = tail call i32 @true_regnum(ptr noundef %174) #24
  %176 = icmp sgt i32 %175, -1
  br i1 %176, label %299, label %177, !prof !293

177:                                              ; preds = %173, %169, %163, %161
  %178 = phi i32 [ %162, %169 ], [ %162, %163 ], [ %162, %161 ], [ %175, %173 ]
  br i1 %85, label %189, label %179, !prof !294

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  %182 = tail call i32 @true_regnum(ptr noundef %181) #24
  %183 = icmp sgt i32 %182, -1
  br i1 %183, label %184, label %189, !prof !295

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !102
  %187 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %186) #24
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %299, !prof !296

189:                                              ; preds = %184, %179, %177
  %190 = phi i32 [ %182, %179 ], [ %178, %177 ], [ %182, %184 ]
  br i1 %85, label %201, label %191, !prof !297

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !102
  %194 = tail call i32 @true_regnum(ptr noundef %193) #24
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %201, !prof !298

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !102
  %199 = tail call i32 @rtx_renumbered_equal_p(ptr noundef %0, ptr noundef %198) #24
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %299, !prof !299

201:                                              ; preds = %196, %191, %189
  %202 = phi i32 [ %194, %191 ], [ %190, %189 ], [ %194, %196 ]
  br i1 %79, label %257, label %203, !prof !300

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 1, i32 1, i32 0, i32 0, i64 1
  %205 = load ptr, ptr %204, align 8, !tbaa !102
  %206 = icmp eq ptr %205, null
  br i1 %206, label %257, label %207, !prof !301

207:                                              ; preds = %203
  %208 = tail call ptr @find_reg_note(ptr noundef nonnull %100, i32 noundef 3, ptr noundef null) #24
  %209 = icmp eq ptr %208, null
  br i1 %209, label %257, label %210, !prof !302

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !102
  %213 = tail call i32 @rtx_equal_p(ptr noundef %212, ptr noundef %0) #24
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215, !prof !303

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !102
  %218 = tail call i32 @true_regnum(ptr noundef %217) #24
  %219 = icmp sgt i32 %218, -1
  br i1 %219, label %299, label %220

220:                                              ; preds = %215, %210
  %221 = phi i32 [ %202, %210 ], [ %218, %215 ]
  %222 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !102
  %224 = load i32, ptr %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 37
  br i1 %226, label %227, label %257, !prof !303

227:                                              ; preds = %220
  %228 = load ptr, ptr %211, align 8, !tbaa !102
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 32
  br i1 %231, label %232, label %257, !prof !304

232:                                              ; preds = %227
  %233 = lshr i32 %229, 16
  %234 = and i32 %233, 255
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !102
  %238 = and i8 %237, -2
  %239 = icmp eq i8 %238, 8
  br i1 %239, label %240, label %257

240:                                              ; preds = %232
  %241 = load i32, ptr %0, align 8
  %242 = and i32 %241, 65535
  %243 = icmp eq i32 %242, 30
  br i1 %243, label %244, label %257

244:                                              ; preds = %240
  %245 = tail call ptr @operand_subword(ptr noundef nonnull %228, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %246 = icmp eq ptr %245, null
  br i1 %246, label %257, label %247

247:                                              ; preds = %244
  %248 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %245) #24
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %222, align 8, !tbaa !102
  %252 = tail call ptr @operand_subword(ptr noundef %251, i32 noundef 0, i32 noundef 0, i32 noundef 0) #24
  %253 = icmp eq ptr %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %250
  %255 = tail call i32 @true_regnum(ptr noundef nonnull %252) #24
  %256 = icmp sgt i32 %255, -1
  br i1 %256, label %299, label %257

257:                                              ; preds = %254, %232, %250, %247, %244, %240, %227, %220, %207, %203, %201
  %258 = phi i32 [ %221, %250 ], [ %221, %247 ], [ %221, %244 ], [ %221, %240 ], [ %221, %227 ], [ %221, %220 ], [ %202, %207 ], [ %202, %203 ], [ %202, %201 ], [ %221, %232 ], [ %255, %254 ]
  br i1 %79, label %331, label %259, !prof !300

259:                                              ; preds = %257
  %260 = tail call ptr @find_reg_note(ptr noundef nonnull %100, i32 noundef 3, ptr noundef null) #24
  %261 = icmp eq ptr %260, null
  br i1 %261, label %331, label %262, !prof !305

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !102
  %265 = load i32, ptr %264, align 8
  %266 = and i32 %265, 65535
  %267 = icmp eq i32 %266, 37
  br i1 %267, label %268, label %331, !prof !303

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !102
  %271 = load i32, ptr %270, align 8
  %272 = and i32 %271, 65535
  %273 = icmp eq i32 %272, 32
  br i1 %273, label %274, label %331, !prof !304

274:                                              ; preds = %268
  %275 = lshr i32 %271, 16
  %276 = and i32 %275, 255
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !102
  %280 = and i8 %279, -2
  %281 = icmp eq i8 %280, 8
  br i1 %281, label %282, label %331

282:                                              ; preds = %274
  %283 = load i32, ptr %0, align 8
  %284 = and i32 %283, 65535
  %285 = icmp eq i32 %284, 30
  br i1 %285, label %286, label %331

286:                                              ; preds = %282
  %287 = tail call ptr @operand_subword(ptr noundef nonnull %270, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %288 = icmp eq ptr %287, null
  br i1 %288, label %331, label %289

289:                                              ; preds = %286
  %290 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %287) #24
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %331, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr %263, align 8, !tbaa !102
  %294 = tail call ptr @operand_subword(ptr noundef %293, i32 noundef 1, i32 noundef 0, i32 noundef 0) #24
  %295 = icmp eq ptr %294, null
  br i1 %295, label %331, label %296

296:                                              ; preds = %292
  %297 = tail call i32 @true_regnum(ptr noundef nonnull %294) #24
  %298 = icmp sgt i32 %297, -1
  br i1 %298, label %299, label %331

299:                                              ; preds = %296, %254, %215, %196, %184, %173, %156, %144
  %300 = phi i32 [ %147, %144 ], [ %159, %156 ], [ %182, %184 ], [ %194, %196 ], [ %218, %215 ], [ %255, %254 ], [ %297, %296 ], [ %175, %173 ]
  %301 = phi ptr [ %146, %144 ], [ %158, %156 ], [ %181, %184 ], [ %193, %196 ], [ %217, %215 ], [ %252, %254 ], [ %294, %296 ], [ %174, %173 ]
  %302 = icmp sgt i32 %3, -1
  br i1 %302, label %303, label %305, !prof !306

303:                                              ; preds = %299
  %304 = icmp eq i32 %300, %3
  br i1 %304, label %330, label %331, !llvm.loop !277

305:                                              ; preds = %299
  %306 = icmp ugt i32 %300, 52
  br i1 %306, label %331, label %307, !prof !306, !llvm.loop !277

307:                                              ; preds = %305
  %308 = sext i32 %2 to i64
  %309 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %308
  %310 = load i64, ptr %309, align 8, !tbaa !174
  %311 = zext nneg i32 %300 to i64
  %312 = shl nuw i64 1, %311
  %313 = and i64 %310, %312
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %331, label %315, !prof !307

315:                                              ; preds = %307
  %316 = sext i32 %6 to i64
  %317 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %311, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !102
  %319 = zext i8 %318 to i32
  %320 = add nuw nsw i32 %300, %319
  %321 = zext nneg i32 %320 to i64
  br label %322

322:                                              ; preds = %326, %315
  %323 = phi i64 [ %324, %326 ], [ %311, %315 ]
  %324 = add nuw nsw i64 %323, 1
  %325 = icmp ult i64 %324, %321
  br i1 %325, label %326, label %330, !prof !308

326:                                              ; preds = %322
  %327 = shl i64 2, %323
  %328 = and i64 %327, %310
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %331, label %322, !llvm.loop !175

330:                                              ; preds = %322, %303
  br label %331

331:                                              ; preds = %326, %307, %296, %274, %135, %257, %259, %262, %268, %282, %286, %289, %292, %305, %303, %330
  %332 = phi i32 [ %300, %330 ], [ %300, %303 ], [ %300, %305 ], [ %258, %292 ], [ %258, %289 ], [ %258, %286 ], [ %258, %282 ], [ %258, %268 ], [ %258, %262 ], [ %258, %259 ], [ %258, %257 ], [ %87, %135 ], [ %258, %274 ], [ %297, %296 ], [ %300, %307 ], [ %300, %326 ]
  %333 = phi i1 [ true, %330 ], [ false, %303 ], [ false, %305 ], [ false, %292 ], [ false, %289 ], [ false, %286 ], [ false, %282 ], [ false, %268 ], [ false, %262 ], [ false, %259 ], [ false, %257 ], [ false, %135 ], [ false, %274 ], [ false, %296 ], [ false, %307 ], [ false, %326 ]
  %334 = phi ptr [ %100, %330 ], [ %89, %303 ], [ %89, %305 ], [ %89, %292 ], [ %89, %289 ], [ %89, %286 ], [ %89, %282 ], [ %89, %268 ], [ %89, %262 ], [ %89, %259 ], [ %89, %257 ], [ %89, %135 ], [ %89, %274 ], [ %89, %296 ], [ %89, %307 ], [ %89, %326 ]
  %335 = phi ptr [ %301, %330 ], [ %90, %303 ], [ %90, %305 ], [ %90, %292 ], [ %90, %289 ], [ %90, %286 ], [ %90, %282 ], [ %90, %268 ], [ %90, %262 ], [ %90, %259 ], [ %90, %257 ], [ %90, %135 ], [ %90, %274 ], [ %90, %296 ], [ %90, %307 ], [ %90, %326 ]
  br i1 %333, label %336, label %86, !prof !309, !llvm.loop !277

336:                                              ; preds = %331
  %337 = icmp eq ptr %4, null
  %338 = ptrtoint ptr %4 to i64
  %339 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 1, i32 1, i32 0, i32 0, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !102
  %341 = icmp eq ptr %340, null
  br i1 %341, label %345, label %342, !prof !310

342:                                              ; preds = %336
  %343 = tail call ptr @find_reg_note(ptr noundef %334, i32 noundef 6, ptr noundef %335) #24
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %771, !prof !311

345:                                              ; preds = %342, %336
  %346 = icmp eq i32 %332, 7
  %347 = icmp eq i32 %82, 7
  %348 = select i1 %346, i1 true, i1 %347, !prof !308
  br i1 %348, label %355, label %349, !prof !308

349:                                              ; preds = %345
  %350 = icmp eq i32 %78, 0
  br i1 %350, label %356, label %351, !prof !312

351:                                              ; preds = %349
  %352 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !91
  %353 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %352, ptr noundef %0)
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %356, label %355, !prof !313

355:                                              ; preds = %351, %345
  br label %356

356:                                              ; preds = %351, %355, %349
  %357 = phi i32 [ 1, %355 ], [ %81, %349 ], [ %81, %351 ]
  %358 = load i32, ptr %335, align 8
  %359 = lshr i32 %358, 16
  %360 = and i32 %359, 255
  %361 = icmp eq i32 %360, %6
  br i1 %361, label %362, label %771, !prof !314

362:                                              ; preds = %356
  %363 = icmp ne i32 %78, 0
  br i1 %363, label %364, label %393, !prof !315

364:                                              ; preds = %362
  %365 = load i32, ptr %334, align 8
  %366 = and i32 %365, 65535
  %367 = add nsw i32 %366, -7
  %368 = icmp ult i32 %367, 3
  br i1 %368, label %371, label %369, !prof !313

369:                                              ; preds = %364
  %370 = icmp eq i32 %366, 10
  tail call void @llvm.assume(i1 %370)
  br label %371

371:                                              ; preds = %364, %369
  %372 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 1
  %373 = load ptr, ptr %372, align 8, !tbaa !102
  %374 = load i32, ptr %373, align 8
  %375 = and i32 %374, 65535
  %376 = icmp eq i32 %375, 23
  br i1 %376, label %379, label %377, !prof !313

377:                                              ; preds = %371
  %378 = tail call ptr @single_set_2(ptr noundef nonnull %334, ptr noundef nonnull %373) #24
  br label %379

379:                                              ; preds = %371, %377
  %380 = phi ptr [ %378, %377 ], [ %373, %371 ]
  %381 = getelementptr inbounds %struct.rtx_def, ptr %380, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !102
  %383 = icmp eq ptr %335, %382
  br i1 %383, label %384, label %393, !prof !316

384:                                              ; preds = %379
  %385 = zext i32 %332 to i64
  %386 = sext i32 %6 to i64
  %387 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %385, i64 %386
  %388 = load i8, ptr %387, align 1, !tbaa !102
  %389 = zext i8 %388 to i32
  %390 = add i32 %332, %389
  %391 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %332, i32 noundef %390, ptr noundef %0, ptr noundef null)
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %771, !prof !317

393:                                              ; preds = %384, %379, %362
  %394 = icmp ugt i32 %82, 52
  br i1 %394, label %401, label %395, !prof !314

395:                                              ; preds = %393
  %396 = zext nneg i32 %82 to i64
  %397 = zext nneg i32 %6 to i64
  %398 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %396, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !102
  %400 = zext i8 %399 to i32
  br label %401

401:                                              ; preds = %393, %395
  %402 = phi i32 [ %400, %395 ], [ 1, %393 ]
  %403 = sext i32 %332 to i64
  %404 = zext nneg i32 %6 to i64
  %405 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %403, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !102
  %407 = zext i8 %406 to i32
  %408 = or i1 %363, %80
  %409 = xor i1 %408, true
  %410 = add nsw i32 %402, %82
  %411 = icmp sgt i32 %410, %332
  %412 = select i1 %409, i1 %411, i1 false, !prof !312
  %413 = add nsw i32 %332, %407
  %414 = icmp slt i32 %82, %413
  %415 = select i1 %412, i1 %414, i1 false, !prof !312
  br i1 %415, label %771, label %416, !prof !308

416:                                              ; preds = %401
  switch i64 %338, label %417 [
    i64 0, label %464
    i64 1, label %432
  ], !prof !318

417:                                              ; preds = %416
  %418 = icmp eq i8 %406, 0
  br i1 %418, label %431, label %419

419:                                              ; preds = %417
  %420 = sext i32 %332 to i64
  %421 = zext i8 %406 to i64
  %422 = getelementptr i16, ptr %4, i64 %420
  br label %426

423:                                              ; preds = %426
  %424 = add nuw nsw i64 %427, 1
  %425 = icmp eq i64 %424, %421
  br i1 %425, label %431, label %426, !llvm.loop !319

426:                                              ; preds = %419, %423
  %427 = phi i64 [ 0, %419 ], [ %424, %423 ]
  %428 = getelementptr i16, ptr %422, i64 %427
  %429 = load i16, ptr %428, align 2, !tbaa !142
  %430 = icmp sgt i16 %429, -1
  br i1 %430, label %771, label %423

431:                                              ; preds = %423, %417
  br i1 %337, label %464, label %432

432:                                              ; preds = %416, %431
  %433 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %464

435:                                              ; preds = %432
  %436 = zext nneg i32 %433 to i64
  br label %437

437:                                              ; preds = %435, %461
  %438 = phi i64 [ 0, %435 ], [ %462, %461 ]
  %439 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %438, i32 11
  %440 = load ptr, ptr %439, align 8, !tbaa !182
  %441 = icmp eq ptr %440, null
  br i1 %441, label %461, label %442

442:                                              ; preds = %437
  %443 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %438
  %444 = load ptr, ptr %443, align 8, !tbaa !183
  %445 = icmp eq ptr %444, null
  br i1 %445, label %461, label %446

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.rtx_def, ptr %440, i64 0, i32 1
  %448 = load i32, ptr %447, align 8, !tbaa !102
  %449 = icmp slt i32 %448, %413
  br i1 %449, label %450, label %461

450:                                              ; preds = %446
  %451 = sext i32 %448 to i64
  %452 = load i32, ptr %440, align 8
  %453 = lshr i32 %452, 16
  %454 = and i32 %453, 255
  %455 = zext nneg i32 %454 to i64
  %456 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %451, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !102
  %458 = zext i8 %457 to i32
  %459 = add nsw i32 %448, %458
  %460 = icmp sgt i32 %459, %332
  br i1 %460, label %771, label %461

461:                                              ; preds = %446, %450, %437, %442
  %462 = add nuw nsw i64 %438, 1
  %463 = icmp eq i64 %462, %436
  br i1 %463, label %464, label %437, !llvm.loop !320

464:                                              ; preds = %461, %432, %431, %416
  br i1 %363, label %465, label %470, !prof !315

465:                                              ; preds = %464
  %466 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !102
  %468 = tail call zeroext i8 @constant_address_p(ptr noundef %467) #24
  %469 = icmp ne i8 %468, 0
  br label %470

470:                                              ; preds = %465, %464
  %471 = phi i1 [ %469, %465 ], [ true, %464 ]
  %472 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %473 = load ptr, ptr %472, align 8, !tbaa !102
  %474 = icmp eq ptr %473, %334
  br i1 %474, label %771, label %475, !prof !177

475:                                              ; preds = %470
  %476 = icmp eq i32 %357, 0
  br label %477

477:                                              ; preds = %475, %767
  %478 = phi ptr [ %473, %475 ], [ %769, %767 ]
  %479 = load i32, ptr %478, align 8
  %480 = and i32 %479, 65535
  %481 = icmp eq i32 %480, 10
  br i1 %481, label %482, label %516, !prof !321

482:                                              ; preds = %477
  %483 = or i32 %357, %78
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %771, !prof !322

485:                                              ; preds = %482
  %486 = icmp eq i32 %402, 0
  %487 = select i1 %394, i1 true, i1 %486
  br i1 %487, label %500, label %488

488:                                              ; preds = %485
  %489 = zext i32 %82 to i64
  %490 = zext nneg i32 %402 to i64
  br label %494

491:                                              ; preds = %494
  %492 = add nuw nsw i64 %495, 1
  %493 = icmp eq i64 %492, %490
  br i1 %493, label %500, label %494, !llvm.loop !323

494:                                              ; preds = %488, %491
  %495 = phi i64 [ 0, %488 ], [ %492, %491 ]
  %496 = add nuw nsw i64 %495, %489
  %497 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !102
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %491, label %771

500:                                              ; preds = %491, %485
  %501 = icmp ugt i32 %332, 52
  %502 = icmp eq i8 %406, 0
  %503 = select i1 %501, i1 true, i1 %502
  br i1 %503, label %516, label %504

504:                                              ; preds = %500
  %505 = zext i32 %332 to i64
  %506 = zext i8 %406 to i64
  br label %510

507:                                              ; preds = %510
  %508 = add nuw nsw i64 %511, 1
  %509 = icmp eq i64 %508, %506
  br i1 %509, label %516, label %510, !llvm.loop !324

510:                                              ; preds = %504, %507
  %511 = phi i64 [ 0, %504 ], [ %508, %507 ]
  %512 = add nuw nsw i64 %511, %505
  %513 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !102
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %507, label %771

516:                                              ; preds = %507, %500, %477
  %517 = add nsw i32 %480, -7
  %518 = icmp ult i32 %517, 4
  br i1 %518, label %519, label %767, !prof !325

519:                                              ; preds = %516
  %520 = getelementptr inbounds %struct.rtx_def, ptr %478, i64 1
  %521 = load ptr, ptr %520, align 8, !tbaa !102
  %522 = tail call i32 @volatile_insn_p(ptr noundef %521) #24
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %771, !prof !326

524:                                              ; preds = %519
  %525 = load i32, ptr %521, align 8
  %526 = and i32 %525, 65535
  %527 = icmp eq i32 %526, 14
  br i1 %527, label %528, label %531, !prof !327

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.rtx_def, ptr %521, i64 0, i32 1, i32 0, i32 0, i64 1
  %530 = load ptr, ptr %529, align 8, !tbaa !102
  br label %531

531:                                              ; preds = %528, %524
  %532 = phi ptr [ %530, %528 ], [ %521, %524 ]
  %533 = load i32, ptr %532, align 8
  %534 = trunc i32 %533 to i16
  switch i16 %534, label %697 [
    i16 23, label %535
    i16 25, label %535
    i16 15, label %603
  ], !prof !328

535:                                              ; preds = %531, %531
  br label %536

536:                                              ; preds = %542, %535
  %537 = phi ptr [ %532, %535 ], [ %539, %542 ]
  %538 = getelementptr inbounds %struct.rtx_def, ptr %537, i64 0, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !102
  %540 = load i32, ptr %539, align 8
  %541 = trunc i32 %540 to i16
  switch i16 %541, label %575 [
    i16 39, label %542
    i16 120, label %542
    i16 40, label %542
    i16 37, label %543
  ], !prof !329

542:                                              ; preds = %536, %536, %536
  br label %536, !llvm.loop !330

543:                                              ; preds = %536
  %544 = getelementptr inbounds %struct.rtx_def, ptr %539, i64 0, i32 1
  %545 = load i32, ptr %544, align 8, !tbaa !102
  %546 = icmp ult i32 %545, 53
  br i1 %546, label %547, label %555, !prof !331

547:                                              ; preds = %543
  %548 = zext nneg i32 %545 to i64
  %549 = lshr i32 %540, 16
  %550 = and i32 %549, 255
  %551 = zext nneg i32 %550 to i64
  %552 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %548, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !102
  %554 = zext i8 %553 to i32
  br label %555

555:                                              ; preds = %543, %547
  %556 = phi i32 [ %554, %547 ], [ 1, %543 ]
  %557 = icmp slt i32 %545, %410
  %558 = add nsw i32 %556, %545
  %559 = icmp sgt i32 %558, %82
  %560 = select i1 %557, i1 %559, i1 false, !prof !332
  br i1 %560, label %771, label %561, !prof !333

561:                                              ; preds = %555
  %562 = icmp slt i32 %545, %413
  %563 = icmp sgt i32 %558, %332
  %564 = select i1 %562, i1 %563, i1 false, !prof !334
  br i1 %564, label %771, label %565, !prof !335

565:                                              ; preds = %561
  br i1 %471, label %572, label %566, !prof !336

566:                                              ; preds = %565
  %567 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %539, ptr noundef %0)
  %568 = icmp eq i32 %567, 0
  %569 = icmp ne i32 %545, 7
  %570 = or i1 %476, %569
  %571 = and i1 %568, %570
  br i1 %571, label %697, label %771, !prof !337

572:                                              ; preds = %565
  %573 = icmp ne i32 %545, 7
  %574 = or i1 %476, %573
  br i1 %574, label %697, label %771, !prof !338

575:                                              ; preds = %536
  %576 = and i32 %540, 65535
  %577 = icmp eq i32 %576, 43
  %578 = and i1 %363, %577
  br i1 %578, label %579, label %584, !prof !339

579:                                              ; preds = %575
  %580 = lshr i32 %540, 16
  %581 = and i32 %580, 255
  %582 = tail call i32 @push_operand(ptr noundef nonnull %539, i32 noundef %581) #24
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %771, label %584, !prof !340

584:                                              ; preds = %579, %575
  %585 = icmp sgt i32 %82, 52
  %586 = load i32, ptr %539, align 8
  %587 = and i32 %586, 65535
  %588 = icmp eq i32 %587, 43
  %589 = select i1 %588, i1 %585, i1 false, !prof !341
  br i1 %589, label %590, label %596, !prof !341

590:                                              ; preds = %584
  %591 = zext nneg i32 %82 to i64
  %592 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %593 = getelementptr inbounds ptr, ptr %592, i64 %591
  %594 = load ptr, ptr %593, align 8, !tbaa !91
  %595 = icmp eq ptr %594, null
  br i1 %595, label %596, label %771

596:                                              ; preds = %590, %584
  %597 = icmp eq i32 %357, 0
  br i1 %597, label %697, label %598, !prof !342

598:                                              ; preds = %596
  %599 = lshr i32 %586, 16
  %600 = and i32 %599, 255
  %601 = tail call i32 @push_operand(ptr noundef nonnull %539, i32 noundef %600) #24
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %697, label %771

603:                                              ; preds = %531
  %604 = getelementptr inbounds %struct.rtx_def, ptr %532, i64 0, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !102
  %606 = load i32, ptr %605, align 8, !tbaa !144
  %607 = icmp slt i32 %606, 1
  br i1 %607, label %697, label %608, !prof !343

608:                                              ; preds = %603
  %609 = icmp eq i32 %357, 0
  %610 = zext nneg i32 %606 to i64
  br label %611

611:                                              ; preds = %608, %695
  %612 = phi i64 [ %610, %608 ], [ %613, %695 ]
  %613 = add nsw i64 %612, -1
  %614 = load ptr, ptr %604, align 8, !tbaa !102
  %615 = getelementptr inbounds %struct.rtvec_def, ptr %614, i64 0, i32 1, i64 %613
  %616 = load ptr, ptr %615, align 8, !tbaa !91
  %617 = load i32, ptr %616, align 8
  %618 = and i32 %617, 65535
  %619 = icmp eq i32 %618, 14
  br i1 %619, label %620, label %623, !prof !344

620:                                              ; preds = %611
  %621 = getelementptr inbounds %struct.rtx_def, ptr %616, i64 0, i32 1, i32 0, i32 0, i64 1
  %622 = load ptr, ptr %621, align 8, !tbaa !102
  br label %623

623:                                              ; preds = %620, %611
  %624 = phi ptr [ %622, %620 ], [ %616, %611 ]
  %625 = load i32, ptr %624, align 8
  %626 = trunc i32 %625 to i16
  switch i16 %626, label %695 [
    i16 23, label %627
    i16 25, label %627
  ], !prof !345

627:                                              ; preds = %623, %623
  br label %628

628:                                              ; preds = %634, %627
  %629 = phi ptr [ %624, %627 ], [ %631, %634 ]
  %630 = getelementptr inbounds %struct.rtx_def, ptr %629, i64 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !102
  %632 = load i32, ptr %631, align 8
  %633 = trunc i32 %632 to i16
  switch i16 %633, label %667 [
    i16 39, label %634
    i16 120, label %634
    i16 40, label %634
    i16 37, label %635
  ], !prof !346

634:                                              ; preds = %628, %628, %628
  br label %628, !llvm.loop !347

635:                                              ; preds = %628
  %636 = getelementptr inbounds %struct.rtx_def, ptr %631, i64 0, i32 1
  %637 = load i32, ptr %636, align 8, !tbaa !102
  %638 = icmp ult i32 %637, 53
  br i1 %638, label %639, label %647, !prof !348

639:                                              ; preds = %635
  %640 = zext nneg i32 %637 to i64
  %641 = lshr i32 %632, 16
  %642 = and i32 %641, 255
  %643 = zext nneg i32 %642 to i64
  %644 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %640, i64 %643
  %645 = load i8, ptr %644, align 1, !tbaa !102
  %646 = zext i8 %645 to i32
  br label %647

647:                                              ; preds = %635, %639
  %648 = phi i32 [ %646, %639 ], [ 1, %635 ]
  %649 = icmp slt i32 %637, %410
  %650 = add nsw i32 %648, %637
  %651 = icmp sgt i32 %650, %82
  %652 = select i1 %649, i1 %651, i1 false, !prof !348
  br i1 %652, label %771, label %653, !prof !344

653:                                              ; preds = %647
  %654 = icmp slt i32 %637, %413
  %655 = icmp sgt i32 %650, %332
  %656 = select i1 %654, i1 %655, i1 false, !prof !344
  br i1 %656, label %771, label %657, !prof !344

657:                                              ; preds = %653
  br i1 %471, label %664, label %658, !prof !348

658:                                              ; preds = %657
  %659 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %631, ptr noundef %0)
  %660 = icmp eq i32 %659, 0
  %661 = icmp ne i32 %637, 7
  %662 = or i1 %609, %661
  %663 = and i1 %660, %662
  br i1 %663, label %695, label %771, !prof !349

664:                                              ; preds = %657
  %665 = icmp ne i32 %637, 7
  %666 = or i1 %609, %665
  br i1 %666, label %695, label %771, !prof !348

667:                                              ; preds = %628
  %668 = and i32 %632, 65535
  %669 = icmp eq i32 %668, 43
  %670 = and i1 %363, %669
  br i1 %670, label %671, label %676

671:                                              ; preds = %667
  %672 = lshr i32 %632, 16
  %673 = and i32 %672, 255
  %674 = tail call i32 @push_operand(ptr noundef nonnull %631, i32 noundef %673) #24
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %771, label %676

676:                                              ; preds = %671, %667
  %677 = icmp sgt i32 %82, 52
  %678 = load i32, ptr %631, align 8
  %679 = and i32 %678, 65535
  %680 = icmp eq i32 %679, 43
  %681 = select i1 %680, i1 %677, i1 false
  br i1 %681, label %682, label %688

682:                                              ; preds = %676
  %683 = zext nneg i32 %82 to i64
  %684 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %685 = getelementptr inbounds ptr, ptr %684, i64 %683
  %686 = load ptr, ptr %685, align 8, !tbaa !91
  %687 = icmp eq ptr %686, null
  br i1 %687, label %688, label %771

688:                                              ; preds = %682, %676
  %689 = icmp eq i32 %357, 0
  br i1 %689, label %695, label %690

690:                                              ; preds = %688
  %691 = lshr i32 %678, 16
  %692 = and i32 %691, 255
  %693 = tail call i32 @push_operand(ptr noundef nonnull %631, i32 noundef %692) #24
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %771

695:                                              ; preds = %658, %664, %690, %688, %623
  %696 = icmp slt i64 %612, 2
  br i1 %696, label %697, label %611, !prof !350, !llvm.loop !351

697:                                              ; preds = %695, %566, %603, %572, %598, %596, %531
  %698 = load i32, ptr %478, align 8
  %699 = and i32 %698, 65535
  %700 = icmp eq i32 %699, 10
  br i1 %700, label %701, label %767, !prof !352

701:                                              ; preds = %697
  %702 = getelementptr inbounds %struct.rtx_def, ptr %478, i64 1, i32 1, i32 0, i32 0, i64 2
  %703 = load ptr, ptr %702, align 8, !tbaa !102
  %704 = icmp eq ptr %703, null
  br i1 %704, label %767, label %705

705:                                              ; preds = %701
  %706 = getelementptr inbounds %struct.rtx_def, ptr %703, i64 0, i32 1, i32 0, i32 0, i64 1
  %707 = load ptr, ptr %706, align 8, !tbaa !102
  %708 = icmp eq ptr %707, null
  br i1 %708, label %767, label %709

709:                                              ; preds = %705
  %710 = icmp eq i32 %357, 0
  br label %711

711:                                              ; preds = %709, %762
  %712 = phi ptr [ %764, %762 ], [ %706, %709 ]
  %713 = phi ptr [ %763, %762 ], [ %703, %709 ]
  %714 = getelementptr inbounds %struct.rtx_def, ptr %713, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !102
  %716 = load i32, ptr %715, align 8
  %717 = and i32 %716, 65535
  %718 = icmp eq i32 %717, 25
  br i1 %718, label %719, label %762

719:                                              ; preds = %711
  %720 = getelementptr inbounds %struct.rtx_def, ptr %715, i64 0, i32 1
  %721 = load ptr, ptr %720, align 8, !tbaa !102
  %722 = load i32, ptr %721, align 8
  %723 = and i32 %722, 65535
  %724 = icmp eq i32 %723, 37
  br i1 %724, label %725, label %747

725:                                              ; preds = %719
  %726 = getelementptr inbounds %struct.rtx_def, ptr %721, i64 0, i32 1
  %727 = load i32, ptr %726, align 8, !tbaa !102
  %728 = sext i32 %727 to i64
  %729 = lshr i32 %722, 16
  %730 = and i32 %729, 255
  %731 = zext nneg i32 %730 to i64
  %732 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %728, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !102
  %734 = zext i8 %733 to i32
  %735 = icmp slt i32 %727, %410
  %736 = add nsw i32 %727, %734
  %737 = icmp sgt i32 %736, %82
  %738 = select i1 %735, i1 %737, i1 false
  br i1 %738, label %771, label %739

739:                                              ; preds = %725
  %740 = icmp slt i32 %727, %413
  %741 = icmp sgt i32 %736, %332
  %742 = select i1 %740, i1 %741, i1 false
  br i1 %742, label %771, label %743

743:                                              ; preds = %739
  br i1 %471, label %762, label %744

744:                                              ; preds = %743
  %745 = tail call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %721, ptr noundef %0)
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %762, label %771

747:                                              ; preds = %719
  %748 = icmp eq i32 %723, 43
  %749 = and i1 %363, %748
  br i1 %749, label %750, label %755

750:                                              ; preds = %747
  %751 = lshr i32 %722, 16
  %752 = and i32 %751, 255
  %753 = tail call i32 @push_operand(ptr noundef nonnull %721, i32 noundef %752) #24
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %771, label %755

755:                                              ; preds = %750, %747
  br i1 %710, label %762, label %756

756:                                              ; preds = %755
  %757 = load i32, ptr %721, align 8
  %758 = lshr i32 %757, 16
  %759 = and i32 %758, 255
  %760 = tail call i32 @push_operand(ptr noundef nonnull %721, i32 noundef %759) #24
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %771

762:                                              ; preds = %755, %756, %744, %743, %711
  %763 = load ptr, ptr %712, align 8, !tbaa !102
  %764 = getelementptr inbounds %struct.rtx_def, ptr %763, i64 0, i32 1, i32 0, i32 0, i64 1
  %765 = load ptr, ptr %764, align 8, !tbaa !102
  %766 = icmp eq ptr %765, null
  br i1 %766, label %767, label %711, !llvm.loop !353

767:                                              ; preds = %762, %705, %516, %697, %701
  %768 = getelementptr inbounds %struct.rtx_def, ptr %478, i64 0, i32 1, i32 0, i32 0, i64 1
  %769 = load ptr, ptr %768, align 8, !tbaa !102
  %770 = icmp eq ptr %769, %334
  br i1 %770, label %771, label %477, !prof !354, !llvm.loop !355

771:                                              ; preds = %106, %108, %112, %426, %450, %767, %519, %555, %561, %482, %566, %572, %579, %590, %598, %494, %510, %690, %682, %671, %658, %664, %653, %647, %750, %744, %756, %725, %739, %470, %46, %68, %401, %384, %356, %342, %62, %63, %38
  %772 = phi ptr [ null, %38 ], [ null, %63 ], [ null, %62 ], [ null, %342 ], [ null, %356 ], [ null, %384 ], [ null, %401 ], [ null, %68 ], [ null, %46 ], [ %335, %470 ], [ null, %739 ], [ null, %725 ], [ null, %756 ], [ null, %744 ], [ null, %750 ], [ null, %647 ], [ null, %653 ], [ null, %664 ], [ null, %658 ], [ null, %671 ], [ null, %682 ], [ null, %690 ], [ null, %510 ], [ null, %494 ], [ null, %598 ], [ null, %590 ], [ null, %579 ], [ null, %572 ], [ null, %566 ], [ null, %482 ], [ null, %561 ], [ null, %555 ], [ null, %519 ], [ %335, %767 ], [ null, %450 ], [ null, %426 ], [ null, %112 ], [ null, %108 ], [ null, %106 ]
  ret ptr %772
}

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #13 !prof !356 !PGOFuncName !357 {
  br label %5

5:                                                ; preds = %19, %4
  %6 = phi ptr [ %2, %4 ], [ %23, %19 ]
  %7 = phi ptr [ %3, %4 ], [ null, %19 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %178, label %9, !prof !358

9:                                                ; preds = %5, %127
  %10 = phi ptr [ %129, %127 ], [ %6, %5 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -23
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 31)
  switch i32 %14, label %130 [
    i32 7, label %15
    i32 8, label %49
    i32 1, label %71
    i32 0, label %71
  ], !prof !359

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !102
  %18 = icmp ugt i32 %17, 52
  br i1 %18, label %19, label %36, !prof !360

19:                                               ; preds = %15
  %20 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %21 = zext i32 %17 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5

25:                                               ; preds = %19
  %26 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %178

30:                                               ; preds = %25
  %31 = load ptr, ptr @reg_equiv_invariant, align 8, !tbaa !91
  %32 = getelementptr inbounds ptr, ptr %31, i64 %21
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %178

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6505, ptr noundef nonnull @.str.1) #24
  br label %178

36:                                               ; preds = %15
  %37 = icmp ult i32 %17, %1
  br i1 %37, label %38, label %178, !prof !361

38:                                               ; preds = %36
  %39 = zext nneg i32 %17 to i64
  %40 = lshr i32 %11, 16
  %41 = and i32 %40, 255
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %39, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !102
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %17, %45
  %47 = icmp ugt i32 %46, %0
  %48 = zext i1 %47 to i32
  br label %178

49:                                               ; preds = %9
  %50 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !102
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %130

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !102
  %58 = icmp ult i32 %57, 53
  br i1 %58, label %59, label %130

59:                                               ; preds = %55
  %60 = tail call i32 @subreg_regno(ptr noundef nonnull %10) #24
  %61 = icmp ult i32 %60, 53
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = tail call i32 @subreg_nregs(ptr noundef nonnull %10) #24
  br label %64

64:                                               ; preds = %59, %62
  %65 = phi i32 [ %63, %62 ], [ 1, %59 ]
  %66 = add i32 %65, %60
  %67 = icmp ult i32 %60, %1
  %68 = icmp ugt i32 %66, %0
  %69 = select i1 %67, i1 %68, i1 false
  %70 = zext i1 %69 to i32
  br label %178

71:                                               ; preds = %9, %9
  %72 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %73 = icmp eq ptr %72, %7
  br i1 %73, label %122, label %74, !prof !362

74:                                               ; preds = %71
  %75 = load ptr, ptr %72, align 8, !tbaa !102
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 39
  br i1 %78, label %79, label %94, !prof !363

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %81 = icmp eq ptr %80, %7
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %80, align 8, !tbaa !102
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !102
  %90 = icmp ugt i32 %89, 52
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %83, ptr noundef %7)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %178

94:                                               ; preds = %91, %87, %82, %79, %74
  %95 = load ptr, ptr %72, align 8, !tbaa !102
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %119, !prof !364

99:                                               ; preds = %94
  %100 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %122, !prof !177

102:                                              ; preds = %99
  %103 = zext nneg i32 %100 to i64
  %104 = zext nneg i32 %100 to i64
  %105 = load ptr, ptr @reload_earlyclobbers, align 16, !tbaa !91
  %106 = icmp eq ptr %105, %95
  br i1 %106, label %117, label %107

107:                                              ; preds = %102, %111
  %108 = phi i64 [ %109, %111 ], [ 0, %102 ]
  %109 = add nuw nsw i64 %108, 1
  %110 = icmp eq i64 %109, %104
  br i1 %110, label %122, label %111, !prof !178, !llvm.loop !179

111:                                              ; preds = %107
  %112 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %109
  %113 = load ptr, ptr %112, align 8, !tbaa !91
  %114 = icmp eq ptr %113, %95
  br i1 %114, label %115, label %107, !llvm.loop !179

115:                                              ; preds = %111
  %116 = icmp ult i64 %109, %103
  br label %117

117:                                              ; preds = %115, %102
  %118 = phi i1 [ %116, %115 ], [ %101, %102 ]
  br i1 %118, label %119, label %122, !prof !365

119:                                              ; preds = %117, %94
  %120 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %95, ptr noundef %7)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %178, !prof !366

122:                                              ; preds = %107, %99, %117, %119, %71
  %123 = icmp eq i32 %12, 25
  %124 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = icmp eq ptr %124, %7
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %178, label %127, !prof !367

127:                                              ; preds = %148, %122
  %128 = phi ptr [ %124, %122 ], [ %138, %148 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !102
  br label %9

130:                                              ; preds = %9, %49, %55
  %131 = zext nneg i32 %12 to i64
  %132 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !91
  %134 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %131
  %135 = load i8, ptr %134, align 1, !tbaa !102
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %178, label %137, !prof !368

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %139 = zext i8 %135 to i64
  br label %140

140:                                              ; preds = %137, %176
  %141 = phi i64 [ %139, %137 ], [ %142, %176 ]
  %142 = add nsw i64 %141, -1
  %143 = getelementptr inbounds i8, ptr %133, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !102
  switch i8 %144, label %176 [
    i8 101, label %145
    i8 69, label %156
  ], !prof !369

145:                                              ; preds = %140
  %146 = getelementptr inbounds [1 x %union.rtunion_def], ptr %138, i64 0, i64 %142
  %147 = icmp eq ptr %146, %7
  br i1 %147, label %154, label %148, !prof !370

148:                                              ; preds = %145
  %149 = icmp eq i64 %142, 0
  br i1 %149, label %127, label %150, !prof !371

150:                                              ; preds = %148
  %151 = load ptr, ptr %146, align 8, !tbaa !102
  %152 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %151, ptr noundef %7)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %176, label %178, !prof !372

154:                                              ; preds = %145
  %155 = icmp eq i8 %144, 69
  br i1 %155, label %156, label %176, !prof !373

156:                                              ; preds = %140, %154
  %157 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %158 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %142
  %159 = load ptr, ptr %158, align 8, !tbaa !102
  %160 = load i32, ptr %159, align 8, !tbaa !144
  %161 = icmp slt i32 %160, 1
  br i1 %161, label %176, label %162, !prof !374

162:                                              ; preds = %156
  %163 = zext nneg i32 %160 to i64
  br label %164

164:                                              ; preds = %162, %174
  %165 = phi i64 [ %163, %162 ], [ %166, %174 ]
  %166 = add nsw i64 %165, -1
  %167 = load ptr, ptr %158, align 8, !tbaa !102
  %168 = getelementptr inbounds %struct.rtvec_def, ptr %167, i64 0, i32 1, i64 %166
  %169 = icmp eq ptr %168, %7
  br i1 %169, label %174, label %170, !prof !375

170:                                              ; preds = %164
  %171 = load ptr, ptr %168, align 8, !tbaa !91
  %172 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %0, i32 noundef %1, ptr noundef %171, ptr noundef %7)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178, !prof !376

174:                                              ; preds = %164, %170
  %175 = icmp slt i64 %165, 2
  br i1 %175, label %176, label %164, !prof !377, !llvm.loop !378

176:                                              ; preds = %174, %156, %140, %150, %154
  %177 = icmp sgt i64 %141, 1
  br i1 %177, label %140, label %178, !prof !379, !llvm.loop !380

178:                                              ; preds = %122, %119, %91, %130, %150, %176, %170, %36, %38, %35, %30, %25, %5, %64
  %179 = phi i32 [ %70, %64 ], [ 0, %5 ], [ 0, %25 ], [ 0, %30 ], [ 0, %35 ], [ 0, %36 ], [ %48, %38 ], [ 1, %170 ], [ 0, %176 ], [ 1, %150 ], [ 1, %91 ], [ 1, %119 ], [ 0, %122 ], [ 0, %130 ]
  ret i32 %179
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #15 !prof !381 !PGOFuncName !382 {
  %4 = load i32, ptr %2, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %44 [
    i16 23, label %6
    i16 25, label %6
    i16 15, label %27
  ], !prof !383

6:                                                ; preds = %3, %3
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi ptr [ %10, %7 ], [ %2, %6 ]
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %44 [
    i16 39, label %7
    i16 37, label %13
  ], !prof !384

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = icmp ult i32 %15, %1
  br i1 %16, label %17, label %44, !prof !385

17:                                               ; preds = %13
  %18 = lshr i32 %11, 16
  %19 = and i32 %18, 255
  %20 = zext i32 %15 to i64
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %20, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !102
  %24 = zext i8 %23 to i32
  %25 = add i32 %15, %24
  %26 = icmp ugt i32 %25, %0
  br i1 %26, label %45, label %44, !prof !265

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !102
  %30 = load i32, ptr %29, align 8, !tbaa !144
  %31 = zext i32 %30 to i64
  br label %32

32:                                               ; preds = %36, %27
  %33 = phi i64 [ %38, %36 ], [ %31, %27 ]
  %34 = trunc i64 %33 to i32
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %44, label %36, !prof !386

36:                                               ; preds = %32
  %37 = add nsw i64 %33, -1
  %38 = add nsw i64 %33, -1
  %39 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !91
  %41 = tail call fastcc i32 @hard_reg_set_here_p(i32 noundef %0, i32 noundef %1, ptr noundef %40), !range !201
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %32, label %43, !prof !387, !llvm.loop !388

43:                                               ; preds = %36
  br i1 %35, label %44, label %45, !prof !266

44:                                               ; preds = %32, %7, %13, %17, %43, %3
  br label %45

45:                                               ; preds = %17, %43, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %43 ], [ 1, %17 ]
  ret i32 %46
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @can_reload_into(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !90 {
  %4 = alloca %struct.recog_data, align 8
  call void @llvm.lifetime.start.p0(i64 1128, ptr nonnull %4)
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %25
    i16 43, label %25
  ]

7:                                                ; preds = %3
  %8 = tail call ptr @gen_rtx_REG(i32 noundef %2, i32 noundef %1) #24
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %8, ptr noundef nonnull %0) #24
  %10 = tail call ptr @make_insn_raw(ptr noundef %9) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) %4, ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, i64 1128, i1 false), !tbaa.struct !389
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !102
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = tail call i32 @recog(ptr noundef %16, ptr noundef %10, ptr noundef null) #24
  store i32 %17, ptr %11, align 8, !tbaa !102
  br label %18

18:                                               ; preds = %7, %14
  %19 = load i32, ptr %11, align 8, !tbaa !102
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  tail call void @extract_insn(ptr noundef %10) #24
  %22 = tail call i32 @constrain_operands(i32 noundef 1) #24
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 0, %18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1128) @recog_data, ptr noundef nonnull align 8 dereferenceable(1128) %4, i64 1128, i1 false), !tbaa.struct !389
  br label %25

25:                                               ; preds = %3, %3, %23
  %26 = phi i32 [ %24, %23 ], [ 1, %3 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 1128, ptr nonnull %4)
  ret i32 %26
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @transfer_replacements(i32 noundef %0, i32 noundef %1) local_unnamed_addr #16 !prof !90 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %13
  %8 = phi i64 [ 0, %5 ], [ %14, %13 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !204
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %0, ptr %9, align 8, !tbaa !204
  br label %13

13:                                               ; preds = %7, %12
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %16, label %7, !llvm.loop !390

16:                                               ; preds = %13, %2
  ret void
}

declare i32 @loc_mentioned_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

declare void @deallocate_reload_reg(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @operands_match_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !391 {
  br label %3

3:                                                ; preds = %80, %2
  %4 = phi ptr [ %0, %2 ], [ %82, %80 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq ptr %4, %1
  br i1 %7, label %86, label %8, !prof !392

8:                                                ; preds = %3
  %9 = trunc i32 %5 to i16
  switch i16 %9, label %75 [
    i16 37, label %16
    i16 39, label %10
  ], !prof !393

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %75

16:                                               ; preds = %8, %10
  %17 = load i32, ptr %1, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %75 [
    i16 37, label %25
    i16 39, label %19
  ], !prof !394

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %75

25:                                               ; preds = %16, %19
  %26 = icmp eq i32 %6, 39
  %27 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br i1 %26, label %28, label %43, !prof !395

28:                                               ; preds = %25
  %29 = load ptr, ptr %27, align 8, !tbaa !102
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !102
  %32 = icmp sgt i32 %31, 52
  br i1 %32, label %72, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %29, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i32, ptr %37, align 8, !tbaa !102
  %39 = lshr i32 %5, 16
  %40 = and i32 %39, 255
  %41 = tail call i32 @subreg_regno_offset(i32 noundef %31, i32 noundef %36, i32 noundef %38, i32 noundef %40) #24
  %42 = add i32 %41, %31
  br label %45

43:                                               ; preds = %25
  %44 = load i32, ptr %27, align 8, !tbaa !102
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi i32 [ %42, %33 ], [ %44, %43 ]
  %47 = load i32, ptr %1, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 39
  %50 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br i1 %49, label %51, label %66, !prof !395

51:                                               ; preds = %45
  %52 = load ptr, ptr %50, align 8, !tbaa !102
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !102
  %55 = icmp sgt i32 %54, 52
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %52, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load i32, ptr %60, align 8, !tbaa !102
  %62 = lshr i32 %47, 16
  %63 = and i32 %62, 255
  %64 = tail call i32 @subreg_regno_offset(i32 noundef %54, i32 noundef %59, i32 noundef %61, i32 noundef %63) #24
  %65 = add i32 %64, %54
  br label %68

66:                                               ; preds = %45
  %67 = load i32, ptr %50, align 8, !tbaa !102
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi i32 [ %65, %56 ], [ %67, %66 ]
  %70 = icmp eq i32 %46, %69
  %71 = zext i1 %70 to i32
  br label %72

72:                                               ; preds = %51, %28, %68
  %73 = phi i32 [ %71, %68 ], [ undef, %28 ], [ undef, %51 ]
  %74 = phi i1 [ false, %68 ], [ true, %28 ], [ true, %51 ]
  br i1 %74, label %94, label %86, !prof !395

75:                                               ; preds = %19, %16, %10, %8
  %76 = and i32 %5, 65534
  %77 = icmp eq i32 %76, 76
  %78 = icmp eq i32 %6, 79
  %79 = or i1 %77, %78
  br i1 %79, label %80, label %83, !prof !396

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !102
  br label %3

83:                                               ; preds = %75
  %84 = load i32, ptr %1, align 8
  %85 = trunc i32 %84 to i16
  switch i16 %85, label %94 [
    i16 74, label %88
    i16 75, label %88
    i16 78, label %88
  ], !prof !397

86:                                               ; preds = %127, %134, %218, %72, %3, %99, %126, %94, %123, %126, %126, %214, %88
  %87 = phi i32 [ %93, %88 ], [ %219, %218 ], [ %140, %134 ], [ %133, %127 ], [ %73, %72 ], [ 1, %3 ], [ 0, %99 ], [ 0, %126 ], [ 0, %94 ], [ 0, %123 ], [ 0, %126 ], [ 0, %126 ], [ %215, %214 ]
  ret i32 %87

88:                                               ; preds = %83, %83, %83
  %89 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !102
  %91 = tail call i32 @operands_match_p(ptr noundef nonnull %4, ptr noundef %90)
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 2
  br label %86

94:                                               ; preds = %83, %72
  %95 = phi i32 [ %73, %72 ], [ undef, %83 ]
  %96 = load i32, ptr %1, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %6, %97
  br i1 %98, label %99, label %86, !prof !396

99:                                               ; preds = %94
  %100 = load i32, ptr %4, align 8
  %101 = xor i32 %100, %96
  %102 = and i32 %101, 16711680
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %86

104:                                              ; preds = %99
  %105 = icmp eq i32 %6, 43
  br i1 %105, label %106, label %126

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !102
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.mem_attrs, ptr %108, i64 0, i32 5
  %112 = load i8, ptr %111, align 8, !tbaa !130
  %113 = zext i8 %112 to i32
  br label %114

114:                                              ; preds = %106, %110
  %115 = phi i32 [ %113, %110 ], [ 0, %106 ]
  %116 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !102
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.mem_attrs, ptr %117, i64 0, i32 5
  %121 = load i8, ptr %120, align 8, !tbaa !130
  %122 = zext i8 %121 to i32
  br label %123

123:                                              ; preds = %114, %119
  %124 = phi i32 [ %122, %119 ], [ 0, %114 ]
  %125 = icmp eq i32 %115, %124
  br i1 %125, label %126, label %86

126:                                              ; preds = %123, %104
  switch i16 %9, label %141 [
    i16 30, label %86
    i16 32, label %86
    i16 31, label %86
    i16 44, label %127
    i16 45, label %134
  ]

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !102
  %130 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !102
  %132 = icmp eq ptr %129, %131
  %133 = zext i1 %132 to i32
  br label %86

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !102
  %137 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !102
  %139 = icmp eq ptr %136, %138
  %140 = zext i1 %139 to i32
  br label %86

141:                                              ; preds = %126
  %142 = zext nneg i32 %6 to i64
  %143 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !91
  %145 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %142
  %146 = load i8, ptr %145, align 1, !tbaa !102
  %147 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %148 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %149 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %150 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %151 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %152 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %153 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %154 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %155 = zext i8 %146 to i64
  br label %156

156:                                              ; preds = %214, %141
  %157 = phi i64 [ %160, %214 ], [ %155, %141 ]
  %158 = phi i32 [ %215, %214 ], [ %95, %141 ]
  %159 = phi i32 [ %216, %214 ], [ 0, %141 ]
  %160 = add nsw i64 %157, -1
  %161 = icmp sgt i64 %157, 0
  br i1 %161, label %162, label %218

162:                                              ; preds = %156
  %163 = getelementptr inbounds i8, ptr %144, i64 %160
  %164 = load i8, ptr %163, align 1, !tbaa !102
  switch i8 %164, label %211 [
    i8 119, label %165
    i8 105, label %171
    i8 101, label %177
    i8 48, label %212
    i8 69, label %184
  ]

165:                                              ; preds = %162
  %166 = getelementptr inbounds [1 x i64], ptr %153, i64 0, i64 %160
  %167 = load i64, ptr %166, align 8, !tbaa !102
  %168 = getelementptr inbounds [1 x i64], ptr %154, i64 0, i64 %160
  %169 = load i64, ptr %168, align 8, !tbaa !102
  %170 = icmp eq i64 %167, %169
  br i1 %170, label %212, label %214

171:                                              ; preds = %162
  %172 = getelementptr inbounds [1 x %union.rtunion_def], ptr %151, i64 0, i64 %160
  %173 = load i32, ptr %172, align 8, !tbaa !102
  %174 = getelementptr inbounds [1 x %union.rtunion_def], ptr %152, i64 0, i64 %160
  %175 = load i32, ptr %174, align 8, !tbaa !102
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %212, label %214

177:                                              ; preds = %162
  %178 = getelementptr inbounds [1 x %union.rtunion_def], ptr %149, i64 0, i64 %160
  %179 = load ptr, ptr %178, align 8, !tbaa !102
  %180 = getelementptr inbounds [1 x %union.rtunion_def], ptr %150, i64 0, i64 %160
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  %182 = tail call i32 @operands_match_p(ptr noundef %179, ptr noundef %181)
  switch i32 %182, label %212 [
    i32 0, label %214
    i32 2, label %183
  ]

183:                                              ; preds = %177
  br label %212

184:                                              ; preds = %162
  %185 = getelementptr inbounds [1 x %union.rtunion_def], ptr %147, i64 0, i64 %160
  %186 = load ptr, ptr %185, align 8, !tbaa !102
  %187 = load i32, ptr %186, align 8, !tbaa !144
  %188 = getelementptr inbounds [1 x %union.rtunion_def], ptr %148, i64 0, i64 %160
  %189 = load ptr, ptr %188, align 8, !tbaa !102
  %190 = load i32, ptr %189, align 8, !tbaa !144
  %191 = icmp eq i32 %187, %190
  br i1 %191, label %192, label %214

192:                                              ; preds = %184
  %193 = icmp sgt i32 %187, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %192
  %195 = zext nneg i32 %187 to i64
  br label %196

196:                                              ; preds = %194, %208
  %197 = phi i64 [ %195, %194 ], [ %199, %208 ]
  %198 = phi i32 [ %159, %194 ], [ %209, %208 ]
  %199 = add nsw i64 %197, -1
  %200 = load ptr, ptr %185, align 8, !tbaa !102
  %201 = getelementptr inbounds %struct.rtvec_def, ptr %200, i64 0, i32 1, i64 %199
  %202 = load ptr, ptr %201, align 8, !tbaa !91
  %203 = load ptr, ptr %188, align 8, !tbaa !102
  %204 = getelementptr inbounds %struct.rtvec_def, ptr %203, i64 0, i32 1, i64 %199
  %205 = load ptr, ptr %204, align 8, !tbaa !91
  %206 = tail call i32 @operands_match_p(ptr noundef %202, ptr noundef %205)
  switch i32 %206, label %208 [
    i32 0, label %214
    i32 2, label %207
  ]

207:                                              ; preds = %196
  br label %208

208:                                              ; preds = %196, %207
  %209 = phi i32 [ 1, %207 ], [ %198, %196 ]
  %210 = icmp sgt i64 %197, 1
  br i1 %210, label %196, label %212, !llvm.loop !398

211:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2324, ptr noundef nonnull @.str.1) #24
  br label %212

212:                                              ; preds = %208, %192, %177, %183, %171, %165, %211, %162
  %213 = phi i32 [ %159, %211 ], [ %159, %162 ], [ 1, %183 ], [ %159, %171 ], [ %159, %165 ], [ %159, %177 ], [ %159, %192 ], [ %209, %208 ]
  br label %214

214:                                              ; preds = %196, %177, %171, %184, %165, %212
  %215 = phi i32 [ %158, %212 ], [ 0, %165 ], [ 0, %184 ], [ 0, %171 ], [ %182, %177 ], [ %206, %196 ]
  %216 = phi i32 [ %213, %212 ], [ %159, %165 ], [ %159, %184 ], [ %159, %171 ], [ %159, %177 ], [ %198, %196 ]
  %217 = phi i1 [ true, %212 ], [ false, %165 ], [ false, %184 ], [ false, %171 ], [ false, %177 ], [ false, %196 ]
  br i1 %217, label %156, label %86, !llvm.loop !399

218:                                              ; preds = %156
  %219 = add nuw nsw i32 %159, 1
  br label %86
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @safe_from_earlyclobber(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !90 {
  %3 = alloca %struct.decomposition, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %3, ptr noundef %1)
  %4 = call fastcc i32 @immune_p(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.decomposition) align 8 %3), !range !201
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @decompose(ptr dead_on_unwind noalias writable sret(%struct.decomposition) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !90 {
  br label %3

3:                                                ; preds = %199, %208, %2
  %4 = phi ptr [ %1, %2 ], [ %209, %208 ], [ %201, %199 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %215 [
    i16 43, label %7
    i16 37, label %180
    i16 39, label %199
    i16 38, label %222
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %63 [
    i16 74, label %12
    i16 75, label %12
    i16 76, label %12
    i16 77, label %12
    i16 78, label %30
    i16 79, label %30
  ]

12:                                               ; preds = %7, %7, %7, %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = lshr i32 %5, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !102
  %20 = zext i8 %19 to i64
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !102
  %24 = icmp eq i32 %23, 7
  %25 = zext i1 %24 to i32
  store i32 0, ptr %0, align 8, !tbaa.struct !400
  %26 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %25, ptr %26, align 4, !tbaa.struct !401
  %27 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %14, ptr %27, align 8, !tbaa.struct !402
  %28 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %21, ptr %28, align 8, !tbaa.struct !403
  %29 = getelementptr inbounds i8, ptr %0, i64 24
  store i64 %20, ptr %29, align 8, !tbaa.struct !404
  br label %174

30:                                               ; preds = %7, %7
  %31 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !102
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !106
  %50 = icmp eq i32 %49, 9
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !102
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !102
  %57 = icmp eq i32 %56, 7
  %58 = zext i1 %57 to i32
  store i32 0, ptr %0, align 8, !tbaa.struct !400
  %59 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %58, ptr %59, align 4, !tbaa.struct !401
  %60 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %38, ptr %60, align 8, !tbaa.struct !402
  %61 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %54, ptr %61, align 8, !tbaa.struct !403
  %62 = getelementptr inbounds i8, ptr %0, i64 24
  store i64 %53, ptr %62, align 8, !tbaa.struct !404
  br label %174

63:                                               ; preds = %7, %30, %36, %42
  %64 = and i32 %10, 65535
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !102
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi ptr [ %68, %66 ], [ %9, %63 ]
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 49
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !102
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !106
  %82 = icmp eq i32 %81, 9
  %83 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !102
  br i1 %82, label %94, label %85

85:                                               ; preds = %74
  %86 = load i32, ptr %84, align 8
  %87 = and i32 %86, 65535
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !106
  %91 = icmp eq i32 %90, 9
  %92 = select i1 %91, ptr %76, ptr null
  %93 = select i1 %91, ptr %84, ptr null
  br label %94

94:                                               ; preds = %74, %85, %69
  %95 = phi ptr [ null, %69 ], [ %92, %85 ], [ %84, %74 ]
  %96 = phi ptr [ null, %69 ], [ %93, %85 ], [ %76, %74 ]
  %97 = icmp eq ptr %96, null
  %98 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %99 = select i1 %97, ptr %70, ptr %95
  %100 = select i1 %97, ptr %98, ptr %96
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 35
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  br label %107

107:                                              ; preds = %104, %94
  %108 = phi ptr [ %106, %104 ], [ %100, %94 ]
  %109 = load i32, ptr %108, align 8
  %110 = trunc i32 %109 to i16
  switch i16 %110, label %140 [
    i16 49, label %111
    i16 30, label %146
  ]

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !102
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 30
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load i32, ptr %99, align 8
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !102
  %123 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %120, ptr noundef nonnull %99, ptr noundef %122) #24
  %124 = load ptr, ptr %112, align 8, !tbaa !102
  br label %146

125:                                              ; preds = %111
  %126 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !102
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  %131 = load i32, ptr %99, align 8
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  br i1 %130, label %134, label %137

134:                                              ; preds = %125
  %135 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %133, ptr noundef nonnull %99, ptr noundef nonnull %113) #24
  %136 = load ptr, ptr %126, align 8, !tbaa !102
  br label %146

137:                                              ; preds = %125
  %138 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %133, ptr noundef nonnull %99, ptr noundef nonnull %108) #24
  %139 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !91
  br label %146

140:                                              ; preds = %107
  %141 = load i32, ptr %99, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %143, ptr noundef nonnull %99, ptr noundef nonnull %108) #24
  %145 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !91
  br label %146

146:                                              ; preds = %107, %140, %117, %137, %134
  %147 = phi ptr [ %123, %117 ], [ %135, %134 ], [ %138, %137 ], [ %144, %140 ], [ %99, %107 ]
  %148 = phi ptr [ %124, %117 ], [ %136, %134 ], [ %139, %137 ], [ %145, %140 ], [ %108, %107 ]
  br i1 %65, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32, ptr %147, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 49
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = lshr i32 %150, 16
  %155 = and i32 %154, 255
  %156 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %155, ptr noundef nonnull %147) #24
  br label %157

157:                                              ; preds = %153, %149, %146
  %158 = phi ptr [ %156, %153 ], [ %147, %149 ], [ %147, %146 ]
  %159 = load i32, ptr %148, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 30
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2430, ptr noundef nonnull @.str.1) #24
  br label %163

163:                                              ; preds = %157, %162
  %164 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !102
  %166 = load i32, ptr %4, align 8
  %167 = lshr i32 %166, 16
  %168 = and i32 %167, 255
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !102
  %172 = zext i8 %171 to i64
  %173 = add nsw i64 %165, %172
  br label %174

174:                                              ; preds = %163, %51, %12
  %175 = phi i32 [ %25, %12 ], [ %58, %51 ], [ 0, %163 ]
  %176 = phi ptr [ %14, %12 ], [ %38, %51 ], [ %158, %163 ]
  %177 = phi i64 [ %21, %12 ], [ %54, %51 ], [ %165, %163 ]
  %178 = phi i64 [ %20, %12 ], [ %53, %51 ], [ %173, %163 ]
  %179 = phi i1 [ false, %12 ], [ false, %51 ], [ true, %163 ]
  br i1 %179, label %222, label %232

180:                                              ; preds = %3
  %181 = tail call i32 @true_regnum(ptr noundef nonnull %4) #24
  %182 = icmp ugt i32 %181, 52
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %185 = load i32, ptr %184, align 8, !tbaa !102
  %186 = zext i32 %185 to i64
  %187 = add nuw nsw i64 %186, 1
  br label %222

188:                                              ; preds = %180
  %189 = zext nneg i32 %181 to i64
  %190 = load i32, ptr %4, align 8
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %189, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !102
  %196 = zext i8 %195 to i32
  %197 = add nuw nsw i32 %181, %196
  %198 = zext nneg i32 %197 to i64
  br label %222

199:                                              ; preds = %3
  %200 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !102
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 37
  br i1 %204, label %205, label %3

205:                                              ; preds = %199
  %206 = tail call i32 @true_regnum(ptr noundef nonnull %4) #24
  %207 = icmp ugt i32 %206, 52
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load ptr, ptr %200, align 8, !tbaa !102
  br label %3

210:                                              ; preds = %205
  %211 = zext nneg i32 %206 to i64
  %212 = tail call i32 @subreg_nregs(ptr noundef nonnull %4) #24
  %213 = zext i32 %212 to i64
  %214 = add nuw nsw i64 %213, %211
  br label %222

215:                                              ; preds = %3
  %216 = and i32 %5, 65535
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !106
  %220 = icmp eq i32 %219, 9
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2471, ptr noundef nonnull @.str.1) #24
  br label %222

222:                                              ; preds = %221, %215, %3, %183, %188, %174, %210
  %223 = phi i32 [ 1, %210 ], [ 1, %183 ], [ 1, %188 ], [ 0, %174 ], [ 0, %3 ], [ 0, %215 ], [ 0, %221 ]
  %224 = phi i32 [ 0, %210 ], [ 0, %183 ], [ 0, %188 ], [ %175, %174 ], [ 1, %3 ], [ 1, %215 ], [ 1, %221 ]
  %225 = phi ptr [ null, %210 ], [ null, %183 ], [ null, %188 ], [ %176, %174 ], [ null, %3 ], [ null, %215 ], [ null, %221 ]
  %226 = phi i64 [ %211, %210 ], [ %186, %183 ], [ %189, %188 ], [ %177, %174 ], [ 0, %3 ], [ 0, %215 ], [ 0, %221 ]
  %227 = phi i64 [ %214, %210 ], [ %187, %183 ], [ %198, %188 ], [ %178, %174 ], [ 0, %3 ], [ 0, %215 ], [ 0, %221 ]
  store i32 %223, ptr %0, align 8, !tbaa.struct !400
  %228 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %224, ptr %228, align 4, !tbaa.struct !401
  %229 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %225, ptr %229, align 8, !tbaa.struct !402
  %230 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %226, ptr %230, align 8, !tbaa.struct !403
  %231 = getelementptr inbounds i8, ptr %0, i64 24
  store i64 %227, ptr %231, align 8, !tbaa.struct !404
  br label %232

232:                                              ; preds = %174, %222
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @immune_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct.decomposition) align 8 %2) unnamed_addr #9 !prof !90 {
  %4 = alloca %struct.decomposition, align 8
  %5 = load i32, ptr %2, align 8, !tbaa !405
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !407
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !408
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc i32 @refers_to_regno_for_reload_p(i32 noundef %10, i32 noundef %13, ptr noundef %0, ptr noundef null)
  %15 = icmp eq i32 %14, 0
  br label %89

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !409
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %89

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
  br i1 %28, label %29, label %89

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %4, ptr noundef nonnull %0)
  %30 = getelementptr inbounds i8, ptr %4, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa.struct !402
  %32 = getelementptr inbounds i8, ptr %4, i64 16
  %33 = load i64, ptr %32, align 8, !tbaa.struct !403
  %34 = getelementptr inbounds i8, ptr %4, i64 24
  %35 = load i64, ptr %34, align 8, !tbaa.struct !404
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  %36 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !410
  %38 = call i32 @rtx_equal_p(ptr noundef %31, ptr noundef %37) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %29
  %41 = load i32, ptr %31, align 8
  %42 = and i32 %41, 65535
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !106
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i32, ptr %37, align 8
  %49 = and i32 %48, 65535
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !106
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %89, label %54

54:                                               ; preds = %47
  br i1 %46, label %55, label %64

55:                                               ; preds = %54
  %56 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !91
  %57 = icmp eq ptr %37, %56
  %58 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %59 = icmp eq ptr %37, %58
  %60 = select i1 %57, i1 true, i1 %59
  %61 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %62 = icmp eq ptr %37, %61
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %89, label %64

64:                                               ; preds = %40, %55, %54
  %65 = load i32, ptr %37, align 8
  %66 = and i32 %65, 65535
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !106
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !91
  %73 = icmp eq ptr %31, %72
  %74 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %75 = icmp eq ptr %31, %74
  %76 = select i1 %73, i1 true, i1 %75
  %77 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16
  %78 = icmp eq ptr %31, %77
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %89, label %80

80:                                               ; preds = %71, %64
  br label %89

81:                                               ; preds = %29
  %82 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !408
  %84 = icmp sge i64 %33, %83
  %85 = getelementptr inbounds %struct.decomposition, ptr %2, i64 0, i32 3
  %86 = load i64, ptr %85, align 8
  %87 = icmp sge i64 %86, %35
  %88 = select i1 %84, i1 true, i1 %87
  br label %89

89:                                               ; preds = %71, %55, %47, %25, %16, %81, %80, %7
  %90 = phi i1 [ %15, %7 ], [ %88, %81 ], [ false, %80 ], [ true, %16 ], [ true, %25 ], [ true, %47 ], [ true, %55 ], [ true, %71 ]
  %91 = zext i1 %90 to i32
  ret i32 %91
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @find_reloads(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #10 !prof !411 {
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
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(i64 900, ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %29) #24
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = load i32, ptr %0, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %49, !prof !412

43:                                               ; preds = %5
  %44 = load i32, ptr %38, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 23
  br i1 %46, label %49, label %47, !prof !413

47:                                               ; preds = %43
  %48 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %38) #24
  br label %49

49:                                               ; preds = %5, %43, %47
  %50 = phi ptr [ %48, %47 ], [ null, %5 ], [ %38, %43 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %30) #24
  store ptr %0, ptr @this_insn, align 8, !tbaa !91
  store i32 0, ptr @n_reloads, align 4, !tbaa !106
  store i32 0, ptr @n_replacements, align 4, !tbaa !106
  store i32 0, ptr @n_earlyclobbers, align 4, !tbaa !106
  store i32 %1, ptr @replace_reloads, align 4, !tbaa !106
  store i32 %3, ptr @hard_regs_live_known, align 4, !tbaa !106
  store ptr %4, ptr @static_reload_reg_p, align 8, !tbaa !91
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -9
  %54 = icmp ult i32 %53, 2
  %55 = load i32, ptr @secondary_memlocs_elim_used, align 4, !tbaa !106
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57, !prof !412

57:                                               ; preds = %49
  %58 = sext i32 %55 to i64
  %59 = mul nsw i64 %58, 240
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @secondary_memlocs_elim, i8 0, i64 %59, i1 false)
  store i32 0, ptr @secondary_memlocs_elim_used, align 4, !tbaa !106
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, ptr %38, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %64, label %95, !prof !413

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !102
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %95, !prof !414

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !102
  %73 = icmp ult i32 %72, 53
  br i1 %73, label %74, label %95, !prof !415

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !102
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 37
  br i1 %79, label %80, label %95, !prof !416

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !102
  %83 = icmp ult i32 %82, 53
  br i1 %83, label %84, label %95, !prof !417

84:                                               ; preds = %80
  %85 = lshr i32 %77, 16
  %86 = and i32 %85, 255
  %87 = zext nneg i32 %82 to i64
  %88 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !106
  %90 = zext nneg i32 %72 to i64
  %91 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !106
  %93 = tail call i32 @ix86_register_move_cost(i32 noundef %86, i32 noundef %89, i32 noundef %92) #24
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %3288, label %95, !prof !417

95:                                               ; preds = %84, %80, %74, %70, %64, %60
  tail call void @extract_insn(ptr noundef nonnull %0) #24
  %96 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !418
  %97 = sext i8 %96 to i32
  store i32 %97, ptr @reload_n_operands, align 4, !tbaa !106
  %98 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !420
  %99 = sext i8 %98 to i64
  %100 = icmp eq i8 %96, 0
  %101 = icmp eq i8 %98, 0
  %102 = select i1 %100, i1 true, i1 %101, !prof !421
  br i1 %102, label %3288, label %103, !prof !422

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !102
  %106 = icmp slt i32 %105, 0
  %107 = lshr i32 %105, 31
  store i32 %107, ptr @this_insn_is_asm, align 4, !tbaa !106
  %108 = sext i8 %96 to i64
  %109 = shl nsw i64 %108, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %30, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), i64 %109, i1 false), !prof !423
  %110 = shl nsw i64 %108, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %110, i1 false), !prof !424
  %111 = icmp sgt i8 %96, 0
  br i1 %111, label %112, label %114, !prof !425

112:                                              ; preds = %103
  %113 = zext nneg i32 %97 to i64
  br label %119

114:                                              ; preds = %208, %103
  %115 = phi i32 [ -1, %103 ], [ %209, %208 ]
  %116 = icmp sgt i8 %96, 0
  br i1 %116, label %117, label %422, !prof !425

117:                                              ; preds = %114
  %118 = zext nneg i32 %97 to i64
  br label %215

119:                                              ; preds = %112, %208
  %120 = phi i64 [ 0, %112 ], [ %210, %208 ]
  %121 = phi i32 [ -1, %112 ], [ %209, %208 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #24
  %122 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %120
  %123 = load ptr, ptr %122, align 8, !tbaa !91
  %124 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %120
  store ptr %123, ptr %124, align 8, !tbaa !91
  %125 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %120
  %126 = load ptr, ptr %125, align 8, !tbaa !91
  %127 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %120
  store i32 0, ptr %127, align 4, !tbaa !106
  %128 = load i8, ptr %126, align 1, !tbaa !102
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %208, label %130, !prof !426

130:                                              ; preds = %119, %203
  %131 = phi i8 [ %206, %203 ], [ %128, %119 ]
  %132 = phi i32 [ %205, %203 ], [ %121, %119 ]
  %133 = phi ptr [ %204, %203 ], [ %126, %119 ]
  %134 = icmp eq i8 %131, 89
  %135 = select i1 %134, i64 2, i64 1, !prof !427
  %136 = getelementptr inbounds i8, ptr %133, i64 %135
  switch i8 %131, label %203 [
    i8 61, label %137
    i8 43, label %138
    i8 37, label %139
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
  ], !prof !428

137:                                              ; preds = %130
  store i32 2, ptr %127, align 4, !tbaa !106
  br label %203

138:                                              ; preds = %130
  store i32 1, ptr %127, align 4, !tbaa !106
  br label %203

139:                                              ; preds = %130
  %140 = add nsw i32 %97, -1
  %141 = zext i32 %140 to i64
  %142 = icmp eq i64 %120, %141
  br i1 %142, label %143, label %144, !prof !429

143:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2709, ptr noundef nonnull @.str.1) #24
  br label %144

144:                                              ; preds = %139, %143
  %145 = trunc i64 %120 to i32
  %146 = icmp slt i32 %132, 0
  br i1 %146, label %203, label %147, !prof !430

147:                                              ; preds = %144
  %148 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !106
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %203

150:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2721, ptr noundef nonnull @.str.1) #24
  br label %203

151:                                              ; preds = %130, %130, %130, %130, %130, %130, %130, %130, %130, %130
  %152 = getelementptr inbounds i8, ptr %136, i64 -1
  %153 = call i64 @strtoul(ptr noundef nonnull %152, ptr noundef nonnull %31, i32 noundef 10)
  %154 = trunc i64 %153 to i32
  %155 = load ptr, ptr %31, align 8, !tbaa !91
  %156 = shl i64 %153, 32
  %157 = ashr exact i64 %156, 32
  %158 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !91
  %160 = load ptr, ptr %122, align 8, !tbaa !91
  %161 = tail call i32 @operands_match_p(ptr noundef %159, ptr noundef %160)
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %157, i64 %120
  store i8 %162, ptr %163, align 1, !tbaa !102
  %164 = and i64 %153, 4294967295
  %165 = icmp eq i64 %120, %164
  br i1 %165, label %166, label %167, !prof !431

166:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2737, ptr noundef nonnull @.str.1) #24
  br label %167

167:                                              ; preds = %151, %166
  %168 = icmp sgt i32 %132, -1
  br i1 %168, label %169, label %203, !prof !432

169:                                              ; preds = %167
  %170 = icmp eq i32 %132, %154
  br i1 %170, label %174, label %171, !prof !433

171:                                              ; preds = %169
  %172 = add nuw nsw i32 %132, 1
  %173 = icmp eq i32 %172, %154
  br i1 %173, label %174, label %185, !prof !433

174:                                              ; preds = %171, %169
  %175 = phi i64 [ -1, %171 ], [ 1, %169 ]
  %176 = add i64 %175, %153
  %177 = shl i64 %176, 32
  %178 = ashr exact i64 %177, 32
  %179 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !91
  %181 = load ptr, ptr %122, align 8, !tbaa !91
  %182 = tail call i32 @operands_match_p(ptr noundef %180, ptr noundef %181)
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %178, i64 %120
  store i8 %183, ptr %184, align 1, !tbaa !102
  br label %185

185:                                              ; preds = %174, %171
  %186 = zext nneg i32 %132 to i64
  %187 = icmp eq i64 %120, %186
  br i1 %187, label %192, label %188, !prof !434

188:                                              ; preds = %185
  %189 = add nuw nsw i32 %132, 1
  %190 = zext nneg i32 %189 to i64
  %191 = icmp eq i64 %120, %190
  br i1 %191, label %192, label %203, !prof !435

192:                                              ; preds = %188, %185
  %193 = phi i64 [ -1, %188 ], [ 1, %185 ]
  %194 = add i64 %193, %120
  %195 = load ptr, ptr %158, align 8, !tbaa !91
  %196 = shl i64 %194, 32
  %197 = ashr exact i64 %196, 32
  %198 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !91
  %200 = tail call i32 @operands_match_p(ptr noundef %195, ptr noundef %199)
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %157, i64 %197
  store i8 %201, ptr %202, align 1, !tbaa !102
  br label %203

203:                                              ; preds = %130, %144, %150, %147, %167, %192, %188, %138, %137
  %204 = phi ptr [ %155, %192 ], [ %155, %188 ], [ %155, %167 ], [ %136, %147 ], [ %136, %150 ], [ %136, %138 ], [ %136, %137 ], [ %136, %144 ], [ %136, %130 ]
  %205 = phi i32 [ %132, %192 ], [ %132, %188 ], [ %132, %167 ], [ %132, %147 ], [ %132, %150 ], [ %132, %138 ], [ %132, %137 ], [ %145, %144 ], [ %132, %130 ]
  %206 = load i8, ptr %204, align 1, !tbaa !102
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %130, !prof !436, !llvm.loop !437

208:                                              ; preds = %203, %119
  %209 = phi i32 [ %121, %119 ], [ %205, %203 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #24
  %210 = add nuw nsw i64 %120, 1
  %211 = icmp eq i64 %210, %113
  br i1 %211, label %114, label %119, !prof !438, !llvm.loop !439

212:                                              ; preds = %418
  %213 = add nuw nsw i64 %216, 1
  %214 = icmp eq i64 %213, %118
  br i1 %214, label %422, label %215, !prof !438, !llvm.loop !440

215:                                              ; preds = %117, %212
  %216 = phi i64 [ 0, %117 ], [ %213, %212 ]
  %217 = phi i32 [ undef, %117 ], [ %421, %212 ]
  %218 = phi i32 [ 0, %117 ], [ %420, %212 ]
  %219 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %216
  %220 = load ptr, ptr %219, align 8, !tbaa !91
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 65535
  %223 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %216
  store i32 0, ptr %223, align 4, !tbaa !106
  %224 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %216
  store i32 0, ptr %224, align 4, !tbaa !106
  %225 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %216
  %226 = load i32, ptr %225, align 4, !tbaa !106
  %227 = icmp eq i32 %226, 0
  %228 = icmp eq i32 %226, 2
  %229 = select i1 %228, i32 1, i32 9, !prof !441
  %230 = select i1 %227, i32 0, i32 %229, !prof !442
  %231 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %216
  store i32 %230, ptr %231, align 4, !tbaa !106
  %232 = select i1 %228, i32 5, i32 9, !prof !441
  %233 = select i1 %227, i32 3, i32 %232, !prof !442
  %234 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %216
  store i32 %233, ptr %234, align 4, !tbaa !106
  %235 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %216
  %236 = load ptr, ptr %235, align 8, !tbaa !91
  %237 = load i8, ptr %236, align 1, !tbaa !102
  switch i8 %237, label %268 [
    i8 0, label %391
    i8 112, label %238
  ], !prof !443

238:                                              ; preds = %215
  %239 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %216
  %240 = load i32, ptr %239, align 4, !tbaa !106
  %241 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %216
  %242 = load ptr, ptr %241, align 8, !tbaa !91
  %243 = trunc i64 %216 to i32
  %244 = call fastcc i32 @find_reloads_address(i32 noundef %240, ptr noundef null, ptr noundef nonnull %220, ptr noundef %242, i32 noundef %243, i32 noundef %230, i32 noundef %2, ptr noundef nonnull %0)
  store i32 %244, ptr %224, align 4, !tbaa !106
  %245 = load ptr, ptr %241, align 8, !tbaa !91
  %246 = load ptr, ptr %245, align 8, !tbaa !91
  %247 = load i32, ptr %246, align 8
  %248 = and i32 %247, 65535
  %249 = zext nneg i32 %248 to i64
  %250 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !106
  %252 = and i32 %251, -2
  %253 = icmp eq i32 %252, 8
  %254 = icmp eq i32 %248, 39
  %255 = or i1 %254, %253
  br i1 %255, label %256, label %262, !prof !444

256:                                              ; preds = %238
  %257 = load ptr, ptr %219, align 8, !tbaa !91
  %258 = load i32, ptr %257, align 8
  %259 = trunc i32 %258 to i16
  switch i16 %259, label %262 [
    i16 52, label %260
    i16 49, label %260
  ]

260:                                              ; preds = %256, %256
  store i32 -1, ptr %104, align 8, !tbaa !102
  %261 = call i32 @find_reloads(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %418

262:                                              ; preds = %256, %238
  store ptr %246, ptr %219, align 8, !tbaa !91
  %263 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %216
  store ptr %246, ptr %263, align 8, !tbaa !91
  %264 = load i32, ptr %246, align 8
  %265 = lshr i32 %264, 16
  %266 = and i32 %265, 255
  %267 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %216
  store i32 %266, ptr %267, align 4, !tbaa !106
  br label %391

268:                                              ; preds = %215
  %269 = trunc i32 %221 to i16
  switch i16 %269, label %337 [
    i16 43, label %270
    i16 39, label %283
    i16 49, label %342
  ], !prof !445

270:                                              ; preds = %268
  %271 = load i32, ptr %220, align 8
  %272 = lshr i32 %271, 16
  %273 = and i32 %272, 255
  %274 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %216
  %275 = load ptr, ptr %274, align 8, !tbaa !91
  %276 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !102
  %278 = trunc i64 %216 to i32
  %279 = call fastcc i32 @find_reloads_address(i32 noundef %273, ptr noundef %275, ptr noundef %277, ptr noundef nonnull %276, i32 noundef %278, i32 noundef %233, i32 noundef %2, ptr noundef nonnull %0)
  store i32 %279, ptr %223, align 4, !tbaa !106
  %280 = load ptr, ptr %274, align 8, !tbaa !91
  %281 = load ptr, ptr %280, align 8, !tbaa !91
  store ptr %281, ptr %219, align 8, !tbaa !91
  %282 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %216
  store ptr %281, ptr %282, align 8, !tbaa !91
  br label %391

283:                                              ; preds = %268
  %284 = icmp eq ptr %50, null
  %285 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !102
  br i1 %284, label %292, label %287, !prof !446

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %289 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %216
  %290 = load ptr, ptr %289, align 8, !tbaa !91
  %291 = icmp eq ptr %288, %290
  br label %292

292:                                              ; preds = %287, %283
  %293 = phi i1 [ false, %283 ], [ %291, %287 ]
  %294 = icmp eq i32 %1, 0
  %295 = zext i1 %293 to i32
  %296 = trunc i64 %216 to i32
  %297 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %220, i32 noundef %296, i32 noundef %233, i32 noundef %2, i32 noundef %295, ptr noundef nonnull %0, ptr noundef nonnull %223)
  br i1 %294, label %335, label %298, !prof !447

298:                                              ; preds = %292
  %299 = load i32, ptr %297, align 8
  %300 = and i32 %299, 65535
  %301 = icmp eq i32 %300, 43
  br i1 %301, label %302, label %335

302:                                              ; preds = %298
  %303 = load i32, ptr %286, align 8
  %304 = and i32 %303, 65535
  %305 = icmp eq i32 %304, 37
  br i1 %305, label %306, label %335

306:                                              ; preds = %302
  %307 = lshr i32 %303, 16
  %308 = and i32 %307, 255
  %309 = zext nneg i32 %308 to i64
  %310 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !102
  %312 = lshr i32 %299, 16
  %313 = and i32 %312, 255
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !102
  %317 = icmp ult i8 %311, %316
  br i1 %317, label %335, label %318

318:                                              ; preds = %306
  %319 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %320 = getelementptr inbounds %struct.rtx_def, ptr %286, i64 0, i32 1
  %321 = load i32, ptr %320, align 8, !tbaa !102
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds ptr, ptr %319, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !91
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %335

326:                                              ; preds = %318
  %327 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %286) #24
  %328 = call ptr @emit_insn_before(ptr noundef %327, ptr noundef nonnull %0) #24
  %329 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %330 = load i32, ptr %320, align 8, !tbaa !102
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds ptr, ptr %329, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !91
  %334 = call ptr @set_unique_reg_note(ptr noundef %328, i32 noundef 4, ptr noundef %333) #24
  br label %335

335:                                              ; preds = %326, %318, %306, %302, %298, %292
  store ptr %297, ptr %219, align 8, !tbaa !91
  %336 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %216
  store ptr %297, ptr %336, align 8, !tbaa !91
  br label %391

337:                                              ; preds = %268
  %338 = zext nneg i32 %222 to i64
  %339 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !106
  %341 = icmp eq i32 %340, 4
  br i1 %341, label %342, label %346, !prof !448

342:                                              ; preds = %268, %337
  %343 = trunc i64 %216 to i32
  %344 = call fastcc ptr @find_reloads_toplev(ptr noundef nonnull %220, i32 noundef %343, i32 noundef %233, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %223)
  store ptr %344, ptr %219, align 8, !tbaa !91
  %345 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %216
  store ptr %344, ptr %345, align 8, !tbaa !91
  br label %391

346:                                              ; preds = %337
  %347 = icmp eq i32 %222, 37
  br i1 %347, label %348, label %391, !prof !449

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %350 = load i32, ptr %349, align 8, !tbaa !102
  %351 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds ptr, ptr %351, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !91
  %355 = icmp eq ptr %354, null
  br i1 %355, label %373, label %356, !prof !450

356:                                              ; preds = %348
  %357 = icmp eq ptr %50, null
  br i1 %357, label %363, label %358

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %360 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %216
  %361 = load ptr, ptr %360, align 8, !tbaa !91
  %362 = icmp eq ptr %359, %361
  br i1 %362, label %373, label %363

363:                                              ; preds = %358, %356
  %364 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %216
  %365 = load i32, ptr %364, align 4, !tbaa !106
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load i32, ptr %220, align 8
  %369 = lshr i32 %368, 16
  %370 = and i32 %369, 255
  store i32 %370, ptr %364, align 4, !tbaa !106
  br label %371

371:                                              ; preds = %367, %363
  store ptr %354, ptr %219, align 8, !tbaa !91
  %372 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %216
  store ptr %354, ptr %372, align 8, !tbaa !91
  br label %373

373:                                              ; preds = %371, %358, %348
  %374 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %375 = getelementptr inbounds ptr, ptr %374, i64 %352
  %376 = load ptr, ptr %375, align 8, !tbaa !91
  %377 = icmp eq ptr %376, null
  br i1 %377, label %391, label %378, !prof !451

378:                                              ; preds = %373
  %379 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %380 = getelementptr inbounds ptr, ptr %379, i64 %352
  %381 = load ptr, ptr %380, align 8, !tbaa !91
  %382 = icmp ne ptr %381, null
  %383 = load i32, ptr @num_not_at_initial_offset, align 4
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %382, i1 true, i1 %384, !prof !243
  br i1 %385, label %386, label %391, !prof !243

386:                                              ; preds = %378
  %387 = load ptr, ptr %219, align 8, !tbaa !91
  %388 = trunc i64 %216 to i32
  %389 = call fastcc ptr @find_reloads_toplev(ptr noundef %387, i32 noundef %388, i32 noundef %233, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %223)
  store ptr %389, ptr %219, align 8, !tbaa !91
  %390 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %216
  store ptr %389, ptr %390, align 8, !tbaa !91
  br label %391

391:                                              ; preds = %373, %386, %378, %215, %262, %335, %346, %342, %270
  %392 = load ptr, ptr %219, align 8, !tbaa !91
  %393 = load i32, ptr %392, align 8
  %394 = and i32 %393, 65535
  %395 = icmp eq i32 %394, 37
  br i1 %395, label %396, label %412, !prof !452

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.rtx_def, ptr %392, i64 0, i32 1
  %398 = load i32, ptr %397, align 8, !tbaa !102
  %399 = icmp ugt i32 %398, 52
  br i1 %399, label %400, label %402, !prof !453

400:                                              ; preds = %396
  %401 = call i32 @reg_preferred_class(i32 noundef %398) #24
  br label %402

402:                                              ; preds = %396, %400
  %403 = phi i32 [ %401, %400 ], [ 0, %396 ]
  %404 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %216
  store i32 %403, ptr %404, align 4, !tbaa !106
  %405 = load ptr, ptr %219, align 8, !tbaa !91
  %406 = getelementptr inbounds %struct.rtx_def, ptr %405, i64 0, i32 1
  %407 = load i32, ptr %406, align 8, !tbaa !102
  %408 = icmp ugt i32 %407, 52
  br i1 %408, label %409, label %414, !prof !453

409:                                              ; preds = %402
  %410 = call i32 @reg_alternate_class(i32 noundef %407) #24
  %411 = icmp eq i32 %410, 0
  br label %414

412:                                              ; preds = %391
  %413 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %216
  store i32 0, ptr %413, align 4, !tbaa !106
  br label %414

414:                                              ; preds = %412, %409, %402
  %415 = phi i1 [ false, %402 ], [ %411, %409 ], [ false, %412 ]
  %416 = zext i1 %415 to i8
  %417 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %216
  store i8 %416, ptr %417, align 1, !tbaa !102
  br label %418

418:                                              ; preds = %414, %260
  %419 = phi i1 [ true, %414 ], [ false, %260 ]
  %420 = phi i32 [ %218, %414 ], [ %261, %260 ]
  %421 = phi i32 [ %217, %414 ], [ %261, %260 ]
  br i1 %419, label %212, label %3288, !prof !454

422:                                              ; preds = %212, %114
  %423 = phi i32 [ 0, %114 ], [ %420, %212 ]
  %424 = phi i32 [ undef, %114 ], [ %421, %212 ]
  %425 = icmp ne ptr %50, null
  %426 = icmp sgt i8 %96, 1
  %427 = and i1 %425, %426
  br i1 %427, label %428, label %450, !prof !455

428:                                              ; preds = %422
  %429 = load ptr, ptr @recog_data, align 8, !tbaa !91
  %430 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !102
  %432 = icmp eq ptr %429, %431
  br i1 %432, label %433, label %450, !prof !456

433:                                              ; preds = %428
  %434 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !91
  %435 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !102
  %437 = icmp eq ptr %434, %436
  br i1 %437, label %438, label %450, !prof !457

438:                                              ; preds = %433
  %439 = load i32, ptr %7, align 16, !tbaa !106
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 1
  %442 = load i32, ptr %441, align 4, !tbaa !106
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %440, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !106
  store i32 %445, ptr %441, align 4, !tbaa !106
  store i32 %445, ptr %7, align 16, !tbaa !106
  %446 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 1
  %447 = load i8, ptr %446, align 1, !tbaa !102
  %448 = load i8, ptr %8, align 16, !tbaa !102
  %449 = or i8 %448, %447
  store i8 %449, ptr %8, align 16, !tbaa !102
  store i8 %449, ptr %446, align 1, !tbaa !102
  br label %450

450:                                              ; preds = %438, %433, %428, %422
  %451 = icmp sgt i8 %98, 0
  br label %452

452:                                              ; preds = %1511, %450
  %453 = phi i32 [ 0, %450 ], [ %1471, %1511 ]
  %454 = phi i32 [ 0, %450 ], [ %1472, %1511 ]
  %455 = phi i32 [ 660, %450 ], [ %1473, %1511 ]
  %456 = phi i32 [ 0, %450 ], [ %1474, %1511 ]
  %457 = phi i32 [ 0, %450 ], [ %1475, %1511 ]
  %458 = phi i32 [ 0, %450 ], [ %1479, %1511 ]
  br i1 %451, label %459, label %1470, !prof !458

459:                                              ; preds = %452
  %460 = icmp sgt i8 %96, 0
  %461 = icmp sgt i8 %96, 0
  %462 = zext nneg i32 %97 to i64
  %463 = zext nneg i32 %97 to i64
  %464 = zext i32 %97 to i64
  %465 = zext i32 %97 to i64
  %466 = shl nuw nsw i64 %465, 2
  %467 = zext i32 %97 to i64
  br label %468

468:                                              ; preds = %459, %1467
  %469 = phi i64 [ 0, %459 ], [ %1468, %1467 ]
  %470 = phi i32 [ %457, %459 ], [ %1466, %1467 ]
  %471 = phi i32 [ %456, %459 ], [ %1465, %1467 ]
  %472 = phi i32 [ %455, %459 ], [ %1464, %1467 ]
  %473 = phi i32 [ %454, %459 ], [ %1463, %1467 ]
  %474 = phi i32 [ %453, %459 ], [ %1462, %1467 ]
  %475 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %469
  %476 = load i8, ptr %475, align 1, !tbaa !102
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %479, label %478, !prof !459

478:                                              ; preds = %468
  br i1 %460, label %504, label %499, !prof !460

479:                                              ; preds = %468
  %480 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !418
  %481 = icmp sgt i8 %480, 0
  br i1 %481, label %482, label %1460

482:                                              ; preds = %479
  %483 = zext nneg i8 %480 to i64
  br label %484

484:                                              ; preds = %482, %493
  %485 = phi i64 [ 0, %482 ], [ %497, %493 ]
  %486 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !91
  br label %488

488:                                              ; preds = %491, %484
  %489 = phi ptr [ %487, %484 ], [ %492, %491 ]
  %490 = load i8, ptr %489, align 1, !tbaa !102
  switch i8 %490, label %491 [
    i8 0, label %493
    i8 44, label %493
  ]

491:                                              ; preds = %488
  %492 = getelementptr inbounds i8, ptr %489, i64 1
  br label %488, !llvm.loop !461

493:                                              ; preds = %488, %488
  %494 = icmp eq i8 %490, 44
  %495 = zext i1 %494 to i64
  %496 = getelementptr inbounds i8, ptr %489, i64 %495
  store ptr %496, ptr %486, align 8, !tbaa !91
  %497 = add nuw nsw i64 %485, 1
  %498 = icmp eq i64 %497, %483
  br i1 %498, label %1460, label %484, !llvm.loop !462

499:                                              ; preds = %1256, %478
  %500 = phi i32 [ 0, %478 ], [ %1214, %1256 ]
  %501 = phi i32 [ 0, %478 ], [ %1215, %1256 ]
  %502 = phi i32 [ 0, %478 ], [ %1257, %1256 ]
  %503 = phi i32 [ 0, %478 ], [ %1086, %1256 ]
  br i1 %461, label %1260, label %1384, !prof !460

504:                                              ; preds = %478, %1256
  %505 = phi i64 [ %1258, %1256 ], [ 0, %478 ]
  %506 = phi i32 [ %1086, %1256 ], [ 0, %478 ]
  %507 = phi i32 [ %1257, %1256 ], [ 0, %478 ]
  %508 = phi i32 [ %1215, %1256 ], [ 0, %478 ]
  %509 = phi i32 [ %1214, %1256 ], [ 0, %478 ]
  %510 = trunc i64 %505 to i32
  %511 = getelementptr inbounds [30 x ptr], ptr %6, i64 0, i64 %505
  %512 = load ptr, ptr %511, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #24
  %513 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %505
  %514 = load ptr, ptr %513, align 8, !tbaa !91
  %515 = load i32, ptr %514, align 8
  %516 = and i32 %515, 65535
  %517 = zext nneg i32 %516 to i64
  %518 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %517
  %519 = load i32, ptr %518, align 4, !tbaa !106
  %520 = icmp eq i32 %519, 4
  br i1 %520, label %521, label %527, !prof !463

521:                                              ; preds = %504
  %522 = load i8, ptr %512, align 1, !tbaa !102
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %521
  %525 = getelementptr inbounds %struct.rtx_def, ptr %514, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !102
  br label %527

527:                                              ; preds = %524, %521, %504
  %528 = phi ptr [ %526, %524 ], [ %514, %521 ], [ %514, %504 ]
  %529 = load i32, ptr %528, align 8
  %530 = and i32 %529, 65535
  %531 = icmp eq i32 %530, 39
  br i1 %531, label %532, label %612, !prof !464

532:                                              ; preds = %527, %607
  %533 = phi i32 [ %609, %607 ], [ %529, %527 ]
  %534 = phi i32 [ %608, %607 ], [ 0, %527 ]
  %535 = phi i32 [ %569, %607 ], [ 0, %527 ]
  %536 = phi ptr [ %571, %607 ], [ %528, %527 ]
  %537 = getelementptr inbounds %struct.rtx_def, ptr %536, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !102
  %539 = load i32, ptr %538, align 8
  %540 = and i32 %539, 65535
  %541 = icmp eq i32 %540, 37
  br i1 %541, label %542, label %568, !prof !465

542:                                              ; preds = %532
  %543 = getelementptr inbounds %struct.rtx_def, ptr %538, i64 0, i32 1
  %544 = load i32, ptr %543, align 8, !tbaa !102
  %545 = icmp ult i32 %544, 53
  br i1 %545, label %546, label %568, !prof !465

546:                                              ; preds = %542
  %547 = lshr i32 %539, 16
  %548 = and i32 %547, 255
  %549 = getelementptr inbounds %struct.rtx_def, ptr %536, i64 0, i32 1, i32 0, i32 0, i64 1
  %550 = load i32, ptr %549, align 8, !tbaa !102
  %551 = lshr i32 %533, 16
  %552 = and i32 %551, 255
  %553 = call i32 @simplify_subreg_regno(i32 noundef %544, i32 noundef %548, i32 noundef %550, i32 noundef %552) #24
  %554 = icmp slt i32 %553, 0
  %555 = select i1 %554, i32 1, i32 %534, !prof !466
  %556 = load ptr, ptr %537, align 8, !tbaa !102
  %557 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1
  %558 = load i32, ptr %557, align 8, !tbaa !102
  %559 = load i32, ptr %556, align 8
  %560 = lshr i32 %559, 16
  %561 = and i32 %560, 255
  %562 = load i32, ptr %549, align 8, !tbaa !102
  %563 = load i32, ptr %536, align 8
  %564 = lshr i32 %563, 16
  %565 = and i32 %564, 255
  %566 = call i32 @subreg_regno_offset(i32 noundef %558, i32 noundef %561, i32 noundef %562, i32 noundef %565) #24
  %567 = add i32 %566, %535
  br label %568

568:                                              ; preds = %546, %542, %532
  %569 = phi i32 [ %567, %546 ], [ %535, %542 ], [ %535, %532 ]
  %570 = phi i32 [ %555, %546 ], [ %534, %542 ], [ %534, %532 ]
  %571 = load ptr, ptr %537, align 8, !tbaa !102
  %572 = load i32, ptr %571, align 8
  %573 = and i32 %572, 65535
  %574 = zext nneg i32 %573 to i64
  %575 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %574
  %576 = load i32, ptr %575, align 4, !tbaa !106
  %577 = icmp eq i32 %576, 9
  %578 = icmp eq i32 %573, 49
  %579 = or i1 %577, %578
  br i1 %579, label %606, label %580, !prof !466

580:                                              ; preds = %568
  %581 = trunc i32 %572 to i16
  switch i16 %581, label %607 [
    i16 43, label %586
    i16 37, label %582
  ], !prof !467

582:                                              ; preds = %580
  %583 = getelementptr inbounds %struct.rtx_def, ptr %571, i64 0, i32 1
  %584 = load i32, ptr %583, align 8, !tbaa !102
  %585 = icmp ugt i32 %584, 52
  br i1 %585, label %586, label %607, !prof !466

586:                                              ; preds = %580, %582
  %587 = lshr i32 %572, 16
  %588 = and i32 %587, 255
  %589 = zext nneg i32 %588 to i64
  %590 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %589
  %591 = load i8, ptr %590, align 1, !tbaa !102
  %592 = zext i8 %591 to i32
  %593 = shl nuw nsw i32 %592, 3
  %594 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !106
  %595 = and i32 %594, 32
  %596 = icmp eq i32 %595, 0
  %597 = select i1 %596, i32 128, i32 256
  %598 = icmp ult i32 %593, %597
  br i1 %598, label %599, label %607

599:                                              ; preds = %586
  %600 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %505
  %601 = load i32, ptr %600, align 4, !tbaa !106
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !102
  %605 = icmp ugt i8 %604, %591
  br i1 %605, label %606, label %607

606:                                              ; preds = %599, %568
  br label %607

607:                                              ; preds = %586, %582, %580, %606, %599
  %608 = phi i32 [ 1, %606 ], [ %570, %599 ], [ %570, %580 ], [ %570, %582 ], [ %570, %586 ]
  %609 = load i32, ptr %571, align 8
  %610 = and i32 %609, 65535
  %611 = icmp eq i32 %610, 39
  br i1 %611, label %532, label %612, !prof !466, !llvm.loop !468

612:                                              ; preds = %607, %527
  %613 = phi ptr [ %528, %527 ], [ %571, %607 ]
  %614 = phi i32 [ 0, %527 ], [ %569, %607 ]
  %615 = phi i32 [ 0, %527 ], [ %608, %607 ]
  %616 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %505
  store i32 0, ptr %616, align 4, !tbaa !106
  %617 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %505
  store i8 0, ptr %617, align 1, !tbaa !102
  %618 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %505
  store i8 0, ptr %618, align 1, !tbaa !102
  %619 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %505
  store i8 0, ptr %619, align 1, !tbaa !102
  %620 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %505
  store i8 0, ptr %620, align 1, !tbaa !102
  %621 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %505
  store i32 -1, ptr %621, align 4, !tbaa !106
  %622 = load i8, ptr %512, align 1, !tbaa !102
  switch i8 %622, label %624 [
    i8 0, label %623
    i8 44, label %623
  ], !prof !469

623:                                              ; preds = %612, %612
  br label %624

624:                                              ; preds = %612, %623
  %625 = phi i32 [ 1, %623 ], [ 0, %612 ]
  %626 = phi i32 [ 0, %623 ], [ 1, %612 ]
  br label %627

627:                                              ; preds = %1075, %624
  %628 = phi i32 [ %509, %624 ], [ %1076, %1075 ]
  %629 = phi i32 [ %508, %624 ], [ %1077, %1075 ]
  %630 = phi i32 [ %507, %624 ], [ %1078, %1075 ]
  %631 = phi ptr [ %512, %624 ], [ %1091, %1075 ]
  %632 = phi i32 [ %625, %624 ], [ %1081, %1075 ]
  %633 = phi i32 [ 0, %624 ], [ %1082, %1075 ]
  %634 = phi i32 [ %626, %624 ], [ %1083, %1075 ]
  %635 = phi i32 [ 0, %624 ], [ %1084, %1075 ]
  %636 = phi i32 [ %506, %624 ], [ %1086, %1075 ]
  %637 = phi i32 [ %615, %624 ], [ %1087, %1075 ]
  %638 = phi i32 [ 0, %624 ], [ %1088, %1075 ]
  %639 = phi i32 [ 0, %624 ], [ %1089, %1075 ]
  %640 = phi i32 [ 0, %624 ], [ %1090, %1075 ]
  %641 = load i8, ptr %631, align 1, !tbaa !102
  %642 = sext i8 %641 to i32
  %643 = icmp eq i8 %641, 89
  %644 = select i1 %643, i64 2, i64 1, !prof !470
  switch i8 %641, label %1041 [
    i8 0, label %645
    i8 44, label %646
    i8 61, label %1075
    i8 43, label %1075
    i8 42, label %1075
    i8 37, label %1075
    i8 63, label %647
    i8 33, label %649
    i8 35, label %650
    i8 48, label %654
    i8 49, label %654
    i8 50, label %654
    i8 51, label %654
    i8 52, label %654
    i8 53, label %654
    i8 54, label %654
    i8 55, label %654
    i8 56, label %654
    i8 57, label %654
    i8 112, label %788
    i8 109, label %789
    i8 60, label %819
    i8 62, label %833
    i8 86, label %847
    i8 111, label %877
    i8 38, label %944
    i8 69, label %945
    i8 70, label %945
    i8 71, label %956
    i8 72, label %956
    i8 115, label %965
    i8 105, label %971
    i8 110, label %985
    i8 73, label %992
    i8 74, label %992
    i8 75, label %992
    i8 76, label %992
    i8 77, label %992
    i8 78, label %992
    i8 79, label %992
    i8 80, label %992
    i8 88, label %1003
    i8 103, label %1004
    i8 114, label %1036
  ], !prof !471

645:                                              ; preds = %627
  br label %1075

646:                                              ; preds = %627
  br label %1075

647:                                              ; preds = %627
  %648 = add nsw i32 %630, 6
  br label %1075

649:                                              ; preds = %627
  br label %1075

650:                                              ; preds = %627, %650
  %651 = phi ptr [ %652, %650 ], [ %631, %627 ]
  %652 = getelementptr inbounds i8, ptr %651, i64 1
  %653 = load i8, ptr %652, align 1, !tbaa !102
  switch i8 %653, label %650 [
    i8 0, label %1075
    i8 44, label %1075
  ]

654:                                              ; preds = %627, %627, %627, %627, %627, %627, %627, %627, %627, %627
  %655 = icmp ne i32 %458, 0
  %656 = call i64 @strtoul(ptr noundef %631, ptr noundef nonnull %32, i32 noundef 10)
  %657 = trunc i64 %656 to i32
  %658 = load ptr, ptr %32, align 8, !tbaa !91
  store i32 %657, ptr %621, align 4, !tbaa !106
  br i1 %655, label %659, label %683, !prof !472

659:                                              ; preds = %654
  %660 = add nsw i32 %115, 1
  %661 = zext i32 %660 to i64
  %662 = icmp eq i64 %505, %661
  %663 = icmp eq i32 %115, %657
  %664 = select i1 %663, i1 %662, i1 false, !prof !473
  br i1 %664, label %683, label %665, !prof !473

665:                                              ; preds = %659
  %666 = shl nsw i32 %115, 1
  %667 = or disjoint i32 %666, 1
  %668 = zext i32 %115 to i64
  %669 = icmp eq i64 %505, %668
  %670 = select i1 %669, i1 true, i1 %662
  %671 = sub nsw i32 %667, %510
  %672 = trunc i64 %505 to i32
  %673 = select i1 %670, i32 %671, i32 %672
  %674 = sext i32 %673 to i64
  %675 = icmp eq i32 %660, %657
  %676 = select i1 %663, i1 true, i1 %675, !prof !473
  %677 = sub nsw i32 %667, %657
  %678 = select i1 %676, i32 %677, i32 %657, !prof !473
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %679, i64 %674
  %681 = load i8, ptr %680, align 1, !tbaa !102
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %715, label %689, !prof !473

683:                                              ; preds = %659, %654
  %684 = shl i64 %656, 32
  %685 = ashr exact i64 %684, 32
  %686 = getelementptr inbounds [30 x [30 x i8]], ptr %28, i64 0, i64 %685, i64 %505
  %687 = load i8, ptr %686, align 1, !tbaa !102
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %715, label %689, !prof !474

689:                                              ; preds = %683, %665
  %690 = shl i64 %656, 32
  %691 = ashr exact i64 %690, 32
  %692 = getelementptr inbounds [30 x i8], ptr %17, i64 0, i64 %691
  %693 = load i8, ptr %692, align 1, !tbaa !102
  %694 = icmp eq i8 %693, 0
  br i1 %694, label %710, label %695, !prof !475

695:                                              ; preds = %689
  %696 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %691
  %697 = load ptr, ptr %696, align 8, !tbaa !91
  %698 = load i32, ptr %697, align 8
  %699 = and i32 %698, 65535
  %700 = icmp eq i32 %699, 43
  br i1 %700, label %701, label %710

701:                                              ; preds = %695
  %702 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %691
  %703 = load i32, ptr %702, align 4, !tbaa !106
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %710

705:                                              ; preds = %701
  %706 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %691
  %707 = load i8, ptr %706, align 1, !tbaa !102
  %708 = icmp eq i8 %707, 0
  %709 = select i1 %708, i32 1, i32 %629
  br label %710

710:                                              ; preds = %705, %701, %695, %689
  %711 = phi i32 [ %629, %701 ], [ %629, %695 ], [ %629, %689 ], [ %709, %705 ]
  %712 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %691
  %713 = load i8, ptr %712, align 1, !tbaa !102
  %714 = sext i8 %713 to i32
  br label %766

715:                                              ; preds = %665, %683
  %716 = add nsw i32 %115, 1
  %717 = add nsw i32 %115, 1
  %718 = add nsw i32 %115, 1
  %719 = add nsw i32 %115, 1
  %720 = zext i32 %716 to i64
  %721 = zext i32 %115 to i64
  %722 = icmp eq i64 %505, %721
  %723 = select i1 %655, i1 %722, i1 false
  %724 = icmp eq i64 %505, %720
  %725 = select i1 %655, i1 %724, i1 false
  %726 = trunc i64 %505 to i32
  %727 = select i1 %725, i32 %115, i32 %726
  %728 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %505
  %729 = select i1 %723, i32 %717, i32 %727
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %730
  %732 = shl i64 %656, 32
  %733 = ashr exact i64 %732, 32
  %734 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %733
  %735 = load i8, ptr %734, align 1, !tbaa !102
  %736 = icmp ne i8 %735, 0
  %737 = zext i1 %736 to i32
  %738 = add nsw i32 %628, %737
  store i8 0, ptr %734, align 1, !tbaa !102
  %739 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %733
  %740 = load i32, ptr %739, align 4, !tbaa !106
  %741 = icmp eq i32 %740, 0
  %742 = select i1 %741, i32 1, i32 %629, !prof !254
  %743 = icmp eq i32 %115, %657
  %744 = select i1 %655, i1 %743, i1 false, !prof !254
  %745 = icmp eq i32 %718, %657
  %746 = select i1 %655, i1 %745, i1 false
  %747 = select i1 %746, i32 %115, i32 %657
  %748 = select i1 %744, i32 %719, i32 %747, !prof !254
  %749 = load ptr, ptr %513, align 8, !tbaa !91
  %750 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %733
  %751 = load ptr, ptr %750, align 8, !tbaa !91
  %752 = load ptr, ptr %731, align 8, !tbaa !91
  %753 = sext i32 %748 to i64
  %754 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %753
  %755 = load ptr, ptr %754, align 8, !tbaa !91
  %756 = load i32, ptr %728, align 4, !tbaa !106
  %757 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %733
  %758 = load i32, ptr %757, align 4, !tbaa !106
  %759 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %733
  %760 = load i8, ptr %759, align 1, !tbaa !102
  %761 = sext i8 %760 to i32
  %762 = call fastcc ptr @find_dummy_reload(ptr noundef %749, ptr noundef %751, ptr noundef %752, ptr noundef %755, i32 noundef %756, i32 noundef %758, i32 noundef %740, i32 noundef -1, i32 noundef %761)
  %763 = icmp ne ptr %762, null
  %764 = sext i1 %763 to i32
  %765 = add nsw i32 %738, %764
  br label %766

766:                                              ; preds = %715, %710
  %767 = phi i32 [ %628, %710 ], [ %765, %715 ]
  %768 = phi i32 [ %711, %710 ], [ %742, %715 ]
  %769 = phi i32 [ %714, %710 ], [ %633, %715 ]
  %770 = shl i64 %656, 32
  %771 = ashr exact i64 %770, 32
  %772 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %771
  %773 = load i32, ptr %772, align 4, !tbaa !106
  store i32 %773, ptr %616, align 4, !tbaa !106
  %774 = icmp eq i32 %769, 0
  %775 = icmp ne i32 %637, 0
  %776 = select i1 %774, i1 true, i1 %775, !prof !476
  br i1 %776, label %777, label %1075, !prof !476

777:                                              ; preds = %766
  %778 = icmp eq i64 %505, 0
  br i1 %778, label %1075, label %779, !prof !477

779:                                              ; preds = %777, %779
  %780 = phi i64 [ %786, %779 ], [ 0, %777 ]
  %781 = phi i32 [ %785, %779 ], [ 0, %777 ]
  %782 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %780
  %783 = load i32, ptr %782, align 4, !tbaa !106
  %784 = icmp eq i32 %783, %657
  %785 = select i1 %784, i32 1, i32 %781, !prof !478
  %786 = add nuw nsw i64 %780, 1
  %787 = icmp eq i64 %786, %505
  br i1 %787, label %1075, label %779, !prof !479, !llvm.loop !480

788:                                              ; preds = %627
  store i32 13, ptr %616, align 4, !tbaa !106
  br label %1075

789:                                              ; preds = %627
  %790 = icmp eq i32 %637, 0
  br i1 %790, label %791, label %1075, !prof !481

791:                                              ; preds = %789
  %792 = load i32, ptr %613, align 8
  %793 = trunc i32 %792 to i16
  switch i16 %793, label %805 [
    i16 43, label %804
    i16 37, label %794
  ], !prof !482

794:                                              ; preds = %791
  %795 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %796 = load i32, ptr %795, align 8, !tbaa !102
  %797 = icmp ugt i32 %796, 52
  br i1 %797, label %798, label %805, !prof !483

798:                                              ; preds = %794
  %799 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %800 = zext i32 %796 to i64
  %801 = getelementptr inbounds i16, ptr %799, i64 %800
  %802 = load i16, ptr %801, align 2, !tbaa !142
  %803 = icmp slt i16 %802, 0
  br i1 %803, label %804, label %805, !prof !162

804:                                              ; preds = %798, %791
  br label %805

805:                                              ; preds = %791, %804, %798, %794
  %806 = phi i32 [ 1, %804 ], [ %632, %798 ], [ %632, %794 ], [ %632, %791 ]
  %807 = and i32 %792, 65535
  %808 = zext nneg i32 %807 to i64
  %809 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %808
  %810 = load i32, ptr %809, align 4, !tbaa !106
  %811 = icmp ne i32 %810, 9
  %812 = icmp eq i32 %807, 121
  %813 = or i1 %812, %811
  br i1 %813, label %1075, label %814, !prof !481

814:                                              ; preds = %805
  %815 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !484
  %816 = call zeroext i8 %815(ptr noundef nonnull %613) #24
  %817 = icmp eq i8 %816, 0
  %818 = select i1 %817, i32 0, i32 %634
  br label %1075

819:                                              ; preds = %627
  %820 = load i32, ptr %613, align 8
  %821 = and i32 %820, 65535
  %822 = icmp eq i32 %821, 43
  br i1 %822, label %823, label %1075

823:                                              ; preds = %819
  %824 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %505
  %825 = load i32, ptr %824, align 4, !tbaa !106
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %1075

827:                                              ; preds = %823
  %828 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %829 = load ptr, ptr %828, align 8, !tbaa !102
  %830 = load i32, ptr %829, align 8
  %831 = trunc i32 %830 to i16
  switch i16 %831, label %1075 [
    i16 74, label %832
    i16 76, label %832
  ]

832:                                              ; preds = %827, %827
  br label %1075

833:                                              ; preds = %627
  %834 = load i32, ptr %613, align 8
  %835 = and i32 %834, 65535
  %836 = icmp eq i32 %835, 43
  br i1 %836, label %837, label %1075

837:                                              ; preds = %833
  %838 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %505
  %839 = load i32, ptr %838, align 4, !tbaa !106
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %1075

841:                                              ; preds = %837
  %842 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %843 = load ptr, ptr %842, align 8, !tbaa !102
  %844 = load i32, ptr %843, align 8
  %845 = trunc i32 %844 to i16
  switch i16 %845, label %1075 [
    i16 75, label %846
    i16 77, label %846
  ]

846:                                              ; preds = %841, %841
  br label %1075

847:                                              ; preds = %627
  %848 = icmp eq i32 %637, 0
  br i1 %848, label %849, label %1075

849:                                              ; preds = %847
  %850 = load i32, ptr %613, align 8
  %851 = and i32 %850, 65535
  %852 = icmp eq i32 %851, 43
  br i1 %852, label %853, label %1075

853:                                              ; preds = %849
  %854 = icmp eq i32 %2, 0
  br i1 %854, label %858, label %855

855:                                              ; preds = %853
  %856 = call i32 @offsettable_memref_p(ptr noundef nonnull %613) #24
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %861, label %1075

858:                                              ; preds = %853
  %859 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %613) #24
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %1075

861:                                              ; preds = %858, %855
  %862 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %863 = load ptr, ptr %862, align 8, !tbaa !102
  %864 = load i32, ptr %863, align 8
  %865 = and i32 %864, 65535
  %866 = icmp eq i32 %865, 37
  br i1 %866, label %867, label %876

867:                                              ; preds = %861
  br i1 %854, label %1075, label %868

868:                                              ; preds = %867
  %869 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %870 = getelementptr inbounds %struct.rtx_def, ptr %863, i64 0, i32 1
  %871 = load i32, ptr %870, align 8, !tbaa !102
  %872 = zext i32 %871 to i64
  %873 = getelementptr inbounds ptr, ptr %869, i64 %872
  %874 = load ptr, ptr %873, align 8, !tbaa !91
  %875 = icmp eq ptr %874, null
  br i1 %875, label %876, label %1075

876:                                              ; preds = %868, %861
  br label %1075

877:                                              ; preds = %627
  %878 = icmp eq i32 %637, 0
  br i1 %878, label %879, label %1075

879:                                              ; preds = %877
  %880 = load i32, ptr %613, align 8
  %881 = and i32 %880, 65535
  %882 = icmp eq i32 %881, 43
  br i1 %882, label %883, label %895

883:                                              ; preds = %879
  %884 = icmp eq i32 %2, 0
  br i1 %884, label %888, label %885

885:                                              ; preds = %883
  %886 = call i32 @offsettable_memref_p(ptr noundef nonnull %613) #24
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %891, label %924

888:                                              ; preds = %883
  %889 = call i32 @offsettable_nonstrict_memref_p(ptr noundef nonnull %613) #24
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %891, label %924

891:                                              ; preds = %888, %885
  %892 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %505
  %893 = load i32, ptr %892, align 4, !tbaa !106
  %894 = icmp eq i32 %893, 1
  br i1 %894, label %924, label %895

895:                                              ; preds = %891, %879
  %896 = load i32, ptr %613, align 8
  %897 = and i32 %896, 65535
  %898 = icmp eq i32 %897, 37
  br i1 %898, label %899, label %925

899:                                              ; preds = %895
  %900 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %901 = load i32, ptr %900, align 8, !tbaa !102
  %902 = icmp ugt i32 %901, 52
  br i1 %902, label %903, label %925

903:                                              ; preds = %899
  %904 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %905 = zext i32 %901 to i64
  %906 = getelementptr inbounds i16, ptr %904, i64 %905
  %907 = load i16, ptr %906, align 2, !tbaa !142
  %908 = icmp slt i16 %907, 0
  br i1 %908, label %909, label %925

909:                                              ; preds = %903
  %910 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %911 = getelementptr inbounds ptr, ptr %910, i64 %905
  %912 = load ptr, ptr %911, align 8, !tbaa !91
  %913 = icmp eq ptr %912, null
  br i1 %913, label %917, label %914

914:                                              ; preds = %909
  %915 = call i32 @offsettable_memref_p(ptr noundef nonnull %912) #24
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %924

917:                                              ; preds = %914, %909
  %918 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %919 = load i32, ptr %900, align 8, !tbaa !102
  %920 = zext i32 %919 to i64
  %921 = getelementptr inbounds ptr, ptr %918, i64 %920
  %922 = load ptr, ptr %921, align 8, !tbaa !91
  %923 = icmp eq ptr %922, null
  br i1 %923, label %925, label %924

924:                                              ; preds = %891, %917, %914, %888, %885
  br label %925

925:                                              ; preds = %917, %924, %903, %899, %895
  %926 = phi i32 [ 1, %924 ], [ %632, %903 ], [ %632, %899 ], [ %632, %895 ], [ %632, %917 ]
  %927 = load i32, ptr %613, align 8
  %928 = and i32 %927, 65535
  %929 = zext nneg i32 %928 to i64
  %930 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %929
  %931 = load i32, ptr %930, align 4, !tbaa !106
  %932 = icmp ne i32 %931, 9
  %933 = icmp eq i32 %928, 121
  %934 = or i1 %932, %933
  br i1 %934, label %939, label %935

935:                                              ; preds = %925
  %936 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !484
  %937 = call zeroext i8 %936(ptr noundef nonnull %613) #24
  %938 = icmp eq i8 %937, 0
  br i1 %938, label %943, label %939

939:                                              ; preds = %935, %925
  %940 = load i32, ptr %613, align 8
  %941 = and i32 %940, 65535
  %942 = icmp eq i32 %941, 43
  br i1 %942, label %943, label %1075

943:                                              ; preds = %935, %939
  br label %1075

944:                                              ; preds = %627
  br label %1075

945:                                              ; preds = %627, %627
  %946 = load i32, ptr %613, align 8
  %947 = trunc i32 %946 to i16
  switch i16 %947, label %1075 [
    i16 32, label %955
    i16 33, label %948
  ]

948:                                              ; preds = %945
  %949 = lshr i32 %946, 16
  %950 = and i32 %949, 255
  %951 = zext nneg i32 %950 to i64
  %952 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %951
  %953 = load i8, ptr %952, align 1, !tbaa !102
  %954 = icmp eq i8 %953, 17
  br i1 %954, label %955, label %1075

955:                                              ; preds = %945, %948
  br label %1075

956:                                              ; preds = %627, %627
  %957 = load i32, ptr %613, align 8
  %958 = and i32 %957, 65535
  %959 = icmp eq i32 %958, 32
  br i1 %959, label %960, label %1075

960:                                              ; preds = %956
  %961 = call i32 @lookup_constraint(ptr noundef %631) #24
  %962 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %613, i32 noundef %961) #24
  %963 = icmp eq i8 %962, 0
  %964 = select i1 %963, i32 %632, i32 1
  br label %1075

965:                                              ; preds = %627
  %966 = load i32, ptr %613, align 8
  %967 = trunc i32 %966 to i16
  switch i16 %967, label %971 [
    i16 30, label %1075
    i16 32, label %968
  ]

968:                                              ; preds = %965
  %969 = and i32 %966, 16711680
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %1075, label %971

971:                                              ; preds = %965, %968, %627
  %972 = load i32, ptr %613, align 8
  %973 = and i32 %972, 65535
  %974 = zext nneg i32 %973 to i64
  %975 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %974
  %976 = load i32, ptr %975, align 4, !tbaa !106
  %977 = icmp eq i32 %976, 9
  br i1 %977, label %978, label %1075, !prof !485

978:                                              ; preds = %971
  %979 = load i32, ptr @flag_pic, align 4, !tbaa !106
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %984, label %981, !prof !486

981:                                              ; preds = %978
  %982 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %613) #24
  %983 = icmp eq i8 %982, 0
  br i1 %983, label %1075, label %984

984:                                              ; preds = %981, %978
  br label %1075

985:                                              ; preds = %627
  %986 = load i32, ptr %613, align 8
  %987 = trunc i32 %986 to i16
  switch i16 %987, label %1075 [
    i16 30, label %991
    i16 32, label %988
  ], !prof !487

988:                                              ; preds = %985
  %989 = and i32 %986, 16711680
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %1075

991:                                              ; preds = %988, %985
  br label %1075

992:                                              ; preds = %627, %627, %627, %627, %627, %627, %627, %627
  %993 = load i32, ptr %613, align 8
  %994 = and i32 %993, 65535
  %995 = icmp eq i32 %994, 30
  br i1 %995, label %996, label %1075, !prof !488

996:                                              ; preds = %992
  %997 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %998 = load i64, ptr %997, align 8, !tbaa !102
  %999 = call i32 @lookup_constraint(ptr noundef %631) #24
  %1000 = call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %998, i32 noundef %999) #24
  %1001 = icmp eq i8 %1000, 0
  %1002 = select i1 %1001, i32 %632, i32 1, !prof !489
  br label %1075

1003:                                             ; preds = %627
  br label %1075

1004:                                             ; preds = %627
  %1005 = icmp eq i32 %637, 0
  br i1 %1005, label %1006, label %1036, !prof !490

1006:                                             ; preds = %1004
  %1007 = load i32, ptr %613, align 8
  %1008 = trunc i32 %1007 to i16
  switch i16 %1008, label %1009 [
    i16 49, label %1036
    i16 38, label %1036
  ], !prof !491

1009:                                             ; preds = %1006
  %1010 = and i32 %1007, 65535
  %1011 = zext nneg i32 %1010 to i64
  %1012 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1011
  %1013 = load i32, ptr %1012, align 4, !tbaa !106
  %1014 = icmp eq i32 %1013, 9
  %1015 = load i32, ptr @flag_pic, align 4
  %1016 = icmp ne i32 %1015, 0
  %1017 = select i1 %1014, i1 %1016, i1 false, !prof !492
  br i1 %1017, label %1018, label %1021, !prof !493

1018:                                             ; preds = %1009
  %1019 = call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %613) #24
  %1020 = icmp eq i8 %1019, 0
  br i1 %1020, label %1036, label %1021

1021:                                             ; preds = %1018, %1009
  %1022 = load i32, ptr %613, align 8
  %1023 = and i32 %1022, 65535
  %1024 = icmp eq i32 %1023, 37
  br i1 %1024, label %1025, label %1035, !prof !494

1025:                                             ; preds = %1021
  %1026 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %1027 = load i32, ptr %1026, align 8, !tbaa !102
  %1028 = icmp ugt i32 %1027, 52
  br i1 %1028, label %1029, label %1036, !prof !495

1029:                                             ; preds = %1025
  %1030 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %1031 = zext i32 %1027 to i64
  %1032 = getelementptr inbounds i16, ptr %1030, i64 %1031
  %1033 = load i16, ptr %1032, align 2, !tbaa !142
  %1034 = icmp slt i16 %1033, 0
  br i1 %1034, label %1035, label %1036, !prof !162

1035:                                             ; preds = %1029, %1021
  br label %1036

1036:                                             ; preds = %1006, %1006, %1004, %1018, %1025, %1029, %1035, %627
  %1037 = phi i32 [ %632, %627 ], [ %632, %1004 ], [ 1, %1035 ], [ %632, %1029 ], [ %632, %1025 ], [ %632, %1018 ], [ %632, %1006 ], [ %632, %1006 ]
  %1038 = load i32, ptr %616, align 4, !tbaa !106
  %1039 = zext i32 %1038 to i64
  %1040 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1039, i64 13
  br label %1057

1041:                                             ; preds = %627
  %1042 = call i32 @lookup_constraint(ptr noundef %631) #24
  %1043 = call i32 @regclass_for_constraint(i32 noundef %1042) #24
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1045, label %1050, !prof !496

1045:                                             ; preds = %1041
  %1046 = call i32 @lookup_constraint(ptr noundef %631) #24
  %1047 = call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %613, i32 noundef %1046) #24
  %1048 = icmp eq i8 %1047, 0
  %1049 = select i1 %1048, i32 %632, i32 1
  br label %1075

1050:                                             ; preds = %1041
  %1051 = load i32, ptr %616, align 4, !tbaa !106
  %1052 = zext i32 %1051 to i64
  %1053 = call i32 @lookup_constraint(ptr noundef %631) #24
  %1054 = call i32 @regclass_for_constraint(i32 noundef %1053) #24
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %1052, i64 %1055
  br label %1057

1057:                                             ; preds = %1050, %1036
  %1058 = phi ptr [ %1040, %1036 ], [ %1056, %1050 ]
  %1059 = phi i32 [ %1037, %1036 ], [ %632, %1050 ]
  %1060 = load i32, ptr %1058, align 4, !tbaa !106
  store i32 %1060, ptr %616, align 4, !tbaa !106
  %1061 = load i32, ptr %613, align 8
  %1062 = and i32 %1061, 16711680
  %1063 = icmp eq i32 %1062, 65536
  br i1 %1063, label %1075, label %1064, !prof !497

1064:                                             ; preds = %1057
  %1065 = and i32 %1061, 65535
  %1066 = icmp eq i32 %1065, 37
  br i1 %1066, label %1067, label %1075, !prof !498

1067:                                             ; preds = %1064
  %1068 = load ptr, ptr %513, align 8, !tbaa !91
  %1069 = load i32, ptr %1068, align 8
  %1070 = lshr i32 %1069, 16
  %1071 = and i32 %1070, 255
  %1072 = call i32 @reg_fits_class_p(ptr noundef nonnull %613, i32 noundef %1060, i32 noundef %614, i32 noundef %1071) #24
  %1073 = icmp eq i32 %1072, 0
  %1074 = select i1 %1073, i32 %1059, i32 1, !prof !499
  br label %1075

1075:                                             ; preds = %779, %650, %650, %777, %992, %971, %968, %965, %956, %948, %945, %627, %627, %627, %627, %1067, %1045, %996, %960, %814, %985, %939, %943, %841, %827, %805, %645, %646, %647, %649, %788, %944, %1003, %766, %789, %832, %823, %819, %846, %837, %833, %847, %876, %868, %867, %858, %855, %849, %877, %955, %984, %981, %991, %988, %1057, %1064
  %1076 = phi i32 [ %628, %1057 ], [ %628, %1064 ], [ %628, %1003 ], [ %628, %991 ], [ %628, %988 ], [ %628, %984 ], [ %628, %981 ], [ %628, %955 ], [ %628, %944 ], [ %628, %877 ], [ %628, %847 ], [ %628, %855 ], [ %628, %867 ], [ %628, %868 ], [ %628, %876 ], [ %628, %858 ], [ %628, %849 ], [ %628, %837 ], [ %628, %846 ], [ %628, %833 ], [ %628, %823 ], [ %628, %832 ], [ %628, %819 ], [ %628, %789 ], [ %628, %788 ], [ %767, %766 ], [ %628, %649 ], [ %628, %647 ], [ %628, %646 ], [ %628, %645 ], [ %628, %814 ], [ %628, %805 ], [ %628, %827 ], [ %628, %841 ], [ %628, %943 ], [ %628, %939 ], [ %628, %960 ], [ %628, %985 ], [ %628, %996 ], [ %628, %1045 ], [ %628, %1067 ], [ %628, %627 ], [ %628, %627 ], [ %628, %627 ], [ %628, %627 ], [ %628, %945 ], [ %628, %948 ], [ %628, %956 ], [ %628, %965 ], [ %628, %968 ], [ %628, %971 ], [ %628, %992 ], [ %767, %777 ], [ %628, %650 ], [ %628, %650 ], [ %767, %779 ]
  %1077 = phi i32 [ %629, %1057 ], [ %629, %1064 ], [ %629, %1003 ], [ %629, %991 ], [ %629, %988 ], [ %629, %984 ], [ %629, %981 ], [ %629, %955 ], [ %629, %944 ], [ %629, %877 ], [ %629, %847 ], [ %629, %855 ], [ %629, %867 ], [ %629, %868 ], [ %629, %876 ], [ %629, %858 ], [ %629, %849 ], [ %629, %837 ], [ %629, %846 ], [ %629, %833 ], [ %629, %823 ], [ %629, %832 ], [ %629, %819 ], [ %629, %789 ], [ %629, %788 ], [ %768, %766 ], [ %629, %649 ], [ %629, %647 ], [ %629, %646 ], [ %629, %645 ], [ %629, %814 ], [ %629, %805 ], [ %629, %827 ], [ %629, %841 ], [ %629, %943 ], [ %629, %939 ], [ %629, %960 ], [ %629, %985 ], [ %629, %996 ], [ %629, %1045 ], [ %629, %1067 ], [ %629, %627 ], [ %629, %627 ], [ %629, %627 ], [ %629, %627 ], [ %629, %945 ], [ %629, %948 ], [ %629, %956 ], [ %629, %965 ], [ %629, %968 ], [ %629, %971 ], [ %629, %992 ], [ %768, %777 ], [ %629, %650 ], [ %629, %650 ], [ %768, %779 ]
  %1078 = phi i32 [ %630, %1057 ], [ %630, %1064 ], [ %630, %1003 ], [ %630, %991 ], [ %630, %988 ], [ %630, %984 ], [ %630, %981 ], [ %630, %955 ], [ %630, %944 ], [ %630, %877 ], [ %630, %847 ], [ %630, %855 ], [ %630, %867 ], [ %630, %868 ], [ %630, %876 ], [ %630, %858 ], [ %630, %849 ], [ %630, %837 ], [ %630, %846 ], [ %630, %833 ], [ %630, %823 ], [ %630, %832 ], [ %630, %819 ], [ %630, %789 ], [ %630, %788 ], [ %630, %766 ], [ 600, %649 ], [ %648, %647 ], [ %630, %646 ], [ %630, %645 ], [ %630, %814 ], [ %630, %805 ], [ %630, %827 ], [ %630, %841 ], [ %630, %943 ], [ %630, %939 ], [ %630, %960 ], [ %630, %985 ], [ %630, %996 ], [ %630, %1045 ], [ %630, %1067 ], [ %630, %627 ], [ %630, %627 ], [ %630, %627 ], [ %630, %627 ], [ %630, %945 ], [ %630, %948 ], [ %630, %956 ], [ %630, %965 ], [ %630, %968 ], [ %630, %971 ], [ %630, %992 ], [ %630, %777 ], [ %630, %650 ], [ %630, %650 ], [ %630, %779 ]
  %1079 = phi ptr [ %631, %1057 ], [ %631, %1064 ], [ %631, %1003 ], [ %631, %991 ], [ %631, %988 ], [ %631, %984 ], [ %631, %981 ], [ %631, %955 ], [ %631, %944 ], [ %631, %877 ], [ %631, %847 ], [ %631, %855 ], [ %631, %867 ], [ %631, %868 ], [ %631, %876 ], [ %631, %858 ], [ %631, %849 ], [ %631, %837 ], [ %631, %846 ], [ %631, %833 ], [ %631, %823 ], [ %631, %832 ], [ %631, %819 ], [ %631, %789 ], [ %631, %788 ], [ %658, %766 ], [ %631, %649 ], [ %631, %647 ], [ %631, %646 ], [ %631, %645 ], [ %631, %814 ], [ %631, %805 ], [ %631, %827 ], [ %631, %841 ], [ %631, %943 ], [ %631, %939 ], [ %631, %960 ], [ %631, %985 ], [ %631, %996 ], [ %631, %1045 ], [ %631, %1067 ], [ %631, %627 ], [ %631, %627 ], [ %631, %627 ], [ %631, %627 ], [ %631, %945 ], [ %631, %948 ], [ %631, %956 ], [ %631, %965 ], [ %631, %968 ], [ %631, %971 ], [ %631, %992 ], [ %658, %777 ], [ %652, %650 ], [ %652, %650 ], [ %658, %779 ]
  %1080 = phi i64 [ %644, %1057 ], [ %644, %1064 ], [ %644, %1003 ], [ %644, %991 ], [ %644, %988 ], [ %644, %984 ], [ %644, %981 ], [ %644, %955 ], [ %644, %944 ], [ %644, %877 ], [ %644, %847 ], [ %644, %855 ], [ %644, %867 ], [ %644, %868 ], [ %644, %876 ], [ %644, %858 ], [ %644, %849 ], [ %644, %837 ], [ %644, %846 ], [ %644, %833 ], [ %644, %823 ], [ %644, %832 ], [ %644, %819 ], [ %644, %789 ], [ %644, %788 ], [ 0, %766 ], [ %644, %649 ], [ %644, %647 ], [ %644, %646 ], [ 0, %645 ], [ %644, %814 ], [ %644, %805 ], [ %644, %827 ], [ %644, %841 ], [ %644, %943 ], [ %644, %939 ], [ %644, %960 ], [ %644, %985 ], [ %644, %996 ], [ %644, %1045 ], [ %644, %1067 ], [ %644, %627 ], [ %644, %627 ], [ %644, %627 ], [ %644, %627 ], [ %644, %945 ], [ %644, %948 ], [ %644, %956 ], [ %644, %965 ], [ %644, %968 ], [ %644, %971 ], [ %644, %992 ], [ 0, %777 ], [ 0, %650 ], [ 0, %650 ], [ 0, %779 ]
  %1081 = phi i32 [ %1059, %1057 ], [ %1059, %1064 ], [ 1, %1003 ], [ 1, %991 ], [ %632, %988 ], [ 1, %984 ], [ %632, %981 ], [ 1, %955 ], [ %632, %944 ], [ %632, %877 ], [ %632, %847 ], [ %632, %855 ], [ %632, %867 ], [ %632, %868 ], [ 1, %876 ], [ %632, %858 ], [ %632, %849 ], [ %632, %837 ], [ 1, %846 ], [ %632, %833 ], [ %632, %823 ], [ 1, %832 ], [ %632, %819 ], [ %632, %789 ], [ 1, %788 ], [ %632, %766 ], [ %632, %649 ], [ %632, %647 ], [ %632, %646 ], [ %632, %645 ], [ %806, %814 ], [ %806, %805 ], [ %632, %827 ], [ %632, %841 ], [ %926, %943 ], [ %926, %939 ], [ %964, %960 ], [ %632, %985 ], [ %1002, %996 ], [ %1049, %1045 ], [ %1074, %1067 ], [ %632, %627 ], [ %632, %627 ], [ %632, %627 ], [ %632, %627 ], [ %632, %945 ], [ %632, %948 ], [ %632, %956 ], [ %632, %965 ], [ %632, %968 ], [ %632, %971 ], [ %632, %992 ], [ %632, %777 ], [ %632, %650 ], [ %632, %650 ], [ %632, %779 ]
  %1082 = phi i32 [ %633, %1057 ], [ %633, %1064 ], [ %633, %1003 ], [ %633, %991 ], [ %633, %988 ], [ %633, %984 ], [ %633, %981 ], [ %633, %955 ], [ %633, %944 ], [ %633, %877 ], [ %633, %847 ], [ %633, %855 ], [ %633, %867 ], [ %633, %868 ], [ %633, %876 ], [ %633, %858 ], [ %633, %849 ], [ %633, %837 ], [ %633, %846 ], [ %633, %833 ], [ %633, %823 ], [ %633, %832 ], [ %633, %819 ], [ %633, %789 ], [ %633, %788 ], [ %769, %766 ], [ %633, %649 ], [ %633, %647 ], [ %633, %646 ], [ %633, %645 ], [ %633, %814 ], [ %633, %805 ], [ %633, %827 ], [ %633, %841 ], [ %633, %943 ], [ %633, %939 ], [ %633, %960 ], [ %633, %985 ], [ %633, %996 ], [ %633, %1045 ], [ %633, %1067 ], [ %633, %627 ], [ %633, %627 ], [ %633, %627 ], [ %633, %627 ], [ %633, %945 ], [ %633, %948 ], [ %633, %956 ], [ %633, %965 ], [ %633, %968 ], [ %633, %971 ], [ %633, %992 ], [ %769, %777 ], [ %633, %650 ], [ %633, %650 ], [ %769, %779 ]
  %1083 = phi i32 [ %634, %1057 ], [ %634, %1064 ], [ %634, %1003 ], [ %634, %991 ], [ %634, %988 ], [ %634, %984 ], [ %634, %981 ], [ %634, %955 ], [ %634, %944 ], [ %634, %877 ], [ %634, %847 ], [ %634, %855 ], [ %634, %867 ], [ %634, %868 ], [ %634, %876 ], [ %634, %858 ], [ %634, %849 ], [ %634, %837 ], [ %634, %846 ], [ %634, %833 ], [ %634, %823 ], [ %634, %832 ], [ %634, %819 ], [ %634, %789 ], [ 0, %788 ], [ 0, %766 ], [ %634, %649 ], [ %634, %647 ], [ %634, %646 ], [ %634, %645 ], [ %818, %814 ], [ %634, %805 ], [ %634, %827 ], [ %634, %841 ], [ 0, %943 ], [ %634, %939 ], [ %634, %960 ], [ %634, %985 ], [ %634, %996 ], [ %634, %1045 ], [ %634, %1067 ], [ %634, %627 ], [ %634, %627 ], [ %634, %627 ], [ %634, %627 ], [ %634, %945 ], [ %634, %948 ], [ %634, %956 ], [ %634, %965 ], [ %634, %968 ], [ %634, %971 ], [ %634, %992 ], [ 0, %777 ], [ %634, %650 ], [ %634, %650 ], [ %785, %779 ]
  %1084 = phi i32 [ %635, %1057 ], [ 1, %1064 ], [ %635, %1003 ], [ %635, %991 ], [ %635, %988 ], [ %635, %984 ], [ %635, %981 ], [ %635, %955 ], [ %635, %944 ], [ %635, %877 ], [ %635, %847 ], [ %635, %855 ], [ %635, %867 ], [ %635, %868 ], [ %635, %876 ], [ %635, %858 ], [ %635, %849 ], [ %635, %837 ], [ %635, %846 ], [ %635, %833 ], [ %635, %823 ], [ %635, %832 ], [ %635, %819 ], [ %635, %789 ], [ %635, %788 ], [ %635, %766 ], [ %635, %649 ], [ %635, %647 ], [ %635, %646 ], [ %635, %645 ], [ %635, %814 ], [ %635, %805 ], [ %635, %827 ], [ %635, %841 ], [ %635, %943 ], [ %635, %939 ], [ %635, %960 ], [ %635, %985 ], [ %635, %996 ], [ %635, %1045 ], [ 1, %1067 ], [ %635, %627 ], [ %635, %627 ], [ %635, %627 ], [ %635, %627 ], [ %635, %945 ], [ %635, %948 ], [ %635, %956 ], [ %635, %965 ], [ %635, %968 ], [ %635, %971 ], [ %635, %992 ], [ %635, %777 ], [ %635, %650 ], [ %635, %650 ], [ %635, %779 ]
  %1085 = phi i32 [ %642, %1057 ], [ %642, %1064 ], [ 88, %1003 ], [ 88, %991 ], [ 88, %988 ], [ %642, %984 ], [ %642, %981 ], [ %642, %955 ], [ 88, %944 ], [ 88, %877 ], [ 88, %847 ], [ 88, %855 ], [ 88, %867 ], [ 88, %868 ], [ 88, %876 ], [ 88, %858 ], [ 88, %849 ], [ 88, %837 ], [ 88, %846 ], [ 88, %833 ], [ 88, %823 ], [ 88, %832 ], [ 88, %819 ], [ 88, %789 ], [ 88, %788 ], [ %642, %766 ], [ 88, %649 ], [ 88, %647 ], [ 0, %646 ], [ 0, %645 ], [ 88, %814 ], [ 88, %805 ], [ 88, %827 ], [ 88, %841 ], [ 88, %943 ], [ 88, %939 ], [ %642, %960 ], [ 88, %985 ], [ %642, %996 ], [ %642, %1045 ], [ %642, %1067 ], [ %642, %627 ], [ %642, %627 ], [ %642, %627 ], [ %642, %627 ], [ %642, %945 ], [ %642, %948 ], [ %642, %956 ], [ 88, %965 ], [ 88, %968 ], [ %642, %971 ], [ %642, %992 ], [ %642, %777 ], [ %642, %650 ], [ %642, %650 ], [ %642, %779 ]
  %1086 = phi i32 [ %636, %1057 ], [ %636, %1064 ], [ %636, %1003 ], [ %636, %991 ], [ %636, %988 ], [ %636, %984 ], [ %636, %981 ], [ %636, %955 ], [ 1, %944 ], [ %636, %877 ], [ %636, %847 ], [ %636, %855 ], [ %636, %867 ], [ %636, %868 ], [ %636, %876 ], [ %636, %858 ], [ %636, %849 ], [ %636, %837 ], [ %636, %846 ], [ %636, %833 ], [ %636, %823 ], [ %636, %832 ], [ %636, %819 ], [ %636, %789 ], [ %636, %788 ], [ %636, %766 ], [ %636, %649 ], [ %636, %647 ], [ %636, %646 ], [ %636, %645 ], [ %636, %814 ], [ %636, %805 ], [ %636, %827 ], [ %636, %841 ], [ %636, %943 ], [ %636, %939 ], [ %636, %960 ], [ %636, %985 ], [ %636, %996 ], [ %636, %1045 ], [ %636, %1067 ], [ %636, %627 ], [ %636, %627 ], [ %636, %627 ], [ %636, %627 ], [ %636, %945 ], [ %636, %948 ], [ %636, %956 ], [ %636, %965 ], [ %636, %968 ], [ %636, %971 ], [ %636, %992 ], [ %636, %777 ], [ %636, %650 ], [ %636, %650 ], [ %636, %779 ]
  %1087 = phi i32 [ %637, %1057 ], [ %637, %1064 ], [ 0, %1003 ], [ %637, %991 ], [ %637, %988 ], [ %637, %984 ], [ %637, %981 ], [ %637, %955 ], [ %637, %944 ], [ 1, %877 ], [ 1, %847 ], [ 0, %855 ], [ 0, %867 ], [ 0, %868 ], [ 0, %876 ], [ 0, %858 ], [ 0, %849 ], [ %637, %837 ], [ %637, %846 ], [ %637, %833 ], [ %637, %823 ], [ %637, %832 ], [ %637, %819 ], [ 1, %789 ], [ %637, %788 ], [ 0, %766 ], [ %637, %649 ], [ %637, %647 ], [ %637, %646 ], [ %637, %645 ], [ 0, %814 ], [ 0, %805 ], [ %637, %827 ], [ %637, %841 ], [ 0, %943 ], [ 0, %939 ], [ %637, %960 ], [ %637, %985 ], [ %637, %996 ], [ %637, %1045 ], [ %637, %1067 ], [ %637, %627 ], [ %637, %627 ], [ %637, %627 ], [ %637, %627 ], [ %637, %945 ], [ %637, %948 ], [ %637, %956 ], [ %637, %965 ], [ %637, %968 ], [ %637, %971 ], [ %637, %992 ], [ %637, %777 ], [ %637, %650 ], [ %637, %650 ], [ %637, %779 ]
  %1088 = phi i32 [ %638, %1057 ], [ %638, %1064 ], [ %638, %1003 ], [ %638, %991 ], [ %638, %988 ], [ %638, %984 ], [ %638, %981 ], [ %638, %955 ], [ %638, %944 ], [ %638, %877 ], [ %638, %847 ], [ %638, %855 ], [ %638, %867 ], [ %638, %868 ], [ %638, %876 ], [ %638, %858 ], [ %638, %849 ], [ %638, %837 ], [ %638, %846 ], [ %638, %833 ], [ %638, %823 ], [ %638, %832 ], [ %638, %819 ], [ %638, %789 ], [ %638, %788 ], [ %638, %766 ], [ %638, %649 ], [ %638, %647 ], [ %638, %646 ], [ %638, %645 ], [ %638, %814 ], [ %638, %805 ], [ %638, %827 ], [ %638, %841 ], [ 1, %943 ], [ 1, %939 ], [ %638, %960 ], [ %638, %985 ], [ %638, %996 ], [ %638, %1045 ], [ %638, %1067 ], [ %638, %627 ], [ %638, %627 ], [ %638, %627 ], [ %638, %627 ], [ %638, %945 ], [ %638, %948 ], [ %638, %956 ], [ %638, %965 ], [ %638, %968 ], [ %638, %971 ], [ %638, %992 ], [ %638, %777 ], [ %638, %650 ], [ %638, %650 ], [ %638, %779 ]
  %1089 = phi i32 [ %639, %1057 ], [ %639, %1064 ], [ %639, %1003 ], [ %639, %991 ], [ %639, %988 ], [ %639, %984 ], [ %639, %981 ], [ %639, %955 ], [ %639, %944 ], [ %639, %877 ], [ %639, %847 ], [ %639, %855 ], [ %639, %867 ], [ %639, %868 ], [ %639, %876 ], [ %639, %858 ], [ %639, %849 ], [ %639, %837 ], [ %639, %846 ], [ %639, %833 ], [ %639, %823 ], [ %639, %832 ], [ %639, %819 ], [ %639, %789 ], [ %639, %788 ], [ %639, %766 ], [ %639, %649 ], [ %639, %647 ], [ %639, %646 ], [ %639, %645 ], [ 1, %814 ], [ 1, %805 ], [ %639, %827 ], [ %639, %841 ], [ 1, %943 ], [ 1, %939 ], [ %639, %960 ], [ %639, %985 ], [ %639, %996 ], [ %639, %1045 ], [ %639, %1067 ], [ %639, %627 ], [ %639, %627 ], [ %639, %627 ], [ %639, %627 ], [ %639, %945 ], [ %639, %948 ], [ %639, %956 ], [ %639, %965 ], [ %639, %968 ], [ %639, %971 ], [ %639, %992 ], [ %639, %777 ], [ %639, %650 ], [ %639, %650 ], [ %639, %779 ]
  %1090 = phi i32 [ %640, %1057 ], [ %640, %1064 ], [ %640, %1003 ], [ %640, %991 ], [ %640, %988 ], [ %640, %984 ], [ %640, %981 ], [ %640, %955 ], [ 1, %944 ], [ %640, %877 ], [ %640, %847 ], [ %640, %855 ], [ %640, %867 ], [ %640, %868 ], [ %640, %876 ], [ %640, %858 ], [ %640, %849 ], [ %640, %837 ], [ %640, %846 ], [ %640, %833 ], [ %640, %823 ], [ %640, %832 ], [ %640, %819 ], [ %640, %789 ], [ %640, %788 ], [ %640, %766 ], [ %640, %649 ], [ %640, %647 ], [ %640, %646 ], [ %640, %645 ], [ %640, %814 ], [ %640, %805 ], [ %640, %827 ], [ %640, %841 ], [ %640, %943 ], [ %640, %939 ], [ %640, %960 ], [ %640, %985 ], [ %640, %996 ], [ %640, %1045 ], [ %640, %1067 ], [ %640, %627 ], [ %640, %627 ], [ %640, %627 ], [ %640, %627 ], [ %640, %945 ], [ %640, %948 ], [ %640, %956 ], [ %640, %965 ], [ %640, %968 ], [ %640, %971 ], [ %640, %992 ], [ %640, %777 ], [ %640, %650 ], [ %640, %650 ], [ %640, %779 ]
  %1091 = getelementptr inbounds i8, ptr %1079, i64 %1080
  %1092 = icmp eq i32 %1085, 0
  br i1 %1092, label %1093, label %627, !prof !500, !llvm.loop !501

1093:                                             ; preds = %1075
  store ptr %1091, ptr %511, align 8, !tbaa !91
  %1094 = icmp eq i32 %1084, 0
  br i1 %1094, label %1099, label %1095, !prof !502

1095:                                             ; preds = %1093
  %1096 = load i32, ptr %616, align 4, !tbaa !106
  %1097 = icmp eq i32 %1096, 0
  %1098 = select i1 %1097, i32 %1083, i32 0, !prof !497
  br label %1099

1099:                                             ; preds = %1095, %1093
  %1100 = phi i32 [ %1083, %1093 ], [ %1098, %1095 ]
  %1101 = trunc i32 %1090 to i8
  store i8 %1101, ptr %620, align 1, !tbaa !102
  %1102 = icmp eq i32 %1081, 0
  %1103 = icmp ne i32 %1087, 0
  %1104 = select i1 %1102, i1 true, i1 %1103, !prof !503
  br i1 %1104, label %1106, label %1105, !prof !503

1105:                                             ; preds = %1099
  store i8 1, ptr %617, align 1, !tbaa !102
  br label %1213

1106:                                             ; preds = %1099
  %1107 = icmp eq i32 %1082, 0
  %1108 = select i1 %1107, i1 true, i1 %1103, !prof !504
  br i1 %1108, label %1110, label %1109, !prof !504

1109:                                             ; preds = %1106
  store i8 1, ptr %618, align 1, !tbaa !102
  br label %1213

1110:                                             ; preds = %1106
  %1111 = trunc i32 %1088 to i8
  store i8 %1111, ptr %619, align 1, !tbaa !102
  %1112 = add nsw i32 %1076, 1
  %1113 = icmp eq i32 %1100, 0
  %1114 = select i1 %1113, i32 %1077, i32 1, !prof !505
  %1115 = load i32, ptr %613, align 8
  %1116 = and i32 %1115, 65535
  %1117 = icmp eq i32 %1116, 37
  br i1 %1117, label %1118, label %1125, !prof !506

1118:                                             ; preds = %1110
  %1119 = load i32, ptr %616, align 4, !tbaa !106
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %1125, !prof !507

1121:                                             ; preds = %1118
  %1122 = load i32, ptr %621, align 4, !tbaa !106
  %1123 = icmp slt i32 %1122, 0
  %1124 = select i1 %1123, i32 1, i32 %1114, !prof !447
  br label %1125

1125:                                             ; preds = %1121, %1118, %1110
  %1126 = phi i32 [ %1114, %1118 ], [ %1114, %1110 ], [ %1124, %1121 ]
  %1127 = zext nneg i32 %1116 to i64
  %1128 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1127
  %1129 = load i32, ptr %1128, align 4, !tbaa !106
  %1130 = icmp ne i32 %1129, 9
  %1131 = icmp eq i32 %1116, 121
  %1132 = or i1 %1131, %1130
  br i1 %1132, label %1150, label %1133, !prof !508

1133:                                             ; preds = %1125
  %1134 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !484
  %1135 = call zeroext i8 %1134(ptr noundef nonnull %613) #24, !prof !509
  %1136 = icmp eq i8 %1135, 0
  br i1 %1136, label %1137, label %1150, !prof !510

1137:                                             ; preds = %1133
  %1138 = load i32, ptr %616, align 4, !tbaa !106
  %1139 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %613, i32 noundef %1138) #24
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1141, label %1150, !prof !511

1141:                                             ; preds = %1137
  %1142 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %505
  %1143 = load i32, ptr %1142, align 4, !tbaa !106
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1150, label %1145

1145:                                             ; preds = %1141
  %1146 = load i32, ptr %616, align 4, !tbaa !106
  %1147 = icmp eq i32 %1146, 0
  %1148 = add nsw i32 %1076, 2
  %1149 = select i1 %1147, i32 %1112, i32 %1148
  br label %1150

1150:                                             ; preds = %1145, %1137, %1141, %1133, %1125
  %1151 = phi i32 [ %1112, %1133 ], [ %1112, %1141 ], [ %1112, %1137 ], [ %1112, %1125 ], [ %1149, %1145 ]
  %1152 = phi i1 [ false, %1133 ], [ false, %1141 ], [ false, %1137 ], [ false, %1125 ], [ true, %1145 ]
  %1153 = load i32, ptr %613, align 8
  %1154 = and i32 %1153, 65535
  %1155 = icmp eq i32 %1154, 38
  br i1 %1155, label %1164, label %1156, !prof !512

1156:                                             ; preds = %1150
  %1157 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %505
  %1158 = load i32, ptr %1157, align 4, !tbaa !106
  %1159 = icmp ne i32 %1158, 0
  %1160 = and i1 %54, %1159
  br i1 %1160, label %1161, label %1164, !prof !512

1161:                                             ; preds = %1156
  %1162 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %613) #24
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1165, label %1164

1164:                                             ; preds = %1161, %1156, %1150
  br label %1165

1165:                                             ; preds = %1161, %1164
  %1166 = phi i32 [ %1126, %1164 ], [ 1, %1161 ]
  %1167 = load i32, ptr %613, align 8
  %1168 = and i32 %1167, 65535
  %1169 = zext nneg i32 %1168 to i64
  %1170 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1169
  %1171 = load i32, ptr %1170, align 4, !tbaa !106
  %1172 = icmp eq i32 %1171, 9
  br i1 %1172, label %1188, label %1173, !prof !513

1173:                                             ; preds = %1165
  %1174 = load i32, ptr %616, align 4, !tbaa !106
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1188, label %1176, !prof !514

1176:                                             ; preds = %1173
  %1177 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %613, i32 noundef %1174) #24
  %1178 = icmp eq i32 %1177, 0
  %1179 = select i1 %1178, i32 600, i32 %1078, !prof !515
  %1180 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %505
  %1181 = load i32, ptr %1180, align 4, !tbaa !106
  %1182 = icmp eq i32 %1181, 1
  br i1 %1182, label %1183, label %1188, !prof !516

1183:                                             ; preds = %1176
  %1184 = load i32, ptr %616, align 4, !tbaa !106
  %1185 = call i32 @ix86_preferred_output_reload_class(ptr noundef nonnull %613, i32 noundef %1184) #24
  %1186 = icmp eq i32 %1185, 0
  %1187 = select i1 %1186, i32 600, i32 %1179, !prof !169
  br label %1188

1188:                                             ; preds = %1183, %1176, %1173, %1165
  %1189 = phi i32 [ %1078, %1165 ], [ %1179, %1176 ], [ %1078, %1173 ], [ %1187, %1183 ]
  %1190 = load i32, ptr %613, align 8
  %1191 = and i32 %1190, 65535
  %1192 = icmp eq i32 %1191, 37
  br i1 %1192, label %1193, label %1197, !prof !506

1193:                                             ; preds = %1188
  %1194 = getelementptr inbounds %struct.rtx_def, ptr %613, i64 0, i32 1
  %1195 = load i32, ptr %1194, align 8, !tbaa !102
  %1196 = icmp ugt i32 %1195, 52
  br i1 %1196, label %1204, label %1197, !prof !517

1197:                                             ; preds = %1193, %1188
  %1198 = icmp eq i32 %1191, 38
  %1199 = icmp ne i32 %1089, 0
  %1200 = select i1 %1152, i1 %1199, i1 false, !prof !518
  %1201 = select i1 %1198, i1 true, i1 %1200, !prof !518
  %1202 = add nsw i32 %1189, 2
  %1203 = select i1 %1201, i32 %1189, i32 %1202, !prof !518
  br label %1204

1204:                                             ; preds = %1197, %1193
  %1205 = phi i32 [ %1189, %1193 ], [ %1203, %1197 ]
  %1206 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %505
  %1207 = load i32, ptr %1206, align 4, !tbaa !106
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1213, label %1209, !prof !519

1209:                                             ; preds = %1204
  %1210 = icmp ne i32 %1191, 38
  %1211 = zext i1 %1210 to i32
  %1212 = add nsw i32 %1205, %1211
  br label %1213

1213:                                             ; preds = %1209, %1204, %1109, %1105
  %1214 = phi i32 [ %1076, %1109 ], [ %1076, %1105 ], [ %1151, %1209 ], [ %1151, %1204 ]
  %1215 = phi i32 [ %1077, %1109 ], [ %1077, %1105 ], [ %1166, %1209 ], [ %1166, %1204 ]
  %1216 = phi i32 [ %1078, %1109 ], [ %1078, %1105 ], [ %1212, %1209 ], [ %1205, %1204 ]
  %1217 = icmp ne i32 %1081, 0
  %1218 = icmp ne i32 %1082, 0
  %1219 = select i1 %1217, i1 true, i1 %1218, !prof !520
  br i1 %1219, label %1256, label %1220, !prof !521

1220:                                             ; preds = %1213
  %1221 = load i32, ptr %616, align 4, !tbaa !106
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1256, label %1223, !prof !522

1223:                                             ; preds = %1220
  %1224 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %505
  %1225 = load i32, ptr %1224, align 4, !tbaa !106
  %1226 = zext i32 %1225 to i64
  %1227 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1226
  %1228 = load i8, ptr %1227, align 1, !tbaa !102
  %1229 = icmp ult i8 %1228, 5
  br i1 %1229, label %1230, label %1256, !prof !523

1230:                                             ; preds = %1223
  %1231 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %505
  %1232 = load i32, ptr %1231, align 4, !tbaa !106
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1233
  %1235 = load i32, ptr %1234, align 4, !tbaa !106
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1256, label %1237, !prof !524

1237:                                             ; preds = %1230
  %1238 = zext i32 %1232 to i64
  %1239 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1238
  %1240 = load i32, ptr %1239, align 4, !tbaa !106
  switch i32 %1240, label %1241 [
    i32 1, label %1256
    i32 0, label %1242
  ], !prof !525

1241:                                             ; preds = %1237
  switch i32 %1232, label %1242 [
    i32 1, label %1256
    i32 2, label %1256
    i32 3, label %1256
    i32 4, label %1256
    i32 7, label %1256
    i32 5, label %1256
    i32 6, label %1256
    i32 17, label %1256
    i32 14, label %1256
    i32 15, label %1256
  ]

1242:                                             ; preds = %1241, %1237
  %1243 = call i32 @reg_class_subset_p(i32 noundef %1221, i32 noundef %1232) #24
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1245, label %1256

1245:                                             ; preds = %1242
  %1246 = call i32 @reg_class_subset_p(i32 noundef %1232, i32 noundef %1221) #24
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1249, label %1248

1248:                                             ; preds = %1245
  store i32 %1232, ptr %616, align 4, !tbaa !106
  br label %1256

1249:                                             ; preds = %1245
  %1250 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %505
  %1251 = load i8, ptr %1250, align 1, !tbaa !102
  %1252 = sext i8 %1251 to i32
  %1253 = shl nsw i32 %1252, 1
  %1254 = add i32 %1216, 2
  %1255 = add i32 %1254, %1253
  br label %1256

1256:                                             ; preds = %1242, %1241, %1241, %1241, %1241, %1241, %1241, %1241, %1241, %1241, %1241, %1237, %1249, %1248, %1230, %1223, %1220, %1213
  %1257 = phi i32 [ %1216, %1213 ], [ %1216, %1237 ], [ %1216, %1248 ], [ %1255, %1249 ], [ %1216, %1230 ], [ %1216, %1223 ], [ %1216, %1220 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1241 ], [ %1216, %1242 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #24
  %1258 = add nuw nsw i64 %505, 1
  %1259 = icmp eq i64 %1258, %462
  br i1 %1259, label %499, label %504, !prof !526, !llvm.loop !527

1260:                                             ; preds = %499, %1380
  %1261 = phi i64 [ %1382, %1380 ], [ 0, %499 ]
  %1262 = phi i32 [ %1381, %1380 ], [ %500, %499 ]
  %1263 = getelementptr inbounds [30 x i8], ptr %18, i64 0, i64 %1261
  %1264 = load i8, ptr %1263, align 1, !tbaa !102
  %1265 = icmp eq i8 %1264, 0
  br i1 %1265, label %1380, label %1266, !prof !528

1266:                                             ; preds = %1260
  %1267 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1261
  %1268 = load i8, ptr %1267, align 1, !tbaa !102
  %1269 = icmp eq i8 %1268, 0
  br i1 %1269, label %1270, label %1274

1270:                                             ; preds = %1266
  %1271 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1261
  %1272 = load i8, ptr %1271, align 1, !tbaa !102
  %1273 = icmp eq i8 %1272, 0
  br i1 %1273, label %1380, label %1274

1274:                                             ; preds = %1270, %1266
  %1275 = zext nneg i32 %97 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #24
  %1276 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1261
  %1277 = load ptr, ptr %1276, align 8, !tbaa !91
  call fastcc void @decompose(ptr dead_on_unwind nonnull writable sret(%struct.decomposition) align 8 %33, ptr noundef %1277)
  %1278 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1261
  %1279 = load i32, ptr %1278, align 4, !tbaa !106
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1281, label %1282

1281:                                             ; preds = %1274
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3618, ptr noundef nonnull @.str.1) #24
  br label %1282

1282:                                             ; preds = %1274, %1281
  %1283 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1261
  %1284 = load i32, ptr %1283, align 4, !tbaa !106
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1286, label %1292

1286:                                             ; preds = %1282
  store i8 0, ptr %1263, align 1, !tbaa !102
  %1287 = load i32, ptr @this_insn_is_asm, align 4, !tbaa !106
  %1288 = icmp eq i32 %1287, 0
  br i1 %1288, label %1289, label %1290

1289:                                             ; preds = %1286
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3623, ptr noundef nonnull @.str.1) #24
  br label %1290

1290:                                             ; preds = %1286, %1289
  %1291 = load ptr, ptr @this_insn, align 8, !tbaa !91
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef %1291, ptr noundef nonnull @.str.4) #24
  br label %1292

1292:                                             ; preds = %1282, %1290
  br label %1293

1293:                                             ; preds = %1292, %1341
  %1294 = phi i64 [ 0, %1292 ], [ %1343, %1341 ]
  %1295 = phi i32 [ %1262, %1292 ], [ %1342, %1341 ]
  %1296 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1294
  %1297 = load ptr, ptr %1296, align 8, !tbaa !91
  %1298 = load i32, ptr %1297, align 8
  %1299 = and i32 %1298, 65535
  %1300 = icmp eq i32 %1299, 43
  br i1 %1300, label %1307, label %1301

1301:                                             ; preds = %1293
  %1302 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1294
  %1303 = load i32, ptr %1302, align 4, !tbaa !106
  %1304 = icmp eq i32 %1303, 2
  %1305 = icmp eq i64 %1294, %1261
  %1306 = or i1 %1305, %1304
  br i1 %1306, label %1341, label %1309

1307:                                             ; preds = %1293
  %1308 = icmp eq i64 %1294, %1261
  br i1 %1308, label %1341, label %1309

1309:                                             ; preds = %1307, %1301
  %1310 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1294
  %1311 = load ptr, ptr %1310, align 8, !tbaa !91
  %1312 = load i8, ptr %1311, align 1, !tbaa !102
  %1313 = icmp eq i8 %1312, 0
  br i1 %1313, label %1341, label %1314

1314:                                             ; preds = %1309
  %1315 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1294
  %1316 = load i32, ptr %1315, align 4, !tbaa !106
  %1317 = zext i32 %1316 to i64
  %1318 = icmp eq i64 %1261, %1317
  br i1 %1318, label %1319, label %1323

1319:                                             ; preds = %1314
  %1320 = load ptr, ptr %1276, align 8, !tbaa !91
  %1321 = call i32 @rtx_equal_p(ptr noundef %1320, ptr noundef nonnull %1297) #24
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1341

1323:                                             ; preds = %1319, %1314
  %1324 = load ptr, ptr %1296, align 8, !tbaa !91
  %1325 = load ptr, ptr %1276, align 8, !tbaa !91
  %1326 = call fastcc i32 @immune_p(ptr noundef %1324, ptr noundef %1325, ptr noundef nonnull byval(%struct.decomposition) align 8 %33), !range !201
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1328, label %1341

1328:                                             ; preds = %1323
  %1329 = zext i32 %1284 to i64
  %1330 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1329
  %1331 = load i32, ptr %1330, align 4, !tbaa !106
  switch i32 %1331, label %1332 [
    i32 1, label %1333
    i32 0, label %1345
  ]

1332:                                             ; preds = %1328
  switch i32 %1284, label %1347 [
    i32 1, label %1333
    i32 2, label %1333
    i32 3, label %1333
    i32 4, label %1333
    i32 7, label %1333
    i32 5, label %1333
    i32 6, label %1333
    i32 17, label %1333
    i32 14, label %1333
    i32 15, label %1333
  ]

1333:                                             ; preds = %1332, %1332, %1332, %1332, %1332, %1332, %1332, %1332, %1332, %1332, %1328
  %1334 = load ptr, ptr %1296, align 8, !tbaa !91
  %1335 = load i32, ptr %1334, align 8
  %1336 = trunc i32 %1335 to i16
  switch i16 %1336, label %1349 [
    i16 37, label %1337
    i16 39, label %1337
  ]

1337:                                             ; preds = %1333, %1333
  %1338 = add nsw i32 %1295, 1
  %1339 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1294
  store i8 0, ptr %1339, align 1, !tbaa !102
  %1340 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1294
  store i8 0, ptr %1340, align 1, !tbaa !102
  br label %1341

1341:                                             ; preds = %1309, %1301, %1307, %1319, %1323, %1337
  %1342 = phi i32 [ %1295, %1319 ], [ %1295, %1323 ], [ %1338, %1337 ], [ %1295, %1307 ], [ %1295, %1301 ], [ %1295, %1309 ]
  %1343 = add nuw nsw i64 %1294, 1
  %1344 = icmp eq i64 %1343, %1275
  br i1 %1344, label %1351, label %1293, !llvm.loop !529

1345:                                             ; preds = %1328
  %1346 = trunc i64 %1294 to i32
  br label %1351

1347:                                             ; preds = %1332
  %1348 = trunc i64 %1294 to i32
  br label %1351

1349:                                             ; preds = %1333
  %1350 = trunc i64 %1294 to i32
  br label %1351

1351:                                             ; preds = %1341, %1349, %1347, %1345
  %1352 = phi i32 [ %1295, %1345 ], [ %1295, %1347 ], [ %1295, %1349 ], [ %1342, %1341 ]
  %1353 = phi i32 [ %1346, %1345 ], [ %1348, %1347 ], [ %1350, %1349 ], [ %97, %1341 ]
  %1354 = icmp eq i32 %1353, %97
  br i1 %1354, label %1378, label %1355

1355:                                             ; preds = %1351
  %1356 = zext nneg i32 %97 to i64
  %1357 = add nsw i32 %1352, 1
  store i8 0, ptr %1267, align 1, !tbaa !102
  %1358 = zext nneg i32 %1353 to i64
  %1359 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1358
  store i8 0, ptr %1359, align 1, !tbaa !102
  br label %1360

1360:                                             ; preds = %1355, %1374
  %1361 = phi i64 [ 0, %1355 ], [ %1376, %1374 ]
  %1362 = phi i32 [ %1357, %1355 ], [ %1375, %1374 ]
  %1363 = getelementptr inbounds [30 x i32], ptr %19, i64 0, i64 %1361
  %1364 = load i32, ptr %1363, align 4, !tbaa !106
  %1365 = zext i32 %1364 to i64
  %1366 = icmp eq i64 %1261, %1365
  br i1 %1366, label %1367, label %1374

1367:                                             ; preds = %1360
  %1368 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 %1361
  %1369 = load i8, ptr %1368, align 1, !tbaa !102
  %1370 = icmp eq i8 %1369, 0
  br i1 %1370, label %1374, label %1371

1371:                                             ; preds = %1367
  %1372 = getelementptr inbounds [30 x i8], ptr %16, i64 0, i64 %1361
  store i8 0, ptr %1372, align 1, !tbaa !102
  store i8 0, ptr %1368, align 1, !tbaa !102
  %1373 = add nsw i32 %1362, 1
  br label %1374

1374:                                             ; preds = %1360, %1367, %1371
  %1375 = phi i32 [ %1373, %1371 ], [ %1362, %1367 ], [ %1362, %1360 ]
  %1376 = add nuw nsw i64 %1361, 1
  %1377 = icmp eq i64 %1376, %1356
  br i1 %1377, label %1378, label %1360, !llvm.loop !530

1378:                                             ; preds = %1374, %1351
  %1379 = phi i32 [ %1352, %1351 ], [ %1375, %1374 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #24
  br label %1380

1380:                                             ; preds = %1260, %1270, %1378
  %1381 = phi i32 [ %1379, %1378 ], [ %1262, %1270 ], [ %1262, %1260 ]
  %1382 = add nuw nsw i64 %1261, 1
  %1383 = icmp eq i64 %1382, %463
  br i1 %1383, label %1384, label %1260, !prof !526, !llvm.loop !531

1384:                                             ; preds = %1380, %499
  %1385 = phi i32 [ %500, %499 ], [ %1381, %1380 ]
  %1386 = icmp eq i32 %1385, 0
  %1387 = trunc i64 %469 to i32
  br i1 %1386, label %1388, label %1407, !prof !532

1388:                                             ; preds = %1384
  %1389 = icmp sgt i32 %115, -1
  br i1 %1389, label %1390, label %1400, !prof !533

1390:                                             ; preds = %1388
  %1391 = zext nneg i32 %115 to i64
  %1392 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1391
  %1393 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1391
  %1394 = add nuw nsw i32 %115, 1
  %1395 = zext nneg i32 %1394 to i64
  %1396 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1395
  %1397 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1395
  %1398 = load ptr, ptr %1392, align 8, !tbaa !91
  store ptr %1398, ptr %1393, align 8, !tbaa !91
  %1399 = load ptr, ptr %1396, align 8, !tbaa !91
  store ptr %1399, ptr %1397, align 8, !tbaa !91
  br label %1400

1400:                                             ; preds = %1390, %1388
  %1401 = icmp sgt i8 %96, 0
  br i1 %1401, label %1402, label %1460, !prof !534

1402:                                             ; preds = %1400
  %1403 = zext i32 %97 to i64
  %1404 = zext i32 %97 to i64
  %1405 = zext i32 %97 to i64
  %1406 = shl nuw nsw i64 %1405, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %1403, i1 false), !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %1404, i1 false), !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %1406, i1 false), !tbaa !106
  br label %1456

1407:                                             ; preds = %1384
  %1408 = mul nsw i32 %1385, 6
  %1409 = add nsw i32 %1408, %502
  %1410 = icmp eq i32 %501, 0
  br i1 %1410, label %1411, label %1460, !prof !505

1411:                                             ; preds = %1407
  %1412 = icmp slt i32 %472, %1409
  br i1 %1412, label %1446, label %1413, !prof !535

1413:                                             ; preds = %1411
  %1414 = icmp sgt i8 %96, 0
  br i1 %1414, label %1415, label %1438, !prof !536

1415:                                             ; preds = %1413
  %1416 = zext nneg i32 %97 to i64
  br label %1417

1417:                                             ; preds = %1415, %1433
  %1418 = phi i64 [ 0, %1415 ], [ %1436, %1433 ]
  %1419 = phi i32 [ 0, %1415 ], [ %1435, %1433 ]
  %1420 = getelementptr inbounds [30 x i32], ptr %14, i64 0, i64 %1418
  %1421 = load i32, ptr %1420, align 4, !tbaa !106
  %1422 = zext i32 %1421 to i64
  %1423 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %1422
  %1424 = load i32, ptr %1423, align 4, !tbaa !106
  switch i32 %1424, label %1425 [
    i32 1, label %1433
    i32 0, label %1428
  ], !prof !537

1425:                                             ; preds = %1417
  %1426 = add i32 %1421, -1
  %1427 = icmp ult i32 %1426, 17
  br i1 %1427, label %1429, label %1433

1428:                                             ; preds = %1417
  br label %1433

1429:                                             ; preds = %1425
  %1430 = zext nneg i32 %1426 to i64
  %1431 = getelementptr inbounds [17 x i32], ptr @switch.table.find_reloads, i64 0, i64 %1430
  %1432 = load i32, ptr %1431, align 4
  br label %1433

1433:                                             ; preds = %1425, %1429, %1417, %1428
  %1434 = phi i32 [ %1424, %1417 ], [ 0, %1428 ], [ %1432, %1429 ], [ 0, %1425 ]
  %1435 = add nuw nsw i32 %1434, %1419
  %1436 = add nuw nsw i64 %1418, 1
  %1437 = icmp eq i64 %1436, %1416
  br i1 %1437, label %1438, label %1417, !prof !538, !llvm.loop !539

1438:                                             ; preds = %1433, %1413
  %1439 = phi i32 [ 0, %1413 ], [ %1435, %1433 ]
  %1440 = icmp sgt i32 %472, %1409
  br i1 %1440, label %1445, label %1441, !prof !540

1441:                                             ; preds = %1438
  %1442 = icmp eq i32 %472, %1409
  %1443 = icmp slt i32 %1439, %473
  %1444 = select i1 %1442, i1 %1443, i1 false, !prof !541
  br i1 %1444, label %1445, label %1446, !prof !542

1445:                                             ; preds = %1441, %1438
  br label %1446

1446:                                             ; preds = %1441, %1445, %1411
  %1447 = phi i1 [ false, %1445 ], [ true, %1441 ], [ true, %1411 ]
  %1448 = phi i32 [ %1439, %1445 ], [ %1439, %1441 ], [ 0, %1411 ]
  br i1 %1447, label %1460, label %1449, !prof !543

1449:                                             ; preds = %1446
  %1450 = icmp sgt i8 %96, 0
  br i1 %1450, label %1451, label %1460, !prof !544

1451:                                             ; preds = %1449
  %1452 = zext i32 %97 to i64
  %1453 = shl nuw nsw i64 %1452, 2
  %1454 = zext i32 %97 to i64
  %1455 = zext i32 %97 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %20, ptr nonnull align 16 %14, i64 %1453, i1 false), !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %25, ptr nonnull align 16 %16, i64 %1454, i1 false), !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %24, ptr nonnull align 16 %15, i64 %1455, i1 false), !tbaa !102
  br label %1456

1456:                                             ; preds = %1402, %1451
  %1457 = phi i32 [ 0, %1451 ], [ 44, %1402 ]
  %1458 = phi i32 [ %1448, %1451 ], [ %473, %1402 ]
  %1459 = phi i32 [ %1409, %1451 ], [ %472, %1402 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %26, ptr nonnull align 16 %17, i64 %467, i1 false), !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr nonnull align 16 %19, i64 %466, i1 false), !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %27, ptr nonnull align 16 %18, i64 %464, i1 false), !tbaa !102
  br label %1460

1460:                                             ; preds = %493, %1456, %1449, %1400, %479, %1407, %1446
  %1461 = phi i32 [ 0, %1446 ], [ 0, %1407 ], [ 14, %479 ], [ 44, %1400 ], [ 0, %1449 ], [ %1457, %1456 ], [ 14, %493 ]
  %1462 = phi i32 [ %474, %1446 ], [ %474, %1407 ], [ %474, %479 ], [ %503, %1400 ], [ %503, %1449 ], [ %503, %1456 ], [ %474, %493 ]
  %1463 = phi i32 [ %473, %1446 ], [ %473, %1407 ], [ %473, %479 ], [ %473, %1400 ], [ %1448, %1449 ], [ %1458, %1456 ], [ %473, %493 ]
  %1464 = phi i32 [ %472, %1446 ], [ %472, %1407 ], [ %472, %479 ], [ %472, %1400 ], [ %1409, %1449 ], [ %1459, %1456 ], [ %472, %493 ]
  %1465 = phi i32 [ %471, %1446 ], [ %471, %1407 ], [ %471, %479 ], [ %458, %1400 ], [ %458, %1449 ], [ %458, %1456 ], [ %471, %493 ]
  %1466 = phi i32 [ %470, %1446 ], [ %470, %1407 ], [ %470, %479 ], [ %1387, %1400 ], [ %1387, %1449 ], [ %1387, %1456 ], [ %470, %493 ]
  switch i32 %1461, label %3288 [
    i32 0, label %1467
    i32 14, label %1467
    i32 44, label %1560
  ], !prof !545

1467:                                             ; preds = %1460, %1460
  %1468 = add nuw nsw i64 %469, 1
  %1469 = icmp eq i64 %1468, %99
  br i1 %1469, label %1470, label %468, !prof !546, !llvm.loop !547

1470:                                             ; preds = %1467, %452
  %1471 = phi i32 [ %453, %452 ], [ %1462, %1467 ]
  %1472 = phi i32 [ %454, %452 ], [ %1463, %1467 ]
  %1473 = phi i32 [ %455, %452 ], [ %1464, %1467 ]
  %1474 = phi i32 [ %456, %452 ], [ %1465, %1467 ]
  %1475 = phi i32 [ %457, %452 ], [ %1466, %1467 ]
  %1476 = icmp sgt i32 %115, -1
  br i1 %1476, label %1477, label %1555, !prof !548

1477:                                             ; preds = %1470
  %1478 = icmp eq i32 %458, 0
  %1479 = xor i32 %458, 1
  br i1 %1478, label %1480, label %1524, !prof !549

1480:                                             ; preds = %1477
  %1481 = add nuw nsw i32 %115, 1
  %1482 = zext nneg i32 %1481 to i64
  %1483 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1482
  %1484 = zext nneg i32 %115 to i64
  %1485 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1484
  %1486 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1484
  %1487 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1482
  %1488 = load ptr, ptr %1483, align 8, !tbaa !91
  store ptr %1488, ptr %1485, align 8, !tbaa !91
  %1489 = load ptr, ptr %1486, align 8, !tbaa !91
  store ptr %1489, ptr %1487, align 8, !tbaa !91
  %1490 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !550
  %1491 = icmp sgt i8 %1490, 0
  br i1 %1491, label %1492, label %1511, !prof !551

1492:                                             ; preds = %1480
  %1493 = zext nneg i8 %1490 to i64
  br label %1494

1494:                                             ; preds = %1492, %1508
  %1495 = phi i64 [ 0, %1492 ], [ %1509, %1508 ]
  %1496 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1495
  %1497 = load i8, ptr %1496, align 1, !tbaa !102
  %1498 = sext i8 %1497 to i32
  %1499 = icmp eq i32 %115, %1498
  %1500 = icmp eq i32 %1481, %1498
  %1501 = or i1 %1499, %1500
  br i1 %1501, label %1502, label %1508, !prof !552

1502:                                             ; preds = %1494
  %1503 = sext i8 %1497 to i64
  %1504 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1503
  %1505 = load ptr, ptr %1504, align 8, !tbaa !91
  %1506 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1495
  %1507 = load ptr, ptr %1506, align 8, !tbaa !91
  store ptr %1505, ptr %1507, align 8, !tbaa !91
  br label %1508

1508:                                             ; preds = %1494, %1502
  %1509 = add nuw nsw i64 %1495, 1
  %1510 = icmp eq i64 %1509, %1493
  br i1 %1510, label %1511, label %1494, !prof !553, !llvm.loop !554

1511:                                             ; preds = %1508, %1480
  %1512 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %1484
  %1513 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %1482
  %1514 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %1484
  %1515 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 %1482
  %1516 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %1484
  %1517 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %1482
  %1518 = load i32, ptr %1512, align 4, !tbaa !106
  %1519 = load i32, ptr %1513, align 4, !tbaa !106
  store i32 %1519, ptr %1512, align 4, !tbaa !106
  store i32 %1518, ptr %1513, align 4, !tbaa !106
  %1520 = load i8, ptr %1514, align 1, !tbaa !102
  %1521 = load i8, ptr %1515, align 1, !tbaa !102
  store i8 %1521, ptr %1514, align 1, !tbaa !102
  store i8 %1520, ptr %1515, align 1, !tbaa !102
  %1522 = load i32, ptr %1516, align 4, !tbaa !106
  %1523 = load i32, ptr %1517, align 4, !tbaa !106
  store i32 %1523, ptr %1516, align 4, !tbaa !106
  store i32 %1522, ptr %1517, align 4, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), i64 %110, i1 false), !prof !555
  br label %452

1524:                                             ; preds = %1477
  %1525 = zext nneg i32 %115 to i64
  %1526 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1525
  %1527 = load ptr, ptr %1526, align 8, !tbaa !91
  %1528 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1525
  store ptr %1527, ptr %1528, align 8, !tbaa !91
  %1529 = add nuw nsw i32 %115, 1
  %1530 = zext nneg i32 %1529 to i64
  %1531 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1530
  %1532 = load ptr, ptr %1531, align 8, !tbaa !91
  %1533 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1530
  store ptr %1532, ptr %1533, align 8, !tbaa !91
  %1534 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !550
  %1535 = icmp sgt i8 %1534, 0
  br i1 %1535, label %1536, label %1555

1536:                                             ; preds = %1524
  %1537 = zext nneg i8 %1534 to i64
  br label %1538

1538:                                             ; preds = %1536, %1552
  %1539 = phi i64 [ 0, %1536 ], [ %1553, %1552 ]
  %1540 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %1539
  %1541 = load i8, ptr %1540, align 1, !tbaa !102
  %1542 = sext i8 %1541 to i32
  %1543 = icmp eq i32 %115, %1542
  %1544 = icmp eq i32 %1529, %1542
  %1545 = or i1 %1543, %1544
  br i1 %1545, label %1546, label %1552

1546:                                             ; preds = %1538
  %1547 = sext i8 %1541 to i64
  %1548 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1547
  %1549 = load ptr, ptr %1548, align 8, !tbaa !91
  %1550 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %1539
  %1551 = load ptr, ptr %1550, align 8, !tbaa !91
  store ptr %1549, ptr %1551, align 8, !tbaa !91
  br label %1552

1552:                                             ; preds = %1538, %1546
  %1553 = add nuw nsw i64 %1539, 1
  %1554 = icmp eq i64 %1553, %1537
  br i1 %1554, label %1555, label %1538, !llvm.loop !556

1555:                                             ; preds = %1470, %1552, %1524
  %1556 = icmp eq i32 %1473, 660
  br i1 %1556, label %1557, label %1560, !prof !557

1557:                                             ; preds = %1555
  %1558 = icmp sgt i32 %105, -1
  br i1 %1558, label %1559, label %3285

1559:                                             ; preds = %1557
  call void @_fatal_insn(ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 3821, ptr noundef nonnull @.str.1) #24
  br label %3285

1560:                                             ; preds = %1460, %1555
  %1561 = phi i32 [ %1471, %1555 ], [ %1462, %1460 ]
  %1562 = phi i32 [ %1474, %1555 ], [ %1465, %1460 ]
  %1563 = phi i32 [ %1475, %1555 ], [ %1466, %1460 ]
  %1564 = icmp sgt i8 %96, 0
  br i1 %1564, label %1565, label %1568, !prof !425

1565:                                             ; preds = %1560
  %1566 = shl nuw nsw i32 %97, 2
  %1567 = zext nneg i32 %1566 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %23, i8 -1, i64 %1567, i1 false), !tbaa !106
  br label %1568

1568:                                             ; preds = %1565, %1560
  %1569 = icmp sgt i8 %96, 0
  br i1 %1569, label %1570, label %1572, !prof !425

1570:                                             ; preds = %1568
  %1571 = zext nneg i32 %97 to i64
  br label %1576

1572:                                             ; preds = %1589, %1568
  %1573 = icmp sgt i8 %96, 0
  br i1 %1573, label %1574, label %1601, !prof !425

1574:                                             ; preds = %1572
  %1575 = zext nneg i32 %97 to i64
  br label %1592

1576:                                             ; preds = %1570, %1589
  %1577 = phi i64 [ 0, %1570 ], [ %1590, %1589 ]
  %1578 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1577
  %1579 = load i8, ptr %1578, align 1, !tbaa !102
  %1580 = icmp eq i8 %1579, 0
  br i1 %1580, label %1581, label %1589, !prof !558

1581:                                             ; preds = %1576
  %1582 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1577
  %1583 = load i32, ptr %1582, align 4, !tbaa !106
  %1584 = icmp sgt i32 %1583, -1
  br i1 %1584, label %1585, label %1589, !prof !559

1585:                                             ; preds = %1581
  %1586 = zext nneg i32 %1583 to i64
  %1587 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1586
  %1588 = trunc i64 %1577 to i32
  store i32 %1588, ptr %1587, align 4, !tbaa !106
  br label %1589

1589:                                             ; preds = %1576, %1581, %1585
  %1590 = add nuw nsw i64 %1577, 1
  %1591 = icmp eq i64 %1590, %1571
  br i1 %1591, label %1572, label %1576, !prof !438, !llvm.loop !560

1592:                                             ; preds = %1574, %1592
  %1593 = phi i64 [ 0, %1574 ], [ %1599, %1592 ]
  %1594 = getelementptr inbounds [30 x i8], ptr %24, i64 0, i64 %1593
  %1595 = load i8, ptr %1594, align 1, !tbaa !102
  %1596 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1593
  %1597 = load i8, ptr %1596, align 1, !tbaa !102
  %1598 = or i8 %1597, %1595
  store i8 %1598, ptr %1596, align 1, !tbaa !102
  %1599 = add nuw nsw i64 %1593, 1
  %1600 = icmp eq i64 %1599, %1575
  br i1 %1600, label %1601, label %1592, !prof !438, !llvm.loop !561

1601:                                             ; preds = %1592, %1572
  %1602 = icmp eq i32 %1562, 0
  br i1 %1602, label %1637, label %1603, !prof !562

1603:                                             ; preds = %1601
  %1604 = sext i32 %115 to i64
  %1605 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1604
  %1606 = load ptr, ptr %1605, align 8, !tbaa !91
  %1607 = add nsw i32 %115, 1
  %1608 = sext i32 %1607 to i64
  %1609 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1608
  %1610 = load ptr, ptr %1609, align 8, !tbaa !91
  store ptr %1610, ptr %1605, align 8, !tbaa !91
  store ptr %1606, ptr %1609, align 8, !tbaa !91
  %1611 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1604
  %1612 = load ptr, ptr %1611, align 8, !tbaa !91
  %1613 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1608
  %1614 = load ptr, ptr %1613, align 8, !tbaa !91
  store ptr %1614, ptr %1611, align 8, !tbaa !91
  store ptr %1612, ptr %1613, align 8, !tbaa !91
  %1615 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1604
  %1616 = load ptr, ptr %1615, align 8, !tbaa !91
  %1617 = load ptr, ptr %1616, align 8, !tbaa !91
  %1618 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1608
  %1619 = load ptr, ptr %1618, align 8, !tbaa !91
  %1620 = load ptr, ptr %1619, align 8, !tbaa !91
  store ptr %1620, ptr %1616, align 8, !tbaa !91
  %1621 = load ptr, ptr %1618, align 8, !tbaa !91
  store ptr %1617, ptr %1621, align 8, !tbaa !91
  %1622 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %1623 = icmp sgt i32 %1622, 0
  br i1 %1623, label %1624, label %1637, !prof !177

1624:                                             ; preds = %1603, %1633
  %1625 = phi i64 [ %1635, %1633 ], [ 0, %1603 ]
  %1626 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1625, i32 12
  %1627 = load i32, ptr %1626, align 8, !tbaa !186
  %1628 = icmp eq i32 %1627, %115
  br i1 %1628, label %1631, label %1629

1629:                                             ; preds = %1624
  %1630 = icmp eq i32 %1627, %1607
  br i1 %1630, label %1631, label %1633

1631:                                             ; preds = %1629, %1624
  %1632 = phi i32 [ %1607, %1624 ], [ %115, %1629 ]
  store i32 %1632, ptr %1626, align 8, !tbaa !186
  br label %1633

1633:                                             ; preds = %1631, %1629
  %1634 = zext nneg i32 %1622 to i64
  %1635 = add nuw nsw i64 %1625, 1
  %1636 = icmp eq i64 %1635, %1634
  br i1 %1636, label %1637, label %1624, !prof !178, !llvm.loop !563

1637:                                             ; preds = %1633, %1603, %1601
  %1638 = icmp sgt i8 %96, 0
  br i1 %1638, label %1639, label %1641, !prof !425

1639:                                             ; preds = %1637
  %1640 = zext nneg i32 %97 to i64
  br label %1645

1641:                                             ; preds = %1661, %1637
  %1642 = icmp sgt i8 %96, 0
  br i1 %1642, label %1643, label %1770, !prof !425

1643:                                             ; preds = %1641
  %1644 = zext nneg i32 %97 to i64
  br label %1664

1645:                                             ; preds = %1639, %1661
  %1646 = phi i64 [ 0, %1639 ], [ %1662, %1661 ]
  %1647 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1646
  store i32 -1, ptr %1647, align 4, !tbaa !106
  %1648 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1646
  %1649 = load i8, ptr %1648, align 1, !tbaa !102
  %1650 = icmp eq i8 %1649, 0
  br i1 %1650, label %1661, label %1651, !prof !454

1651:                                             ; preds = %1645
  %1652 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1646
  %1653 = load i32, ptr %1652, align 4, !tbaa !106
  %1654 = icmp eq i32 %1653, 9
  br i1 %1654, label %1661, label %1655

1655:                                             ; preds = %1651
  %1656 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1646
  %1657 = load ptr, ptr %1656, align 8, !tbaa !91
  %1658 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %1657) #24
  %1659 = icmp eq ptr %1658, null
  %1660 = select i1 %1659, i32 9, i32 2
  store i32 %1660, ptr %1652, align 4, !tbaa !106
  br label %1661

1661:                                             ; preds = %1645, %1651, %1655
  %1662 = add nuw nsw i64 %1646, 1
  %1663 = icmp eq i64 %1662, %1640
  br i1 %1663, label %1641, label %1645, !prof !438, !llvm.loop !564

1664:                                             ; preds = %1643, %1767
  %1665 = phi i64 [ 0, %1643 ], [ %1768, %1767 ]
  %1666 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1665
  %1667 = load i8, ptr %1666, align 1, !tbaa !102
  %1668 = icmp eq i8 %1667, 0
  br i1 %1668, label %1669, label %1767, !prof !565

1669:                                             ; preds = %1664
  %1670 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1665
  %1671 = load ptr, ptr %1670, align 8, !tbaa !91
  %1672 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1665
  %1673 = load i32, ptr %1672, align 4, !tbaa !106
  %1674 = load i32, ptr %1671, align 8
  %1675 = and i32 %1674, 65535
  %1676 = icmp eq i32 %1675, 39
  br i1 %1676, label %1677, label %1683, !prof !557

1677:                                             ; preds = %1669
  %1678 = getelementptr inbounds %struct.rtx_def, ptr %1671, i64 0, i32 1
  %1679 = load ptr, ptr %1678, align 8, !tbaa !102
  %1680 = load i32, ptr %1679, align 8
  %1681 = lshr i32 %1680, 16
  %1682 = and i32 %1681, 255
  br label %1683

1683:                                             ; preds = %1677, %1669
  %1684 = phi ptr [ %1679, %1677 ], [ %1671, %1669 ]
  %1685 = phi ptr [ %1671, %1677 ], [ null, %1669 ]
  %1686 = phi i32 [ %1682, %1677 ], [ %1673, %1669 ]
  %1687 = load i32, ptr %1684, align 8
  %1688 = and i32 %1687, 65535
  %1689 = icmp eq i32 %1688, 49
  br i1 %1689, label %1690, label %1693, !prof !557

1690:                                             ; preds = %1683
  %1691 = getelementptr inbounds %struct.rtx_def, ptr %1684, i64 0, i32 1, i32 0, i32 0, i64 1
  %1692 = load ptr, ptr %1691, align 8, !tbaa !102
  br label %1693

1693:                                             ; preds = %1690, %1683
  %1694 = phi ptr [ %1692, %1690 ], [ %1684, %1683 ]
  %1695 = phi ptr [ %1684, %1690 ], [ null, %1683 ]
  %1696 = load i32, ptr %1694, align 8
  %1697 = and i32 %1696, 65535
  %1698 = zext nneg i32 %1697 to i64
  %1699 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1698
  %1700 = load i32, ptr %1699, align 4, !tbaa !106
  %1701 = icmp ne i32 %1700, 9
  %1702 = icmp eq i32 %1697, 121
  %1703 = or i1 %1701, %1702
  br i1 %1703, label %1767, label %1704, !prof !200

1704:                                             ; preds = %1693
  %1705 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 36), align 8, !tbaa !484
  %1706 = call zeroext i8 %1705(ptr noundef nonnull %1694) #24
  %1707 = icmp eq i8 %1706, 0
  br i1 %1707, label %1708, label %1767

1708:                                             ; preds = %1704
  %1709 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1665
  %1710 = load i32, ptr %1709, align 4, !tbaa !106
  %1711 = call i32 @ix86_preferred_reload_class(ptr noundef nonnull %1694, i32 noundef %1710) #24
  %1712 = icmp eq i32 %1711, 0
  %1713 = icmp ne i32 %1686, 0
  %1714 = select i1 %1712, i1 %1713, i1 false
  br i1 %1714, label %1715, label %1767

1715:                                             ; preds = %1708
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #24
  %1716 = call ptr @force_const_mem(i32 noundef %1686, ptr noundef nonnull %1694) #24
  %1717 = icmp eq ptr %1695, null
  br i1 %1717, label %1722, label %1718

1718:                                             ; preds = %1715
  %1719 = getelementptr inbounds %struct.rtx_def, ptr %1695, i64 0, i32 1
  %1720 = load ptr, ptr %1719, align 8, !tbaa !102
  %1721 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %1686, ptr noundef %1720, ptr noundef %1716) #24
  br label %1722

1722:                                             ; preds = %1718, %1715
  %1723 = phi ptr [ %1721, %1718 ], [ %1716, %1715 ]
  %1724 = icmp eq ptr %1685, null
  br i1 %1724, label %1730, label %1725

1725:                                             ; preds = %1722
  %1726 = load i32, ptr %1672, align 4, !tbaa !106
  %1727 = getelementptr inbounds %struct.rtx_def, ptr %1685, i64 0, i32 1, i32 0, i32 0, i64 1
  %1728 = load i32, ptr %1727, align 8, !tbaa !102
  %1729 = call ptr @gen_rtx_SUBREG(i32 noundef %1726, ptr noundef %1723, i32 noundef %1728) #24
  br label %1730

1730:                                             ; preds = %1725, %1722
  %1731 = phi ptr [ %1729, %1725 ], [ %1723, %1722 ]
  store i32 0, ptr %34, align 4, !tbaa !106
  %1732 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %1665
  %1733 = load i32, ptr %1732, align 4, !tbaa !106
  %1734 = trunc i64 %1665 to i32
  %1735 = call fastcc ptr @find_reloads_toplev(ptr noundef %1731, i32 noundef %1734, i32 noundef %1733, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %34)
  store ptr %1735, ptr %1670, align 8, !tbaa !91
  %1736 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %1665
  store ptr %1735, ptr %1736, align 8, !tbaa !91
  %1737 = and i1 %1724, %1717
  br i1 %1737, label %1738, label %1766

1738:                                             ; preds = %1730
  %1739 = icmp sgt i32 %1563, 0
  %1740 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %1665
  %1741 = load ptr, ptr %1740, align 8, !tbaa !91
  br i1 %1739, label %1742, label %1753

1742:                                             ; preds = %1738, %1750
  %1743 = phi i32 [ %1751, %1750 ], [ %1563, %1738 ]
  %1744 = phi ptr [ %1747, %1750 ], [ %1741, %1738 ]
  br label %1745

1745:                                             ; preds = %1742, %1745
  %1746 = phi ptr [ %1747, %1745 ], [ %1744, %1742 ]
  %1747 = getelementptr inbounds i8, ptr %1746, i64 1
  %1748 = load i8, ptr %1746, align 1, !tbaa !102
  %1749 = icmp eq i8 %1748, 44
  br i1 %1749, label %1750, label %1745, !llvm.loop !566

1750:                                             ; preds = %1745
  %1751 = add nsw i32 %1743, -1
  %1752 = icmp sgt i32 %1743, 1
  br i1 %1752, label %1742, label %1753, !llvm.loop !567

1753:                                             ; preds = %1750, %1738
  %1754 = phi ptr [ %1741, %1738 ], [ %1747, %1750 ]
  br label %1755

1755:                                             ; preds = %1753, %1761
  %1756 = phi ptr [ %1764, %1761 ], [ %1754, %1753 ]
  %1757 = load i8, ptr %1756, align 1, !tbaa !102
  switch i8 %1757, label %1758 [
    i8 44, label %1766
    i8 35, label %1766
    i8 0, label %1766
  ]

1758:                                             ; preds = %1755
  %1759 = and i8 %1757, -3
  %1760 = icmp eq i8 %1759, 109
  br i1 %1760, label %1765, label %1761

1761:                                             ; preds = %1758
  %1762 = icmp eq i8 %1757, 89
  %1763 = select i1 %1762, i64 2, i64 1
  %1764 = getelementptr inbounds i8, ptr %1756, i64 %1763
  br label %1755, !llvm.loop !568

1765:                                             ; preds = %1758
  store i8 1, ptr %1666, align 1, !tbaa !102
  br label %1766

1766:                                             ; preds = %1755, %1755, %1755, %1765, %1730
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #24
  br label %1767

1767:                                             ; preds = %1693, %1704, %1766, %1708, %1664
  %1768 = add nuw nsw i64 %1665, 1
  %1769 = icmp eq i64 %1768, %1644
  br i1 %1769, label %1770, label %1664, !prof !438, !llvm.loop !569

1770:                                             ; preds = %1767, %1641
  %1771 = icmp eq i32 %1561, 0
  br i1 %1771, label %1793, label %1772, !prof !570

1772:                                             ; preds = %1770
  %1773 = icmp sgt i8 %96, 0
  br i1 %1773, label %1774, label %1793

1774:                                             ; preds = %1772
  %1775 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %1776 = zext nneg i32 %97 to i64
  br label %1777

1777:                                             ; preds = %1774, %1789
  %1778 = phi i64 [ 0, %1774 ], [ %1791, %1789 ]
  %1779 = phi i32 [ %1775, %1774 ], [ %1790, %1789 ]
  %1780 = getelementptr inbounds [30 x i8], ptr %27, i64 0, i64 %1778
  %1781 = load i8, ptr %1780, align 1, !tbaa !102
  %1782 = icmp eq i8 %1781, 0
  br i1 %1782, label %1789, label %1783

1783:                                             ; preds = %1777
  %1784 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1778
  %1785 = load ptr, ptr %1784, align 8, !tbaa !91
  %1786 = add nsw i32 %1779, 1
  store i32 %1786, ptr @n_earlyclobbers, align 4, !tbaa !106
  %1787 = sext i32 %1779 to i64
  %1788 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %1787
  store ptr %1785, ptr %1788, align 8, !tbaa !91
  br label %1789

1789:                                             ; preds = %1777, %1783
  %1790 = phi i32 [ %1779, %1777 ], [ %1786, %1783 ]
  %1791 = add nuw nsw i64 %1778, 1
  %1792 = icmp eq i64 %1791, %1776
  br i1 %1792, label %1793, label %1777, !llvm.loop !571

1793:                                             ; preds = %1789, %1772, %1770
  %1794 = icmp sgt i8 %96, 0
  br i1 %1794, label %1795, label %1798, !prof !425

1795:                                             ; preds = %1793
  %1796 = icmp eq i32 %1, 0
  %1797 = zext nneg i32 %97 to i64
  br label %1803

1798:                                             ; preds = %2172, %1793
  %1799 = icmp sgt i8 %96, 0
  br i1 %1799, label %1800, label %2210, !prof !425

1800:                                             ; preds = %1798
  %1801 = icmp eq i32 %1, 0
  %1802 = zext nneg i32 %97 to i64
  br label %2175

1803:                                             ; preds = %1795, %2172
  %1804 = phi i64 [ 0, %1795 ], [ %2173, %2172 ]
  %1805 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %1804
  %1806 = load i8, ptr %1805, align 1, !tbaa !102
  %1807 = icmp eq i8 %1806, 0
  br i1 %1807, label %1808, label %1994, !prof !565

1808:                                             ; preds = %1803
  %1809 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1804
  %1810 = load i32, ptr %1809, align 4, !tbaa !106
  %1811 = icmp sgt i32 %1810, -1
  br i1 %1811, label %2172, label %1812, !prof !557

1812:                                             ; preds = %1808
  %1813 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1804
  %1814 = load i32, ptr %1813, align 4, !tbaa !106
  %1815 = icmp eq i32 %1814, -1
  br i1 %1815, label %1816, label %1937, !prof !200

1816:                                             ; preds = %1812
  %1817 = getelementptr inbounds [30 x i8], ptr %26, i64 0, i64 %1804
  %1818 = load i8, ptr %1817, align 1, !tbaa !102
  %1819 = icmp eq i8 %1818, 0
  br i1 %1819, label %1885, label %1820, !prof !200

1820:                                             ; preds = %1816
  %1821 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1804
  %1822 = load ptr, ptr %1821, align 8, !tbaa !91
  %1823 = load i32, ptr %1822, align 8
  %1824 = and i32 %1823, 65535
  %1825 = icmp eq i32 %1824, 43
  br i1 %1825, label %1826, label %1885

1826:                                             ; preds = %1820
  %1827 = getelementptr inbounds %struct.rtx_def, ptr %1822, i64 0, i32 1
  %1828 = load ptr, ptr %1827, align 8, !tbaa !102
  %1829 = load i32, ptr %1828, align 8
  %1830 = lshr i32 %1829, 16
  %1831 = and i32 %1830, 255
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1833, label %1844

1833:                                             ; preds = %1826
  %1834 = getelementptr inbounds %struct.rtx_def, ptr %1822, i64 0, i32 1, i32 0, i32 0, i64 1
  %1835 = load ptr, ptr %1834, align 8, !tbaa !102
  %1836 = icmp eq ptr %1835, null
  br i1 %1836, label %1840, label %1837

1837:                                             ; preds = %1833
  %1838 = getelementptr inbounds %struct.mem_attrs, ptr %1835, i64 0, i32 5
  %1839 = load i8, ptr %1838, align 8, !tbaa !130
  br label %1840

1840:                                             ; preds = %1833, %1837
  %1841 = phi i8 [ %1839, %1837 ], [ 0, %1833 ]
  %1842 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !155
  %1843 = call i32 %1842(i8 noundef zeroext %1841) #24
  br label %1844

1844:                                             ; preds = %1840, %1826
  %1845 = phi i32 [ %1843, %1840 ], [ %1831, %1826 ]
  %1846 = load ptr, ptr %1821, align 8, !tbaa !91
  %1847 = getelementptr inbounds %struct.rtx_def, ptr %1846, i64 0, i32 1
  %1848 = load ptr, ptr %1847, align 8, !tbaa !102
  %1849 = trunc i64 %1804 to i32
  %1850 = call i32 @push_reload(ptr noundef %1848, ptr noundef null, ptr noundef nonnull %1847, ptr noundef null, i32 noundef 13, i32 noundef %1845, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1849, i32 noundef 0)
  %1851 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1804
  store i32 %1850, ptr %1851, align 4, !tbaa !106
  %1852 = load ptr, ptr %1821, align 8, !tbaa !91
  %1853 = load i32, ptr %1852, align 8
  %1854 = lshr i32 %1853, 16
  %1855 = and i32 %1854, 255
  %1856 = zext nneg i32 %1855 to i64
  %1857 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1856
  %1858 = load i8, ptr %1857, align 1, !tbaa !102
  %1859 = zext i8 %1858 to i32
  %1860 = sext i32 %1850 to i64
  %1861 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1860, i32 7
  store i32 %1859, ptr %1861, align 4, !tbaa !192
  %1862 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1804
  %1863 = load i32, ptr %1862, align 4, !tbaa !106
  %1864 = icmp eq i32 %1863, 2
  br i1 %1864, label %1865, label %2172

1865:                                             ; preds = %1844
  %1866 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %1867 = icmp sgt i32 %1866, 0
  br i1 %1867, label %1868, label %2172

1868:                                             ; preds = %1865
  %1869 = zext nneg i32 %1866 to i64
  br label %1870

1870:                                             ; preds = %1868, %1882
  %1871 = phi i64 [ 0, %1868 ], [ %1883, %1882 ]
  %1872 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1871, i32 12
  %1873 = load i32, ptr %1872, align 8, !tbaa !186
  %1874 = zext i32 %1873 to i64
  %1875 = icmp eq i64 %1804, %1874
  br i1 %1875, label %1876, label %1882

1876:                                             ; preds = %1870
  %1877 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %1871, i32 17
  %1878 = load i32, ptr %1877, align 4, !tbaa !185
  switch i32 %1878, label %1882 [
    i32 5, label %1880
    i32 6, label %1879
  ]

1879:                                             ; preds = %1876
  br label %1880

1880:                                             ; preds = %1876, %1879
  %1881 = phi i32 [ 4, %1879 ], [ 3, %1876 ]
  store i32 %1881, ptr %1877, align 4, !tbaa !185
  br label %1882

1882:                                             ; preds = %1880, %1876, %1870
  %1883 = add nuw nsw i64 %1871, 1
  %1884 = icmp eq i64 %1883, %1869
  br i1 %1884, label %2172, label %1870, !llvm.loop !572

1885:                                             ; preds = %1820, %1816
  br i1 %1815, label %1886, label %1937, !prof !200

1886:                                             ; preds = %1885
  %1887 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1804
  %1888 = load i32, ptr %1887, align 4, !tbaa !106
  %1889 = icmp eq i32 %1888, 2
  br i1 %1889, label %1893, label %1890, !prof !200

1890:                                             ; preds = %1886
  %1891 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1804
  %1892 = load ptr, ptr %1891, align 8, !tbaa !91
  br label %1893

1893:                                             ; preds = %1886, %1890
  %1894 = phi ptr [ %1892, %1890 ], [ null, %1886 ]
  %1895 = icmp eq i32 %1888, 0
  br i1 %1895, label %1899, label %1896, !prof !557

1896:                                             ; preds = %1893
  %1897 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1804
  %1898 = load ptr, ptr %1897, align 8, !tbaa !91
  br label %1899

1899:                                             ; preds = %1893, %1896
  %1900 = phi ptr [ %1898, %1896 ], [ null, %1893 ]
  br i1 %1889, label %1904, label %1901, !prof !200

1901:                                             ; preds = %1899
  %1902 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %1903 = load ptr, ptr %1902, align 8, !tbaa !91
  br label %1904

1904:                                             ; preds = %1899, %1901
  %1905 = phi ptr [ %1903, %1901 ], [ null, %1899 ]
  br i1 %1895, label %1909, label %1906, !prof !557

1906:                                             ; preds = %1904
  %1907 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %1908 = load ptr, ptr %1907, align 8, !tbaa !91
  br label %1909

1909:                                             ; preds = %1904, %1906
  %1910 = phi ptr [ %1908, %1906 ], [ null, %1904 ]
  %1911 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1804
  %1912 = load i32, ptr %1911, align 4, !tbaa !106
  br i1 %1889, label %1916, label %1913, !prof !200

1913:                                             ; preds = %1909
  %1914 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1804
  %1915 = load i32, ptr %1914, align 4, !tbaa !106
  br label %1916

1916:                                             ; preds = %1909, %1913
  %1917 = phi i32 [ %1915, %1913 ], [ 0, %1909 ]
  br i1 %1895, label %1921, label %1918, !prof !557

1918:                                             ; preds = %1916
  %1919 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1804
  %1920 = load i32, ptr %1919, align 4, !tbaa !106
  br label %1921

1921:                                             ; preds = %1916, %1918
  %1922 = phi i32 [ %1920, %1918 ], [ 0, %1916 ]
  br i1 %106, label %1930, label %1923, !prof !557

1923:                                             ; preds = %1921
  %1924 = zext nneg i32 %105 to i64
  %1925 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %1924, i32 3
  %1926 = load ptr, ptr %1925, align 8, !tbaa !127
  %1927 = getelementptr inbounds %struct.insn_operand_data, ptr %1926, i64 %1804, i32 3
  %1928 = load i8, ptr %1927, align 2, !tbaa !573
  %1929 = sext i8 %1928 to i32
  br label %1930

1930:                                             ; preds = %1921, %1923
  %1931 = phi i32 [ %1929, %1923 ], [ 0, %1921 ]
  %1932 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1804
  %1933 = load i32, ptr %1932, align 4, !tbaa !106
  %1934 = trunc i64 %1804 to i32
  %1935 = call i32 @push_reload(ptr noundef %1894, ptr noundef %1900, ptr noundef %1905, ptr noundef %1910, i32 noundef %1912, i32 noundef %1917, i32 noundef %1922, i32 noundef %1931, i32 noundef 0, i32 noundef %1934, i32 noundef %1933)
  %1936 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1804
  store i32 %1935, ptr %1936, align 4, !tbaa !106
  br label %2172

1937:                                             ; preds = %1812, %1885
  %1938 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1804
  %1939 = load i32, ptr %1938, align 4, !tbaa !106
  switch i32 %1939, label %1992 [
    i32 0, label %1940
    i32 2, label %1967
  ]

1940:                                             ; preds = %1937
  %1941 = sext i32 %1814 to i64
  %1942 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1941
  %1943 = load i32, ptr %1942, align 4, !tbaa !106
  %1944 = icmp eq i32 %1943, 2
  br i1 %1944, label %1945, label %1965

1945:                                             ; preds = %1940
  %1946 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1804
  %1947 = load ptr, ptr %1946, align 8, !tbaa !91
  %1948 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1941
  %1949 = load ptr, ptr %1948, align 8, !tbaa !91
  %1950 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %1951 = load ptr, ptr %1950, align 8, !tbaa !91
  %1952 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1941
  %1953 = load ptr, ptr %1952, align 8, !tbaa !91
  %1954 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1804
  %1955 = load i32, ptr %1954, align 4, !tbaa !106
  %1956 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1804
  %1957 = load i32, ptr %1956, align 4, !tbaa !106
  %1958 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1941
  %1959 = load i32, ptr %1958, align 4, !tbaa !106
  %1960 = trunc i64 %1804 to i32
  %1961 = call i32 @push_reload(ptr noundef %1947, ptr noundef %1949, ptr noundef %1951, ptr noundef %1953, i32 noundef %1955, i32 noundef %1957, i32 noundef %1959, i32 noundef 0, i32 noundef 0, i32 noundef %1960, i32 noundef 9)
  %1962 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1804
  store i32 %1961, ptr %1962, align 4, !tbaa !106
  %1963 = load i32, ptr @output_reloadnum, align 4, !tbaa !106
  %1964 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1941
  store i32 %1963, ptr %1964, align 4, !tbaa !106
  br label %2172

1965:                                             ; preds = %1940
  %1966 = icmp eq i32 %1939, 2
  br i1 %1966, label %1967, label %1992

1967:                                             ; preds = %1937, %1965
  %1968 = sext i32 %1814 to i64
  %1969 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1968
  %1970 = load i32, ptr %1969, align 4, !tbaa !106
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %1972, label %1992

1972:                                             ; preds = %1967
  %1973 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1968
  %1974 = load ptr, ptr %1973, align 8, !tbaa !91
  %1975 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1804
  %1976 = load ptr, ptr %1975, align 8, !tbaa !91
  %1977 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1968
  %1978 = load ptr, ptr %1977, align 8, !tbaa !91
  %1979 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %1980 = load ptr, ptr %1979, align 8, !tbaa !91
  %1981 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1804
  %1982 = load i32, ptr %1981, align 4, !tbaa !106
  %1983 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1968
  %1984 = load i32, ptr %1983, align 4, !tbaa !106
  %1985 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1804
  %1986 = load i32, ptr %1985, align 4, !tbaa !106
  %1987 = trunc i64 %1804 to i32
  %1988 = call i32 @push_reload(ptr noundef %1974, ptr noundef %1976, ptr noundef %1978, ptr noundef %1980, i32 noundef %1982, i32 noundef %1984, i32 noundef %1986, i32 noundef 0, i32 noundef 0, i32 noundef %1987, i32 noundef 9)
  %1989 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1968
  store i32 %1988, ptr %1989, align 4, !tbaa !106
  %1990 = load i32, ptr @output_reloadnum, align 4, !tbaa !106
  %1991 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1804
  store i32 %1990, ptr %1991, align 4, !tbaa !106
  br label %2172

1992:                                             ; preds = %1937, %1967, %1965
  br i1 %106, label %3285, label %1993

1993:                                             ; preds = %1992
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4082, ptr noundef nonnull @.str.1) #24
  br label %3285

1994:                                             ; preds = %1803
  %1995 = getelementptr inbounds [30 x i32], ptr %23, i64 0, i64 %1804
  %1996 = load i32, ptr %1995, align 4, !tbaa !106
  %1997 = icmp slt i32 %1996, 0
  br i1 %1997, label %1998, label %2118, !prof !574

1998:                                             ; preds = %1994
  %1999 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1804
  %2000 = load i32, ptr %1999, align 4, !tbaa !106
  %2001 = icmp slt i32 %2000, 0
  br i1 %2001, label %2002, label %2118, !prof !575

2002:                                             ; preds = %1998
  %2003 = getelementptr inbounds [30 x i32], ptr %10, i64 0, i64 %1804
  %2004 = load i32, ptr %2003, align 4, !tbaa !106
  %2005 = icmp ne i32 %2004, 1
  %2006 = load i32, ptr @optimize, align 4
  %2007 = icmp ne i32 %2006, 0
  %2008 = select i1 %2005, i1 %2007, i1 false, !prof !576
  br i1 %2008, label %2009, label %2118, !prof !576

2009:                                             ; preds = %2002
  %2010 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1804
  br label %2011

2011:                                             ; preds = %2016, %2009
  %2012 = phi ptr [ %2010, %2009 ], [ %2017, %2016 ]
  %2013 = load ptr, ptr %2012, align 8, !tbaa !102
  %2014 = load i32, ptr %2013, align 8
  %2015 = trunc i32 %2014 to i16
  switch i16 %2015, label %2082 [
    i16 39, label %2016
    i16 43, label %2022
    i16 37, label %2018
  ], !prof !577

2016:                                             ; preds = %2011
  %2017 = getelementptr inbounds %struct.rtx_def, ptr %2013, i64 0, i32 1
  br label %2011, !llvm.loop !578

2018:                                             ; preds = %2011
  %2019 = getelementptr inbounds %struct.rtx_def, ptr %2013, i64 0, i32 1
  %2020 = load i32, ptr %2019, align 8, !tbaa !102
  %2021 = icmp ugt i32 %2020, 52
  br i1 %2021, label %2022, label %2082, !prof !579

2022:                                             ; preds = %2011, %2018
  %2023 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %1804
  %2024 = load i32, ptr %2023, align 4, !tbaa !106
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2026, label %2030, !prof !580

2026:                                             ; preds = %2022
  %2027 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1804
  %2028 = load i32, ptr %2027, align 4, !tbaa !106
  %2029 = icmp eq i32 %2028, 2
  br i1 %2029, label %2030, label %2082, !prof !172

2030:                                             ; preds = %2022, %2026
  %2031 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1804
  %2032 = load i32, ptr %2031, align 4, !tbaa !106
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2038, label %2034, !prof !581

2034:                                             ; preds = %2030
  %2035 = load i32, ptr @this_insn_is_asm, align 4
  %2036 = icmp ne i32 %2035, 0
  %2037 = select i1 %54, i1 true, i1 %2036, !prof !582
  br i1 %2037, label %2082, label %2038, !prof !582

2038:                                             ; preds = %2034, %2030
  %2039 = icmp eq i32 %2032, 2
  br i1 %2039, label %2042, label %2040, !prof !580

2040:                                             ; preds = %2038
  %2041 = load ptr, ptr %2010, align 8, !tbaa !91
  br label %2042

2042:                                             ; preds = %2038, %2040
  %2043 = phi ptr [ %2041, %2040 ], [ null, %2038 ]
  br i1 %2033, label %2046, label %2044, !prof !581

2044:                                             ; preds = %2042
  %2045 = load ptr, ptr %2010, align 8, !tbaa !91
  br label %2046

2046:                                             ; preds = %2042, %2044
  %2047 = phi ptr [ %2045, %2044 ], [ null, %2042 ]
  br i1 %2039, label %2051, label %2048, !prof !580

2048:                                             ; preds = %2046
  %2049 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %2050 = load ptr, ptr %2049, align 8, !tbaa !91
  br label %2051

2051:                                             ; preds = %2046, %2048
  %2052 = phi ptr [ %2050, %2048 ], [ null, %2046 ]
  br i1 %2033, label %2056, label %2053, !prof !581

2053:                                             ; preds = %2051
  %2054 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %2055 = load ptr, ptr %2054, align 8, !tbaa !91
  br label %2056

2056:                                             ; preds = %2051, %2053
  %2057 = phi ptr [ %2055, %2053 ], [ null, %2051 ]
  br i1 %2039, label %2061, label %2058, !prof !580

2058:                                             ; preds = %2056
  %2059 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1804
  %2060 = load i32, ptr %2059, align 4, !tbaa !106
  br label %2061

2061:                                             ; preds = %2056, %2058
  %2062 = phi i32 [ %2060, %2058 ], [ 0, %2056 ]
  br i1 %2033, label %2066, label %2063, !prof !581

2063:                                             ; preds = %2061
  %2064 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1804
  %2065 = load i32, ptr %2064, align 4, !tbaa !106
  br label %2066

2066:                                             ; preds = %2061, %2063
  %2067 = phi i32 [ %2065, %2063 ], [ 0, %2061 ]
  br i1 %106, label %2075, label %2068, !prof !583

2068:                                             ; preds = %2066
  %2069 = zext nneg i32 %105 to i64
  %2070 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2069, i32 3
  %2071 = load ptr, ptr %2070, align 8, !tbaa !127
  %2072 = getelementptr inbounds %struct.insn_operand_data, ptr %2071, i64 %1804, i32 3
  %2073 = load i8, ptr %2072, align 2, !tbaa !573
  %2074 = sext i8 %2073 to i32
  br label %2075

2075:                                             ; preds = %2066, %2068
  %2076 = phi i32 [ %2074, %2068 ], [ 0, %2066 ]
  %2077 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %1804
  %2078 = load i32, ptr %2077, align 4, !tbaa !106
  %2079 = trunc i64 %1804 to i32
  %2080 = call i32 @push_reload(ptr noundef %2043, ptr noundef %2047, ptr noundef %2052, ptr noundef %2057, i32 noundef %2024, i32 noundef %2062, i32 noundef %2067, i32 noundef %2076, i32 noundef 1, i32 noundef %2079, i32 noundef %2078)
  %2081 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1804
  store i32 %2080, ptr %2081, align 4, !tbaa !106
  br label %2172

2082:                                             ; preds = %2011, %2026, %2018, %2034
  br i1 %1796, label %2172, label %2083, !prof !584

2083:                                             ; preds = %2082
  switch i16 %2015, label %2172 [
    i16 43, label %2094
    i16 37, label %2084
  ], !prof !585

2084:                                             ; preds = %2083
  %2085 = getelementptr inbounds %struct.rtx_def, ptr %2013, i64 0, i32 1
  %2086 = load i32, ptr %2085, align 8, !tbaa !102
  %2087 = icmp ugt i32 %2086, 52
  br i1 %2087, label %2088, label %2172, !prof !586

2088:                                             ; preds = %2084
  %2089 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %2090 = zext i32 %2086 to i64
  %2091 = getelementptr inbounds i16, ptr %2089, i64 %2090
  %2092 = load i16, ptr %2091, align 2, !tbaa !142
  %2093 = icmp slt i16 %2092, 0
  br i1 %2093, label %2094, label %2172

2094:                                             ; preds = %2088, %2083
  %2095 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %2096 = load ptr, ptr %2095, align 8, !tbaa !91
  br label %2097

2097:                                             ; preds = %2102, %2094
  %2098 = phi ptr [ %2096, %2094 ], [ %2103, %2102 ]
  %2099 = load ptr, ptr %2098, align 8, !tbaa !102
  %2100 = load i32, ptr %2099, align 8
  %2101 = trunc i32 %2100 to i16
  switch i16 %2101, label %2172 [
    i16 39, label %2102
    i16 37, label %2104
  ]

2102:                                             ; preds = %2097
  %2103 = getelementptr inbounds %struct.rtx_def, ptr %2099, i64 0, i32 1
  br label %2097, !llvm.loop !587

2104:                                             ; preds = %2097
  %2105 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1804
  %2106 = load i32, ptr %2105, align 4, !tbaa !106
  %2107 = icmp eq i32 %2106, 2
  br i1 %2107, label %2115, label %2108

2108:                                             ; preds = %2104
  %2109 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %2099) #24
  %2110 = call ptr @emit_insn_before(ptr noundef %2109, ptr noundef nonnull %0) #24
  %2111 = load i32, ptr %2110, align 8
  %2112 = and i32 %2111, -16711681
  %2113 = or disjoint i32 %2112, 917504
  store i32 %2113, ptr %2110, align 8
  %2114 = icmp eq i32 %2106, 0
  br i1 %2114, label %2172, label %2115

2115:                                             ; preds = %2104, %2108
  %2116 = call ptr @gen_clobber(ptr noundef nonnull %2099) #24
  %2117 = call ptr @emit_insn_after(ptr noundef %2116, ptr noundef nonnull %0) #24
  br label %2172

2118:                                             ; preds = %2002, %1998, %1994
  %2119 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %1804
  %2120 = load i32, ptr %2119, align 4, !tbaa !106
  %2121 = icmp sgt i32 %2120, -1
  br i1 %2121, label %2122, label %2172, !prof !588

2122:                                             ; preds = %2118
  %2123 = zext nneg i32 %2120 to i64
  %2124 = getelementptr inbounds [30 x i8], ptr %25, i64 0, i64 %2123
  %2125 = load i8, ptr %2124, align 1, !tbaa !102
  %2126 = icmp eq i8 %2125, 0
  br i1 %2126, label %2172, label %2127, !prof !589

2127:                                             ; preds = %2122
  %2128 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %1804
  %2129 = load i32, ptr %2128, align 4, !tbaa !106
  %2130 = icmp eq i32 %2129, 0
  br i1 %2130, label %2131, label %2172, !prof !590

2131:                                             ; preds = %2127
  %2132 = getelementptr inbounds [30 x i32], ptr %13, i64 0, i64 %2123
  %2133 = load i32, ptr %2132, align 4, !tbaa !106
  %2134 = icmp ne i32 %2133, 2
  %2135 = or i1 %54, %2134
  %2136 = load i32, ptr @optimize, align 4
  %2137 = icmp eq i32 %2136, 0
  %2138 = select i1 %2135, i1 true, i1 %2137, !prof !589
  br i1 %2138, label %2172, label %2139, !prof !589

2139:                                             ; preds = %2131
  %2140 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %1804
  br label %2141

2141:                                             ; preds = %2146, %2139
  %2142 = phi ptr [ %2140, %2139 ], [ %2147, %2146 ]
  %2143 = load ptr, ptr %2142, align 8, !tbaa !102
  %2144 = load i32, ptr %2143, align 8
  %2145 = trunc i32 %2144 to i16
  switch i16 %2145, label %2172 [
    i16 39, label %2146
    i16 43, label %2152
    i16 37, label %2148
  ], !prof !591

2146:                                             ; preds = %2141
  %2147 = getelementptr inbounds %struct.rtx_def, ptr %2143, i64 0, i32 1
  br label %2141, !llvm.loop !592

2148:                                             ; preds = %2141
  %2149 = getelementptr inbounds %struct.rtx_def, ptr %2143, i64 0, i32 1
  %2150 = load i32, ptr %2149, align 8, !tbaa !102
  %2151 = icmp ugt i32 %2150, 52
  br i1 %2151, label %2152, label %2172, !prof !589

2152:                                             ; preds = %2141, %2148
  %2153 = zext nneg i32 %2120 to i64
  %2154 = getelementptr inbounds [30 x i32], ptr %20, i64 0, i64 %2153
  %2155 = load i32, ptr %2154, align 4, !tbaa !106
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2172, label %2157

2157:                                             ; preds = %2152
  %2158 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %2153
  %2159 = load ptr, ptr %2158, align 8, !tbaa !91
  %2160 = load ptr, ptr %2140, align 8, !tbaa !91
  %2161 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2153
  %2162 = load ptr, ptr %2161, align 8, !tbaa !91
  %2163 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %1804
  %2164 = load ptr, ptr %2163, align 8, !tbaa !91
  %2165 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %2153
  %2166 = load i32, ptr %2165, align 4, !tbaa !106
  %2167 = getelementptr inbounds [30 x i32], ptr %30, i64 0, i64 %1804
  %2168 = load i32, ptr %2167, align 4, !tbaa !106
  %2169 = call i32 @push_reload(ptr noundef %2159, ptr noundef %2160, ptr noundef %2162, ptr noundef %2164, i32 noundef %2155, i32 noundef %2166, i32 noundef %2168, i32 noundef 0, i32 noundef 1, i32 noundef %2120, i32 noundef 9)
  %2170 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2153
  store i32 %2169, ptr %2170, align 4, !tbaa !106
  %2171 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %1804
  store i32 %2169, ptr %2171, align 4, !tbaa !106
  br label %2172

2172:                                             ; preds = %2141, %2097, %1882, %1865, %2152, %2148, %1844, %2157, %2075, %2115, %2108, %2088, %2084, %2082, %2083, %1945, %1972, %1930, %1808, %2118, %2122, %2127, %2131
  %2173 = add nuw nsw i64 %1804, 1
  %2174 = icmp eq i64 %2173, %1797
  br i1 %2174, label %1798, label %1803, !prof !438, !llvm.loop !593

2175:                                             ; preds = %1800, %2206
  %2176 = phi i64 [ 0, %1800 ], [ %2208, %2206 ]
  %2177 = phi i32 [ %423, %1800 ], [ %2207, %2206 ]
  %2178 = getelementptr inbounds [30 x ptr], ptr %29, i64 0, i64 %2176
  %2179 = load ptr, ptr %2178, align 8, !tbaa !91
  %2180 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2176
  %2181 = load ptr, ptr %2180, align 8, !tbaa !91
  br i1 %1801, label %2201, label %2182, !prof !594

2182:                                             ; preds = %2175
  store ptr %2179, ptr %2181, align 8, !tbaa !91
  %2183 = load i32, ptr %2179, align 8
  %2184 = and i32 %2183, 65535
  %2185 = icmp eq i32 %2184, 44
  br i1 %2185, label %2186, label %2206, !prof !595

2186:                                             ; preds = %2182
  %2187 = getelementptr inbounds %struct.rtx_def, ptr %2179, i64 0, i32 1
  %2188 = load ptr, ptr %2187, align 8, !tbaa !102
  %2189 = call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2188) #24
  %2190 = icmp eq ptr %2189, null
  br i1 %2190, label %2191, label %2206

2191:                                             ; preds = %2186
  %2192 = load i32, ptr %0, align 8
  %2193 = and i32 %2192, 65535
  %2194 = icmp eq i32 %2193, 9
  br i1 %2194, label %2195, label %2199

2195:                                             ; preds = %2191
  %2196 = load ptr, ptr %2187, align 8, !tbaa !102
  %2197 = call zeroext i8 @label_is_jump_target_p(ptr noundef %2196, ptr noundef nonnull %0) #24
  %2198 = icmp eq i8 %2197, 0
  br i1 %2198, label %2199, label %2206

2199:                                             ; preds = %2195, %2191
  %2200 = load ptr, ptr %2187, align 8, !tbaa !102
  call void @add_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %2200) #24
  br label %2206

2201:                                             ; preds = %2175
  %2202 = load ptr, ptr %2181, align 8, !tbaa !91
  %2203 = icmp ne ptr %2179, %2202
  %2204 = zext i1 %2203 to i32
  %2205 = or i32 %2177, %2204
  br label %2206

2206:                                             ; preds = %2182, %2186, %2195, %2199, %2201
  %2207 = phi i32 [ %2205, %2201 ], [ %2177, %2199 ], [ %2177, %2195 ], [ %2177, %2186 ], [ %2177, %2182 ]
  %2208 = add nuw nsw i64 %2176, 1
  %2209 = icmp eq i64 %2208, %1802
  br i1 %2209, label %2210, label %2175, !prof !438, !llvm.loop !596

2210:                                             ; preds = %2206, %1798
  %2211 = phi i32 [ %423, %1798 ], [ %2207, %2206 ]
  %2212 = icmp sgt i32 %105, -1
  %2213 = icmp ne i32 %1, 0
  %2214 = and i1 %2213, %2212
  br i1 %2214, label %2215, label %2269, !prof !597

2215:                                             ; preds = %2210
  %2216 = zext nneg i32 %105 to i64
  %2217 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2216, i32 5
  %2218 = load i8, ptr %2217, align 1, !tbaa !598
  %2219 = icmp sgt i8 %2218, 0
  br i1 %2219, label %2220, label %2269, !prof !177

2220:                                             ; preds = %2215
  %2221 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %2222 = load i32, ptr @replace_reloads, align 4
  %2223 = zext nneg i8 %2218 to i64
  br label %2227

2224:                                             ; preds = %2264, %2227
  %2225 = phi i32 [ %2229, %2227 ], [ %2265, %2264 ]
  %2226 = icmp sgt i64 %2228, 1
  br i1 %2226, label %2227, label %2269, !prof !177, !llvm.loop !599

2227:                                             ; preds = %2220, %2224
  %2228 = phi i64 [ %2223, %2220 ], [ %2230, %2224 ]
  %2229 = phi i32 [ %2221, %2220 ], [ %2225, %2224 ]
  %2230 = add nsw i64 %2228, -1
  %2231 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 6, i64 %2230
  %2232 = load i8, ptr %2231, align 1, !tbaa !102
  %2233 = sext i8 %2232 to i64
  %2234 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %2233
  %2235 = load ptr, ptr %2234, align 8, !tbaa !91
  %2236 = load ptr, ptr %2235, align 8, !tbaa !91
  %2237 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %2230
  %2238 = load ptr, ptr %2237, align 8, !tbaa !91
  store ptr %2236, ptr %2238, align 8, !tbaa !91
  %2239 = load ptr, ptr %2237, align 8, !tbaa !91
  %2240 = load ptr, ptr %2234, align 8, !tbaa !91
  %2241 = icmp sgt i32 %2229, 0
  br i1 %2241, label %2242, label %2224

2242:                                             ; preds = %2227
  %2243 = icmp eq i32 %2222, 0
  %2244 = zext nneg i32 %2229 to i64
  br label %2245

2245:                                             ; preds = %2242, %2264
  %2246 = phi i64 [ 0, %2242 ], [ %2267, %2264 ]
  %2247 = phi i32 [ %2229, %2242 ], [ %2265, %2264 ]
  %2248 = phi i32 [ %2229, %2242 ], [ %2266, %2264 ]
  %2249 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2246
  %2250 = load ptr, ptr %2249, align 8, !tbaa !207
  %2251 = icmp ne ptr %2250, %2240
  %2252 = select i1 %2251, i1 true, i1 %2243
  br i1 %2252, label %2264, label %2253

2253:                                             ; preds = %2245
  %2254 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2246, i32 3
  %2255 = load i32, ptr %2254, align 4, !tbaa !208
  %2256 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2246, i32 2
  %2257 = load i32, ptr %2256, align 8, !tbaa !204
  %2258 = add nsw i32 %2248, 1
  store i32 %2258, ptr @n_replacements, align 4, !tbaa !106
  %2259 = sext i32 %2248 to i64
  %2260 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2259
  %2261 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2259, i32 2
  store i32 %2257, ptr %2261, align 8, !tbaa !204
  store ptr %2239, ptr %2260, align 8, !tbaa !207
  %2262 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2259, i32 1
  store ptr null, ptr %2262, align 8, !tbaa !206
  %2263 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2259, i32 3
  store i32 %2255, ptr %2263, align 4, !tbaa !208
  br label %2264

2264:                                             ; preds = %2253, %2245
  %2265 = phi i32 [ %2258, %2253 ], [ %2247, %2245 ]
  %2266 = phi i32 [ %2258, %2253 ], [ %2248, %2245 ]
  %2267 = add nuw nsw i64 %2246, 1
  %2268 = icmp eq i64 %2267, %2244
  br i1 %2268, label %2224, label %2245, !llvm.loop !600

2269:                                             ; preds = %2224, %2215, %2210
  %2270 = load ptr, ptr %37, align 8, !tbaa !102
  %2271 = load i32, ptr %2270, align 8
  %2272 = and i32 %2271, 65535
  %2273 = icmp eq i32 %2272, 24
  br i1 %2273, label %2274, label %2281, !prof !601

2274:                                             ; preds = %2269
  %2275 = getelementptr inbounds %struct.rtx_def, ptr %2270, i64 0, i32 1
  %2276 = load ptr, ptr %2275, align 8, !tbaa !102
  %2277 = load i32, ptr %2276, align 8
  %2278 = and i32 %2277, 65535
  %2279 = icmp eq i32 %2278, 30
  br i1 %2279, label %2280, label %2281

2280:                                             ; preds = %2274
  store i32 0, ptr @n_reloads, align 4, !tbaa !106
  br label %2281

2281:                                             ; preds = %2280, %2274, %2269
  br i1 %1771, label %2282, label %2709, !prof !570

2282:                                             ; preds = %2281
  %2283 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2284 = icmp sgt i32 %2283, 0
  br i1 %2284, label %2285, label %2300, !prof !602

2285:                                             ; preds = %2282
  %2286 = zext nneg i32 %2283 to i64
  br label %2287

2287:                                             ; preds = %2285, %2296
  %2288 = phi i64 [ 0, %2285 ], [ %2298, %2296 ]
  %2289 = phi i32 [ -1, %2285 ], [ %2297, %2296 ]
  %2290 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2288, i32 1
  %2291 = load ptr, ptr %2290, align 8, !tbaa !184
  %2292 = icmp eq ptr %2291, null
  br i1 %2292, label %2296, label %2293, !prof !168

2293:                                             ; preds = %2287
  %2294 = icmp sgt i32 %2289, -1
  %2295 = trunc i64 %2288 to i32
  br i1 %2294, label %2709, label %2296, !prof !169

2296:                                             ; preds = %2293, %2287
  %2297 = phi i32 [ %2289, %2287 ], [ %2295, %2293 ]
  %2298 = add nuw nsw i64 %2288, 1
  %2299 = icmp eq i64 %2298, %2286
  br i1 %2299, label %2300, label %2287, !prof !173, !llvm.loop !603

2300:                                             ; preds = %2296, %2282
  %2301 = phi i32 [ -1, %2282 ], [ %2297, %2296 ]
  %2302 = icmp slt i32 %2301, 0
  br i1 %2302, label %2709, label %2303, !prof !604

2303:                                             ; preds = %2300
  %2304 = zext nneg i32 %2301 to i64
  %2305 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 18
  %2306 = load i8, ptr %2305, align 8
  %2307 = and i8 %2306, 1
  %2308 = icmp eq i8 %2307, 0
  br i1 %2308, label %2309, label %2709, !prof !605

2309:                                             ; preds = %2303
  %2310 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304
  %2311 = load ptr, ptr %2310, align 8, !tbaa !183
  %2312 = icmp eq ptr %2311, null
  br i1 %2312, label %2313, label %2709, !prof !200

2313:                                             ; preds = %2309
  %2314 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 1
  %2315 = load ptr, ptr %2314, align 8, !tbaa !184
  %2316 = load i32, ptr @n_earlyclobbers, align 4, !tbaa !106
  %2317 = icmp sgt i32 %2316, 0
  br i1 %2317, label %2326, label %2322, !prof !177

2318:                                             ; preds = %2326
  %2319 = zext nneg i32 %2316 to i64
  %2320 = add nuw nsw i64 %2327, 1
  %2321 = icmp eq i64 %2320, %2319
  br i1 %2321, label %2322, label %2326, !prof !178, !llvm.loop !179

2322:                                             ; preds = %2318, %2313
  %2323 = icmp sgt i32 %2283, 0
  br i1 %2323, label %2324, label %2331, !prof !606

2324:                                             ; preds = %2322
  %2325 = zext nneg i32 %2283 to i64
  br label %2337

2326:                                             ; preds = %2313, %2318
  %2327 = phi i64 [ %2320, %2318 ], [ 0, %2313 ]
  %2328 = getelementptr inbounds [30 x ptr], ptr @reload_earlyclobbers, i64 0, i64 %2327
  %2329 = load ptr, ptr %2328, align 8, !tbaa !91
  %2330 = icmp eq ptr %2329, %2315
  br i1 %2330, label %2709, label %2318

2331:                                             ; preds = %2349, %2322
  %2332 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2333 = icmp sgt i32 %2332, 0
  br i1 %2333, label %2334, label %2560, !prof !606

2334:                                             ; preds = %2331
  %2335 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 2
  %2336 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 4
  br label %2352

2337:                                             ; preds = %2324, %2349
  %2338 = phi i64 [ 0, %2324 ], [ %2350, %2349 ]
  %2339 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2338, i32 17
  %2340 = load i32, ptr %2339, align 4, !tbaa !185
  %2341 = add i32 %2340, -5
  %2342 = icmp ult i32 %2341, 2
  br i1 %2342, label %2343, label %2349, !prof !557

2343:                                             ; preds = %2337
  %2344 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 12
  %2345 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2338, i32 12
  %2346 = load i32, ptr %2345, align 8, !tbaa !186
  %2347 = load i32, ptr %2344, align 8, !tbaa !186
  %2348 = icmp eq i32 %2346, %2347
  br i1 %2348, label %2709, label %2349

2349:                                             ; preds = %2343, %2337
  %2350 = add nuw nsw i64 %2338, 1
  %2351 = icmp eq i64 %2350, %2325
  br i1 %2351, label %2331, label %2337, !prof !606, !llvm.loop !607

2352:                                             ; preds = %2334, %2555
  %2353 = phi i64 [ 0, %2334 ], [ %2556, %2555 ]
  %2354 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353
  %2355 = load ptr, ptr %2354, align 8, !tbaa !183
  %2356 = icmp eq ptr %2355, null
  br i1 %2356, label %2555, label %2357, !prof !200

2357:                                             ; preds = %2352
  %2358 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 18
  %2359 = load i8, ptr %2358, align 8
  %2360 = and i8 %2359, 3
  %2361 = icmp eq i8 %2360, 0
  br i1 %2361, label %2362, label %2555

2362:                                             ; preds = %2357
  %2363 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 17
  %2364 = load i32, ptr %2363, align 4, !tbaa !185
  switch i32 %2364, label %2365 [
    i32 5, label %2555
    i32 6, label %2555
    i32 9, label %2555
  ]

2365:                                             ; preds = %2362
  %2366 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 2
  %2367 = load i32, ptr %2366, align 8, !tbaa !180
  %2368 = call i32 @reg_classes_intersect_p(i32 noundef %2367, i32 noundef 13) #24
  %2369 = icmp eq i32 %2368, 0
  %2370 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 3
  %2371 = load i32, ptr %2370, align 4, !tbaa !190
  br i1 %2369, label %2372, label %2379

2372:                                             ; preds = %2365
  %2373 = zext i32 %2371 to i64
  %2374 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2373
  %2375 = load i8, ptr %2374, align 1, !tbaa !102
  %2376 = and i8 %2375, -2
  %2377 = icmp eq i8 %2376, 10
  %2378 = select i1 %2377, i32 2, i32 1
  br label %2390

2379:                                             ; preds = %2365
  %2380 = icmp eq i32 %2371, 40
  br i1 %2380, label %2386, label %2381

2381:                                             ; preds = %2379
  %2382 = zext i32 %2371 to i64
  %2383 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2382
  %2384 = load i8, ptr %2383, align 1, !tbaa !102
  %2385 = zext i8 %2384 to i32
  br label %2386

2386:                                             ; preds = %2381, %2379
  %2387 = phi i32 [ %2385, %2381 ], [ 12, %2379 ]
  %2388 = add nuw nsw i32 %2387, 3
  %2389 = lshr i32 %2388, 2
  br label %2390

2390:                                             ; preds = %2386, %2372
  %2391 = phi i32 [ %2378, %2372 ], [ %2389, %2386 ]
  %2392 = load i32, ptr %2335, align 8, !tbaa !180
  %2393 = call i32 @reg_classes_intersect_p(i32 noundef %2392, i32 noundef 13) #24
  %2394 = icmp eq i32 %2393, 0
  br i1 %2394, label %2395, label %2404

2395:                                             ; preds = %2390
  %2396 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 4
  %2397 = load i32, ptr %2396, align 8, !tbaa !191
  %2398 = zext i32 %2397 to i64
  %2399 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2398
  %2400 = load i8, ptr %2399, align 1, !tbaa !102
  %2401 = and i8 %2400, -2
  %2402 = icmp eq i8 %2401, 10
  %2403 = select i1 %2402, i32 2, i32 1
  br label %2417

2404:                                             ; preds = %2390
  %2405 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 4
  %2406 = load i32, ptr %2405, align 8, !tbaa !191
  %2407 = icmp eq i32 %2406, 40
  br i1 %2407, label %2413, label %2408

2408:                                             ; preds = %2404
  %2409 = zext i32 %2406 to i64
  %2410 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2409
  %2411 = load i8, ptr %2410, align 1, !tbaa !102
  %2412 = zext i8 %2411 to i32
  br label %2413

2413:                                             ; preds = %2408, %2404
  %2414 = phi i32 [ %2412, %2408 ], [ 12, %2404 ]
  %2415 = add nuw nsw i32 %2414, 3
  %2416 = lshr i32 %2415, 2
  br label %2417

2417:                                             ; preds = %2413, %2395
  %2418 = phi i32 [ %2403, %2395 ], [ %2416, %2413 ]
  %2419 = icmp eq i32 %2391, %2418
  br i1 %2419, label %2420, label %2555

2420:                                             ; preds = %2417
  %2421 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 7
  %2422 = load i32, ptr %2421, align 4, !tbaa !192
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2424, label %2555

2424:                                             ; preds = %2420
  %2425 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 11
  %2426 = load ptr, ptr %2425, align 8, !tbaa !182
  %2427 = icmp eq ptr %2426, null
  br i1 %2427, label %2428, label %2555

2428:                                             ; preds = %2424
  %2429 = load i32, ptr %2336, align 8, !tbaa !191
  %2430 = sext i32 %2429 to i64
  %2431 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 12
  %2432 = load i32, ptr %2431, align 8, !tbaa !186
  %2433 = sext i32 %2432 to i64
  %2434 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %2430, i64 %2433
  %2435 = load ptr, ptr %2434, align 8, !tbaa !91
  %2436 = icmp eq ptr %2435, null
  br i1 %2436, label %2447, label %2437

2437:                                             ; preds = %2428
  %2438 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 12
  %2439 = load i32, ptr %2438, align 8, !tbaa !186
  %2440 = sext i32 %2439 to i64
  %2441 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %2430, i64 %2440
  %2442 = load ptr, ptr %2441, align 8, !tbaa !91
  %2443 = icmp eq ptr %2442, null
  br i1 %2443, label %2447, label %2444

2444:                                             ; preds = %2437
  %2445 = call i32 @rtx_equal_p(ptr noundef nonnull %2435, ptr noundef nonnull %2442) #24
  %2446 = icmp eq i32 %2445, 0
  br i1 %2446, label %2555, label %2447

2447:                                             ; preds = %2444, %2437, %2428
  %2448 = load i32, ptr %2366, align 8, !tbaa !180
  %2449 = load i32, ptr %2335, align 8, !tbaa !180
  %2450 = icmp eq i32 %2448, %2449
  br i1 %2450, label %2451, label %2555

2451:                                             ; preds = %2447
  %2452 = load ptr, ptr %2354, align 8, !tbaa !183
  %2453 = load ptr, ptr %2314, align 8, !tbaa !184
  %2454 = icmp eq ptr %2452, %2453
  br i1 %2454, label %2492, label %2455

2455:                                             ; preds = %2451
  %2456 = icmp eq ptr %2452, null
  br i1 %2456, label %2478, label %2457

2457:                                             ; preds = %2455
  %2458 = load i32, ptr %2452, align 8
  %2459 = and i32 %2458, 65535
  %2460 = icmp eq i32 %2459, 37
  br i1 %2460, label %2461, label %2471

2461:                                             ; preds = %2457
  %2462 = load i32, ptr %2453, align 8
  %2463 = and i32 %2462, 65535
  %2464 = icmp eq i32 %2463, 37
  br i1 %2464, label %2465, label %2478

2465:                                             ; preds = %2461
  %2466 = getelementptr inbounds %struct.rtx_def, ptr %2452, i64 0, i32 1
  %2467 = load i32, ptr %2466, align 8, !tbaa !102
  %2468 = getelementptr inbounds %struct.rtx_def, ptr %2453, i64 0, i32 1
  %2469 = load i32, ptr %2468, align 8, !tbaa !102
  %2470 = icmp eq i32 %2467, %2469
  br i1 %2470, label %2492, label %2478

2471:                                             ; preds = %2457
  %2472 = call i32 @rtx_equal_p(ptr noundef nonnull %2452, ptr noundef %2453) #24
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2478, label %2474

2474:                                             ; preds = %2471
  %2475 = load ptr, ptr %2354, align 8, !tbaa !183
  %2476 = call i32 @side_effects_p(ptr noundef %2475) #24
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2492, label %2478

2478:                                             ; preds = %2465, %2474, %2471, %2461, %2455
  %2479 = load ptr, ptr %2314, align 8, !tbaa !184
  %2480 = load ptr, ptr %2354, align 8, !tbaa !183
  %2481 = call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef %2479, ptr noundef %2480)
  %2482 = icmp eq i32 %2481, 0
  br i1 %2482, label %2483, label %2555

2483:                                             ; preds = %2478
  %2484 = load ptr, ptr %2354, align 8, !tbaa !183
  %2485 = load i32, ptr %2484, align 8
  %2486 = and i32 %2485, 65535
  %2487 = icmp eq i32 %2486, 37
  br i1 %2487, label %2488, label %2492

2488:                                             ; preds = %2483
  %2489 = load ptr, ptr %2314, align 8, !tbaa !184
  %2490 = call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %2484, ptr noundef %2489)
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2492, label %2555

2492:                                             ; preds = %2488, %2474, %2483, %2465, %2451
  %2493 = load ptr, ptr %2354, align 8, !tbaa !183
  %2494 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 3
  %2495 = load i32, ptr %2494, align 4, !tbaa !190
  %2496 = load i32, ptr %2363, align 4, !tbaa !185
  %2497 = icmp ne i32 %2496, 0
  %2498 = zext i1 %2497 to i32
  %2499 = call fastcc i32 @reload_inner_reg_of_subreg(ptr noundef %2493, i32 noundef %2495, i32 noundef %2498), !range !201
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2501, label %2555

2501:                                             ; preds = %2492
  %2502 = load i32, ptr %2363, align 4, !tbaa !185
  %2503 = icmp ult i32 %2502, 2
  br i1 %2503, label %2504, label %2555

2504:                                             ; preds = %2501
  %2505 = trunc i64 %2353 to i32
  %2506 = load ptr, ptr %2314, align 8, !tbaa !184
  %2507 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 1
  store ptr %2506, ptr %2507, align 8, !tbaa !184
  %2508 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 9
  %2509 = load ptr, ptr %2508, align 8, !tbaa !194
  %2510 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 9
  store ptr %2509, ptr %2510, align 8, !tbaa !194
  %2511 = load i32, ptr %2336, align 8, !tbaa !191
  %2512 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 4
  store i32 %2511, ptr %2512, align 8, !tbaa !191
  store ptr null, ptr %2314, align 8, !tbaa !184
  store i32 9, ptr %2363, align 4, !tbaa !185
  %2513 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 14
  %2514 = load i32, ptr %2513, align 8, !tbaa !196
  %2515 = icmp eq i32 %2514, -1
  br i1 %2515, label %2521, label %2516

2516:                                             ; preds = %2504
  %2517 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 14
  store i32 %2514, ptr %2517, align 8, !tbaa !196
  %2518 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 16
  %2519 = load i32, ptr %2518, align 8, !tbaa !198
  %2520 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2353, i32 16
  store i32 %2519, ptr %2520, align 8, !tbaa !198
  br label %2521

2521:                                             ; preds = %2516, %2504
  %2522 = load i32, ptr %2336, align 8, !tbaa !191
  %2523 = sext i32 %2522 to i64
  %2524 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 12
  %2525 = load i32, ptr %2524, align 8, !tbaa !186
  %2526 = sext i32 %2525 to i64
  %2527 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %2523, i64 %2526
  %2528 = load ptr, ptr %2527, align 8, !tbaa !91
  %2529 = icmp eq ptr %2528, null
  br i1 %2529, label %2534, label %2530

2530:                                             ; preds = %2521
  %2531 = load i32, ptr %2431, align 8, !tbaa !186
  %2532 = sext i32 %2531 to i64
  %2533 = getelementptr inbounds [87 x [30 x ptr]], ptr @secondary_memlocs_elim, i64 0, i64 %2523, i64 %2532
  store ptr %2528, ptr %2533, align 8, !tbaa !91
  br label %2534

2534:                                             ; preds = %2530, %2521
  %2535 = load i32, ptr %2335, align 8, !tbaa !180
  %2536 = load i32, ptr %2366, align 8, !tbaa !180
  %2537 = call i32 @reg_class_subset_p(i32 noundef %2535, i32 noundef %2536) #24
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2541, label %2539

2539:                                             ; preds = %2534
  %2540 = load i32, ptr %2335, align 8, !tbaa !180
  store i32 %2540, ptr %2366, align 8, !tbaa !180
  br label %2541

2541:                                             ; preds = %2539, %2534
  %2542 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %2543 = icmp sgt i32 %2542, 0
  br i1 %2543, label %2544, label %2709

2544:                                             ; preds = %2541
  %2545 = zext nneg i32 %2542 to i64
  br label %2546

2546:                                             ; preds = %2544, %2552
  %2547 = phi i64 [ 0, %2544 ], [ %2553, %2552 ]
  %2548 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2547, i32 2
  %2549 = load i32, ptr %2548, align 8, !tbaa !204
  %2550 = icmp eq i32 %2549, %2301
  br i1 %2550, label %2551, label %2552

2551:                                             ; preds = %2546
  store i32 %2505, ptr %2548, align 8, !tbaa !204
  br label %2552

2552:                                             ; preds = %2551, %2546
  %2553 = add nuw nsw i64 %2547, 1
  %2554 = icmp eq i64 %2553, %2545
  br i1 %2554, label %2709, label %2546, !llvm.loop !608

2555:                                             ; preds = %2444, %2362, %2362, %2501, %2492, %2488, %2478, %2447, %2424, %2420, %2417, %2362, %2357, %2352
  %2556 = add nuw nsw i64 %2353, 1
  %2557 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2558 = sext i32 %2557 to i64
  %2559 = icmp slt i64 %2556, %2558
  br i1 %2559, label %2352, label %2560, !prof !609, !llvm.loop !610

2560:                                             ; preds = %2555, %2331
  %2561 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %2562 = getelementptr inbounds %struct.rtx_def, ptr %2561, i64 1, i32 1
  %2563 = load i32, ptr %2562, align 8, !tbaa !102
  %2564 = icmp eq i32 %2563, -1
  br i1 %2564, label %2709, label %2565, !prof !557

2565:                                             ; preds = %2560
  %2566 = sext i32 %2563 to i64
  %2567 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2566, i32 4
  %2568 = load i8, ptr %2567, align 8, !tbaa !125
  %2569 = icmp sgt i8 %2568, 1
  br i1 %2569, label %2570, label %2582, !prof !606

2570:                                             ; preds = %2565
  %2571 = zext nneg i8 %2568 to i64
  %2572 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %2566, i32 3
  %2573 = load ptr, ptr %2572, align 8, !tbaa !127
  br label %2574

2574:                                             ; preds = %2570, %2579
  %2575 = phi i64 [ 1, %2570 ], [ %2580, %2579 ]
  %2576 = getelementptr inbounds %struct.insn_operand_data, ptr %2573, i64 %2575, i32 1
  %2577 = load ptr, ptr %2576, align 8, !tbaa !128
  %2578 = load i8, ptr %2577, align 1, !tbaa !102
  switch i8 %2578, label %2579 [
    i8 61, label %2709
    i8 43, label %2709
  ], !prof !611

2579:                                             ; preds = %2574
  %2580 = add nuw nsw i64 %2575, 1
  %2581 = icmp eq i64 %2580, %2571
  br i1 %2581, label %2582, label %2574, !prof !606, !llvm.loop !612

2582:                                             ; preds = %2579, %2565
  %2583 = getelementptr inbounds %struct.rtx_def, ptr %2561, i64 1, i32 1, i32 0, i32 0, i64 1
  %2584 = load ptr, ptr %2583, align 8, !tbaa !102
  %2585 = icmp eq ptr %2584, null
  br i1 %2585, label %2709, label %2586, !prof !609

2586:                                             ; preds = %2582
  %2587 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 4
  br label %2588

2588:                                             ; preds = %2586, %2705
  %2589 = phi ptr [ %2584, %2586 ], [ %2707, %2705 ]
  %2590 = load i32, ptr %2589, align 8
  %2591 = and i32 %2590, 16711680
  %2592 = icmp eq i32 %2591, 65536
  br i1 %2592, label %2593, label %2705, !prof !200

2593:                                             ; preds = %2588
  %2594 = getelementptr inbounds %struct.rtx_def, ptr %2589, i64 0, i32 1
  %2595 = load ptr, ptr %2594, align 8, !tbaa !102
  %2596 = load i32, ptr %2595, align 8
  %2597 = and i32 %2596, 65535
  %2598 = icmp eq i32 %2597, 37
  br i1 %2598, label %2599, label %2705, !prof !200

2599:                                             ; preds = %2593
  %2600 = load ptr, ptr %2314, align 8, !tbaa !184
  %2601 = call i32 @reg_overlap_mentioned_for_reload_p(ptr noundef nonnull %2595, ptr noundef %2600)
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %2603, label %2705, !prof !200

2603:                                             ; preds = %2599
  %2604 = load ptr, ptr %2594, align 8, !tbaa !102
  %2605 = getelementptr inbounds %struct.rtx_def, ptr %2604, i64 0, i32 1
  %2606 = load i32, ptr %2605, align 8, !tbaa !102
  %2607 = icmp slt i32 %2606, 53
  br i1 %2607, label %2608, label %2705, !prof !200

2608:                                             ; preds = %2603
  %2609 = load i32, ptr %2587, align 8, !tbaa !191
  %2610 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %2606, i32 noundef %2609) #24
  %2611 = icmp eq i8 %2610, 0
  br i1 %2611, label %2705, label %2612, !prof !200

2612:                                             ; preds = %2608
  %2613 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 2
  %2614 = load i32, ptr %2613, align 8, !tbaa !180
  %2615 = sext i32 %2614 to i64
  %2616 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2615
  %2617 = load i64, ptr %2616, align 8, !tbaa !174
  %2618 = zext nneg i32 %2606 to i64
  %2619 = shl nuw i64 1, %2618
  %2620 = and i64 %2617, %2619
  %2621 = icmp eq i64 %2620, 0
  br i1 %2621, label %2705, label %2622

2622:                                             ; preds = %2612
  %2623 = sext i32 %2606 to i64
  %2624 = load i32, ptr %2587, align 8, !tbaa !191
  %2625 = zext i32 %2624 to i64
  %2626 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2623, i64 %2625
  %2627 = load i8, ptr %2626, align 1, !tbaa !102
  %2628 = load ptr, ptr %2594, align 8, !tbaa !102
  %2629 = load i32, ptr %2628, align 8
  %2630 = lshr i32 %2629, 16
  %2631 = and i32 %2630, 255
  %2632 = zext nneg i32 %2631 to i64
  %2633 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2623, i64 %2632
  %2634 = load i8, ptr %2633, align 1, !tbaa !102
  %2635 = icmp ugt i8 %2627, %2634
  br i1 %2635, label %2705, label %2636

2636:                                             ; preds = %2622
  %2637 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 14
  %2638 = load i32, ptr %2637, align 8, !tbaa !196
  %2639 = icmp eq i32 %2638, -1
  br i1 %2639, label %2662, label %2640

2640:                                             ; preds = %2636
  %2641 = sext i32 %2638 to i64
  %2642 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2641, i32 2
  %2643 = load i32, ptr %2642, align 8, !tbaa !180
  %2644 = sext i32 %2643 to i64
  %2645 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2644
  %2646 = load i64, ptr %2645, align 8, !tbaa !174
  %2647 = and i64 %2646, %2619
  %2648 = icmp eq i64 %2647, 0
  br i1 %2648, label %2649, label %2705

2649:                                             ; preds = %2640
  %2650 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2641, i32 14
  %2651 = load i32, ptr %2650, align 8, !tbaa !196
  %2652 = icmp eq i32 %2651, -1
  br i1 %2652, label %2662, label %2653

2653:                                             ; preds = %2649
  %2654 = sext i32 %2651 to i64
  %2655 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2654, i32 2
  %2656 = load i32, ptr %2655, align 8, !tbaa !180
  %2657 = sext i32 %2656 to i64
  %2658 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %2657
  %2659 = load i64, ptr %2658, align 8, !tbaa !174
  %2660 = and i64 %2659, %2619
  %2661 = icmp eq i64 %2660, 0
  br i1 %2661, label %2662, label %2705

2662:                                             ; preds = %2653, %2649, %2636
  %2663 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %2623
  %2664 = load i8, ptr %2663, align 1, !tbaa !102
  %2665 = icmp eq i8 %2664, 0
  br i1 %2665, label %2666, label %2705

2666:                                             ; preds = %2662
  %2667 = getelementptr inbounds %struct.rtx_def, ptr %2628, i64 0, i32 1, i32 0, i32 0, i64 1
  %2668 = load i32, ptr %2667, align 8, !tbaa !102
  %2669 = icmp ult i32 %2668, 53
  br i1 %2669, label %2701, label %2670

2670:                                             ; preds = %2666
  %2671 = load ptr, ptr @cfun, align 8, !tbaa !91
  %2672 = getelementptr inbounds %struct.function, ptr %2671, i64 0, i32 1
  %2673 = load ptr, ptr %2672, align 8, !tbaa !216
  %2674 = load ptr, ptr %2673, align 8, !tbaa !218
  %2675 = getelementptr inbounds %struct.basic_block_def, ptr %2674, i64 0, i32 9
  %2676 = load i32, ptr %2675, align 8, !tbaa !220
  %2677 = load ptr, ptr @df, align 8, !tbaa !91
  %2678 = getelementptr inbounds %struct.df, ptr %2677, i64 0, i32 1, i64 1
  %2679 = load ptr, ptr %2678, align 8, !tbaa !91
  %2680 = getelementptr inbounds %struct.dataflow, ptr %2679, i64 0, i32 2
  %2681 = load i32, ptr %2680, align 8, !tbaa !222
  %2682 = icmp ugt i32 %2681, %2676
  call void @llvm.assume(i1 %2682)
  %2683 = getelementptr inbounds %struct.dataflow, ptr %2679, i64 0, i32 1
  %2684 = load ptr, ptr %2683, align 8, !tbaa !224
  %2685 = zext i32 %2676 to i64
  %2686 = getelementptr inbounds ptr, ptr %2684, i64 %2685
  %2687 = load ptr, ptr %2686, align 8, !tbaa !91
  %2688 = getelementptr inbounds %struct.df_lr_bb_info, ptr %2687, i64 0, i32 3
  %2689 = load ptr, ptr %2688, align 8, !tbaa !225
  %2690 = call i32 @bitmap_bit_p(ptr noundef %2689, i32 noundef %2668) #24
  %2691 = icmp eq i32 %2690, 0
  br i1 %2691, label %2692, label %2705

2692:                                             ; preds = %2670
  %2693 = load ptr, ptr %2594, align 8, !tbaa !102
  %2694 = load i32, ptr %2693, align 8
  %2695 = lshr i32 %2694, 16
  %2696 = and i32 %2695, 255
  %2697 = zext nneg i32 %2696 to i64
  %2698 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %2623, i64 %2697
  %2699 = load i8, ptr %2698, align 1, !tbaa !102
  %2700 = icmp eq i8 %2699, 1
  br i1 %2700, label %2701, label %2705

2701:                                             ; preds = %2692, %2666
  %2702 = load i32, ptr %2587, align 8, !tbaa !191
  %2703 = call ptr @gen_rtx_REG(i32 noundef %2702, i32 noundef %2606) #24
  %2704 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2304, i32 11
  store ptr %2703, ptr %2704, align 8, !tbaa !182
  br label %2709

2705:                                             ; preds = %2692, %2670, %2662, %2653, %2640, %2622, %2612, %2608, %2603, %2599, %2593, %2588
  %2706 = getelementptr inbounds %struct.rtx_def, ptr %2589, i64 0, i32 1, i32 0, i32 0, i64 1
  %2707 = load ptr, ptr %2706, align 8, !tbaa !102
  %2708 = icmp eq ptr %2707, null
  br i1 %2708, label %2709, label %2588, !prof !606, !llvm.loop !613

2709:                                             ; preds = %2293, %2326, %2343, %2552, %2574, %2574, %2705, %2582, %2541, %2701, %2560, %2309, %2303, %2300, %2281
  %2710 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2711 = icmp sgt i32 %2710, 0
  br i1 %2711, label %2722, label %2717, !prof !602

2712:                                             ; preds = %2803, %2722
  %2713 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2714 = sext i32 %2713 to i64
  %2715 = icmp slt i64 %2725, %2714
  %2716 = add nuw nsw i64 %2724, 1
  br i1 %2715, label %2722, label %2717, !prof !158, !llvm.loop !614

2717:                                             ; preds = %2712, %2709
  %2718 = phi i32 [ %2710, %2709 ], [ %2713, %2712 ]
  %2719 = icmp sgt i32 %2718, 0
  br i1 %2719, label %2720, label %2913, !prof !602

2720:                                             ; preds = %2717
  %2721 = zext nneg i32 %2718 to i64
  br label %2808

2722:                                             ; preds = %2709, %2712
  %2723 = phi i64 [ %2725, %2712 ], [ 0, %2709 ]
  %2724 = phi i64 [ %2716, %2712 ], [ 1, %2709 ]
  %2725 = add nuw nsw i64 %2723, 1
  %2726 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2727 = sext i32 %2726 to i64
  %2728 = icmp slt i64 %2725, %2727
  br i1 %2728, label %2729, label %2712, !prof !177

2729:                                             ; preds = %2722
  %2730 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2723, i32 17
  br label %2731

2731:                                             ; preds = %2729, %2803
  %2732 = phi i64 [ %2724, %2729 ], [ %2804, %2803 ]
  %2733 = load i32, ptr %2730, align 4, !tbaa !185
  %2734 = add i32 %2733, -3
  %2735 = icmp ult i32 %2734, 4
  br i1 %2735, label %2736, label %2803

2736:                                             ; preds = %2731
  %2737 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2732
  %2738 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2732, i32 17
  %2739 = load i32, ptr %2738, align 4, !tbaa !185
  %2740 = add i32 %2739, -3
  %2741 = icmp ult i32 %2740, 4
  br i1 %2741, label %2742, label %2803

2742:                                             ; preds = %2736
  %2743 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2723
  %2744 = load ptr, ptr %2743, align 8, !tbaa !183
  %2745 = load ptr, ptr %2737, align 8, !tbaa !183
  %2746 = call i32 @rtx_equal_p(ptr noundef %2744, ptr noundef %2745) #24
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2803, label %2748

2748:                                             ; preds = %2742
  %2749 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2723, i32 12
  %2750 = load i32, ptr %2749, align 8, !tbaa !186
  %2751 = sext i32 %2750 to i64
  %2752 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2751
  %2753 = load i32, ptr %2752, align 4, !tbaa !106
  %2754 = icmp slt i32 %2753, 0
  br i1 %2754, label %2761, label %2755

2755:                                             ; preds = %2748
  %2756 = zext nneg i32 %2753 to i64
  %2757 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2756, i32 18
  %2758 = load i8, ptr %2757, align 8
  %2759 = and i8 %2758, 1
  %2760 = icmp eq i8 %2759, 0
  br i1 %2760, label %2803, label %2761

2761:                                             ; preds = %2755, %2748
  %2762 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2732, i32 12
  %2763 = load i32, ptr %2762, align 8, !tbaa !186
  %2764 = sext i32 %2763 to i64
  %2765 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2764
  %2766 = load i32, ptr %2765, align 4, !tbaa !106
  %2767 = icmp slt i32 %2766, 0
  br i1 %2767, label %2774, label %2768

2768:                                             ; preds = %2761
  %2769 = zext nneg i32 %2766 to i64
  %2770 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2769, i32 18
  %2771 = load i8, ptr %2770, align 8
  %2772 = and i8 %2771, 1
  %2773 = icmp eq i8 %2772, 0
  br i1 %2773, label %2803, label %2774

2774:                                             ; preds = %2768, %2761
  %2775 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2751
  %2776 = load i32, ptr %2775, align 4, !tbaa !106
  %2777 = icmp eq i32 %2776, %2763
  br i1 %2777, label %2782, label %2778

2778:                                             ; preds = %2774
  %2779 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2764
  %2780 = load i32, ptr %2779, align 4, !tbaa !106
  %2781 = icmp eq i32 %2780, %2750
  br i1 %2781, label %2782, label %2803

2782:                                             ; preds = %2778, %2774
  %2783 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %2784 = icmp sgt i32 %2783, 0
  br i1 %2784, label %2785, label %2798

2785:                                             ; preds = %2782
  %2786 = trunc i64 %2723 to i32
  %2787 = zext nneg i32 %2783 to i64
  br label %2788

2788:                                             ; preds = %2785, %2795
  %2789 = phi i64 [ 0, %2785 ], [ %2796, %2795 ]
  %2790 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %2789, i32 2
  %2791 = load i32, ptr %2790, align 8, !tbaa !204
  %2792 = zext i32 %2791 to i64
  %2793 = icmp eq i64 %2732, %2792
  br i1 %2793, label %2794, label %2795

2794:                                             ; preds = %2788
  store i32 %2786, ptr %2790, align 8, !tbaa !204
  br label %2795

2795:                                             ; preds = %2788, %2794
  %2796 = add nuw nsw i64 %2789, 1
  %2797 = icmp eq i64 %2796, %2787
  br i1 %2797, label %2798, label %2788, !llvm.loop !615

2798:                                             ; preds = %2795, %2782
  %2799 = load i32, ptr %2730, align 4, !tbaa !185
  %2800 = and i32 %2799, -3
  %2801 = icmp eq i32 %2800, 4
  %2802 = select i1 %2801, i32 8, i32 7
  store i32 %2802, ptr %2730, align 4, !tbaa !185
  store ptr null, ptr %2737, align 8, !tbaa !183
  br label %2803

2803:                                             ; preds = %2778, %2736, %2731, %2742, %2755, %2768, %2798
  %2804 = add nuw nsw i64 %2732, 1
  %2805 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2806 = trunc i64 %2804 to i32
  %2807 = icmp sgt i32 %2805, %2806
  br i1 %2807, label %2731, label %2712, !prof !177, !llvm.loop !616

2808:                                             ; preds = %2720, %2910
  %2809 = phi i64 [ 0, %2720 ], [ %2911, %2910 ]
  %2810 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 18
  %2811 = load i8, ptr %2810, align 8
  %2812 = and i8 %2811, 4
  %2813 = icmp eq i8 %2812, 0
  br i1 %2813, label %2826, label %2814, !prof !173

2814:                                             ; preds = %2808
  %2815 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 17
  %2816 = load i32, ptr %2815, align 4, !tbaa !185
  %2817 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 12
  %2818 = load i32, ptr %2817, align 8, !tbaa !186
  %2819 = sext i32 %2818 to i64
  %2820 = getelementptr inbounds [30 x i32], ptr %11, i64 0, i64 %2819
  %2821 = load i32, ptr %2820, align 4, !tbaa !106
  %2822 = icmp eq i32 %2816, %2821
  br i1 %2822, label %2823, label %2826

2823:                                             ; preds = %2814
  %2824 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %2819
  %2825 = load i32, ptr %2824, align 4, !tbaa !106
  store i32 %2825, ptr %2815, align 4, !tbaa !185
  br label %2826

2826:                                             ; preds = %2823, %2814, %2808
  %2827 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 17
  %2828 = load i32, ptr %2827, align 4, !tbaa !185
  %2829 = add i32 %2828, -3
  %2830 = icmp ult i32 %2829, 4
  br i1 %2830, label %2831, label %2885, !prof !158

2831:                                             ; preds = %2826
  %2832 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 12
  %2833 = load i32, ptr %2832, align 8, !tbaa !186
  %2834 = sext i32 %2833 to i64
  %2835 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2834
  %2836 = load i32, ptr %2835, align 4, !tbaa !106
  %2837 = icmp slt i32 %2836, 0
  br i1 %2837, label %2844, label %2838

2838:                                             ; preds = %2831
  %2839 = zext nneg i32 %2836 to i64
  %2840 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2839, i32 18
  %2841 = load i8, ptr %2840, align 8
  %2842 = and i8 %2841, 1
  %2843 = icmp eq i8 %2842, 0
  br i1 %2843, label %2885, label %2844

2844:                                             ; preds = %2838, %2831
  %2845 = icmp ult i32 %2829, 2
  br i1 %2845, label %2846, label %2861

2846:                                             ; preds = %2844
  %2847 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 13
  %2848 = load i32, ptr %2847, align 4, !tbaa !195
  %2849 = icmp eq i32 %2848, -1
  br i1 %2849, label %2861, label %2850

2850:                                             ; preds = %2846
  %2851 = sext i32 %2848 to i64
  %2852 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2851, i32 17
  store i32 8, ptr %2852, align 4, !tbaa !185
  %2853 = icmp sgt i32 %2848, 0
  br i1 %2853, label %2854, label %2861

2854:                                             ; preds = %2850
  %2855 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2851, i32 13
  %2856 = load i32, ptr %2855, align 4, !tbaa !195
  %2857 = icmp eq i32 %2856, -1
  br i1 %2857, label %2861, label %2858

2858:                                             ; preds = %2854
  %2859 = sext i32 %2856 to i64
  %2860 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2859, i32 17
  store i32 8, ptr %2860, align 4, !tbaa !185
  br label %2861

2861:                                             ; preds = %2844, %2850, %2854, %2858, %2846
  %2862 = load i32, ptr %2827, align 4, !tbaa !185
  %2863 = add i32 %2862, -5
  %2864 = icmp ult i32 %2863, 2
  br i1 %2864, label %2865, label %2880

2865:                                             ; preds = %2861
  %2866 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 14
  %2867 = load i32, ptr %2866, align 8, !tbaa !196
  %2868 = icmp eq i32 %2867, -1
  br i1 %2868, label %2880, label %2869

2869:                                             ; preds = %2865
  %2870 = sext i32 %2867 to i64
  %2871 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2870, i32 17
  store i32 8, ptr %2871, align 4, !tbaa !185
  %2872 = icmp eq i32 %2867, 0
  br i1 %2872, label %2880, label %2873

2873:                                             ; preds = %2869
  %2874 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2870, i32 14
  %2875 = load i32, ptr %2874, align 8, !tbaa !196
  %2876 = icmp eq i32 %2875, -1
  br i1 %2876, label %2880, label %2877

2877:                                             ; preds = %2873
  %2878 = sext i32 %2875 to i64
  %2879 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2878, i32 17
  store i32 8, ptr %2879, align 4, !tbaa !185
  br label %2880

2880:                                             ; preds = %2861, %2869, %2873, %2877, %2865
  %2881 = load i32, ptr %2827, align 4, !tbaa !185
  %2882 = and i32 %2881, -3
  %2883 = icmp eq i32 %2882, 4
  %2884 = select i1 %2883, i32 8, i32 7
  store i32 %2884, ptr %2827, align 4, !tbaa !185
  br label %2885

2885:                                             ; preds = %2880, %2826, %2838
  %2886 = load i32, ptr %2827, align 4, !tbaa !185
  %2887 = add i32 %2886, -3
  %2888 = icmp ult i32 %2887, 2
  br i1 %2888, label %2889, label %2902, !prof !158

2889:                                             ; preds = %2885
  %2890 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 12
  %2891 = load i32, ptr %2890, align 8, !tbaa !186
  %2892 = sext i32 %2891 to i64
  %2893 = getelementptr inbounds [30 x i32], ptr %21, i64 0, i64 %2892
  %2894 = load i32, ptr %2893, align 4, !tbaa !106
  %2895 = icmp sgt i32 %2894, -1
  br i1 %2895, label %2896, label %2902

2896:                                             ; preds = %2889
  %2897 = zext nneg i32 %2894 to i64
  %2898 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2897, i32 17
  %2899 = load i32, ptr %2898, align 4, !tbaa !185
  %2900 = icmp eq i32 %2899, 9
  br i1 %2900, label %2901, label %2902

2901:                                             ; preds = %2896
  store i32 10, ptr %2827, align 4, !tbaa !185
  br label %2902

2902:                                             ; preds = %2885, %2901, %2896, %2889
  %2903 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2809, i32 12
  %2904 = load i32, ptr %2903, align 8, !tbaa !186
  %2905 = sext i32 %2904 to i64
  %2906 = getelementptr inbounds [30 x i32], ptr %22, i64 0, i64 %2905
  %2907 = load i32, ptr %2906, align 4, !tbaa !106
  %2908 = icmp sgt i32 %2907, -1
  br i1 %2908, label %2909, label %2910, !prof !158

2909:                                             ; preds = %2902
  store i32 %2907, ptr %2903, align 8, !tbaa !186
  br label %2910

2910:                                             ; preds = %2902, %2909
  %2911 = add nuw nsw i64 %2809, 1
  %2912 = icmp eq i64 %2911, %2721
  br i1 %2912, label %2913, label %2808, !prof !173, !llvm.loop !617

2913:                                             ; preds = %2910, %2717
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %36) #24
  %2914 = icmp sgt i8 %96, 0
  br i1 %2914, label %2915, label %2917, !prof !425

2915:                                             ; preds = %2913
  %2916 = zext nneg i32 %97 to i64
  br label %2921

2917:                                             ; preds = %2921, %2913
  %2918 = icmp sgt i32 %2718, 0
  br i1 %2918, label %2919, label %2968, !prof !602

2919:                                             ; preds = %2917
  %2920 = zext nneg i32 %2718 to i64
  br label %2927

2921:                                             ; preds = %2915, %2921
  %2922 = phi i64 [ 0, %2915 ], [ %2925, %2921 ]
  %2923 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2922
  store i32 -2, ptr %2923, align 4, !tbaa !106
  %2924 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2922
  store i32 -2, ptr %2924, align 4, !tbaa !106
  %2925 = add nuw nsw i64 %2922, 1
  %2926 = icmp eq i64 %2925, %2916
  br i1 %2926, label %2917, label %2921, !prof !438, !llvm.loop !618

2927:                                             ; preds = %2919, %2962
  %2928 = phi i64 [ %2920, %2919 ], [ %2931, %2962 ]
  %2929 = phi i32 [ 0, %2919 ], [ %2964, %2962 ]
  %2930 = phi i32 [ -2, %2919 ], [ %2963, %2962 ]
  %2931 = add nsw i64 %2928, -1
  %2932 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2931, i32 17
  %2933 = load i32, ptr %2932, align 4, !tbaa !185
  switch i32 %2933, label %2962 [
    i32 7, label %2934
    i32 3, label %2940
    i32 5, label %2951
  ], !prof !619

2934:                                             ; preds = %2927
  %2935 = add nsw i32 %2930, 1
  %2936 = icmp sgt i32 %2930, -2
  %2937 = trunc i64 %2931 to i32
  %2938 = select i1 %2936, i32 %2937, i32 %2935
  %2939 = select i1 %2936, i32 1, i32 %2929
  br label %2962

2940:                                             ; preds = %2927
  %2941 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2931, i32 12
  %2942 = load i32, ptr %2941, align 8, !tbaa !186
  %2943 = sext i32 %2942 to i64
  %2944 = getelementptr inbounds [30 x i32], ptr %35, i64 0, i64 %2943
  %2945 = load i32, ptr %2944, align 4, !tbaa !106
  %2946 = add nsw i32 %2945, 1
  %2947 = icmp sgt i32 %2945, -2
  %2948 = trunc i64 %2931 to i32
  %2949 = select i1 %2947, i32 %2948, i32 %2946
  store i32 %2949, ptr %2944, align 4
  %2950 = select i1 %2947, i32 1, i32 %2929
  br label %2962

2951:                                             ; preds = %2927
  %2952 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2931, i32 12
  %2953 = load i32, ptr %2952, align 8, !tbaa !186
  %2954 = sext i32 %2953 to i64
  %2955 = getelementptr inbounds [30 x i32], ptr %36, i64 0, i64 %2954
  %2956 = load i32, ptr %2955, align 4, !tbaa !106
  %2957 = add nsw i32 %2956, 1
  %2958 = icmp sgt i32 %2956, -2
  %2959 = trunc i64 %2931 to i32
  %2960 = select i1 %2958, i32 %2959, i32 %2957
  store i32 %2960, ptr %2955, align 4
  %2961 = select i1 %2958, i32 1, i32 %2929
  br label %2962

2962:                                             ; preds = %2951, %2940, %2934, %2927
  %2963 = phi i32 [ %2930, %2927 ], [ %2938, %2934 ], [ %2930, %2940 ], [ %2930, %2951 ]
  %2964 = phi i32 [ %2929, %2927 ], [ %2939, %2934 ], [ %2950, %2940 ], [ %2961, %2951 ]
  %2965 = icmp sgt i64 %2928, 1
  br i1 %2965, label %2927, label %2966, !prof !158, !llvm.loop !620

2966:                                             ; preds = %2962
  %2967 = icmp eq i32 %2964, 0
  br label %2968

2968:                                             ; preds = %2966, %2917
  %2969 = phi i32 [ -2, %2917 ], [ %2963, %2966 ]
  %2970 = phi i1 [ true, %2917 ], [ %2967, %2966 ]
  br i1 %2970, label %3031, label %2971, !prof !570

2971:                                             ; preds = %2968
  %2972 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %2973 = icmp sgt i32 %2972, 0
  br i1 %2973, label %2974, label %3031

2974:                                             ; preds = %2971, %3026
  %2975 = phi i64 [ %3027, %3026 ], [ 0, %2971 ]
  %2976 = phi i32 [ %3028, %3026 ], [ %2972, %2971 ]
  %2977 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2975
  %2978 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2975, i32 17
  %2979 = load i32, ptr %2978, align 4, !tbaa !185
  switch i32 %2979, label %3026 [
    i32 8, label %2989
    i32 4, label %2981
    i32 6, label %2980
  ]

2980:                                             ; preds = %2974
  br label %2981

2981:                                             ; preds = %2974, %2980
  %2982 = phi ptr [ %36, %2980 ], [ %35, %2974 ]
  %2983 = phi i32 [ 5, %2980 ], [ 3, %2974 ]
  %2984 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2975, i32 12
  %2985 = load i32, ptr %2984, align 8, !tbaa !186
  %2986 = sext i32 %2985 to i64
  %2987 = getelementptr inbounds [30 x i32], ptr %2982, i64 0, i64 %2986
  %2988 = load i32, ptr %2987, align 4, !tbaa !106
  br label %2989

2989:                                             ; preds = %2981, %2974
  %2990 = phi i32 [ %2969, %2974 ], [ %2988, %2981 ]
  %2991 = phi i32 [ 7, %2974 ], [ %2983, %2981 ]
  %2992 = icmp slt i32 %2990, 0
  br i1 %2992, label %3026, label %2993

2993:                                             ; preds = %2989
  %2994 = zext nneg i32 %2990 to i64
  %2995 = icmp ugt i64 %2975, %2994
  br i1 %2995, label %3025, label %2996

2996:                                             ; preds = %2993
  %2997 = add nsw i32 %2976, -1
  %2998 = icmp sgt i32 %2997, %2990
  br i1 %2998, label %2999, label %3026

2999:                                             ; preds = %2996
  %3000 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %2975, i32 18
  br label %3001

3001:                                             ; preds = %2999, %3022
  %3002 = phi i32 [ %2997, %2999 ], [ %3023, %3022 ]
  %3003 = zext nneg i32 %3002 to i64
  %3004 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3003
  %3005 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3003, i32 17
  %3006 = load i32, ptr %3005, align 4, !tbaa !185
  %3007 = icmp eq i32 %3006, %2991
  br i1 %3007, label %3008, label %3022

3008:                                             ; preds = %3001
  %3009 = load i8, ptr %3000, align 8
  %3010 = and i8 %3009, 4
  %3011 = icmp eq i8 %3010, 0
  br i1 %3011, label %3017, label %3012

3012:                                             ; preds = %3008
  %3013 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3003, i32 13
  %3014 = load i32, ptr %3013, align 4, !tbaa !195
  %3015 = zext i32 %3014 to i64
  %3016 = icmp eq i64 %2975, %3015
  br i1 %3016, label %3025, label %3022

3017:                                             ; preds = %3008
  %3018 = load ptr, ptr %2977, align 8, !tbaa !183
  %3019 = load ptr, ptr %3004, align 8, !tbaa !183
  %3020 = call i32 @reg_mentioned_p(ptr noundef %3018, ptr noundef %3019) #24
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3022, label %3025

3022:                                             ; preds = %3001, %3012, %3017
  %3023 = add nsw i32 %3002, -1
  %3024 = icmp sgt i32 %3023, %2990
  br i1 %3024, label %3001, label %3026, !llvm.loop !621

3025:                                             ; preds = %3012, %3017, %2993
  store i32 %2991, ptr %2978, align 4, !tbaa !185
  br label %3026

3026:                                             ; preds = %3022, %3025, %2996, %2989, %2974
  %3027 = add nuw nsw i64 %2975, 1
  %3028 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3029 = sext i32 %3028 to i64
  %3030 = icmp slt i64 %3027, %3029
  br i1 %3030, label %2974, label %3031, !llvm.loop !622

3031:                                             ; preds = %3026, %2971, %2968
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %36) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %35) #24
  %3032 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3033 = icmp sgt i32 %3032, 0
  br i1 %3033, label %3037, label %3034, !prof !602

3034:                                             ; preds = %3143, %3031
  %3035 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3036 = icmp sgt i32 %3035, 0
  br i1 %3036, label %3151, label %3148, !prof !602

3037:                                             ; preds = %3031, %3143
  %3038 = phi i64 [ %3144, %3143 ], [ 0, %3031 ]
  %3039 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3038
  %3040 = load ptr, ptr %3039, align 8, !tbaa !183
  %3041 = icmp eq ptr %3040, null
  br i1 %3041, label %3143, label %3042, !prof !159

3042:                                             ; preds = %3037
  %3043 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3038, i32 1
  %3044 = load ptr, ptr %3043, align 8, !tbaa !184
  %3045 = icmp eq ptr %3044, null
  br i1 %3045, label %3046, label %3143, !prof !166

3046:                                             ; preds = %3042
  %3047 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3038, i32 17
  %3048 = load i32, ptr %3047, align 4, !tbaa !185
  switch i32 %3048, label %3143 [
    i32 7, label %3049
    i32 8, label %3049
    i32 10, label %3049
  ], !prof !623

3049:                                             ; preds = %3046, %3046, %3046
  %3050 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3051 = icmp sgt i32 %3050, 0
  br i1 %3051, label %3052, label %3143

3052:                                             ; preds = %3049, %3138
  %3053 = phi i64 [ %3139, %3138 ], [ 0, %3049 ]
  %3054 = icmp eq i64 %3038, %3053
  br i1 %3054, label %3138, label %3055

3055:                                             ; preds = %3052
  %3056 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3053
  %3057 = load ptr, ptr %3056, align 8, !tbaa !183
  %3058 = icmp eq ptr %3057, null
  br i1 %3058, label %3138, label %3059

3059:                                             ; preds = %3055
  %3060 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3053, i32 1
  %3061 = load ptr, ptr %3060, align 8, !tbaa !184
  %3062 = icmp eq ptr %3061, null
  br i1 %3062, label %3063, label %3138

3063:                                             ; preds = %3059
  %3064 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3053, i32 17
  %3065 = load i32, ptr %3064, align 4, !tbaa !185
  %3066 = load i32, ptr %3047, align 4, !tbaa !185
  %3067 = icmp eq i32 %3065, %3066
  br i1 %3067, label %3068, label %3138

3068:                                             ; preds = %3063
  %3069 = load ptr, ptr %3039, align 8, !tbaa !183
  %3070 = icmp eq ptr %3069, %3057
  br i1 %3070, label %3094, label %3071

3071:                                             ; preds = %3068
  %3072 = icmp eq ptr %3069, null
  br i1 %3072, label %3138, label %3073

3073:                                             ; preds = %3071
  %3074 = load i32, ptr %3069, align 8
  %3075 = and i32 %3074, 65535
  %3076 = icmp eq i32 %3075, 37
  br i1 %3076, label %3077, label %3087

3077:                                             ; preds = %3073
  %3078 = load i32, ptr %3057, align 8
  %3079 = and i32 %3078, 65535
  %3080 = icmp eq i32 %3079, 37
  br i1 %3080, label %3081, label %3138

3081:                                             ; preds = %3077
  %3082 = getelementptr inbounds %struct.rtx_def, ptr %3069, i64 0, i32 1
  %3083 = load i32, ptr %3082, align 8, !tbaa !102
  %3084 = getelementptr inbounds %struct.rtx_def, ptr %3057, i64 0, i32 1
  %3085 = load i32, ptr %3084, align 8, !tbaa !102
  %3086 = icmp eq i32 %3083, %3085
  br i1 %3086, label %3094, label %3138

3087:                                             ; preds = %3073
  %3088 = call i32 @rtx_equal_p(ptr noundef nonnull %3069, ptr noundef nonnull %3057) #24
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3138, label %3090

3090:                                             ; preds = %3087
  %3091 = load ptr, ptr %3039, align 8, !tbaa !183
  %3092 = call i32 @side_effects_p(ptr noundef %3091) #24
  %3093 = icmp eq i32 %3092, 0
  br i1 %3093, label %3094, label %3138

3094:                                             ; preds = %3090, %3081, %3068
  %3095 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3038, i32 2
  %3096 = load i32, ptr %3095, align 8, !tbaa !180
  %3097 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3053, i32 2
  %3098 = load i32, ptr %3097, align 8, !tbaa !180
  %3099 = icmp eq i32 %3096, %3098
  br i1 %3099, label %3100, label %3138

3100:                                             ; preds = %3094
  %3101 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3038, i32 18
  %3102 = load i8, ptr %3101, align 8
  %3103 = and i8 %3102, 2
  %3104 = icmp eq i8 %3103, 0
  br i1 %3104, label %3105, label %3138

3105:                                             ; preds = %3100
  %3106 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3053, i32 18
  %3107 = load i8, ptr %3106, align 8
  %3108 = and i8 %3107, 2
  %3109 = icmp eq i8 %3108, 0
  br i1 %3109, label %3110, label %3138

3110:                                             ; preds = %3105
  %3111 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3038, i32 11
  %3112 = load ptr, ptr %3111, align 8, !tbaa !182
  %3113 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3053, i32 11
  %3114 = load ptr, ptr %3113, align 8, !tbaa !182
  %3115 = icmp eq ptr %3112, %3114
  br i1 %3115, label %3116, label %3138

3116:                                             ; preds = %3110
  %3117 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3038, i32 12
  %3118 = load i32, ptr %3117, align 8, !tbaa !186
  %3119 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3053, i32 12
  %3120 = load i32, ptr %3119, align 8, !tbaa !186
  %3121 = call i32 @llvm.smin.i32(i32 %3118, i32 %3120)
  store i32 %3121, ptr %3117, align 8, !tbaa !186
  %3122 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %3123 = icmp sgt i32 %3122, 0
  br i1 %3123, label %3124, label %3137

3124:                                             ; preds = %3116
  %3125 = trunc i64 %3038 to i32
  %3126 = zext nneg i32 %3122 to i64
  br label %3127

3127:                                             ; preds = %3124, %3134
  %3128 = phi i64 [ 0, %3124 ], [ %3135, %3134 ]
  %3129 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %3128, i32 2
  %3130 = load i32, ptr %3129, align 8, !tbaa !204
  %3131 = zext i32 %3130 to i64
  %3132 = icmp eq i64 %3053, %3131
  br i1 %3132, label %3133, label %3134

3133:                                             ; preds = %3127
  store i32 %3125, ptr %3129, align 8, !tbaa !204
  br label %3134

3134:                                             ; preds = %3133, %3127
  %3135 = add nuw nsw i64 %3128, 1
  %3136 = icmp eq i64 %3135, %3126
  br i1 %3136, label %3137, label %3127, !llvm.loop !390

3137:                                             ; preds = %3134, %3116
  store ptr null, ptr %3056, align 8, !tbaa !183
  br label %3138

3138:                                             ; preds = %3081, %3052, %3055, %3059, %3063, %3071, %3077, %3087, %3090, %3094, %3100, %3105, %3110, %3137
  %3139 = add nuw nsw i64 %3053, 1
  %3140 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3141 = sext i32 %3140 to i64
  %3142 = icmp slt i64 %3139, %3141
  br i1 %3142, label %3052, label %3143, !llvm.loop !624

3143:                                             ; preds = %3138, %3049, %3046, %3037, %3042
  %3144 = add nuw nsw i64 %3038, 1
  %3145 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3146 = sext i32 %3145 to i64
  %3147 = icmp slt i64 %3144, %3146
  br i1 %3147, label %3037, label %3034, !prof !158, !llvm.loop !625

3148:                                             ; preds = %3195, %3034
  %3149 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3150 = icmp sgt i32 %3149, 0
  br i1 %3150, label %3202, label %3288, !prof !602

3151:                                             ; preds = %3034, %3195
  %3152 = phi i64 [ %3198, %3195 ], [ 0, %3034 ]
  %3153 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3152, i32 3
  %3154 = load i32, ptr %3153, align 4, !tbaa !190
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3166, label %3156, !prof !159

3156:                                             ; preds = %3151
  %3157 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3152, i32 4
  %3158 = load i32, ptr %3157, align 8, !tbaa !191
  %3159 = zext i32 %3158 to i64
  %3160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3159
  %3161 = load i8, ptr %3160, align 1, !tbaa !102
  %3162 = zext i32 %3154 to i64
  %3163 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3162
  %3164 = load i8, ptr %3163, align 1, !tbaa !102
  %3165 = icmp ugt i8 %3161, %3164
  br i1 %3165, label %3166, label %3169, !prof !165

3166:                                             ; preds = %3156, %3151
  %3167 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3152, i32 4
  %3168 = load i32, ptr %3167, align 8, !tbaa !191
  br label %3169

3169:                                             ; preds = %3156, %3166
  %3170 = phi i32 [ %3168, %3166 ], [ %3154, %3156 ]
  %3171 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3152, i32 5
  store i32 %3170, ptr %3171, align 4, !tbaa !626
  %3172 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3152, i32 2
  %3173 = load i32, ptr %3172, align 8, !tbaa !180
  %3174 = call i32 @reg_classes_intersect_p(i32 noundef %3173, i32 noundef 13) #24
  %3175 = icmp eq i32 %3174, 0
  %3176 = load i32, ptr %3171, align 4, !tbaa !626
  br i1 %3175, label %3177, label %3184, !prof !171

3177:                                             ; preds = %3169
  %3178 = zext i32 %3176 to i64
  %3179 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3178
  %3180 = load i8, ptr %3179, align 1, !tbaa !102
  %3181 = and i8 %3180, -2
  %3182 = icmp eq i8 %3181, 10
  %3183 = select i1 %3182, i32 2, i32 1, !prof !582
  br label %3195

3184:                                             ; preds = %3169
  %3185 = icmp eq i32 %3176, 40
  br i1 %3185, label %3191, label %3186, !prof !627

3186:                                             ; preds = %3184
  %3187 = zext i32 %3176 to i64
  %3188 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3187
  %3189 = load i8, ptr %3188, align 1, !tbaa !102
  %3190 = zext i8 %3189 to i32
  br label %3191

3191:                                             ; preds = %3184, %3186
  %3192 = phi i32 [ %3190, %3186 ], [ 12, %3184 ]
  %3193 = add nuw nsw i32 %3192, 3
  %3194 = lshr i32 %3193, 2
  br label %3195

3195:                                             ; preds = %3191, %3177
  %3196 = phi i32 [ %3183, %3177 ], [ %3194, %3191 ]
  %3197 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3152, i32 6
  store i32 %3196, ptr %3197, align 8, !tbaa !628
  %3198 = add nuw nsw i64 %3152, 1
  %3199 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3200 = sext i32 %3199 to i64
  %3201 = icmp slt i64 %3198, %3200
  br i1 %3201, label %3151, label %3148, !prof !158, !llvm.loop !629

3202:                                             ; preds = %3148, %3280
  %3203 = phi i64 [ %3281, %3280 ], [ 0, %3148 ]
  %3204 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3203
  %3205 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3203, i32 17
  %3206 = load i32, ptr %3205, align 4, !tbaa !185
  %3207 = icmp eq i32 %3206, 0
  br i1 %3207, label %3208, label %3280, !prof !168

3208:                                             ; preds = %3202
  %3209 = load ptr, ptr %37, align 8, !tbaa !102
  %3210 = load i32, ptr %3209, align 8
  %3211 = and i32 %3210, 65535
  %3212 = icmp eq i32 %3211, 23
  br i1 %3212, label %3213, label %3280, !prof !630

3213:                                             ; preds = %3208
  %3214 = getelementptr inbounds %struct.rtx_def, ptr %3209, i64 0, i32 1
  %3215 = load ptr, ptr %3214, align 8, !tbaa !102
  %3216 = load i32, ptr %3215, align 8
  %3217 = and i32 %3216, 65535
  %3218 = icmp eq i32 %3217, 37
  br i1 %3218, label %3219, label %3280, !prof !631

3219:                                             ; preds = %3213
  %3220 = getelementptr inbounds %struct.rtx_def, ptr %3209, i64 0, i32 1, i32 0, i32 0, i64 1
  %3221 = load ptr, ptr %3220, align 8, !tbaa !102
  %3222 = load ptr, ptr %3204, align 8, !tbaa !183
  %3223 = icmp eq ptr %3221, %3222
  br i1 %3223, label %3228, label %3224, !prof !632

3224:                                             ; preds = %3219
  %3225 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3203, i32 8
  %3226 = load ptr, ptr %3225, align 8, !tbaa !193
  %3227 = icmp eq ptr %3221, %3226
  br i1 %3227, label %3228, label %3280, !prof !633

3228:                                             ; preds = %3224, %3219
  %3229 = call zeroext i8 @elimination_target_reg_p(ptr noundef nonnull %3215) #24
  %3230 = icmp eq i8 %3229, 0
  br i1 %3230, label %3231, label %3280, !prof !634

3231:                                             ; preds = %3228
  %3232 = load ptr, ptr %37, align 8, !tbaa !102
  %3233 = getelementptr inbounds %struct.rtx_def, ptr %3232, i64 0, i32 1
  %3234 = load ptr, ptr %3233, align 8, !tbaa !102
  %3235 = getelementptr inbounds %struct.rtx_def, ptr %3234, i64 0, i32 1
  %3236 = load i32, ptr %3235, align 8, !tbaa !102
  %3237 = icmp ult i32 %3236, 53
  br i1 %3237, label %3238, label %3280, !prof !634

3238:                                             ; preds = %3231
  %3239 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3203, i32 2
  %3240 = load i32, ptr %3239, align 8, !tbaa !180
  %3241 = zext i32 %3240 to i64
  %3242 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %3241
  %3243 = load i64, ptr %3242, align 8, !tbaa !174
  %3244 = zext nneg i32 %3236 to i64
  %3245 = shl nuw nsw i64 1, %3244
  %3246 = and i64 %3243, %3245
  %3247 = icmp eq i64 %3246, 0
  br i1 %3247, label %3280, label %3248, !prof !635

3248:                                             ; preds = %3238
  %3249 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3203, i32 5
  %3250 = load i32, ptr %3249, align 4, !tbaa !626
  %3251 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %3236, i32 noundef %3250) #24
  %3252 = icmp eq i8 %3251, 0
  br i1 %3252, label %3280, label %3253, !prof !635

3253:                                             ; preds = %3248
  %3254 = load i32, ptr %3249, align 4, !tbaa !626
  %3255 = zext i32 %3254 to i64
  %3256 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3244, i64 %3255
  %3257 = load i8, ptr %3256, align 1, !tbaa !102
  %3258 = icmp ugt i8 %3257, 1
  br i1 %3258, label %3259, label %3275, !prof !177

3259:                                             ; preds = %3253, %3259
  %3260 = phi i64 [ %3273, %3259 ], [ 1, %3253 ]
  %3261 = phi i32 [ %3272, %3259 ], [ 1, %3253 ]
  %3262 = load i32, ptr %3239, align 8, !tbaa !180
  %3263 = zext i32 %3262 to i64
  %3264 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %3263
  %3265 = load i64, ptr %3264, align 8, !tbaa !174
  %3266 = zext nneg i32 %3236 to i64
  %3267 = zext i8 %3257 to i64
  %3268 = add nuw nsw i64 %3260, %3266
  %3269 = shl nuw i64 1, %3268
  %3270 = and i64 %3265, %3269
  %3271 = icmp eq i64 %3270, 0
  %3272 = select i1 %3271, i32 0, i32 %3261
  %3273 = add nuw nsw i64 %3260, 1
  %3274 = icmp eq i64 %3273, %3267
  br i1 %3274, label %3275, label %3259, !prof !178, !llvm.loop !636

3275:                                             ; preds = %3259, %3253
  %3276 = phi i32 [ 1, %3253 ], [ %3272, %3259 ]
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3280, label %3278, !prof !635

3278:                                             ; preds = %3275
  %3279 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %3203, i32 11
  store ptr %3234, ptr %3279, align 8, !tbaa !182
  br label %3280

3280:                                             ; preds = %3231, %3238, %3248, %3278, %3275, %3202, %3208, %3213, %3224, %3228
  %3281 = add nuw nsw i64 %3203, 1
  %3282 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %3283 = sext i32 %3282 to i64
  %3284 = icmp slt i64 %3281, %3283
  br i1 %3284, label %3202, label %3288, !prof !158, !llvm.loop !637

3285:                                             ; preds = %1993, %1992, %1557, %1559
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #24
  %3286 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !91
  %3287 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %3286) #24
  store ptr %3287, ptr %37, align 8, !tbaa !102
  store i32 0, ptr @n_reloads, align 4, !tbaa !106
  br label %3288

3288:                                             ; preds = %418, %1460, %3280, %3285, %3148, %95, %84
  %3289 = phi i32 [ 0, %84 ], [ 0, %95 ], [ %2211, %3148 ], [ 0, %3285 ], [ %2211, %3280 ], [ %424, %1460 ], [ %421, %418 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %30) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %6) #24
  ret i32 %3289
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ix86_register_move_cost(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_reloads_toplev(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #13 !prof !638 !PGOFuncName !639 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !91
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = trunc i32 %11 to i16
  switch i16 %16, label %196 [
    i16 37, label %17
    i16 43, label %85
    i16 39, label %95
  ], !prof !640

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !102
  %20 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = icmp eq ptr %23, null
  %25 = icmp ne i32 %4, 0
  %26 = or i1 %25, %24
  br i1 %26, label %28, label %27, !prof !447

27:                                               ; preds = %17
  store ptr %23, ptr %8, align 8, !tbaa !91
  br label %83

28:                                               ; preds = %17
  %29 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %30 = getelementptr inbounds ptr, ptr %29, i64 %21
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %83, label %33, !prof !447

33:                                               ; preds = %28
  %34 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %35 = getelementptr inbounds ptr, ptr %34, i64 %21
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = icmp ne ptr %36, null
  %38 = load i32, ptr @num_not_at_initial_offset, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %33
  %42 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %19)
  %43 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %44 = getelementptr inbounds ptr, ptr %43, i64 %21
  %45 = load ptr, ptr %44, align 8, !tbaa !91
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %49 = getelementptr inbounds ptr, ptr %48, i64 %21
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = tail call i32 @rtx_equal_p(ptr noundef %42, ptr noundef %50) #24
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %47, %41
  %54 = load i32, ptr @replace_reloads, align 4, !tbaa !106
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = sext i32 %1 to i64
  %58 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !91
  %60 = load ptr, ptr %8, align 8, !tbaa !91
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %60) #24
  %64 = tail call ptr @emit_insn_before(ptr noundef %63, ptr noundef %5) #24
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, -16711681
  %67 = or disjoint i32 %66, 917504
  store i32 %67, ptr %64, align 8
  br label %68

68:                                               ; preds = %62, %56, %53
  store ptr %42, ptr %8, align 8, !tbaa !91
  %69 = load i32, ptr %42, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !102
  %74 = call fastcc i32 @find_reloads_address(i32 noundef %71, ptr noundef nonnull %8, ptr noundef %73, ptr noundef nonnull %72, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5)
  %75 = load ptr, ptr %8, align 8, !tbaa !91
  %76 = call i32 @rtx_equal_p(ptr noundef %75, ptr noundef nonnull %42) #24
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load ptr, ptr %8, align 8, !tbaa !91
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %19, ptr noundef %79)
  br label %80

80:                                               ; preds = %78, %68
  %81 = icmp eq ptr %6, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  store i32 %74, ptr %6, align 4, !tbaa !106
  br label %83

83:                                               ; preds = %47, %82, %80, %28, %33, %27
  %84 = load ptr, ptr %8, align 8, !tbaa !91
  br label %241

85:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  store ptr %0, ptr %9, align 8, !tbaa !91
  %86 = lshr i32 %11, 16
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !102
  %90 = call fastcc i32 @find_reloads_address(i32 noundef %87, ptr noundef nonnull %9, ptr noundef %89, ptr noundef nonnull %88, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5)
  %91 = icmp eq ptr %6, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  store i32 %90, ptr %6, align 4, !tbaa !106
  br label %93

93:                                               ; preds = %92, %85
  %94 = load ptr, ptr %9, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  br label %241

95:                                               ; preds = %7
  %96 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !102
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %196, !prof !447

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  %104 = icmp sgt i32 %103, 52
  br i1 %104, label %105, label %193, !prof !446

105:                                              ; preds = %101
  %106 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %107 = zext nneg i32 %103 to i64
  %108 = getelementptr inbounds i16, ptr %106, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !142
  %110 = icmp slt i16 %109, 0
  br i1 %110, label %111, label %155

111:                                              ; preds = %105
  %112 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %113 = getelementptr inbounds ptr, ptr %112, i64 %107
  %114 = load ptr, ptr %113, align 8, !tbaa !91
  %115 = icmp eq ptr %114, null
  br i1 %115, label %155, label %116

116:                                              ; preds = %111
  %117 = lshr i32 %11, 16
  %118 = and i32 %117, 255
  %119 = load i32, ptr %97, align 8
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %123 = load i32, ptr %122, align 8, !tbaa !102
  %124 = tail call ptr @simplify_gen_subreg(i32 noundef %118, ptr noundef nonnull %114, i32 noundef %121, i32 noundef %123) #24
  store ptr %124, ptr %10, align 8, !tbaa !91
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4741, ptr noundef nonnull @.str.1) #24
  br label %127

127:                                              ; preds = %116, %126
  %128 = load ptr, ptr %10, align 8, !tbaa !91
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !106
  %134 = icmp eq i32 %133, 9
  br i1 %134, label %135, label %153

135:                                              ; preds = %127
  %136 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %128) #24
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load ptr, ptr %8, align 8, !tbaa !91
  %140 = load i32, ptr %139, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = load ptr, ptr %10, align 8, !tbaa !91
  %144 = tail call ptr @force_const_mem(i32 noundef %142, ptr noundef %143) #24
  store ptr %144, ptr %10, align 8, !tbaa !91
  %145 = load i32, ptr %144, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !102
  %150 = call fastcc i32 @find_reloads_address(i32 noundef %147, ptr noundef nonnull %10, ptr noundef %149, ptr noundef nonnull %148, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5)
  %151 = icmp eq ptr %6, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %138
  store i32 %150, ptr %6, align 4, !tbaa !106
  br label %153

153:                                              ; preds = %138, %152, %135, %127
  %154 = load ptr, ptr %10, align 8, !tbaa !91
  br label %193

155:                                              ; preds = %105, %111
  %156 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %157 = getelementptr inbounds ptr, ptr %156, i64 %107
  %158 = load ptr, ptr %157, align 8, !tbaa !91
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %190

160:                                              ; preds = %155
  %161 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %162 = getelementptr inbounds ptr, ptr %161, i64 %107
  %163 = load ptr, ptr %162, align 8, !tbaa !91
  %164 = icmp eq ptr %163, null
  br i1 %164, label %193, label %165

165:                                              ; preds = %160
  %166 = lshr i32 %11, 16
  %167 = and i32 %166, 255
  %168 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !102
  %170 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1, i32 0, i32 0, i64 1
  %171 = load ptr, ptr %170, align 8, !tbaa !102
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.mem_attrs, ptr %171, i64 0, i32 5
  %175 = load i8, ptr %174, align 8, !tbaa !130
  br label %176

176:                                              ; preds = %165, %173
  %177 = phi i8 [ %175, %173 ], [ 0, %165 ]
  %178 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %179 = tail call zeroext i8 %178(i32 noundef %167, ptr noundef %169, i8 noundef zeroext 1, i8 noundef zeroext %177) #24
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %183 = getelementptr inbounds ptr, ptr %182, i64 %107
  %184 = load ptr, ptr %183, align 8, !tbaa !91
  %185 = tail call i32 @offsettable_memref_p(ptr noundef %184) #24
  %186 = icmp eq i32 %185, 0
  %187 = load i32, ptr @num_not_at_initial_offset, align 4
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %181, %176, %155
  %191 = load ptr, ptr %8, align 8, !tbaa !91
  %192 = tail call fastcc ptr @find_reloads_subreg_address(ptr noundef %191, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5)
  store ptr %192, ptr %8, align 8, !tbaa !91
  br label %193

193:                                              ; preds = %160, %190, %181, %101, %153
  %194 = phi i1 [ false, %153 ], [ true, %101 ], [ true, %181 ], [ true, %190 ], [ true, %160 ]
  %195 = phi ptr [ %154, %153 ], [ undef, %101 ], [ undef, %181 ], [ undef, %190 ], [ undef, %160 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  br i1 %194, label %196, label %241, !prof !447

196:                                              ; preds = %7, %193, %95
  %197 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %198 = load i8, ptr %197, align 1, !tbaa !102
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %239, label %200, !prof !641

200:                                              ; preds = %196
  %201 = zext i8 %198 to i64
  br label %202

202:                                              ; preds = %200, %236
  %203 = phi i64 [ %201, %200 ], [ %205, %236 ]
  %204 = phi i32 [ 0, %200 ], [ %237, %236 ]
  %205 = add nsw i64 %203, -1
  %206 = getelementptr inbounds i8, ptr %15, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !102
  %208 = icmp eq i8 %207, 101
  br i1 %208, label %209, label %236, !prof !642

209:                                              ; preds = %202
  %210 = load ptr, ptr %8, align 8, !tbaa !91
  %211 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1
  %212 = getelementptr inbounds [1 x %union.rtunion_def], ptr %211, i64 0, i64 %205
  %213 = load ptr, ptr %212, align 8, !tbaa !102
  %214 = call fastcc ptr @find_reloads_toplev(ptr noundef %213, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %215 = load ptr, ptr %8, align 8, !tbaa !91
  %216 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %217 = getelementptr inbounds [1 x %union.rtunion_def], ptr %216, i64 0, i64 %205
  %218 = load ptr, ptr %217, align 8, !tbaa !102
  %219 = icmp eq ptr %214, %218
  br i1 %219, label %231, label %220, !prof !447

220:                                              ; preds = %209
  %221 = load i32, ptr %214, align 8
  %222 = and i32 %221, 65535
  %223 = zext nneg i32 %222 to i64
  %224 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !106
  %226 = icmp eq i32 %225, 9
  %227 = icmp ne i32 %204, 0
  %228 = select i1 %226, i1 true, i1 %227
  br i1 %228, label %231, label %229

229:                                              ; preds = %220
  %230 = call ptr @shallow_copy_rtx_stat(ptr noundef %215) #24
  store ptr %230, ptr %8, align 8, !tbaa !91
  br label %231

231:                                              ; preds = %229, %220, %209
  %232 = phi i32 [ %204, %220 ], [ 1, %229 ], [ %204, %209 ]
  %233 = load ptr, ptr %8, align 8, !tbaa !91
  %234 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1
  %235 = getelementptr inbounds [1 x %union.rtunion_def], ptr %234, i64 0, i64 %205
  store ptr %214, ptr %235, align 8, !tbaa !102
  br label %236

236:                                              ; preds = %202, %231
  %237 = phi i32 [ %232, %231 ], [ %204, %202 ]
  %238 = icmp sgt i64 %203, 1
  br i1 %238, label %202, label %239, !prof !643, !llvm.loop !644

239:                                              ; preds = %236, %196
  %240 = load ptr, ptr %8, align 8, !tbaa !91
  br label %241

241:                                              ; preds = %193, %239, %93, %83
  %242 = phi ptr [ %84, %83 ], [ %94, %93 ], [ %240, %239 ], [ %195, %193 ]
  ret ptr %242
}

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #3

declare i32 @simplify_subreg_regno(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @offsettable_memref_p(ptr noundef) local_unnamed_addr #3

declare i32 @offsettable_nonstrict_memref_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_clobber(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @label_is_jump_target_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @elimination_target_reg_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @form_sum(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !90 {
  br label %4

4:                                                ; preds = %74, %57, %3
  %5 = phi ptr [ %1, %3 ], [ %59, %57 ], [ %77, %74 ]
  %6 = phi ptr [ %2, %3 ], [ %60, %57 ], [ %78, %74 ]
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
  %28 = load i64, ptr %27, align 8, !tbaa !102
  %29 = tail call ptr @plus_constant(ptr noundef nonnull %6, i64 noundef %28) #24
  br label %106

30:                                               ; preds = %22
  %31 = load i32, ptr %6, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !102
  %37 = tail call ptr @plus_constant(ptr noundef nonnull %5, i64 noundef %36) #24
  br label %106

38:                                               ; preds = %30
  %39 = zext nneg i32 %24 to i64
  %40 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !106
  %42 = icmp eq i32 %41, 9
  %43 = select i1 %42, ptr %6, ptr %5
  %44 = select i1 %42, ptr %5, ptr %6
  %45 = load i32, ptr %43, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 49
  br i1 %47, label %48, label %61

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !106
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !102
  %60 = tail call ptr @form_sum(i32 noundef %0, ptr noundef nonnull %50, ptr noundef nonnull %44)
  br label %4

61:                                               ; preds = %48, %38
  %62 = load i32, ptr %44, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 49
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !102
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !106
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !102
  %77 = tail call ptr @form_sum(i32 noundef %0, ptr noundef nonnull %43, ptr noundef %76)
  %78 = load ptr, ptr %66, align 8, !tbaa !102
  br label %4

79:                                               ; preds = %65, %61
  %80 = zext nneg i32 %46 to i64
  %81 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !106
  %83 = icmp eq i32 %82, 9
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = zext nneg i32 %63 to i64
  %86 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !106
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = icmp eq i32 %46, 35
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !102
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi ptr [ %93, %91 ], [ %43, %89 ]
  %96 = icmp eq i32 %63, 35
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !102
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi ptr [ %99, %97 ], [ %44, %94 ]
  %102 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %95, ptr noundef %101) #24
  %103 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef 0, ptr noundef %102) #24
  br label %106

104:                                              ; preds = %84, %79
  %105 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %44) #24
  br label %106

106:                                              ; preds = %104, %100, %34, %26
  %107 = phi ptr [ %29, %26 ], [ %37, %34 ], [ %103, %100 ], [ %105, %104 ]
  ret ptr %107
}

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @subst_reloads(ptr noundef %0) local_unnamed_addr #10 !prof !645 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %100, !prof !646

4:                                                ; preds = %1, %95
  %5 = phi i64 [ %96, %95 ], [ 0, %1 ]
  %6 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5
  %7 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !204
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !182
  %12 = icmp eq ptr %11, null
  br i1 %12, label %89, label %13, !prof !647

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !207
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 44
  br i1 %18, label %19, label %36, !prof !648

19:                                               ; preds = %13
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %25) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load ptr, ptr %6, align 8, !tbaa !207
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !102
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
  %41 = load i32, ptr %40, align 4, !tbaa !208
  %42 = icmp eq i32 %39, %41
  %43 = icmp eq i32 %41, 0
  %44 = or i1 %43, %42
  br i1 %44, label %49, label %45, !prof !649

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !102
  %48 = tail call ptr @gen_rtx_REG(i32 noundef %41, i32 noundef %47) #24
  br label %49

49:                                               ; preds = %45, %36
  %50 = phi ptr [ %48, %45 ], [ %11, %36 ]
  %51 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %5, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !206
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54, !prof !649

54:                                               ; preds = %49
  %55 = load i32, ptr %50, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 39
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load ptr, ptr %52, align 8, !tbaa !91
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store ptr %64, ptr %52, align 8, !tbaa !91
  br label %95

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load i32, ptr %71, align 8, !tbaa !102
  %73 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load i32, ptr %73, align 8, !tbaa !102
  %75 = add i32 %74, %72
  %76 = zext nneg i32 %62 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !102
  %79 = zext i8 %78 to i32
  %80 = freeze i32 %75
  %81 = srem i32 %80, %79
  %82 = sub nsw i32 %80, %81
  %83 = load ptr, ptr %6, align 8, !tbaa !207
  store ptr %64, ptr %83, align 8, !tbaa !91
  %84 = load ptr, ptr %51, align 8, !tbaa !206
  %85 = load ptr, ptr %84, align 8, !tbaa !91
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %82, ptr %86, align 8, !tbaa !102
  br label %95

87:                                               ; preds = %54, %49
  %88 = load ptr, ptr %6, align 8, !tbaa !207
  store ptr %50, ptr %88, align 8, !tbaa !91
  br label %95

89:                                               ; preds = %4
  %90 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %9, i32 18
  %91 = load i8, ptr %90, align 8
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95, !prof !650

94:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6324, ptr noundef nonnull @.str.1) #24
  br label %95

95:                                               ; preds = %94, %89, %87, %70, %69
  %96 = add nuw nsw i64 %5, 1
  %97 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %4, label %100, !prof !651, !llvm.loop !652

100:                                              ; preds = %95, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @reload_adjust_reg_for_mode(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !90 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !102
  %10 = tail call ptr @gen_rtx_REG(i32 noundef %1, i32 noundef %9) #24
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %10, %7 ], [ %0, %2 ]
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define dso_local void @copy_replacements(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !90 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !91
  store ptr %1, ptr %4, align 8, !tbaa !91
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6336, ptr noundef nonnull @.str.1) #24
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i32, ptr @n_replacements, align 4, !tbaa !106
  call fastcc void @copy_replacements_1(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %10)
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @copy_replacements_1(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #18 !prof !90 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %38
  %9 = phi i64 [ 0, %5 ], [ %40, %38 ]
  %10 = phi i32 [ %6, %5 ], [ %39, %38 ]
  %11 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9
  %12 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !206
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = add nsw i32 %10, 1
  store i32 %16, ptr @n_replacements, align 4, !tbaa !106
  %17 = sext i32 %10 to i64
  %18 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %17
  %19 = load ptr, ptr %11, align 8, !tbaa !207
  store ptr %19, ptr %18, align 8, !tbaa !207
  br label %27

20:                                               ; preds = %8
  %21 = load ptr, ptr %11, align 8, !tbaa !207
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = add nsw i32 %10, 1
  store i32 %24, ptr @n_replacements, align 4, !tbaa !106
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %25
  store ptr %1, ptr %26, align 8, !tbaa !207
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi i64 [ %17, %15 ], [ %25, %23 ]
  %29 = phi ptr [ %1, %15 ], [ null, %23 ]
  %30 = phi i32 [ %16, %15 ], [ %24, %23 ]
  %31 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !206
  %32 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !204
  %34 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !204
  %35 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %9, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !208
  %37 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %28, i32 3
  store i32 %36, ptr %37, align 4, !tbaa !208
  br label %38

38:                                               ; preds = %27, %20
  %39 = phi i32 [ %10, %20 ], [ %30, %27 ]
  %40 = add nuw nsw i64 %9, 1
  %41 = icmp eq i64 %40, %7
  br i1 %41, label %42, label %8, !llvm.loop !653

42:                                               ; preds = %38, %3
  %43 = load ptr, ptr %0, align 8, !tbaa !91
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !91
  %49 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %46
  %50 = load i8, ptr %49, align 1, !tbaa !102
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %85, label %52

52:                                               ; preds = %42
  %53 = load ptr, ptr %1, align 8, !tbaa !91
  %54 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %55 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %56 = zext i8 %50 to i64
  br label %57

57:                                               ; preds = %52, %83
  %58 = phi i64 [ %56, %52 ], [ %59, %83 ]
  %59 = add nsw i64 %58, -1
  %60 = getelementptr inbounds i8, ptr %48, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !102
  switch i8 %61, label %83 [
    i8 101, label %62
    i8 69, label %67
  ]

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %65 = getelementptr inbounds [1 x %union.rtunion_def], ptr %63, i64 0, i64 %59
  %66 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %59
  tail call fastcc void @copy_replacements_1(ptr noundef nonnull %65, ptr noundef nonnull %66, i32 noundef %2)
  br label %83

67:                                               ; preds = %57
  %68 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %59
  %69 = load ptr, ptr %68, align 8, !tbaa !102
  %70 = load i32, ptr %69, align 8, !tbaa !144
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %59
  %74 = zext nneg i32 %70 to i64
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %74, %72 ], [ %77, %75 ]
  %77 = add nsw i64 %76, -1
  %78 = load ptr, ptr %68, align 8, !tbaa !102
  %79 = getelementptr inbounds %struct.rtvec_def, ptr %78, i64 0, i32 1, i64 %77
  %80 = load ptr, ptr %73, align 8, !tbaa !102
  %81 = getelementptr inbounds %struct.rtvec_def, ptr %80, i64 0, i32 1, i64 %77
  tail call fastcc void @copy_replacements_1(ptr noundef nonnull %79, ptr noundef nonnull %81, i32 noundef %2)
  %82 = icmp sgt i64 %76, 1
  br i1 %82, label %75, label %83, !llvm.loop !654

83:                                               ; preds = %75, %67, %57, %62
  %84 = icmp sgt i64 %58, 1
  br i1 %84, label %57, label %85, !llvm.loop !655

85:                                               ; preds = %83, %42
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @move_replacements(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #16 !prof !90 {
  %3 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i64 [ 0, %5 ], [ %20, %19 ]
  %9 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8
  %10 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %8, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %9, align 8, !tbaa !207
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  store ptr %1, ptr %9, align 8, !tbaa !207
  br label %17

17:                                               ; preds = %7, %16
  %18 = phi ptr [ null, %16 ], [ %1, %7 ]
  store ptr %18, ptr %10, align 8, !tbaa !206
  br label %19

19:                                               ; preds = %17, %13
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %7, !llvm.loop !656

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_replacement(ptr noundef readonly %0) local_unnamed_addr #9 !prof !90 {
  %2 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %10, label %89

4:                                                ; preds = %86
  %5 = getelementptr inbounds %struct.replacement, ptr %12, i64 1
  %6 = load i32, ptr @n_replacements, align 4, !tbaa !106
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [150 x %struct.replacement], ptr @replacements, i64 0, i64 %7
  %9 = icmp ult ptr %5, %8
  br i1 %9, label %10, label %89, !llvm.loop !657

10:                                               ; preds = %1, %4
  %11 = phi ptr [ %88, %4 ], [ undef, %1 ]
  %12 = phi ptr [ %5, %4 ], [ @replacements, %1 ]
  %13 = getelementptr inbounds %struct.replacement, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !204
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %15, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %12, align 8, !tbaa !207
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.replacement, ptr %12, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !208
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %86, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %17, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, %24
  br i1 %30, label %86, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !102
  %34 = tail call ptr @gen_rtx_REG(i32 noundef %24, i32 noundef %33) #24
  br label %86

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.replacement, ptr %12, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !206
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load i32, ptr %17, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load ptr, ptr %0, align 8, !tbaa !91
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !102
  %50 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !102
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !102
  %54 = load i32, ptr %51, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load i32, ptr %57, align 8, !tbaa !102
  %59 = tail call i32 @subreg_regno_offset(i32 noundef %53, i32 noundef %56, i32 noundef %58, i32 noundef %47) #24
  %60 = add i32 %59, %49
  %61 = tail call ptr @gen_rtx_REG(i32 noundef %47, i32 noundef %60) #24
  br label %86

62:                                               ; preds = %39
  %63 = lshr i32 %40, 16
  %64 = and i32 %63, 255
  %65 = load ptr, ptr %0, align 8, !tbaa !91
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %64, %68
  br i1 %69, label %86, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %72 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load i32, ptr %72, align 8, !tbaa !102
  %74 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load i32, ptr %74, align 8, !tbaa !102
  %76 = add i32 %75, %73
  %77 = zext nneg i32 %68 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !102
  %80 = zext i8 %79 to i32
  %81 = freeze i32 %76
  %82 = srem i32 %81, %80
  %83 = sub nsw i32 %81, %82
  %84 = load ptr, ptr %71, align 8, !tbaa !102
  %85 = tail call ptr @gen_rtx_SUBREG(i32 noundef %68, ptr noundef %84, i32 noundef %83) #24
  br label %86

86:                                               ; preds = %35, %10, %62, %22, %26, %31, %70, %43
  %87 = phi i1 [ false, %43 ], [ false, %70 ], [ false, %31 ], [ false, %26 ], [ false, %22 ], [ false, %62 ], [ true, %10 ], [ true, %35 ]
  %88 = phi ptr [ %61, %43 ], [ %85, %70 ], [ %34, %31 ], [ %17, %26 ], [ %17, %22 ], [ %17, %62 ], [ %11, %10 ], [ %11, %35 ]
  br i1 %87, label %4, label %119

89:                                               ; preds = %4, %1
  %90 = phi ptr [ undef, %1 ], [ %88, %4 ]
  %91 = load ptr, ptr %0, align 8, !tbaa !91
  %92 = load i32, ptr %91, align 8
  %93 = trunc i32 %92 to i16
  switch i16 %93, label %117 [
    i16 49, label %94
    i16 50, label %94
    i16 52, label %94
  ]

94:                                               ; preds = %89, %89, %89
  %95 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %96 = tail call ptr @find_replacement(ptr noundef nonnull %95)
  %97 = load ptr, ptr %0, align 8, !tbaa !91
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = tail call ptr @find_replacement(ptr noundef nonnull %98)
  %100 = load ptr, ptr %0, align 8, !tbaa !91
  %101 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !102
  %103 = icmp eq ptr %96, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  %107 = icmp eq ptr %99, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %104, %94
  %109 = load i32, ptr %100, align 8
  %110 = and i32 %109, 65535
  %111 = lshr i32 %109, 16
  %112 = and i32 %111, 255
  %113 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %110, i32 noundef %112, ptr noundef %96, ptr noundef %99) #24
  br label %114

114:                                              ; preds = %104, %108
  %115 = phi i1 [ false, %108 ], [ true, %104 ]
  %116 = phi ptr [ %113, %108 ], [ %90, %104 ]
  br i1 %115, label %117, label %119

117:                                              ; preds = %89, %114
  %118 = load ptr, ptr %0, align 8, !tbaa !91
  br label %119

119:                                              ; preds = %86, %114, %117
  %120 = phi ptr [ %118, %117 ], [ %116, %114 ], [ %88, %86 ]
  ret ptr %120
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @refers_to_mem_for_reload_p(ptr nocapture noundef readonly %0) unnamed_addr #19 !prof !90 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %15 [
    i16 43, label %43
    i16 37, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !102
  %7 = icmp ugt i32 %6, 52
  br i1 %7, label %8, label %43

8:                                                ; preds = %4
  %9 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i32
  br label %43

15:                                               ; preds = %1
  %16 = and i32 %2, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !102
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %15
  %25 = zext i8 %21 to i64
  br label %26

26:                                               ; preds = %24, %41
  %27 = phi i64 [ %25, %24 ], [ %28, %41 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds i8, ptr %19, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !102
  %31 = icmp eq i8 %30, 101
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %22, i64 0, i64 %28
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = tail call fastcc i32 @refers_to_mem_for_reload_p(ptr noundef nonnull %34), !range !201
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26, %38
  %42 = icmp sgt i64 %27, 1
  br i1 %42, label %26, label %43, !llvm.loop !658

43:                                               ; preds = %38, %32, %41, %15, %4, %8, %1
  %44 = phi i32 [ 1, %1 ], [ 0, %4 ], [ %14, %8 ], [ 0, %15 ], [ 0, %41 ], [ 1, %32 ], [ 1, %38 ]
  ret i32 %44
}

declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #3

declare i32 @true_regnum(ptr noundef) local_unnamed_addr #3

declare i32 @rtx_renumbered_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #3

declare i32 @volatile_insn_p(ptr noundef) local_unnamed_addr #3

declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @regno_clobbered_p(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !90 {
  %5 = icmp ult i32 %0, 53
  br i1 %5, label %7, label %6, !prof !140

6:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7261, ptr noundef nonnull @.str.1) #24
  br label %7

7:                                                ; preds = %4, %6
  %8 = zext i32 %0 to i64
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !102
  %12 = zext i8 %11 to i32
  %13 = add i32 %12, %0
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 25
  br i1 %18, label %23, label %19, !prof !141

19:                                               ; preds = %7
  %20 = icmp eq i32 %3, 1
  %21 = icmp eq i32 %17, 23
  %22 = and i1 %20, %21
  br i1 %22, label %23, label %36, !prof !141

23:                                               ; preds = %19, %7
  %24 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !102
  %32 = icmp uge i32 %31, %0
  %33 = icmp ult i32 %31, %13
  %34 = select i1 %32, i1 %33, i1 false
  %35 = zext i1 %34 to i32
  br label %67

36:                                               ; preds = %19, %23
  %37 = icmp eq i32 %17, 15
  br i1 %37, label %38, label %67, !prof !141

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !102
  %41 = load i32, ptr %40, align 8, !tbaa !144
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = zext nneg i32 %41 to i64
  br label %45

45:                                               ; preds = %43, %65
  %46 = phi i64 [ %44, %43 ], [ %47, %65 ]
  %47 = add nsw i64 %46, -1
  %48 = getelementptr inbounds %struct.rtvec_def, ptr %40, i64 0, i32 1, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !91
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 25
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !102
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !102
  %62 = icmp uge i32 %61, %0
  %63 = icmp ult i32 %61, %13
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %67, label %65

65:                                               ; preds = %45, %59, %53
  %66 = icmp slt i64 %46, 2
  br i1 %66, label %67, label %45, !llvm.loop !146

67:                                               ; preds = %59, %65, %38, %36, %29
  %68 = phi i32 [ %35, %29 ], [ 0, %36 ], [ 0, %38 ], [ 0, %65 ], [ 1, %59 ]
  ret i32 %68
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_reload_to_stream(ptr noundef %0) local_unnamed_addr #9 !prof !90 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @stderr, align 8
  %4 = select i1 %2, ptr %3, ptr %0
  %5 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %140

7:                                                ; preds = %1, %134
  %8 = phi i64 [ %136, %134 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %9)
  %11 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !190
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef %19)
  %21 = load ptr, ptr %11, align 8, !tbaa !183
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %21, i32 noundef 24) #24
  %22 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %23

23:                                               ; preds = %14, %7
  %24 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !191
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef %32)
  %34 = load ptr, ptr %24, align 8, !tbaa !184
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %34, i32 noundef 24) #24
  %35 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %4)
  br label %36

36:                                               ; preds = %27, %23
  %37 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !180
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef %41)
  %43 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !185
  %45 = sext i32 %44 to i64
  %46 = shl i64 %45, 2
  %47 = call ptr @llvm.load.relative.i64(ptr @reltable.debug_reload_to_stream, i64 %46)
  %48 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 12
  %49 = load i32, ptr %48, align 8, !tbaa !186
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef %47, i32 noundef %49)
  %51 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 18
  %52 = load i8, ptr %51, align 8
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %36
  %56 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr %4)
  br label %57

57:                                               ; preds = %55, %36
  %58 = load i8, ptr %51, align 8
  %59 = and i8 %58, 8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 10, i64 1, ptr %4)
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 7
  %65 = load i32, ptr %64, align 4, !tbaa !192
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %65)
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i8, ptr %51, align 8
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 15, i64 1, ptr %4)
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i8, ptr %51, align 8
  %77 = and i8 %76, 4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 20, i64 1, ptr %4)
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 8
  %83 = load ptr, ptr %82, align 8, !tbaa !193
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 17, i64 1, ptr %4)
  %87 = load ptr, ptr %82, align 8, !tbaa !193
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %87, i32 noundef 24) #24
  br label %88

88:                                               ; preds = %85, %81
  %89 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !194
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 18, i64 1, ptr %4)
  %94 = load ptr, ptr %89, align 8, !tbaa !194
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %94, i32 noundef 24) #24
  br label %95

95:                                               ; preds = %92, %88
  %96 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 11
  %97 = load ptr, ptr %96, align 8, !tbaa !182
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %4)
  %101 = load ptr, ptr %96, align 8, !tbaa !182
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %101, i32 noundef 24) #24
  br label %102

102:                                              ; preds = %99, %95
  %103 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 13
  %104 = load i32, ptr %103, align 4, !tbaa !195
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.9, i32 noundef %104)
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi ptr [ @.str.22, %106 ], [ @.str.9, %102 ]
  %110 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 14
  %111 = load i32, ptr %110, align 8, !tbaa !196
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull %109, i32 noundef %111)
  br label %115

115:                                              ; preds = %113, %108
  %116 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 15
  %117 = load i32, ptr %116, align 4, !tbaa !197
  %118 = icmp eq i32 %117, 2956
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = zext i32 %117 to i64
  %121 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !659
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef %122)
  br label %124

124:                                              ; preds = %119, %115
  %125 = phi ptr [ @.str.22, %119 ], [ @.str.9, %115 ]
  %126 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %8, i32 16
  %127 = load i32, ptr %126, align 8, !tbaa !198
  %128 = icmp eq i32 %127, 2956
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = zext i32 %127 to i64
  %131 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !659
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull %125, ptr noundef %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = tail call i32 @fputc(i32 10, ptr %4)
  %136 = add nuw nsw i64 %8, 1
  %137 = load i32, ptr @n_reloads, align 4, !tbaa !106
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %7, label %140, !llvm.loop !660

140:                                              ; preds = %134, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_reload() local_unnamed_addr #9 !prof !90 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !91
  tail call void @debug_reload_to_stream(ptr noundef %1)
  ret void
}

declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @make_memloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !90 {
  %3 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = tail call ptr @eliminate_regs(ptr noundef %6, i32 noundef 0, ptr noundef null) #24
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = tail call zeroext i8 @rtx_varies_p(ptr noundef %9, i8 noundef zeroext 0) #24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @copy_rtx(ptr noundef %9) #24
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %9, %2 ]
  %16 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = tail call ptr @replace_equiv_address_nv(ptr noundef %18, ptr noundef %15) #24
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = tail call ptr @adjust_address_1(ptr noundef %19, i32 noundef %22, i64 noundef 0, i32 noundef 0, i32 noundef 1) #24
  %24 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 %4
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = tail call ptr @copy_rtx(ptr noundef %23) #24
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi ptr [ %29, %28 ], [ %23, %14 ]
  ret ptr %31
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @push_reg_equiv_alt_mem(i32 noundef %0, ptr noundef %1) unnamed_addr #9 !prof !90 {
  %3 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !91
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %12

8:                                                ; preds = %12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12, !llvm.loop !661

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = tail call i32 @rtx_equal_p(ptr noundef %15, ptr noundef %1) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %8, label %25

18:                                               ; preds = %8, %2
  %19 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !91
  %20 = getelementptr inbounds ptr, ptr %19, i64 %4
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = tail call ptr @alloc_EXPR_LIST(i32 noundef 3, ptr noundef %1, ptr noundef %21) #24
  %23 = load ptr, ptr @reg_equiv_alt_mem_list, align 8, !tbaa !91
  %24 = getelementptr inbounds ptr, ptr %23, i64 %4
  store ptr %22, ptr %24, align 8, !tbaa !91
  br label %25

25:                                               ; preds = %12, %18
  ret void
}

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_reloads_subreg_address(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #9 !prof !90 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !102
  %12 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = icmp eq ptr %15, null
  br i1 %16, label %237, label %17

17:                                               ; preds = %6
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %21 = getelementptr inbounds ptr, ptr %20, i64 %13
  %22 = load ptr, ptr %21, align 8, !tbaa !91
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = tail call i32 @offsettable_memref_p(ptr noundef %27) #24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %19
  br label %31

31:                                               ; preds = %30, %24, %17
  %32 = phi i1 [ true, %17 ], [ true, %30 ], [ false, %24 ]
  %33 = load i32, ptr @num_not_at_initial_offset, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %237

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %37 = load ptr, ptr %8, align 8, !tbaa !102
  %38 = tail call fastcc ptr @make_memloc(ptr noundef %37, i32 noundef %11)
  store ptr %38, ptr %7, align 8, !tbaa !91
  br i1 %32, label %45, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = tail call i32 @rtx_equal_p(ptr noundef %38, ptr noundef %42) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %235

45:                                               ; preds = %39, %36
  %46 = load i32, ptr %0, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !102
  %52 = zext i8 %51 to i32
  %53 = load ptr, ptr %8, align 8, !tbaa !102
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !102
  %60 = load ptr, ptr %7, align 8, !tbaa !91
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !102
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  %65 = sext i32 %62 to i64
  %66 = tail call ptr @plus_constant(ptr noundef %64, i64 noundef %65) #24
  %67 = load ptr, ptr %7, align 8, !tbaa !91
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  store ptr %66, ptr %68, align 8, !tbaa !102
  %69 = load i32, ptr %0, align 8
  %70 = and i32 %69, 16711680
  %71 = load i32, ptr %67, align 8
  %72 = and i32 %71, -16711681
  %73 = or disjoint i32 %72, %70
  store i32 %73, ptr %67, align 8
  %74 = load ptr, ptr %7, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !102
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %45
  %79 = getelementptr inbounds %struct.mem_attrs, ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !662
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call ptr @plus_constant(ptr noundef nonnull %80, i64 noundef %65) #24
  tail call void @set_mem_offset(ptr noundef %74, ptr noundef %83) #24
  br label %84

84:                                               ; preds = %45, %82, %78
  %85 = load ptr, ptr %7, align 8, !tbaa !91
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !102
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.mem_attrs, ptr %87, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !663
  %92 = icmp eq ptr %91, null
  br i1 %92, label %132, label %105

93:                                               ; preds = %84
  %94 = load i32, ptr %85, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %132, label %98

98:                                               ; preds = %93
  %99 = zext nneg i32 %96 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !102
  %102 = zext i8 %101 to i64
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %102) #24
  %104 = icmp eq ptr %103, null
  br i1 %104, label %132, label %105

105:                                              ; preds = %98, %89
  %106 = load ptr, ptr %7, align 8, !tbaa !91
  %107 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !102
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.mem_attrs, ptr %108, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !663
  br label %123

113:                                              ; preds = %105
  %114 = load i32, ptr %106, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = icmp ne i32 %116, 1
  tail call void @llvm.assume(i1 %117)
  %118 = zext nneg i32 %116 to i64
  %119 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !102
  %121 = zext i8 %120 to i64
  %122 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %121) #24
  br label %123

123:                                              ; preds = %113, %110
  %124 = phi ptr [ %112, %110 ], [ %122, %113 ]
  %125 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !102
  %127 = zext i8 %51 to i64
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %7, align 8, !tbaa !91
  %131 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %127) #24
  tail call void @set_mem_size(ptr noundef %130, ptr noundef %131) #24
  br label %132

132:                                              ; preds = %98, %93, %129, %123, %89
  %133 = icmp ugt i8 %51, %59
  br i1 %133, label %134, label %171

134:                                              ; preds = %132
  %135 = load ptr, ptr %7, align 8, !tbaa !91
  %136 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !102
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 49
  br i1 %140, label %141, label %156

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %143 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1, i32 0, i32 0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !102
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 65535
  %147 = icmp eq i32 %146, 30
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !102
  %151 = zext i8 %51 to i64
  %152 = srem i64 %150, %151
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %235

154:                                              ; preds = %148, %141
  %155 = load ptr, ptr %142, align 8, !tbaa !102
  br label %156

156:                                              ; preds = %154, %134
  %157 = phi ptr [ %155, %154 ], [ %137, %134 ]
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 37
  br i1 %160, label %161, label %235

161:                                              ; preds = %156
  %162 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !664
  %163 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !102
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %162, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !102
  %168 = zext i8 %167 to i32
  %169 = shl nuw nsw i32 %52, 3
  %170 = icmp ugt i32 %169, %168
  br i1 %170, label %235, label %171

171:                                              ; preds = %161, %132
  %172 = load ptr, ptr %7, align 8, !tbaa !91
  %173 = load i32, ptr %172, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !102
  %178 = call fastcc i32 @find_reloads_address(i32 noundef %175, ptr noundef nonnull %7, ptr noundef %177, ptr noundef nonnull %176, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  %179 = icmp eq i32 %62, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load ptr, ptr %7, align 8, !tbaa !91
  %182 = call i32 @rtx_equal_p(ptr noundef %181, ptr noundef %60) #24
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load ptr, ptr %7, align 8, !tbaa !91
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %11, ptr noundef %185)
  br label %186

186:                                              ; preds = %184, %180, %171
  %187 = icmp eq i32 %178, 0
  br i1 %187, label %188, label %218

188:                                              ; preds = %186
  %189 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %190 = getelementptr inbounds ptr, ptr %189, i64 %13
  %191 = load ptr, ptr %190, align 8, !tbaa !91
  %192 = icmp eq ptr %191, null
  br i1 %192, label %218, label %193

193:                                              ; preds = %188
  %194 = load i32, ptr %0, align 8
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !102
  %199 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1, i32 0, i32 0, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !102
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.mem_attrs, ptr %200, i64 0, i32 5
  %204 = load i8, ptr %203, align 8, !tbaa !130
  br label %205

205:                                              ; preds = %193, %202
  %206 = phi i8 [ %204, %202 ], [ 0, %193 ]
  %207 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !132
  %208 = call zeroext i8 %207(i32 noundef %196, ptr noundef %198, i8 noundef zeroext 1, i8 noundef zeroext %206) #24
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load ptr, ptr %7, align 8, !tbaa !91
  %212 = getelementptr inbounds %struct.rtx_def, ptr %211, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !102
  %214 = load i32, ptr %213, align 8
  %215 = lshr i32 %214, 16
  %216 = and i32 %215, 255
  %217 = call i32 @push_reload(ptr noundef nonnull %213, ptr noundef null, ptr noundef nonnull %212, ptr noundef null, i32 noundef 13, i32 noundef %216, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef %3)
  br label %218

218:                                              ; preds = %210, %205, %188, %186
  %219 = load i32, ptr @replace_reloads, align 4, !tbaa !106
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %218
  %222 = sext i32 %2 to i64
  %223 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !91
  %225 = icmp eq ptr %224, %0
  br i1 %225, label %233, label %226

226:                                              ; preds = %221
  %227 = load ptr, ptr %8, align 8, !tbaa !102
  %228 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %227) #24
  %229 = call ptr @emit_insn_before(ptr noundef %228, ptr noundef %5) #24
  %230 = load i32, ptr %229, align 8
  %231 = and i32 %230, -16711681
  %232 = or disjoint i32 %231, 917504
  store i32 %232, ptr %229, align 8
  br label %233

233:                                              ; preds = %226, %221, %218
  %234 = load ptr, ptr %7, align 8, !tbaa !91
  br label %235

235:                                              ; preds = %233, %156, %161, %148, %39
  %236 = phi ptr [ %0, %39 ], [ %234, %233 ], [ %0, %156 ], [ %0, %161 ], [ %0, %148 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %237

237:                                              ; preds = %235, %6, %31
  %238 = phi ptr [ %0, %31 ], [ %0, %6 ], [ %236, %235 ]
  ret ptr %238
}

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_varies_p(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @find_reloads_address_part(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #9 !prof !90 {
  %8 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !91
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !106
  %14 = icmp eq i32 %13, 9
  br i1 %14, label %15, label %28

15:                                               ; preds = %7
  %16 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %8, align 8, !tbaa !91
  %20 = tail call i32 @ix86_preferred_reload_class(ptr noundef %19, i32 noundef %2) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %15
  %23 = load ptr, ptr %8, align 8, !tbaa !91
  %24 = tail call ptr @force_const_mem(i32 noundef %3, ptr noundef %23) #24
  store ptr %24, ptr %8, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %8, ptr noundef %26, ptr noundef nonnull %25, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null)
  br label %70

28:                                               ; preds = %18, %7
  %29 = load ptr, ptr %8, align 8, !tbaa !91
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !106
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %70

42:                                               ; preds = %33
  %43 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %35) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %8, align 8, !tbaa !91
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !102
  %49 = tail call i32 @ix86_preferred_reload_class(ptr noundef %48, i32 noundef %2) #24
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %45, %42
  %52 = load ptr, ptr %8, align 8, !tbaa !91
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !102
  %58 = tail call ptr @force_const_mem(i32 noundef %55, ptr noundef %57) #24
  %59 = load ptr, ptr %8, align 8, !tbaa !91
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  %65 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %62, ptr noundef %64, ptr noundef %58) #24
  store ptr %65, ptr %8, align 8, !tbaa !91
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !102
  %69 = tail call fastcc i32 @find_reloads_address(i32 noundef %3, ptr noundef nonnull %66, ptr noundef %68, ptr noundef nonnull %67, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null)
  br label %70

70:                                               ; preds = %28, %33, %45, %51, %22
  %71 = load ptr, ptr %8, align 8, !tbaa !91
  %72 = call i32 @push_reload(ptr noundef %71, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @subst_reg_equivs(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !673 !PGOFuncName !674 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = trunc i32 %3 to i16
  switch i16 %5, label %47 [
    i16 121, label %69
    i16 30, label %69
    i16 35, label %69
    i16 32, label %69
    i16 31, label %69
    i16 33, label %69
    i16 45, label %69
    i16 44, label %69
    i16 36, label %69
    i16 46, label %69
    i16 37, label %6
    i16 49, label %36
  ], !prof !675

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !102
  %9 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !676

14:                                               ; preds = %6
  store i1 true, ptr @subst_reg_equivs_changed, align 4
  br label %69

15:                                               ; preds = %6
  %16 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %17 = getelementptr inbounds ptr, ptr %16, i64 %10
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = icmp ne ptr %18, null
  %20 = load i32, ptr @num_not_at_initial_offset, align 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false, !prof !677
  br i1 %22, label %23, label %69, !prof !677

23:                                               ; preds = %15
  %24 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %0, i32 noundef %8)
  %25 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %26 = getelementptr inbounds ptr, ptr %25, i64 %10
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = tail call i32 @rtx_equal_p(ptr noundef %24, ptr noundef %27) #24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %23
  store i1 true, ptr @subst_reg_equivs_changed, align 4
  %31 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %0) #24
  %32 = tail call ptr @emit_insn_before(ptr noundef %31, ptr noundef %1) #24
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, -16711681
  %35 = or disjoint i32 %34, 917504
  store i32 %35, ptr %32, align 8
  br label %69

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !91
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %47, !prof !678

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %69, label %47

47:                                               ; preds = %41, %2, %36
  %48 = zext nneg i32 %4 to i64
  %49 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %48
  %52 = load i8, ptr %51, align 1, !tbaa !102
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %69, label %54, !prof !679

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %56 = zext i8 %52 to i64
  br label %57

57:                                               ; preds = %54, %67
  %58 = phi i64 [ %56, %54 ], [ %59, %67 ]
  %59 = add nsw i64 %58, -1
  %60 = getelementptr inbounds i8, ptr %50, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !102
  %62 = icmp eq i8 %61, 101
  br i1 %62, label %63, label %67, !prof !680

63:                                               ; preds = %57
  %64 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %59
  %65 = load ptr, ptr %64, align 8, !tbaa !102
  %66 = tail call fastcc ptr @subst_reg_equivs(ptr noundef %65, ptr noundef %1)
  store ptr %66, ptr %64, align 8, !tbaa !102
  br label %67

67:                                               ; preds = %57, %63
  %68 = icmp sgt i64 %58, 1
  br i1 %68, label %57, label %69, !prof !681, !llvm.loop !682

69:                                               ; preds = %67, %47, %14, %15, %30, %23, %2, %2, %2, %2, %2, %2, %2, %2, %2, %41, %2
  %70 = phi ptr [ %0, %2 ], [ %0, %41 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %12, %14 ], [ %24, %30 ], [ %0, %15 ], [ %0, %23 ], [ %0, %47 ], [ %0, %67 ]
  ret ptr %70
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @find_reloads_address_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #9 !prof !90 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  br label %11

11:                                               ; preds = %356, %348, %340, %336, %318, %291, %272, %132, %124, %113, %105, %7
  %12 = phi ptr [ %0, %7 ], [ %26, %105 ], [ %26, %113 ], [ %26, %124 ], [ %24, %132 ], [ %26, %272 ], [ %24, %291 ], [ %24, %318 ], [ %26, %336 ], [ %26, %340 ], [ %26, %348 ], [ %24, %356 ]
  %13 = phi i32 [ %1, %7 ], [ 0, %105 ], [ 1, %113 ], [ 0, %124 ], [ 0, %132 ], [ 1, %272 ], [ 0, %291 ], [ 1, %318 ], [ 0, %336 ], [ 1, %340 ], [ 0, %348 ], [ 0, %356 ]
  %14 = phi ptr [ %2, %7 ], [ %110, %105 ], [ %118, %113 ], [ %126, %124 ], [ %134, %132 ], [ %274, %272 ], [ %293, %291 ], [ %320, %318 ], [ %338, %336 ], [ %345, %340 ], [ %353, %348 ], [ %361, %356 ]
  %15 = phi i32 [ poison, %7 ], [ %111, %105 ], [ %119, %113 ], [ %127, %124 ], [ %135, %132 ], [ %275, %272 ], [ %294, %291 ], [ %321, %318 ], [ %339, %336 ], [ %346, %340 ], [ %354, %348 ], [ %362, %356 ]
  %16 = phi i1 [ false, %7 ], [ true, %105 ], [ true, %113 ], [ true, %124 ], [ true, %132 ], [ true, %272 ], [ true, %291 ], [ true, %318 ], [ true, %336 ], [ true, %340 ], [ true, %348 ], [ true, %356 ]
  store ptr %12, ptr %8, align 8, !tbaa !91
  %17 = load i32, ptr %12, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %13, 1
  %20 = select i1 %19, i32 11, i32 13
  %21 = trunc i32 %17 to i16
  switch i16 %21, label %976 [
    i16 49, label %22
    i16 79, label %363
    i16 78, label %363
    i16 77, label %519
    i16 76, label %519
    i16 75, label %519
    i16 74, label %519
    i16 100, label %718
    i16 98, label %718
    i16 99, label %718
    i16 43, label %728
    i16 37, label %744
    i16 39, label %869
  ]

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = load i32, ptr %24, align 8
  %28 = and i32 %27, 65535
  %29 = load i32, ptr %26, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %28, 39
  br i1 %31, label %32, label %53

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !102
  %41 = icmp ult i32 %40, 53
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, ptr @word_mode, align 4, !tbaa !106
  %44 = lshr i32 %35, 16
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load i32, ptr %46, align 8, !tbaa !102
  %48 = lshr i32 %27, 16
  %49 = and i32 %48, 255
  %50 = tail call i32 @subreg_regno_offset(i32 noundef %40, i32 noundef %45, i32 noundef %47, i32 noundef %49) #24
  %51 = add i32 %50, %40
  %52 = tail call ptr @gen_rtx_REG(i32 noundef %43, i32 noundef %51) #24
  br label %53

53:                                               ; preds = %32, %38, %42, %22
  %54 = phi ptr [ %52, %42 ], [ %34, %38 ], [ %34, %32 ], [ %24, %22 ]
  %55 = phi i32 [ 37, %42 ], [ 37, %38 ], [ %36, %32 ], [ %28, %22 ]
  %56 = load i32, ptr %26, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 39
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !102
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !102
  %68 = icmp ult i32 %67, 53
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = lshr i32 %62, 16
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load i32, ptr %72, align 8, !tbaa !102
  %74 = lshr i32 %56, 16
  %75 = and i32 %74, 255
  %76 = tail call i32 @subreg_regno_offset(i32 noundef %67, i32 noundef %71, i32 noundef %73, i32 noundef %75) #24
  %77 = add i32 %76, %67
  %78 = tail call ptr @gen_rtx_REG(i32 noundef %71, i32 noundef %77) #24
  br label %79

79:                                               ; preds = %59, %65, %69, %53
  %80 = phi ptr [ %78, %69 ], [ %61, %65 ], [ %61, %59 ], [ %26, %53 ]
  %81 = phi i32 [ 37, %69 ], [ 37, %65 ], [ %63, %59 ], [ %30, %53 ]
  %82 = freeze i32 %81
  br i1 %19, label %83, label %101

83:                                               ; preds = %79
  %84 = load ptr, ptr %8, align 8, !tbaa !91
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !102
  %90 = icmp eq i32 %4, 3
  %91 = icmp eq i32 %4, 5
  %92 = select i1 %91, i32 6, i32 %4
  %93 = select i1 %90, i32 4, i32 %92
  %94 = tail call fastcc i32 @find_reloads_address(i32 noundef %87, ptr noundef %14, ptr noundef %89, ptr noundef nonnull %88, i32 noundef %3, i32 noundef %93, i32 noundef %5, ptr noundef %6)
  %95 = load ptr, ptr %14, align 8, !tbaa !91
  %96 = load ptr, ptr %8, align 8, !tbaa !91
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = tail call i32 @push_reload(ptr noundef %95, ptr noundef null, ptr noundef nonnull %14, ptr noundef null, i32 noundef %20, i32 noundef %99, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  br label %999

101:                                              ; preds = %79
  %102 = icmp eq i32 %82, 43
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %104 = trunc i32 %55 to i16
  switch i16 %104, label %112 [
    i16 100, label %105
    i16 99, label %105
    i16 98, label %105
    i16 52, label %105
    i16 43, label %113
  ]

105:                                              ; preds = %103, %103, %103, %103, %101
  %106 = load ptr, ptr %8, align 8, !tbaa !91
  %107 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %108 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %24, i32 noundef 1, ptr noundef nonnull %107, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  %109 = load ptr, ptr %8, align 8, !tbaa !91
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  %111 = select i1 %16, i32 %15, i32 0
  br label %11

112:                                              ; preds = %103
  switch i32 %82, label %120 [
    i32 100, label %113
    i32 99, label %113
    i32 98, label %113
    i32 52, label %113
  ]

113:                                              ; preds = %112, %112, %112, %103, %112
  %114 = load ptr, ptr %8, align 8, !tbaa !91
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %24, i32 noundef 0, ptr noundef nonnull %115, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  %117 = load ptr, ptr %8, align 8, !tbaa !91
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = select i1 %16, i32 %15, i32 0
  br label %11

120:                                              ; preds = %112
  %121 = and i32 %55, 65534
  %122 = icmp eq i32 %121, 44
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  switch i16 %104, label %128 [
    i16 35, label %124
    i16 30, label %124
  ]

124:                                              ; preds = %123, %123, %120
  %125 = load ptr, ptr %8, align 8, !tbaa !91
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = select i1 %16, i32 %15, i32 0
  br label %11

128:                                              ; preds = %123
  %129 = and i32 %82, 65534
  %130 = icmp eq i32 %129, 44
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  switch i32 %82, label %136 [
    i32 35, label %132
    i32 30, label %132
  ]

132:                                              ; preds = %131, %131, %128
  %133 = load ptr, ptr %8, align 8, !tbaa !91
  %134 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1
  %135 = select i1 %16, i32 %15, i32 0
  br label %11

136:                                              ; preds = %131
  %137 = icmp eq i32 %55, 37
  %138 = icmp eq i32 %82, 37
  %139 = and i1 %137, %138
  br i1 %139, label %140, label %347

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !102
  %143 = icmp ult i32 %142, 7
  br i1 %143, label %158, label %144

144:                                              ; preds = %140
  %145 = zext i32 %142 to i64
  %146 = add nsw i64 %145, -37
  %147 = icmp ult i64 %146, 8
  br i1 %147, label %158, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %150 = getelementptr inbounds i16, ptr %149, i64 %145
  %151 = load i16, ptr %150, align 2, !tbaa !142
  %152 = icmp ult i16 %151, 7
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = sext i16 %151 to i64
  %155 = and i64 %154, 4294967295
  %156 = add nsw i64 %155, -37
  %157 = icmp ult i64 %156, 8
  br i1 %157, label %158, label %194

158:                                              ; preds = %153, %148, %144, %140
  %159 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !102
  %161 = icmp ugt i32 %160, 52
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %164 = zext i32 %160 to i64
  %165 = getelementptr inbounds i16, ptr %163, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !142
  %167 = sext i16 %166 to i32
  %168 = icmp slt i16 %166, 0
  %169 = select i1 %168, i32 %160, i32 %167
  br label %170

170:                                              ; preds = %162, %158
  %171 = phi i32 [ %160, %158 ], [ %169, %162 ]
  %172 = icmp ult i32 %171, 8
  br i1 %172, label %191, label %173

173:                                              ; preds = %170
  %174 = zext i32 %171 to i64
  %175 = add nsw i64 %174, -37
  %176 = icmp ult i64 %175, 8
  %177 = and i32 %171, -5
  %178 = icmp eq i32 %177, 16
  %179 = or i1 %178, %176
  br i1 %179, label %191, label %180

180:                                              ; preds = %173
  %181 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %182 = getelementptr inbounds i16, ptr %181, i64 %174
  %183 = load i16, ptr %182, align 2, !tbaa !142
  %184 = icmp ult i16 %183, 8
  br i1 %184, label %191, label %185

185:                                              ; preds = %180
  %186 = sext i16 %183 to i64
  %187 = and i64 %186, 4294967295
  %188 = add nsw i64 %187, -37
  %189 = icmp ult i64 %188, 8
  %190 = zext i1 %189 to i8
  br label %191

191:                                              ; preds = %170, %173, %180, %185
  %192 = phi i8 [ 1, %173 ], [ 1, %170 ], [ 1, %180 ], [ %190, %185 ]
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %999

194:                                              ; preds = %153, %191
  %195 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !102
  %197 = icmp ult i32 %196, 7
  br i1 %197, label %212, label %198

198:                                              ; preds = %194
  %199 = zext i32 %196 to i64
  %200 = add nsw i64 %199, -37
  %201 = icmp ult i64 %200, 8
  br i1 %201, label %212, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %204 = getelementptr inbounds i16, ptr %203, i64 %199
  %205 = load i16, ptr %204, align 2, !tbaa !142
  %206 = icmp ult i16 %205, 7
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = sext i16 %205 to i64
  %209 = and i64 %208, 4294967295
  %210 = add nsw i64 %209, -37
  %211 = icmp ult i64 %210, 8
  br i1 %211, label %212, label %242

212:                                              ; preds = %207, %202, %198, %194
  %213 = icmp ugt i32 %142, 52
  br i1 %213, label %214, label %222

214:                                              ; preds = %212
  %215 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %216 = zext i32 %142 to i64
  %217 = getelementptr inbounds i16, ptr %215, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !142
  %219 = sext i16 %218 to i32
  %220 = icmp slt i16 %218, 0
  %221 = select i1 %220, i32 %142, i32 %219
  br label %222

222:                                              ; preds = %214, %212
  %223 = phi i32 [ %142, %212 ], [ %221, %214 ]
  %224 = icmp ult i32 %223, 8
  br i1 %224, label %999, label %225

225:                                              ; preds = %222
  %226 = zext i32 %223 to i64
  %227 = add nsw i64 %226, -37
  %228 = icmp ult i64 %227, 8
  %229 = and i32 %223, -5
  %230 = icmp eq i32 %229, 16
  %231 = or i1 %230, %228
  br i1 %231, label %999, label %232

232:                                              ; preds = %225
  %233 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %234 = getelementptr inbounds i16, ptr %233, i64 %226
  %235 = load i16, ptr %234, align 2, !tbaa !142
  %236 = icmp ult i16 %235, 8
  br i1 %236, label %999, label %237

237:                                              ; preds = %232
  %238 = sext i16 %235 to i64
  %239 = and i64 %238, 4294967295
  %240 = add nsw i64 %239, -45
  %241 = icmp ult i64 %240, -8
  br i1 %241, label %242, label %999

242:                                              ; preds = %207, %237
  %243 = icmp ugt i32 %196, 52
  br i1 %243, label %244, label %252

244:                                              ; preds = %242
  %245 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %246 = zext i32 %196 to i64
  %247 = getelementptr inbounds i16, ptr %245, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !142
  %249 = sext i16 %248 to i32
  %250 = icmp slt i16 %248, 0
  %251 = select i1 %250, i32 %196, i32 %249
  br label %252

252:                                              ; preds = %244, %242
  %253 = phi i32 [ %196, %242 ], [ %251, %244 ]
  %254 = icmp ult i32 %253, 8
  br i1 %254, label %272, label %255

255:                                              ; preds = %252
  %256 = zext i32 %253 to i64
  %257 = add nsw i64 %256, -37
  %258 = icmp ult i64 %257, 8
  %259 = and i32 %253, -5
  %260 = icmp eq i32 %259, 16
  %261 = or i1 %260, %258
  br i1 %261, label %272, label %262

262:                                              ; preds = %255
  %263 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %264 = getelementptr inbounds i16, ptr %263, i64 %256
  %265 = load i16, ptr %264, align 2, !tbaa !142
  %266 = icmp ult i16 %265, 8
  br i1 %266, label %272, label %267

267:                                              ; preds = %262
  %268 = sext i16 %265 to i64
  %269 = and i64 %268, 4294967295
  %270 = add nsw i64 %269, -45
  %271 = icmp ult i64 %270, -8
  br i1 %271, label %276, label %272

272:                                              ; preds = %255, %252, %262, %267
  %273 = load ptr, ptr %8, align 8, !tbaa !91
  %274 = getelementptr inbounds %struct.rtx_def, ptr %273, i64 0, i32 1, i32 0, i32 0, i64 1
  %275 = select i1 %16, i32 %15, i32 0
  br label %11

276:                                              ; preds = %267
  br i1 %143, label %291, label %277

277:                                              ; preds = %276
  %278 = zext i32 %142 to i64
  %279 = add nsw i64 %278, -37
  %280 = icmp ult i64 %279, 8
  br i1 %280, label %291, label %281

281:                                              ; preds = %277
  %282 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %283 = getelementptr inbounds i16, ptr %282, i64 %278
  %284 = load i16, ptr %283, align 2, !tbaa !142
  %285 = icmp ult i16 %284, 7
  br i1 %285, label %291, label %286

286:                                              ; preds = %281
  %287 = sext i16 %284 to i64
  %288 = and i64 %287, 4294967295
  %289 = add nsw i64 %288, -37
  %290 = icmp ult i64 %289, 8
  br i1 %290, label %291, label %295

291:                                              ; preds = %286, %281, %277, %276
  %292 = load ptr, ptr %8, align 8, !tbaa !91
  %293 = getelementptr inbounds %struct.rtx_def, ptr %292, i64 0, i32 1
  %294 = select i1 %16, i32 %15, i32 0
  br label %11

295:                                              ; preds = %286
  %296 = icmp ugt i32 %142, 52
  %297 = sext i16 %284 to i32
  %298 = icmp slt i16 %284, 0
  %299 = select i1 %298, i32 %142, i32 %297
  %300 = select i1 %296, i32 %299, i32 %142
  %301 = icmp ult i32 %300, 8
  br i1 %301, label %318, label %302

302:                                              ; preds = %295
  %303 = zext i32 %300 to i64
  %304 = add nsw i64 %303, -37
  %305 = icmp ult i64 %304, 8
  %306 = and i32 %300, -5
  %307 = icmp eq i32 %306, 16
  %308 = or i1 %307, %305
  br i1 %308, label %318, label %309

309:                                              ; preds = %302
  %310 = getelementptr inbounds i16, ptr %282, i64 %303
  %311 = load i16, ptr %310, align 2, !tbaa !142
  %312 = icmp ult i16 %311, 8
  br i1 %312, label %318, label %313

313:                                              ; preds = %309
  %314 = sext i16 %311 to i64
  %315 = and i64 %314, 4294967295
  %316 = add nsw i64 %315, -45
  %317 = icmp ult i64 %316, -8
  br i1 %317, label %322, label %318

318:                                              ; preds = %302, %295, %309, %313
  %319 = load ptr, ptr %8, align 8, !tbaa !91
  %320 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %321 = select i1 %16, i32 %15, i32 0
  br label %11

322:                                              ; preds = %313
  br i1 %197, label %336, label %323

323:                                              ; preds = %322
  %324 = zext i32 %196 to i64
  %325 = add nsw i64 %324, -37
  %326 = icmp ult i64 %325, 8
  br i1 %326, label %336, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds i16, ptr %282, i64 %324
  %329 = load i16, ptr %328, align 2, !tbaa !142
  %330 = icmp ult i16 %329, 7
  br i1 %330, label %336, label %331

331:                                              ; preds = %327
  %332 = sext i16 %329 to i64
  %333 = and i64 %332, 4294967295
  %334 = add nsw i64 %333, -37
  %335 = icmp ult i64 %334, 8
  br i1 %335, label %336, label %340

336:                                              ; preds = %331, %327, %323, %322
  %337 = load ptr, ptr %8, align 8, !tbaa !91
  %338 = getelementptr inbounds %struct.rtx_def, ptr %337, i64 0, i32 1, i32 0, i32 0, i64 1
  %339 = select i1 %16, i32 %15, i32 0
  br label %11

340:                                              ; preds = %331
  %341 = load ptr, ptr %8, align 8, !tbaa !91
  %342 = getelementptr inbounds %struct.rtx_def, ptr %341, i64 0, i32 1
  %343 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %24, i32 noundef 0, ptr noundef nonnull %342, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  %344 = load ptr, ptr %8, align 8, !tbaa !91
  %345 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1, i32 0, i32 0, i64 1
  %346 = select i1 %16, i32 %15, i32 0
  br label %11

347:                                              ; preds = %136
  br i1 %137, label %348, label %355

348:                                              ; preds = %347
  %349 = load ptr, ptr %8, align 8, !tbaa !91
  %350 = getelementptr inbounds %struct.rtx_def, ptr %349, i64 0, i32 1
  %351 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %24, i32 noundef 1, ptr noundef nonnull %350, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  %352 = load ptr, ptr %8, align 8, !tbaa !91
  %353 = getelementptr inbounds %struct.rtx_def, ptr %352, i64 0, i32 1, i32 0, i32 0, i64 1
  %354 = select i1 %16, i32 %15, i32 0
  br label %11

355:                                              ; preds = %347
  br i1 %138, label %356, label %999

356:                                              ; preds = %355
  %357 = load ptr, ptr %8, align 8, !tbaa !91
  %358 = getelementptr inbounds %struct.rtx_def, ptr %357, i64 0, i32 1, i32 0, i32 0, i64 1
  %359 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %26, i32 noundef 1, ptr noundef nonnull %358, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  %360 = load ptr, ptr %8, align 8, !tbaa !91
  %361 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1
  %362 = select i1 %16, i32 %15, i32 0
  br label %11

363:                                              ; preds = %11, %11
  %364 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %365 = load ptr, ptr %364, align 8, !tbaa !102
  %366 = load i32, ptr %365, align 8
  %367 = and i32 %366, 65535
  %368 = add nsw i32 %367, -49
  %369 = icmp ult i32 %368, 2
  br i1 %369, label %370, label %999

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !102
  %373 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !102
  %375 = icmp eq ptr %372, %374
  br i1 %375, label %377, label %376

376:                                              ; preds = %370
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5673, ptr noundef nonnull @.str.1) #24
  br label %377

377:                                              ; preds = %370, %376
  %378 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1, i32 0, i32 0, i64 1
  %379 = load ptr, ptr %378, align 8, !tbaa !102
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 65535
  %382 = trunc i32 %380 to i16
  switch i16 %382, label %407 [
    i16 37, label %383
    i16 49, label %405
  ]

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.rtx_def, ptr %379, i64 0, i32 1
  %385 = load i32, ptr %384, align 8, !tbaa !102
  %386 = icmp ult i32 %385, 7
  br i1 %386, label %403, label %387

387:                                              ; preds = %383
  %388 = zext i32 %385 to i64
  %389 = add nsw i64 %388, -37
  %390 = icmp ult i64 %389, 8
  br i1 %390, label %403, label %391

391:                                              ; preds = %387
  %392 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %393 = getelementptr inbounds i16, ptr %392, i64 %388
  %394 = load i16, ptr %393, align 2, !tbaa !142
  %395 = icmp ult i16 %394, 7
  br i1 %395, label %403, label %396

396:                                              ; preds = %391
  %397 = sext i16 %394 to i64
  %398 = and i64 %397, 4294967295
  %399 = add nsw i64 %398, -45
  %400 = icmp ult i64 %399, -8
  %401 = icmp eq i32 %381, 49
  %402 = or i1 %401, %400
  br i1 %402, label %405, label %407

403:                                              ; preds = %391, %387, %383
  %404 = icmp eq i32 %381, 49
  br i1 %404, label %405, label %407

405:                                              ; preds = %377, %396, %403
  %406 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %379, i32 noundef 1, ptr noundef nonnull %378, i32 noundef %3, i32 noundef 9, i32 noundef %5, ptr noundef %6)
  br label %407

407:                                              ; preds = %396, %377, %405, %403
  %408 = load ptr, ptr %373, align 8, !tbaa !102
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 37
  br i1 %411, label %413, label %412

412:                                              ; preds = %407
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5695, ptr noundef nonnull @.str.1) #24
  br label %413

413:                                              ; preds = %407, %412
  %414 = load ptr, ptr %373, align 8, !tbaa !102
  %415 = getelementptr inbounds %struct.rtx_def, ptr %414, i64 0, i32 1
  %416 = load i32, ptr %415, align 8, !tbaa !102
  %417 = icmp slt i32 %416, 53
  br i1 %417, label %425, label %418

418:                                              ; preds = %413
  %419 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %420 = zext nneg i32 %416 to i64
  %421 = getelementptr inbounds ptr, ptr %419, i64 %420
  %422 = load ptr, ptr %421, align 8, !tbaa !91
  %423 = icmp eq ptr %422, null
  br i1 %423, label %425, label %424

424:                                              ; preds = %418
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5702, ptr noundef nonnull @.str.1) #24
  br label %425

425:                                              ; preds = %413, %418, %424
  %426 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %427 = sext i32 %416 to i64
  %428 = getelementptr inbounds ptr, ptr %426, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !91
  %430 = icmp eq ptr %429, null
  br i1 %430, label %476, label %431

431:                                              ; preds = %425
  %432 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %433 = getelementptr inbounds ptr, ptr %432, i64 %427
  %434 = load ptr, ptr %433, align 8, !tbaa !91
  %435 = icmp ne ptr %434, null
  %436 = load i32, ptr @num_not_at_initial_offset, align 4
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %435, i1 true, i1 %437
  br i1 %438, label %439, label %476

439:                                              ; preds = %431
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  %440 = load ptr, ptr %8, align 8, !tbaa !91
  %441 = getelementptr inbounds %struct.rtx_def, ptr %440, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !102
  %443 = tail call fastcc ptr @make_memloc(ptr noundef %442, i32 noundef %416)
  store ptr %443, ptr %9, align 8, !tbaa !91
  %444 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %445 = getelementptr inbounds ptr, ptr %444, i64 %427
  %446 = load ptr, ptr %445, align 8, !tbaa !91
  %447 = icmp eq ptr %446, null
  br i1 %447, label %448, label %454

448:                                              ; preds = %439
  %449 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %450 = getelementptr inbounds ptr, ptr %449, i64 %427
  %451 = load ptr, ptr %450, align 8, !tbaa !91
  %452 = tail call i32 @rtx_equal_p(ptr noundef %443, ptr noundef %451) #24
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %475

454:                                              ; preds = %448, %439
  %455 = load ptr, ptr %9, align 8, !tbaa !91
  %456 = load i32, ptr %455, align 8
  %457 = lshr i32 %456, 16
  %458 = and i32 %457, 255
  %459 = getelementptr inbounds %struct.rtx_def, ptr %455, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !102
  %461 = call fastcc i32 @find_reloads_address(i32 noundef %458, ptr noundef nonnull %9, ptr noundef %460, ptr noundef nonnull %459, i32 noundef %3, i32 noundef 9, i32 noundef %5, ptr noundef %6)
  %462 = load ptr, ptr %9, align 8, !tbaa !91
  %463 = call i32 @rtx_equal_p(ptr noundef %462, ptr noundef nonnull %455) #24
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %454
  %466 = load ptr, ptr %9, align 8, !tbaa !91
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %416, ptr noundef %466)
  br label %467

467:                                              ; preds = %465, %454
  %468 = load ptr, ptr %9, align 8, !tbaa !91
  %469 = load ptr, ptr %8, align 8, !tbaa !91
  %470 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1
  %471 = load i32, ptr %469, align 8
  %472 = lshr i32 %471, 16
  %473 = and i32 %472, 255
  %474 = call i32 @push_reload(ptr noundef %468, ptr noundef %468, ptr noundef nonnull %470, ptr noundef nonnull %373, i32 noundef 13, i32 noundef %473, i32 noundef %473, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef 9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  br label %999

475:                                              ; preds = %448
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  br label %476

476:                                              ; preds = %475, %431, %425
  %477 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %478 = getelementptr inbounds i16, ptr %477, i64 %427
  %479 = load i16, ptr %478, align 2, !tbaa !142
  %480 = sext i16 %479 to i32
  %481 = icmp slt i16 %479, 0
  %482 = select i1 %481, i32 %416, i32 %480
  %483 = icmp ugt i32 %482, 52
  br i1 %483, label %484, label %491

484:                                              ; preds = %476
  %485 = zext i32 %482 to i64
  %486 = getelementptr inbounds i16, ptr %477, i64 %485
  %487 = load i16, ptr %486, align 2, !tbaa !142
  %488 = sext i16 %487 to i32
  %489 = icmp slt i16 %487, 0
  %490 = select i1 %489, i32 %482, i32 %488
  br label %491

491:                                              ; preds = %484, %476
  %492 = phi i32 [ %482, %476 ], [ %490, %484 ]
  %493 = icmp ult i32 %492, 8
  br i1 %493, label %999, label %494

494:                                              ; preds = %491
  %495 = zext i32 %492 to i64
  %496 = add nsw i64 %495, -37
  %497 = icmp ult i64 %496, 8
  %498 = and i32 %492, -5
  %499 = icmp eq i32 %498, 16
  %500 = or i1 %499, %497
  br i1 %500, label %999, label %501

501:                                              ; preds = %494
  %502 = getelementptr inbounds i16, ptr %477, i64 %495
  %503 = load i16, ptr %502, align 2, !tbaa !142
  %504 = icmp ult i16 %503, 8
  br i1 %504, label %999, label %505

505:                                              ; preds = %501
  %506 = sext i16 %503 to i64
  %507 = and i64 %506, 4294967295
  %508 = add nsw i64 %507, -45
  %509 = icmp ult i64 %508, -8
  br i1 %509, label %510, label %999

510:                                              ; preds = %505
  %511 = load ptr, ptr %373, align 8, !tbaa !102
  %512 = load ptr, ptr %8, align 8, !tbaa !91
  %513 = getelementptr inbounds %struct.rtx_def, ptr %512, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !102
  %515 = load i32, ptr %512, align 8
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 255
  %518 = tail call i32 @push_reload(ptr noundef %511, ptr noundef %514, ptr noundef nonnull %373, ptr noundef nonnull %513, i32 noundef 13, i32 noundef %517, i32 noundef %517, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef 9)
  br label %999

519:                                              ; preds = %11, %11, %11, %11
  %520 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %521 = load ptr, ptr %520, align 8, !tbaa !102
  %522 = load i32, ptr %521, align 8
  %523 = and i32 %522, 65535
  %524 = icmp eq i32 %523, 37
  br i1 %524, label %525, label %999

525:                                              ; preds = %519
  %526 = getelementptr inbounds %struct.rtx_def, ptr %521, i64 0, i32 1
  %527 = load i32, ptr %526, align 8, !tbaa !102
  %528 = icmp slt i32 %527, 53
  br i1 %528, label %536, label %529

529:                                              ; preds = %525
  %530 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %531 = zext nneg i32 %527 to i64
  %532 = getelementptr inbounds ptr, ptr %530, i64 %531
  %533 = load ptr, ptr %532, align 8, !tbaa !91
  %534 = icmp eq ptr %533, null
  br i1 %534, label %536, label %535

535:                                              ; preds = %529
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5773, ptr noundef nonnull @.str.1) #24
  br label %536

536:                                              ; preds = %525, %529, %535
  %537 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %538 = sext i32 %527 to i64
  %539 = getelementptr inbounds ptr, ptr %537, i64 %538
  %540 = load ptr, ptr %539, align 8, !tbaa !91
  %541 = icmp eq ptr %540, null
  br i1 %541, label %587, label %542

542:                                              ; preds = %536
  %543 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %544 = getelementptr inbounds ptr, ptr %543, i64 %538
  %545 = load ptr, ptr %544, align 8, !tbaa !91
  %546 = icmp ne ptr %545, null
  %547 = load i32, ptr @num_not_at_initial_offset, align 4
  %548 = icmp ne i32 %547, 0
  %549 = select i1 %546, i1 true, i1 %548
  br i1 %549, label %550, label %587

550:                                              ; preds = %542
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  %551 = load ptr, ptr %8, align 8, !tbaa !91
  %552 = getelementptr inbounds %struct.rtx_def, ptr %551, i64 0, i32 1
  %553 = load ptr, ptr %552, align 8, !tbaa !102
  %554 = tail call fastcc ptr @make_memloc(ptr noundef %553, i32 noundef %527)
  store ptr %554, ptr %10, align 8, !tbaa !91
  %555 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %556 = getelementptr inbounds ptr, ptr %555, i64 %538
  %557 = load ptr, ptr %556, align 8, !tbaa !91
  %558 = icmp eq ptr %557, null
  br i1 %558, label %559, label %565

559:                                              ; preds = %550
  %560 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %561 = getelementptr inbounds ptr, ptr %560, i64 %538
  %562 = load ptr, ptr %561, align 8, !tbaa !91
  %563 = tail call i32 @rtx_equal_p(ptr noundef %554, ptr noundef %562) #24
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %586

565:                                              ; preds = %559, %550
  %566 = load ptr, ptr %10, align 8, !tbaa !91
  %567 = load i32, ptr %566, align 8
  %568 = lshr i32 %567, 16
  %569 = and i32 %568, 255
  %570 = getelementptr inbounds %struct.rtx_def, ptr %566, i64 0, i32 1
  %571 = load ptr, ptr %570, align 8, !tbaa !102
  %572 = call fastcc i32 @find_reloads_address(i32 noundef %569, ptr noundef nonnull %10, ptr noundef %571, ptr noundef nonnull %570, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  %573 = load ptr, ptr %10, align 8, !tbaa !91
  %574 = call i32 @rtx_equal_p(ptr noundef %573, ptr noundef nonnull %566) #24
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %565
  %577 = load ptr, ptr %10, align 8, !tbaa !91
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %527, ptr noundef %577)
  br label %578

578:                                              ; preds = %576, %565
  %579 = load ptr, ptr %8, align 8, !tbaa !91
  %580 = load i32, ptr %579, align 8
  %581 = and i32 %580, 65535
  %582 = lshr i32 %580, 16
  %583 = and i32 %582, 255
  %584 = load ptr, ptr %10, align 8, !tbaa !91
  %585 = call ptr @gen_rtx_fmt_e_stat(i32 noundef %581, i32 noundef %583, ptr noundef %584) #24
  store ptr %585, ptr %8, align 8, !tbaa !91
  br label %586

586:                                              ; preds = %578, %559
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  br label %587

587:                                              ; preds = %542, %586, %536
  %588 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %589 = getelementptr inbounds i16, ptr %588, i64 %538
  %590 = load i16, ptr %589, align 2, !tbaa !142
  %591 = sext i16 %590 to i32
  %592 = icmp slt i16 %590, 0
  %593 = select i1 %592, i32 %527, i32 %591
  %594 = icmp sgt i32 %593, 52
  br i1 %594, label %640, label %595

595:                                              ; preds = %587
  %596 = icmp eq i32 %13, 0
  br i1 %596, label %597, label %625

597:                                              ; preds = %595
  %598 = icmp ugt i32 %593, 52
  br i1 %598, label %599, label %606

599:                                              ; preds = %597
  %600 = zext i32 %593 to i64
  %601 = getelementptr inbounds i16, ptr %588, i64 %600
  %602 = load i16, ptr %601, align 2, !tbaa !142
  %603 = sext i16 %602 to i32
  %604 = icmp slt i16 %602, 0
  %605 = select i1 %604, i32 %593, i32 %603
  br label %606

606:                                              ; preds = %599, %597
  %607 = phi i32 [ %593, %597 ], [ %605, %599 ]
  %608 = icmp ult i32 %607, 8
  br i1 %608, label %999, label %609

609:                                              ; preds = %606
  %610 = zext i32 %607 to i64
  %611 = add nsw i64 %610, -37
  %612 = icmp ult i64 %611, 8
  %613 = and i32 %607, -5
  %614 = icmp eq i32 %613, 16
  %615 = or i1 %614, %612
  br i1 %615, label %999, label %616

616:                                              ; preds = %609
  %617 = getelementptr inbounds i16, ptr %588, i64 %610
  %618 = load i16, ptr %617, align 2, !tbaa !142
  %619 = icmp ult i16 %618, 8
  br i1 %619, label %999, label %620

620:                                              ; preds = %616
  %621 = sext i16 %618 to i64
  %622 = and i64 %621, 4294967295
  %623 = add nsw i64 %622, -45
  %624 = icmp ult i64 %623, -8
  br i1 %624, label %640, label %999

625:                                              ; preds = %595
  %626 = icmp slt i32 %593, 7
  br i1 %626, label %999, label %627

627:                                              ; preds = %625
  %628 = zext nneg i32 %593 to i64
  %629 = add nsw i64 %628, -37
  %630 = icmp ult i64 %629, 8
  br i1 %630, label %999, label %631

631:                                              ; preds = %627
  %632 = getelementptr inbounds i16, ptr %588, i64 %628
  %633 = load i16, ptr %632, align 2, !tbaa !142
  %634 = icmp ult i16 %633, 7
  br i1 %634, label %999, label %635

635:                                              ; preds = %631
  %636 = sext i16 %633 to i64
  %637 = and i64 %636, 4294967295
  %638 = add nsw i64 %637, -37
  %639 = icmp ult i64 %638, 8
  br i1 %639, label %999, label %640

640:                                              ; preds = %635, %620, %587
  %641 = load ptr, ptr %8, align 8, !tbaa !91
  %642 = getelementptr inbounds %struct.rtx_def, ptr %641, i64 0, i32 1
  %643 = load ptr, ptr %642, align 8, !tbaa !102
  %644 = load i32, ptr %643, align 8
  %645 = and i32 %644, 65535
  %646 = icmp eq i32 %645, 43
  br i1 %646, label %652, label %647

647:                                              ; preds = %640
  %648 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %649 = sext i32 %593 to i64
  %650 = getelementptr inbounds ptr, ptr %648, i64 %649
  %651 = load ptr, ptr %650, align 8, !tbaa !91
  br label %652

652:                                              ; preds = %640, %647
  %653 = phi ptr [ %651, %647 ], [ %643, %640 ]
  %654 = load i32, ptr %641, align 8
  %655 = lshr i32 %654, 16
  %656 = and i32 %655, 255
  %657 = zext nneg i32 %656 to i64
  %658 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %657
  %659 = load i32, ptr %658, align 4, !tbaa !683
  %660 = icmp eq ptr %6, null
  br i1 %660, label %703, label %661

661:                                              ; preds = %652
  %662 = load i32, ptr %6, align 8
  %663 = and i32 %662, 65535
  %664 = icmp eq i32 %663, 8
  %665 = icmp ne ptr %653, null
  %666 = select i1 %664, i1 %665, i1 false
  br i1 %666, label %667, label %703

667:                                              ; preds = %661
  %668 = load i32, ptr %653, align 8
  %669 = lshr i32 %668, 16
  %670 = and i32 %669, 255
  %671 = call i32 @memory_operand(ptr noundef nonnull %653, i32 noundef %670) #24
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %703, label %673

673:                                              ; preds = %667
  %674 = icmp eq i32 %659, 2956
  br i1 %674, label %695, label %675

675:                                              ; preds = %673
  %676 = sext i32 %659 to i64
  %677 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %676, i32 3
  %678 = load ptr, ptr %677, align 8, !tbaa !127
  %679 = load ptr, ptr %678, align 8, !tbaa !685
  %680 = load ptr, ptr %8, align 8, !tbaa !91
  %681 = load i32, ptr %680, align 8
  %682 = lshr i32 %681, 16
  %683 = and i32 %682, 255
  %684 = call i32 %679(ptr noundef nonnull %653, i32 noundef %683) #24
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %695, label %686

686:                                              ; preds = %675
  %687 = getelementptr inbounds %struct.insn_operand_data, ptr %678, i64 1
  %688 = load ptr, ptr %687, align 8, !tbaa !685
  %689 = load ptr, ptr %8, align 8, !tbaa !91
  %690 = load i32, ptr %689, align 8
  %691 = lshr i32 %690, 16
  %692 = and i32 %691, 255
  %693 = call i32 %688(ptr noundef nonnull %653, i32 noundef %692) #24
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %703

695:                                              ; preds = %686, %675, %673
  %696 = load ptr, ptr %8, align 8, !tbaa !91
  %697 = getelementptr inbounds %struct.rtx_def, ptr %696, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !102
  store ptr %698, ptr %8, align 8, !tbaa !91
  %699 = load i32, ptr %698, align 8
  %700 = lshr i32 %699, 16
  %701 = and i32 %700, 255
  %702 = call i32 @push_reload(ptr noundef nonnull %698, ptr noundef nonnull %698, ptr noundef nonnull %520, ptr noundef nonnull %520, i32 noundef %20, i32 noundef %701, i32 noundef %701, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef 9)
  br label %999

703:                                              ; preds = %686, %667, %661, %652
  %704 = load ptr, ptr %8, align 8, !tbaa !91
  %705 = load i32, ptr %704, align 8
  %706 = lshr i32 %705, 16
  %707 = and i32 %706, 255
  %708 = call i32 @push_reload(ptr noundef nonnull %704, ptr noundef nonnull %704, ptr noundef %14, ptr noundef null, i32 noundef %20, i32 noundef %707, i32 noundef %707, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  %709 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %710 = getelementptr inbounds %struct.rtx_def, ptr %709, i64 1
  %711 = load ptr, ptr %710, align 8, !tbaa !102
  %712 = load ptr, ptr %520, align 8, !tbaa !102
  %713 = call fastcc i32 @find_inc_amount(ptr noundef %711, ptr noundef %712)
  %714 = sext i32 %708 to i64
  %715 = getelementptr inbounds [180 x %struct.reload], ptr @rld, i64 0, i64 %714, i32 7
  store i32 %713, ptr %715, align 4, !tbaa !192
  br label %999

716:                                              ; preds = %999, %718
  %717 = phi i32 [ %727, %718 ], [ %1001, %999 ]
  ret i32 %717

718:                                              ; preds = %11, %11, %11
  %719 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !102
  %721 = tail call fastcc i32 @find_reloads_address_1(ptr noundef nonnull %720, i32 noundef %13, ptr noundef nonnull %719, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  %722 = load ptr, ptr %8, align 8, !tbaa !91
  %723 = load i32, ptr %722, align 8
  %724 = lshr i32 %723, 16
  %725 = and i32 %724, 255
  %726 = tail call i32 @push_reload(ptr noundef nonnull %722, ptr noundef null, ptr noundef %14, ptr noundef null, i32 noundef %20, i32 noundef %725, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  %727 = select i1 %16, i32 %15, i32 1
  br label %716

728:                                              ; preds = %11
  %729 = lshr i32 %17, 16
  %730 = and i32 %729, 255
  %731 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %732 = load ptr, ptr %731, align 8, !tbaa !102
  %733 = icmp eq i32 %4, 3
  %734 = icmp eq i32 %4, 5
  %735 = select i1 %734, i32 6, i32 %4
  %736 = select i1 %733, i32 4, i32 %735
  %737 = tail call fastcc i32 @find_reloads_address(i32 noundef %730, ptr noundef %14, ptr noundef %732, ptr noundef nonnull %731, i32 noundef %3, i32 noundef %736, i32 noundef %5, ptr noundef %6)
  %738 = load ptr, ptr %14, align 8, !tbaa !91
  %739 = load ptr, ptr %8, align 8, !tbaa !91
  %740 = load i32, ptr %739, align 8
  %741 = lshr i32 %740, 16
  %742 = and i32 %741, 255
  %743 = tail call i32 @push_reload(ptr noundef %738, ptr noundef null, ptr noundef nonnull %14, ptr noundef null, i32 noundef %20, i32 noundef %742, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  br label %999

744:                                              ; preds = %11
  %745 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %746 = load i32, ptr %745, align 8, !tbaa !102
  %747 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %748 = sext i32 %746 to i64
  %749 = getelementptr inbounds ptr, ptr %747, i64 %748
  %750 = load ptr, ptr %749, align 8, !tbaa !91
  %751 = icmp eq ptr %750, null
  br i1 %751, label %755, label %752

752:                                              ; preds = %744
  %753 = lshr i32 %17, 16
  %754 = and i32 %753, 255
  tail call fastcc void @find_reloads_address_part(ptr noundef nonnull %750, ptr noundef %14, i32 noundef %20, i32 noundef %754, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %999

755:                                              ; preds = %744
  %756 = load ptr, ptr @reg_equiv_memory_loc, align 8, !tbaa !91
  %757 = getelementptr inbounds ptr, ptr %756, i64 %748
  %758 = load ptr, ptr %757, align 8, !tbaa !91
  %759 = icmp eq ptr %758, null
  br i1 %759, label %796, label %760

760:                                              ; preds = %755
  %761 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %762 = getelementptr inbounds ptr, ptr %761, i64 %748
  %763 = load ptr, ptr %762, align 8, !tbaa !91
  %764 = icmp ne ptr %763, null
  %765 = load i32, ptr @num_not_at_initial_offset, align 4
  %766 = icmp ne i32 %765, 0
  %767 = select i1 %764, i1 true, i1 %766
  br i1 %767, label %768, label %796

768:                                              ; preds = %760
  %769 = tail call fastcc ptr @make_memloc(ptr noundef nonnull %12, i32 noundef %746)
  %770 = load ptr, ptr @reg_equiv_address, align 8, !tbaa !91
  %771 = getelementptr inbounds ptr, ptr %770, i64 %748
  %772 = load ptr, ptr %771, align 8, !tbaa !91
  %773 = icmp eq ptr %772, null
  br i1 %773, label %774, label %780

774:                                              ; preds = %768
  %775 = load ptr, ptr @reg_equiv_mem, align 8, !tbaa !91
  %776 = getelementptr inbounds ptr, ptr %775, i64 %748
  %777 = load ptr, ptr %776, align 8, !tbaa !91
  %778 = tail call i32 @rtx_equal_p(ptr noundef %769, ptr noundef %777) #24
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %796

780:                                              ; preds = %774, %768
  store ptr %769, ptr %8, align 8, !tbaa !91
  %781 = load i32, ptr %769, align 8
  %782 = lshr i32 %781, 16
  %783 = and i32 %782, 255
  %784 = getelementptr inbounds %struct.rtx_def, ptr %769, i64 0, i32 1
  %785 = load ptr, ptr %784, align 8, !tbaa !102
  %786 = icmp eq i32 %4, 3
  %787 = icmp eq i32 %4, 5
  %788 = select i1 %787, i32 6, i32 %4
  %789 = select i1 %786, i32 4, i32 %788
  %790 = call fastcc i32 @find_reloads_address(i32 noundef %783, ptr noundef nonnull %8, ptr noundef %785, ptr noundef nonnull %784, i32 noundef %3, i32 noundef %789, i32 noundef %5, ptr noundef %6)
  %791 = load ptr, ptr %8, align 8, !tbaa !91
  %792 = call i32 @rtx_equal_p(ptr noundef %791, ptr noundef nonnull %769) #24
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %796

794:                                              ; preds = %780
  %795 = load ptr, ptr %8, align 8, !tbaa !91
  call fastcc void @push_reg_equiv_alt_mem(i32 noundef %746, ptr noundef %795)
  br label %796

796:                                              ; preds = %774, %794, %780, %760, %755
  %797 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %798 = getelementptr inbounds i16, ptr %797, i64 %748
  %799 = load i16, ptr %798, align 2, !tbaa !142
  %800 = sext i16 %799 to i32
  %801 = icmp slt i16 %799, 0
  %802 = select i1 %801, i32 %746, i32 %800
  %803 = icmp sgt i32 %802, 52
  br i1 %803, label %849, label %804

804:                                              ; preds = %796
  %805 = icmp eq i32 %13, 0
  br i1 %805, label %806, label %834

806:                                              ; preds = %804
  %807 = icmp ugt i32 %802, 52
  br i1 %807, label %808, label %815

808:                                              ; preds = %806
  %809 = zext i32 %802 to i64
  %810 = getelementptr inbounds i16, ptr %797, i64 %809
  %811 = load i16, ptr %810, align 2, !tbaa !142
  %812 = sext i16 %811 to i32
  %813 = icmp slt i16 %811, 0
  %814 = select i1 %813, i32 %802, i32 %812
  br label %815

815:                                              ; preds = %808, %806
  %816 = phi i32 [ %802, %806 ], [ %814, %808 ]
  %817 = icmp ult i32 %816, 8
  br i1 %817, label %855, label %818

818:                                              ; preds = %815
  %819 = zext i32 %816 to i64
  %820 = add nsw i64 %819, -37
  %821 = icmp ult i64 %820, 8
  %822 = and i32 %816, -5
  %823 = icmp eq i32 %822, 16
  %824 = or i1 %823, %821
  br i1 %824, label %855, label %825

825:                                              ; preds = %818
  %826 = getelementptr inbounds i16, ptr %797, i64 %819
  %827 = load i16, ptr %826, align 2, !tbaa !142
  %828 = icmp ult i16 %827, 8
  br i1 %828, label %855, label %829

829:                                              ; preds = %825
  %830 = sext i16 %827 to i64
  %831 = and i64 %830, 4294967295
  %832 = add nsw i64 %831, -45
  %833 = icmp ult i64 %832, -8
  br i1 %833, label %849, label %855

834:                                              ; preds = %804
  %835 = icmp slt i32 %802, 7
  br i1 %835, label %855, label %836

836:                                              ; preds = %834
  %837 = zext nneg i32 %802 to i64
  %838 = add nsw i64 %837, -37
  %839 = icmp ult i64 %838, 8
  br i1 %839, label %855, label %840

840:                                              ; preds = %836
  %841 = getelementptr inbounds i16, ptr %797, i64 %837
  %842 = load i16, ptr %841, align 2, !tbaa !142
  %843 = icmp ult i16 %842, 7
  br i1 %843, label %855, label %844

844:                                              ; preds = %840
  %845 = sext i16 %842 to i64
  %846 = and i64 %845, 4294967295
  %847 = add nsw i64 %846, -37
  %848 = icmp ult i64 %847, 8
  br i1 %848, label %855, label %849

849:                                              ; preds = %844, %829, %796
  %850 = load ptr, ptr %8, align 8, !tbaa !91
  %851 = load i32, ptr %850, align 8
  %852 = lshr i32 %851, 16
  %853 = and i32 %852, 255
  %854 = call i32 @push_reload(ptr noundef nonnull %850, ptr noundef null, ptr noundef %14, ptr noundef null, i32 noundef %20, i32 noundef %853, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  br label %999

855:                                              ; preds = %818, %815, %825, %844, %840, %836, %834, %829
  %856 = load ptr, ptr @this_insn, align 8, !tbaa !91
  %857 = load ptr, ptr %8, align 8, !tbaa !91
  %858 = load i32, ptr %857, align 8
  %859 = lshr i32 %858, 16
  %860 = and i32 %859, 255
  %861 = call i32 @regno_clobbered_p(i32 noundef %802, ptr noundef %856, i32 noundef %860, i32 noundef 0)
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %999, label %863

863:                                              ; preds = %855
  %864 = load ptr, ptr %8, align 8, !tbaa !91
  %865 = load i32, ptr %864, align 8
  %866 = lshr i32 %865, 16
  %867 = and i32 %866, 255
  %868 = call i32 @push_reload(ptr noundef nonnull %864, ptr noundef null, ptr noundef %14, ptr noundef null, i32 noundef %20, i32 noundef %867, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  br label %999

869:                                              ; preds = %11
  %870 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %871 = load ptr, ptr %870, align 8, !tbaa !102
  %872 = load i32, ptr %871, align 8
  %873 = and i32 %872, 65535
  %874 = icmp eq i32 %873, 37
  br i1 %874, label %875, label %976

875:                                              ; preds = %869
  %876 = getelementptr inbounds %struct.rtx_def, ptr %871, i64 0, i32 1
  %877 = load i32, ptr %876, align 8, !tbaa !102
  %878 = icmp ult i32 %877, 53
  br i1 %878, label %879, label %934

879:                                              ; preds = %875
  %880 = tail call i32 @subreg_regno(ptr noundef nonnull %12) #24
  %881 = icmp eq i32 %13, 0
  br i1 %881, label %882, label %912

882:                                              ; preds = %879
  %883 = icmp ugt i32 %880, 52
  br i1 %883, label %884, label %892

884:                                              ; preds = %882
  %885 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %886 = zext i32 %880 to i64
  %887 = getelementptr inbounds i16, ptr %885, i64 %886
  %888 = load i16, ptr %887, align 2, !tbaa !142
  %889 = sext i16 %888 to i32
  %890 = icmp slt i16 %888, 0
  %891 = select i1 %890, i32 %880, i32 %889
  br label %892

892:                                              ; preds = %884, %882
  %893 = phi i32 [ %880, %882 ], [ %891, %884 ]
  %894 = icmp ult i32 %893, 8
  br i1 %894, label %976, label %895

895:                                              ; preds = %892
  %896 = zext i32 %893 to i64
  %897 = add nsw i64 %896, -37
  %898 = icmp ult i64 %897, 8
  %899 = and i32 %893, -5
  %900 = icmp eq i32 %899, 16
  %901 = or i1 %900, %898
  br i1 %901, label %976, label %902

902:                                              ; preds = %895
  %903 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %904 = getelementptr inbounds i16, ptr %903, i64 %896
  %905 = load i16, ptr %904, align 2, !tbaa !142
  %906 = icmp ult i16 %905, 8
  br i1 %906, label %976, label %907

907:                                              ; preds = %902
  %908 = sext i16 %905 to i64
  %909 = and i64 %908, 4294967295
  %910 = add nsw i64 %909, -45
  %911 = icmp ult i64 %910, -8
  br i1 %911, label %928, label %976

912:                                              ; preds = %879
  %913 = icmp slt i32 %880, 7
  br i1 %913, label %976, label %914

914:                                              ; preds = %912
  %915 = zext nneg i32 %880 to i64
  %916 = add nsw i64 %915, -37
  %917 = icmp ult i64 %916, 8
  br i1 %917, label %976, label %918

918:                                              ; preds = %914
  %919 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %920 = getelementptr inbounds i16, ptr %919, i64 %915
  %921 = load i16, ptr %920, align 2, !tbaa !142
  %922 = icmp ult i16 %921, 7
  br i1 %922, label %976, label %923

923:                                              ; preds = %918
  %924 = sext i16 %921 to i64
  %925 = and i64 %924, 4294967295
  %926 = add nsw i64 %925, -37
  %927 = icmp ult i64 %926, 8
  br i1 %927, label %976, label %928

928:                                              ; preds = %923, %907
  %929 = load ptr, ptr %8, align 8, !tbaa !91
  %930 = load i32, ptr %929, align 8
  %931 = lshr i32 %930, 16
  %932 = and i32 %931, 255
  %933 = tail call i32 @push_reload(ptr noundef nonnull %929, ptr noundef null, ptr noundef %14, ptr noundef null, i32 noundef %20, i32 noundef %932, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  br label %999

934:                                              ; preds = %875
  %935 = tail call i32 @reg_classes_intersect_p(i32 noundef %20, i32 noundef 13) #24
  %936 = icmp eq i32 %935, 0
  %937 = load ptr, ptr %8, align 8, !tbaa !91
  %938 = getelementptr inbounds %struct.rtx_def, ptr %937, i64 0, i32 1
  %939 = load ptr, ptr %938, align 8, !tbaa !102
  %940 = load i32, ptr %939, align 8
  %941 = lshr i32 %940, 16
  %942 = and i32 %941, 255
  br i1 %936, label %943, label %950

943:                                              ; preds = %934
  %944 = zext nneg i32 %942 to i64
  %945 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %944
  %946 = load i8, ptr %945, align 1, !tbaa !102
  %947 = and i8 %946, -2
  %948 = icmp eq i8 %947, 10
  %949 = select i1 %948, i32 2, i32 1
  br label %959

950:                                              ; preds = %934
  %951 = icmp eq i32 %942, 40
  br i1 %951, label %959, label %952

952:                                              ; preds = %950
  %953 = zext nneg i32 %942 to i64
  %954 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %953
  %955 = load i8, ptr %954, align 1, !tbaa !102
  %956 = zext i8 %955 to i32
  %957 = add nuw nsw i32 %956, 3
  %958 = lshr i32 %957, 2
  br label %959

959:                                              ; preds = %952, %950, %943
  %960 = phi i32 [ %949, %943 ], [ %958, %952 ], [ 3, %950 ]
  %961 = zext nneg i32 %20 to i64
  %962 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %961
  %963 = load i32, ptr %962, align 4, !tbaa !106
  %964 = icmp ugt i32 %960, %963
  br i1 %964, label %965, label %976

965:                                              ; preds = %959
  %966 = load ptr, ptr %8, align 8, !tbaa !91
  %967 = icmp eq i32 %4, 3
  %968 = icmp eq i32 %4, 5
  %969 = select i1 %968, i32 6, i32 %4
  %970 = select i1 %967, i32 4, i32 %969
  %971 = tail call fastcc ptr @find_reloads_subreg_address(ptr noundef %966, i32 noundef 0, i32 noundef %3, i32 noundef %970, i32 noundef %5, ptr noundef %6)
  store ptr %971, ptr %8, align 8, !tbaa !91
  %972 = load i32, ptr %971, align 8
  %973 = lshr i32 %972, 16
  %974 = and i32 %973, 255
  %975 = tail call i32 @push_reload(ptr noundef nonnull %971, ptr noundef null, ptr noundef %14, ptr noundef null, i32 noundef %20, i32 noundef %974, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %4)
  br label %999

976:                                              ; preds = %895, %892, %902, %959, %923, %918, %914, %912, %907, %11, %869
  %977 = zext nneg i32 %18 to i64
  %978 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %977
  %979 = load ptr, ptr %978, align 8, !tbaa !91
  %980 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %977
  %981 = load i8, ptr %980, align 1, !tbaa !102
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %999, label %983

983:                                              ; preds = %976
  %984 = zext i8 %981 to i64
  br label %985

985:                                              ; preds = %983, %997
  %986 = phi i64 [ %984, %983 ], [ %987, %997 ]
  %987 = add nsw i64 %986, -1
  %988 = getelementptr inbounds i8, ptr %979, i64 %987
  %989 = load i8, ptr %988, align 1, !tbaa !102
  %990 = icmp eq i8 %989, 101
  br i1 %990, label %991, label %997

991:                                              ; preds = %985
  %992 = load ptr, ptr %8, align 8, !tbaa !91
  %993 = getelementptr inbounds %struct.rtx_def, ptr %992, i64 0, i32 1
  %994 = getelementptr inbounds [1 x %union.rtunion_def], ptr %993, i64 0, i64 %987
  %995 = load ptr, ptr %994, align 8, !tbaa !102
  %996 = tail call fastcc i32 @find_reloads_address_1(ptr noundef %995, i32 noundef %13, ptr noundef nonnull %994, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  br label %997

997:                                              ; preds = %985, %991
  %998 = icmp sgt i64 %986, 1
  br i1 %998, label %985, label %999, !llvm.loop !686

999:                                              ; preds = %997, %976, %225, %222, %232, %609, %606, %616, %494, %491, %501, %752, %849, %863, %855, %695, %703, %363, %83, %191, %355, %237, %965, %510, %467, %928, %519, %620, %625, %627, %631, %635, %505, %728
  %1000 = phi i32 [ 1, %965 ], [ 1, %728 ], [ 0, %505 ], [ 0, %620 ], [ 0, %625 ], [ 0, %627 ], [ 0, %631 ], [ 0, %635 ], [ 0, %519 ], [ 1, %928 ], [ 0, %467 ], [ 0, %510 ], [ 1, %83 ], [ 0, %191 ], [ 0, %355 ], [ 0, %237 ], [ 0, %363 ], [ 1, %703 ], [ 0, %695 ], [ 1, %752 ], [ 1, %849 ], [ 1, %863 ], [ 0, %855 ], [ 0, %501 ], [ 0, %491 ], [ 0, %494 ], [ 0, %616 ], [ 0, %606 ], [ 0, %609 ], [ 0, %232 ], [ 0, %222 ], [ 0, %225 ], [ 0, %976 ], [ 0, %997 ]
  %1001 = select i1 %16, i32 %15, i32 %1000
  br label %716
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @subst_indexed_address(ptr noundef readonly %0) unnamed_addr #9 !prof !90 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 49
  br i1 %4, label %5, label %97

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %28

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = icmp sgt i32 %15, 52
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !142
  %22 = icmp slt i16 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 %19
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %23, %17, %13, %5
  %29 = load i32, ptr %9, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !102
  %35 = icmp sgt i32 %34, 52
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load ptr, ptr @reg_renumber, align 8, !tbaa !91
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !142
  %41 = icmp slt i16 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load ptr, ptr @reg_equiv_constant, align 8, !tbaa !91
  %44 = getelementptr inbounds ptr, ptr %43, i64 %38
  %45 = load ptr, ptr %44, align 8, !tbaa !91
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %42, %36, %32, %28
  %48 = icmp eq i32 %11, 49
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %7)
  %51 = icmp eq ptr %50, %7
  br i1 %51, label %52, label %59

52:                                               ; preds = %49, %47
  %53 = load i32, ptr %9, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 49
  br i1 %55, label %56, label %97

56:                                               ; preds = %52
  %57 = tail call fastcc ptr @subst_indexed_address(ptr noundef nonnull %9)
  %58 = icmp eq ptr %57, %9
  br i1 %58, label %97, label %59

59:                                               ; preds = %56, %49, %42, %23
  %60 = phi ptr [ %26, %23 ], [ %7, %42 ], [ %50, %49 ], [ %7, %56 ]
  %61 = phi ptr [ %9, %23 ], [ %45, %42 ], [ %9, %49 ], [ %57, %56 ]
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 49
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %67 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !102
  %69 = load ptr, ptr %66, align 8, !tbaa !102
  br label %79

70:                                               ; preds = %59
  %71 = load i32, ptr %60, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 49
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %76 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !102
  %78 = load ptr, ptr %75, align 8, !tbaa !102
  br label %79

79:                                               ; preds = %70, %74, %65
  %80 = phi ptr [ %60, %65 ], [ %78, %74 ], [ %60, %70 ]
  %81 = phi ptr [ %69, %65 ], [ %77, %74 ], [ %61, %70 ]
  %82 = phi ptr [ %68, %65 ], [ %61, %74 ], [ null, %70 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %0, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = tail call ptr @form_sum(i32 noundef %87, ptr noundef %81, ptr noundef nonnull %82)
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi ptr [ %88, %84 ], [ %81, %79 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %0, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = tail call ptr @form_sum(i32 noundef %95, ptr noundef %80, ptr noundef nonnull %90)
  br label %97

97:                                               ; preds = %56, %1, %89, %92, %52
  %98 = phi ptr [ %0, %52 ], [ %96, %92 ], [ %80, %89 ], [ %0, %1 ], [ %0, %56 ]
  ret ptr %98
}

declare i32 @max_reg_num() local_unnamed_addr #3

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @memory_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_inc_amount(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #19 !prof !90 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65534
  %11 = add nsw i32 %10, -74
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = lshr i32 %3, 16
  %19 = and i32 %18, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !102
  %23 = zext i8 %22 to i32
  br label %51

24:                                               ; preds = %6, %13
  %25 = icmp eq i32 %10, 78
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !102
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 49
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !102
  %37 = icmp eq ptr %34, %36
  %38 = icmp eq ptr %34, %1
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 30
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !102
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  br label %51

51:                                               ; preds = %24, %40, %32, %26, %46, %17
  %52 = phi i1 [ false, %17 ], [ false, %46 ], [ true, %24 ], [ true, %26 ], [ true, %32 ], [ true, %40 ]
  %53 = phi i32 [ %23, %17 ], [ %50, %46 ], [ undef, %24 ], [ undef, %26 ], [ undef, %32 ], [ undef, %40 ]
  br i1 %52, label %54, label %105

54:                                               ; preds = %51, %2
  %55 = phi i32 [ %53, %51 ], [ undef, %2 ]
  %56 = zext nneg i32 %4 to i64
  %57 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !91
  %59 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %56
  %60 = load i8, ptr %59, align 1, !tbaa !102
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %62 = icmp eq i8 %60, 0
  br i1 %62, label %105, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %65 = zext i8 %60 to i64
  br label %66

66:                                               ; preds = %63, %102
  %67 = phi i64 [ %65, %63 ], [ %69, %102 ]
  %68 = phi i32 [ %55, %63 ], [ %103, %102 ]
  %69 = add nsw i64 %67, -1
  %70 = getelementptr inbounds i8, ptr %58, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !102
  %72 = icmp eq i8 %71, 101
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = getelementptr inbounds [1 x %union.rtunion_def], ptr %61, i64 0, i64 %69
  %75 = load ptr, ptr %74, align 8, !tbaa !102
  %76 = tail call fastcc i32 @find_inc_amount(ptr noundef %75, ptr noundef %1)
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 %68, i32 %76
  br i1 %77, label %79, label %105

79:                                               ; preds = %73, %66
  %80 = phi i32 [ %78, %73 ], [ %68, %66 ]
  %81 = icmp eq i8 %71, 69
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %69
  %84 = load ptr, ptr %83, align 8, !tbaa !102
  %85 = load i32, ptr %84, align 8, !tbaa !144
  %86 = zext i32 %85 to i64
  br label %87

87:                                               ; preds = %92, %82
  %88 = phi i64 [ %94, %92 ], [ %86, %82 ]
  %89 = phi i32 [ %99, %92 ], [ %80, %82 ]
  %90 = trunc i64 %88 to i32
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = add nsw i64 %88, -1
  %94 = add nsw i64 %88, -1
  %95 = getelementptr inbounds %struct.rtvec_def, ptr %84, i64 0, i32 1, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !91
  %97 = tail call fastcc i32 @find_inc_amount(ptr noundef %96, ptr noundef %1)
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 %89, i32 %97
  br i1 %98, label %87, label %100, !llvm.loop !687

100:                                              ; preds = %92, %87
  %101 = phi i32 [ %89, %87 ], [ %99, %92 ]
  br i1 %91, label %102, label %105

102:                                              ; preds = %79, %100
  %103 = phi i32 [ %101, %100 ], [ %80, %79 ]
  %104 = icmp sgt i64 %67, 1
  br i1 %104, label %66, label %105, !llvm.loop !688

105:                                              ; preds = %73, %102, %100, %54, %51
  %106 = phi i32 [ %53, %51 ], [ 0, %54 ], [ %101, %100 ], [ 0, %102 ], [ %78, %73 ]
  ret i32 %106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #23

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!89}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!35 = !{ptr @find_reloads_address, ptr @subst_reg_equivs, i64 154895}
!36 = !{ptr @push_reload, ptr @ix86_preferred_reload_class, i64 155922}
!37 = !{ptr @push_reload, ptr @ix86_preferred_output_reload_class, i64 164252}
!38 = !{ptr @push_reload, ptr @push_secondary_reload, i64 320174}
!39 = !{ptr @push_reload, ptr @reg_or_subregno, i64 1376}
!40 = !{ptr @push_reload, ptr @ix86_secondary_memory_needed, i64 84}
!41 = !{ptr @push_reload, ptr @reg_mentioned_p, i64 758}
!42 = !{ptr @push_reload, ptr @bitmap_bit_p, i64 154}
!43 = !{ptr @push_reload, ptr @refers_to_regno_for_reload_p, i64 154}
!44 = !{ptr @push_reload, ptr @ix86_hard_regno_mode_ok, i64 308}
!45 = !{ptr @reg_overlap_mentioned_for_reload_p, ptr @refers_to_regno_for_reload_p, i64 1769}
!46 = !{ptr @find_dummy_reload, ptr @ix86_preferred_reload_class, i64 8101}
!47 = !{ptr @find_dummy_reload, ptr @ix86_hard_regno_mode_ok, i64 8649}
!48 = !{ptr @find_dummy_reload, ptr @refers_to_regno_for_reload_p, i64 8649}
!49 = !{ptr @find_dummy_reload, ptr @find_reg_note, i64 5522}
!50 = !{ptr @find_dummy_reload, ptr @bitmap_bit_p, i64 548}
!51 = !{ptr @find_dummy_reload, ptr @hard_reg_set_here_p, i64 548}
!52 = !{ptr @find_equiv_reg, ptr @single_set_2, i64 985}
!53 = !{ptr @find_equiv_reg, ptr @true_regnum, i64 506232}
!54 = !{ptr @find_equiv_reg, ptr @rtx_equal_p, i64 66786}
!55 = !{ptr @find_equiv_reg, ptr @reg_overlap_mentioned_for_reload_p, i64 4636}
!56 = !{ptr @find_equiv_reg, ptr @rtx_renumbered_equal_p, i64 270270}
!57 = !{ptr @find_equiv_reg, ptr @find_reg_note, i64 91154}
!58 = !{ptr @find_equiv_reg, ptr @refers_to_regno_for_reload_p, i64 1527}
!59 = !{ptr @find_equiv_reg, ptr @constant_address_p, i64 1601}
!60 = !{ptr @find_equiv_reg, ptr @volatile_insn_p, i64 6762}
!61 = !{ptr @find_equiv_reg, ptr @push_operand, i64 613}
!62 = !{ptr @refers_to_regno_for_reload_p, ptr @refers_to_regno_for_reload_p, i64 32761}
!63 = !{ptr @hard_reg_set_here_p, ptr @hard_reg_set_here_p, i64 1096}
!64 = !{ptr @find_reloads, ptr @single_set_2, i64 11007}
!65 = !{ptr @find_reloads, ptr @ix86_register_move_cost, i64 66498}
!66 = !{ptr @find_reloads, ptr @extract_insn, i64 717436}
!67 = !{ptr @find_reloads, ptr @strtoul, i64 33939}
!68 = !{ptr @find_reloads, ptr @operands_match_p, i64 39923}
!69 = !{ptr @find_reloads, ptr @find_reloads_address, i64 319125}
!70 = !{ptr @find_reloads, ptr @find_reloads_toplev, i64 202}
!71 = !{ptr @find_reloads, ptr @reg_preferred_class, i64 1208}
!72 = !{ptr @find_reloads, ptr @reg_alternate_class, i64 1208}
!73 = !{ptr @find_reloads, ptr @simplify_subreg_regno, i64 403}
!74 = !{ptr @find_reloads, ptr @subreg_regno_offset, i64 403}
!75 = !{ptr @find_reloads, ptr @find_dummy_reload, i64 8091}
!76 = !{ptr @find_reloads, ptr @lookup_constraint, i64 50027}
!77 = !{ptr @find_reloads, ptr @insn_const_int_ok_for_constraint, i64 67}
!78 = !{ptr @find_reloads, ptr @regclass_for_constraint, i64 49960}
!79 = !{ptr @find_reloads, ptr @reg_fits_class_p, i64 536952}
!80 = !{ptr @find_reloads, ptr @ix86_preferred_reload_class, i64 192858}
!81 = !{ptr @find_reloads, ptr @ix86_preferred_output_reload_class, i64 164047}
!82 = !{ptr @find_reloads, ptr @push_reload, i64 320174}
!83 = !{ptr @find_reloads, ptr @reg_overlap_mentioned_for_reload_p, i64 84}
!84 = !{ptr @find_reloads, ptr @ix86_hard_regno_mode_ok, i64 63472}
!85 = !{ptr @find_reloads, ptr @reg_classes_intersect_p, i64 320174}
!86 = !{ptr @find_reloads, ptr @elimination_target_reg_p, i64 63388}
!87 = !{ptr @find_reloads_toplev, ptr @find_reloads_toplev, i64 202}
!88 = !{ptr @subst_reg_equivs, ptr @subst_reg_equivs, i64 1240}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = !{!"function_entry_count", i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"any pointer", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!96, !92, i64 8}
!96 = !{!"_IO_FILE", !97, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !97, i64 112, !97, i64 116, !98, i64 120, !99, i64 128, !93, i64 130, !93, i64 131, !92, i64 136, !98, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !98, i64 184, !97, i64 192, !93, i64 196}
!97 = !{!"int", !93, i64 0}
!98 = !{!"long", !93, i64 0}
!99 = !{!"short", !93, i64 0}
!100 = !{!96, !92, i64 16}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{!93, !93, i64 0}
!103 = !{!96, !92, i64 40}
!104 = !{!96, !92, i64 48}
!105 = !{!96, !97, i64 0}
!106 = !{!97, !97, i64 0}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!111, !97, i64 0}
!111 = !{!"secondary_reload_info", !97, i64 0, !97, i64 4, !92, i64 8, !97, i64 16}
!112 = !{!111, !92, i64 8}
!113 = !{!114, !92, i64 1728}
!114 = !{!"gcc_target", !115, i64 0, !117, i64 368, !118, i64 664, !97, i64 744, !92, i64 752, !92, i64 760, !92, i64 768, !92, i64 776, !92, i64 784, !92, i64 792, !92, i64 800, !92, i64 808, !92, i64 816, !92, i64 824, !92, i64 832, !92, i64 840, !92, i64 848, !92, i64 856, !92, i64 864, !92, i64 872, !92, i64 880, !92, i64 888, !92, i64 896, !92, i64 904, !92, i64 912, !92, i64 920, !92, i64 928, !92, i64 936, !92, i64 944, !92, i64 952, !92, i64 960, !92, i64 968, !92, i64 976, !92, i64 984, !92, i64 992, !92, i64 1000, !92, i64 1008, !92, i64 1016, !92, i64 1024, !92, i64 1032, !92, i64 1040, !92, i64 1048, !92, i64 1056, !98, i64 1064, !98, i64 1072, !92, i64 1080, !92, i64 1088, !92, i64 1096, !92, i64 1104, !92, i64 1112, !92, i64 1120, !92, i64 1128, !92, i64 1136, !92, i64 1144, !92, i64 1152, !92, i64 1160, !92, i64 1168, !119, i64 1176, !92, i64 1232, !92, i64 1240, !92, i64 1248, !92, i64 1256, !92, i64 1264, !92, i64 1272, !92, i64 1280, !92, i64 1288, !92, i64 1296, !92, i64 1304, !92, i64 1312, !92, i64 1320, !92, i64 1328, !92, i64 1336, !92, i64 1344, !92, i64 1352, !92, i64 1360, !92, i64 1368, !92, i64 1376, !92, i64 1384, !92, i64 1392, !92, i64 1400, !92, i64 1408, !92, i64 1416, !92, i64 1424, !92, i64 1432, !92, i64 1440, !92, i64 1448, !92, i64 1456, !98, i64 1464, !120, i64 1472, !92, i64 1664, !92, i64 1672, !92, i64 1680, !92, i64 1688, !92, i64 1696, !92, i64 1704, !92, i64 1712, !92, i64 1720, !92, i64 1728, !92, i64 1736, !92, i64 1744, !92, i64 1752, !92, i64 1760, !92, i64 1768, !92, i64 1776, !121, i64 1784, !122, i64 1792, !123, i64 1896, !124, i64 1968, !92, i64 2016, !93, i64 2024, !93, i64 2025, !93, i64 2026, !93, i64 2027, !93, i64 2028, !93, i64 2029, !93, i64 2030, !93, i64 2031, !93, i64 2032, !93, i64 2033, !93, i64 2034, !93, i64 2035}
!115 = !{!"asm_out", !92, i64 0, !92, i64 8, !92, i64 16, !116, i64 24, !116, i64 56, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !92, i64 184, !92, i64 192, !92, i64 200, !92, i64 208, !92, i64 216, !92, i64 224, !92, i64 232, !92, i64 240, !92, i64 248, !92, i64 256, !92, i64 264, !92, i64 272, !92, i64 280, !92, i64 288, !92, i64 296, !92, i64 304, !92, i64 312, !92, i64 320, !92, i64 328, !92, i64 336, !92, i64 344, !92, i64 352, !92, i64 360}
!116 = !{!"asm_int_op", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24}
!117 = !{!"sched", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !92, i64 184, !92, i64 192, !92, i64 200, !92, i64 208, !92, i64 216, !92, i64 224, !92, i64 232, !92, i64 240, !92, i64 248, !92, i64 256, !92, i64 264, !92, i64 272, !92, i64 280, !92, i64 288}
!118 = !{!"vectorize", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72}
!119 = !{!"addr_space", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48}
!120 = !{!"calls", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !92, i64 176, !92, i64 184}
!121 = !{!"c", !92, i64 0}
!122 = !{!"cxx", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96}
!123 = !{!"emutls", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !93, i64 64, !93, i64 65}
!124 = !{!"target_option_hooks", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40}
!125 = !{!126, !93, i64 32}
!126 = !{!"insn_data", !92, i64 0, !93, i64 8, !92, i64 16, !92, i64 24, !93, i64 32, !93, i64 33, !93, i64 34, !93, i64 35}
!127 = !{!126, !92, i64 24}
!128 = !{!129, !92, i64 8}
!129 = !{!"insn_operand_data", !92, i64 0, !92, i64 8, !97, i64 16, !93, i64 18, !93, i64 19}
!130 = !{!131, !93, i64 32}
!131 = !{!"mem_attrs", !92, i64 0, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !93, i64 32}
!132 = !{!114, !92, i64 1200}
!133 = !{!"function_entry_count", i64 1441834}
!134 = !{!"VP", i32 0, i64 1441834, i64 -1382695475395396580, i64 1441834}
!135 = !{!"function_entry_count", i64 319125}
!136 = !{!"reload.c;find_reloads_address"}
!137 = !{!"branch_weights", i32 318882, i32 243}
!138 = !{!"branch_weights", i32 46, i32 318836}
!139 = !{!"branch_weights", i32 137970, i32 181155}
!140 = !{!"branch_weights", i32 137970, i32 0}
!141 = !{!"branch_weights", i32 0, i32 137970}
!142 = !{!99, !99, i64 0}
!143 = !{!"branch_weights", i32 -1915502184, i32 0, i32 0}
!144 = !{!145, !97, i64 0}
!145 = !{!"rtvec_def", !97, i64 0, !93, i64 8}
!146 = distinct !{!146, !108, !109}
!147 = !{!"VP", i32 0, i64 181155, i64 -1382695475395396580, i64 181155}
!148 = !{!"branch_weights", i32 0, i32 181155}
!149 = !{!"branch_weights", i32 26561, i32 154594}
!150 = !{!"branch_weights", i32 26428, i32 133}
!151 = !{!"branch_weights", i32 26260, i32 168}
!152 = !{!"branch_weights", i32 26260, i32 0}
!153 = !{!"branch_weights", i32 0, i32 154895}
!154 = distinct !{!154, !108, !109}
!155 = !{!114, !92, i64 1184}
!156 = !{!"function_entry_count", i64 38}
!157 = !{!"function_entry_count", i64 320174}
!158 = !{!"branch_weights", i32 0, i32 320174}
!159 = !{!"branch_weights", i32 164252, i32 155922}
!160 = !{!"branch_weights", i32 604, i32 155318}
!161 = !{!"branch_weights", i32 0, i32 604}
!162 = !{!"branch_weights", i32 604, i32 0}
!163 = !{!"branch_weights", i32 688, i32 163564}
!164 = !{!"branch_weights", i32 84, i32 604}
!165 = !{!"branch_weights", i32 0, i32 155922}
!166 = !{!"branch_weights", i32 155922, i32 0}
!167 = !{i32 -2147483648, i32 27}
!168 = !{!"branch_weights", i32 155922, i32 164252}
!169 = !{!"branch_weights", i32 0, i32 164252}
!170 = !{!"branch_weights", i32 164252, i32 0}
!171 = !{!"branch_weights", i32 164168, i32 156006}
!172 = !{!"branch_weights", i32 164168, i32 0}
!173 = !{!"branch_weights", i32 320174, i32 0}
!174 = !{!98, !98, i64 0}
!175 = distinct !{!175, !108, !109}
!176 = distinct !{!176, !108, !109}
!177 = !{!"branch_weights", i32 0, i32 1}
!178 = !{!"branch_weights", i32 1, i32 0}
!179 = distinct !{!179, !108, !109}
!180 = !{!181, !97, i64 16}
!181 = !{!"reload", !92, i64 0, !92, i64 8, !97, i64 16, !97, i64 20, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !92, i64 40, !92, i64 48, !97, i64 56, !92, i64 64, !97, i64 72, !97, i64 76, !97, i64 80, !97, i64 84, !97, i64 88, !97, i64 92, !97, i64 96, !97, i64 96, !97, i64 96, !97, i64 96}
!182 = !{!181, !92, i64 64}
!183 = !{!181, !92, i64 0}
!184 = !{!181, !92, i64 8}
!185 = !{!181, !97, i64 92}
!186 = !{!181, !97, i64 72}
!187 = distinct !{!187, !108, !109}
!188 = distinct !{!188, !108, !109}
!189 = !{!"branch_weights", i32 155318, i32 604, i32 0}
!190 = !{!181, !97, i64 20}
!191 = !{!181, !97, i64 24}
!192 = !{!181, !97, i64 36}
!193 = !{!181, !92, i64 40}
!194 = !{!181, !92, i64 48}
!195 = !{!181, !97, i64 76}
!196 = !{!181, !97, i64 80}
!197 = !{!181, !97, i64 84}
!198 = !{!181, !97, i64 88}
!199 = !{!"branch_weights", i32 163564, i32 688, i32 0}
!200 = !{!"branch_weights", i32 84, i32 0}
!201 = !{i32 0, i32 2}
!202 = !{!"branch_weights", i32 160087, i32 160087}
!203 = !{!"branch_weights", i32 82126, i32 77961}
!204 = !{!205, !97, i64 16}
!205 = !{!"replacement", !92, i64 0, !92, i64 8, !97, i64 16, !97, i64 20}
!206 = !{!205, !92, i64 8}
!207 = !{!205, !92, i64 0}
!208 = !{!205, !97, i64 20}
!209 = !{!"branch_weights", i32 77961, i32 82126}
!210 = !{!"branch_weights", i32 115912, i32 40010}
!211 = !{!"branch_weights", i32 1362, i32 38648}
!212 = !{!"branch_weights", i32 1362, i32 0}
!213 = !{!"branch_weights", i32 758, i32 604}
!214 = !{!"branch_weights", i32 604, i32 154}
!215 = !{!"branch_weights", i32 0, i32 154}
!216 = !{!217, !92, i64 8}
!217 = !{!"function", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !97, i64 104, !97, i64 108, !97, i64 112, !97, i64 116, !97, i64 120, !97, i64 124, !92, i64 128, !97, i64 136, !97, i64 137, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 138, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139, !97, i64 139}
!218 = !{!219, !92, i64 0}
!219 = !{!"control_flow_graph", !92, i64 0, !92, i64 8, !92, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !92, i64 40, !97, i64 48, !93, i64 52, !93, i64 60, !97, i64 68, !97, i64 72}
!220 = !{!221, !97, i64 80}
!221 = !{!"basic_block_def", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !93, i64 32, !92, i64 48, !92, i64 56, !93, i64 64, !98, i64 72, !97, i64 80, !97, i64 84, !97, i64 88, !97, i64 92, !97, i64 96}
!222 = !{!223, !97, i64 16}
!223 = !{!"dataflow", !92, i64 0, !92, i64 8, !97, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !97, i64 48, !93, i64 52, !93, i64 53, !93, i64 54}
!224 = !{!223, !92, i64 8}
!225 = !{!226, !92, i64 24}
!226 = !{!"df_lr_bb_info", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24}
!227 = !{!"branch_weights", i32 154, i32 0}
!228 = distinct !{!228, !108, !109}
!229 = !{!"branch_weights", i32 40010, i32 0}
!230 = distinct !{!230, !108, !109}
!231 = !{!"reload.c;reload_inner_reg_of_subreg"}
!232 = distinct !{!232, !108, !109}
!233 = distinct !{!233, !108, !109}
!234 = !{!"function_entry_count", i64 4720}
!235 = !{!"branch_weights", i32 0, i32 4720}
!236 = !{!"branch_weights", i32 2951, i32 1769}
!237 = !{!"branch_weights", i32 0, i32 1769}
!238 = !{!"branch_weights", i32 0, i32 0, i32 1769, i32 0, i32 0, i32 0, i32 0, i32 0}
!239 = distinct !{!239, !108, !109}
!240 = !{!"reload.c;push_secondary_reload"}
!241 = !{!"branch_weights", i32 1292, i32 318882}
!242 = !{!"branch_weights", i32 1208, i32 84}
!243 = !{!"branch_weights", i32 0, i32 1208}
!244 = !{!"VP", i32 0, i64 320174, i64 900717389841131052, i64 320174}
!245 = distinct !{!245, !108, !109}
!246 = !{i64 0, i64 8, !91, i64 8, i64 8, !91, i64 16, i64 4, !106, i64 20, i64 4, !106}
!247 = distinct !{!247, !108, !109}
!248 = distinct !{!248, !108, !109}
!249 = !{!"function_entry_count", i64 8101}
!250 = !{!"reload.c;find_dummy_reload"}
!251 = !{!"branch_weights", i32 8101, i32 0}
!252 = distinct !{!252, !108, !109}
!253 = distinct !{!253, !108, !109}
!254 = !{!"branch_weights", i32 0, i32 8101}
!255 = !{!"branch_weights", i32 7461, i32 640}
!256 = !{!"branch_weights", i32 1, i32 7460}
!257 = !{!"branch_weights", i32 0, i32 7461}
!258 = !{!"branch_weights", i32 7460, i32 1}
!259 = distinct !{!259, !108, !109}
!260 = !{!"branch_weights", i32 7461, i32 0}
!261 = !{!"branch_weights", i32 5614, i32 2487}
!262 = !{!"branch_weights", i32 5522, i32 92}
!263 = !{!"branch_weights", i32 548, i32 4974}
!264 = !{!"branch_weights", i32 4974, i32 0}
!265 = !{!"branch_weights", i32 0, i32 548}
!266 = !{!"branch_weights", i32 548, i32 0}
!267 = !{!"branch_weights", i32 1, i32 547}
!268 = !{!"branch_weights", i32 547, i32 1}
!269 = distinct !{!269, !108, !109}
!270 = !{!"function_entry_count", i64 90654}
!271 = !{!"branch_weights", i32 0, i32 90654}
!272 = !{!"branch_weights", i32 12693, i32 302, i32 77659}
!273 = !{!"branch_weights", i32 77659, i32 0}
!274 = !{!"branch_weights", i32 12693, i32 0}
!275 = !{!"branch_weights", i32 152, i32 816303}
!276 = !{!"branch_weights", i32 0, i32 816303}
!277 = distinct !{!277, !109}
!278 = !{!"branch_weights", i32 88538, i32 727765}
!279 = !{!280, !97, i64 8}
!280 = !{!"param_info", !92, i64 0, !97, i64 8, !93, i64 12, !97, i64 16, !97, i64 20, !92, i64 24}
!281 = !{!"branch_weights", i32 727704, i32 61}
!282 = !{!"branch_weights", i32 311506, i32 416198}
!283 = !{!"branch_weights", i32 311506, i32 0}
!284 = !{!"branch_weights", i32 310521, i32 985}
!285 = !{!"branch_weights", i32 175, i32 311331}
!286 = !{!"branch_weights", i32 2918, i32 308413}
!287 = !{!"branch_weights", i32 0, i32 2918}
!288 = !{!"branch_weights", i32 302, i32 2616}
!289 = !{!"branch_weights", i32 302, i32 0}
!290 = !{!"branch_weights", i32 251951, i32 59078}
!291 = !{!"branch_weights", i32 56127, i32 2951}
!292 = !{!"branch_weights", i32 2951, i32 0}
!293 = !{!"branch_weights", i32 497, i32 2454}
!294 = !{!"branch_weights", i32 61197, i32 249335}
!295 = !{!"branch_weights", i32 188927, i32 60408}
!296 = !{!"branch_weights", i32 187400, i32 1527}
!297 = !{!"branch_weights", i32 61197, i32 247808}
!298 = !{!"branch_weights", i32 81343, i32 166465}
!299 = !{!"branch_weights", i32 81269, i32 74}
!300 = !{!"branch_weights", i32 250350, i32 58581}
!301 = !{!"branch_weights", i32 27352, i32 31229}
!302 = !{!"branch_weights", i32 23521, i32 7708}
!303 = !{!"branch_weights", i32 7708, i32 0}
!304 = !{!"branch_weights", i32 0, i32 7708}
!305 = !{!"branch_weights", i32 50873, i32 7708}
!306 = !{!"branch_weights", i32 0, i32 2400}
!307 = !{!"branch_weights", i32 497, i32 1903}
!308 = !{!"branch_weights", i32 0, i32 1903}
!309 = !{!"branch_weights", i32 1903, i32 309603}
!310 = !{!"branch_weights", i32 559, i32 1344}
!311 = !{!"branch_weights", i32 1344, i32 0}
!312 = !{!"branch_weights", i32 302, i32 1601}
!313 = !{!"branch_weights", i32 1601, i32 0}
!314 = !{!"branch_weights", i32 1903, i32 0}
!315 = !{!"branch_weights", i32 1601, i32 302}
!316 = !{!"branch_weights", i32 1527, i32 74}
!317 = !{!"branch_weights", i32 1527, i32 0}
!318 = !{!"branch_weights", i32 0, i32 1903, i32 0}
!319 = distinct !{!319, !108, !109}
!320 = distinct !{!320, !108, !109}
!321 = !{!"branch_weights", i32 74, i32 9566}
!322 = !{!"branch_weights", i32 0, i32 74}
!323 = distinct !{!323, !108, !109}
!324 = distinct !{!324, !108, !109}
!325 = !{!"branch_weights", i32 6762, i32 2804}
!326 = !{!"branch_weights", i32 6762, i32 0}
!327 = !{!"branch_weights", i32 0, i32 6762}
!328 = !{!"branch_weights", i32 0, i32 6122, i32 0, i32 640}
!329 = !{!"branch_weights", i32 1992, i32 0, i32 0, i32 0, i32 4130}
!330 = distinct !{!330, !108, !109}
!331 = !{!"branch_weights", i32 4130, i32 0}
!332 = !{!"branch_weights", i32 814, i32 3316}
!333 = !{!"branch_weights", i32 0, i32 4130}
!334 = !{!"branch_weights", i32 1290, i32 2840}
!335 = !{!"branch_weights", i32 1216, i32 2914}
!336 = !{!"branch_weights", i32 2830, i32 84}
!337 = !{!"branch_weights", i32 244776, i32 0}
!338 = !{!"branch_weights", i32 2914, i32 0}
!339 = !{!"branch_weights", i32 613, i32 1379}
!340 = !{!"branch_weights", i32 613, i32 0}
!341 = !{!"branch_weights", i32 0, i32 1379}
!342 = !{!"branch_weights", i32 1379, i32 0}
!343 = !{!"branch_weights", i32 1, i32 639}
!344 = !{!"branch_weights", i32 0, i32 1280}
!345 = !{!"branch_weights", i32 0, i32 640, i32 640}
!346 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 1280}
!347 = distinct !{!347, !108, !109}
!348 = !{!"branch_weights", i32 1280, i32 0}
!349 = !{!"branch_weights", i32 1280, i32 1280}
!350 = !{!"branch_weights", i32 639, i32 641}
!351 = distinct !{!351, !108, !109}
!352 = !{!"branch_weights", i32 0, i32 4933}
!353 = distinct !{!353, !108, !109}
!354 = !{!"branch_weights", i32 0, i32 9640}
!355 = distinct !{!355, !109}
!356 = !{!"function_entry_count", i64 37372}
!357 = !{!"reload.c;refers_to_regno_for_reload_p"}
!358 = !{!"branch_weights", i32 0, i32 37372}
!359 = !{!"branch_weights", i32 38063, i32 3917, i32 0, i32 7865, i32 8255}
!360 = !{!"branch_weights", i32 0, i32 3917}
!361 = !{!"branch_weights", i32 3843, i32 74}
!362 = !{!"branch_weights", i32 8101, i32 8019}
!363 = !{!"branch_weights", i32 0, i32 8019}
!364 = !{!"branch_weights", i32 7973, i32 46}
!365 = !{!"branch_weights", i32 0, i32 7973}
!366 = !{!"branch_weights", i32 46, i32 0}
!367 = !{!"branch_weights", i32 65618995, i32 67451605}
!368 = !{!"branch_weights", i32 1, i32 24225}
!369 = !{!"branch_weights", i32 885581510, i32 744115440, i32 277568290}
!370 = !{!"branch_weights", i32 70, i32 21726}
!371 = !{!"branch_weights", i32 12557, i32 9169}
!372 = !{!"branch_weights", i32 8529, i32 640}
!373 = !{!"branch_weights", i32 8147, i32 25993}
!374 = !{!"branch_weights", i32 1, i32 7506}
!375 = !{!"branch_weights", i32 0, i32 16058}
!376 = !{!"branch_weights", i32 15418, i32 640}
!377 = !{!"branch_weights", i32 7506, i32 8552}
!378 = distinct !{!378, !108, !109}
!379 = !{!"branch_weights", i32 31641, i32 24225}
!380 = distinct !{!380, !108, !109}
!381 = !{!"function_entry_count", i64 1644}
!382 = !{!"reload.c;hard_reg_set_here_p"}
!383 = !{!"branch_weights", i32 0, i32 784, i32 312, i32 548}
!384 = !{!"branch_weights", i32 0, i32 0, i32 1096}
!385 = !{!"branch_weights", i32 548, i32 548}
!386 = !{!"branch_weights", i32 548, i32 1096}
!387 = !{!"branch_weights", i32 1096, i32 0}
!388 = distinct !{!388, !108, !109}
!389 = !{i64 0, i64 240, !102, i64 240, i64 240, !102, i64 480, i64 240, !102, i64 720, i64 120, !102, i64 840, i64 120, !102, i64 960, i64 112, !102, i64 1072, i64 14, !102, i64 1086, i64 1, !102, i64 1087, i64 1, !102, i64 1088, i64 1, !102, i64 1089, i64 30, !102, i64 1120, i64 8, !91}
!390 = distinct !{!390, !108, !109}
!391 = !{!"function_entry_count", i64 271000}
!392 = !{!"branch_weights", i32 196730, i32 74270}
!393 = !{!"branch_weights", i32 207, i32 74063, i32 0}
!394 = !{!"branch_weights", i32 23980, i32 50083, i32 0}
!395 = !{!"branch_weights", i32 0, i32 50083}
!396 = !{!"branch_weights", i32 0, i32 24187}
!397 = !{!"branch_weights", i32 24187, i32 0, i32 0, i32 0}
!398 = distinct !{!398, !108, !109}
!399 = distinct !{!399, !108, !109}
!400 = !{i64 0, i64 4, !106, i64 4, i64 4, !106, i64 8, i64 8, !91, i64 16, i64 8, !174, i64 24, i64 8, !174}
!401 = !{i64 0, i64 4, !106, i64 4, i64 8, !91, i64 12, i64 8, !174, i64 20, i64 8, !174}
!402 = !{i64 0, i64 8, !91, i64 8, i64 8, !174, i64 16, i64 8, !174}
!403 = !{i64 0, i64 8, !174, i64 8, i64 8, !174}
!404 = !{i64 0, i64 8, !174}
!405 = !{!406, !97, i64 0}
!406 = !{!"decomposition", !97, i64 0, !97, i64 4, !92, i64 8, !98, i64 16, !98, i64 24}
!407 = !{!406, !98, i64 16}
!408 = !{!406, !98, i64 24}
!409 = !{!406, !97, i64 4}
!410 = !{!406, !92, i64 8}
!411 = !{!"function_entry_count", i64 783934}
!412 = !{!"branch_weights", i32 783934, i32 0}
!413 = !{!"branch_weights", i32 772927, i32 11007}
!414 = !{!"branch_weights", i32 454057, i32 318870}
!415 = !{!"branch_weights", i32 453453, i32 604}
!416 = !{!"branch_weights", i32 66498, i32 386955}
!417 = !{!"branch_weights", i32 66498, i32 0}
!418 = !{!419, !93, i64 1086}
!419 = !{!"recog_data", !93, i64 0, !93, i64 240, !93, i64 480, !93, i64 720, !93, i64 840, !93, i64 960, !93, i64 1072, !93, i64 1086, !93, i64 1087, !93, i64 1088, !93, i64 1089, !92, i64 1120}
!420 = !{!419, !93, i64 1088}
!421 = !{!"branch_weights", i32 61, i32 717375}
!422 = !{!"branch_weights", i32 224325, i32 493111}
!423 = !{!"VP", i32 1, i64 493111, i64 8, i64 485680, i64 9, i64 7431}
!424 = !{!"VP", i32 1, i64 493111, i64 16, i64 485680, i64 17, i64 7431}
!425 = !{!"branch_weights", i32 493110, i32 1}
!426 = !{!"branch_weights", i32 1, i32 993652}
!427 = !{!"branch_weights", i32 570082, i32 20021802}
!428 = !{!"branch_weights", i32 20265918, i32 296150, i32 0, i32 9425, i32 20391, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!429 = !{!"branch_weights", i32 0, i32 9425}
!430 = !{!"branch_weights", i32 9425, i32 0}
!431 = !{!"branch_weights", i32 0, i32 20391}
!432 = !{!"branch_weights", i32 19532, i32 859}
!433 = !{!"branch_weights", i32 0, i32 19532}
!434 = !{!"branch_weights", i32 14458, i32 5074}
!435 = !{!"branch_weights", i32 5074, i32 0}
!436 = !{!"branch_weights", i32 993652, i32 19598232}
!437 = distinct !{!437, !108, !109}
!438 = !{!"branch_weights", i32 493110, i32 500543}
!439 = distinct !{!439, !108, !109}
!440 = distinct !{!440, !108, !109}
!441 = !{!"branch_weights", i32 296150, i32 697503}
!442 = !{!"branch_weights", i32 697503, i32 296150}
!443 = !{!"branch_weights", i32 949785, i32 43625, i32 243}
!444 = !{!"branch_weights", i32 0, i32 243}
!445 = !{!"branch_weights", i32 630701, i32 318882, i32 202, i32 0}
!446 = !{!"branch_weights", i32 0, i32 202}
!447 = !{!"branch_weights", i32 202, i32 0}
!448 = !{!"branch_weights", i32 0, i32 630701}
!449 = !{!"branch_weights", i32 392188, i32 238513}
!450 = !{!"branch_weights", i32 392188, i32 0}
!451 = !{!"branch_weights", i32 390980, i32 1208}
!452 = !{!"branch_weights", i32 392188, i32 601465}
!453 = !{!"branch_weights", i32 1208, i32 390980}
!454 = !{!"branch_weights", i32 993653, i32 0}
!455 = !{!"branch_weights", i32 492957, i32 154}
!456 = !{!"branch_weights", i32 295996, i32 196961}
!457 = !{!"branch_weights", i32 287216, i32 8780}
!458 = !{!"branch_weights", i32 247, i32 1}
!459 = !{!"branch_weights", i32 0, i32 686328}
!460 = !{!"branch_weights", i32 686327, i32 1}
!461 = distinct !{!461, !108, !109}
!462 = distinct !{!462, !108, !109}
!463 = !{!"branch_weights", i32 0, i32 1388482}
!464 = !{!"branch_weights", i32 404, i32 1388078}
!465 = !{!"branch_weights", i32 404, i32 0}
!466 = !{!"branch_weights", i32 0, i32 404}
!467 = !{!"branch_weights", i32 0, i32 0, i32 404}
!468 = distinct !{!468, !108, !109}
!469 = !{!"branch_weights", i32 1328713, i32 59769, i32 0}
!470 = !{!"branch_weights", i32 0, i32 3544105}
!471 = !{!"branch_weights", i32 25011, i32 102289, i32 1286193, i32 296314, i32 0, i32 2269, i32 9589, i32 16144, i32 2269, i32 0, i32 13565, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 243, i32 336346, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 318274, i32 7491, i32 269, i32 0, i32 0, i32 0, i32 0, i32 6838, i32 0, i32 0, i32 0, i32 290173, i32 830828}
!472 = !{!"branch_weights", i32 164, i32 13401}
!473 = !{!"branch_weights", i32 0, i32 164}
!474 = !{!"branch_weights", i32 8101, i32 5300}
!475 = !{!"branch_weights", i32 5464, i32 0}
!476 = !{!"branch_weights", i32 8101, i32 5464}
!477 = !{!"branch_weights", i32 1, i32 8100}
!478 = !{!"branch_weights", i32 0, i32 10588}
!479 = !{!"branch_weights", i32 8100, i32 2488}
!480 = distinct !{!480, !108, !109}
!481 = !{!"branch_weights", i32 336346, i32 0}
!482 = !{!"branch_weights", i32 0, i32 255496, i32 80850}
!483 = !{!"branch_weights", i32 604, i32 80246}
!484 = !{!114, !92, i64 1008}
!485 = !{!"branch_weights", i32 179224, i32 139050}
!486 = !{!"branch_weights", i32 179224, i32 0}
!487 = !{!"branch_weights", i32 538, i32 6953, i32 0}
!488 = !{!"branch_weights", i32 67, i32 7040}
!489 = !{!"branch_weights", i32 0, i32 67}
!490 = !{!"branch_weights", i32 290173, i32 0}
!491 = !{!"branch_weights", i32 290173, i32 0, i32 0}
!492 = !{!"branch_weights", i32 87135, i32 203038}
!493 = !{!"branch_weights", i32 0, i32 290173}
!494 = !{!"branch_weights", i32 139652, i32 150521}
!495 = !{!"branch_weights", i32 604, i32 139048}
!496 = !{!"branch_weights", i32 0, i32 25011}
!497 = !{!"branch_weights", i32 0, i32 1146012}
!498 = !{!"branch_weights", i32 537622, i32 608390}
!499 = !{!"branch_weights", i32 1386, i32 536236}
!500 = !{!"branch_weights", i32 1388482, i32 2155623}
!501 = distinct !{!501, !108, !109}
!502 = !{!"branch_weights", i32 242470, i32 1146012}
!503 = !{!"branch_weights", i32 198765, i32 1189717}
!504 = !{!"branch_weights", i32 193301, i32 5464}
!505 = !{!"branch_weights", i32 193099, i32 202}
!506 = !{!"branch_weights", i32 6598, i32 186703}
!507 = !{!"branch_weights", i32 202, i32 6396}
!508 = !{!"branch_weights", i32 190814, i32 2487}
!509 = !{!"VP", i32 0, i64 2487, i64 -7366296537145364285, i64 2487}
!510 = !{!"branch_weights", i32 2487, i32 0}
!511 = !{!"branch_weights", i32 0, i32 2487}
!512 = !{!"branch_weights", i32 0, i32 193301}
!513 = !{!"branch_weights", i32 2487, i32 190814}
!514 = !{!"branch_weights", i32 202, i32 190612}
!515 = !{!"branch_weights", i32 0, i32 190612}
!516 = !{!"branch_weights", i32 164252, i32 26360}
!517 = !{!"branch_weights", i32 788, i32 5810}
!518 = !{!"branch_weights", i32 0, i32 192513}
!519 = !{!"branch_weights", i32 29049, i32 164252}
!520 = !{!"branch_weights", i32 1189717, i32 198765}
!521 = !{!"branch_weights", i32 1195181, i32 193301}
!522 = !{!"branch_weights", i32 202, i32 193099}
!523 = !{!"branch_weights", i32 193099, i32 0}
!524 = !{!"branch_weights", i32 192311, i32 788}
!525 = !{!"branch_weights", i32 0, i32 788, i32 0}
!526 = !{!"branch_weights", i32 686327, i32 702155}
!527 = distinct !{!527, !108, !109}
!528 = !{!"branch_weights", i32 1388482, i32 0}
!529 = distinct !{!529, !108, !109}
!530 = distinct !{!530, !108, !109}
!531 = distinct !{!531, !108, !109}
!532 = !{!"branch_weights", i32 493027, i32 193301}
!533 = !{!"branch_weights", i32 9425, i32 483602}
!534 = !{!"branch_weights", i32 493026, i32 1}
!535 = !{!"branch_weights", i32 0, i32 193099}
!536 = !{!"branch_weights", i32 193098, i32 1}
!537 = !{!"branch_weights", i32 371403, i32 2254, i32 20734}
!538 = !{!"branch_weights", i32 193098, i32 201293}
!539 = distinct !{!539, !108, !109}
!540 = !{!"branch_weights", i32 187757, i32 5342}
!541 = !{!"branch_weights", i32 5342, i32 0}
!542 = !{!"branch_weights", i32 0, i32 5342}
!543 = !{!"branch_weights", i32 5342, i32 187757}
!544 = !{!"branch_weights", i32 187756, i32 1}
!545 = !{!"branch_weights", i32 0, i32 193301, i32 0, i32 493027}
!546 = !{!"branch_weights", i32 247, i32 686081}
!547 = distinct !{!547, !108, !109}
!548 = !{!"branch_weights", i32 164, i32 84}
!549 = !{!"branch_weights", i32 164, i32 0}
!550 = !{!419, !93, i64 1087}
!551 = !{!"branch_weights", i32 163, i32 1}
!552 = !{!"branch_weights", i32 236, i32 0}
!553 = !{!"branch_weights", i32 163, i32 73}
!554 = distinct !{!554, !108, !109}
!555 = !{!"VP", i32 1, i64 164, i64 17, i64 164}
!556 = distinct !{!556, !108, !109}
!557 = !{!"branch_weights", i32 0, i32 84}
!558 = !{!"branch_weights", i32 5300, i32 988353}
!559 = !{!"branch_weights", i32 5216, i32 84}
!560 = distinct !{!560, !108, !109}
!561 = distinct !{!561, !108, !109}
!562 = !{!"branch_weights", i32 492947, i32 164}
!563 = distinct !{!563, !108, !109}
!564 = distinct !{!564, !108, !109}
!565 = !{!"branch_weights", i32 84, i32 993569}
!566 = distinct !{!566, !108, !109}
!567 = distinct !{!567, !108, !109}
!568 = distinct !{!568, !108, !109}
!569 = distinct !{!569, !108, !109}
!570 = !{!"branch_weights", i32 493111, i32 0}
!571 = distinct !{!571, !108, !109}
!572 = distinct !{!572, !108, !109}
!573 = !{!129, !93, i64 18}
!574 = !{!"branch_weights", i32 988353, i32 5216}
!575 = !{!"branch_weights", i32 983137, i32 5216}
!576 = !{!"branch_weights", i32 983137, i32 0}
!577 = !{!"branch_weights", i32 282381, i32 202, i32 318882, i32 381874}
!578 = distinct !{!578, !108, !109}
!579 = !{!"branch_weights", i32 1208, i32 380666}
!580 = !{!"branch_weights", i32 164168, i32 155922}
!581 = !{!"branch_weights", i32 155922, i32 164168}
!582 = !{!"branch_weights", i32 0, i32 164168}
!583 = !{!"branch_weights", i32 0, i32 320090}
!584 = !{!"branch_weights", i32 503262, i32 159785}
!585 = !{!"branch_weights", i32 58700, i32 0, i32 101085}
!586 = !{!"branch_weights", i32 0, i32 101085}
!587 = distinct !{!587, !108, !109}
!588 = !{!"branch_weights", i32 5216, i32 5216}
!589 = !{!"branch_weights", i32 0, i32 5216}
!590 = !{!"branch_weights", i32 5216, i32 0}
!591 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 5216}
!592 = distinct !{!592, !108, !109}
!593 = distinct !{!593, !108, !109}
!594 = !{!"branch_weights", i32 673177, i32 320476}
!595 = !{!"branch_weights", i32 0, i32 320476}
!596 = distinct !{!596, !108, !109}
!597 = !{!"branch_weights", i32 160087, i32 333024}
!598 = !{!126, !93, i64 33}
!599 = distinct !{!599, !108, !109}
!600 = distinct !{!600, !108, !109}
!601 = !{!"branch_weights", i32 0, i32 493111}
!602 = !{!"branch_weights", i32 320174, i32 172937}
!603 = distinct !{!603, !108, !109}
!604 = !{!"branch_weights", i32 328859, i32 164252}
!605 = !{!"branch_weights", i32 84, i32 164168}
!606 = !{!"branch_weights", i32 167, i32 1}
!607 = distinct !{!607, !108, !109}
!608 = distinct !{!608, !108, !109}
!609 = !{!"branch_weights", i32 1, i32 167}
!610 = distinct !{!610, !108, !109}
!611 = !{!"branch_weights", i32 84, i32 0, i32 0}
!612 = distinct !{!612, !108, !109}
!613 = distinct !{!613, !108, !109}
!614 = distinct !{!614, !108, !109}
!615 = distinct !{!615, !108, !109}
!616 = distinct !{!616, !108, !109}
!617 = distinct !{!617, !108, !109}
!618 = distinct !{!618, !108, !109}
!619 = !{!"branch_weights", i32 320174, i32 0, i32 0, i32 0}
!620 = distinct !{!620, !108, !109}
!621 = distinct !{!621, !108, !109}
!622 = distinct !{!622, !108, !109}
!623 = !{!"branch_weights", i32 155922, i32 0, i32 0, i32 0}
!624 = distinct !{!624, !108, !109}
!625 = distinct !{!625, !108, !109}
!626 = !{!181, !97, i64 28}
!627 = !{!"branch_weights", i32 0, i32 156006}
!628 = !{!181, !97, i64 32}
!629 = distinct !{!629, !108, !109}
!630 = !{!"branch_weights", i32 155272, i32 650}
!631 = !{!"branch_weights", i32 155272, i32 0}
!632 = !{!"branch_weights", i32 63388, i32 91884}
!633 = !{!"branch_weights", i32 0, i32 91884}
!634 = !{!"branch_weights", i32 63388, i32 0}
!635 = !{!"branch_weights", i32 0, i32 63388}
!636 = distinct !{!636, !108, !109}
!637 = distinct !{!637, !108, !109}
!638 = !{!"function_entry_count", i64 404}
!639 = !{!"reload.c;find_reloads_toplev"}
!640 = !{!"branch_weights", i32 0, i32 202, i32 0, i32 202}
!641 = !{!"branch_weights", i32 1, i32 201}
!642 = !{!"branch_weights", i32 202, i32 202}
!643 = !{!"branch_weights", i32 203, i32 201}
!644 = distinct !{!644, !108, !109}
!645 = !{!"function_entry_count", i64 160087}
!646 = !{!"branch_weights", i32 160086, i32 1}
!647 = !{!"branch_weights", i32 160045, i32 42}
!648 = !{!"branch_weights", i32 0, i32 42}
!649 = !{!"branch_weights", i32 42, i32 0}
!650 = !{!"branch_weights", i32 0, i32 160045}
!651 = !{!"branch_weights", i32 1, i32 160086}
!652 = distinct !{!652, !108, !109}
!653 = distinct !{!653, !108, !109}
!654 = distinct !{!654, !108, !109}
!655 = distinct !{!655, !108, !109}
!656 = distinct !{!656, !108, !109}
!657 = distinct !{!657, !108, !109}
!658 = distinct !{!658, !108, !109}
!659 = !{!126, !92, i64 0}
!660 = distinct !{!660, !108, !109}
!661 = distinct !{!661, !108, !109}
!662 = !{!131, !92, i64 8}
!663 = !{!131, !92, i64 16}
!664 = !{!665, !92, i64 88}
!665 = !{!"rtl_data", !666, i64 0, !667, i64 40, !668, i64 96, !669, i64 112, !671, i64 208, !672, i64 248, !97, i64 312, !92, i64 320, !92, i64 328, !92, i64 336, !92, i64 344, !92, i64 352, !92, i64 360, !92, i64 368, !92, i64 376, !92, i64 384, !92, i64 392, !98, i64 400, !92, i64 408, !92, i64 416, !92, i64 424, !97, i64 432, !97, i64 436, !97, i64 440, !97, i64 444, !97, i64 448, !97, i64 452, !92, i64 456, !93, i64 464, !93, i64 465, !93, i64 466, !93, i64 467, !93, i64 468, !93, i64 469, !93, i64 470, !93, i64 471, !93, i64 472, !93, i64 473, !93, i64 474, !93, i64 475, !93, i64 476, !93, i64 477, !93, i64 478, !93, i64 479, !93, i64 480, !93, i64 481, !93, i64 482, !93, i64 483, !93, i64 484, !93, i64 485}
!666 = !{!"expr_status", !97, i64 0, !97, i64 4, !97, i64 8, !92, i64 16, !92, i64 24, !92, i64 32}
!667 = !{!"emit_status", !97, i64 0, !97, i64 4, !92, i64 8, !92, i64 16, !92, i64 24, !97, i64 32, !97, i64 36, !97, i64 40, !97, i64 44, !92, i64 48}
!668 = !{!"varasm_status", !92, i64 0, !97, i64 8}
!669 = !{!"incoming_args", !97, i64 0, !97, i64 4, !97, i64 8, !92, i64 16, !670, i64 24, !92, i64 88}
!670 = !{!"ix86_args", !97, i64 0, !97, i64 4, !97, i64 8, !97, i64 12, !97, i64 16, !97, i64 20, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !97, i64 40, !97, i64 44, !97, i64 48, !97, i64 52, !97, i64 56, !97, i64 60}
!671 = !{!"function_subsections", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32}
!672 = !{!"rtl_eh", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !93, i64 48}
!673 = !{!"function_entry_count", i64 156135}
!674 = !{!"reload.c;subst_reg_equivs"}
!675 = !{!"branch_weights", i32 193, i32 0, i32 361, i32 23964, i32 0, i32 0, i32 0, i32 130630, i32 46, i32 0, i32 0, i32 514, i32 427}
!676 = !{!"branch_weights", i32 514, i32 0}
!677 = !{!"branch_weights", i32 0, i32 514}
!678 = !{!"branch_weights", i32 0, i32 427}
!679 = !{!"branch_weights", i32 1, i32 619}
!680 = !{!"branch_weights", i32 1240, i32 0}
!681 = !{!"branch_weights", i32 621, i32 619}
!682 = distinct !{!682, !108, !109}
!683 = !{!684, !97, i64 0}
!684 = !{!"optab_handlers", !97, i64 0}
!685 = !{!129, !92, i64 0}
!686 = distinct !{!686, !108, !109}
!687 = distinct !{!687, !108, !109}
!688 = distinct !{!688, !108, !109}
