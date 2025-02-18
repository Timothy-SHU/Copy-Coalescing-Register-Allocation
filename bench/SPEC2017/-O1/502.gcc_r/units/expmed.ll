; ModuleID = 'expmed.c'
source_filename = "expmed.c"
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.alg_hash_entry = type { i64, i32, i32, %struct.mult_cost, i8 }
%struct.mult_cost = type { i16, i16 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.anon = type { %struct.rtx_def, [2 x %union.rtunion_def], %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def, %struct.rtx_def, %union.rtunion_def }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.algorithm = type { %struct.mult_cost, i16, [32 x i32], [32 x i8] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@zero_cost = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@add_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@neg_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@mul_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@sdiv_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@udiv_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@sdiv_pow2_cheap = internal unnamed_addr global [2 x [87 x i8]] zeroinitializer, align 16
@smod_pow2_cheap = internal unnamed_addr global [2 x [87 x i8]] zeroinitializer, align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mul_widen_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@mul_highpart_cost = internal unnamed_addr global [2 x [87 x i32]] zeroinitializer, align 16
@shift_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@shiftsub1_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@shiftsub0_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@shiftadd_cost = internal unnamed_addr global [2 x [87 x [32 x i32]]] zeroinitializer, align 16
@optab_table = external global [159 x %struct.optab_d], align 16
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str = private unnamed_addr constant [9 x i8] c"expmed.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@word_mode = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@flag_trapv = external local_unnamed_addr global i32, align 4
@dconst2 = external global %struct.real_value, align 8
@expand_divmod.last_div_const = internal unnamed_addr global i64 0, align 8
@expand_divmod.ext_op1 = internal unnamed_addr global i64 0, align 8
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@byte_mode = external local_unnamed_addr global i32, align 4
@volatile_ok = external local_unnamed_addr global i32, align 4
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@alg_hash = internal unnamed_addr global [1031 x %struct.alg_hash_entry] zeroinitializer, align 16
@switch.table.mode_for_extraction = private unnamed_addr constant [3 x ptr] [ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2181), ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2179), ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2180)], align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !64 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !65
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !64 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !65
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !75

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !69
  %11 = load i8, ptr %3, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !64 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !64 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !65
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !75

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !77
  store i8 %12, ptr %4, align 1, !tbaa !76
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !64 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !64 {
  %2 = load i32, ptr %0, align 8, !tbaa !79
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !80
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !64 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !81

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @init_expmed() local_unnamed_addr #9 !prof !84 {
  %1 = alloca %struct.anon, align 8
  %2 = alloca [32 x ptr], align 16
  %3 = alloca [32 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 936, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #15
  br label %4

4:                                                ; preds = %0, %4
  %5 = phi i64 [ 1, %0 ], [ %11, %4 ]
  %6 = shl nuw nsw i64 1, %5
  %7 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %6) #15
  %8 = getelementptr inbounds [32 x ptr], ptr %2, i64 0, i64 %5
  store ptr %7, ptr %8, align 8, !tbaa !65
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #15
  %10 = getelementptr inbounds [32 x ptr], ptr %3, i64 0, i64 %5
  store ptr %9, ptr %10, align 8, !tbaa !65
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %4, !prof !85, !llvm.loop !86

13:                                               ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %1, i8 0, i64 936, i1 false)
  store i32 37, ptr %1, align 8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !76
  call void @df_ref_change_reg_with_loc(i32 noundef %15, i32 noundef 58, ptr noundef nonnull %1) #15
  store i32 58, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -65536
  %19 = or disjoint i32 %18, 49
  store i32 %19, ptr %16, align 8
  %20 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %21, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, -65536
  %25 = or disjoint i32 %24, 51
  store i32 %25, ptr %22, align 8
  %26 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 4, i32 1
  store ptr %1, ptr %26, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -65536
  %30 = or disjoint i32 %29, 52
  store i32 %30, ptr %27, align 8
  %31 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5, i32 1
  store ptr %1, ptr %31, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 5, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %32, align 8, !tbaa !76
  %33 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, -65536
  %36 = or disjoint i32 %35, 55
  store i32 %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7, i32 1
  store ptr %1, ptr %37, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 7, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %38, align 8, !tbaa !76
  %39 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, -65536
  %42 = or disjoint i32 %41, 59
  store i32 %42, ptr %39, align 8
  %43 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9, i32 1
  store ptr %1, ptr %43, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 9, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %44, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, -65536
  %48 = or disjoint i32 %47, 55
  store i32 %48, ptr %45, align 8
  %49 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12, i32 1
  store ptr %1, ptr %49, align 8, !tbaa !76
  %50 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 32) #15
  %51 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 12, i32 1, i32 0, i32 0, i64 1
  store ptr %50, ptr %51, align 8, !tbaa !76
  %52 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, -65536
  %55 = or disjoint i32 %54, 58
  store i32 %55, ptr %52, align 8
  %56 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14, i32 1
  store ptr %1, ptr %56, align 8, !tbaa !76
  %57 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 14, i32 1, i32 0, i32 0, i64 1
  store ptr %50, ptr %57, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 11
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, -65536
  %61 = or disjoint i32 %60, 99
  store i32 %61, ptr %58, align 8
  %62 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 11, i32 1
  store ptr %1, ptr %62, align 8, !tbaa !76
  %63 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, -65536
  %66 = or disjoint i32 %65, 52
  store i32 %66, ptr %63, align 8
  %67 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16, i32 1
  store ptr %58, ptr %67, align 8, !tbaa !76
  %68 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 16, i32 1, i32 0, i32 0, i64 1
  store ptr %58, ptr %68, align 8, !tbaa !76
  %69 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, -65536
  %72 = or disjoint i32 %71, 68
  store i32 %72, ptr %69, align 8
  %73 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18, i32 1
  store ptr %63, ptr %73, align 8, !tbaa !76
  %74 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 20
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, -65536
  %77 = or disjoint i32 %76, 100
  store i32 %77, ptr %74, align 8
  %78 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 20, i32 1
  store ptr %69, ptr %78, align 8, !tbaa !76
  %79 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, -65536
  %82 = or disjoint i32 %81, 65
  store i32 %82, ptr %79, align 8
  %83 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21, i32 1
  store ptr %1, ptr %83, align 8, !tbaa !76
  %84 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, -65536
  %87 = or disjoint i32 %86, 52
  store i32 %87, ptr %84, align 8
  %88 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23, i32 1
  store ptr %1, ptr %88, align 8, !tbaa !76
  %89 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, -65536
  %92 = or disjoint i32 %91, 49
  store i32 %92, ptr %89, align 8
  %93 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25, i32 1
  store ptr %84, ptr %93, align 8, !tbaa !76
  %94 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 25, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %94, align 8, !tbaa !76
  %95 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, -65536
  %98 = or disjoint i32 %97, 50
  store i32 %98, ptr %95, align 8
  %99 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27, i32 1
  store ptr %84, ptr %99, align 8, !tbaa !76
  %100 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 27, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %100, align 8, !tbaa !76
  %101 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, -65536
  %104 = or disjoint i32 %103, 50
  store i32 %104, ptr %101, align 8
  %105 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29, i32 1
  store ptr %1, ptr %105, align 8, !tbaa !76
  %106 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 29, i32 1, i32 0, i32 0, i64 1
  store ptr %84, ptr %106, align 8, !tbaa !76
  %107 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %108 = icmp eq i8 %107, 0
  %109 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 18, i32 1, i32 0, i32 0, i64 1
  %110 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 21, i32 1, i32 0, i32 0, i64 1
  %111 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 23, i32 1, i32 0, i32 0, i64 1
  br label %112

112:                                              ; preds = %13, %246
  %113 = phi i64 [ 0, %13 ], [ %247, %246 ]
  %114 = trunc i64 %113 to i8
  store i8 %114, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 42), align 2, !tbaa !87
  %115 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %116 = call i32 @rtx_cost(ptr noundef %115, i32 noundef 23, i8 noundef zeroext %114) #15
  %117 = getelementptr inbounds [2 x i32], ptr @zero_cost, i64 0, i64 %113
  store i32 %116, ptr %117, align 4, !tbaa !80
  br i1 %108, label %246, label %121, !prof !96

118:                                              ; preds = %230, %215
  %119 = load i8, ptr %190, align 1, !tbaa !76
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %246, label %121, !prof !97, !llvm.loop !98

121:                                              ; preds = %112, %118
  %122 = phi i8 [ %119, %118 ], [ %107, %112 ]
  %123 = zext i8 %122 to i32
  %124 = load i32, ptr %1, align 8
  %125 = shl nuw nsw i32 %123, 16
  %126 = and i32 %124, -16711681
  %127 = or disjoint i32 %126, %125
  store i32 %127, ptr %1, align 8
  %128 = load i32, ptr %16, align 8
  %129 = and i32 %128, -16711681
  %130 = or disjoint i32 %129, %125
  store i32 %130, ptr %16, align 8
  %131 = load i32, ptr %22, align 8
  %132 = and i32 %131, -16711681
  %133 = or disjoint i32 %132, %125
  store i32 %133, ptr %22, align 8
  %134 = load i32, ptr %27, align 8
  %135 = and i32 %134, -16711681
  %136 = or disjoint i32 %135, %125
  store i32 %136, ptr %27, align 8
  %137 = load i32, ptr %33, align 8
  %138 = and i32 %137, -16711681
  %139 = or disjoint i32 %138, %125
  store i32 %139, ptr %33, align 8
  %140 = load i32, ptr %39, align 8
  %141 = and i32 %140, -16711681
  %142 = or disjoint i32 %141, %125
  store i32 %142, ptr %39, align 8
  %143 = load i32, ptr %45, align 8
  %144 = and i32 %143, -16711681
  %145 = or disjoint i32 %144, %125
  store i32 %145, ptr %45, align 8
  %146 = load i32, ptr %52, align 8
  %147 = and i32 %146, -16711681
  %148 = or disjoint i32 %147, %125
  store i32 %148, ptr %52, align 8
  %149 = load i32, ptr %74, align 8
  %150 = and i32 %149, -16711681
  %151 = or disjoint i32 %150, %125
  store i32 %151, ptr %74, align 8
  %152 = load i32, ptr %79, align 8
  %153 = and i32 %152, -16711681
  %154 = or disjoint i32 %153, %125
  store i32 %154, ptr %79, align 8
  %155 = load i32, ptr %84, align 8
  %156 = and i32 %155, -16711681
  %157 = or disjoint i32 %156, %125
  store i32 %157, ptr %84, align 8
  %158 = load i32, ptr %89, align 8
  %159 = and i32 %158, -16711681
  %160 = or disjoint i32 %159, %125
  store i32 %160, ptr %89, align 8
  %161 = load i32, ptr %95, align 8
  %162 = and i32 %161, -16711681
  %163 = or disjoint i32 %162, %125
  store i32 %163, ptr %95, align 8
  %164 = load i32, ptr %101, align 8
  %165 = and i32 %164, -16711681
  %166 = or disjoint i32 %165, %125
  store i32 %166, ptr %101, align 8
  %167 = call i32 @rtx_cost(ptr noundef nonnull %16, i32 noundef 23, i8 noundef zeroext %114) #15
  %168 = zext i8 %122 to i64
  %169 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %113, i64 %168
  store i32 %167, ptr %169, align 4, !tbaa !80
  %170 = call i32 @rtx_cost(ptr noundef nonnull %22, i32 noundef 23, i8 noundef zeroext %114) #15
  %171 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %113, i64 %168
  store i32 %170, ptr %171, align 4, !tbaa !80
  %172 = call i32 @rtx_cost(ptr noundef nonnull %27, i32 noundef 23, i8 noundef zeroext %114) #15
  %173 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %113, i64 %168
  store i32 %172, ptr %173, align 4, !tbaa !80
  %174 = call i32 @rtx_cost(ptr noundef nonnull %33, i32 noundef 23, i8 noundef zeroext %114) #15
  %175 = getelementptr inbounds [2 x [87 x i32]], ptr @sdiv_cost, i64 0, i64 %113, i64 %168
  store i32 %174, ptr %175, align 4, !tbaa !80
  %176 = call i32 @rtx_cost(ptr noundef nonnull %39, i32 noundef 23, i8 noundef zeroext %114) #15
  %177 = getelementptr inbounds [2 x [87 x i32]], ptr @udiv_cost, i64 0, i64 %113, i64 %168
  store i32 %176, ptr %177, align 4, !tbaa !80
  %178 = call i32 @rtx_cost(ptr noundef nonnull %45, i32 noundef 23, i8 noundef zeroext %114) #15
  %179 = load i32, ptr %169, align 4, !tbaa !80
  %180 = shl nsw i32 %179, 1
  %181 = icmp sle i32 %178, %180
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %113, i64 %168
  store i8 %182, ptr %183, align 1, !tbaa !76
  %184 = call i32 @rtx_cost(ptr noundef nonnull %52, i32 noundef 23, i8 noundef zeroext %114) #15
  %185 = load i32, ptr %169, align 4, !tbaa !80
  %186 = shl nsw i32 %185, 2
  %187 = icmp sle i32 %184, %186
  %188 = zext i1 %187 to i8
  %189 = getelementptr inbounds [2 x [87 x i8]], ptr @smod_pow2_cheap, i64 0, i64 %113, i64 %168
  store i8 %188, ptr %189, align 1, !tbaa !76
  %190 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %168
  %191 = load i8, ptr %190, align 1, !tbaa !76
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %215, label %193, !prof !99

193:                                              ; preds = %121
  %194 = zext i8 %191 to i32
  %195 = load i32, ptr %58, align 8
  %196 = shl nuw nsw i32 %194, 16
  %197 = and i32 %195, -16711681
  %198 = or disjoint i32 %197, %196
  store i32 %198, ptr %58, align 8
  %199 = load i32, ptr %63, align 8
  %200 = and i32 %199, -16711681
  %201 = or disjoint i32 %200, %196
  store i32 %201, ptr %63, align 8
  %202 = load i32, ptr %69, align 8
  %203 = and i32 %202, -16711681
  %204 = or disjoint i32 %203, %196
  store i32 %204, ptr %69, align 8
  %205 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %168
  %206 = load i8, ptr %205, align 1, !tbaa !76
  %207 = zext i8 %206 to i64
  %208 = shl nuw nsw i64 %207, 3
  %209 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %208) #15
  store ptr %209, ptr %109, align 8, !tbaa !76
  %210 = call i32 @rtx_cost(ptr noundef nonnull %63, i32 noundef 23, i8 noundef zeroext %114) #15
  %211 = zext i8 %191 to i64
  %212 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %113, i64 %211
  store i32 %210, ptr %212, align 4, !tbaa !80
  %213 = call i32 @rtx_cost(ptr noundef nonnull %74, i32 noundef 23, i8 noundef zeroext %114) #15
  %214 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_highpart_cost, i64 0, i64 %113, i64 %168
  store i32 %213, ptr %214, align 4, !tbaa !80
  br label %215

215:                                              ; preds = %193, %121
  %216 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %113, i64 %168
  store i32 0, ptr %216, align 16, !tbaa !80
  %217 = load i32, ptr %169, align 4, !tbaa !80
  %218 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %113, i64 %168
  store i32 %217, ptr %218, align 16, !tbaa !80
  %219 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %113, i64 %168
  store i32 %217, ptr %219, align 16, !tbaa !80
  %220 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %113, i64 %168
  store i32 %217, ptr %220, align 16, !tbaa !80
  %221 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %168
  %222 = load i8, ptr %221, align 1, !tbaa !76
  %223 = icmp ugt i8 %222, 4
  %224 = zext i8 %222 to i32
  %225 = shl nuw nsw i32 %224, 3
  %226 = select i1 %223, i32 32, i32 %225, !prof !100
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %118, label %228, !prof !101

228:                                              ; preds = %215
  %229 = zext nneg i32 %226 to i64
  br label %230

230:                                              ; preds = %228, %230
  %231 = phi i64 [ 1, %228 ], [ %244, %230 ]
  %232 = getelementptr inbounds [32 x ptr], ptr %3, i64 0, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !65
  store ptr %233, ptr %110, align 8, !tbaa !76
  %234 = getelementptr inbounds [32 x ptr], ptr %2, i64 0, i64 %231
  %235 = load ptr, ptr %234, align 8, !tbaa !65
  store ptr %235, ptr %111, align 8, !tbaa !76
  %236 = call i32 @rtx_cost(ptr noundef nonnull %79, i32 noundef 23, i8 noundef zeroext %114) #15
  %237 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %113, i64 %168, i64 %231
  store i32 %236, ptr %237, align 4, !tbaa !80
  %238 = call i32 @rtx_cost(ptr noundef nonnull %89, i32 noundef 23, i8 noundef zeroext %114) #15
  %239 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %113, i64 %168, i64 %231
  store i32 %238, ptr %239, align 4, !tbaa !80
  %240 = call i32 @rtx_cost(ptr noundef nonnull %95, i32 noundef 23, i8 noundef zeroext %114) #15
  %241 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %113, i64 %168, i64 %231
  store i32 %240, ptr %241, align 4, !tbaa !80
  %242 = call i32 @rtx_cost(ptr noundef nonnull %101, i32 noundef 23, i8 noundef zeroext %114) #15
  %243 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %113, i64 %168, i64 %231
  store i32 %242, ptr %243, align 4, !tbaa !80
  %244 = add nuw nsw i64 %231, 1
  %245 = icmp eq i64 %244, %229
  br i1 %245, label %118, label %230, !prof !102, !llvm.loop !103

246:                                              ; preds = %118, %112
  %247 = add nuw nsw i64 %113, 1
  %248 = icmp eq i64 %113, 0
  br i1 %248, label %112, label %249, !prof !104, !llvm.loop !105

249:                                              ; preds = %246
  call void @default_rtl_profile() #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 936, ptr nonnull %1) #15
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @default_rtl_profile() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @negate_rtx(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !106 {
  %3 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %0, ptr noundef %1, i32 noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !107

5:                                                ; preds = %2
  %6 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %1, ptr noundef null, i32 noundef 0) #15
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  ret ptr %8
}

declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_unop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mode_for_extraction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !108 {
  %3 = icmp ult i32 %0, 3
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 334, ptr noundef nonnull @.str.1) #15
  br label %9

5:                                                ; preds = %2
  %6 = zext nneg i32 %0 to i64
  %7 = getelementptr inbounds [3 x ptr], ptr @switch.table.mode_for_extraction, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi ptr [ undef, %4 ], [ %8, %5 ]
  %11 = icmp eq i32 %1, -1
  br i1 %11, label %23, label %12, !prof !109

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.insn_data, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 %15, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21, !prof !112

19:                                               ; preds = %12
  %20 = load i32, ptr @word_mode, align 4, !tbaa !80
  br label %23

21:                                               ; preds = %12
  %22 = zext i16 %17 to i32
  br label %23

23:                                               ; preds = %9, %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ], [ 0, %9 ]
  ret i32 %24
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @store_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #12 !prof !64 {
  %6 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext 1), !range !113
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 856, ptr noundef nonnull @.str.1) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @store_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #12 !prof !64 {
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 43
  %10 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2181, i32 3), align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.insn_operand_data, ptr %10, i64 3, i32 2
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, 0
  %14 = load i32, ptr @word_mode, align 4
  %15 = zext i16 %12 to i32
  %16 = select i1 %13, i32 %14, i32 %15
  br label %17

17:                                               ; preds = %42, %6
  %18 = phi ptr [ %0, %6 ], [ %47, %42 ]
  %19 = phi i64 [ %2, %6 ], [ %46, %42 ]
  %20 = load i32, ptr %18, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %57 [
    i16 39, label %22
    i16 37, label %48
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load i32, ptr %24, align 8, !tbaa !76
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = lshr i32 %20, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !76
  %33 = load ptr, ptr %23, align 8, !tbaa !76
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !76
  %40 = icmp ult i8 %39, %32
  br i1 %40, label %42, label %41

41:                                               ; preds = %27, %22
  br label %42

42:                                               ; preds = %27, %41
  %43 = phi i32 [ %25, %41 ], [ 0, %27 ]
  %44 = shl nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = add i64 %19, %45
  %47 = load ptr, ptr %23, align 8, !tbaa !76
  br label %17, !llvm.loop !114

48:                                               ; preds = %17
  %49 = lshr i32 %20, 16
  %50 = and i32 %49, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !76
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  %56 = icmp ult i64 %19, %55
  br i1 %56, label %57, label %573

57:                                               ; preds = %17, %48
  %58 = lshr i32 %20, 16
  %59 = and i32 %58, 255
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !76
  %63 = add i8 %62, -18
  %64 = icmp ult i8 %63, -6
  %65 = and i32 %20, 65535
  %66 = icmp eq i32 %65, 43
  %67 = or i1 %66, %64
  br i1 %67, label %141, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131, i32 4, i64 %60
  %70 = load i32, ptr %69, align 4, !tbaa !115
  %71 = icmp eq i32 %70, 2956
  br i1 %71, label %141, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %60
  %74 = load i8, ptr %73, align 1, !tbaa !76
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, %3
  br i1 %76, label %77, label %141

77:                                               ; preds = %72
  %78 = zext i8 %74 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !76
  %81 = zext i8 %80 to i64
  %82 = shl nuw nsw i64 %81, 3
  %83 = icmp eq i64 %82, %1
  br i1 %83, label %84, label %141

84:                                               ; preds = %77
  %85 = urem i64 %19, %82
  %86 = udiv i64 %19, %82
  %87 = icmp eq i64 %85, 0
  br i1 %87, label %88, label %141

88:                                               ; preds = %84
  %89 = shl i64 %86, 32
  %90 = ashr exact i64 %89, 32
  %91 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %90) #15
  %92 = sext i32 %70 to i64
  %93 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %92, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !110
  %95 = getelementptr inbounds %struct.insn_operand_data, ptr %94, i64 0, i32 2
  %96 = load i16, ptr %95, align 8
  %97 = zext i16 %96 to i32
  %98 = getelementptr inbounds %struct.insn_operand_data, ptr %94, i64 1, i32 2
  %99 = load i16, ptr %98, align 8
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct.insn_operand_data, ptr %94, i64 2, i32 2
  %102 = load i16, ptr %101, align 8
  %103 = zext i16 %102 to i32
  tail call void @start_sequence() #15
  %104 = getelementptr inbounds %struct.insn_operand_data, ptr %94, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !117
  %106 = tail call i32 %105(ptr noundef %4, i32 noundef %100) #15
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %88
  %109 = tail call ptr @copy_to_mode_reg(i32 noundef %100, ptr noundef %4) #15
  br label %110

110:                                              ; preds = %108, %88
  %111 = phi ptr [ %4, %88 ], [ %109, %108 ]
  %112 = getelementptr inbounds %struct.insn_operand_data, ptr %94, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !117
  %114 = tail call i32 %113(ptr noundef %91, i32 noundef %103) #15
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = tail call ptr @copy_to_mode_reg(i32 noundef %100, ptr noundef %91) #15
  br label %118

118:                                              ; preds = %116, %110
  %119 = phi ptr [ %91, %110 ], [ %117, %116 ]
  %120 = load ptr, ptr %94, align 8, !tbaa !117
  %121 = tail call i32 %120(ptr noundef nonnull %18, i32 noundef %97) #15
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %104, align 8, !tbaa !117
  %125 = tail call i32 %124(ptr noundef %111, i32 noundef %100) #15
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %112, align 8, !tbaa !117
  %129 = tail call i32 %128(ptr noundef %119, i32 noundef %103) #15
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %123, %118
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 453, ptr noundef nonnull @.str.1) #15
  br label %132

132:                                              ; preds = %127, %131
  %133 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %92, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !119
  %135 = tail call ptr (ptr, ...) %134(ptr noundef nonnull %18, ptr noundef %111, ptr noundef %119) #15
  %136 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  %137 = icmp eq ptr %135, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = tail call ptr @emit_insn(ptr noundef %136) #15
  %140 = tail call ptr @emit_insn(ptr noundef nonnull %135) #15
  br label %573

141:                                              ; preds = %132, %57, %84, %77, %72, %68
  %142 = select i1 %9, i64 3, i64 5
  %143 = lshr i64 %19, %142
  %144 = select i1 %9, i64 7, i64 31
  %145 = and i64 %19, %144
  %146 = lshr i64 %19, 3
  %147 = and i64 %146, 3
  %148 = shl nuw nsw i64 %143, 2
  %149 = or disjoint i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = icmp eq i64 %145, 0
  br i1 %151, label %152, label %188

152:                                              ; preds = %141
  %153 = zext i32 %3 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !76
  %156 = zext i8 %155 to i64
  %157 = shl nuw nsw i64 %156, 3
  %158 = icmp eq i64 %157, %1
  br i1 %158, label %159, label %188

159:                                              ; preds = %152
  %160 = load i32, ptr %18, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 43
  br i1 %162, label %177, label %163

163:                                              ; preds = %159
  %164 = icmp ugt i8 %155, 3
  br i1 %164, label %172, label %165

165:                                              ; preds = %163
  %166 = lshr i32 %160, 16
  %167 = and i32 %166, 255
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !76
  %171 = icmp eq i8 %170, %155
  br i1 %171, label %172, label %188

172:                                              ; preds = %165, %163
  %173 = zext i8 %155 to i32
  %174 = srem i32 %150, %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  br i1 %162, label %177, label %179

177:                                              ; preds = %159, %176
  %178 = tail call ptr @adjust_address_1(ptr noundef nonnull %18, i32 noundef %3, i64 noundef %143, i32 noundef 1, i32 noundef 1) #15
  br label %185

179:                                              ; preds = %176
  %180 = lshr i32 %160, 16
  %181 = and i32 %180, 255
  %182 = icmp eq i32 %181, %3
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = tail call ptr @simplify_gen_subreg(i32 noundef %3, ptr noundef nonnull %18, i32 noundef %181, i32 noundef %150) #15
  br label %185

185:                                              ; preds = %179, %183, %177
  %186 = phi ptr [ %178, %177 ], [ %184, %183 ], [ %18, %179 ]
  %187 = tail call ptr @emit_move_insn(ptr noundef %186, ptr noundef %4) #15
  br label %573

188:                                              ; preds = %165, %172, %152, %141
  %189 = load i32, ptr %18, align 8
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  %192 = tail call i32 @int_mode_for_mode(i32 noundef %191) #15
  %193 = load i32, ptr %18, align 8
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %208, label %197

197:                                              ; preds = %188
  %198 = and i32 %193, 65535
  %199 = icmp eq i32 %198, 43
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = tail call ptr @adjust_address_1(ptr noundef nonnull %18, i32 noundef %192, i64 noundef 0, i32 noundef 1, i32 noundef 1) #15
  br label %208

202:                                              ; preds = %197
  %203 = icmp eq i32 %192, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @.str.1) #15
  br label %205

205:                                              ; preds = %202, %204
  %206 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %207 = tail call ptr %206(i32 noundef %192, ptr noundef nonnull %18) #15
  br label %208

208:                                              ; preds = %200, %205, %188
  %209 = phi ptr [ %201, %200 ], [ %207, %205 ], [ %18, %188 ]
  %210 = load i32, ptr %209, align 8
  %211 = and i32 %210, 65535
  %212 = icmp eq i32 %211, 43
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %209) #15
  tail call void @set_mem_alias_set(ptr noundef %214, i32 noundef 0) #15
  tail call void @set_mem_expr(ptr noundef %214, ptr noundef null) #15
  br label %215

215:                                              ; preds = %213, %208
  %216 = phi ptr [ %214, %213 ], [ %209, %208 ]
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, 65535
  %219 = icmp ne i32 %218, 43
  %220 = and i1 %151, %219
  br i1 %220, label %221, label %284

221:                                              ; preds = %215
  %222 = zext i32 %3 to i64
  %223 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !76
  %225 = zext i8 %224 to i64
  %226 = shl nuw nsw i64 %225, 3
  %227 = icmp eq i64 %226, %1
  br i1 %227, label %228, label %284

228:                                              ; preds = %221
  %229 = sext i32 %3 to i64
  %230 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61, i32 4, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !115
  %232 = icmp eq i32 %231, 2956
  br i1 %232, label %284, label %233

233:                                              ; preds = %228
  %234 = tail call ptr @get_last_insn() #15
  %235 = load i32, ptr %4, align 8
  %236 = trunc i32 %235 to i16
  switch i16 %236, label %240 [
    i16 30, label %237
    i16 37, label %237
    i16 45, label %242
    i16 44, label %242
    i16 35, label %242
  ]

237:                                              ; preds = %233, %233
  %238 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %239 = tail call ptr %238(i32 noundef %3, ptr noundef nonnull %4) #15
  br label %242

240:                                              ; preds = %233
  %241 = tail call ptr @convert_to_mode(i32 noundef %3, ptr noundef nonnull %4, i32 noundef 0) #15
  br label %242

242:                                              ; preds = %233, %233, %233, %240, %237
  %243 = phi ptr [ %239, %237 ], [ %241, %240 ], [ %4, %233 ], [ %4, %233 ], [ %4, %233 ]
  %244 = sext i32 %231 to i64
  %245 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %244, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !110
  %247 = getelementptr inbounds %struct.insn_operand_data, ptr %246, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !117
  %249 = tail call i32 %248(ptr noundef %243, i32 noundef %3) #15
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %242
  %252 = tail call ptr @copy_to_mode_reg(i32 noundef %3, ptr noundef %243) #15
  br label %253

253:                                              ; preds = %251, %242
  %254 = phi ptr [ %243, %242 ], [ %252, %251 ]
  %255 = load i32, ptr %216, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 39
  br i1 %257, label %258, label %273

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !76
  %261 = load i32, ptr %260, align 8
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 255
  %264 = icmp eq i32 %263, %3
  br i1 %264, label %271, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %222
  %267 = load i8, ptr %266, align 1, !tbaa !76
  %268 = and i8 %267, -2
  %269 = icmp eq i8 %268, 2
  br i1 %269, label %271, label %270

270:                                              ; preds = %265
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 563, ptr noundef nonnull @.str.1) #15
  br label %271

271:                                              ; preds = %265, %258, %270
  %272 = load ptr, ptr %259, align 8, !tbaa !76
  br label %273

273:                                              ; preds = %271, %253
  %274 = phi ptr [ %272, %271 ], [ %216, %253 ]
  %275 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %244, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !119
  %277 = tail call ptr @gen_rtx_SUBREG(i32 noundef %3, ptr noundef %274, i32 noundef %150) #15
  %278 = tail call ptr (ptr, ...) %276(ptr noundef %277, ptr noundef %254) #15
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %273
  %281 = tail call ptr @emit_insn(ptr noundef nonnull %278) #15
  br label %283

282:                                              ; preds = %273
  tail call void @delete_insns_since(ptr noundef %234) #15
  br label %283

283:                                              ; preds = %282, %280
  br i1 %279, label %284, label %573

284:                                              ; preds = %283, %228, %221, %215
  %285 = phi ptr [ %4, %228 ], [ %4, %221 ], [ %4, %215 ], [ %254, %283 ]
  %286 = icmp ugt i64 %1, 32
  br i1 %286, label %287, label %323

287:                                              ; preds = %284
  %288 = add i64 %1, 31
  %289 = lshr i64 %288, 5
  %290 = trunc i64 %289 to i32
  %291 = load i32, ptr %285, align 8
  %292 = lshr i32 %291, 16
  %293 = and i32 %292, 255
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = shl i32 %290, 5
  %297 = tail call i32 @smallest_mode_for_size(i32 noundef %296, i32 noundef 2) #15
  br label %298

298:                                              ; preds = %295, %287
  %299 = phi i32 [ %297, %295 ], [ %293, %287 ]
  %300 = tail call ptr @get_last_insn() #15
  %301 = icmp eq i32 %290, 0
  br i1 %301, label %573, label %302

302:                                              ; preds = %298
  %303 = and i64 %289, 4294967295
  br label %307

304:                                              ; preds = %321
  %305 = add nuw nsw i64 %308, 1
  %306 = icmp eq i64 %305, %303
  br i1 %306, label %573, label %307, !llvm.loop !122

307:                                              ; preds = %302, %304
  %308 = phi i64 [ 0, %302 ], [ %305, %304 ]
  %309 = phi i8 [ 1, %302 ], [ %322, %304 ]
  %310 = shl i64 %308, 5
  %311 = trunc i64 %308 to i32
  %312 = tail call ptr @operand_subword_force(ptr noundef nonnull %285, i32 noundef %311, i32 noundef %299) #15
  %313 = and i64 %310, 4294967264
  %314 = sub i64 %1, %313
  %315 = tail call i64 @llvm.umin.i64(i64 %314, i64 32)
  %316 = add i64 %19, %313
  %317 = load i32, ptr @word_mode, align 4, !tbaa !80
  %318 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef nonnull %216, i64 noundef %315, i64 noundef %316, i32 noundef %317, ptr noundef %312, i8 noundef zeroext %5), !range !113
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %307
  tail call void @delete_insns_since(ptr noundef %300) #15
  br label %321

321:                                              ; preds = %307, %320
  %322 = phi i8 [ 0, %320 ], [ %309, %307 ]
  br i1 %319, label %573, label %304

323:                                              ; preds = %284
  %324 = load i32, ptr %216, align 8
  %325 = and i32 %324, 65535
  %326 = icmp eq i32 %325, 43
  br i1 %326, label %362, label %327

327:                                              ; preds = %323
  %328 = icmp eq i64 %143, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %327
  %330 = lshr i32 %324, 16
  %331 = and i32 %330, 255
  %332 = zext nneg i32 %331 to i64
  %333 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !76
  %335 = icmp ugt i8 %334, 4
  br i1 %335, label %336, label %362

336:                                              ; preds = %329, %327
  %337 = trunc i32 %324 to i16
  switch i16 %337, label %353 [
    i16 37, label %357
    i16 39, label %338
  ]

338:                                              ; preds = %336
  %339 = lshr i32 %324, 16
  %340 = and i32 %339, 255
  %341 = zext nneg i32 %340 to i64
  %342 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !76
  %344 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !76
  %346 = load i32, ptr %345, align 8
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !76
  %352 = icmp eq i8 %343, %351
  br i1 %352, label %354, label %353

353:                                              ; preds = %336, %338
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 648, ptr noundef nonnull @.str.1) #15
  br label %354

354:                                              ; preds = %338, %353
  %355 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !76
  br label %357

357:                                              ; preds = %336, %354
  %358 = phi ptr [ %216, %336 ], [ %356, %354 ]
  %359 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 0) #15
  %360 = trunc i64 %148 to i32
  %361 = tail call ptr @gen_rtx_SUBREG(i32 noundef %359, ptr noundef %358, i32 noundef %360) #15
  br label %362

362:                                              ; preds = %329, %357, %323
  %363 = phi ptr [ %216, %323 ], [ %361, %357 ], [ %216, %329 ]
  %364 = phi i64 [ %143, %323 ], [ 0, %357 ], [ 0, %329 ]
  %365 = load i32, ptr %285, align 8
  %366 = lshr i32 %365, 16
  %367 = and i32 %366, 255
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %384, label %369

369:                                              ; preds = %362
  %370 = zext nneg i32 %367 to i64
  %371 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !76
  %373 = and i8 %372, -2
  %374 = icmp eq i8 %373, 2
  br i1 %374, label %384, label %375

375:                                              ; preds = %369
  %376 = tail call i32 @int_mode_for_mode(i32 noundef %367) #15
  %377 = tail call ptr @gen_reg_rtx(i32 noundef %376) #15
  %378 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %379 = load i32, ptr %285, align 8
  %380 = lshr i32 %379, 16
  %381 = and i32 %380, 255
  %382 = tail call ptr %378(i32 noundef %381, ptr noundef %377) #15
  %383 = tail call ptr @emit_move_insn(ptr noundef %382, ptr noundef nonnull %285) #15
  br label %384

384:                                              ; preds = %369, %375, %362
  %385 = phi ptr [ %377, %375 ], [ %285, %362 ], [ %285, %369 ]
  %386 = load i32, ptr %385, align 8
  %387 = and i32 %386, 16711680
  %388 = icmp ne i32 %387, 65536
  %389 = icmp ne i64 %1, 0
  %390 = and i1 %389, %388
  br i1 %390, label %391, label %509

391:                                              ; preds = %384
  %392 = zext i32 %16 to i64
  %393 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !76
  %395 = zext i8 %394 to i64
  %396 = shl nuw nsw i64 %395, 3
  %397 = icmp ult i64 %396, %1
  br i1 %397, label %509, label %398

398:                                              ; preds = %391
  %399 = load i32, ptr %363, align 8
  %400 = trunc i32 %399 to i16
  switch i16 %400, label %404 [
    i16 37, label %401
    i16 39, label %401
  ]

401:                                              ; preds = %398, %398
  %402 = add nuw nsw i64 %145, %1
  %403 = icmp ugt i64 %402, %396
  br i1 %403, label %509, label %404

404:                                              ; preds = %401, %398
  %405 = getelementptr inbounds %struct.insn_operand_data, ptr %10, i64 1
  %406 = load ptr, ptr %405, align 8, !tbaa !117
  %407 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #15
  %408 = tail call i32 %406(ptr noundef %407, i32 noundef 0) #15
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %509, label %410

410:                                              ; preds = %404
  %411 = load i32, ptr @volatile_ok, align 4, !tbaa !80
  %412 = load ptr, ptr %10, align 8, !tbaa !117
  %413 = tail call i32 %412(ptr noundef nonnull %363, i32 noundef 0) #15
  %414 = and i32 %411, 255
  store i32 %414, ptr @volatile_ok, align 4, !tbaa !80
  %415 = and i32 %413, 255
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %509, label %417

417:                                              ; preds = %410
  %418 = tail call ptr @get_last_insn() #15
  %419 = load i32, ptr %363, align 8
  %420 = and i32 %419, 65535
  %421 = icmp eq i32 %420, 43
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = load i32, ptr @byte_mode, align 4, !tbaa !80
  %424 = tail call ptr @adjust_address_1(ptr noundef nonnull %363, i32 noundef %423, i64 noundef %364, i32 noundef 1, i32 noundef 1) #15
  br label %425

425:                                              ; preds = %422, %417
  %426 = phi ptr [ %424, %422 ], [ %363, %417 ]
  %427 = load i32, ptr %426, align 8
  %428 = and i32 %427, 65535
  %429 = icmp eq i32 %428, 39
  br i1 %429, label %430, label %436

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !76
  %433 = getelementptr inbounds %struct.rtx_def, ptr %426, i64 0, i32 1, i32 0, i32 0, i64 1
  %434 = load i32, ptr %433, align 8, !tbaa !76
  %435 = tail call ptr @gen_rtx_SUBREG(i32 noundef %16, ptr noundef %432, i32 noundef %434) #15
  br label %436

436:                                              ; preds = %430, %425
  %437 = phi ptr [ %435, %430 ], [ %426, %425 ]
  %438 = load i32, ptr %437, align 8
  %439 = and i32 %438, 65535
  %440 = icmp eq i32 %439, 37
  br i1 %440, label %441, label %447

441:                                              ; preds = %436
  %442 = lshr i32 %438, 16
  %443 = and i32 %442, 255
  %444 = icmp eq i32 %443, %16
  br i1 %444, label %447, label %445

445:                                              ; preds = %441
  %446 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %16, ptr noundef nonnull %437) #15
  br label %447

447:                                              ; preds = %445, %441, %436
  %448 = phi ptr [ %446, %445 ], [ %437, %441 ], [ %437, %436 ]
  %449 = load i8, ptr %393, align 1, !tbaa !76
  %450 = load i32, ptr %385, align 8
  %451 = lshr i32 %450, 16
  %452 = and i32 %451, 255
  %453 = icmp eq i32 %452, %16
  br i1 %453, label %491, label %454

454:                                              ; preds = %447
  %455 = zext nneg i32 %452 to i64
  %456 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !76
  %458 = zext i8 %457 to i64
  %459 = shl nuw nsw i64 %458, 3
  %460 = icmp ult i64 %459, %1
  br i1 %460, label %478, label %461

461:                                              ; preds = %454
  %462 = icmp ult i8 %457, %449
  br i1 %462, label %463, label %475

463:                                              ; preds = %461
  %464 = tail call ptr @simplify_subreg(i32 noundef %16, ptr noundef nonnull %385, i32 noundef %452, i32 noundef 0) #15
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %491

466:                                              ; preds = %463
  %467 = load i32, ptr %385, align 8
  %468 = lshr i32 %467, 16
  %469 = and i32 %468, 255
  %470 = tail call ptr @force_reg(i32 noundef %469, ptr noundef nonnull %385) #15
  %471 = load i32, ptr %385, align 8
  %472 = lshr i32 %471, 16
  %473 = and i32 %472, 255
  %474 = tail call ptr @simplify_gen_subreg(i32 noundef %16, ptr noundef %470, i32 noundef %473, i32 noundef 0) #15
  br label %491

475:                                              ; preds = %461
  %476 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %477 = tail call ptr %476(i32 noundef %16, ptr noundef nonnull %385) #15
  br label %491

478:                                              ; preds = %454
  %479 = and i32 %450, 65535
  %480 = icmp eq i32 %479, 30
  br i1 %480, label %481, label %485

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1
  %483 = load i64, ptr %482, align 8, !tbaa !76
  %484 = tail call ptr @gen_int_mode(i64 noundef %483, i32 noundef %16) #15
  br label %491

485:                                              ; preds = %478
  %486 = zext nneg i32 %479 to i64
  %487 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %486
  %488 = load i32, ptr %487, align 4, !tbaa !80
  %489 = icmp eq i32 %488, 9
  br i1 %489, label %491, label %490

490:                                              ; preds = %485
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 765, ptr noundef nonnull @.str.1) #15
  br label %491

491:                                              ; preds = %463, %466, %490, %485, %475, %481, %447
  %492 = phi ptr [ %477, %475 ], [ %484, %481 ], [ %385, %485 ], [ %385, %490 ], [ %385, %447 ], [ %464, %463 ], [ %474, %466 ]
  %493 = getelementptr inbounds %struct.insn_operand_data, ptr %10, i64 3
  %494 = load ptr, ptr %493, align 8, !tbaa !117
  %495 = tail call i32 %494(ptr noundef %492, i32 noundef %16) #15
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %491
  %498 = tail call ptr @force_reg(i32 noundef %16, ptr noundef %492) #15
  br label %499

499:                                              ; preds = %497, %491
  %500 = phi ptr [ %492, %491 ], [ %498, %497 ]
  %501 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #15
  %502 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %145) #15
  %503 = tail call ptr @gen_insv(ptr noundef %448, ptr noundef %501, ptr noundef %502, ptr noundef %500) #15
  %504 = icmp eq ptr %503, null
  br i1 %504, label %507, label %505

505:                                              ; preds = %499
  %506 = tail call ptr @emit_insn(ptr noundef nonnull %503) #15
  br label %508

507:                                              ; preds = %499
  tail call void @delete_insns_since(ptr noundef %418) #15
  br label %508

508:                                              ; preds = %507, %505
  br i1 %504, label %509, label %573

509:                                              ; preds = %508, %404, %410, %401, %391, %384
  %510 = load i32, ptr %363, align 8
  %511 = and i32 %510, 65535
  %512 = icmp eq i32 %511, 43
  br i1 %512, label %513, label %570

513:                                              ; preds = %509
  %514 = lshr i32 %510, 16
  %515 = and i32 %514, 255
  %516 = icmp eq i32 %515, 1
  br i1 %516, label %527, label %517

517:                                              ; preds = %513
  %518 = icmp eq i32 %16, 87
  br i1 %518, label %543, label %519

519:                                              ; preds = %517
  %520 = zext nneg i32 %515 to i64
  %521 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !76
  %523 = zext i32 %16 to i64
  %524 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !76
  %526 = icmp ugt i8 %522, %525
  br i1 %526, label %527, label %543

527:                                              ; preds = %519, %513
  %528 = trunc i64 %1 to i32
  %529 = trunc i64 %19 to i32
  %530 = getelementptr inbounds %struct.rtx_def, ptr %363, i64 0, i32 1, i32 0, i32 0, i64 1
  %531 = load ptr, ptr %530, align 8, !tbaa !76
  %532 = icmp eq ptr %531, null
  br i1 %532, label %536, label %533

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.mem_attrs, ptr %531, i64 0, i32 4
  %535 = load i32, ptr %534, align 4, !tbaa !123
  br label %536

536:                                              ; preds = %527, %533
  %537 = phi i32 [ %535, %533 ], [ 8, %527 ]
  %538 = icmp eq i32 %16, 87
  %539 = select i1 %538, i32 0, i32 %16
  %540 = lshr i32 %510, 27
  %541 = and i32 %540, 1
  %542 = tail call i32 @get_best_mode(i32 noundef %528, i32 noundef %529, i32 noundef %537, i32 noundef %539, i32 noundef %541) #15
  br label %543

543:                                              ; preds = %517, %519, %536
  %544 = phi i32 [ %542, %536 ], [ %515, %519 ], [ %515, %517 ]
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %570, label %546

546:                                              ; preds = %543
  %547 = zext i32 %544 to i64
  %548 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %547
  %549 = load i8, ptr %548, align 1, !tbaa !76
  %550 = zext i32 %3 to i64
  %551 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %550
  %552 = load i8, ptr %551, align 1, !tbaa !76
  %553 = icmp ult i8 %549, %552
  br i1 %553, label %570, label %554

554:                                              ; preds = %546
  %555 = tail call ptr @get_last_insn() #15
  %556 = load i8, ptr %548, align 1, !tbaa !76
  %557 = zext i8 %556 to i64
  %558 = shl nuw nsw i64 %557, 3
  %559 = udiv i64 %19, %558
  %560 = mul i64 %559, %557
  %561 = urem i64 %19, %558
  %562 = tail call ptr @adjust_address_1(ptr noundef nonnull %363, i32 noundef %544, i64 noundef %560, i32 noundef 1, i32 noundef 1) #15
  %563 = tail call ptr @copy_to_reg(ptr noundef %562) #15
  %564 = tail call fastcc zeroext i8 @store_bit_field_1(ptr noundef %563, i64 noundef %1, i64 noundef %561, i32 noundef %3, ptr noundef nonnull %285, i8 noundef zeroext 0), !range !113
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %554
  %567 = tail call ptr @emit_move_insn(ptr noundef %562, ptr noundef %563) #15
  br label %569

568:                                              ; preds = %554
  tail call void @delete_insns_since(ptr noundef %555) #15
  br label %569

569:                                              ; preds = %568, %566
  br i1 %565, label %570, label %573

570:                                              ; preds = %569, %543, %546, %509
  %571 = icmp eq i8 %5, 0
  br i1 %571, label %573, label %572

572:                                              ; preds = %570
  tail call fastcc void @store_fixed_bit_field(ptr noundef nonnull %363, i64 noundef %364, i64 noundef %1, i64 noundef %145, ptr noundef nonnull %385)
  br label %573

573:                                              ; preds = %304, %321, %298, %138, %570, %569, %48, %508, %283, %572, %185
  %574 = phi i8 [ 1, %185 ], [ 1, %572 ], [ 1, %508 ], [ 1, %283 ], [ 1, %138 ], [ 1, %48 ], [ 1, %569 ], [ 0, %570 ], [ 1, %298 ], [ %322, %321 ], [ 1, %304 ]
  ret i8 %574
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @extract_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #12 !prof !64 {
  %8 = tail call fastcc ptr @extract_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext 1)
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @extract_bit_field_1(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #12 !prof !64 {
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  %12 = icmp eq i32 %6, 0
  %13 = select i1 %12, i32 %5, i32 %6
  br label %14

14:                                               ; preds = %19, %8
  %15 = phi ptr [ %0, %8 ], [ %26, %19 ]
  %16 = phi i64 [ %2, %8 ], [ %25, %19 ]
  %17 = load i32, ptr %15, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %38 [
    i16 39, label %19
    i16 37, label %27
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i32, ptr %21, align 8, !tbaa !76
  %23 = shl i32 %22, 3
  %24 = zext i32 %23 to i64
  %25 = add i64 %16, %24
  %26 = load ptr, ptr %20, align 8, !tbaa !76
  br label %14, !llvm.loop !125

27:                                               ; preds = %14
  %28 = lshr i32 %17, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !76
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = icmp ult i64 %16, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = tail call ptr @gen_reg_rtx(i32 noundef %13) #15
  br label %637

38:                                               ; preds = %14, %27
  %39 = and i32 %17, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = lshr i32 %17, 16
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, %5
  %45 = icmp eq i64 %16, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = zext nneg i32 %43 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !76
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 3
  %53 = icmp eq i64 %52, %1
  br i1 %53, label %637, label %54

54:                                               ; preds = %47, %41, %38
  %55 = lshr i32 %17, 16
  %56 = and i32 %55, 255
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !76
  %60 = add i8 %59, -18
  %61 = icmp ult i8 %60, -6
  %62 = icmp eq i32 %39, 43
  %63 = or i1 %62, %61
  br i1 %63, label %111, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %57
  %66 = load i8, ptr %65, align 1, !tbaa !76
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %13, %67
  br i1 %68, label %111, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %57
  %71 = load i8, ptr %70, align 1, !tbaa !76
  %72 = zext i32 %13 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !76
  switch i8 %74, label %79 [
    i8 8, label %80
    i8 4, label %75
    i8 5, label %76
    i8 6, label %77
    i8 7, label %78
  ]

75:                                               ; preds = %69
  br label %80

76:                                               ; preds = %69
  br label %80

77:                                               ; preds = %69
  br label %80

78:                                               ; preds = %69
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %69, %75, %77, %79, %78, %76
  %81 = phi i1 [ true, %75 ], [ true, %76 ], [ true, %77 ], [ true, %78 ], [ false, %79 ], [ false, %69 ]
  %82 = phi i32 [ 0, %75 ], [ 0, %76 ], [ 0, %77 ], [ 0, %78 ], [ 55, %79 ], [ 78, %69 ]
  br i1 %81, label %111, label %83

83:                                               ; preds = %80, %103
  %84 = phi i32 [ %106, %103 ], [ %82, %80 ]
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !76
  %88 = icmp eq i8 %87, %71
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %91 = load i8, ptr %90, align 1, !tbaa !76
  %92 = load i32, ptr %15, align 8
  %93 = lshr i32 %92, 16
  %94 = and i32 %93, 255
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !76
  %98 = icmp eq i8 %91, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !126
  %101 = tail call zeroext i8 %100(i32 noundef %84) #15
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %83, %89, %99
  %104 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %85
  %105 = load i8, ptr %104, align 1, !tbaa !76
  %106 = zext i8 %105 to i32
  %107 = icmp eq i8 %105, 0
  br i1 %107, label %111, label %83, !llvm.loop !138

108:                                              ; preds = %99
  %109 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %110 = tail call ptr %109(i32 noundef %84, ptr noundef nonnull %15) #15
  br label %111

111:                                              ; preds = %103, %80, %54, %108, %64
  %112 = phi ptr [ %15, %64 ], [ %15, %54 ], [ %110, %108 ], [ %15, %80 ], [ %15, %103 ]
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !76
  %119 = add i8 %118, -18
  %120 = icmp ult i8 %119, -6
  %121 = and i32 %113, 65535
  %122 = icmp eq i32 %121, 43
  %123 = or i1 %122, %120
  br i1 %123, label %215, label %124

124:                                              ; preds = %111
  %125 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132, i32 4, i64 %116
  %126 = load i32, ptr %125, align 4, !tbaa !115
  %127 = icmp eq i32 %126, 2956
  br i1 %127, label %215, label %128

128:                                              ; preds = %124
  %129 = add i64 %1, -1
  %130 = add i64 %129, %16
  %131 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %116
  %132 = load i8, ptr %131, align 1, !tbaa !76
  %133 = zext i8 %132 to i32
  %134 = zext i8 %132 to i64
  %135 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !76
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, 3
  %139 = udiv i64 %130, %138
  %140 = udiv i64 %16, %138
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %215

142:                                              ; preds = %128
  %143 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %140) #15
  %144 = sext i32 %126 to i64
  %145 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %144, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !110
  %147 = getelementptr inbounds %struct.insn_operand_data, ptr %146, i64 0, i32 2
  %148 = load i16, ptr %147, align 8
  %149 = zext i16 %148 to i32
  %150 = getelementptr inbounds %struct.insn_operand_data, ptr %146, i64 1, i32 2
  %151 = load i16, ptr %150, align 8
  %152 = zext i16 %151 to i32
  %153 = getelementptr inbounds %struct.insn_operand_data, ptr %146, i64 2, i32 2
  %154 = load i16, ptr %153, align 8
  %155 = zext i16 %154 to i32
  %156 = icmp eq i32 %13, %133
  %157 = icmp eq i32 %133, %5
  %158 = or i1 %156, %157
  %159 = select i1 %158, ptr %4, ptr null
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %142
  %162 = tail call ptr @gen_reg_rtx(i32 noundef %133) #15
  br label %163

163:                                              ; preds = %161, %142
  %164 = phi ptr [ %159, %142 ], [ %162, %161 ]
  tail call void @start_sequence() #15
  %165 = load ptr, ptr %146, align 8, !tbaa !117
  %166 = tail call i32 %165(ptr noundef %164, i32 noundef %149) #15
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = tail call ptr @copy_to_mode_reg(i32 noundef %149, ptr noundef %164) #15
  br label %170

170:                                              ; preds = %168, %163
  %171 = phi ptr [ %164, %163 ], [ %169, %168 ]
  %172 = getelementptr inbounds %struct.insn_operand_data, ptr %146, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !117
  %174 = tail call i32 %173(ptr noundef nonnull %112, i32 noundef %152) #15
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = tail call ptr @copy_to_mode_reg(i32 noundef %152, ptr noundef nonnull %112) #15
  br label %178

178:                                              ; preds = %176, %170
  %179 = phi ptr [ %112, %170 ], [ %177, %176 ]
  %180 = getelementptr inbounds %struct.insn_operand_data, ptr %146, i64 2
  %181 = load ptr, ptr %180, align 8, !tbaa !117
  %182 = tail call i32 %181(ptr noundef %143, i32 noundef %155) #15
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = tail call ptr @copy_to_mode_reg(i32 noundef %152, ptr noundef %143) #15
  br label %186

186:                                              ; preds = %184, %178
  %187 = phi ptr [ %143, %178 ], [ %185, %184 ]
  %188 = load ptr, ptr %146, align 8, !tbaa !117
  %189 = tail call i32 %188(ptr noundef %171, i32 noundef %149) #15
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %186
  %192 = load ptr, ptr %172, align 8, !tbaa !117
  %193 = tail call i32 %192(ptr noundef %179, i32 noundef %152) #15
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr %180, align 8, !tbaa !117
  %197 = tail call i32 %196(ptr noundef %187, i32 noundef %155) #15
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195, %191, %186
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1288, ptr noundef nonnull @.str.1) #15
  br label %200

200:                                              ; preds = %195, %199
  %201 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %144, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !119
  %203 = tail call ptr (ptr, ...) %202(ptr noundef %171, ptr noundef %179, ptr noundef %187) #15
  %204 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  %205 = icmp eq ptr %203, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %200
  %207 = tail call ptr @emit_insn(ptr noundef %204) #15
  %208 = tail call ptr @emit_insn(ptr noundef nonnull %203) #15
  %209 = icmp eq i32 %149, %5
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %212 = tail call ptr %211(i32 noundef %13, ptr noundef %171) #15
  br label %213

213:                                              ; preds = %200, %206, %210
  %214 = phi ptr [ %212, %210 ], [ %171, %206 ], [ undef, %200 ]
  br i1 %205, label %215, label %637

215:                                              ; preds = %213, %111, %128, %124
  %216 = phi ptr [ undef, %128 ], [ undef, %124 ], [ undef, %111 ], [ %214, %213 ]
  %217 = load i32, ptr %112, align 8
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  %220 = tail call i32 @int_mode_for_mode(i32 noundef %219) #15
  %221 = load i32, ptr %112, align 8
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 255
  %224 = icmp eq i32 %220, %223
  br i1 %224, label %265, label %225

225:                                              ; preds = %215
  %226 = and i32 %221, 65535
  %227 = icmp eq i32 %226, 43
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = tail call ptr @adjust_address_1(ptr noundef nonnull %112, i32 noundef %220, i64 noundef 0, i32 noundef 1, i32 noundef 1) #15
  br label %265

230:                                              ; preds = %225
  %231 = icmp eq i32 %220, 1
  br i1 %231, label %240, label %232

232:                                              ; preds = %230
  %233 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %234 = tail call ptr %233(i32 noundef %220, ptr noundef nonnull %112) #15
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 39
  br i1 %237, label %238, label %265

238:                                              ; preds = %232
  %239 = tail call ptr @force_reg(i32 noundef %220, ptr noundef nonnull %234) #15
  br label %265

240:                                              ; preds = %230
  %241 = icmp eq i32 %226, 37
  %242 = zext nneg i32 %223 to i64
  %243 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !76
  br i1 %241, label %245, label %260

245:                                              ; preds = %240
  %246 = zext i8 %244 to i32
  %247 = shl nuw nsw i32 %246, 3
  %248 = tail call i32 @smallest_mode_for_size(i32 noundef %247, i32 noundef 2) #15
  %249 = tail call ptr @gen_reg_rtx(i32 noundef %248) #15
  %250 = load i32, ptr %112, align 8
  %251 = lshr i32 %250, 16
  %252 = and i32 %251, 255
  %253 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %252, ptr noundef %249) #15
  %254 = tail call ptr @emit_move_insn(ptr noundef %253, ptr noundef nonnull %112) #15
  %255 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1, i32 0, i32 0, i64 1
  %256 = load i32, ptr %255, align 8, !tbaa !76
  %257 = shl i32 %256, 3
  %258 = zext i32 %257 to i64
  %259 = add i64 %16, %258
  br label %265

260:                                              ; preds = %240
  %261 = zext i8 %244 to i64
  %262 = tail call ptr @assign_stack_temp(i32 noundef %223, i64 noundef %261, i32 noundef 0) #15
  %263 = tail call ptr @emit_move_insn(ptr noundef %262, ptr noundef nonnull %112) #15
  %264 = tail call ptr @adjust_address_1(ptr noundef %262, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #15
  br label %265

265:                                              ; preds = %228, %245, %260, %232, %238, %215
  %266 = phi ptr [ %229, %228 ], [ %239, %238 ], [ %234, %232 ], [ %249, %245 ], [ %264, %260 ], [ %112, %215 ]
  %267 = phi i64 [ %16, %228 ], [ %16, %238 ], [ %16, %232 ], [ %259, %245 ], [ %16, %260 ], [ %16, %215 ]
  %268 = load i32, ptr %266, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 43
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %266) #15
  tail call void @set_mem_alias_set(ptr noundef %272, i32 noundef 0) #15
  tail call void @set_mem_expr(ptr noundef %272, ptr noundef null) #15
  br label %273

273:                                              ; preds = %271, %265
  %274 = phi ptr [ %272, %271 ], [ %266, %265 ]
  %275 = select i1 %11, i64 7, i64 31
  %276 = and i64 %267, %275
  %277 = select i1 %11, i64 3, i64 5
  %278 = lshr i64 %267, %277
  %279 = lshr i64 %276, 3
  %280 = shl nuw nsw i64 %278, 2
  %281 = or disjoint i64 %279, %280
  %282 = trunc i64 %281 to i32
  %283 = zext i32 %13 to i64
  %284 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !76
  %286 = and i8 %285, -2
  %287 = icmp eq i8 %286, 2
  br i1 %287, label %288, label %292

288:                                              ; preds = %273
  %289 = trunc i64 %1 to i32
  %290 = zext nneg i8 %285 to i32
  %291 = tail call i32 @mode_for_size(i32 noundef %289, i32 noundef %290, i32 noundef 0) #15
  br label %292

292:                                              ; preds = %273, %288
  %293 = phi i32 [ %291, %288 ], [ %5, %273 ]
  %294 = icmp ugt i64 %1, 31
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = zext i32 %5 to i64
  %297 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !76
  %299 = zext i8 %298 to i64
  %300 = shl nuw nsw i64 %299, 3
  %301 = icmp eq i64 %300, %1
  %302 = icmp eq i64 %276, 0
  %303 = select i1 %301, i1 %302, i1 false
  br i1 %303, label %308, label %304

304:                                              ; preds = %295, %292
  %305 = icmp ne i32 %293, 1
  %306 = icmp eq i64 %276, 0
  %307 = select i1 %305, i1 %306, i1 false
  br i1 %307, label %308, label %339

308:                                              ; preds = %295, %304
  %309 = load i32, ptr %274, align 8
  %310 = and i32 %309, 65535
  %311 = icmp eq i32 %310, 43
  br i1 %311, label %324, label %312

312:                                              ; preds = %308
  %313 = zext i32 %293 to i64
  %314 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !76
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %312
  %318 = zext i8 %315 to i32
  %319 = srem i32 %282, %318
  %320 = icmp eq i32 %319, 0
  %321 = or i1 %311, %320
  br i1 %321, label %323, label %339

322:                                              ; preds = %312
  br i1 %311, label %324, label %339

323:                                              ; preds = %317
  br i1 %311, label %324, label %326

324:                                              ; preds = %308, %322, %323
  %325 = tail call ptr @adjust_address_1(ptr noundef nonnull %274, i32 noundef %293, i64 noundef %278, i32 noundef 1, i32 noundef 1) #15
  br label %334

326:                                              ; preds = %323
  %327 = lshr i32 %309, 16
  %328 = and i32 %327, 255
  %329 = icmp eq i32 %293, %328
  br i1 %329, label %334, label %330

330:                                              ; preds = %326
  %331 = tail call ptr @simplify_gen_subreg(i32 noundef %293, ptr noundef nonnull %274, i32 noundef %328, i32 noundef %282) #15
  %332 = icmp eq ptr %331, null
  %333 = select i1 %332, ptr %274, ptr %331
  br i1 %332, label %339, label %334

334:                                              ; preds = %330, %326, %324
  %335 = phi ptr [ %325, %324 ], [ %333, %330 ], [ %274, %326 ]
  %336 = icmp eq i32 %293, %5
  br i1 %336, label %637, label %337

337:                                              ; preds = %334
  %338 = tail call ptr @convert_to_mode(i32 noundef %13, ptr noundef %335, i32 noundef %3) #15
  br label %637

339:                                              ; preds = %330, %322, %317, %304
  %340 = phi ptr [ %274, %304 ], [ %274, %317 ], [ %274, %322 ], [ %333, %330 ]
  %341 = icmp ugt i64 %1, 32
  br i1 %341, label %342, label %416

342:                                              ; preds = %339
  %343 = add i64 %1, 31
  %344 = lshr i64 %343, 5
  %345 = trunc i64 %344 to i32
  %346 = icmp eq ptr %4, null
  br i1 %346, label %351, label %347

347:                                              ; preds = %342
  %348 = load i32, ptr %4, align 8
  %349 = and i32 %348, 65535
  %350 = icmp eq i32 %349, 37
  br i1 %350, label %353, label %351

351:                                              ; preds = %347, %342
  %352 = tail call ptr @gen_reg_rtx(i32 noundef %5) #15
  br label %353

353:                                              ; preds = %351, %347
  %354 = phi ptr [ %352, %351 ], [ %4, %347 ]
  %355 = tail call ptr @emit_clobber(ptr noundef %354) #15
  %356 = icmp eq i32 %345, 0
  br i1 %356, label %379, label %357

357:                                              ; preds = %353
  %358 = and i64 %344, 4294967295
  br label %359

359:                                              ; preds = %357, %376
  %360 = phi i64 [ 0, %357 ], [ %377, %376 ]
  %361 = shl i64 %360, 5
  %362 = trunc i64 %360 to i32
  %363 = tail call ptr @operand_subword(ptr noundef %354, i32 noundef %362, i32 noundef 1, i32 noundef 0) #15
  %364 = and i64 %361, 4294967264
  %365 = sub i64 %1, %364
  %366 = tail call i64 @llvm.umin.i64(i64 %365, i64 32)
  %367 = add i64 %267, %364
  %368 = load i32, ptr @word_mode, align 4, !tbaa !80
  %369 = tail call fastcc ptr @extract_bit_field_1(ptr noundef %340, i64 noundef %366, i64 noundef %367, i32 noundef 1, ptr noundef %363, i32 noundef %5, i32 noundef %368, i8 noundef zeroext 1)
  %370 = icmp eq ptr %363, null
  br i1 %370, label %371, label %372

371:                                              ; preds = %359
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1456, ptr noundef nonnull @.str.1) #15
  br label %372

372:                                              ; preds = %359, %371
  %373 = icmp eq ptr %369, %363
  br i1 %373, label %376, label %374

374:                                              ; preds = %372
  %375 = tail call ptr @emit_move_insn(ptr noundef %363, ptr noundef %369) #15
  br label %376

376:                                              ; preds = %374, %372
  %377 = add nuw nsw i64 %360, 1
  %378 = icmp eq i64 %377, %358
  br i1 %378, label %379, label %359, !llvm.loop !139

379:                                              ; preds = %376, %353
  %380 = icmp eq i32 %3, 0
  br i1 %380, label %401, label %381

381:                                              ; preds = %379
  %382 = load i32, ptr %354, align 8
  %383 = lshr i32 %382, 16
  %384 = and i32 %383, 255
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !76
  %388 = zext i8 %387 to i32
  %389 = shl i32 %345, 2
  %390 = icmp ult i32 %389, %388
  br i1 %390, label %391, label %637

391:                                              ; preds = %381
  %392 = lshr i32 %388, 2
  %393 = icmp ugt i32 %392, %345
  br i1 %393, label %394, label %637

394:                                              ; preds = %391, %394
  %395 = phi i32 [ %399, %394 ], [ %345, %391 ]
  %396 = tail call ptr @operand_subword(ptr noundef nonnull %354, i32 noundef %395, i32 noundef 1, i32 noundef 0) #15
  %397 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %398 = tail call ptr @emit_move_insn(ptr noundef %396, ptr noundef %397) #15
  %399 = add i32 %395, 1
  %400 = icmp eq i32 %399, %392
  br i1 %400, label %637, label %394, !llvm.loop !140

401:                                              ; preds = %379
  %402 = zext i32 %5 to i64
  %403 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !76
  %405 = zext i8 %404 to i64
  %406 = shl nuw nsw i64 %405, 3
  %407 = sub i64 %406, %1
  %408 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %407) #15
  %409 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %5, ptr noundef %354, ptr noundef %408, ptr noundef null, i32 noundef 0)
  %410 = load i8, ptr %403, align 1, !tbaa !76
  %411 = zext i8 %410 to i64
  %412 = shl nuw nsw i64 %411, 3
  %413 = sub i64 %412, %1
  %414 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %413) #15
  %415 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %5, ptr noundef %409, ptr noundef %414, ptr noundef null, i32 noundef 0)
  br label %637

416:                                              ; preds = %339
  %417 = tail call i32 @int_mode_for_mode(i32 noundef %13) #15
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  %420 = tail call i32 @int_mode_for_mode(i32 noundef %5) #15
  br label %421

421:                                              ; preds = %419, %416
  %422 = phi i32 [ %420, %419 ], [ %417, %416 ]
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %424, label %425

424:                                              ; preds = %421
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1503, ptr noundef nonnull @.str.1) #15
  br label %425

425:                                              ; preds = %421, %424
  %426 = load i32, ptr %340, align 8
  %427 = and i32 %426, 65535
  %428 = icmp eq i32 %427, 43
  br i1 %428, label %447, label %429

429:                                              ; preds = %425
  %430 = icmp eq i64 %278, 0
  br i1 %430, label %431, label %438

431:                                              ; preds = %429
  %432 = lshr i32 %426, 16
  %433 = and i32 %432, 255
  %434 = zext nneg i32 %433 to i64
  %435 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !76
  %437 = icmp ugt i8 %436, 4
  br i1 %437, label %438, label %447

438:                                              ; preds = %431, %429
  %439 = icmp eq i32 %427, 37
  br i1 %439, label %442, label %440

440:                                              ; preds = %438
  %441 = tail call ptr @copy_to_reg(ptr noundef nonnull %340) #15
  br label %442

442:                                              ; preds = %440, %438
  %443 = phi ptr [ %340, %438 ], [ %441, %440 ]
  %444 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 0) #15
  %445 = trunc i64 %280 to i32
  %446 = tail call ptr @gen_rtx_SUBREG(i32 noundef %444, ptr noundef %443, i32 noundef %445) #15
  br label %447

447:                                              ; preds = %431, %442, %425
  %448 = phi ptr [ %340, %425 ], [ %446, %442 ], [ %340, %431 ]
  %449 = phi i64 [ %278, %425 ], [ 0, %442 ], [ 0, %431 ]
  %450 = icmp eq i32 %3, 0
  %451 = select i1 %450, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2179, i32 3), ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2180, i32 3)
  %452 = load ptr, ptr %451, align 8, !tbaa !110
  %453 = getelementptr inbounds %struct.insn_operand_data, ptr %452, i64 0, i32 2
  %454 = load i16, ptr %453, align 8
  %455 = icmp eq i16 %454, 0
  %456 = load i32, ptr @word_mode, align 4
  %457 = zext i16 %454 to i32
  %458 = select i1 %455, i32 %456, i32 %457
  %459 = select i1 %450, i64 2179, i64 2180
  %460 = icmp ne i32 %458, 87
  %461 = icmp ne i64 %1, 0
  %462 = and i1 %461, %460
  br i1 %462, label %463, label %572

463:                                              ; preds = %447
  %464 = zext i32 %458 to i64
  %465 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !76
  %467 = zext i8 %466 to i64
  %468 = shl nuw nsw i64 %467, 3
  %469 = icmp ult i64 %468, %1
  br i1 %469, label %572, label %470

470:                                              ; preds = %463
  %471 = load i32, ptr %448, align 8
  %472 = and i32 %471, 65535
  %473 = icmp eq i32 %472, 39
  br i1 %473, label %474, label %478

474:                                              ; preds = %470
  %475 = lshr i32 %471, 16
  %476 = and i32 %475, 255
  %477 = icmp eq i32 %476, %458
  br i1 %477, label %478, label %572

478:                                              ; preds = %474, %470
  %479 = trunc i32 %471 to i16
  switch i16 %479, label %483 [
    i16 37, label %480
    i16 39, label %480
  ]

480:                                              ; preds = %478, %478
  %481 = add nuw nsw i64 %276, %1
  %482 = icmp ugt i64 %481, %468
  br i1 %482, label %572, label %483

483:                                              ; preds = %480, %478
  %484 = lshr i32 %471, 16
  %485 = and i32 %484, 255
  %486 = load i32, ptr @volatile_ok, align 4, !tbaa !80
  %487 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %459, i32 3
  %488 = load ptr, ptr %487, align 8, !tbaa !110
  %489 = getelementptr inbounds %struct.insn_operand_data, ptr %488, i64 1
  %490 = load ptr, ptr %489, align 8, !tbaa !117
  %491 = tail call i32 %490(ptr noundef nonnull %448, i32 noundef %485) #15
  %492 = and i32 %486, 255
  store i32 %492, ptr @volatile_ok, align 4, !tbaa !80
  %493 = and i32 %491, 255
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %572, label %495

495:                                              ; preds = %483
  %496 = tail call ptr @get_last_insn() #15
  %497 = load i32, ptr %448, align 8
  %498 = and i32 %497, 65535
  %499 = icmp eq i32 %498, 37
  br i1 %499, label %500, label %506

500:                                              ; preds = %495
  %501 = lshr i32 %497, 16
  %502 = and i32 %501, 255
  %503 = icmp eq i32 %502, %458
  br i1 %503, label %506, label %504

504:                                              ; preds = %500
  %505 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %458, ptr noundef nonnull %448) #15
  br label %506

506:                                              ; preds = %504, %500, %495
  %507 = phi ptr [ %505, %504 ], [ %448, %500 ], [ %448, %495 ]
  %508 = load i32, ptr %507, align 8
  %509 = and i32 %508, 65535
  %510 = icmp eq i32 %509, 43
  br i1 %510, label %511, label %514

511:                                              ; preds = %506
  %512 = load i32, ptr @byte_mode, align 4, !tbaa !80
  %513 = tail call ptr @adjust_address_1(ptr noundef nonnull %507, i32 noundef %512, i64 noundef %449, i32 noundef 1, i32 noundef 1) #15
  br label %514

514:                                              ; preds = %511, %506
  %515 = phi ptr [ %513, %511 ], [ %507, %506 ]
  %516 = icmp eq ptr %4, null
  br i1 %516, label %517, label %519

517:                                              ; preds = %514
  %518 = tail call ptr @gen_reg_rtx(i32 noundef %13) #15
  br label %519

519:                                              ; preds = %517, %514
  %520 = phi ptr [ %518, %517 ], [ %4, %514 ]
  %521 = load i32, ptr %520, align 8
  %522 = lshr i32 %521, 16
  %523 = and i32 %522, 255
  %524 = icmp eq i32 %523, %458
  br i1 %524, label %542, label %525

525:                                              ; preds = %519
  %526 = and i32 %521, 65535
  %527 = icmp eq i32 %526, 37
  br i1 %527, label %528, label %540

528:                                              ; preds = %525
  %529 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %530 = tail call ptr %529(i32 noundef %458, ptr noundef nonnull %520) #15
  %531 = load i8, ptr %465, align 1, !tbaa !76
  %532 = load i32, ptr %520, align 8
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  %535 = zext nneg i32 %534 to i64
  %536 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %535
  %537 = load i8, ptr %536, align 1, !tbaa !76
  %538 = icmp ugt i8 %531, %537
  %539 = select i1 %538, ptr %530, ptr null
  br label %542

540:                                              ; preds = %525
  %541 = tail call ptr @gen_reg_rtx(i32 noundef %458) #15
  br label %542

542:                                              ; preds = %528, %540, %519
  %543 = phi ptr [ %541, %540 ], [ %520, %519 ], [ %530, %528 ]
  %544 = phi ptr [ null, %540 ], [ null, %519 ], [ %539, %528 ]
  %545 = load ptr, ptr %488, align 8, !tbaa !117
  %546 = tail call i32 %545(ptr noundef %543, i32 noundef %458) #15
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %550

548:                                              ; preds = %542
  %549 = tail call ptr @gen_reg_rtx(i32 noundef %458) #15
  br label %550

550:                                              ; preds = %548, %542
  %551 = phi ptr [ %543, %542 ], [ %549, %548 ]
  %552 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1) #15
  %553 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %276) #15
  br i1 %450, label %556, label %554

554:                                              ; preds = %550
  %555 = tail call ptr @gen_extzv(ptr noundef %551, ptr noundef %515, ptr noundef %552, ptr noundef %553) #15
  br label %558

556:                                              ; preds = %550
  %557 = tail call ptr @gen_extv(ptr noundef %551, ptr noundef %515, ptr noundef %552, ptr noundef %553) #15
  br label %558

558:                                              ; preds = %556, %554
  %559 = phi ptr [ %555, %554 ], [ %557, %556 ]
  %560 = icmp eq ptr %559, null
  br i1 %560, label %569, label %561

561:                                              ; preds = %558
  %562 = tail call ptr @emit_insn(ptr noundef nonnull %559) #15
  %563 = icmp eq ptr %551, %520
  br i1 %563, label %570, label %564

564:                                              ; preds = %561
  %565 = icmp eq ptr %551, %544
  br i1 %565, label %570, label %566

566:                                              ; preds = %564
  %567 = trunc i32 %3 to i8
  %568 = tail call fastcc ptr @convert_extracted_bit_field(ptr noundef %551, i32 noundef %5, i32 noundef %13, i8 noundef zeroext %567)
  br label %570

569:                                              ; preds = %558
  tail call void @delete_insns_since(ptr noundef %496) #15
  br label %570

570:                                              ; preds = %564, %561, %569, %566
  %571 = phi ptr [ %568, %566 ], [ %216, %569 ], [ %551, %561 ], [ %520, %564 ]
  br i1 %560, label %572, label %637

572:                                              ; preds = %570, %483, %480, %474, %463, %447
  %573 = phi ptr [ %216, %474 ], [ %216, %463 ], [ %216, %447 ], [ %216, %480 ], [ %216, %483 ], [ %571, %570 ]
  br i1 %460, label %574, label %631

574:                                              ; preds = %572
  %575 = load i32, ptr %448, align 8
  %576 = and i32 %575, 65535
  %577 = icmp eq i32 %576, 43
  br i1 %577, label %578, label %631

578:                                              ; preds = %574
  %579 = lshr i32 %575, 16
  %580 = and i32 %579, 255
  %581 = icmp eq i32 %580, 1
  br i1 %581, label %590, label %582

582:                                              ; preds = %578
  %583 = zext nneg i32 %580 to i64
  %584 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %583
  %585 = load i8, ptr %584, align 1, !tbaa !76
  %586 = zext i32 %458 to i64
  %587 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %586
  %588 = load i8, ptr %587, align 1, !tbaa !76
  %589 = icmp ugt i8 %585, %588
  br i1 %589, label %590, label %604

590:                                              ; preds = %582, %578
  %591 = trunc i64 %1 to i32
  %592 = trunc i64 %267 to i32
  %593 = getelementptr inbounds %struct.rtx_def, ptr %448, i64 0, i32 1, i32 0, i32 0, i64 1
  %594 = load ptr, ptr %593, align 8, !tbaa !76
  %595 = icmp eq ptr %594, null
  br i1 %595, label %599, label %596

596:                                              ; preds = %590
  %597 = getelementptr inbounds %struct.mem_attrs, ptr %594, i64 0, i32 4
  %598 = load i32, ptr %597, align 4, !tbaa !123
  br label %599

599:                                              ; preds = %590, %596
  %600 = phi i32 [ %598, %596 ], [ 8, %590 ]
  %601 = lshr i32 %575, 27
  %602 = and i32 %601, 1
  %603 = tail call i32 @get_best_mode(i32 noundef %591, i32 noundef %592, i32 noundef %600, i32 noundef %458, i32 noundef %602) #15
  br label %604

604:                                              ; preds = %582, %599
  %605 = phi i32 [ %603, %599 ], [ %580, %582 ]
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %628, label %607

607:                                              ; preds = %604
  %608 = zext i32 %605 to i64
  %609 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %608
  %610 = load i8, ptr %609, align 1, !tbaa !76
  %611 = zext i8 %610 to i64
  %612 = shl nuw nsw i64 %611, 3
  %613 = udiv i64 %267, %612
  %614 = urem i64 %267, %612
  %615 = mul i64 %613, %611
  %616 = add i64 %615, %611
  %617 = shl i64 %616, 3
  %618 = shl nuw i64 %449, 3
  %619 = add i64 %618, %1
  %620 = icmp ult i64 %617, %619
  br i1 %620, label %628, label %621

621:                                              ; preds = %607
  %622 = tail call ptr @get_last_insn() #15
  %623 = tail call ptr @adjust_address_1(ptr noundef nonnull %448, i32 noundef %605, i64 noundef %615, i32 noundef 1, i32 noundef 1) #15
  %624 = tail call ptr @force_reg(i32 noundef %605, ptr noundef %623) #15
  %625 = tail call fastcc ptr @extract_bit_field_1(ptr noundef %624, i64 noundef %1, i64 noundef %614, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %13, i8 noundef zeroext 0)
  %626 = icmp eq ptr %625, null
  br i1 %626, label %627, label %628

627:                                              ; preds = %621
  tail call void @delete_insns_since(ptr noundef %622) #15
  br label %628

628:                                              ; preds = %607, %621, %627, %604
  %629 = phi i1 [ true, %604 ], [ true, %607 ], [ %626, %621 ], [ true, %627 ]
  %630 = phi ptr [ %573, %604 ], [ %573, %607 ], [ %625, %621 ], [ %573, %627 ]
  br i1 %629, label %631, label %637

631:                                              ; preds = %628, %574, %572
  %632 = icmp eq i8 %7, 0
  br i1 %632, label %637, label %633

633:                                              ; preds = %631
  %634 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %422, ptr noundef %448, i64 noundef %449, i64 noundef %1, i64 noundef %276, ptr noundef %4, i32 noundef %3)
  %635 = trunc i32 %3 to i8
  %636 = tail call fastcc ptr @convert_extracted_bit_field(ptr noundef %634, i32 noundef %5, i32 noundef %13, i8 noundef zeroext %635)
  br label %637

637:                                              ; preds = %394, %391, %628, %631, %401, %381, %334, %47, %213, %570, %633, %337, %36
  %638 = phi ptr [ %37, %36 ], [ %338, %337 ], [ %636, %633 ], [ %571, %570 ], [ %214, %213 ], [ %15, %47 ], [ %335, %334 ], [ %415, %401 ], [ %354, %381 ], [ null, %631 ], [ %630, %628 ], [ %354, %391 ], [ %354, %394 ]
  ret ptr %638
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @extract_low_bits(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !64 {
  %4 = icmp eq i32 %0, %1
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !80
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %1) #15
  %14 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %13) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load i32, ptr %2, align 8
  %18 = and i32 %17, 16711680
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %13) #15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %2, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = tail call ptr @force_reg(i32 noundef %26, ptr noundef nonnull %2) #15
  %28 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %27, i32 noundef %13) #15
  br label %69

29:                                               ; preds = %5
  %30 = zext i32 %0 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !76
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %69, label %34

34:                                               ; preds = %29
  %35 = zext i32 %1 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !76
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %69, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %41 = load i8, ptr %40, align 1, !tbaa !76
  %42 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %43 = load i8, ptr %42, align 1, !tbaa !76
  %44 = icmp eq i8 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %0, i32 noundef %1) #15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call ptr @gen_lowpart_common(i32 noundef %0, ptr noundef nonnull %2) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %48, %45, %39
  %52 = tail call i32 @int_mode_for_mode(i32 noundef %1) #15
  %53 = tail call i32 @int_mode_for_mode(i32 noundef %0) #15
  %54 = icmp eq i32 %52, 1
  %55 = icmp eq i32 %53, 1
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %52, i32 noundef %1) #15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = tail call zeroext i8 @ix86_modes_tieable_p(i32 noundef %53, i32 noundef %0) #15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %65 = tail call ptr %64(i32 noundef %52, ptr noundef nonnull %2) #15
  %66 = tail call ptr @convert_modes(i32 noundef %53, i32 noundef %52, ptr noundef %65, i32 noundef 1) #15
  %67 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %68 = tail call ptr %67(i32 noundef %0, ptr noundef %66) #15
  br label %69

69:                                               ; preds = %60, %57, %51, %29, %34, %23, %12, %20, %16, %3, %48, %63
  %70 = phi ptr [ %68, %63 ], [ %49, %48 ], [ %2, %3 ], [ %28, %23 ], [ %14, %12 ], [ null, %20 ], [ null, %16 ], [ null, %34 ], [ null, %29 ], [ null, %51 ], [ null, %57 ], [ null, %60 ]
  ret ptr %70
}

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @validate_subreg(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @ix86_modes_tieable_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_lowpart_common(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #3

declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_inc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !64 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call ptr @expand_binop(i32 noundef %5, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 3) #15
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %6) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_dec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !64 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call ptr @expand_binop(i32 noundef %5, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 3) #15
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %6) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_shift(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 !prof !141 {
  %7 = icmp ne i32 %0, 83
  %8 = icmp ne i32 %0, 85
  %9 = and i1 %7, %8
  %10 = add i32 %0, -85
  %11 = icmp ult i32 %10, 2
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %13 = tail call ptr @expand_expr_real(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !76
  %17 = add i8 %16, -12
  %18 = icmp ult i8 %17, 6
  br i1 %18, label %19, label %29, !prof !142

19:                                               ; preds = %6
  %20 = load i32, ptr %13, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !76
  %26 = add i8 %25, -12
  %27 = icmp ult i8 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %19, %6, %28
  %30 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %19 ]
  %31 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %19 ]
  %32 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), %19 ]
  %33 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), %19 ]
  %34 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49), %28 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), %19 ]
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %36 = icmp eq ptr %13, %35
  br i1 %36, label %177, label %37, !prof !142

37:                                               ; preds = %29
  br i1 %7, label %77, label %38, !prof !143

38:                                               ; preds = %37
  %39 = load i32, ptr %13, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %77, !prof !144

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !76
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %77, !prof !144

46:                                               ; preds = %42
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %48 = load i8, ptr %47, align 1, !tbaa !76
  %49 = zext i8 %48 to i64
  %50 = shl nuw nsw i64 %49, 3
  %51 = icmp slt i64 %44, %50
  %52 = icmp slt i64 %44, 32
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %77, !prof !144

54:                                               ; preds = %46
  %55 = zext i8 %12 to i64
  %56 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %55, i64 %14, i64 %44
  %57 = load i32, ptr %56, align 4, !tbaa !80
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %55, i64 %14
  %60 = load i32, ptr %59, align 4, !tbaa !80
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %44, %61
  %63 = icmp sge i64 %62, %58
  %64 = icmp eq i32 %57, 2147483647
  %65 = or i1 %64, %63
  br i1 %65, label %77, label %66, !prof !144

66:                                               ; preds = %54
  %67 = load i64, ptr %43, align 8, !tbaa !76
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %177

69:                                               ; preds = %66, %69
  %70 = phi i64 [ %74, %69 ], [ 0, %66 ]
  %71 = phi ptr [ %73, %69 ], [ %2, %66 ]
  %72 = tail call ptr @force_reg(i32 noundef %1, ptr noundef %71) #15
  %73 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %72, ptr noundef %72, ptr noundef null, i32 noundef %5, i32 noundef 3) #15
  %74 = add nuw nsw i64 %70, 1
  %75 = load i64, ptr %43, align 8, !tbaa !76
  %76 = icmp sgt i64 %75, %74
  br i1 %76, label %69, label %177, !llvm.loop !145

77:                                               ; preds = %54, %46, %42, %38, %37
  br label %78

78:                                               ; preds = %77, %170
  %79 = phi ptr [ undef, %77 ], [ %169, %170 ]
  %80 = phi ptr [ %2, %77 ], [ %168, %170 ]
  %81 = phi ptr [ %13, %77 ], [ %167, %170 ]
  %82 = phi i32 [ 0, %77 ], [ %171, %170 ]
  switch i32 %82, label %84 [
    i32 0, label %85
    i32 1, label %83
  ], !prof !146

83:                                               ; preds = %78
  br label %85

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %78, %83, %84
  %86 = phi i1 [ true, %83 ], [ false, %84 ], [ false, %78 ]
  %87 = phi i1 [ false, %83 ], [ true, %84 ], [ false, %78 ]
  %88 = phi i32 [ 2, %83 ], [ 3, %84 ], [ %82, %78 ]
  br i1 %11, label %89, label %146, !prof !142

89:                                               ; preds = %85
  br i1 %86, label %164, label %90

90:                                               ; preds = %89
  %91 = select i1 %9, ptr %30, ptr %31
  br i1 %87, label %92, label %149

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %94 = icmp eq ptr %80, %4
  %95 = select i1 %94, ptr null, ptr %4
  %96 = load ptr, ptr %93, align 8, !tbaa !76
  %97 = load i32, ptr %81, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load i64, ptr %96, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 14
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = tail call i32 @vector_type_mode(ptr noundef nonnull %96) #15
  br label %110

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %107 = load i32, ptr %106, align 4
  %108 = lshr i32 %107, 16
  %109 = and i32 %108, 255
  br label %110

110:                                              ; preds = %105, %103
  %111 = phi i32 [ %104, %103 ], [ %109, %105 ]
  %112 = icmp eq i32 %99, %111
  br i1 %112, label %131, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %81, align 8
  %115 = and i32 %114, 16711680
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %113
  %118 = load i64, ptr %96, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 14
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = tail call i32 @vector_type_mode(ptr noundef nonnull %96) #15
  br label %128

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  br label %128

128:                                              ; preds = %123, %121
  %129 = phi i32 [ %122, %121 ], [ %127, %123 ]
  %130 = tail call ptr @convert_to_mode(i32 noundef %129, ptr noundef nonnull %81, i32 noundef 1) #15
  br label %131

131:                                              ; preds = %128, %113, %110
  %132 = phi ptr [ %130, %128 ], [ %81, %113 ], [ %81, %110 ]
  %133 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %134 = select i1 %9, i32 84, i32 83
  %135 = select i1 %9, i32 83, i32 84
  %136 = tail call ptr @make_tree(ptr noundef nonnull %96, ptr noundef %132)
  %137 = load i8, ptr %133, align 1, !tbaa !76
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 3
  %140 = tail call ptr @build_int_cst(ptr noundef nonnull %96, i64 noundef %139) #15
  %141 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %96, ptr noundef %140, ptr noundef %136) #15
  %142 = tail call ptr @force_reg(i32 noundef %1, ptr noundef %80) #15
  %143 = tail call ptr @expand_shift(i32 noundef %134, i32 noundef %1, ptr noundef %142, ptr noundef %136, ptr noundef null, i32 noundef 1)
  %144 = tail call ptr @expand_shift(i32 noundef %135, i32 noundef %1, ptr noundef %142, ptr noundef %141, ptr noundef %95, i32 noundef 1)
  %145 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %143, ptr noundef %144, ptr noundef %4, i32 noundef %5, i32 noundef 3) #15
  br label %164

146:                                              ; preds = %85
  %147 = icmp eq i32 %5, 0
  %148 = select i1 %9, ptr %32, ptr %34
  br i1 %147, label %152, label %149, !prof !143

149:                                              ; preds = %146, %90
  %150 = phi ptr [ %91, %90 ], [ %148, %146 ]
  %151 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %150, ptr noundef %80, ptr noundef %81, ptr noundef %4, i32 noundef %5, i32 noundef %88) #15
  br label %152

152:                                              ; preds = %149, %146
  %153 = phi ptr [ null, %146 ], [ %151, %149 ]
  %154 = icmp ne ptr %153, null
  %155 = or i1 %11, %154
  br i1 %155, label %164, label %156, !prof !147

156:                                              ; preds = %152
  %157 = icmp eq i32 %5, 0
  br i1 %157, label %160, label %158, !prof !148

158:                                              ; preds = %156
  br i1 %86, label %159, label %164

159:                                              ; preds = %158
  switch i32 %0, label %160 [
    i32 85, label %164
    i32 83, label %164
  ]

160:                                              ; preds = %159, %156
  %161 = phi i32 [ 4, %159 ], [ %88, %156 ]
  %162 = select i1 %9, ptr %33, ptr %34
  %163 = tail call ptr @expand_binop(i32 noundef %1, ptr noundef nonnull %162, ptr noundef %80, ptr noundef %81, ptr noundef %4, i32 noundef %5, i32 noundef %161) #15
  br label %164

164:                                              ; preds = %159, %152, %160, %158, %159, %89, %131
  %165 = phi i32 [ 1, %131 ], [ 7, %89 ], [ 0, %159 ], [ 0, %158 ], [ 0, %160 ], [ 0, %152 ], [ 0, %159 ]
  %166 = phi ptr [ %143, %131 ], [ null, %89 ], [ null, %159 ], [ null, %158 ], [ %163, %160 ], [ %153, %152 ], [ null, %159 ]
  %167 = phi ptr [ %132, %131 ], [ %81, %89 ], [ %81, %159 ], [ %81, %158 ], [ %81, %160 ], [ %81, %152 ], [ %81, %159 ]
  %168 = phi ptr [ %142, %131 ], [ %80, %89 ], [ %80, %159 ], [ %80, %158 ], [ %80, %160 ], [ %80, %152 ], [ %80, %159 ]
  %169 = phi ptr [ %145, %131 ], [ %79, %89 ], [ %79, %159 ], [ %79, %158 ], [ %79, %160 ], [ %79, %152 ], [ %79, %159 ]
  switch i32 %165, label %177 [
    i32 0, label %170
    i32 7, label %170
  ], !prof !146

170:                                              ; preds = %164, %164
  %171 = add nuw nsw i32 %82, 1
  %172 = icmp eq ptr %166, null
  %173 = icmp ult i32 %82, 2
  %174 = and i1 %172, %173
  br i1 %174, label %78, label %175, !prof !142, !llvm.loop !149

175:                                              ; preds = %170
  br i1 %172, label %176, label %177, !prof !142

176:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2274, ptr noundef nonnull @.str.1) #15
  br label %177

177:                                              ; preds = %69, %164, %66, %176, %175, %29
  %178 = phi ptr [ %2, %29 ], [ %166, %175 ], [ %166, %176 ], [ %2, %66 ], [ %169, %164 ], [ %73, %69 ]
  ret ptr %178
}

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @make_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !64 {
  br label %3

3:                                                ; preds = %168, %2
  %4 = phi ptr [ %1, %2 ], [ %170, %168 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %183 [
    i16 30, label %7
    i16 32, label %36
    i16 33, label %47
    i16 49, label %71
    i16 50, label %79
    i16 51, label %87
    i16 52, label %92
    i16 65, label %100
    i16 68, label %108
    i16 67, label %118
    i16 55, label %128
    i16 59, label %144
    i16 98, label %154
    i16 99, label %154
    i16 35, label %168
    i16 45, label %171
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !76
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 2097152
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = and i64 %12, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #15
  br label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !76
  %30 = icmp ult i8 %29, 8
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %11
  br label %32

32:                                               ; preds = %31, %25, %7
  %33 = phi i64 [ 0, %25 ], [ -1, %31 ], [ 0, %7 ]
  %34 = load i64, ptr %8, align 8, !tbaa !76
  %35 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %34, i64 noundef %33) #15
  br label %69

36:                                               ; preds = %3
  %37 = and i32 %5, 16711680
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br i1 %38, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, ptr %39, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load i64, ptr %42, align 8, !tbaa !76
  %44 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %41, i64 noundef %43) #15
  br label %69

45:                                               ; preds = %36
  %46 = tail call ptr @build_real(ptr noundef %0, ptr noundef nonnull byval(%struct.real_value) align 8 %39) #15
  br label %69

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = load i32, ptr %49, align 8, !tbaa !150
  %51 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !76
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = zext nneg i32 %50 to i64
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ %55, %54 ], [ %59, %56 ]
  %58 = phi ptr [ null, %54 ], [ %64, %56 ]
  %59 = add nsw i64 %57, -1
  %60 = load ptr, ptr %48, align 8, !tbaa !76
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %60, i64 0, i32 1, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !65
  %63 = tail call ptr @make_tree(ptr noundef %52, ptr noundef %62)
  %64 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %63, ptr noundef %58) #15
  %65 = icmp sgt i64 %57, 1
  br i1 %65, label %56, label %66, !llvm.loop !152

66:                                               ; preds = %56, %47
  %67 = phi ptr [ null, %47 ], [ %64, %56 ]
  %68 = tail call ptr @build_vector(ptr noundef %0, ptr noundef %67) #15
  br label %69

69:                                               ; preds = %32, %66, %180, %214, %45, %40, %154, %144, %134, %118, %108, %100, %92, %87, %79, %71
  %70 = phi ptr [ %78, %71 ], [ %86, %79 ], [ %91, %87 ], [ %99, %92 ], [ %107, %100 ], [ %117, %108 ], [ %127, %118 ], [ %143, %134 ], [ %153, %144 ], [ %167, %154 ], [ %193, %214 ], [ %182, %180 ], [ %68, %66 ], [ %35, %32 ], [ %44, %40 ], [ %46, %45 ]
  ret ptr %70

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %73)
  %75 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !76
  %77 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %76)
  %78 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %0, ptr noundef %74, ptr noundef %77) #15
  br label %69

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !76
  %82 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %81)
  %83 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !76
  %85 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %84)
  %86 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %82, ptr noundef %85) #15
  br label %69

87:                                               ; preds = %3
  %88 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  %90 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %89)
  %91 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %0, ptr noundef %90) #15
  br label %69

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !76
  %95 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %94)
  %96 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !76
  %98 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %97)
  %99 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef %95, ptr noundef %98) #15
  br label %69

100:                                              ; preds = %3
  %101 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !76
  %103 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %102)
  %104 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !76
  %106 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %105)
  %107 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %0, ptr noundef %103, ptr noundef %106) #15
  br label %69

108:                                              ; preds = %3
  %109 = tail call ptr @unsigned_type_for(ptr noundef %0) #15
  %110 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !76
  %112 = tail call ptr @make_tree(ptr noundef %109, ptr noundef %111)
  %113 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !76
  %115 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %114)
  %116 = tail call ptr @build2_stat(i32 noundef 84, ptr noundef %109, ptr noundef %112, ptr noundef %115) #15
  %117 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %116) #15
  br label %69

118:                                              ; preds = %3
  %119 = tail call ptr @signed_type_for(ptr noundef %0) #15
  %120 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !76
  %122 = tail call ptr @make_tree(ptr noundef %119, ptr noundef %121)
  %123 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !76
  %125 = tail call ptr @make_tree(ptr noundef %0, ptr noundef %124)
  %126 = tail call ptr @build2_stat(i32 noundef 84, ptr noundef %119, ptr noundef %122, ptr noundef %125) #15
  %127 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %126) #15
  br label %69

128:                                              ; preds = %3
  %129 = load i64, ptr %0, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 9
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = tail call ptr @signed_type_for(ptr noundef %0) #15
  br label %134

134:                                              ; preds = %128, %132
  %135 = phi ptr [ %133, %132 ], [ %0, %128 ]
  %136 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !76
  %138 = tail call ptr @make_tree(ptr noundef %135, ptr noundef %137)
  %139 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !76
  %141 = tail call ptr @make_tree(ptr noundef %135, ptr noundef %140)
  %142 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef %135, ptr noundef %138, ptr noundef %141) #15
  %143 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %142) #15
  br label %69

144:                                              ; preds = %3
  %145 = tail call ptr @unsigned_type_for(ptr noundef %0) #15
  %146 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !76
  %148 = tail call ptr @make_tree(ptr noundef %145, ptr noundef %147)
  %149 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !76
  %151 = tail call ptr @make_tree(ptr noundef %145, ptr noundef %150)
  %152 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef %145, ptr noundef %148, ptr noundef %151) #15
  %153 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %152) #15
  br label %69

154:                                              ; preds = %3, %3
  %155 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !153
  %156 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !76
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = and i32 %5, 65535
  %162 = icmp eq i32 %161, 99
  %163 = zext i1 %162 to i32
  %164 = tail call ptr %155(i32 noundef %160, i32 noundef %163) #15
  %165 = load ptr, ptr %156, align 8, !tbaa !76
  %166 = tail call ptr @make_tree(ptr noundef %164, ptr noundef %165)
  %167 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %166) #15
  br label %69

168:                                              ; preds = %3
  %169 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !76
  br label %3

171:                                              ; preds = %3
  %172 = and i32 %5, 67108864
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %176 = load ptr, ptr %175, align 8, !tbaa !76
  br label %177

177:                                              ; preds = %171, %174
  %178 = phi ptr [ %176, %174 ], [ null, %171 ]
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %178) #15
  %182 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %181) #15
  br label %69

183:                                              ; preds = %177, %3
  %184 = and i32 %5, 65535
  %185 = add nsw i32 %184, -7
  %186 = icmp ult i32 %185, 4
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !76
  %190 = tail call i32 @locator_location(i32 noundef %189) #15
  br label %191

191:                                              ; preds = %183, %187
  %192 = phi i32 [ %190, %187 ], [ 0, %183 ]
  %193 = tail call ptr @build_decl_stat(i32 noundef %192, i32 noundef 32, ptr noundef null, ptr noundef %0) #15
  %194 = load i64, ptr %0, align 8
  %195 = trunc i64 %194 to i16
  switch i16 %195, label %214 [
    i16 10, label %196
    i16 12, label %196
  ]

196:                                              ; preds = %191, %191
  %197 = and i64 %194, 65535
  %198 = icmp eq i64 %197, 14
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = tail call i32 @vector_type_mode(ptr noundef %0) #15
  br label %206

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  br label %206

206:                                              ; preds = %201, %199
  %207 = phi i32 [ %200, %199 ], [ %205, %201 ]
  %208 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !76
  %210 = load i64, ptr %209, align 8
  %211 = lshr i64 %210, 56
  %212 = trunc i64 %211 to i8
  %213 = tail call ptr @convert_memory_address_addr_space(i32 noundef %207, ptr noundef %4, i8 noundef zeroext %212) #15
  br label %214

214:                                              ; preds = %191, %206
  %215 = phi ptr [ %213, %206 ], [ %4, %191 ]
  %216 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %193, i64 0, i32 1
  store ptr %215, ptr %216, align 8, !tbaa !76
  br label %69
}

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_mult(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !161 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.algorithm, align 4
  %8 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #15
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %150, label %12, !prof !162

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %150, label %15, !prof !162

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !65
  %17 = icmp eq ptr %16, %2
  %18 = zext i32 %0 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !76
  br i1 %17, label %21, label %32, !prof !162

21:                                               ; preds = %15
  %22 = icmp ne i8 %20, 2
  %23 = icmp ne i32 %4, 0
  %24 = or i1 %23, %22
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr @flag_trapv, align 4, !tbaa !80
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  %30 = select i1 %29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %31 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %30, ptr noundef %1, ptr noundef %3, i32 noundef 0) #15
  br label %150

32:                                               ; preds = %15
  %33 = and i8 %20, -2
  %34 = icmp eq i8 %33, 2
  br i1 %34, label %35, label %113, !prof !144

35:                                               ; preds = %32
  %36 = icmp eq i32 %4, 0
  %37 = load i32, ptr @flag_trapv, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false, !prof !162
  br i1 %39, label %113, label %40, !prof !162

40:                                               ; preds = %35
  %41 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef 58) #15
  %42 = load i32, ptr %2, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %91 [
    i16 30, label %44
    i16 32, label %71
  ], !prof !163

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !76
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %91, !prof !162

48:                                               ; preds = %44
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %50 = load i8, ptr %49, align 1, !tbaa !76
  %51 = icmp ugt i8 %50, 8
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2) #15
  %54 = tail call i32 @rtx_cost(ptr noundef %53, i32 noundef 23, i8 noundef zeroext %9) #15
  %55 = zext i8 %9 to i64
  %56 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %55, i64 %18
  %57 = load i32, ptr %56, align 4, !tbaa !80
  %58 = sub nsw i32 %54, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %52
  %61 = load i64, ptr %45, align 8, !tbaa !76
  %62 = sub nsw i64 0, %61
  %63 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %62, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %58), !range !113
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %91, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %45, align 8, !tbaa !76
  %67 = sub nsw i64 0, %66
  %68 = load i32, ptr %6, align 4, !tbaa !80
  %69 = call fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %67, ptr noundef null, ptr noundef nonnull %7, i32 noundef %68)
  %70 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %69, ptr noundef %3, i32 noundef 0) #15
  br label %110

71:                                               ; preds = %40
  %72 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load i64, ptr %73, align 8, !tbaa !76
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, ptr %72, align 8, !tbaa !76
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76, %71
  %80 = load i64, ptr %72, align 8, !tbaa !76
  %81 = icmp eq i64 %80, 0
  %82 = tail call i64 @llvm.ctpop.i64(i64 %74), !range !164
  %83 = icmp ult i64 %82, 2
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = tail call i32 @floor_log2(i64 noundef %74) #15
  %87 = add nsw i32 %86, 64
  %88 = sext i32 %87 to i64
  %89 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %88) #15
  %90 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %1, ptr noundef %89, ptr noundef %3, i32 noundef %4)
  br label %110

91:                                               ; preds = %44, %48, %76, %40, %79, %60, %52
  %92 = phi i64 [ 0, %60 ], [ 0, %52 ], [ 0, %79 ], [ 0, %40 ], [ %77, %76 ], [ %46, %48 ], [ %46, %44 ]
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %110, label %94, !prof !162

94:                                               ; preds = %91
  %95 = tail call i64 @llvm.ctpop.i64(i64 %92), !range !164
  %96 = icmp ult i64 %95, 2
  br i1 %96, label %97, label %102, !prof !144

97:                                               ; preds = %94
  %98 = tail call i32 @floor_log2(i64 noundef %92) #15
  %99 = sext i32 %98 to i64
  %100 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %99) #15
  %101 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %1, ptr noundef %100, ptr noundef %3, i32 noundef %4)
  br label %110

102:                                              ; preds = %94
  %103 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2) #15
  %104 = tail call i32 @rtx_cost(ptr noundef %103, i32 noundef 23, i8 noundef zeroext %9) #15
  %105 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %92, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %104), !range !113
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %6, align 4, !tbaa !80
  %109 = call fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %92, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %108)
  br label %110

110:                                              ; preds = %91, %102, %107, %97, %85, %65
  %111 = phi i1 [ false, %65 ], [ false, %97 ], [ false, %107 ], [ false, %85 ], [ true, %102 ], [ true, %91 ]
  %112 = phi ptr [ %70, %65 ], [ %101, %97 ], [ %109, %107 ], [ %90, %85 ], [ undef, %102 ], [ undef, %91 ]
  br i1 %111, label %113, label %150, !prof !162

113:                                              ; preds = %32, %110, %35
  %114 = phi ptr [ undef, %35 ], [ %112, %110 ], [ undef, %32 ]
  %115 = load i32, ptr %1, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 32
  %118 = select i1 %117, ptr %1, ptr %2
  %119 = select i1 %117, ptr %2, ptr %1
  %120 = load i32, ptr %118, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 32
  %123 = icmp eq i8 %33, 8
  %124 = and i1 %123, %122
  br i1 %124, label %125, label %138

125:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  %126 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %126, i64 32, i1 false), !tbaa.struct !165
  %127 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %8, ptr noundef nonnull @dconst2) #15
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %119, align 8
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 255
  %133 = call ptr @force_reg(i32 noundef %132, ptr noundef nonnull %119) #15
  %134 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %133, ptr noundef %133, ptr noundef %3, i32 noundef %4, i32 noundef 3) #15
  br label %135

135:                                              ; preds = %125, %129
  %136 = phi ptr [ %133, %129 ], [ %119, %125 ]
  %137 = phi ptr [ %134, %129 ], [ %114, %125 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br i1 %128, label %138, label %150

138:                                              ; preds = %135, %113
  %139 = phi ptr [ %119, %113 ], [ %136, %135 ]
  %140 = icmp eq i32 %4, 0
  %141 = load i32, ptr @flag_trapv, align 4
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %140, i1 %142, i1 false
  %144 = icmp eq i8 %20, 2
  %145 = and i1 %144, %143
  %146 = select i1 %145, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16)
  %147 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %146, ptr noundef %139, ptr noundef nonnull %118, ptr noundef %3, i32 noundef %4, i32 noundef 3) #15
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3253, ptr noundef nonnull @.str.1) #15
  br label %150

150:                                              ; preds = %110, %149, %138, %12, %5, %135, %28
  %151 = phi ptr [ %31, %28 ], [ %137, %135 ], [ %10, %5 ], [ %1, %12 ], [ %147, %138 ], [ %147, %149 ], [ %112, %110 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret ptr %151
}

declare ptr @gen_raw_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @choose_mult_variant(i32 noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #12 !prof !64 {
  %6 = alloca %struct.algorithm, align 4
  %7 = alloca %struct.mult_cost, align 2
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %8 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %9 = icmp slt i32 %4, 0
  br i1 %9, label %116, label %10

10:                                               ; preds = %5
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !76
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 4
  %16 = zext i8 %8 to i64
  %17 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %16, i64 %11
  %18 = load i32, ptr %17, align 4, !tbaa !80
  %19 = mul nsw i32 %15, %18
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %4)
  store i32 0, ptr %3, align 4, !tbaa !80
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %7, align 2, !tbaa !166
  %22 = getelementptr inbounds %struct.mult_cost, ptr %7, i64 0, i32 1
  store i16 %21, ptr %22, align 2, !tbaa !168
  call fastcc void @synth_mult(ptr noundef %2, i64 noundef %1, ptr noundef nonnull %7, i32 noundef %0)
  %23 = load i8, ptr %12, align 1, !tbaa !76
  %24 = icmp ult i8 %23, 5
  br i1 %24, label %25, label %65

25:                                               ; preds = %10
  %26 = getelementptr inbounds [2 x [87 x i32]], ptr @neg_cost, i64 0, i64 %16, i64 %11
  %27 = load i32, ptr %26, align 4, !tbaa !80
  %28 = load i16, ptr %2, align 4, !tbaa !169
  %29 = sext i16 %28 to i32
  %30 = icmp sgt i32 %20, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %20, %29
  br i1 %32, label %33, label %44

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !171
  %36 = sext i16 %35 to i32
  %37 = icmp sgt i32 %20, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %25
  %39 = trunc i32 %27 to i16
  %40 = sub i16 %28, %39
  store i16 %40, ptr %7, align 2, !tbaa !166
  %41 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !171
  %43 = sub i16 %42, %39
  br label %47

44:                                               ; preds = %33, %31
  %45 = sub nsw i32 %20, %27
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %7, align 2, !tbaa !166
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i16 [ %46, %44 ], [ %43, %38 ]
  store i16 %48, ptr %22, align 2, !tbaa !168
  %49 = sub nsw i64 0, %1
  call fastcc void @synth_mult(ptr noundef nonnull %6, i64 noundef %49, ptr noundef nonnull %7, i32 noundef %0)
  %50 = load i16, ptr %6, align 4, !tbaa !169
  %51 = trunc i32 %27 to i16
  %52 = add i16 %50, %51
  store i16 %52, ptr %6, align 4, !tbaa !169
  %53 = getelementptr inbounds %struct.mult_cost, ptr %6, i64 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !171
  %55 = add i16 %54, %51
  store i16 %55, ptr %53, align 2, !tbaa !171
  %56 = load i16, ptr %2, align 4, !tbaa !169
  %57 = icmp slt i16 %52, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = icmp eq i16 %52, %56
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %62 = load i16, ptr %61, align 2, !tbaa !171
  %63 = icmp slt i16 %55, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) %6, i64 168, i1 false), !tbaa.struct !172
  store i32 1, ptr %3, align 4, !tbaa !80
  br label %65

65:                                               ; preds = %58, %60, %64, %10
  %66 = load i32, ptr %17, align 4, !tbaa !80
  %67 = load i16, ptr %2, align 4, !tbaa !169
  %68 = sext i16 %67 to i32
  %69 = icmp sgt i32 %20, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = icmp eq i32 %20, %68
  br i1 %71, label %72, label %83

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !171
  %75 = sext i16 %74 to i32
  %76 = icmp sgt i32 %20, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %65
  %78 = trunc i32 %66 to i16
  %79 = sub i16 %67, %78
  store i16 %79, ptr %7, align 2, !tbaa !166
  %80 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %81 = load i16, ptr %80, align 2, !tbaa !171
  %82 = sub i16 %81, %78
  br label %86

83:                                               ; preds = %72, %70
  %84 = sub nsw i32 %20, %66
  %85 = trunc i32 %84 to i16
  store i16 %85, ptr %7, align 2, !tbaa !166
  br label %86

86:                                               ; preds = %83, %77
  %87 = phi i16 [ %85, %83 ], [ %82, %77 ]
  store i16 %87, ptr %22, align 2, !tbaa !168
  %88 = add nsw i64 %1, -1
  call fastcc void @synth_mult(ptr noundef nonnull %6, i64 noundef %88, ptr noundef nonnull %7, i32 noundef %0)
  %89 = load i16, ptr %6, align 4, !tbaa !169
  %90 = trunc i32 %66 to i16
  %91 = add i16 %89, %90
  store i16 %91, ptr %6, align 4, !tbaa !169
  %92 = getelementptr inbounds %struct.mult_cost, ptr %6, i64 0, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !171
  %94 = add i16 %93, %90
  store i16 %94, ptr %92, align 2, !tbaa !171
  %95 = load i16, ptr %2, align 4, !tbaa !169
  %96 = icmp slt i16 %91, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %86
  %98 = icmp eq i16 %91, %95
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %101 = load i16, ptr %100, align 2, !tbaa !171
  %102 = icmp slt i16 %94, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) %6, i64 168, i1 false), !tbaa.struct !172
  store i32 2, ptr %3, align 4, !tbaa !80
  br label %104

104:                                              ; preds = %103, %99, %97
  %105 = load i16, ptr %2, align 4, !tbaa !169
  %106 = sext i16 %105 to i32
  %107 = icmp sgt i32 %20, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = icmp eq i32 %20, %106
  br i1 %109, label %110, label %116

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %112 = load i16, ptr %111, align 2, !tbaa !171
  %113 = sext i16 %112 to i32
  %114 = icmp sgt i32 %20, %113
  %115 = zext i1 %114 to i8
  br label %116

116:                                              ; preds = %104, %110, %108, %5
  %117 = phi i8 [ 0, %5 ], [ 1, %104 ], [ 0, %108 ], [ %115, %110 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #15
  ret i8 %117
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_mult_const(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #12 !prof !64 {
  %7 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !80
  switch i32 %9, label %15 [
    i32 1, label %10
    i32 2, label %13
  ]

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %12 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %11) #15
  br label %16

13:                                               ; preds = %6
  %14 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %7) #15
  br label %16

15:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2994, ptr noundef nonnull @.str.1) #15
  br label %16

16:                                               ; preds = %13, %15, %10
  %17 = phi ptr [ %12, %10 ], [ %14, %13 ], [ undef, %15 ]
  %18 = phi i64 [ 0, %10 ], [ 1, %13 ], [ undef, %15 ]
  %19 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 1
  %20 = load i16, ptr %19, align 4, !tbaa !174
  %21 = icmp sgt i16 %20, 1
  br i1 %21, label %22, label %141

22:                                               ; preds = %16
  %23 = zext nneg i16 %20 to i64
  %24 = icmp ne ptr %3, null
  %25 = icmp ne i32 %5, 2
  br label %26

26:                                               ; preds = %22, %129
  %27 = phi i64 [ 1, %22 ], [ %136, %129 ]
  %28 = phi i64 [ %23, %22 ], [ %138, %129 ]
  %29 = phi i64 [ %18, %22 ], [ %117, %129 ]
  %30 = phi ptr [ %17, %22 ], [ %116, %129 ]
  %31 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 3, i64 %27
  %32 = load i8, ptr %31, align 1, !tbaa !76
  %33 = sext i8 %32 to i32
  %34 = load i32, ptr @optimize, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr %30, ptr null
  %37 = add nsw i64 %28, 4294967295
  %38 = and i64 %37, 4294967295
  %39 = icmp eq i64 %27, %38
  %40 = and i1 %24, %39
  %41 = and i1 %25, %40
  %42 = select i1 %41, i1 %35, i1 false
  %43 = getelementptr inbounds %struct.algorithm, ptr %4, i64 0, i32 2, i64 %27
  %44 = load i32, ptr %43, align 4, !tbaa !80
  switch i32 %44, label %114 [
    i32 3, label %45
    i32 4, label %51
    i32 5, label %61
    i32 8, label %71
    i32 9, label %81
    i32 6, label %91
    i32 7, label %101
  ]

45:                                               ; preds = %26
  %46 = sext i8 %32 to i64
  %47 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %46) #15
  %48 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %47, ptr noundef null, i32 noundef 0)
  %49 = zext nneg i32 %33 to i64
  %50 = shl i64 %29, %49
  br label %115

51:                                               ; preds = %26
  %52 = sext i8 %32 to i64
  %53 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %52) #15
  %54 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %7, ptr noundef %53, ptr noundef null, i32 noundef 0)
  %55 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %30, ptr noundef %54) #15
  %56 = select i1 %42, ptr %3, ptr %36
  %57 = tail call ptr @force_operand(ptr noundef %55, ptr noundef %56) #15
  %58 = zext nneg i32 %33 to i64
  %59 = shl nuw i64 1, %58
  %60 = add nsw i64 %59, %29
  br label %115

61:                                               ; preds = %26
  %62 = sext i8 %32 to i64
  %63 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %62) #15
  %64 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %7, ptr noundef %63, ptr noundef null, i32 noundef 0)
  %65 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %30, ptr noundef %64) #15
  %66 = select i1 %42, ptr %3, ptr %36
  %67 = tail call ptr @force_operand(ptr noundef %65, ptr noundef %66) #15
  %68 = zext nneg i32 %33 to i64
  %69 = shl nsw i64 -1, %68
  %70 = add i64 %69, %29
  br label %115

71:                                               ; preds = %26
  %72 = sext i8 %32 to i64
  %73 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %72) #15
  %74 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %73, ptr noundef %36, i32 noundef 0)
  %75 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %74, ptr noundef %7) #15
  %76 = select i1 %42, ptr %3, ptr %36
  %77 = tail call ptr @force_operand(ptr noundef %75, ptr noundef %76) #15
  %78 = zext nneg i32 %33 to i64
  %79 = shl i64 %29, %78
  %80 = add nsw i64 %79, 1
  br label %115

81:                                               ; preds = %26
  %82 = sext i8 %32 to i64
  %83 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %82) #15
  %84 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %83, ptr noundef %36, i32 noundef 0)
  %85 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %84, ptr noundef %7) #15
  %86 = select i1 %42, ptr %3, ptr %36
  %87 = tail call ptr @force_operand(ptr noundef %85, ptr noundef %86) #15
  %88 = zext nneg i32 %33 to i64
  %89 = shl i64 %29, %88
  %90 = add nsw i64 %89, -1
  br label %115

91:                                               ; preds = %26
  %92 = sext i8 %32 to i64
  %93 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %92) #15
  %94 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %93, ptr noundef null, i32 noundef 0)
  %95 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %30, ptr noundef %94) #15
  %96 = select i1 %42, ptr %3, ptr %36
  %97 = tail call ptr @force_operand(ptr noundef %95, ptr noundef %96) #15
  %98 = zext nneg i32 %33 to i64
  %99 = shl i64 %29, %98
  %100 = add nsw i64 %99, %29
  br label %115

101:                                              ; preds = %26
  %102 = sext i8 %32 to i64
  %103 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %102) #15
  %104 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %0, ptr noundef %30, ptr noundef %103, ptr noundef null, i32 noundef 0)
  %105 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %104, ptr noundef %30) #15
  %106 = load i32, ptr @optimize, align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, ptr %104, ptr null
  %109 = select i1 %42, ptr %3, ptr %108
  %110 = tail call ptr @force_operand(ptr noundef %105, ptr noundef %109) #15
  %111 = zext nneg i32 %33 to i64
  %112 = shl i64 %29, %111
  %113 = sub nsw i64 %112, %29
  br label %115

114:                                              ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3072, ptr noundef nonnull @.str.1) #15
  br label %115

115:                                              ; preds = %114, %101, %91, %81, %71, %61, %51, %45
  %116 = phi ptr [ %30, %114 ], [ %110, %101 ], [ %97, %91 ], [ %87, %81 ], [ %77, %71 ], [ %67, %61 ], [ %57, %51 ], [ %48, %45 ]
  %117 = phi i64 [ %29, %114 ], [ %113, %101 ], [ %100, %91 ], [ %90, %81 ], [ %80, %71 ], [ %70, %61 ], [ %60, %51 ], [ %50, %45 ]
  %118 = load i32, ptr %116, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 39
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %128 = tail call ptr %127(i32 noundef %126, ptr noundef %7) #15
  br label %129

129:                                              ; preds = %121, %115
  %130 = phi ptr [ %128, %121 ], [ %7, %115 ]
  %131 = phi i32 [ %126, %121 ], [ %0, %115 ]
  %132 = tail call ptr @get_last_insn() #15
  %133 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %117) #15
  %134 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %131, ptr noundef %130, ptr noundef %133) #15
  %135 = tail call ptr @set_unique_reg_note(ptr noundef %132, i32 noundef 4, ptr noundef %134) #15
  %136 = add nuw nsw i64 %27, 1
  %137 = load i16, ptr %19, align 4, !tbaa !174
  %138 = sext i16 %137 to i64
  %139 = sext i16 %137 to i64
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %26, label %141, !llvm.loop !175

141:                                              ; preds = %129, %16
  %142 = phi ptr [ %17, %16 ], [ %116, %129 ]
  %143 = phi i64 [ %18, %16 ], [ %117, %129 ]
  switch i32 %5, label %151 [
    i32 1, label %144
    i32 2, label %147
  ]

144:                                              ; preds = %141
  %145 = sub nsw i64 0, %143
  %146 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %142, ptr noundef %3, i32 noundef 0) #15
  br label %151

147:                                              ; preds = %141
  %148 = add nsw i64 %143, 1
  %149 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %0, ptr noundef %142, ptr noundef %7) #15
  %150 = tail call ptr @force_operand(ptr noundef %149, ptr noundef %3) #15
  br label %151

151:                                              ; preds = %141, %147, %144
  %152 = phi ptr [ %146, %144 ], [ %150, %147 ], [ %142, %141 ]
  %153 = phi i64 [ %145, %144 ], [ %148, %147 ], [ %143, %141 ]
  %154 = zext i32 %0 to i64
  %155 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !176
  %157 = xor i64 %153, %2
  %158 = and i64 %157, %156
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3108, ptr noundef nonnull @.str.1) #15
  br label %161

161:                                              ; preds = %151, %160
  ret ptr %152
}

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ceil_log2(i64 noundef %0) local_unnamed_addr #11 !prof !177 {
  %2 = add i64 %0, -1
  %3 = tail call i32 @floor_log2(i64 noundef %2) #15
  %4 = add nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_mult_highpart_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #12 !prof !64 {
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %7, i32 50, i32 49
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !76
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %15) #15
  %17 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %2, ptr noundef %16, ptr noundef null, i32 noundef 0)
  %18 = tail call ptr @expand_and(i32 noundef %0, ptr noundef %17, ptr noundef %3, ptr noundef null)
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %8, i32 noundef %0, ptr noundef %1, ptr noundef %18) #15
  %20 = tail call ptr @force_operand(ptr noundef %19, ptr noundef %1) #15
  %21 = load i8, ptr %10, align 1, !tbaa !76
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %25) #15
  %27 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %3, ptr noundef %26, ptr noundef null, i32 noundef 0)
  %28 = tail call ptr @expand_and(i32 noundef %0, ptr noundef %27, ptr noundef %2, ptr noundef null)
  %29 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %8, i32 noundef %0, ptr noundef %20, ptr noundef %28) #15
  %30 = tail call ptr @force_operand(ptr noundef %29, ptr noundef %4) #15
  ret ptr %30
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_and(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !64 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @simplify_binary_operation(i32 noundef 61, i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %14

14:                                               ; preds = %12, %8, %4
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %4 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 3) #15
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ %15, %14 ]
  %21 = icmp eq ptr %3, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %20, %3
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %20) #15
  br label %26

26:                                               ; preds = %19, %22, %24
  %27 = phi ptr [ %3, %24 ], [ %3, %22 ], [ %20, %19 ]
  ret ptr %27
}

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_divmod(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #12 !prof !64 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %18 = load i32, ptr %4, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 30
  br i1 %20, label %21, label %43

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !76
  store i64 %23, ptr @expand_divmod.ext_op1, align 8, !tbaa !176
  %24 = icmp ne i32 %6, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = zext i32 %2 to i64
  %27 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !176
  %29 = and i64 %28, %23
  store i64 %29, ptr @expand_divmod.ext_op1, align 8, !tbaa !176
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64, ptr @expand_divmod.ext_op1, align 8, !tbaa !176
  %32 = tail call i64 @llvm.ctpop.i64(i64 %31), !range !164
  %33 = icmp ult i64 %32, 2
  %34 = or i1 %24, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = sub nsw i64 0, %31
  %37 = xor i64 %31, -1
  %38 = and i64 %36, %37
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %30, %35
  %41 = phi i1 [ %33, %30 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %40, %7
  %44 = phi i32 [ %42, %40 ], [ 0, %7 ]
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %46 = icmp eq ptr %45, %4
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = icmp eq i32 %0, 0
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %50 = select i1 %48, ptr %3, ptr %49
  br label %1164

51:                                               ; preds = %43
  %52 = icmp eq i32 %6, 0
  %53 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %54 = icmp eq ptr %53, %4
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = icmp eq i32 %0, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  br label %1164

60:                                               ; preds = %56
  %61 = load i32, ptr @flag_trapv, align 4, !tbaa !80
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = zext i32 %2 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !76
  %67 = icmp eq i8 %66, 2
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i1 [ false, %60 ], [ %67, %63 ]
  %70 = select i1 %69, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %71 = tail call ptr @expand_unop(i32 noundef %2, ptr noundef nonnull %70, ptr noundef %3, ptr noundef %5, i32 noundef 0) #15
  br label %1164

72:                                               ; preds = %51
  %73 = icmp eq ptr %5, null
  br i1 %73, label %104, label %74

74:                                               ; preds = %72
  %75 = load i32, ptr %5, align 8
  %76 = and i32 %75, -2147418113
  %77 = icmp eq i32 %76, -2147483611
  br i1 %77, label %103, label %78

78:                                               ; preds = %74
  %79 = icmp ne i32 %0, 0
  %80 = or i1 %79, %20
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %5, ptr noundef %3) #15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i32, ptr %3, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 43
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, ptr %5, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 43
  br i1 %91, label %103, label %92

92:                                               ; preds = %88, %78, %84
  %93 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, ptr %4, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, ptr %5, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 43
  br i1 %102, label %103, label %104

103:                                              ; preds = %74, %99, %92, %88, %81
  br label %104

104:                                              ; preds = %103, %99, %95, %72
  %105 = phi ptr [ null, %103 ], [ %5, %99 ], [ %5, %95 ], [ null, %72 ]
  %106 = icmp eq i32 %44, 0
  %107 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %108 = icmp eq ptr %107, %4
  %109 = select i1 %106, i1 true, i1 %108
  %110 = select i1 %52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %111 = select i1 %52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34)
  %112 = select i1 %109, ptr %111, ptr %110
  %113 = select i1 %52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35)
  %114 = select i1 %109, ptr %113, ptr %110
  %115 = icmp eq i32 %2, 0
  br i1 %115, label %145, label %116

116:                                              ; preds = %104, %126
  %117 = phi i32 [ %130, %126 ], [ %2, %104 ]
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.optab_d, ptr %112, i64 0, i32 4, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !115
  %121 = icmp eq i32 %120, 2956
  br i1 %121, label %122, label %145

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.optab_d, ptr %114, i64 0, i32 4, i64 %118
  %124 = load i32, ptr %123, align 4, !tbaa !115
  %125 = icmp eq i32 %124, 2956
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = zext i32 %117 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !76
  %130 = zext i8 %129 to i32
  %131 = icmp eq i8 %129, 0
  br i1 %131, label %132, label %116, !llvm.loop !178

132:                                              ; preds = %126, %139
  %133 = phi i32 [ %143, %139 ], [ %2, %126 ]
  %134 = tail call ptr @optab_libfunc(ptr noundef nonnull %112, i32 noundef %133) #15
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = tail call ptr @optab_libfunc(ptr noundef nonnull %114, i32 noundef %133) #15
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = zext i32 %133 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !76
  %143 = zext i8 %142 to i32
  %144 = icmp eq i8 %142, 0
  br i1 %144, label %145, label %132, !llvm.loop !179

145:                                              ; preds = %122, %116, %132, %136, %139, %104
  %146 = phi i32 [ 0, %104 ], [ 0, %139 ], [ %133, %136 ], [ %133, %132 ], [ %117, %116 ], [ %117, %122 ]
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 %2, i32 %146
  %149 = icmp eq ptr %105, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i32, ptr %105, align 8
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  %154 = icmp eq i32 %153, %148
  br i1 %154, label %157, label %155

155:                                              ; preds = %150, %145
  %156 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %157

157:                                              ; preds = %150, %155
  %158 = phi ptr [ %156, %155 ], [ %105, %150 ]
  %159 = zext i32 %148 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !76
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 3
  %164 = zext i8 %17 to i64
  %165 = getelementptr inbounds [2 x [87 x i32]], ptr @udiv_cost, i64 0, i64 %164, i64 %159
  %166 = getelementptr inbounds [2 x [87 x i32]], ptr @sdiv_cost, i64 0, i64 %164, i64 %159
  %167 = select i1 %52, ptr %166, ptr %165
  %168 = load i32, ptr %167, align 4, !tbaa !80
  %169 = icmp ne i32 %0, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %157
  %171 = load i64, ptr @expand_divmod.last_div_const, align 8, !tbaa !176
  %172 = icmp ne i64 %171, 0
  %173 = and i1 %20, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !76
  %177 = icmp eq i64 %176, %171
  br i1 %177, label %185, label %178

178:                                              ; preds = %174, %170
  %179 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %164, i64 %159
  %180 = load i32, ptr %179, align 4, !tbaa !80
  %181 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %164, i64 %159
  %182 = load i32, ptr %181, align 4, !tbaa !80
  %183 = add i32 %180, %182
  %184 = sub i32 %168, %183
  br label %185

185:                                              ; preds = %178, %174, %157
  %186 = phi i32 [ %168, %174 ], [ %184, %178 ], [ %168, %157 ]
  %187 = icmp eq i32 %0, 0
  %188 = and i1 %187, %20
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !76
  br label %192

192:                                              ; preds = %185, %189
  %193 = phi i64 [ %191, %189 ], [ 0, %185 ]
  store i64 %193, ptr @expand_divmod.last_div_const, align 8, !tbaa !176
  %194 = icmp eq i32 %148, %2
  br i1 %194, label %216, label %195

195:                                              ; preds = %192
  %196 = tail call ptr @convert_modes(i32 noundef %148, i32 noundef %2, ptr noundef %3, i32 noundef %6) #15
  %197 = tail call ptr @convert_modes(i32 noundef %148, i32 noundef %2, ptr noundef nonnull %4, i32 noundef %6) #15
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 30
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !76
  %204 = tail call i64 @llvm.ctpop.i64(i64 %203), !range !164
  %205 = icmp ult i64 %204, 2
  %206 = xor i1 %52, true
  %207 = or i1 %205, %206
  br i1 %207, label %213, label %208

208:                                              ; preds = %201
  %209 = sub nsw i64 0, %203
  %210 = xor i64 %203, -1
  %211 = and i64 %209, %210
  %212 = icmp eq i64 %211, 0
  br label %213

213:                                              ; preds = %201, %208, %195
  %214 = phi i1 [ false, %195 ], [ %205, %201 ], [ %212, %208 ]
  %215 = zext i1 %214 to i32
  br label %216

216:                                              ; preds = %213, %192
  %217 = phi i32 [ %215, %213 ], [ %44, %192 ]
  %218 = phi i1 [ %200, %213 ], [ %20, %192 ]
  %219 = phi ptr [ %197, %213 ], [ %4, %192 ]
  %220 = phi ptr [ %196, %213 ], [ %3, %192 ]
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 134283263
  %223 = icmp eq i32 %222, 134217771
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = tail call ptr @force_reg(i32 noundef %148, ptr noundef nonnull %220) #15
  br label %226

226:                                              ; preds = %224, %216
  %227 = phi ptr [ %225, %224 ], [ %220, %216 ]
  %228 = load i32, ptr %219, align 8
  %229 = and i32 %228, 134283263
  %230 = icmp eq i32 %229, 134217771
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = tail call ptr @force_reg(i32 noundef %148, ptr noundef nonnull %219) #15
  br label %233

233:                                              ; preds = %231, %226
  %234 = phi ptr [ %232, %231 ], [ %219, %226 ]
  %235 = or i1 %169, %218
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = tail call ptr @force_reg(i32 noundef %148, ptr noundef %227) #15
  br label %238

238:                                              ; preds = %233, %236
  %239 = phi ptr [ %237, %236 ], [ %227, %233 ]
  %240 = tail call ptr @get_last_insn() #15
  br i1 %52, label %250, label %241

241:                                              ; preds = %238
  %242 = icmp eq i32 %1, 69
  %243 = select i1 %242, i32 67, i32 %1
  %244 = icmp eq i32 %243, 73
  %245 = select i1 %244, i32 71, i32 %243
  %246 = icmp eq i32 %245, 76
  %247 = icmp ne i32 %217, 0
  %248 = select i1 %246, i1 %247, i1 false
  %249 = select i1 %248, i32 67, i32 %245
  br label %250

250:                                              ; preds = %241, %238
  %251 = phi i32 [ %249, %241 ], [ %1, %238 ]
  %252 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %253 = icmp eq ptr %234, %252
  br i1 %253, label %1082, label %254

254:                                              ; preds = %250
  switch i32 %251, label %1081 [
    i32 71, label %255
    i32 67, label %255
    i32 69, label %632
    i32 73, label %632
    i32 68, label %799
    i32 72, label %799
    i32 76, label %995
    i32 70, label %1032
    i32 74, label %1032
  ]

255:                                              ; preds = %254, %254
  br i1 %218, label %256, label %629

256:                                              ; preds = %255
  %257 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  br i1 %52, label %403, label %258

258:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %259 = load i64, ptr %257, align 8, !tbaa !76
  %260 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %159
  %261 = load i64, ptr %260, align 8, !tbaa !176
  %262 = and i64 %261, %259
  %263 = tail call i64 @llvm.ctpop.i64(i64 %262), !range !164
  %264 = icmp ult i64 %263, 2
  br i1 %264, label %265, label %281

265:                                              ; preds = %258
  %266 = tail call i32 @floor_log2(i64 noundef %262) #15
  br i1 %169, label %267, label %277

267:                                              ; preds = %265
  %268 = zext nneg i32 %266 to i64
  %269 = shl nsw i64 -1, %268
  %270 = xor i64 %269, -1
  %271 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %270) #15
  %272 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %239, ptr noundef %271, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %273 = icmp eq ptr %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %267
  %275 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %276 = tail call ptr %275(i32 noundef %2, ptr noundef nonnull %272) #15
  br label %399

277:                                              ; preds = %267, %265
  %278 = sext i32 %266 to i64
  %279 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %278) #15
  %280 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %279, ptr noundef %158, i32 noundef 1)
  br label %372

281:                                              ; preds = %258
  %282 = icmp ult i8 %161, 9
  br i1 %282, label %283, label %399

283:                                              ; preds = %281
  %284 = add nsw i32 %163, -1
  %285 = zext nneg i32 %284 to i64
  %286 = lshr i64 %262, %285
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %283
  %289 = tail call ptr @emit_store_flag_force(ptr noundef %158, i32 noundef 86, ptr noundef %239, ptr noundef %234, i32 noundef %148, i32 noundef 1, i32 noundef 1)
  br label %372

290:                                              ; preds = %283
  %291 = call fastcc i64 @choose_multiplier(i64 noundef %262, i32 noundef %163, i32 noundef %163, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %292 = icmp ne i64 %291, 0
  %293 = and i64 %262, 1
  %294 = icmp eq i64 %293, 0
  %295 = and i1 %294, %292
  br i1 %295, label %296, label %306

296:                                              ; preds = %290
  %297 = sub i64 0, %262
  %298 = and i64 %262, %297
  %299 = tail call i32 @floor_log2(i64 noundef %298) #15
  %300 = zext nneg i32 %299 to i64
  %301 = lshr i64 %262, %300
  %302 = sub nsw i32 %163, %299
  %303 = call fastcc i64 @choose_multiplier(i64 noundef %301, i32 noundef %163, i32 noundef %302, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %296
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4096, ptr noundef nonnull @.str.1) #15
  br label %306

306:                                              ; preds = %290, %305, %296
  %307 = phi i32 [ %299, %305 ], [ %299, %296 ], [ 0, %290 ]
  %308 = phi i64 [ 1, %305 ], [ 0, %296 ], [ %291, %290 ]
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %345, label %310

310:                                              ; preds = %306
  %311 = load i32, ptr %8, align 4, !tbaa !80
  %312 = icmp sgt i32 %311, 32
  br i1 %312, label %341, label %313

313:                                              ; preds = %310
  %314 = add nsw i32 %311, -1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !80
  %318 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 1
  %319 = load i32, ptr %318, align 4, !tbaa !80
  %320 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %164, i64 %159
  %321 = load i32, ptr %320, align 4, !tbaa !80
  %322 = load ptr, ptr %10, align 8, !tbaa !65
  %323 = add i32 %317, %319
  %324 = shl i32 %321, 1
  %325 = add i32 %323, %324
  %326 = sub i32 %186, %325
  %327 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %148, ptr noundef %239, ptr noundef %322, i32 noundef 1, i32 noundef %326)
  %328 = icmp eq ptr %327, null
  br i1 %328, label %341, label %329

329:                                              ; preds = %313
  %330 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %148, ptr noundef %239, ptr noundef nonnull %327) #15
  %331 = tail call ptr @force_operand(ptr noundef %330, ptr noundef null) #15
  %332 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #15
  %333 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %331, ptr noundef %332, ptr noundef null, i32 noundef 1)
  %334 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %148, ptr noundef nonnull %327, ptr noundef %333) #15
  %335 = tail call ptr @force_operand(ptr noundef %334, ptr noundef null) #15
  %336 = load i32, ptr %8, align 4, !tbaa !80
  %337 = add nsw i32 %336, -1
  %338 = sext i32 %337 to i64
  %339 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %338) #15
  %340 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %335, ptr noundef %339, ptr noundef %158, i32 noundef 1)
  br label %341

341:                                              ; preds = %313, %310, %329
  %342 = phi i1 [ true, %329 ], [ false, %310 ], [ false, %313 ]
  %343 = phi i32 [ 0, %329 ], [ 9, %310 ], [ 9, %313 ]
  %344 = phi ptr [ %340, %329 ], [ null, %310 ], [ null, %313 ]
  br i1 %342, label %372, label %399

345:                                              ; preds = %306
  %346 = icmp sgt i32 %307, 31
  %347 = load i32, ptr %8, align 4
  %348 = icmp sgt i32 %347, 31
  %349 = select i1 %346, i1 true, i1 %348
  br i1 %349, label %368, label %350

350:                                              ; preds = %345
  %351 = sext i32 %307 to i64
  %352 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %351) #15
  %353 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %352, ptr noundef null, i32 noundef 1)
  %354 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %351
  %355 = load i32, ptr %354, align 4, !tbaa !80
  %356 = load i32, ptr %8, align 4, !tbaa !80
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !80
  %360 = load ptr, ptr %10, align 8, !tbaa !65
  %361 = add i32 %355, %359
  %362 = sub i32 %186, %361
  %363 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %148, ptr noundef %353, ptr noundef %360, i32 noundef 1, i32 noundef %362)
  %364 = icmp eq ptr %363, null
  br i1 %364, label %368, label %365

365:                                              ; preds = %350
  %366 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %357) #15
  %367 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef nonnull %363, ptr noundef %366, ptr noundef %158, i32 noundef 1)
  br label %368

368:                                              ; preds = %350, %345, %365
  %369 = phi i1 [ true, %365 ], [ false, %345 ], [ false, %350 ]
  %370 = phi i32 [ 0, %365 ], [ 9, %345 ], [ 9, %350 ]
  %371 = phi ptr [ %367, %365 ], [ null, %345 ], [ null, %350 ]
  br i1 %369, label %372, label %399

372:                                              ; preds = %341, %368, %288, %277
  %373 = phi ptr [ %280, %277 ], [ %289, %288 ], [ %344, %341 ], [ %371, %368 ]
  %374 = tail call ptr @get_last_insn() #15
  %375 = icmp eq ptr %374, %240
  br i1 %375, label %399, label %376

376:                                              ; preds = %372
  %377 = load i32, ptr %374, align 8
  %378 = and i32 %377, 65535
  %379 = add nsw i32 %378, -7
  %380 = icmp ult i32 %379, 4
  br i1 %380, label %381, label %389

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.rtx_def, ptr %374, i64 1
  %383 = load ptr, ptr %382, align 8, !tbaa !76
  %384 = load i32, ptr %383, align 8
  %385 = and i32 %384, 65535
  %386 = icmp eq i32 %385, 23
  br i1 %386, label %389, label %387

387:                                              ; preds = %381
  %388 = tail call ptr @single_set_2(ptr noundef nonnull %374, ptr noundef nonnull %383) #15
  br label %389

389:                                              ; preds = %376, %381, %387
  %390 = phi ptr [ %388, %387 ], [ null, %376 ], [ %383, %381 ]
  %391 = icmp eq ptr %390, null
  br i1 %391, label %399, label %392

392:                                              ; preds = %389
  %393 = getelementptr inbounds %struct.rtx_def, ptr %390, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !76
  %395 = icmp eq ptr %394, %373
  br i1 %395, label %396, label %399

396:                                              ; preds = %392
  %397 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %148, ptr noundef %239, ptr noundef %234) #15
  %398 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %374, i32 noundef 4, ptr noundef %397) #15
  br label %399

399:                                              ; preds = %368, %341, %372, %389, %392, %396, %281, %274
  %400 = phi i32 [ 1, %274 ], [ 8, %281 ], [ 0, %396 ], [ 0, %392 ], [ 0, %389 ], [ 0, %372 ], [ %343, %341 ], [ %370, %368 ]
  %401 = phi ptr [ null, %274 ], [ null, %281 ], [ %373, %396 ], [ %373, %392 ], [ %373, %389 ], [ %373, %372 ], [ %344, %341 ], [ %371, %368 ]
  %402 = phi ptr [ %276, %274 ], [ undef, %281 ], [ undef, %396 ], [ undef, %392 ], [ undef, %389 ], [ undef, %372 ], [ undef, %341 ], [ undef, %368 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  switch i32 %400, label %1164 [
    i32 0, label %1082
    i32 8, label %1082
    i32 9, label %629
  ]

403:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  %404 = load i64, ptr %257, align 8, !tbaa !76
  %405 = tail call i64 @llvm.abs.i64(i64 %404, i1 false)
  %406 = icmp slt i64 %404, 0
  %407 = select i1 %169, i1 %406, i1 false
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = tail call ptr @gen_int_mode(i64 noundef %405, i32 noundef %148) #15
  br label %410

410:                                              ; preds = %408, %403
  %411 = phi i64 [ %405, %408 ], [ %404, %403 ]
  %412 = phi ptr [ %409, %408 ], [ %234, %403 ]
  switch i64 %411, label %415 [
    i64 1, label %598
    i64 -1, label %413
  ]

413:                                              ; preds = %410
  %414 = tail call ptr @expand_unop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %239, ptr noundef %158, i32 noundef 0) #15
  br label %598

415:                                              ; preds = %410
  %416 = icmp ult i8 %161, 9
  br i1 %416, label %417, label %425

417:                                              ; preds = %415
  %418 = add nsw i32 %163, -1
  %419 = zext nneg i32 %418 to i64
  %420 = shl nuw i64 1, %419
  %421 = icmp eq i64 %405, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = tail call ptr @emit_store_flag(ptr noundef %158, i32 noundef 81, ptr noundef %239, ptr noundef %412, i32 noundef %148, i32 noundef 1, i32 noundef 1)
  %424 = icmp eq ptr %423, null
  br i1 %424, label %625, label %598

425:                                              ; preds = %417, %415
  %426 = tail call i64 @llvm.ctpop.i64(i64 %411), !range !164
  %427 = icmp ult i64 %426, 2
  br i1 %427, label %428, label %447

428:                                              ; preds = %425
  br i1 %169, label %429, label %433

429:                                              ; preds = %428
  %430 = getelementptr inbounds [2 x [87 x i8]], ptr @smod_pow2_cheap, i64 0, i64 %164, i64 %159
  %431 = load i8, ptr %430, align 1, !tbaa !76
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %447, label %437

433:                                              ; preds = %428
  %434 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %164, i64 %159
  %435 = load i8, ptr %434, align 1, !tbaa !76
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %447, label %437

437:                                              ; preds = %433, %429
  %438 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), %433 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), %429 ]
  %439 = sext i32 %148 to i64
  %440 = getelementptr inbounds %struct.optab_d, ptr %438, i64 0, i32 4, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !115
  %442 = icmp eq i32 %441, 2956
  br i1 %442, label %443, label %598

443:                                              ; preds = %437
  %444 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 %439
  %445 = load i32, ptr %444, align 4, !tbaa !115
  %446 = icmp eq i32 %445, 2956
  br i1 %446, label %447, label %598

447:                                              ; preds = %433, %443, %429, %425
  %448 = tail call i64 @llvm.ctpop.i64(i64 %405), !range !164
  %449 = icmp ult i64 %448, 2
  br i1 %449, label %450, label %510

450:                                              ; preds = %447
  br i1 %169, label %451, label %457

451:                                              ; preds = %450
  %452 = tail call fastcc ptr @expand_smod_pow2(i32 noundef %148, ptr noundef %239, i64 noundef %411)
  %453 = icmp eq ptr %452, null
  br i1 %453, label %457, label %454

454:                                              ; preds = %451
  %455 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %456 = tail call ptr %455(i32 noundef %2, ptr noundef nonnull %452) #15
  br label %625

457:                                              ; preds = %451, %450
  %458 = getelementptr inbounds [2 x [87 x i8]], ptr @sdiv_pow2_cheap, i64 0, i64 %164, i64 %159
  %459 = load i8, ptr %458, align 1, !tbaa !76
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %473, label %461

461:                                              ; preds = %457
  %462 = sext i32 %148 to i64
  %463 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 4, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !115
  %465 = icmp eq i32 %464, 2956
  br i1 %465, label %466, label %470

466:                                              ; preds = %461
  %467 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 4, i64 %462
  %468 = load i32, ptr %467, align 4, !tbaa !115
  %469 = icmp eq i32 %468, 2956
  br i1 %469, label %473, label %470

470:                                              ; preds = %466, %461
  %471 = tail call ptr @gen_int_mode(i64 noundef %405, i32 noundef %148) #15
  %472 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %148, ptr noundef %239, ptr noundef %471, ptr noundef null, i32 noundef 0)
  br label %475

473:                                              ; preds = %466, %457
  %474 = tail call fastcc ptr @expand_sdiv_pow2(i32 noundef %148, ptr noundef %239, i64 noundef %405)
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi ptr [ %472, %470 ], [ %474, %473 ]
  %477 = icmp slt i64 %411, 0
  br i1 %477, label %478, label %598

478:                                              ; preds = %475
  %479 = tail call ptr @get_last_insn() #15
  %480 = icmp eq ptr %479, %240
  br i1 %480, label %508, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %479, align 8
  %483 = and i32 %482, 65535
  %484 = add nsw i32 %483, -7
  %485 = icmp ult i32 %484, 4
  br i1 %485, label %486, label %494

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.rtx_def, ptr %479, i64 1
  %488 = load ptr, ptr %487, align 8, !tbaa !76
  %489 = load i32, ptr %488, align 8
  %490 = and i32 %489, 65535
  %491 = icmp eq i32 %490, 23
  br i1 %491, label %494, label %492

492:                                              ; preds = %486
  %493 = tail call ptr @single_set_2(ptr noundef nonnull %479, ptr noundef nonnull %488) #15
  br label %494

494:                                              ; preds = %481, %486, %492
  %495 = phi ptr [ %493, %492 ], [ null, %481 ], [ %488, %486 ]
  %496 = icmp eq ptr %495, null
  br i1 %496, label %508, label %497

497:                                              ; preds = %494
  %498 = getelementptr inbounds %struct.rtx_def, ptr %495, i64 0, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !76
  %500 = icmp eq ptr %499, %476
  %501 = icmp sgt i64 %405, -1
  %502 = select i1 %500, i1 %501, i1 false
  br i1 %502, label %503, label %508

503:                                              ; preds = %497
  %504 = tail call i64 @trunc_int_for_mode(i64 noundef %405, i32 noundef %148) #15
  %505 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %504) #15
  %506 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %148, ptr noundef %239, ptr noundef %505) #15
  %507 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %479, i32 noundef 4, ptr noundef %506) #15
  br label %508

508:                                              ; preds = %503, %497, %494, %478
  %509 = tail call ptr @expand_unop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %476, ptr noundef %476, i32 noundef 0) #15
  br label %598

510:                                              ; preds = %447
  br i1 %416, label %511, label %625

511:                                              ; preds = %510
  %512 = add nsw i32 %163, -1
  %513 = call fastcc i64 @choose_multiplier(i64 noundef %405, i32 noundef %163, i32 noundef %512, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11)
  %514 = load ptr, ptr %13, align 8, !tbaa !65
  %515 = getelementptr inbounds %struct.rtx_def, ptr %514, i64 0, i32 1
  %516 = load i64, ptr %515, align 8, !tbaa !76
  %517 = zext i32 %512 to i64
  %518 = lshr i64 %516, %517
  %519 = icmp eq i64 %518, 0
  %520 = load i32, ptr %12, align 4, !tbaa !80
  %521 = icmp sgt i32 %520, 31
  %522 = icmp ugt i8 %161, 4
  %523 = select i1 %521, i1 true, i1 %522
  br i1 %519, label %524, label %558

524:                                              ; preds = %511
  br i1 %523, label %554, label %525

525:                                              ; preds = %524
  %526 = sext i32 %520 to i64
  %527 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !80
  %529 = sext i32 %512 to i64
  %530 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %529
  %531 = load i32, ptr %530, align 4, !tbaa !80
  %532 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %164, i64 %159
  %533 = load i32, ptr %532, align 4, !tbaa !80
  %534 = add i32 %528, %531
  %535 = add i32 %534, %533
  %536 = sub i32 %186, %535
  %537 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %148, ptr noundef %239, ptr noundef %514, i32 noundef 0, i32 noundef %536)
  %538 = icmp eq ptr %537, null
  br i1 %538, label %554, label %539

539:                                              ; preds = %525
  %540 = load i32, ptr %12, align 4, !tbaa !80
  %541 = sext i32 %540 to i64
  %542 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %541) #15
  %543 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef nonnull %537, ptr noundef %542, ptr noundef null, i32 noundef 0)
  %544 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %529) #15
  %545 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %544, ptr noundef null, i32 noundef 0)
  %546 = icmp slt i64 %411, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %539
  %548 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %148, ptr noundef %545, ptr noundef %543) #15
  br label %551

549:                                              ; preds = %539
  %550 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %148, ptr noundef %543, ptr noundef %545) #15
  br label %551

551:                                              ; preds = %549, %547
  %552 = phi ptr [ %548, %547 ], [ %550, %549 ]
  %553 = tail call ptr @force_operand(ptr noundef %552, ptr noundef %158) #15
  br label %554

554:                                              ; preds = %551, %525, %524
  %555 = phi i1 [ false, %524 ], [ false, %525 ], [ true, %551 ]
  %556 = phi i32 [ 9, %524 ], [ 9, %525 ], [ 0, %551 ]
  %557 = phi ptr [ null, %524 ], [ null, %525 ], [ %553, %551 ]
  br i1 %555, label %598, label %625

558:                                              ; preds = %511
  br i1 %523, label %594, label %559

559:                                              ; preds = %558
  %560 = shl nsw i64 -1, %517
  %561 = or i64 %516, %560
  %562 = tail call ptr @gen_int_mode(i64 noundef %561, i32 noundef %148) #15
  store ptr %562, ptr %13, align 8, !tbaa !65
  %563 = sext i32 %520 to i64
  %564 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %563
  %565 = load i32, ptr %564, align 4, !tbaa !80
  %566 = sext i32 %512 to i64
  %567 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !80
  %569 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %164, i64 %159
  %570 = load i32, ptr %569, align 4, !tbaa !80
  %571 = add i32 %565, %568
  %572 = shl i32 %570, 1
  %573 = add i32 %571, %572
  %574 = sub i32 %186, %573
  %575 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %148, ptr noundef %239, ptr noundef %562, i32 noundef 0, i32 noundef %574)
  %576 = icmp eq ptr %575, null
  br i1 %576, label %594, label %577

577:                                              ; preds = %559
  %578 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %148, ptr noundef nonnull %575, ptr noundef %239) #15
  %579 = tail call ptr @force_operand(ptr noundef %578, ptr noundef null) #15
  %580 = load i32, ptr %12, align 4, !tbaa !80
  %581 = sext i32 %580 to i64
  %582 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %581) #15
  %583 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %579, ptr noundef %582, ptr noundef null, i32 noundef 0)
  %584 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %566) #15
  %585 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %584, ptr noundef null, i32 noundef 0)
  %586 = icmp slt i64 %411, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %577
  %588 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %148, ptr noundef %585, ptr noundef %583) #15
  br label %591

589:                                              ; preds = %577
  %590 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %148, ptr noundef %583, ptr noundef %585) #15
  br label %591

591:                                              ; preds = %589, %587
  %592 = phi ptr [ %588, %587 ], [ %590, %589 ]
  %593 = tail call ptr @force_operand(ptr noundef %592, ptr noundef %158) #15
  br label %594

594:                                              ; preds = %591, %559, %558
  %595 = phi i1 [ false, %558 ], [ false, %559 ], [ true, %591 ]
  %596 = phi i32 [ 9, %558 ], [ 9, %559 ], [ 0, %591 ]
  %597 = phi ptr [ null, %558 ], [ null, %559 ], [ %593, %591 ]
  br i1 %595, label %598, label %625

598:                                              ; preds = %443, %410, %413, %437, %594, %554, %475, %508, %422
  %599 = phi ptr [ %414, %413 ], [ %423, %422 ], [ null, %437 ], [ %509, %508 ], [ %476, %475 ], [ %557, %554 ], [ %597, %594 ], [ %239, %410 ], [ null, %443 ]
  %600 = tail call ptr @get_last_insn() #15
  %601 = icmp eq ptr %600, %240
  br i1 %601, label %625, label %602

602:                                              ; preds = %598
  %603 = load i32, ptr %600, align 8
  %604 = and i32 %603, 65535
  %605 = add nsw i32 %604, -7
  %606 = icmp ult i32 %605, 4
  br i1 %606, label %607, label %615

607:                                              ; preds = %602
  %608 = getelementptr inbounds %struct.rtx_def, ptr %600, i64 1
  %609 = load ptr, ptr %608, align 8, !tbaa !76
  %610 = load i32, ptr %609, align 8
  %611 = and i32 %610, 65535
  %612 = icmp eq i32 %611, 23
  br i1 %612, label %615, label %613

613:                                              ; preds = %607
  %614 = tail call ptr @single_set_2(ptr noundef nonnull %600, ptr noundef nonnull %609) #15
  br label %615

615:                                              ; preds = %602, %607, %613
  %616 = phi ptr [ %614, %613 ], [ null, %602 ], [ %609, %607 ]
  %617 = icmp eq ptr %616, null
  br i1 %617, label %625, label %618

618:                                              ; preds = %615
  %619 = getelementptr inbounds %struct.rtx_def, ptr %616, i64 0, i32 1
  %620 = load ptr, ptr %619, align 8, !tbaa !76
  %621 = icmp eq ptr %620, %599
  br i1 %621, label %622, label %625

622:                                              ; preds = %618
  %623 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %148, ptr noundef %239, ptr noundef %412) #15
  %624 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %600, i32 noundef 4, ptr noundef %623) #15
  br label %625

625:                                              ; preds = %594, %554, %422, %598, %615, %618, %622, %510, %454
  %626 = phi i32 [ 1, %454 ], [ 8, %510 ], [ 0, %622 ], [ 0, %618 ], [ 0, %615 ], [ 0, %598 ], [ 9, %422 ], [ %556, %554 ], [ %596, %594 ]
  %627 = phi ptr [ null, %454 ], [ null, %510 ], [ %599, %622 ], [ %599, %618 ], [ %599, %615 ], [ %599, %598 ], [ null, %422 ], [ %557, %554 ], [ %597, %594 ]
  %628 = phi ptr [ %456, %454 ], [ undef, %510 ], [ undef, %622 ], [ undef, %618 ], [ undef, %615 ], [ undef, %598 ], [ undef, %422 ], [ undef, %554 ], [ undef, %594 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  switch i32 %626, label %1164 [
    i32 0, label %1082
    i32 8, label %1082
    i32 9, label %629
  ]

629:                                              ; preds = %625, %399, %255
  %630 = phi ptr [ null, %255 ], [ %401, %399 ], [ %627, %625 ]
  %631 = phi ptr [ %234, %255 ], [ %234, %399 ], [ %412, %625 ]
  tail call void @delete_insns_since(ptr noundef %240) #15
  br label %1082

632:                                              ; preds = %254, %254
  %633 = icmp ult i8 %161, 9
  %634 = select i1 %218, i1 %633, i1 false
  br i1 %634, label %635, label %713

635:                                              ; preds = %632
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  %636 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %637 = load i64, ptr %636, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #15
  %638 = icmp sgt i64 %637, 0
  br i1 %638, label %639, label %692

639:                                              ; preds = %635
  %640 = tail call i64 @llvm.ctpop.i64(i64 %637), !range !180
  %641 = icmp ult i64 %640, 2
  br i1 %641, label %642, label %658

642:                                              ; preds = %639
  %643 = tail call i32 @floor_log2(i64 noundef %637) #15
  br i1 %169, label %644, label %654

644:                                              ; preds = %642
  %645 = zext nneg i32 %643 to i64
  %646 = shl nsw i64 -1, %645
  %647 = xor i64 %646, -1
  %648 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %647) #15
  %649 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %239, ptr noundef %648, ptr noundef null, i32 noundef 0, i32 noundef 3) #15
  %650 = icmp eq ptr %649, null
  br i1 %650, label %654, label %651

651:                                              ; preds = %644
  %652 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %653 = tail call ptr %652(i32 noundef %2, ptr noundef nonnull %649) #15
  br label %709

654:                                              ; preds = %644, %642
  %655 = sext i32 %643 to i64
  %656 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %655) #15
  %657 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %656, ptr noundef %158, i32 noundef 0)
  br label %709

658:                                              ; preds = %639
  %659 = add nsw i32 %163, -1
  %660 = call fastcc i64 @choose_multiplier(i64 noundef %637, i32 noundef %163, i32 noundef %659, ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %14)
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %663, label %662

662:                                              ; preds = %658
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4398, ptr noundef nonnull @.str.1) #15
  br label %663

663:                                              ; preds = %658, %662
  %664 = load i32, ptr %15, align 4, !tbaa !80
  %665 = icmp slt i32 %664, 32
  %666 = icmp ult i8 %161, 5
  %667 = select i1 %665, i1 %666, i1 false
  br i1 %667, label %668, label %709

668:                                              ; preds = %663
  %669 = sext i32 %659 to i64
  %670 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %669) #15
  %671 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %670, ptr noundef null, i32 noundef 0)
  %672 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %239, ptr noundef %671, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  %673 = load i32, ptr %15, align 4, !tbaa !80
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %674
  %676 = load i32, ptr %675, align 4, !tbaa !80
  %677 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %164, i64 %159, i64 %669
  %678 = load i32, ptr %677, align 4, !tbaa !80
  %679 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %164, i64 %159
  %680 = load i32, ptr %679, align 4, !tbaa !80
  %681 = load ptr, ptr %16, align 8, !tbaa !65
  %682 = add i32 %676, %678
  %683 = shl i32 %680, 1
  %684 = add i32 %682, %683
  %685 = sub i32 %186, %684
  %686 = tail call fastcc ptr @expand_mult_highpart(i32 noundef %148, ptr noundef %672, ptr noundef %681, i32 noundef 1, i32 noundef %685)
  %687 = icmp eq ptr %686, null
  br i1 %687, label %709, label %688

688:                                              ; preds = %668
  %689 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %674) #15
  %690 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef nonnull %686, ptr noundef %689, ptr noundef null, i32 noundef 1)
  %691 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %690, ptr noundef %671, ptr noundef %158, i32 noundef 0, i32 noundef 2) #15
  br label %709

692:                                              ; preds = %635
  %693 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !65
  %694 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %148, ptr noundef %239, ptr noundef %693) #15
  %695 = tail call ptr @force_operand(ptr noundef %694, ptr noundef null) #15
  %696 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %239, ptr noundef %695, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  %697 = add nsw i32 %163, -1
  %698 = sext i32 %697 to i64
  %699 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %698) #15
  %700 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %696, ptr noundef %699, ptr noundef null, i32 noundef 0)
  %701 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %148, ptr noundef %695, ptr noundef %700) #15
  %702 = tail call ptr @force_operand(ptr noundef %701, ptr noundef null) #15
  %703 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %148, ptr noundef %702, ptr noundef %234, ptr noundef null, i32 noundef 0)
  %704 = icmp eq ptr %703, null
  br i1 %704, label %709, label %705

705:                                              ; preds = %692
  %706 = tail call ptr @expand_unop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %700, ptr noundef null, i32 noundef 0) #15
  %707 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %148, ptr noundef nonnull %703, ptr noundef %706) #15
  %708 = tail call ptr @force_operand(ptr noundef %707, ptr noundef %158) #15
  br label %709

709:                                              ; preds = %654, %668, %688, %663, %705, %692, %651
  %710 = phi i1 [ false, %651 ], [ true, %692 ], [ true, %705 ], [ true, %663 ], [ true, %688 ], [ true, %668 ], [ true, %654 ]
  %711 = phi ptr [ null, %651 ], [ null, %692 ], [ %708, %705 ], [ null, %663 ], [ %691, %688 ], [ null, %668 ], [ %657, %654 ]
  %712 = phi ptr [ %653, %651 ], [ undef, %692 ], [ undef, %705 ], [ undef, %663 ], [ undef, %688 ], [ undef, %668 ], [ undef, %654 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  br i1 %710, label %713, label %1164

713:                                              ; preds = %709, %632
  %714 = phi ptr [ %711, %709 ], [ null, %632 ]
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %1082

716:                                              ; preds = %713
  tail call void @delete_insns_since(ptr noundef %240) #15
  br i1 %149, label %722, label %717

717:                                              ; preds = %716
  %718 = load i32, ptr %105, align 8
  %719 = lshr i32 %718, 16
  %720 = and i32 %719, 255
  %721 = icmp eq i32 %720, %148
  br i1 %721, label %724, label %722

722:                                              ; preds = %717, %716
  %723 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %724

724:                                              ; preds = %722, %717
  %725 = phi ptr [ %723, %722 ], [ %105, %717 ]
  %726 = load i32, ptr %725, align 8
  %727 = and i32 %726, 65535
  %728 = icmp eq i32 %727, 37
  br i1 %169, label %729, label %735

729:                                              ; preds = %724
  br i1 %728, label %732, label %730

730:                                              ; preds = %729
  %731 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %732

732:                                              ; preds = %729, %730
  %733 = phi ptr [ %731, %730 ], [ %725, %729 ]
  %734 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %741

735:                                              ; preds = %724
  br i1 %728, label %738, label %736

736:                                              ; preds = %735
  %737 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %738

738:                                              ; preds = %735, %736
  %739 = phi ptr [ %737, %736 ], [ %725, %735 ]
  %740 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %741

741:                                              ; preds = %738, %732
  %742 = phi ptr [ %733, %732 ], [ %739, %738 ]
  %743 = phi ptr [ %733, %732 ], [ %740, %738 ]
  %744 = phi ptr [ %734, %732 ], [ %739, %738 ]
  %745 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %239, ptr noundef %234, ptr noundef %744, ptr noundef %743, i32 noundef 0) #15
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %756, label %747

747:                                              ; preds = %741
  %748 = tail call ptr @gen_label_rtx() #15
  %749 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %743, ptr noundef %749, i32 noundef 81, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %748, i32 noundef -1) #15
  %750 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %239, ptr noundef %234, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  %751 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %750, ptr noundef %751, i32 noundef 82, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %748, i32 noundef -1) #15
  %752 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_dec(ptr noundef %744, ptr noundef %752)
  tail call void @expand_inc(ptr noundef %743, ptr noundef %234)
  %753 = tail call ptr @emit_label(ptr noundef %748) #15
  %754 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %755 = tail call ptr %754(i32 noundef %2, ptr noundef %742) #15
  br label %1164

756:                                              ; preds = %741
  %757 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %758 = tail call ptr @copy_to_mode_reg(i32 noundef %148, ptr noundef %239) #15
  %759 = tail call ptr @gen_label_rtx() #15
  %760 = tail call ptr @gen_label_rtx() #15
  %761 = tail call ptr @gen_label_rtx() #15
  %762 = tail call ptr @gen_label_rtx() #15
  %763 = tail call ptr @gen_label_rtx() #15
  %764 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %234, ptr noundef %764, i32 noundef 85, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %760, i32 noundef -1) #15
  %765 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %758, ptr noundef %765, i32 noundef 85, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %759, i32 noundef -1) #15
  %766 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %758, ptr noundef %234, ptr noundef %757, i32 noundef 0, i32 noundef 3) #15
  %767 = icmp eq ptr %766, %757
  br i1 %767, label %770, label %768

768:                                              ; preds = %756
  %769 = tail call ptr @emit_move_insn(ptr noundef %757, ptr noundef %766) #15
  br label %770

770:                                              ; preds = %768, %756
  %771 = tail call ptr @gen_jump(ptr noundef %763) #15
  %772 = tail call ptr @emit_jump_insn(ptr noundef %771) #15
  %773 = tail call ptr @emit_barrier() #15
  %774 = tail call ptr @emit_label(ptr noundef %759) #15
  %775 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %758, ptr noundef %775)
  %776 = tail call ptr @gen_jump(ptr noundef %762) #15
  %777 = tail call ptr @emit_jump_insn(ptr noundef %776) #15
  %778 = tail call ptr @emit_barrier() #15
  %779 = tail call ptr @emit_label(ptr noundef %760) #15
  %780 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %758, ptr noundef %780, i32 noundef 83, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %761, i32 noundef -1) #15
  %781 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %758, ptr noundef %234, ptr noundef %757, i32 noundef 0, i32 noundef 3) #15
  %782 = icmp eq ptr %781, %757
  br i1 %782, label %785, label %783

783:                                              ; preds = %770
  %784 = tail call ptr @emit_move_insn(ptr noundef %757, ptr noundef %781) #15
  br label %785

785:                                              ; preds = %783, %770
  %786 = tail call ptr @gen_jump(ptr noundef %763) #15
  %787 = tail call ptr @emit_jump_insn(ptr noundef %786) #15
  %788 = tail call ptr @emit_barrier() #15
  %789 = tail call ptr @emit_label(ptr noundef %761) #15
  %790 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_dec(ptr noundef %758, ptr noundef %790)
  %791 = tail call ptr @emit_label(ptr noundef %762) #15
  %792 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %758, ptr noundef %234, ptr noundef %757, i32 noundef 0, i32 noundef 3) #15
  %793 = icmp eq ptr %792, %757
  br i1 %793, label %796, label %794

794:                                              ; preds = %785
  %795 = tail call ptr @emit_move_insn(ptr noundef %757, ptr noundef %792) #15
  br label %796

796:                                              ; preds = %794, %785
  %797 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_dec(ptr noundef %757, ptr noundef %797)
  %798 = tail call ptr @emit_label(ptr noundef %763) #15
  br label %1082

799:                                              ; preds = %254, %254
  br i1 %52, label %884, label %800

800:                                              ; preds = %799
  br i1 %218, label %801, label %826

801:                                              ; preds = %800
  %802 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %803 = load i64, ptr %802, align 8, !tbaa !76
  %804 = tail call i64 @llvm.ctpop.i64(i64 %803), !range !164
  %805 = icmp ult i64 %804, 2
  br i1 %805, label %806, label %826

806:                                              ; preds = %801
  %807 = add nsw i64 %803, -1
  %808 = tail call i32 @floor_log2(i64 noundef %803) #15
  %809 = sext i32 %808 to i64
  %810 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %809) #15
  %811 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %810, ptr noundef %158, i32 noundef 1)
  %812 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %807) #15
  %813 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %239, ptr noundef %812, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %814 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %815 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %816 = tail call ptr @emit_store_flag(ptr noundef %814, i32 noundef 80, ptr noundef %813, ptr noundef %815, i32 noundef %148, i32 noundef 1, i32 noundef 1)
  %817 = icmp eq ptr %816, null
  br i1 %817, label %818, label %823

818:                                              ; preds = %806
  %819 = tail call ptr @gen_label_rtx() #15
  %820 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %813, ptr noundef %820, i32 noundef 81, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %819, i32 noundef -1) #15
  %821 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %811, ptr noundef %821)
  %822 = tail call ptr @emit_label(ptr noundef %819) #15
  br label %1082

823:                                              ; preds = %806
  %824 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %148, ptr noundef %811, ptr noundef nonnull %816) #15
  %825 = tail call ptr @force_operand(ptr noundef %824, ptr noundef %158) #15
  br label %1082

826:                                              ; preds = %801, %800
  br i1 %149, label %832, label %827

827:                                              ; preds = %826
  %828 = load i32, ptr %105, align 8
  %829 = lshr i32 %828, 16
  %830 = and i32 %829, 255
  %831 = icmp eq i32 %830, %148
  br i1 %831, label %834, label %832

832:                                              ; preds = %827, %826
  %833 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %834

834:                                              ; preds = %832, %827
  %835 = phi ptr [ %833, %832 ], [ %105, %827 ]
  %836 = load i32, ptr %835, align 8
  %837 = and i32 %836, 65535
  %838 = icmp eq i32 %837, 37
  br i1 %169, label %839, label %845

839:                                              ; preds = %834
  br i1 %838, label %842, label %840

840:                                              ; preds = %839
  %841 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %842

842:                                              ; preds = %839, %840
  %843 = phi ptr [ %841, %840 ], [ %835, %839 ]
  %844 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %851

845:                                              ; preds = %834
  br i1 %838, label %848, label %846

846:                                              ; preds = %845
  %847 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %848

848:                                              ; preds = %845, %846
  %849 = phi ptr [ %847, %846 ], [ %835, %845 ]
  %850 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %851

851:                                              ; preds = %848, %842
  %852 = phi ptr [ %843, %842 ], [ %849, %848 ]
  %853 = phi ptr [ %843, %842 ], [ %850, %848 ]
  %854 = phi ptr [ %844, %842 ], [ %849, %848 ]
  %855 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), ptr noundef %239, ptr noundef %234, ptr noundef %854, ptr noundef %853, i32 noundef 1) #15
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %864, label %857

857:                                              ; preds = %851
  %858 = tail call ptr @gen_label_rtx() #15
  %859 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %853, ptr noundef %859, i32 noundef 81, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %858, i32 noundef -1) #15
  %860 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %854, ptr noundef %860)
  tail call void @expand_dec(ptr noundef %853, ptr noundef %234)
  %861 = tail call ptr @emit_label(ptr noundef %858) #15
  %862 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %863 = tail call ptr %862(i32 noundef %2, ptr noundef %852) #15
  br label %1164

864:                                              ; preds = %851
  %865 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %866 = tail call ptr @copy_to_mode_reg(i32 noundef %148, ptr noundef %239) #15
  %867 = tail call ptr @gen_label_rtx() #15
  %868 = tail call ptr @gen_label_rtx() #15
  %869 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %866, ptr noundef %869, i32 noundef 80, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %867, i32 noundef -1) #15
  %870 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %871 = tail call ptr @emit_move_insn(ptr noundef %865, ptr noundef %870) #15
  %872 = tail call ptr @gen_jump(ptr noundef %868) #15
  %873 = tail call ptr @emit_jump_insn(ptr noundef %872) #15
  %874 = tail call ptr @emit_barrier() #15
  %875 = tail call ptr @emit_label(ptr noundef %867) #15
  %876 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_dec(ptr noundef %866, ptr noundef %876)
  %877 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef %866, ptr noundef %234, ptr noundef %865, i32 noundef 1, i32 noundef 3) #15
  %878 = icmp eq ptr %877, %865
  br i1 %878, label %881, label %879

879:                                              ; preds = %864
  %880 = tail call ptr @emit_move_insn(ptr noundef %865, ptr noundef %877) #15
  br label %881

881:                                              ; preds = %879, %864
  %882 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %865, ptr noundef %882)
  %883 = tail call ptr @emit_label(ptr noundef %868) #15
  br label %1082

884:                                              ; preds = %799
  br i1 %218, label %885, label %912

885:                                              ; preds = %884
  %886 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %887 = load i64, ptr %886, align 8, !tbaa !76
  %888 = tail call i64 @llvm.ctpop.i64(i64 %887), !range !164
  %889 = icmp ult i64 %888, 2
  %890 = icmp sgt i64 %887, -1
  %891 = and i1 %890, %889
  br i1 %891, label %892, label %912

892:                                              ; preds = %885
  %893 = add nsw i64 %887, -1
  %894 = tail call i32 @floor_log2(i64 noundef %887) #15
  %895 = sext i32 %894 to i64
  %896 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %895) #15
  %897 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %896, ptr noundef %158, i32 noundef 0)
  %898 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %893) #15
  %899 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %239, ptr noundef %898, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %900 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %901 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %902 = tail call ptr @emit_store_flag(ptr noundef %900, i32 noundef 80, ptr noundef %899, ptr noundef %901, i32 noundef %148, i32 noundef 1, i32 noundef 1)
  %903 = icmp eq ptr %902, null
  br i1 %903, label %904, label %909

904:                                              ; preds = %892
  %905 = tail call ptr @gen_label_rtx() #15
  %906 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %899, ptr noundef %906, i32 noundef 81, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %905, i32 noundef -1) #15
  %907 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %897, ptr noundef %907)
  %908 = tail call ptr @emit_label(ptr noundef %905) #15
  br label %1082

909:                                              ; preds = %892
  %910 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %148, ptr noundef %897, ptr noundef nonnull %902) #15
  %911 = tail call ptr @force_operand(ptr noundef %910, ptr noundef %158) #15
  br label %1082

912:                                              ; preds = %885, %884
  br i1 %149, label %918, label %913

913:                                              ; preds = %912
  %914 = load i32, ptr %105, align 8
  %915 = lshr i32 %914, 16
  %916 = and i32 %915, 255
  %917 = icmp eq i32 %916, %148
  br i1 %917, label %920, label %918

918:                                              ; preds = %913, %912
  %919 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %920

920:                                              ; preds = %918, %913
  %921 = phi ptr [ %919, %918 ], [ %105, %913 ]
  %922 = load i32, ptr %921, align 8
  %923 = and i32 %922, 65535
  %924 = icmp eq i32 %923, 37
  br i1 %169, label %925, label %931

925:                                              ; preds = %920
  br i1 %924, label %928, label %926

926:                                              ; preds = %925
  %927 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %928

928:                                              ; preds = %925, %926
  %929 = phi ptr [ %927, %926 ], [ %921, %925 ]
  %930 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %937

931:                                              ; preds = %920
  br i1 %924, label %934, label %932

932:                                              ; preds = %931
  %933 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %934

934:                                              ; preds = %931, %932
  %935 = phi ptr [ %933, %932 ], [ %921, %931 ]
  %936 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br label %937

937:                                              ; preds = %934, %928
  %938 = phi ptr [ %929, %928 ], [ %935, %934 ]
  %939 = phi ptr [ %929, %928 ], [ %936, %934 ]
  %940 = phi ptr [ %930, %928 ], [ %935, %934 ]
  %941 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %239, ptr noundef %234, ptr noundef %940, ptr noundef %939, i32 noundef 0) #15
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %952, label %943

943:                                              ; preds = %937
  %944 = tail call ptr @gen_label_rtx() #15
  %945 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %939, ptr noundef %945, i32 noundef 81, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %944, i32 noundef -1) #15
  %946 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %239, ptr noundef %234, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  %947 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %946, ptr noundef %947, i32 noundef 85, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %944, i32 noundef -1) #15
  %948 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %940, ptr noundef %948)
  tail call void @expand_dec(ptr noundef %939, ptr noundef %234)
  %949 = tail call ptr @emit_label(ptr noundef %944) #15
  %950 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %951 = tail call ptr %950(i32 noundef %2, ptr noundef %938) #15
  br label %1164

952:                                              ; preds = %937
  %953 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %954 = tail call ptr @copy_to_mode_reg(i32 noundef %148, ptr noundef %239) #15
  %955 = tail call ptr @gen_label_rtx() #15
  %956 = tail call ptr @gen_label_rtx() #15
  %957 = tail call ptr @gen_label_rtx() #15
  %958 = tail call ptr @gen_label_rtx() #15
  %959 = tail call ptr @gen_label_rtx() #15
  %960 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %234, ptr noundef %960, i32 noundef 85, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %956, i32 noundef -1) #15
  %961 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %954, ptr noundef %961, i32 noundef 83, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %955, i32 noundef -1) #15
  %962 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %954, ptr noundef %234, ptr noundef %953, i32 noundef 0, i32 noundef 3) #15
  %963 = icmp eq ptr %962, %953
  br i1 %963, label %966, label %964

964:                                              ; preds = %952
  %965 = tail call ptr @emit_move_insn(ptr noundef %953, ptr noundef %962) #15
  br label %966

966:                                              ; preds = %964, %952
  %967 = tail call ptr @gen_jump(ptr noundef %959) #15
  %968 = tail call ptr @emit_jump_insn(ptr noundef %967) #15
  %969 = tail call ptr @emit_barrier() #15
  %970 = tail call ptr @emit_label(ptr noundef %955) #15
  %971 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_dec(ptr noundef %954, ptr noundef %971)
  %972 = tail call ptr @gen_jump(ptr noundef %958) #15
  %973 = tail call ptr @emit_jump_insn(ptr noundef %972) #15
  %974 = tail call ptr @emit_barrier() #15
  %975 = tail call ptr @emit_label(ptr noundef %956) #15
  %976 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %954, ptr noundef %976, i32 noundef 85, i32 noundef 0, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %957, i32 noundef -1) #15
  %977 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %954, ptr noundef %234, ptr noundef %953, i32 noundef 0, i32 noundef 3) #15
  %978 = icmp eq ptr %977, %953
  br i1 %978, label %981, label %979

979:                                              ; preds = %966
  %980 = tail call ptr @emit_move_insn(ptr noundef %953, ptr noundef %977) #15
  br label %981

981:                                              ; preds = %979, %966
  %982 = tail call ptr @gen_jump(ptr noundef %959) #15
  %983 = tail call ptr @emit_jump_insn(ptr noundef %982) #15
  %984 = tail call ptr @emit_barrier() #15
  %985 = tail call ptr @emit_label(ptr noundef %957) #15
  %986 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %954, ptr noundef %986)
  %987 = tail call ptr @emit_label(ptr noundef %958) #15
  %988 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %954, ptr noundef %234, ptr noundef %953, i32 noundef 0, i32 noundef 3) #15
  %989 = icmp eq ptr %988, %953
  br i1 %989, label %992, label %990

990:                                              ; preds = %981
  %991 = tail call ptr @emit_move_insn(ptr noundef %953, ptr noundef %988) #15
  br label %992

992:                                              ; preds = %990, %981
  %993 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %953, ptr noundef %993)
  %994 = tail call ptr @emit_label(ptr noundef %959) #15
  br label %1082

995:                                              ; preds = %254
  %996 = icmp ult i8 %161, 9
  %997 = select i1 %218, i1 %996, i1 false
  br i1 %997, label %998, label %1082

998:                                              ; preds = %995
  %999 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %1000 = load i64, ptr %999, align 8, !tbaa !76
  %1001 = sub nsw i64 0, %1000
  %1002 = and i64 %1000, %1001
  %1003 = tail call i32 @floor_log2(i64 noundef %1002) #15
  %1004 = zext nneg i32 %1003 to i64
  %1005 = ashr i64 %1000, %1004
  %1006 = icmp eq i8 %161, 8
  %1007 = zext nneg i32 %163 to i64
  %1008 = shl nsw i64 -1, %1007
  %1009 = xor i64 %1008, -1
  %1010 = select i1 %1006, i64 -1, i64 %1009
  %1011 = icmp eq i8 %161, 0
  br i1 %1011, label %1021, label %1012

1012:                                             ; preds = %998, %1012
  %1013 = phi i32 [ %1019, %1012 ], [ 3, %998 ]
  %1014 = phi i64 [ %1018, %1012 ], [ %1005, %998 ]
  %1015 = mul i64 %1014, %1005
  %1016 = sub i64 2, %1015
  %1017 = mul i64 %1016, %1014
  %1018 = and i64 %1017, %1010
  %1019 = shl nsw i32 %1013, 1
  %1020 = icmp slt i32 %1019, %163
  br i1 %1020, label %1012, label %1021, !llvm.loop !181

1021:                                             ; preds = %1012, %998
  %1022 = phi i64 [ %1005, %998 ], [ %1018, %1012 ]
  %1023 = sext i32 %1003 to i64
  %1024 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %1023) #15
  %1025 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %239, ptr noundef %1024, ptr noundef null, i32 noundef %6)
  %1026 = tail call ptr @gen_int_mode(i64 noundef %1022, i32 noundef %148) #15
  %1027 = tail call ptr @expand_mult(i32 noundef %148, ptr noundef %1025, ptr noundef %1026, ptr noundef null, i32 noundef 1)
  %1028 = tail call ptr @get_last_insn() #15
  %1029 = select i1 %52, i32 55, i32 59
  %1030 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %1029, i32 noundef %148, ptr noundef %239, ptr noundef %234) #15
  %1031 = tail call ptr @set_unique_reg_note(ptr noundef %1028, i32 noundef 4, ptr noundef %1030) #15
  br label %1082

1032:                                             ; preds = %254, %254
  %1033 = tail call ptr @gen_label_rtx() #15
  %1034 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %1035 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  br i1 %52, label %1050, label %1036

1036:                                             ; preds = %1032
  %1037 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), ptr noundef %239, ptr noundef %234, ptr noundef %1034, ptr noundef %1035, i32 noundef 1) #15
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1043

1039:                                             ; preds = %1036
  %1040 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef %239, ptr noundef %234, ptr noundef %1034, i32 noundef 1, i32 noundef 3) #15
  %1041 = tail call ptr @expand_mult(i32 noundef %148, ptr noundef %1040, ptr noundef %234, ptr noundef null, i32 noundef 1)
  %1042 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %239, ptr noundef %1041, ptr noundef %1035, i32 noundef 1, i32 noundef 3) #15
  br label %1043

1043:                                             ; preds = %1039, %1036
  %1044 = phi ptr [ %1042, %1039 ], [ %1035, %1036 ]
  %1045 = phi ptr [ %1040, %1039 ], [ %1034, %1036 ]
  %1046 = tail call ptr @plus_constant(ptr noundef %234, i64 noundef -1) #15
  %1047 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #15
  %1048 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %1046, ptr noundef %1047, ptr noundef null, i32 noundef 1)
  tail call void @do_compare_rtx_and_jump(ptr noundef %1044, ptr noundef %1048, i32 noundef 88, i32 noundef 1, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %1033, i32 noundef -1) #15
  %1049 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  tail call void @expand_inc(ptr noundef %1045, ptr noundef %1049)
  tail call void @expand_dec(ptr noundef %1044, ptr noundef %234)
  br label %1074

1050:                                             ; preds = %1032
  %1051 = tail call i32 @expand_twoval_binop(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr noundef %239, ptr noundef %234, ptr noundef %1034, ptr noundef %1035, i32 noundef 0) #15
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1057

1053:                                             ; preds = %1050
  %1054 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %239, ptr noundef %234, ptr noundef %1034, i32 noundef 0, i32 noundef 3) #15
  %1055 = tail call ptr @expand_mult(i32 noundef %148, ptr noundef %1054, ptr noundef %234, ptr noundef null, i32 noundef 0)
  %1056 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %239, ptr noundef %1055, ptr noundef %1035, i32 noundef 0, i32 noundef 3) #15
  br label %1057

1057:                                             ; preds = %1053, %1050
  %1058 = phi ptr [ %1056, %1053 ], [ %1035, %1050 ]
  %1059 = phi ptr [ %1054, %1053 ], [ %1034, %1050 ]
  %1060 = tail call ptr @expand_abs(i32 noundef %148, ptr noundef %1058, ptr noundef null, i32 noundef 1, i32 noundef 0) #15
  %1061 = tail call ptr @expand_abs(i32 noundef %148, ptr noundef %234, ptr noundef null, i32 noundef 1, i32 noundef 0) #15
  %1062 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #15
  %1063 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %148, ptr noundef %1060, ptr noundef %1062, ptr noundef null, i32 noundef 1)
  tail call void @do_compare_rtx_and_jump(ptr noundef %1063, ptr noundef %1061, i32 noundef 89, i32 noundef 1, i32 noundef %148, ptr noundef null, ptr noundef null, ptr noundef %1033, i32 noundef -1) #15
  %1064 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %239, ptr noundef %234, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  %1065 = add nsw i32 %163, -1
  %1066 = sext i32 %1065 to i64
  %1067 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %1066) #15
  %1068 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %148, ptr noundef %1064, ptr noundef %1067, ptr noundef null, i32 noundef 0)
  %1069 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %1070 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1068, ptr noundef %1069, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  %1071 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %1070, ptr noundef %1068, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  tail call void @expand_inc(ptr noundef %1059, ptr noundef %1071)
  %1072 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1068, ptr noundef %234, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  %1073 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %1072, ptr noundef %1068, ptr noundef null, i32 noundef 0, i32 noundef 2) #15
  tail call void @expand_dec(ptr noundef %1058, ptr noundef %1073)
  br label %1074

1074:                                             ; preds = %1057, %1043
  %1075 = phi ptr [ %1044, %1043 ], [ %1058, %1057 ]
  %1076 = phi ptr [ %1045, %1043 ], [ %1059, %1057 ]
  %1077 = tail call ptr @emit_label(ptr noundef %1033) #15
  %1078 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %1079 = select i1 %169, ptr %1075, ptr %1076
  %1080 = tail call ptr %1078(i32 noundef %2, ptr noundef %1079) #15
  br label %1164

1081:                                             ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4856, ptr noundef nonnull @.str.1) #15
  br label %1082

1082:                                             ; preds = %625, %399, %904, %909, %818, %823, %399, %625, %629, %796, %1081, %713, %992, %881, %1021, %995, %250
  %1083 = phi ptr [ null, %1081 ], [ %1027, %1021 ], [ null, %995 ], [ %865, %881 ], [ %953, %992 ], [ %714, %713 ], [ %757, %796 ], [ %630, %629 ], [ %401, %399 ], [ %627, %625 ], [ null, %250 ], [ %811, %818 ], [ %825, %823 ], [ %897, %904 ], [ %911, %909 ], [ %401, %399 ], [ %627, %625 ]
  %1084 = phi ptr [ %105, %1081 ], [ %105, %1021 ], [ %105, %995 ], [ %835, %881 ], [ %921, %992 ], [ %105, %713 ], [ %725, %796 ], [ %105, %629 ], [ %105, %399 ], [ %105, %625 ], [ %105, %250 ], [ %105, %818 ], [ %105, %823 ], [ %105, %904 ], [ %105, %909 ], [ %105, %399 ], [ %105, %625 ]
  %1085 = phi ptr [ %234, %1081 ], [ %234, %1021 ], [ %234, %995 ], [ %234, %881 ], [ %234, %992 ], [ %234, %713 ], [ %234, %796 ], [ %631, %629 ], [ %234, %399 ], [ %412, %625 ], [ %234, %250 ], [ %234, %818 ], [ %234, %823 ], [ %234, %904 ], [ %234, %909 ], [ %234, %399 ], [ %412, %625 ]
  %1086 = icmp eq ptr %1083, null
  br i1 %1086, label %1087, label %1134

1087:                                             ; preds = %1082
  %1088 = icmp eq ptr %1084, null
  br i1 %1088, label %1095, label %1089

1089:                                             ; preds = %1087
  %1090 = load i32, ptr %1084, align 8
  %1091 = lshr i32 %1090, 16
  %1092 = and i32 %1091, 255
  %1093 = icmp eq i32 %1092, %148
  %1094 = select i1 %1093, ptr %1084, ptr null
  br label %1095

1095:                                             ; preds = %1089, %1087
  %1096 = phi ptr [ %1094, %1089 ], [ null, %1087 ]
  br i1 %169, label %1097, label %1116

1097:                                             ; preds = %1095
  %1098 = sext i32 %148 to i64
  %1099 = getelementptr inbounds %struct.optab_d, ptr %114, i64 0, i32 4, i64 %1098
  %1100 = load i32, ptr %1099, align 4, !tbaa !115
  %1101 = icmp eq i32 %1100, 2956
  %1102 = select i1 %1101, i32 2, i32 0
  %1103 = tail call ptr @sign_expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr noundef %239, ptr noundef %1085, ptr noundef %1096, i32 noundef %6, i32 noundef %1102) #15
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1105, label %1110

1105:                                             ; preds = %1097
  %1106 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %1107 = tail call i32 @expand_twoval_binop(ptr noundef nonnull %113, ptr noundef %239, ptr noundef %1085, ptr noundef null, ptr noundef %1106, i32 noundef %6) #15
  %1108 = icmp eq i32 %1107, 0
  %1109 = select i1 %1108, ptr null, ptr %1106
  br label %1110

1110:                                             ; preds = %1105, %1097
  %1111 = phi ptr [ %1103, %1097 ], [ %1109, %1105 ]
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %1116, label %1113

1113:                                             ; preds = %1110
  %1114 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %1115 = tail call ptr %1114(i32 noundef %2, ptr noundef nonnull %1111) #15
  br label %1164

1116:                                             ; preds = %1110, %1095
  %1117 = phi ptr [ null, %1110 ], [ %1096, %1095 ]
  %1118 = sext i32 %148 to i64
  %1119 = getelementptr inbounds %struct.optab_d, ptr %114, i64 0, i32 4, i64 %1118
  %1120 = load i32, ptr %1119, align 4, !tbaa !115
  %1121 = icmp eq i32 %1120, 2956
  %1122 = select i1 %1121, i32 2, i32 0
  %1123 = tail call ptr @sign_expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %239, ptr noundef %1085, ptr noundef %1117, i32 noundef %6, i32 noundef %1122) #15
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1125, label %1134

1125:                                             ; preds = %1116
  %1126 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %1127 = tail call i32 @expand_twoval_binop(ptr noundef nonnull %113, ptr noundef %239, ptr noundef %1085, ptr noundef %1126, ptr noundef null, i32 noundef %6) #15
  %1128 = icmp eq i32 %1127, 0
  %1129 = or i32 %1127, %0
  %1130 = icmp eq i32 %1129, 0
  %1131 = select i1 %1128, ptr null, ptr %1126
  br i1 %1130, label %1132, label %1134

1132:                                             ; preds = %1125
  %1133 = tail call ptr @sign_expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr noundef %239, ptr noundef %1085, ptr noundef %1096, i32 noundef %6, i32 noundef 3) #15
  br label %1134

1134:                                             ; preds = %1125, %1116, %1132, %1082
  %1135 = phi ptr [ %1131, %1125 ], [ %1133, %1132 ], [ %1123, %1116 ], [ %1083, %1082 ]
  %1136 = phi ptr [ %1096, %1125 ], [ %1096, %1132 ], [ %1096, %1116 ], [ %1084, %1082 ]
  br i1 %169, label %1137, label %1160

1137:                                             ; preds = %1134
  %1138 = icmp eq ptr %1136, null
  br i1 %1138, label %1145, label %1139

1139:                                             ; preds = %1137
  %1140 = load i32, ptr %1136, align 8
  %1141 = lshr i32 %1140, 16
  %1142 = and i32 %1141, 255
  %1143 = icmp eq i32 %1142, %148
  %1144 = select i1 %1143, ptr %1136, ptr null
  br label %1145

1145:                                             ; preds = %1139, %1137
  %1146 = phi ptr [ %1144, %1139 ], [ null, %1137 ]
  %1147 = icmp eq ptr %1135, null
  br i1 %1147, label %1148, label %1157

1148:                                             ; preds = %1145
  %1149 = tail call ptr @sign_expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr noundef %239, ptr noundef %1085, ptr noundef %1146, i32 noundef %6, i32 noundef 3) #15
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1151, label %1160

1151:                                             ; preds = %1148
  %1152 = tail call ptr @gen_reg_rtx(i32 noundef %148) #15
  %1153 = select i1 %52, i32 58, i32 60
  %1154 = tail call zeroext i8 @expand_twoval_binop_libfunc(ptr noundef nonnull %113, ptr noundef %239, ptr noundef %1085, ptr noundef null, ptr noundef %1152, i32 noundef %1153) #15
  %1155 = icmp eq i8 %1154, 0
  %1156 = select i1 %1155, ptr null, ptr %1152
  br label %1160

1157:                                             ; preds = %1145
  %1158 = tail call ptr @expand_mult(i32 noundef %148, ptr noundef nonnull %1135, ptr noundef %1085, ptr noundef null, i32 noundef %6)
  %1159 = tail call ptr @expand_binop(i32 noundef %148, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %239, ptr noundef %1158, ptr noundef %1146, i32 noundef %6, i32 noundef 3) #15
  br label %1160

1160:                                             ; preds = %1151, %1157, %1148, %1134
  %1161 = phi ptr [ %1149, %1148 ], [ %1159, %1157 ], [ %1135, %1134 ], [ %1156, %1151 ]
  %1162 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %1163 = tail call ptr %1162(i32 noundef %2, ptr noundef %1161) #15
  br label %1164

1164:                                             ; preds = %625, %399, %709, %1160, %1113, %1074, %943, %857, %747, %68, %58, %47
  %1165 = phi ptr [ %50, %47 ], [ %1115, %1113 ], [ %1163, %1160 ], [ %1080, %1074 ], [ %863, %857 ], [ %951, %943 ], [ %755, %747 ], [ %712, %709 ], [ %59, %58 ], [ %71, %68 ], [ %402, %399 ], [ %628, %625 ]
  ret ptr %1165
}

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @optab_libfunc(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @emit_store_flag_force(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 !prof !182 {
  %8 = tail call ptr @emit_store_flag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %151, !prof !183

10:                                               ; preds = %7
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load i32, ptr @word_mode, align 4, !tbaa !80
  %14 = tail call ptr @gen_reg_rtx(i32 noundef %13) #15
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %0, %10 ], [ %14, %12 ]
  %17 = icmp eq i32 %6, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = sext i32 %6 to i64
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #15
  br label %23

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %22, %21 ]
  %25 = icmp eq i32 %1, 80
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = zext i32 %4 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !76
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, ptr %16, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  %35 = icmp eq ptr %16, %2
  %36 = select i1 %34, i1 %35, i1 false
  %37 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %38 = icmp eq ptr %37, %3
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = tail call ptr @gen_label_rtx() #15
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %16, ptr noundef %42, i32 noundef 81, i32 noundef %5, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef %41, i32 noundef -1) #15
  %43 = tail call ptr @emit_move_insn(ptr noundef nonnull %16, ptr noundef %24) #15
  br label %147

44:                                               ; preds = %31, %26, %23
  %45 = load i32, ptr %16, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 37
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %16, ptr noundef %2) #15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %16, ptr noundef %3) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51, %48, %44
  %55 = load i32, ptr %16, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = tail call ptr @gen_reg_rtx(i32 noundef %57) #15
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi ptr [ %58, %54 ], [ %16, %51 ]
  %61 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %62 = tail call i32 @can_compare_p(i32 noundef %1, i32 noundef %4, i32 noundef 0) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %140

64:                                               ; preds = %59
  %65 = zext i32 %4 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !76
  switch i8 %67, label %127 [
    i8 8, label %71
    i8 9, label %71
    i8 11, label %71
    i8 17, label %68
  ]

68:                                               ; preds = %64
  %69 = and i32 %1, -2
  %70 = icmp eq i32 %69, 90
  br i1 %70, label %124, label %74

71:                                               ; preds = %64, %64, %64
  %72 = and i32 %1, -2
  %73 = icmp eq i32 %72, 90
  br i1 %73, label %124, label %74

74:                                               ; preds = %68, %71
  switch i8 %67, label %94 [
    i8 8, label %75
    i8 9, label %75
    i8 11, label %75
    i8 17, label %75
  ]

75:                                               ; preds = %74, %74, %74, %74
  %76 = and i8 %67, -2
  %77 = icmp eq i8 %76, 8
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %65
  %80 = load i8, ptr %79, align 1, !tbaa !76
  %81 = zext i8 %80 to i32
  br label %82

82:                                               ; preds = %75, %78
  %83 = phi i32 [ %81, %78 ], [ %4, %75 ]
  %84 = add i32 %83, -38
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !65
  %88 = getelementptr inbounds %struct.real_format, ptr %87, i64 0, i32 11
  %89 = load i8, ptr %88, align 2, !tbaa !184
  %90 = icmp eq i8 %89, 0
  %91 = load i32, ptr @flag_finite_math_only, align 4
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %90, i1 true, i1 %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %74, %82
  switch i32 %1, label %95 [
    i32 97, label %124
    i32 92, label %124
  ]

95:                                               ; preds = %94, %82
  %96 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !80
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %95
  switch i8 %67, label %121 [
    i8 8, label %99
    i8 9, label %99
    i8 11, label %99
    i8 17, label %99
  ]

99:                                               ; preds = %98, %98, %98, %98
  %100 = and i8 %67, -2
  %101 = icmp eq i8 %100, 8
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %65
  %104 = load i8, ptr %103, align 1, !tbaa !76
  %105 = zext i8 %104 to i32
  br label %106

106:                                              ; preds = %99, %102
  %107 = phi i32 [ %105, %102 ], [ %4, %99 ]
  %108 = add i32 %107, -38
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !65
  %112 = getelementptr inbounds %struct.real_format, ptr %111, i64 0, i32 11
  %113 = load i8, ptr %112, align 2, !tbaa !184
  %114 = icmp eq i8 %113, 0
  %115 = load i32, ptr @flag_finite_math_only, align 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %114, i1 true, i1 %116
  %118 = and i32 %1, -2
  %119 = icmp eq i32 %118, 80
  %120 = and i1 %119, %117
  br i1 %120, label %124, label %140

121:                                              ; preds = %98, %95
  %122 = and i32 %1, -2
  %123 = icmp eq i32 %122, 80
  br i1 %123, label %124, label %140

124:                                              ; preds = %121, %94, %68, %71, %106, %94
  switch i8 %67, label %127 [
    i8 8, label %125
    i8 9, label %125
    i8 11, label %125
    i8 17, label %125
  ]

125:                                              ; preds = %124, %124, %124, %124
  %126 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %1) #15
  br label %129

127:                                              ; preds = %64, %124
  %128 = tail call i32 @reverse_condition(i32 noundef %1) #15
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = tail call i32 @can_compare_p(i32 noundef %130, i32 noundef %4, i32 noundef 0) #15
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = icmp eq i32 %1, 91
  br i1 %134, label %135, label %140

135:                                              ; preds = %133
  %136 = tail call i32 @can_compare_p(i32 noundef 91, i32 noundef %4, i32 noundef 0) #15
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135, %129
  %139 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  br label %140

140:                                              ; preds = %106, %133, %135, %138, %121, %59
  %141 = phi i32 [ %1, %59 ], [ %1, %121 ], [ %130, %138 ], [ 91, %135 ], [ %1, %133 ], [ %1, %106 ]
  %142 = phi ptr [ %24, %59 ], [ %24, %121 ], [ %139, %138 ], [ %24, %135 ], [ %24, %133 ], [ %24, %106 ]
  %143 = phi ptr [ %61, %59 ], [ %61, %121 ], [ %24, %138 ], [ %61, %135 ], [ %61, %133 ], [ %61, %106 ]
  %144 = tail call ptr @emit_move_insn(ptr noundef %60, ptr noundef %142) #15
  %145 = tail call ptr @gen_label_rtx() #15
  tail call void @do_compare_rtx_and_jump(ptr noundef %2, ptr noundef %3, i32 noundef %141, i32 noundef %5, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef %145, i32 noundef -1) #15
  %146 = tail call ptr @emit_move_insn(ptr noundef %60, ptr noundef %143) #15
  br label %147

147:                                              ; preds = %40, %140
  %148 = phi ptr [ %145, %140 ], [ %41, %40 ]
  %149 = phi ptr [ %60, %140 ], [ %16, %40 ]
  %150 = tail call ptr @emit_label(ptr noundef %148) #15
  br label %151

151:                                              ; preds = %147, %7
  %152 = phi ptr [ %8, %7 ], [ %149, %147 ]
  ret ptr %152
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @choose_multiplier(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #12 !prof !64 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  %13 = add i64 %0, -1
  %14 = tail call i32 @floor_log2(i64 noundef %13) #15
  %15 = add i32 %14, 1
  %16 = icmp slt i32 %14, %1
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3296, ptr noundef nonnull @.str.1) #15
  br label %18

18:                                               ; preds = %6, %17
  %19 = add nsw i32 %15, %1
  %20 = sub nsw i32 %19, %2
  %21 = icmp eq i32 %19, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3304, ptr noundef nonnull @.str.1) #15
  br label %23

23:                                               ; preds = %18, %22
  %24 = icmp sgt i32 %19, 63
  %25 = add nsw i32 %19, -64
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = zext nneg i32 %19 to i64
  %29 = shl nuw i64 1, %28
  %30 = select i1 %24, i64 %27, i64 0
  %31 = select i1 %24, i64 0, i64 %29
  %32 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %31, i64 noundef %30, i64 noundef %0, i64 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %33 = icmp sgt i32 %20, 63
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = add nsw i32 %20, -64
  %36 = zext nneg i32 %35 to i64
  %37 = shl nuw i64 1, %36
  %38 = or i64 %30, %37
  br label %43

39:                                               ; preds = %23
  %40 = zext nneg i32 %20 to i64
  %41 = shl nuw i64 1, %40
  %42 = or i64 %31, %41
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i64 [ %38, %34 ], [ %30, %39 ]
  %45 = phi i64 [ %31, %34 ], [ %42, %39 ]
  %46 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 1, i64 noundef %45, i64 noundef %44, i64 noundef %0, i64 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %47 = load i64, ptr %7, align 8, !tbaa !176
  %48 = icmp eq i64 %47, 0
  %49 = sub i64 %44, %0
  %50 = icmp ult i64 %49, %0
  %51 = or i1 %50, %48
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3328, ptr noundef nonnull @.str.1) #15
  br label %53

53:                                               ; preds = %43, %52
  %54 = load i64, ptr %7, align 8, !tbaa !176
  %55 = icmp slt i64 %54, 2
  %56 = load i64, ptr %8, align 8
  %57 = icmp slt i64 %56, 2
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3329, ptr noundef nonnull @.str.1) #15
  br label %60

60:                                               ; preds = %53, %59
  %61 = load i64, ptr %8, align 8, !tbaa !176
  %62 = load i64, ptr %7, align 8, !tbaa !176
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = icmp eq i64 %61, %62
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = load i64, ptr %10, align 8, !tbaa !176
  %68 = load i64, ptr %9, align 8, !tbaa !176
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %66, %64
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3332, ptr noundef nonnull @.str.1) #15
  br label %71

71:                                               ; preds = %60, %66, %70
  %72 = icmp sgt i32 %14, -1
  br i1 %72, label %73, label %92

73:                                               ; preds = %71
  %74 = load i64, ptr %9, align 8, !tbaa !176
  %75 = load i64, ptr %7, align 8, !tbaa !176
  %76 = load i64, ptr %10, align 8, !tbaa !176
  %77 = load i64, ptr %8, align 8, !tbaa !176
  %78 = call i32 @llvm.smin.i32(i32 %15, i32 1)
  %79 = add i32 %78, -1
  br label %80

80:                                               ; preds = %73, %89
  %81 = phi i32 [ %90, %89 ], [ %15, %73 ]
  %82 = phi i64 [ 0, %89 ], [ %77, %73 ]
  %83 = phi i64 [ %86, %89 ], [ %76, %73 ]
  %84 = phi i64 [ 0, %89 ], [ %75, %73 ]
  %85 = phi i64 [ %87, %89 ], [ %74, %73 ]
  %86 = call i64 @llvm.fshl.i64(i64 %82, i64 %83, i64 63)
  %87 = call i64 @llvm.fshl.i64(i64 %84, i64 %85, i64 63)
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  store i64 0, ptr %8, align 8, !tbaa !176
  store i64 %86, ptr %10, align 8, !tbaa !176
  store i64 0, ptr %7, align 8, !tbaa !176
  store i64 %87, ptr %9, align 8, !tbaa !176
  %90 = add nsw i32 %81, -1
  %91 = icmp sgt i32 %81, 1
  br i1 %91, label %80, label %92, !llvm.loop !186

92:                                               ; preds = %89, %80, %71
  %93 = phi i32 [ %15, %71 ], [ %79, %89 ], [ %81, %80 ]
  store i32 %93, ptr %4, align 4, !tbaa !80
  store i32 %15, ptr %5, align 4, !tbaa !80
  %94 = icmp slt i32 %1, 64
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = zext nneg i32 %1 to i64
  %97 = shl nsw i64 -1, %96
  %98 = xor i64 %97, -1
  %99 = load i64, ptr %9, align 8, !tbaa !176
  %100 = and i64 %99, %98
  %101 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %100) #15
  store ptr %101, ptr %3, align 8, !tbaa !65
  %102 = load i64, ptr %9, align 8, !tbaa !176
  %103 = icmp uge i64 %102, %98
  %104 = zext i1 %103 to i64
  br label %109

105:                                              ; preds = %92
  %106 = load i64, ptr %9, align 8, !tbaa !176
  %107 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %106) #15
  store ptr %107, ptr %3, align 8, !tbaa !65
  %108 = load i64, ptr %7, align 8, !tbaa !176
  br label %109

109:                                              ; preds = %105, %95
  %110 = phi i64 [ %104, %95 ], [ %108, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  ret i64 %110
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_mult_highpart(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #12 !prof !64 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.algorithm, align 4
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !76
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #15
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %14 = load i8, ptr %13, align 1, !tbaa !76
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3574, ptr noundef nonnull @.str.1) #15
  br label %18

18:                                               ; preds = %5, %17
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %20 = load i8, ptr %19, align 1, !tbaa !76
  %21 = icmp ult i8 %20, 9
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3576, ptr noundef nonnull @.str.1) #15
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %8
  %27 = load i64, ptr %26, align 8, !tbaa !176
  %28 = and i64 %27, %25
  %29 = zext i8 %10 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !76
  %32 = icmp ugt i8 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %76

35:                                               ; preds = %23
  %36 = zext i8 %12 to i64
  %37 = load i8, ptr %19, align 1, !tbaa !76
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 3
  %40 = add nsw i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %36, i64 %8, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !80
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = zext nneg i32 %40 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %47, %28
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %36, i64 %8
  %52 = load i32, ptr %51, align 4, !tbaa !80
  %53 = add nsw i32 %52, %43
  br label %54

54:                                               ; preds = %50, %45, %35
  %55 = phi i32 [ %43, %35 ], [ %53, %50 ], [ %43, %45 ]
  %56 = phi i1 [ true, %35 ], [ false, %50 ], [ true, %45 ]
  %57 = sub nsw i32 %4, %55
  %58 = call fastcc zeroext i8 @choose_mult_variant(i32 noundef %11, i64 noundef %28, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %57), !range !113
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %54
  %61 = load i16, ptr %7, align 4, !tbaa !169
  %62 = sext i16 %61 to i32
  %63 = add nsw i32 %55, %62
  %64 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %63)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = tail call ptr @convert_to_mode(i32 noundef %11, ptr noundef %1, i32 noundef %3) #15
  %68 = load i32, ptr %6, align 4, !tbaa !80
  %69 = call fastcc ptr @expand_mult_const(i32 noundef %11, ptr noundef %67, i64 noundef %28, ptr noundef null, ptr noundef nonnull %7, i32 noundef %68)
  %70 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef %69)
  br i1 %56, label %76, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %70, ptr noundef %1) #15
  %73 = tail call ptr @force_operand(ptr noundef %72, ptr noundef %70) #15
  br label %76

74:                                               ; preds = %54
  %75 = tail call fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %76

76:                                               ; preds = %66, %71, %60, %74, %33
  %77 = phi ptr [ %34, %33 ], [ %75, %74 ], [ %64, %60 ], [ %73, %71 ], [ %70, %66 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret ptr %77
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @emit_store_flag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 !prof !187 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %1, ptr %8, align 4, !tbaa !80
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11, !prof !188

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %7 ]
  %17 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %397, !prof !188

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %21 = icmp ne i8 %20, 0
  %22 = load i32, ptr @ix86_branch_cost, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %397, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %27 = tail call ptr @get_last_insn() #15
  %28 = load i32, ptr @optimize, align 4, !tbaa !80
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %16, %4
  %31 = and i1 %30, %29
  %32 = select i1 %31, ptr %0, ptr null
  %33 = sext i32 %26 to i64
  %34 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #15
  %35 = zext i32 %4 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !76
  switch i8 %37, label %397 [
    i8 8, label %38
    i8 2, label %182
  ]

38:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %39 = load i32, ptr %8, align 4, !tbaa !80
  %40 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %39) #15
  %41 = tail call i32 @can_compare_p(i32 noundef %40, i32 noundef %4, i32 noundef 2) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %124, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %8, align 4
  %45 = and i32 %44, -2
  %46 = icmp eq i32 %45, 90
  br i1 %46, label %95, label %47

47:                                               ; preds = %43
  switch i8 %37, label %67 [
    i8 8, label %48
    i8 9, label %48
    i8 11, label %48
    i8 17, label %48
  ]

48:                                               ; preds = %47, %47, %47, %47
  %49 = and i8 %37, -2
  %50 = icmp eq i8 %49, 8
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %35
  %53 = load i8, ptr %52, align 1, !tbaa !76
  %54 = zext i8 %53 to i32
  br label %55

55:                                               ; preds = %48, %51
  %56 = phi i32 [ %54, %51 ], [ %4, %48 ]
  %57 = add i32 %56, -38
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !65
  %61 = getelementptr inbounds %struct.real_format, ptr %60, i64 0, i32 11
  %62 = load i8, ptr %61, align 2, !tbaa !184
  %63 = icmp eq i8 %62, 0
  %64 = load i32, ptr @flag_finite_math_only, align 4
  %65 = icmp ne i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %47, %55
  switch i32 %44, label %68 [
    i32 97, label %95
    i32 92, label %95
  ]

68:                                               ; preds = %67, %55
  %69 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !80
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %68
  switch i8 %37, label %93 [
    i8 8, label %72
    i8 9, label %72
    i8 11, label %72
    i8 17, label %72
  ]

72:                                               ; preds = %71, %71, %71, %71
  %73 = and i8 %37, -2
  %74 = icmp eq i8 %73, 8
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %35
  %77 = load i8, ptr %76, align 1, !tbaa !76
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %72, %75
  %80 = phi i32 [ %78, %75 ], [ %4, %72 ]
  %81 = add i32 %80, -38
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !65
  %85 = getelementptr inbounds %struct.real_format, ptr %84, i64 0, i32 11
  %86 = load i8, ptr %85, align 2, !tbaa !184
  %87 = icmp eq i8 %86, 0
  %88 = load i32, ptr @flag_finite_math_only, align 4
  %89 = icmp ne i32 %88, 0
  %90 = select i1 %87, i1 true, i1 %89
  %91 = icmp eq i32 %45, 80
  %92 = and i1 %91, %90
  br i1 %92, label %95, label %124

93:                                               ; preds = %68, %71
  %94 = icmp eq i32 %45, 80
  br i1 %94, label %95, label %124

95:                                               ; preds = %79, %67, %67, %93, %43
  %96 = icmp eq i32 %6, -1
  br i1 %96, label %97, label %108

97:                                               ; preds = %95
  %98 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #15
  %99 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %100 = tail call i32 @rtx_cost(ptr noundef %98, i32 noundef 49, i8 noundef zeroext %99) #15
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %97
  %103 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %40, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef %16)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #15
  %107 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %103, ptr noundef %106, ptr noundef %0, i32 noundef 0, i32 noundef 2) #15
  br label %121

108:                                              ; preds = %95
  %109 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %110 = tail call i32 @rtx_cost(ptr noundef %34, i32 noundef 63, i8 noundef zeroext %109) #15
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %40, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16)
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !76
  %118 = icmp sgt i64 %117, -1
  %119 = zext i1 %118 to i32
  %120 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %113, ptr noundef %34, ptr noundef %0, i32 noundef %119, i32 noundef 2) #15
  br label %121

121:                                              ; preds = %97, %102, %112, %108, %115, %105
  %122 = phi i1 [ false, %105 ], [ false, %115 ], [ true, %108 ], [ true, %112 ], [ true, %102 ], [ true, %97 ]
  %123 = phi ptr [ %107, %105 ], [ %120, %115 ], [ undef, %108 ], [ undef, %112 ], [ undef, %102 ], [ undef, %97 ]
  br i1 %122, label %124, label %180

124:                                              ; preds = %79, %121, %93, %38
  tail call void @delete_insns_since(ptr noundef %27) #15
  %125 = load i32, ptr %8, align 4
  %126 = and i32 %125, -2
  %127 = icmp eq i32 %126, 90
  br i1 %127, label %180, label %128

128:                                              ; preds = %124
  %129 = call zeroext i8 @split_comparison(i32 noundef %125, i32 noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %8) #15
  switch i8 %37, label %149 [
    i8 8, label %130
    i8 9, label %130
    i8 11, label %130
    i8 17, label %130
  ]

130:                                              ; preds = %128, %128, %128, %128
  %131 = and i8 %37, -2
  %132 = icmp eq i8 %131, 8
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %35
  %135 = load i8, ptr %134, align 1, !tbaa !76
  %136 = zext i8 %135 to i32
  br label %137

137:                                              ; preds = %130, %133
  %138 = phi i32 [ %136, %133 ], [ %4, %130 ]
  %139 = add i32 %138, -38
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !65
  %143 = getelementptr inbounds %struct.real_format, ptr %142, i64 0, i32 11
  %144 = load i8, ptr %143, align 2, !tbaa !184
  %145 = icmp eq i8 %144, 0
  %146 = load i32, ptr @flag_finite_math_only, align 4
  %147 = icmp ne i32 %146, 0
  %148 = select i1 %145, i1 true, i1 %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %128, %137
  %150 = load i32, ptr %9, align 4, !tbaa !80
  %151 = icmp eq i8 %129, 0
  %152 = select i1 %151, i32 90, i32 91
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5541, ptr noundef nonnull @.str.1) #15
  br label %155

155:                                              ; preds = %149, %154
  %156 = load i32, ptr %8, align 4, !tbaa !80
  %157 = call fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %156, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16)
  br label %180

158:                                              ; preds = %137
  %159 = load i32, ptr %9, align 4, !tbaa !80
  %160 = call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %159, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16)
  %161 = icmp eq ptr %160, null
  br i1 %161, label %180, label %162

162:                                              ; preds = %158
  %163 = icmp eq i8 %129, 0
  %164 = load i32, ptr %8, align 4, !tbaa !80
  br i1 %163, label %171, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %167 = load i32, ptr %160, align 8
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = call ptr @emit_conditional_move(ptr noundef %0, i32 noundef %164, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %160, ptr noundef %166, i32 noundef %169, i32 noundef 0) #15
  br label %176

171:                                              ; preds = %162
  %172 = load i32, ptr %160, align 8
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 255
  %175 = call ptr @emit_conditional_move(ptr noundef %0, i32 noundef %164, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %34, ptr noundef nonnull %160, i32 noundef %174, i32 noundef 0) #15
  br label %176

176:                                              ; preds = %171, %165
  %177 = phi ptr [ %170, %165 ], [ %175, %171 ]
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @delete_insns_since(ptr noundef %27) #15
  br label %180

180:                                              ; preds = %121, %176, %179, %158, %124, %155
  %181 = phi ptr [ %157, %155 ], [ null, %124 ], [ null, %158 ], [ %177, %179 ], [ %177, %176 ], [ %123, %121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %397

182:                                              ; preds = %25
  %183 = load i32, ptr %8, align 4
  %184 = and i32 %183, -2
  %185 = icmp ne i32 %184, 80
  %186 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %187 = icmp eq ptr %186, %3
  %188 = select i1 %185, i1 true, i1 %187
  br i1 %188, label %205, label %189

189:                                              ; preds = %182
  %190 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %2, ptr noundef %3, ptr noundef %32, i32 noundef 1, i32 noundef 2) #15
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %2, ptr noundef %3, ptr noundef %32, i32 noundef 1, i32 noundef 2) #15
  br label %194

194:                                              ; preds = %192, %189
  %195 = phi ptr [ %193, %192 ], [ %190, %189 ]
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %8, align 4, !tbaa !80
  %199 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %200 = tail call ptr @emit_store_flag(ptr noundef %0, i32 noundef %198, ptr noundef nonnull %195, ptr noundef %199, i32 noundef %4, i32 noundef %5, i32 noundef %26)
  br label %201

201:                                              ; preds = %197, %194
  %202 = phi ptr [ %200, %197 ], [ null, %194 ]
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %397

204:                                              ; preds = %201
  tail call void @delete_insns_since(ptr noundef %27) #15
  br label %205

205:                                              ; preds = %182, %204
  %206 = load i32, ptr %8, align 4, !tbaa !80
  %207 = tail call i32 @reverse_condition(i32 noundef %206) #15
  %208 = tail call i32 @can_compare_p(i32 noundef %207, i32 noundef %4, i32 noundef 2) #15
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %255, label %210

210:                                              ; preds = %205
  %211 = sext i32 %4 to i64
  %212 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !115
  %214 = icmp eq i32 %213, 2956
  %215 = load i32, ptr %8, align 4
  %216 = icmp eq i32 %215, 80
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %225

218:                                              ; preds = %210
  %219 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %220 = load i8, ptr %219, align 1, !tbaa !76
  %221 = icmp ult i8 %220, 4
  %222 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %223 = icmp eq ptr %222, %3
  %224 = select i1 %221, i1 %223, i1 false
  br i1 %224, label %255, label %225

225:                                              ; preds = %218, %210
  %226 = icmp eq i32 %6, -1
  br i1 %226, label %227, label %238

227:                                              ; preds = %225
  %228 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #15
  %229 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %230 = tail call i32 @rtx_cost(ptr noundef %228, i32 noundef 49, i8 noundef zeroext %229) #15
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %227
  %233 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %207, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef %16)
  %234 = icmp eq ptr %233, null
  br i1 %234, label %251, label %235

235:                                              ; preds = %232
  %236 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #15
  %237 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %233, ptr noundef %236, ptr noundef %0, i32 noundef 0, i32 noundef 2) #15
  br label %251

238:                                              ; preds = %225
  %239 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %240 = tail call i32 @rtx_cost(ptr noundef %34, i32 noundef 63, i8 noundef zeroext %239) #15
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %238
  %243 = tail call fastcc ptr @emit_store_flag_1(ptr noundef %32, i32 noundef %207, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %26, i32 noundef %16)
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %247 = load i64, ptr %246, align 8, !tbaa !76
  %248 = icmp sgt i64 %247, -1
  %249 = zext i1 %248 to i32
  %250 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %243, ptr noundef %34, ptr noundef %0, i32 noundef %249, i32 noundef 2) #15
  br label %251

251:                                              ; preds = %227, %238, %245, %242, %232, %235
  %252 = phi ptr [ %237, %235 ], [ null, %232 ], [ %250, %245 ], [ null, %242 ], [ null, %238 ], [ null, %227 ]
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %397

254:                                              ; preds = %251
  tail call void @delete_insns_since(ptr noundef %27) #15
  br label %255

255:                                              ; preds = %254, %218, %205
  %256 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %257 = icmp eq ptr %256, %3
  br i1 %257, label %258, label %397

258:                                              ; preds = %255
  %259 = load i32, ptr %8, align 4
  %260 = add i32 %259, -82
  %261 = icmp ult i32 %260, -2
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %264 = icmp ne i8 %263, 0
  %265 = load i32, ptr @ix86_branch_cost, align 4
  %266 = icmp slt i32 %265, 2
  %267 = select i1 %264, i1 %266, i1 false
  br i1 %267, label %397, label %268

268:                                              ; preds = %262
  %269 = load i32, ptr %8, align 4
  %270 = add i32 %269, -85
  %271 = icmp ult i32 %270, -2
  br i1 %271, label %397, label %272

272:                                              ; preds = %268, %258
  %273 = load i32, ptr %8, align 4, !tbaa !80
  %274 = icmp eq i32 %273, 84
  br i1 %274, label %275, label %284

275:                                              ; preds = %272
  %276 = tail call i32 @rtx_equal_p(ptr noundef %32, ptr noundef %2) #15
  %277 = icmp eq i32 %276, 0
  %278 = select i1 %277, ptr %32, ptr null
  %279 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %280 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %2, ptr noundef %279, ptr noundef %278, i32 noundef 0, i32 noundef 2) #15
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %275
  %283 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %2, ptr noundef nonnull %280, ptr noundef %278, i32 noundef 0, i32 noundef 2) #15
  br label %284

284:                                              ; preds = %275, %282, %272
  %285 = phi ptr [ %283, %282 ], [ null, %275 ], [ null, %272 ]
  %286 = phi ptr [ %278, %282 ], [ %278, %275 ], [ %32, %272 ]
  %287 = load i32, ptr %8, align 4, !tbaa !80
  %288 = icmp eq i32 %287, 83
  br i1 %288, label %289, label %302

289:                                              ; preds = %284
  %290 = tail call i32 @rtx_equal_p(ptr noundef %286, ptr noundef %2) #15
  %291 = icmp eq i32 %290, 0
  %292 = select i1 %291, ptr %286, ptr null
  %293 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %294 = load i8, ptr %293, align 1, !tbaa !76
  %295 = zext i8 %294 to i32
  %296 = shl nuw nsw i32 %295, 3
  %297 = add nsw i32 %296, -1
  %298 = sext i32 %297 to i64
  %299 = tail call ptr @size_int_kind(i64 noundef %298, i32 noundef 0) #15
  %300 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %4, ptr noundef %2, ptr noundef %299, ptr noundef %292, i32 noundef 0)
  %301 = tail call ptr @expand_binop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %300, ptr noundef %2, ptr noundef %292, i32 noundef 0, i32 noundef 2) #15
  br label %302

302:                                              ; preds = %289, %284
  %303 = phi ptr [ %301, %289 ], [ %285, %284 ]
  %304 = phi ptr [ %292, %289 ], [ %286, %284 ]
  %305 = load i32, ptr %8, align 4
  %306 = and i32 %305, -2
  %307 = icmp eq i32 %306, 80
  br i1 %307, label %308, label %365

308:                                              ; preds = %302
  %309 = sext i32 %4 to i64
  %310 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !115
  %312 = icmp eq i32 %311, 2956
  br i1 %312, label %315, label %313

313:                                              ; preds = %308
  %314 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), ptr noundef %2, ptr noundef %304, i32 noundef 1) #15
  br label %329

315:                                              ; preds = %308
  %316 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 4, i64 %309
  %317 = load i32, ptr %316, align 4, !tbaa !115
  %318 = icmp eq i32 %317, 2956
  br i1 %318, label %321, label %319

319:                                              ; preds = %315
  %320 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70), ptr noundef %2, ptr noundef %304, i32 noundef 1) #15
  br label %329

321:                                              ; preds = %315
  %322 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %35
  %323 = load i8, ptr %322, align 1, !tbaa !76
  %324 = icmp ult i8 %323, 4
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = load i32, ptr @word_mode, align 4, !tbaa !80
  %327 = tail call ptr @convert_modes(i32 noundef %326, i32 noundef %4, ptr noundef %2, i32 noundef 1) #15
  %328 = load i32, ptr @word_mode, align 4, !tbaa !80
  br label %329

329:                                              ; preds = %319, %325, %321, %313
  %330 = phi ptr [ %314, %313 ], [ %320, %319 ], [ %327, %325 ], [ %303, %321 ]
  %331 = phi i32 [ %4, %313 ], [ %4, %319 ], [ %328, %325 ], [ %4, %321 ]
  %332 = icmp eq ptr %330, null
  br i1 %332, label %341, label %333

333:                                              ; preds = %329
  %334 = load i32, ptr %8, align 4, !tbaa !80
  %335 = icmp eq i32 %334, 81
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %338 = tail call ptr @expand_binop(i32 noundef %331, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %330, ptr noundef %337, ptr noundef %304, i32 noundef 0, i32 noundef 2) #15
  br label %341

339:                                              ; preds = %333
  %340 = tail call ptr @expand_unop(i32 noundef %331, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef nonnull %330, ptr noundef %304, i32 noundef 0) #15
  br label %341

341:                                              ; preds = %336, %339, %329
  %342 = phi ptr [ %338, %336 ], [ %340, %339 ], [ null, %329 ]
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %365

344:                                              ; preds = %341
  %345 = load i32, ptr %8, align 4, !tbaa !80
  %346 = icmp eq i32 %345, 80
  br i1 %346, label %353, label %347

347:                                              ; preds = %344
  %348 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %349 = icmp eq i8 %348, 0
  %350 = load i32, ptr @ix86_branch_cost, align 4
  %351 = icmp sgt i32 %350, 1
  %352 = select i1 %349, i1 true, i1 %351
  br i1 %352, label %353, label %365

353:                                              ; preds = %347, %344
  %354 = tail call i32 @rtx_equal_p(ptr noundef %304, ptr noundef %2) #15
  %355 = icmp eq i32 %354, 0
  %356 = select i1 %355, ptr %304, ptr null
  %357 = tail call ptr @expand_unop(i32 noundef %331, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %2, ptr noundef %356, i32 noundef 0) #15
  %358 = tail call ptr @expand_binop(i32 noundef %331, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %357, ptr noundef %2, ptr noundef %356, i32 noundef 0, i32 noundef 2) #15
  %359 = icmp ne ptr %358, null
  %360 = load i32, ptr %8, align 4
  %361 = icmp eq i32 %360, 81
  %362 = select i1 %359, i1 %361, i1 false
  br i1 %362, label %363, label %365

363:                                              ; preds = %353
  %364 = tail call ptr @expand_unop(i32 noundef %331, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef nonnull %358, ptr noundef %356, i32 noundef 0) #15
  br label %365

365:                                              ; preds = %347, %341, %363, %353, %302
  %366 = phi ptr [ %364, %363 ], [ %358, %353 ], [ %342, %341 ], [ %303, %302 ], [ null, %347 ]
  %367 = phi ptr [ %356, %363 ], [ %356, %353 ], [ %304, %341 ], [ %304, %302 ], [ %304, %347 ]
  %368 = phi i32 [ %331, %363 ], [ %331, %353 ], [ %331, %341 ], [ %4, %302 ], [ %331, %347 ]
  %369 = icmp eq ptr %366, null
  br i1 %369, label %382, label %370

370:                                              ; preds = %365
  %371 = zext i32 %368 to i64
  %372 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !76
  %374 = zext i8 %373 to i32
  %375 = shl nuw nsw i32 %374, 3
  %376 = add nsw i32 %375, -1
  %377 = sext i32 %376 to i64
  %378 = tail call ptr @size_int_kind(i64 noundef %377, i32 noundef 0) #15
  %379 = icmp ult i32 %6, 2
  %380 = zext i1 %379 to i32
  %381 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %368, ptr noundef nonnull %366, ptr noundef %378, ptr noundef %367, i32 noundef %380)
  br label %382

382:                                              ; preds = %370, %365
  %383 = phi ptr [ %381, %370 ], [ null, %365 ]
  %384 = icmp eq ptr %383, null
  br i1 %384, label %396, label %385

385:                                              ; preds = %382
  br i1 %10, label %397, label %386

386:                                              ; preds = %385
  %387 = load i32, ptr %383, align 8
  %388 = lshr i32 %387, 16
  %389 = and i32 %388, 255
  %390 = icmp eq i32 %389, %16
  br i1 %390, label %392, label %391

391:                                              ; preds = %386
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef nonnull %383, i32 noundef 0) #15
  br label %397

392:                                              ; preds = %386
  %393 = icmp eq ptr %367, null
  br i1 %393, label %394, label %397

394:                                              ; preds = %392
  %395 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %383) #15
  br label %397

396:                                              ; preds = %382
  tail call void @delete_insns_since(ptr noundef %27) #15
  br label %397

397:                                              ; preds = %251, %396, %391, %394, %392, %385, %255, %262, %268, %201, %25, %19, %15, %180
  %398 = phi ptr [ %181, %180 ], [ %17, %15 ], [ null, %19 ], [ null, %25 ], [ %202, %201 ], [ null, %268 ], [ null, %262 ], [ null, %255 ], [ %0, %391 ], [ %383, %392 ], [ %0, %394 ], [ %383, %385 ], [ null, %396 ], [ %252, %251 ]
  ret ptr %398
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_smod_pow2(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #12 !prof !64 {
  %4 = tail call i32 @floor_log2(i64 noundef %2) #15
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %0) #15
  %6 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %7 = icmp eq i8 %6, 0
  %8 = load i32, ptr @ix86_branch_cost, align 4
  %9 = icmp sgt i32 %8, 1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %3
  %12 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %16 = tail call ptr @emit_store_flag(ptr noundef %5, i32 noundef 85, ptr noundef %1, ptr noundef %15, i32 noundef %0, i32 noundef 0, i32 noundef -1)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @force_reg(i32 noundef %0, ptr noundef nonnull %16) #15
  %20 = zext nneg i32 %4 to i64
  %21 = shl nsw i64 -1, %20
  %22 = xor i64 %21, -1
  %23 = zext i32 %0 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !76
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 3
  %28 = sub nsw i32 %27, %4
  %29 = sext i32 %28 to i64
  %30 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %29) #15
  %31 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 68, i32 noundef %0, ptr noundef %5, ptr noundef %30) #15
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !115
  %35 = icmp eq i32 %34, 2956
  br i1 %35, label %40, label %36

36:                                               ; preds = %18
  %37 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %38 = tail call i32 @rtx_cost(ptr noundef %31, i32 noundef 23, i8 noundef zeroext %37) #15
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %18
  %41 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %42 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %41, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %43 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %22) #15
  %44 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %42, ptr noundef %43, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %45 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %44, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %46 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %45, ptr noundef %19, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  br label %54

47:                                               ; preds = %36
  %48 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %19, ptr noundef %30, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %49 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %48) #15
  %50 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %1, ptr noundef %49, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %51 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %22) #15
  %52 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %50, ptr noundef %51, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %53 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %52, ptr noundef %49, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  br label %54

54:                                               ; preds = %14, %40, %47
  %55 = phi ptr [ %46, %40 ], [ %53, %47 ], [ undef, %14 ]
  br i1 %17, label %56, label %97

56:                                               ; preds = %54, %11, %3
  %57 = zext nneg i32 %4 to i64
  %58 = shl nsw i64 -1, %57
  %59 = xor i64 %58, -1
  %60 = zext i32 %0 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !76
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 3
  %65 = icmp ult i8 %62, 9
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = add nsw i32 %64, -1
  %68 = zext nneg i32 %67 to i64
  %69 = shl nsw i64 -1, %68
  %70 = or i64 %69, %59
  br label %75

71:                                               ; preds = %56
  %72 = add nsw i32 %64, -65
  %73 = zext nneg i32 %72 to i64
  %74 = shl nsw i64 -1, %73
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i64 [ -1, %66 ], [ %74, %71 ]
  %77 = phi i64 [ %70, %66 ], [ %59, %71 ]
  %78 = tail call ptr @immed_double_const(i64 noundef %77, i64 noundef %76, i32 noundef %0) #15
  %79 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %1, ptr noundef %78, ptr noundef %5, i32 noundef 1, i32 noundef 3) #15
  %80 = icmp eq ptr %79, %5
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %79) #15
  br label %83

83:                                               ; preds = %81, %75
  %84 = tail call ptr @gen_label_rtx() #15
  %85 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %5, ptr noundef %85, i32 noundef 82, i32 noundef 0, i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %84, i32 noundef -1) #15
  %86 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %87 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %5, ptr noundef %86, ptr noundef %5, i32 noundef 0, i32 noundef 3) #15
  %88 = tail call ptr @immed_double_const(i64 noundef %58, i64 noundef -1, i32 noundef %0) #15
  %89 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %87, ptr noundef %88, ptr noundef %5, i32 noundef 1, i32 noundef 3) #15
  %90 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %91 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %89, ptr noundef %90, ptr noundef %5, i32 noundef 0, i32 noundef 3) #15
  %92 = icmp eq ptr %91, %5
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = tail call ptr @emit_move_insn(ptr noundef %5, ptr noundef %91) #15
  br label %95

95:                                               ; preds = %93, %83
  %96 = tail call ptr @emit_label(ptr noundef %84) #15
  br label %97

97:                                               ; preds = %54, %95
  %98 = phi ptr [ %5, %95 ], [ %55, %54 ]
  ret ptr %98
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_sdiv_pow2(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #12 !prof !64 {
  %4 = tail call i32 @floor_log2(i64 noundef %2) #15
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %5) #15
  %7 = icmp eq i64 %2, 2
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %10 = icmp eq i8 %9, 0
  %11 = load i32, ptr @ix86_branch_cost, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %0) #15
  %16 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %17 = tail call ptr @emit_store_flag(ptr noundef %15, i32 noundef 85, ptr noundef %1, ptr noundef %16, i32 noundef %0, i32 noundef 0, i32 noundef 1)
  %18 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %17, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 3) #15
  br label %80

19:                                               ; preds = %8, %3
  %20 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %21 = icmp eq i8 %20, 0
  %22 = load i32, ptr @ix86_branch_cost, align 4
  %23 = icmp sgt i32 %22, 1
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  tail call void @do_pending_stack_adjust() #15
  tail call void @start_sequence() #15
  %26 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %1) #15
  %27 = add nsw i64 %2, -1
  %28 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %27) #15
  %29 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %26, ptr noundef %28, ptr noundef null, i32 noundef 0, i32 noundef 3) #15
  %30 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %29) #15
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %32 = tail call ptr @emit_conditional_move(ptr noundef %26, i32 noundef 85, ptr noundef %26, ptr noundef %31, i32 noundef %0, ptr noundef %30, ptr noundef %26, i32 noundef %0, i32 noundef 0) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  %36 = tail call ptr @emit_insn(ptr noundef %35) #15
  %37 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef nonnull %32, ptr noundef %6, ptr noundef null, i32 noundef 0)
  br label %39

38:                                               ; preds = %25
  tail call void @end_sequence() #15
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi ptr [ %37, %34 ], [ undef, %38 ]
  br i1 %33, label %41, label %83

41:                                               ; preds = %39, %19
  %42 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %43 = icmp eq i8 %42, 0
  %44 = load i32, ptr @ix86_branch_cost, align 4
  %45 = icmp sgt i32 %44, 1
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = zext i32 %0 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !76
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 3
  %53 = sub nsw i32 %52, %4
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %0) #15
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %56 = tail call ptr @emit_store_flag(ptr noundef %54, i32 noundef 85, ptr noundef %1, ptr noundef %55, i32 noundef %0, i32 noundef 0, i32 noundef -1)
  %57 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %58 = zext i8 %57 to i64
  %59 = sext i32 %53 to i64
  %60 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %58, i64 %48, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !80
  %62 = icmp sgt i32 %61, 4
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = add nsw i64 %2, -1
  %65 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %64) #15
  %66 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %56, ptr noundef %65, ptr noundef null, i32 noundef 0, i32 noundef 3) #15
  br label %70

67:                                               ; preds = %47
  %68 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %59) #15
  %69 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %56, ptr noundef %68, ptr noundef null, i32 noundef 1)
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi ptr [ %66, %63 ], [ %69, %67 ]
  %72 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %71, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 3) #15
  br label %80

73:                                               ; preds = %41
  %74 = tail call ptr @gen_label_rtx() #15
  %75 = tail call ptr @copy_to_mode_reg(i32 noundef %0, ptr noundef %1) #15
  %76 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  tail call void @do_compare_rtx_and_jump(ptr noundef %75, ptr noundef %76, i32 noundef 82, i32 noundef 0, i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %74, i32 noundef -1) #15
  %77 = add nsw i64 %2, -1
  %78 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %77) #15
  tail call void @expand_inc(ptr noundef %75, ptr noundef %78)
  %79 = tail call ptr @emit_label(ptr noundef %74) #15
  br label %80

80:                                               ; preds = %14, %70, %73
  %81 = phi ptr [ %75, %73 ], [ %72, %70 ], [ %18, %14 ]
  %82 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %81, ptr noundef %6, ptr noundef null, i32 noundef 0)
  br label %83

83:                                               ; preds = %80, %39
  %84 = phi ptr [ %40, %39 ], [ %82, %80 ]
  ret ptr %84
}

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @delete_insns_since(ptr noundef) local_unnamed_addr #3

declare i32 @expand_twoval_binop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier() local_unnamed_addr #3

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @expand_abs(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @sign_expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @expand_twoval_binop_libfunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @locator_location(i32 noundef) local_unnamed_addr #3

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @simplify_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @emit_store_flag_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #9 !prof !187 !PGOFuncName !189 {
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %12, label %10, !prof !190

10:                                               ; preds = %8
  %11 = tail call i32 @unsigned_condition(i32 noundef %1) #15
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %1, %8 ]
  %14 = tail call i32 @swap_condition(i32 noundef %13) #15
  %15 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !191

17:                                               ; preds = %12
  %18 = tail call i32 @swap_condition(i32 noundef %13) #15
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %2, %17 ], [ %3, %12 ]
  %21 = phi ptr [ %3, %17 ], [ %2, %12 ]
  %22 = phi i32 [ %18, %17 ], [ %13, %12 ]
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %24, label %28, !prof !192

24:                                               ; preds = %19
  %25 = load i32, ptr %21, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %27, %24 ], [ %4, %19 ]
  switch i32 %22, label %66 [
    i32 85, label %30
    i32 84, label %36
    i32 82, label %42
    i32 83, label %48
    i32 86, label %54
    i32 89, label %60
  ], !prof !193

30:                                               ; preds = %28
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %32 = icmp eq ptr %20, %31
  %33 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %34 = select i1 %32, ptr %33, ptr %20
  %35 = select i1 %32, i32 84, i32 85
  br label %66

36:                                               ; preds = %28
  %37 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !65
  %38 = icmp eq ptr %20, %37
  %39 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %40 = select i1 %38, ptr %39, ptr %20, !prof !194
  %41 = select i1 %38, i32 85, i32 84, !prof !194
  br label %66

42:                                               ; preds = %28
  %43 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %44 = icmp eq ptr %20, %43
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %46 = select i1 %44, ptr %45, ptr %20, !prof !195
  %47 = select i1 %44, i32 83, i32 82, !prof !195
  br label %66

48:                                               ; preds = %28
  %49 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !65
  %50 = icmp eq ptr %20, %49
  %51 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %52 = select i1 %50, ptr %51, ptr %20
  %53 = select i1 %50, i32 82, i32 83
  br label %66

54:                                               ; preds = %28
  %55 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %56 = icmp eq ptr %20, %55
  %57 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %58 = select i1 %56, ptr %57, ptr %20
  %59 = select i1 %56, i32 80, i32 86
  br label %66

60:                                               ; preds = %28
  %61 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %62 = icmp eq ptr %20, %61
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %64 = select i1 %62, ptr %63, ptr %20
  %65 = select i1 %62, i32 81, i32 89
  br label %66

66:                                               ; preds = %60, %54, %48, %42, %36, %30, %28
  %67 = phi ptr [ %20, %28 ], [ %34, %30 ], [ %40, %36 ], [ %46, %42 ], [ %52, %48 ], [ %58, %54 ], [ %64, %60 ]
  %68 = phi i32 [ %22, %28 ], [ %35, %30 ], [ %41, %36 ], [ %47, %42 ], [ %53, %48 ], [ %59, %54 ], [ %65, %60 ]
  %69 = zext i32 %29 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !76
  %72 = icmp eq i8 %71, 8
  br i1 %72, label %73, label %144, !prof !188

73:                                               ; preds = %66
  %74 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %75 = load i8, ptr %74, align 1, !tbaa !76
  %76 = icmp eq i8 %75, 2
  br i1 %76, label %77, label %144

77:                                               ; preds = %73
  %78 = load i32, ptr %21, align 8
  %79 = and i32 %78, 134283263
  %80 = icmp eq i32 %79, 134217771
  br i1 %80, label %144, label %81

81:                                               ; preds = %77
  %82 = and i32 %68, -2
  %83 = icmp eq i32 %82, 80
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %86 = icmp eq ptr %67, %85
  %87 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8
  %88 = icmp eq ptr %67, %87
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load i32, ptr @word_mode, align 4, !tbaa !80
  %92 = tail call ptr @simplify_gen_subreg(i32 noundef %91, ptr noundef nonnull %21, i32 noundef %29, i32 noundef 0) #15
  %93 = load i32, ptr @word_mode, align 4, !tbaa !80
  %94 = tail call ptr @simplify_gen_subreg(i32 noundef %93, ptr noundef nonnull %21, i32 noundef %29, i32 noundef 4) #15
  %95 = load i32, ptr @word_mode, align 4, !tbaa !80
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %97 = icmp eq ptr %67, %96
  %98 = select i1 %97, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41)
  %99 = tail call ptr @expand_binop(i32 noundef %95, ptr noundef nonnull %98, ptr noundef %92, ptr noundef %94, ptr noundef null, i32 noundef %5, i32 noundef 0) #15
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %90
  %102 = load i32, ptr @word_mode, align 4, !tbaa !80
  %103 = tail call ptr @emit_store_flag(ptr noundef null, i32 noundef %68, ptr noundef nonnull %99, ptr noundef %67, i32 noundef %102, i32 noundef %5, i32 noundef %6)
  br label %114

104:                                              ; preds = %84, %81
  switch i32 %68, label %114 [
    i32 85, label %105
    i32 82, label %105
  ]

105:                                              ; preds = %104, %104
  %106 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %107 = icmp eq ptr %67, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, ptr @word_mode, align 4, !tbaa !80
  %110 = tail call i32 @subreg_highpart_offset(i32 noundef %109, i32 noundef %29) #15
  %111 = tail call ptr @simplify_gen_subreg(i32 noundef %109, ptr noundef nonnull %21, i32 noundef %29, i32 noundef %110) #15
  %112 = load i32, ptr @word_mode, align 4, !tbaa !80
  %113 = tail call ptr @emit_store_flag(ptr noundef null, i32 noundef %68, ptr noundef %111, ptr noundef %67, i32 noundef %112, i32 noundef %5, i32 noundef %6)
  br label %114

114:                                              ; preds = %104, %105, %90, %101, %108
  %115 = phi ptr [ %113, %108 ], [ %103, %101 ], [ null, %90 ], [ null, %105 ], [ null, %104 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %144, label %117

117:                                              ; preds = %114
  %118 = icmp eq i32 %7, 0
  br i1 %118, label %219, label %119

119:                                              ; preds = %117
  %120 = load i32, ptr %115, align 8
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = icmp eq i32 %122, %7
  br i1 %123, label %219, label %124

124:                                              ; preds = %119
  %125 = icmp eq ptr %0, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %124
  %127 = tail call ptr @gen_reg_rtx(i32 noundef %7) #15
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi ptr [ %0, %124 ], [ %127, %126 ]
  %130 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %131 = sext i32 %130 to i64
  %132 = load i32, ptr @word_mode, align 4, !tbaa !80
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !76
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, 3
  %138 = add nuw nsw i64 %137, 4294967295
  %139 = and i64 %138, 4294967295
  %140 = shl nuw i64 1, %139
  %141 = and i64 %140, %131
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  tail call void @convert_move(ptr noundef %129, ptr noundef nonnull %115, i32 noundef %143) #15
  br label %219

144:                                              ; preds = %77, %114, %73, %66
  %145 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !65
  %146 = icmp eq ptr %67, %145
  br i1 %146, label %147, label %186, !prof !196

147:                                              ; preds = %144
  %148 = icmp eq i32 %68, 82
  switch i32 %68, label %186 [
    i32 85, label %149
    i32 82, label %149
  ], !prof !197

149:                                              ; preds = %147, %147
  %150 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %151 = load i8, ptr %150, align 1, !tbaa !76
  %152 = icmp eq i8 %151, 2
  br i1 %152, label %153, label %186

153:                                              ; preds = %149
  %154 = icmp eq ptr %0, null
  br i1 %154, label %163, label %155

155:                                              ; preds = %153
  %156 = zext nneg i32 %7 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !76
  %159 = load i8, ptr %70, align 1, !tbaa !76
  %160 = icmp ugt i8 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = tail call ptr @convert_modes(i32 noundef %7, i32 noundef %29, ptr noundef %21, i32 noundef 0) #15
  br label %163

163:                                              ; preds = %153, %155, %161
  %164 = phi i32 [ %7, %161 ], [ %7, %155 ], [ %29, %153 ]
  %165 = phi i32 [ %7, %161 ], [ %29, %155 ], [ %29, %153 ]
  %166 = phi ptr [ %162, %161 ], [ %21, %155 ], [ %21, %153 ]
  %167 = icmp eq i32 %164, %165
  %168 = select i1 %167, ptr %0, ptr null
  br i1 %148, label %169, label %171

169:                                              ; preds = %163
  %170 = tail call ptr @expand_unop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %166, ptr noundef null, i32 noundef 0) #15
  br label %171

171:                                              ; preds = %169, %163
  %172 = phi ptr [ %170, %169 ], [ %166, %163 ]
  %173 = zext i32 %165 to i64
  %174 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !76
  %176 = zext i8 %175 to i32
  %177 = shl nuw nsw i32 %176, 3
  %178 = add nsw i32 %177, -1
  %179 = sext i32 %178 to i64
  %180 = tail call ptr @size_int_kind(i64 noundef %179, i32 noundef 0) #15
  %181 = icmp ne i32 %6, -1
  %182 = zext i1 %181 to i32
  %183 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %165, ptr noundef %172, ptr noundef %180, ptr noundef %168, i32 noundef %182)
  br i1 %167, label %219, label %184

184:                                              ; preds = %171
  %185 = tail call ptr @convert_modes(i32 noundef %164, i32 noundef %165, ptr noundef %183, i32 noundef 0) #15
  br label %219

186:                                              ; preds = %149, %147, %144
  %187 = icmp eq i32 %29, 0
  br i1 %187, label %219, label %188, !prof !198

188:                                              ; preds = %186
  %189 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %190 = load i8, ptr %189, align 1, !tbaa !76
  %191 = icmp eq i8 %190, 1
  br label %192

192:                                              ; preds = %188, %212
  %193 = phi ptr [ undef, %188 ], [ %211, %212 ]
  %194 = phi i32 [ %29, %188 ], [ %216, %212 ]
  %195 = sext i32 %194 to i64
  %196 = select i1 %191, i64 2, i64 %195, !prof !188
  %197 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !115
  %199 = icmp eq i32 %198, 2956
  br i1 %199, label %209, label %200, !prof !188

200:                                              ; preds = %192
  tail call void @do_pending_stack_adjust() #15
  %201 = tail call fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %198, i32 noundef %68, i32 noundef %29, i32 noundef %194, i32 noundef %5, ptr noundef %21, ptr noundef %67, i32 noundef %6, i32 noundef %7)
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %209, !prof !188

203:                                              ; preds = %200
  %204 = icmp eq i8 %190, 8
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = tail call fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %198, i32 noundef %14, i32 noundef %29, i32 noundef %194, i32 noundef %5, ptr noundef %67, ptr noundef %21, i32 noundef %6, i32 noundef %7)
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %205, %203
  br label %209

209:                                              ; preds = %192, %205, %200, %208
  %210 = phi i32 [ 3, %208 ], [ 1, %200 ], [ 1, %205 ], [ 0, %192 ]
  %211 = phi ptr [ %193, %208 ], [ %201, %200 ], [ %206, %205 ], [ %193, %192 ]
  switch i32 %210, label %219 [
    i32 0, label %212
    i32 3, label %218
  ], !prof !199

212:                                              ; preds = %209
  %213 = zext i32 %194 to i64
  %214 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !76
  %216 = zext i8 %215 to i32
  %217 = icmp eq i8 %215, 0
  br i1 %217, label %218, label %192, !prof !188, !llvm.loop !200

218:                                              ; preds = %212, %209
  br label %219

219:                                              ; preds = %209, %218, %186, %171, %184, %117, %119, %128
  %220 = phi ptr [ %129, %128 ], [ %115, %119 ], [ %115, %117 ], [ %185, %184 ], [ %183, %171 ], [ null, %186 ], [ null, %218 ], [ %211, %209 ]
  ret ptr %220
}

declare i32 @reverse_condition_maybe_unordered(i32 noundef) local_unnamed_addr #3

declare i32 @can_compare_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @split_comparison(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_conditional_move(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reverse_condition(i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_insv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_best_mode(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @store_fixed_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #12 !prof !64 {
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %15 [
    i16 37, label %8
    i16 39, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 888, ptr noundef nonnull @.str.1) #15
  br label %11

11:                                               ; preds = %8, %10
  %12 = add i64 %3, %2
  %13 = icmp ugt i64 %12, 32
  br i1 %13, label %14, label %70

14:                                               ; preds = %11
  tail call fastcc void @store_split_bit_field(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  br label %219

15:                                               ; preds = %5
  %16 = lshr i32 %6, 16
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !76
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr @word_mode, align 4, !tbaa !80
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !76
  %27 = icmp ugt i8 %20, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %15
  %29 = load i32, ptr @word_mode, align 4, !tbaa !80
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i32 [ %29, %28 ], [ %17, %22 ]
  %32 = trunc i64 %2 to i32
  %33 = shl nuw i64 %1, 3
  %34 = add i64 %33, %3
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.mem_attrs, ptr %37, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !123
  br label %42

42:                                               ; preds = %30, %39
  %43 = phi i32 [ %41, %39 ], [ 8, %30 ]
  %44 = lshr i32 %6, 27
  %45 = and i32 %44, 1
  %46 = tail call i32 @get_best_mode(i32 noundef %32, i32 noundef %35, i32 noundef %43, i32 noundef %31, i32 noundef %45) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call fastcc void @store_split_bit_field(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %34, ptr noundef %4)
  br label %219

49:                                               ; preds = %42
  %50 = zext i32 %46 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !76
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  %55 = icmp ugt i64 %54, %3
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = udiv i64 %3, %54
  %58 = mul nuw nsw i64 %57, %53
  %59 = add nuw nsw i64 %58, %1
  %60 = shl nuw nsw i64 %58, 3
  %61 = sub nsw i64 %3, %60
  br label %62

62:                                               ; preds = %56, %49
  %63 = phi i64 [ %59, %56 ], [ %1, %49 ]
  %64 = phi i64 [ %61, %56 ], [ %3, %49 ]
  %65 = urem i64 %63, %53
  %66 = shl nuw nsw i64 %65, 3
  %67 = add nsw i64 %66, %64
  %68 = sub i64 %63, %65
  %69 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %46, i64 noundef %68, i32 noundef 1, i32 noundef 1) #15
  br label %70

70:                                               ; preds = %11, %62
  %71 = phi i64 [ %3, %11 ], [ %67, %62 ]
  %72 = phi ptr [ %0, %11 ], [ %69, %62 ]
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = load i32, ptr %4, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 30
  br i1 %78, label %79, label %124

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !76
  %82 = icmp ult i64 %2, 64
  %83 = shl nsw i64 -1, %2
  %84 = xor i64 %83, -1
  %85 = select i1 %82, i64 %84, i64 -1
  %86 = and i64 %81, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = xor i64 %86, %83
  %90 = icmp eq i64 %89, -1
  %91 = select i1 %82, i1 %90, i1 false
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = icmp eq i64 %2, 64
  %94 = icmp eq i64 %86, -1
  %95 = and i1 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %92
  br label %97

97:                                               ; preds = %79, %92, %96
  %98 = phi i1 [ false, %96 ], [ true, %92 ], [ true, %79 ]
  %99 = trunc i64 %71 to i32
  %100 = trunc i64 %2 to i32
  %101 = icmp slt i32 %100, 64
  %102 = and i64 %2, 4294967295
  %103 = shl nsw i64 -1, %102
  %104 = xor i64 %103, -1
  %105 = select i1 %101, i64 %104, i64 -1
  %106 = and i64 %81, %105
  %107 = icmp slt i32 %99, 64
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = and i64 %71, 4294967295
  %110 = shl i64 %106, %109
  %111 = icmp sgt i32 %99, 0
  %112 = sub i64 64, %71
  %113 = and i64 %112, 4294967295
  %114 = lshr i64 %106, %113
  %115 = select i1 %111, i64 %114, i64 0
  br label %120

116:                                              ; preds = %97
  %117 = add i64 %71, 4294967232
  %118 = and i64 %117, 4294967295
  %119 = shl i64 %106, %118
  br label %120

120:                                              ; preds = %108, %116
  %121 = phi i64 [ %110, %108 ], [ 0, %116 ]
  %122 = phi i64 [ %115, %108 ], [ %119, %116 ]
  %123 = tail call ptr @immed_double_const(i64 noundef %121, i64 noundef %122, i32 noundef %75) #15
  br label %170

124:                                              ; preds = %70
  %125 = lshr i32 %76, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !76
  %130 = zext i8 %129 to i64
  %131 = shl nuw nsw i64 %130, 3
  %132 = icmp eq i64 %131, %2
  br i1 %132, label %141, label %133

133:                                              ; preds = %124
  %134 = add i64 %71, %2
  %135 = zext nneg i32 %75 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !76
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, 3
  %140 = icmp ne i64 %134, %139
  br label %141

141:                                              ; preds = %133, %124
  %142 = phi i1 [ false, %124 ], [ %140, %133 ]
  %143 = icmp eq i32 %126, %75
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = tail call ptr @convert_to_mode(i32 noundef %75, ptr noundef nonnull %4, i32 noundef 1) #15
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi ptr [ %145, %144 ], [ %4, %141 ]
  br i1 %142, label %148, label %164

148:                                              ; preds = %146
  %149 = trunc i64 %2 to i32
  %150 = icmp eq i32 %149, 0
  %151 = icmp slt i32 %149, 64
  %152 = sub i64 64, %2
  %153 = and i64 %152, 4294967295
  %154 = lshr i64 -1, %153
  %155 = select i1 %151, i64 %154, i64 -1
  %156 = select i1 %150, i64 0, i64 %155
  %157 = icmp sgt i32 %149, 64
  %158 = sub i64 128, %2
  %159 = and i64 %158, 4294967295
  %160 = lshr i64 -1, %159
  %161 = select i1 %157, i64 %160, i64 0
  %162 = tail call ptr @immed_double_const(i64 noundef %156, i64 noundef %161, i32 noundef %75) #15
  %163 = tail call ptr @expand_binop(i32 noundef %75, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %147, ptr noundef %162, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  br label %164

164:                                              ; preds = %148, %146
  %165 = phi ptr [ %163, %148 ], [ %147, %146 ]
  %166 = icmp eq i64 %71, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %71) #15
  %169 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %75, ptr noundef %165, ptr noundef %168, ptr noundef null, i32 noundef 1)
  br label %170

170:                                              ; preds = %164, %167, %120
  %171 = phi ptr [ %123, %120 ], [ %169, %167 ], [ %165, %164 ]
  %172 = phi i1 [ %87, %120 ], [ true, %167 ], [ true, %164 ]
  %173 = phi i1 [ %98, %120 ], [ true, %167 ], [ true, %164 ]
  %174 = tail call ptr @force_reg(i32 noundef %75, ptr noundef nonnull %72) #15
  br i1 %173, label %175, label %208

175:                                              ; preds = %170
  %176 = trunc i64 %71 to i32
  %177 = trunc i64 %2 to i32
  %178 = icmp ne i32 %177, 0
  %179 = icmp slt i32 %176, 64
  %180 = and i1 %178, %179
  %181 = and i64 %71, 4294967295
  %182 = shl nsw i64 -1, %181
  %183 = select i1 %180, i64 %182, i64 0
  %184 = add nsw i32 %176, %177
  %185 = icmp slt i32 %184, 64
  %186 = sub i32 64, %184
  %187 = zext nneg i32 %186 to i64
  %188 = lshr i64 -1, %187
  %189 = select i1 %185, i64 %188, i64 -1
  %190 = and i64 %189, %183
  %191 = icmp slt i32 %176, 65
  %192 = add i64 %71, 4294967232
  %193 = and i64 %192, 4294967295
  %194 = shl nsw i64 -1, %193
  %195 = select i1 %191, i64 -1, i64 %194
  %196 = icmp sgt i32 %184, 64
  %197 = and i1 %178, %196
  %198 = sub i32 128, %184
  %199 = zext nneg i32 %198 to i64
  %200 = lshr i64 -1, %199
  %201 = and i64 %200, %195
  %202 = xor i64 %201, -1
  %203 = xor i64 %190, -1
  %204 = select i1 %197, i64 %202, i64 -1
  %205 = tail call ptr @immed_double_const(i64 noundef %203, i64 noundef %204, i32 noundef %75) #15
  %206 = tail call ptr @expand_binop(i32 noundef %75, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %174, ptr noundef %205, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %207 = tail call ptr @force_reg(i32 noundef %75, ptr noundef %206) #15
  br label %208

208:                                              ; preds = %175, %170
  %209 = phi ptr [ %174, %170 ], [ %207, %175 ]
  br i1 %172, label %210, label %213

210:                                              ; preds = %208
  %211 = tail call ptr @expand_binop(i32 noundef %75, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %209, ptr noundef %171, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  %212 = tail call ptr @force_reg(i32 noundef %75, ptr noundef %211) #15
  br label %213

213:                                              ; preds = %210, %208
  %214 = phi ptr [ %209, %208 ], [ %212, %210 ]
  %215 = icmp eq ptr %72, %214
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = tail call ptr @copy_rtx(ptr noundef nonnull %72) #15
  %218 = tail call ptr @emit_move_insn(ptr noundef %217, ptr noundef %214) #15
  br label %219

219:                                              ; preds = %213, %216, %48, %14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @store_split_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #12 !prof !64 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %21
    i16 39, label %21
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !123
  %14 = icmp ugt i32 %13, 31
  %15 = or i1 %10, %14
  %16 = select i1 %14, i64 32, i64 8
  br i1 %15, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !123
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %7, %11, %4, %17, %4
  %22 = phi i64 [ 32, %4 ], [ %20, %17 ], [ %16, %11 ], [ 32, %4 ], [ 8, %7 ]
  %23 = load i32, ptr %3, align 8
  %24 = and i32 %23, 65535
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !80
  %28 = icmp ne i32 %27, 9
  %29 = icmp eq i32 %24, 30
  %30 = or i1 %28, %29
  br i1 %30, label %46, label %31

31:                                               ; preds = %21
  %32 = load i32, ptr @word_mode, align 4, !tbaa !80
  %33 = tail call ptr @gen_lowpart_common(i32 noundef %32, ptr noundef nonnull %3) #15
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %33, %3
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i32, ptr @word_mode, align 4, !tbaa !80
  %39 = load i32, ptr %3, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %38, i32 %41
  %44 = tail call ptr @force_reg(i32 noundef %43, ptr noundef nonnull %3) #15
  %45 = tail call ptr @gen_lowpart_common(i32 noundef %38, ptr noundef %44) #15
  br label %46

46:                                               ; preds = %37, %31, %21
  %47 = phi ptr [ %3, %21 ], [ %45, %37 ], [ %33, %31 ]
  %48 = icmp eq i64 %1, 0
  br i1 %48, label %102, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  br label %51

51:                                               ; preds = %49, %94
  %52 = phi i64 [ 0, %49 ], [ %100, %94 ]
  %53 = add i64 %52, %2
  %54 = udiv i64 %53, %22
  %55 = urem i64 %53, %22
  %56 = sub i64 %1, %52
  %57 = sub nsw i64 %22, %55
  %58 = tail call i64 @llvm.umin.i64(i64 %56, i64 %57)
  %59 = tail call i64 @llvm.umin.i64(i64 %58, i64 32)
  %60 = load i32, ptr %47, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 30
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load i64, ptr %50, align 8, !tbaa !76
  %65 = lshr i64 %64, %52
  %66 = shl nsw i64 -1, %59
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  %69 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %68) #15
  br label %73

70:                                               ; preds = %51
  %71 = load i32, ptr @word_mode, align 4, !tbaa !80
  %72 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %71, ptr noundef nonnull %47, i64 noundef 0, i64 noundef %59, i64 noundef %52, ptr noundef null, i32 noundef 1)
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi ptr [ %69, %63 ], [ %72, %70 ]
  %75 = load i32, ptr %0, align 8
  %76 = trunc i32 %75 to i16
  switch i16 %76, label %94 [
    i16 39, label %77
    i16 37, label %89
  ]

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load i32, ptr %79, align 8, !tbaa !76
  %81 = lshr i32 %80, 2
  %82 = trunc i64 %54 to i32
  %83 = add i32 %81, %82
  %84 = load ptr, ptr %78, align 8, !tbaa !76
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = tail call ptr @operand_subword_force(ptr noundef nonnull %84, i32 noundef %83, i32 noundef %87) #15
  br label %94

89:                                               ; preds = %73
  %90 = trunc i64 %54 to i32
  %91 = lshr i32 %75, 16
  %92 = and i32 %91, 255
  %93 = tail call ptr @operand_subword_force(ptr noundef nonnull %0, i32 noundef %90, i32 noundef %92) #15
  br label %94

94:                                               ; preds = %73, %89, %77
  %95 = phi ptr [ %88, %77 ], [ %93, %89 ], [ %0, %73 ]
  %96 = phi i64 [ 0, %77 ], [ 0, %89 ], [ %54, %73 ]
  %97 = mul i64 %96, %22
  %98 = lshr i64 %97, 3
  tail call fastcc void @store_fixed_bit_field(ptr noundef %95, i64 noundef %98, i64 noundef %59, i64 noundef %55, ptr noundef %74)
  %99 = add nuw nsw i64 %59, %52
  %100 = and i64 %99, 4294967295
  %101 = icmp ult i64 %100, %1
  br i1 %101, label %51, label %102, !llvm.loop !201

102:                                              ; preds = %94, %46
  ret void
}

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @extract_fixed_bit_field(i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #12 !prof !64 {
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %15 [
    i16 39, label %10
    i16 37, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = add i64 %4, %3
  %12 = icmp ugt i64 %11, 32
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @extract_split_bit_field(ptr noundef nonnull %1, i64 noundef %3, i64 noundef %4, i32 noundef %6)
  br label %168

15:                                               ; preds = %7
  %16 = trunc i64 %3 to i32
  %17 = shl nuw i64 %2, 3
  %18 = add i64 %17, %4
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !123
  br label %26

26:                                               ; preds = %15, %23
  %27 = phi i32 [ %25, %23 ], [ 8, %15 ]
  %28 = load i32, ptr @word_mode, align 4, !tbaa !80
  %29 = lshr i32 %8, 27
  %30 = and i32 %29, 1
  %31 = tail call i32 @get_best_mode(i32 noundef %16, i32 noundef %19, i32 noundef %27, i32 noundef %28, i32 noundef %30) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call fastcc ptr @extract_split_bit_field(ptr noundef nonnull %1, i64 noundef %3, i64 noundef %18, i32 noundef %6)
  br label %168

35:                                               ; preds = %26
  %36 = zext i32 %31 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !76
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = icmp ugt i64 %40, %4
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = udiv i64 %4, %40
  %44 = mul nuw nsw i64 %43, %39
  %45 = add nuw nsw i64 %44, %2
  %46 = shl nuw nsw i64 %44, 3
  %47 = sub nsw i64 %4, %46
  br label %48

48:                                               ; preds = %42, %35
  %49 = phi i64 [ %47, %42 ], [ %4, %35 ]
  %50 = phi i64 [ %45, %42 ], [ %2, %35 ]
  %51 = urem i64 %50, %39
  %52 = shl nuw nsw i64 %51, 3
  %53 = add i64 %52, %49
  %54 = sub i64 %50, %51
  %55 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef %31, i64 noundef %54, i32 noundef 1, i32 noundef 1) #15
  br label %56

56:                                               ; preds = %10, %48
  %57 = phi i64 [ %4, %10 ], [ %53, %48 ]
  %58 = phi ptr [ %1, %10 ], [ %55, %48 ]
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = icmp eq i32 %6, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %56
  %64 = icmp eq i64 %57, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %63
  %66 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %57) #15
  %67 = icmp eq ptr %5, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %5, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  %72 = select i1 %71, ptr %5, ptr null
  br label %73

73:                                               ; preds = %68, %65
  %74 = phi ptr [ null, %65 ], [ %72, %68 ]
  %75 = icmp eq i32 %61, %0
  %76 = select i1 %75, ptr %74, ptr null
  %77 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %61, ptr noundef nonnull %58, ptr noundef %66, ptr noundef %76, i32 noundef 1)
  br label %78

78:                                               ; preds = %73, %63
  %79 = phi ptr [ %77, %73 ], [ %58, %63 ]
  %80 = icmp eq i32 %61, %0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call ptr @convert_to_mode(i32 noundef %0, ptr noundef %79, i32 noundef 1) #15
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi ptr [ %82, %81 ], [ %79, %78 ]
  %85 = zext nneg i32 %61 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !76
  %88 = zext i8 %87 to i64
  %89 = shl nuw nsw i64 %88, 3
  %90 = add i64 %57, %3
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %168, label %92

92:                                               ; preds = %83
  %93 = load i32, ptr %84, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = trunc i64 %3 to i32
  %97 = icmp eq i32 %96, 0
  %98 = icmp slt i32 %96, 64
  %99 = sub i64 64, %3
  %100 = and i64 %99, 4294967295
  %101 = lshr i64 -1, %100
  %102 = select i1 %98, i64 %101, i64 -1
  %103 = select i1 %97, i64 0, i64 %102
  %104 = icmp sgt i32 %96, 64
  %105 = sub i64 128, %3
  %106 = and i64 %105, 4294967295
  %107 = lshr i64 -1, %106
  %108 = select i1 %104, i64 %107, i64 0
  %109 = tail call ptr @immed_double_const(i64 noundef %103, i64 noundef %108, i32 noundef %95) #15
  %110 = tail call ptr @expand_binop(i32 noundef %95, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %84, ptr noundef %109, ptr noundef %5, i32 noundef 1, i32 noundef 3) #15
  br label %168

111:                                              ; preds = %56
  %112 = tail call ptr @force_reg(i32 noundef %61, ptr noundef nonnull %58) #15
  %113 = icmp eq i32 %61, %0
  %114 = select i1 %113, ptr %5, ptr null
  %115 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !76
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %111
  %118 = add i64 %57, %3
  br label %119

119:                                              ; preds = %117, %130
  %120 = phi i8 [ %115, %117 ], [ %132, %130 ]
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !76
  %124 = zext i8 %123 to i64
  %125 = shl nuw nsw i64 %124, 3
  %126 = icmp ult i64 %125, %118
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = zext i8 %120 to i32
  %129 = tail call ptr @convert_to_mode(i32 noundef %128, ptr noundef %112, i32 noundef 0) #15
  br label %137

130:                                              ; preds = %119
  %131 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %121
  %132 = load i8, ptr %131, align 1, !tbaa !76
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %119, !llvm.loop !202

134:                                              ; preds = %130, %111
  %135 = phi i8 [ %115, %111 ], [ %132, %130 ]
  %136 = zext nneg i8 %135 to i32
  br label %137

137:                                              ; preds = %134, %127
  %138 = phi i8 [ %120, %127 ], [ %135, %134 ]
  %139 = phi i32 [ %128, %127 ], [ %136, %134 ]
  %140 = phi ptr [ %129, %127 ], [ %112, %134 ]
  %141 = zext i8 %138 to i64
  %142 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !76
  %144 = zext i8 %143 to i64
  %145 = shl nuw nsw i64 %144, 3
  %146 = add i64 %57, %3
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %137
  %149 = sub i64 %145, %146
  %150 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %149) #15
  %151 = icmp eq ptr %114, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %114, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 37
  %156 = select i1 %155, ptr %114, ptr null
  br label %157

157:                                              ; preds = %152, %148
  %158 = phi ptr [ null, %148 ], [ %156, %152 ]
  %159 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %139, ptr noundef %140, ptr noundef %150, ptr noundef %158, i32 noundef 1)
  br label %160

160:                                              ; preds = %157, %137
  %161 = phi ptr [ %159, %157 ], [ %140, %137 ]
  %162 = load i8, ptr %142, align 1, !tbaa !76
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 3
  %165 = sub i64 %164, %3
  %166 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %165) #15
  %167 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %139, ptr noundef %161, ptr noundef %166, ptr noundef %114, i32 noundef 0)
  br label %168

168:                                              ; preds = %83, %160, %92, %33, %13
  %169 = phi ptr [ %14, %13 ], [ %110, %92 ], [ %167, %160 ], [ %34, %33 ], [ %84, %83 ]
  ret ptr %169
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @extract_split_bit_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #12 !prof !64 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %21
    i16 39, label %21
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !123
  %14 = icmp ugt i32 %13, 31
  %15 = or i1 %10, %14
  %16 = select i1 %14, i64 32, i64 8
  br i1 %15, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !123
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %7, %11, %4, %17, %4
  %22 = phi i64 [ 32, %4 ], [ %20, %17 ], [ %16, %11 ], [ 32, %4 ], [ 8, %7 ]
  %23 = icmp eq i64 %1, 0
  br i1 %23, label %78, label %24

24:                                               ; preds = %21, %74
  %25 = phi i64 [ %76, %74 ], [ 0, %21 ]
  %26 = phi i1 [ true, %74 ], [ false, %21 ]
  %27 = phi ptr [ %75, %74 ], [ null, %21 ]
  %28 = add i64 %25, %2
  %29 = udiv i64 %28, %22
  %30 = urem i64 %28, %22
  %31 = sub i64 %1, %25
  %32 = sub nsw i64 %22, %30
  %33 = tail call i64 @llvm.umin.i64(i64 %31, i64 %32)
  %34 = tail call i64 @llvm.umin.i64(i64 %33, i64 32)
  %35 = load i32, ptr %0, align 8
  %36 = trunc i32 %35 to i16
  switch i16 %36, label %54 [
    i16 39, label %37
    i16 37, label %49
  ]

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load i32, ptr %39, align 8, !tbaa !76
  %41 = lshr i32 %40, 2
  %42 = trunc i64 %29 to i32
  %43 = add i32 %41, %42
  %44 = load ptr, ptr %38, align 8, !tbaa !76
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = tail call ptr @operand_subword_force(ptr noundef nonnull %44, i32 noundef %43, i32 noundef %47) #15
  br label %54

49:                                               ; preds = %24
  %50 = trunc i64 %29 to i32
  %51 = lshr i32 %35, 16
  %52 = and i32 %51, 255
  %53 = tail call ptr @operand_subword_force(ptr noundef nonnull %0, i32 noundef %50, i32 noundef %52) #15
  br label %54

54:                                               ; preds = %24, %49, %37
  %55 = phi ptr [ %48, %37 ], [ %53, %49 ], [ %0, %24 ]
  %56 = phi i64 [ 0, %37 ], [ 0, %49 ], [ %29, %24 ]
  %57 = load i32, ptr @word_mode, align 4, !tbaa !80
  %58 = mul i64 %56, %22
  %59 = lshr i64 %58, 3
  %60 = tail call fastcc ptr @extract_fixed_bit_field(i32 noundef %57, ptr noundef %55, i64 noundef %59, i64 noundef %34, i64 noundef %30, ptr noundef null, i32 noundef 1)
  %61 = add nuw nsw i64 %34, %25
  %62 = and i64 %61, 4294967295
  %63 = icmp eq i64 %62, %34
  br i1 %63, label %69, label %64

64:                                               ; preds = %54
  %65 = load i32, ptr @word_mode, align 4, !tbaa !80
  %66 = sub nsw i64 %62, %34
  %67 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %66) #15
  %68 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %65, ptr noundef %60, ptr noundef %67, ptr noundef null, i32 noundef 1)
  br label %69

69:                                               ; preds = %64, %54
  %70 = phi ptr [ %68, %64 ], [ %60, %54 ]
  br i1 %26, label %71, label %74

71:                                               ; preds = %69
  %72 = load i32, ptr @word_mode, align 4, !tbaa !80
  %73 = tail call ptr @expand_binop(i32 noundef %72, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %70, ptr noundef %27, ptr noundef null, i32 noundef 1, i32 noundef 3) #15
  br label %74

74:                                               ; preds = %69, %71
  %75 = phi ptr [ %73, %71 ], [ %70, %69 ]
  %76 = and i64 %61, 4294967295
  %77 = icmp ult i64 %76, %1
  br i1 %77, label %24, label %78, !llvm.loop !203

78:                                               ; preds = %74, %21
  %79 = phi ptr [ null, %21 ], [ %75, %74 ]
  %80 = icmp eq i32 %3, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, ptr @word_mode, align 4, !tbaa !80
  %83 = sub nsw i64 32, %1
  %84 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %83) #15
  %85 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %82, ptr noundef %79, ptr noundef %84, ptr noundef null, i32 noundef 0)
  %86 = load i32, ptr @word_mode, align 4, !tbaa !80
  %87 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %83) #15
  %88 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %86, ptr noundef %85, ptr noundef %87, ptr noundef null, i32 noundef 0)
  br label %89

89:                                               ; preds = %78, %81
  %90 = phi ptr [ %88, %81 ], [ %79, %78 ]
  ret ptr %90
}

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @assign_stack_temp(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_extzv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_extv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @convert_extracted_bit_field(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #12 !prof !64 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %2
  %9 = icmp eq i32 %7, %1
  %10 = or i1 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %4
  %12 = zext i32 %2 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !76
  %15 = and i8 %14, -2
  %16 = icmp eq i8 %15, 2
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !76
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 3
  %22 = tail call i32 @mode_for_size(i32 noundef %21, i32 noundef 2, i32 noundef 0) #15
  %23 = zext i8 %3 to i32
  %24 = tail call ptr @convert_to_mode(i32 noundef %22, ptr noundef nonnull %0, i32 noundef %23) #15
  %25 = tail call ptr @force_reg(i32 noundef %22, ptr noundef %24) #15
  %26 = load ptr, ptr @rtl_hooks, align 8, !tbaa !120
  %27 = tail call ptr %26(i32 noundef %2, ptr noundef %25) #15
  br label %31

28:                                               ; preds = %11
  %29 = zext i8 %3 to i32
  %30 = tail call ptr @convert_to_mode(i32 noundef %2, ptr noundef nonnull %0, i32 noundef %29) #15
  br label %31

31:                                               ; preds = %4, %28, %17
  %32 = phi ptr [ %30, %28 ], [ %27, %17 ], [ %0, %4 ]
  ret ptr %32
}

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @synth_mult(ptr nocapture noundef writeonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #12 !prof !64 {
  %5 = alloca %struct.mult_cost, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !76
  %9 = icmp ugt i8 %8, 4
  %10 = zext i8 %8 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = select i1 %9, i32 32, i32 %11
  %13 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %14 = load i16, ptr %2, align 2, !tbaa !166
  %15 = add i16 %14, 1
  store i16 %15, ptr %0, align 4, !tbaa !169
  %16 = getelementptr inbounds %struct.mult_cost, ptr %2, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !168
  %18 = add i16 %17, 1
  %19 = getelementptr inbounds %struct.mult_cost, ptr %0, i64 0, i32 1
  store i16 %18, ptr %19, align 2, !tbaa !171
  %20 = load i16, ptr %2, align 2
  %21 = icmp slt i16 %20, 0
  br i1 %21, label %571, label %22

22:                                               ; preds = %4
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i16, ptr %16, align 2, !tbaa !168
  %26 = icmp slt i16 %25, 1
  br i1 %26, label %571, label %27

27:                                               ; preds = %24, %22
  %28 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %6
  %29 = load i64, ptr %28, align 8, !tbaa !176
  %30 = and i64 %29, %1
  switch i64 %30, label %50 [
    i64 1, label %31
    i64 0, label %34
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 1, ptr %32, align 4, !tbaa !174
  store i16 0, ptr %0, align 4, !tbaa !169
  store i16 0, ptr %19, align 2, !tbaa !171
  %33 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  store i32 2, ptr %33, align 4, !tbaa !80
  br label %571

34:                                               ; preds = %27
  %35 = zext nneg i16 %20 to i32
  %36 = zext i8 %13 to i64
  %37 = getelementptr inbounds [2 x i32], ptr @zero_cost, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !80
  %39 = icmp sgt i32 %38, %35
  br i1 %39, label %571, label %40

40:                                               ; preds = %34
  %41 = icmp eq i32 %38, %35
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = load i16, ptr %16, align 2, !tbaa !168
  %44 = sext i16 %43 to i32
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %571, label %46

46:                                               ; preds = %42, %40
  %47 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 1, ptr %47, align 4, !tbaa !174
  %48 = trunc i32 %38 to i16
  store i16 %48, ptr %0, align 4, !tbaa !169
  store i16 %48, ptr %19, align 2, !tbaa !171
  %49 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  store i32 1, ptr %49, align 4, !tbaa !80
  br label %571

50:                                               ; preds = %27
  %51 = alloca [168 x i8], align 16
  %52 = alloca [168 x i8], align 16
  %53 = load i16, ptr %16, align 2
  %54 = zext i8 %13 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = xor i32 %55, %3
  %57 = zext i32 %56 to i64
  %58 = xor i64 %30, %57
  %59 = urem i64 %58, 1031
  %60 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !204
  %62 = icmp eq i64 %61, %30
  br i1 %62, label %63, label %96

63:                                               ; preds = %50
  %64 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !206
  %66 = icmp eq i32 %65, %3
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  %68 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 4
  %69 = load i8, ptr %68, align 4, !tbaa !207
  %70 = icmp eq i8 %69, %13
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !208
  switch i32 %73, label %84 [
    i32 0, label %96
    i32 10, label %74
  ]

74:                                               ; preds = %71
  %75 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !209
  %77 = icmp slt i16 %76, %20
  br i1 %77, label %96, label %78

78:                                               ; preds = %74
  %79 = icmp eq i16 %76, %20
  br i1 %79, label %80, label %571

80:                                               ; preds = %78
  %81 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 3, i32 1
  %82 = load i16, ptr %81, align 2, !tbaa !210
  %83 = icmp slt i16 %82, %53
  br i1 %83, label %96, label %571

84:                                               ; preds = %71
  %85 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 3
  %86 = load i16, ptr %85, align 8, !tbaa !209
  %87 = icmp slt i16 %20, %86
  br i1 %87, label %571, label %88

88:                                               ; preds = %84
  %89 = icmp eq i16 %20, %86
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 3, i32 1
  %92 = load i16, ptr %91, align 2, !tbaa !210
  %93 = icmp slt i16 %53, %92
  br i1 %93, label %571, label %94

94:                                               ; preds = %90, %88
  switch i32 %73, label %95 [
    i32 3, label %101
    i32 4, label %191
    i32 5, label %191
    i32 6, label %303
    i32 7, label %303
    i32 8, label %438
    i32 9, label %485
  ]

95:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2530, ptr noundef nonnull @.str.1) #15
  br label %96

96:                                               ; preds = %71, %95, %80, %74, %67, %63, %50
  %97 = phi i32 [ 10, %74 ], [ 10, %80 ], [ %73, %95 ], [ 1, %71 ], [ 1, %67 ], [ 1, %63 ], [ 1, %50 ]
  %98 = phi i8 [ 0, %74 ], [ 0, %80 ], [ 1, %95 ], [ 0, %71 ], [ 0, %67 ], [ 0, %63 ], [ 0, %50 ]
  %99 = and i64 %30, 1
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %182

101:                                              ; preds = %94, %96
  %102 = phi i32 [ %97, %96 ], [ %73, %94 ]
  %103 = phi i8 [ %98, %96 ], [ 1, %94 ]
  %104 = sub i64 0, %30
  %105 = and i64 %30, %104
  %106 = tail call i32 @floor_log2(i64 noundef %105) #15
  %107 = icmp slt i32 %106, %12
  br i1 %107, label %108, label %176

108:                                              ; preds = %101
  %109 = zext i32 %106 to i64
  %110 = lshr i64 %30, %109
  %111 = zext i8 %13 to i64
  %112 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %111, i64 %6
  %113 = load i32, ptr %112, align 4, !tbaa !80
  %114 = mul nsw i32 %113, %106
  %115 = sext i32 %106 to i64
  %116 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %111, i64 %6, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !80
  %118 = tail call i32 @llvm.smin.i32(i32 %117, i32 %114)
  %119 = trunc i32 %118 to i16
  %120 = sub i16 %20, %119
  store i16 %120, ptr %5, align 2, !tbaa !166
  %121 = sub i16 %53, %119
  %122 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %121, ptr %122, align 2, !tbaa !168
  call fastcc void @synth_mult(ptr noundef nonnull %51, i64 noundef %110, ptr noundef nonnull %5, i32 noundef %3)
  %123 = load i16, ptr %51, align 16, !tbaa !169
  %124 = add i16 %123, %119
  store i16 %124, ptr %51, align 16, !tbaa !169
  %125 = getelementptr inbounds %struct.mult_cost, ptr %51, i64 0, i32 1
  %126 = load i16, ptr %125, align 2, !tbaa !171
  %127 = add i16 %126, %119
  store i16 %127, ptr %125, align 2, !tbaa !171
  %128 = icmp slt i16 %124, %20
  br i1 %128, label %133, label %129

129:                                              ; preds = %108
  %130 = icmp eq i16 %124, %20
  %131 = icmp slt i16 %127, %53
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %142

133:                                              ; preds = %129, %108
  %134 = trunc i32 %106 to i8
  %135 = getelementptr inbounds %struct.algorithm, ptr %51, i64 0, i32 1
  %136 = load i16, ptr %135, align 4, !tbaa !174
  %137 = sext i16 %136 to i64
  %138 = getelementptr inbounds %struct.algorithm, ptr %51, i64 0, i32 3, i64 %137
  store i8 %134, ptr %138, align 1, !tbaa !76
  %139 = load i16, ptr %135, align 4, !tbaa !174
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds %struct.algorithm, ptr %51, i64 0, i32 2, i64 %140
  store i32 3, ptr %141, align 4, !tbaa !80
  br label %142

142:                                              ; preds = %133, %129
  %143 = phi i16 [ %124, %133 ], [ %20, %129 ]
  %144 = phi i16 [ %127, %133 ], [ %53, %129 ]
  %145 = phi ptr [ %51, %133 ], [ %52, %129 ]
  %146 = phi ptr [ %52, %133 ], [ %51, %129 ]
  %147 = icmp slt i64 %1, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %142
  %149 = ashr i64 %1, %109
  %150 = load i32, ptr %112, align 4, !tbaa !80
  %151 = mul nsw i32 %150, %106
  %152 = load i32, ptr %116, align 4, !tbaa !80
  %153 = tail call i32 @llvm.smin.i32(i32 %152, i32 %151)
  %154 = trunc i32 %153 to i16
  %155 = sub i16 %143, %154
  store i16 %155, ptr %5, align 2, !tbaa !166
  %156 = sub i16 %144, %154
  store i16 %156, ptr %122, align 2, !tbaa !168
  call fastcc void @synth_mult(ptr noundef nonnull %146, i64 noundef %149, ptr noundef nonnull %5, i32 noundef %3)
  %157 = load i16, ptr %146, align 16, !tbaa !169
  %158 = add i16 %157, %154
  store i16 %158, ptr %146, align 16, !tbaa !169
  %159 = getelementptr inbounds %struct.mult_cost, ptr %146, i64 0, i32 1
  %160 = load i16, ptr %159, align 2, !tbaa !171
  %161 = add i16 %160, %154
  store i16 %161, ptr %159, align 2, !tbaa !171
  %162 = icmp slt i16 %158, %143
  br i1 %162, label %167, label %163

163:                                              ; preds = %148
  %164 = icmp eq i16 %158, %143
  %165 = icmp slt i16 %161, %144
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %176

167:                                              ; preds = %163, %148
  %168 = trunc i32 %106 to i8
  %169 = getelementptr inbounds %struct.algorithm, ptr %146, i64 0, i32 1
  %170 = load i16, ptr %169, align 4, !tbaa !174
  %171 = sext i16 %170 to i64
  %172 = getelementptr inbounds %struct.algorithm, ptr %146, i64 0, i32 3, i64 %171
  store i8 %168, ptr %172, align 1, !tbaa !76
  %173 = load i16, ptr %169, align 4, !tbaa !174
  %174 = sext i16 %173 to i64
  %175 = getelementptr inbounds %struct.algorithm, ptr %146, i64 0, i32 2, i64 %174
  store i32 3, ptr %175, align 4, !tbaa !80
  br label %176

176:                                              ; preds = %142, %167, %163, %101
  %177 = phi i16 [ %158, %167 ], [ %143, %163 ], [ %143, %142 ], [ %20, %101 ]
  %178 = phi i16 [ %161, %167 ], [ %144, %163 ], [ %144, %142 ], [ %53, %101 ]
  %179 = phi ptr [ %146, %167 ], [ %145, %163 ], [ %145, %142 ], [ %52, %101 ]
  %180 = phi ptr [ %145, %167 ], [ %146, %163 ], [ %146, %142 ], [ %51, %101 ]
  %181 = icmp eq i8 %103, 0
  br i1 %181, label %182, label %527

182:                                              ; preds = %176, %96
  %183 = phi i32 [ %97, %96 ], [ %102, %176 ]
  %184 = phi i8 [ %98, %96 ], [ 0, %176 ]
  %185 = phi i16 [ %20, %96 ], [ %177, %176 ]
  %186 = phi i16 [ %53, %96 ], [ %178, %176 ]
  %187 = phi ptr [ %52, %96 ], [ %179, %176 ]
  %188 = phi ptr [ %51, %96 ], [ %180, %176 ]
  %189 = and i64 %30, 1
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %303, label %191

191:                                              ; preds = %94, %94, %182
  %192 = phi i32 [ %183, %182 ], [ %73, %94 ], [ %73, %94 ]
  %193 = phi i8 [ %184, %182 ], [ 1, %94 ], [ 1, %94 ]
  %194 = phi i16 [ %185, %182 ], [ %20, %94 ], [ %20, %94 ]
  %195 = phi i16 [ %186, %182 ], [ %53, %94 ], [ %53, %94 ]
  %196 = phi ptr [ %187, %182 ], [ %52, %94 ], [ %52, %94 ]
  %197 = phi ptr [ %188, %182 ], [ %51, %94 ], [ %51, %94 ]
  br label %198

198:                                              ; preds = %198, %191
  %199 = phi i64 [ 1, %191 ], [ %202, %198 ]
  %200 = and i64 %199, %30
  %201 = icmp eq i64 %200, 0
  %202 = shl i64 %199, 1
  br i1 %201, label %203, label %198, !llvm.loop !211

203:                                              ; preds = %198
  %204 = icmp eq i64 %199, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %203
  %206 = icmp ugt i64 %199, 2
  %207 = icmp ne i64 %30, 3
  %208 = and i1 %207, %206
  br i1 %208, label %209, label %228

209:                                              ; preds = %205, %203
  %210 = zext i8 %13 to i64
  %211 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %210, i64 %6
  %212 = load i32, ptr %211, align 4, !tbaa !80
  %213 = trunc i32 %212 to i16
  %214 = sub i16 %194, %213
  store i16 %214, ptr %5, align 2, !tbaa !166
  %215 = sub i16 %195, %213
  %216 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %215, ptr %216, align 2, !tbaa !168
  %217 = add i64 %30, 1
  call fastcc void @synth_mult(ptr noundef %197, i64 noundef %217, ptr noundef nonnull %5, i32 noundef %3)
  %218 = load i16, ptr %197, align 4, !tbaa !169
  %219 = add i16 %218, %213
  store i16 %219, ptr %197, align 4, !tbaa !169
  %220 = getelementptr inbounds %struct.mult_cost, ptr %197, i64 0, i32 1
  %221 = load i16, ptr %220, align 2, !tbaa !171
  %222 = add i16 %221, %213
  store i16 %222, ptr %220, align 2, !tbaa !171
  %223 = icmp slt i16 %219, %194
  br i1 %223, label %247, label %224

224:                                              ; preds = %209
  %225 = icmp eq i16 %219, %194
  %226 = icmp slt i16 %222, %195
  %227 = select i1 %225, i1 %226, i1 false
  br i1 %227, label %247, label %258

228:                                              ; preds = %205
  %229 = zext i8 %13 to i64
  %230 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %229, i64 %6
  %231 = load i32, ptr %230, align 4, !tbaa !80
  %232 = trunc i32 %231 to i16
  %233 = sub i16 %194, %232
  store i16 %233, ptr %5, align 2, !tbaa !166
  %234 = sub i16 %195, %232
  %235 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %234, ptr %235, align 2, !tbaa !168
  %236 = add i64 %30, -1
  call fastcc void @synth_mult(ptr noundef %197, i64 noundef %236, ptr noundef nonnull %5, i32 noundef %3)
  %237 = load i16, ptr %197, align 4, !tbaa !169
  %238 = add i16 %237, %232
  store i16 %238, ptr %197, align 4, !tbaa !169
  %239 = getelementptr inbounds %struct.mult_cost, ptr %197, i64 0, i32 1
  %240 = load i16, ptr %239, align 2, !tbaa !171
  %241 = add i16 %240, %232
  store i16 %241, ptr %239, align 2, !tbaa !171
  %242 = icmp slt i16 %238, %194
  br i1 %242, label %247, label %243

243:                                              ; preds = %228
  %244 = icmp eq i16 %238, %194
  %245 = icmp slt i16 %241, %195
  %246 = select i1 %244, i1 %245, i1 false
  br i1 %246, label %247, label %258

247:                                              ; preds = %228, %243, %209, %224
  %248 = phi i32 [ 5, %224 ], [ 5, %209 ], [ 4, %243 ], [ 4, %228 ]
  %249 = phi i16 [ %219, %224 ], [ %219, %209 ], [ %238, %243 ], [ %238, %228 ]
  %250 = phi i16 [ %222, %224 ], [ %222, %209 ], [ %241, %243 ], [ %241, %228 ]
  %251 = getelementptr inbounds %struct.algorithm, ptr %197, i64 0, i32 1
  %252 = load i16, ptr %251, align 4, !tbaa !174
  %253 = sext i16 %252 to i64
  %254 = getelementptr inbounds %struct.algorithm, ptr %197, i64 0, i32 3, i64 %253
  store i8 0, ptr %254, align 1, !tbaa !76
  %255 = load i16, ptr %251, align 4, !tbaa !174
  %256 = sext i16 %255 to i64
  %257 = getelementptr inbounds %struct.algorithm, ptr %197, i64 0, i32 2, i64 %256
  store i32 %248, ptr %257, align 4, !tbaa !80
  br label %258

258:                                              ; preds = %247, %243, %224
  %259 = phi i16 [ %194, %224 ], [ %194, %243 ], [ %249, %247 ]
  %260 = phi i16 [ %195, %224 ], [ %195, %243 ], [ %250, %247 ]
  %261 = phi ptr [ %196, %224 ], [ %196, %243 ], [ %197, %247 ]
  %262 = phi ptr [ %197, %224 ], [ %197, %243 ], [ %196, %247 ]
  %263 = sub i64 1, %1
  %264 = tail call i32 @exact_log2(i64 noundef %263) #15
  %265 = icmp sgt i32 %264, -1
  %266 = icmp slt i32 %264, %12
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %297

268:                                              ; preds = %258
  %269 = zext i8 %13 to i64
  %270 = zext nneg i32 %264 to i64
  %271 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub1_cost, i64 0, i64 %269, i64 %6, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !80
  %273 = trunc i32 %272 to i16
  %274 = sub i16 %259, %273
  store i16 %274, ptr %5, align 2, !tbaa !166
  %275 = sub i16 %260, %273
  %276 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %275, ptr %276, align 2, !tbaa !168
  %277 = lshr i64 %263, %270
  call fastcc void @synth_mult(ptr noundef %262, i64 noundef %277, ptr noundef nonnull %5, i32 noundef %3)
  %278 = load i16, ptr %262, align 4, !tbaa !169
  %279 = add i16 %278, %273
  store i16 %279, ptr %262, align 4, !tbaa !169
  %280 = getelementptr inbounds %struct.mult_cost, ptr %262, i64 0, i32 1
  %281 = load i16, ptr %280, align 2, !tbaa !171
  %282 = add i16 %281, %273
  store i16 %282, ptr %280, align 2, !tbaa !171
  %283 = icmp slt i16 %279, %259
  br i1 %283, label %288, label %284

284:                                              ; preds = %268
  %285 = icmp eq i16 %279, %259
  %286 = icmp slt i16 %282, %260
  %287 = select i1 %285, i1 %286, i1 false
  br i1 %287, label %288, label %297

288:                                              ; preds = %284, %268
  %289 = trunc i32 %264 to i8
  %290 = getelementptr inbounds %struct.algorithm, ptr %262, i64 0, i32 1
  %291 = load i16, ptr %290, align 4, !tbaa !174
  %292 = sext i16 %291 to i64
  %293 = getelementptr inbounds %struct.algorithm, ptr %262, i64 0, i32 3, i64 %292
  store i8 %289, ptr %293, align 1, !tbaa !76
  %294 = load i16, ptr %290, align 4, !tbaa !174
  %295 = sext i16 %294 to i64
  %296 = getelementptr inbounds %struct.algorithm, ptr %262, i64 0, i32 2, i64 %295
  store i32 5, ptr %296, align 4, !tbaa !80
  br label %297

297:                                              ; preds = %284, %288, %258
  %298 = phi i16 [ %279, %288 ], [ %259, %284 ], [ %259, %258 ]
  %299 = phi i16 [ %282, %288 ], [ %260, %284 ], [ %260, %258 ]
  %300 = phi ptr [ %262, %288 ], [ %261, %284 ], [ %261, %258 ]
  %301 = phi ptr [ %261, %288 ], [ %262, %284 ], [ %262, %258 ]
  %302 = icmp eq i8 %193, 0
  br i1 %302, label %303, label %527

303:                                              ; preds = %297, %94, %94, %182
  %304 = phi i32 [ %183, %182 ], [ %73, %94 ], [ %73, %94 ], [ %192, %297 ]
  %305 = phi i8 [ %184, %182 ], [ 1, %94 ], [ 1, %94 ], [ 0, %297 ]
  %306 = phi i16 [ %185, %182 ], [ %20, %94 ], [ %20, %94 ], [ %298, %297 ]
  %307 = phi i16 [ %186, %182 ], [ %53, %94 ], [ %53, %94 ], [ %299, %297 ]
  %308 = phi ptr [ %187, %182 ], [ %52, %94 ], [ %52, %94 ], [ %300, %297 ]
  %309 = phi ptr [ %188, %182 ], [ %51, %94 ], [ %51, %94 ], [ %301, %297 ]
  %310 = add i64 %30, -1
  %311 = tail call i32 @floor_log2(i64 noundef %310) #15
  %312 = icmp sgt i32 %311, 1
  br i1 %312, label %313, label %429

313:                                              ; preds = %303
  %314 = icmp ne i8 %305, 0
  %315 = icmp ne i32 %304, 6
  %316 = and i1 %315, %314
  %317 = icmp eq i8 %305, 0
  %318 = icmp eq i32 %304, 7
  %319 = or i1 %318, %317
  %320 = zext i8 %13 to i64
  %321 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %320, i64 %6
  %322 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  %323 = zext nneg i32 %311 to i64
  %324 = zext nneg i32 %12 to i64
  br label %325

325:                                              ; preds = %420, %313
  %326 = phi i64 [ %323, %313 ], [ %426, %420 ]
  %327 = phi ptr [ %309, %313 ], [ %425, %420 ]
  %328 = phi ptr [ %308, %313 ], [ %424, %420 ]
  %329 = phi i16 [ %307, %313 ], [ %423, %420 ]
  %330 = phi i16 [ %306, %313 ], [ %422, %420 ]
  %331 = shl nuw i64 1, %326
  %332 = add nuw i64 %331, 1
  %333 = urem i64 %30, %332
  %334 = udiv i64 %30, %332
  %335 = icmp eq i64 %333, 0
  %336 = icmp ugt i64 %30, %332
  %337 = and i1 %336, %335
  %338 = icmp slt i64 %326, %324
  %339 = select i1 %337, i1 %338, i1 false
  %340 = xor i1 %339, true
  %341 = or i1 %316, %340
  br i1 %341, label %369, label %342

342:                                              ; preds = %325
  %343 = load i32, ptr %321, align 4, !tbaa !80
  %344 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %320, i64 %6, i64 %326
  %345 = load i32, ptr %344, align 4, !tbaa !80
  %346 = add nsw i32 %345, %343
  %347 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %320, i64 %6, i64 %326
  %348 = load i32, ptr %347, align 4, !tbaa !80
  %349 = icmp slt i32 %348, %346
  %350 = select i1 %349, i32 %348, i32 %343
  %351 = tail call i32 @llvm.smin.i32(i32 %348, i32 %346)
  %352 = trunc i32 %351 to i16
  %353 = sub i16 %330, %352
  store i16 %353, ptr %5, align 2, !tbaa !166
  %354 = trunc i32 %350 to i16
  %355 = sub i16 %329, %354
  store i16 %355, ptr %322, align 2, !tbaa !168
  call fastcc void @synth_mult(ptr noundef %327, i64 noundef %334, ptr noundef nonnull %5, i32 noundef %3)
  %356 = load i16, ptr %327, align 4, !tbaa !169
  %357 = add i16 %356, %352
  store i16 %357, ptr %327, align 4, !tbaa !169
  %358 = getelementptr inbounds %struct.mult_cost, ptr %327, i64 0, i32 1
  %359 = load i16, ptr %358, align 2, !tbaa !171
  %360 = add i16 %359, %354
  %361 = sext i16 %360 to i32
  %362 = icmp sgt i32 %351, %361
  %363 = select i1 %362, i16 %352, i16 %360
  store i16 %363, ptr %358, align 2, !tbaa !171
  %364 = icmp slt i16 %357, %330
  br i1 %364, label %408, label %365

365:                                              ; preds = %342
  %366 = icmp eq i16 %357, %330
  %367 = icmp slt i16 %363, %329
  %368 = select i1 %366, i1 %367, i1 false
  br i1 %368, label %408, label %420

369:                                              ; preds = %325
  %370 = add i64 %331, -1
  %371 = urem i64 %30, %370
  %372 = udiv i64 %30, %370
  %373 = icmp eq i64 %371, 0
  %374 = icmp ugt i64 %30, %370
  %375 = and i1 %374, %373
  %376 = select i1 %375, i1 %338, i1 false
  br i1 %376, label %377, label %420

377:                                              ; preds = %369
  br i1 %319, label %378, label %420

378:                                              ; preds = %377
  %379 = zext i8 %13 to i64
  %380 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %379, i64 %6
  %381 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  %382 = load i32, ptr %380, align 4, !tbaa !80
  %383 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %379, i64 %6, i64 %326
  %384 = load i32, ptr %383, align 4, !tbaa !80
  %385 = add nsw i32 %384, %382
  %386 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %379, i64 %6, i64 %326
  %387 = load i32, ptr %386, align 4, !tbaa !80
  %388 = icmp slt i32 %387, %385
  %389 = select i1 %388, i32 %387, i32 %382
  %390 = tail call i32 @llvm.smin.i32(i32 %387, i32 %385)
  %391 = trunc i32 %390 to i16
  %392 = sub i16 %330, %391
  store i16 %392, ptr %5, align 2, !tbaa !166
  %393 = trunc i32 %389 to i16
  %394 = sub i16 %329, %393
  store i16 %394, ptr %381, align 2, !tbaa !168
  call fastcc void @synth_mult(ptr noundef %327, i64 noundef %372, ptr noundef nonnull %5, i32 noundef %3)
  %395 = load i16, ptr %327, align 4, !tbaa !169
  %396 = add i16 %395, %391
  store i16 %396, ptr %327, align 4, !tbaa !169
  %397 = getelementptr inbounds %struct.mult_cost, ptr %327, i64 0, i32 1
  %398 = load i16, ptr %397, align 2, !tbaa !171
  %399 = add i16 %398, %393
  %400 = sext i16 %399 to i32
  %401 = icmp sgt i32 %390, %400
  %402 = select i1 %401, i16 %391, i16 %399
  store i16 %402, ptr %397, align 2, !tbaa !171
  %403 = icmp slt i16 %396, %330
  br i1 %403, label %408, label %404

404:                                              ; preds = %378
  %405 = icmp eq i16 %396, %330
  %406 = icmp slt i16 %402, %329
  %407 = select i1 %405, i1 %406, i1 false
  br i1 %407, label %408, label %420

408:                                              ; preds = %378, %404, %342, %365
  %409 = phi i32 [ 6, %365 ], [ 6, %342 ], [ 7, %404 ], [ 7, %378 ]
  %410 = phi i16 [ %357, %365 ], [ %357, %342 ], [ %396, %404 ], [ %396, %378 ]
  %411 = phi i16 [ %363, %365 ], [ %363, %342 ], [ %402, %404 ], [ %402, %378 ]
  %412 = trunc i64 %326 to i8
  %413 = getelementptr inbounds %struct.algorithm, ptr %327, i64 0, i32 1
  %414 = load i16, ptr %413, align 4, !tbaa !174
  %415 = sext i16 %414 to i64
  %416 = getelementptr inbounds %struct.algorithm, ptr %327, i64 0, i32 3, i64 %415
  store i8 %412, ptr %416, align 1, !tbaa !76
  %417 = load i16, ptr %413, align 4, !tbaa !174
  %418 = sext i16 %417 to i64
  %419 = getelementptr inbounds %struct.algorithm, ptr %327, i64 0, i32 2, i64 %418
  store i32 %409, ptr %419, align 4, !tbaa !80
  br label %420

420:                                              ; preds = %408, %369, %377, %404, %365
  %421 = phi i1 [ false, %365 ], [ false, %404 ], [ true, %377 ], [ true, %369 ], [ false, %408 ]
  %422 = phi i16 [ %330, %365 ], [ %330, %404 ], [ %330, %377 ], [ %330, %369 ], [ %410, %408 ]
  %423 = phi i16 [ %329, %365 ], [ %329, %404 ], [ %329, %377 ], [ %329, %369 ], [ %411, %408 ]
  %424 = phi ptr [ %328, %365 ], [ %328, %404 ], [ %328, %377 ], [ %328, %369 ], [ %327, %408 ]
  %425 = phi ptr [ %327, %365 ], [ %327, %404 ], [ %327, %377 ], [ %327, %369 ], [ %328, %408 ]
  %426 = add nsw i64 %326, -1
  %427 = icmp sgt i64 %326, 2
  %428 = and i1 %421, %427
  br i1 %428, label %325, label %429, !llvm.loop !212

429:                                              ; preds = %420, %303
  %430 = phi i16 [ %306, %303 ], [ %422, %420 ]
  %431 = phi i16 [ %307, %303 ], [ %423, %420 ]
  %432 = phi ptr [ %308, %303 ], [ %424, %420 ]
  %433 = phi ptr [ %309, %303 ], [ %425, %420 ]
  %434 = icmp eq i8 %305, 0
  br i1 %434, label %435, label %527

435:                                              ; preds = %429
  %436 = and i64 %30, 1
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %527, label %438

438:                                              ; preds = %94, %435
  %439 = phi i1 [ true, %435 ], [ false, %94 ]
  %440 = phi i16 [ %430, %435 ], [ %20, %94 ]
  %441 = phi i16 [ %431, %435 ], [ %53, %94 ]
  %442 = phi ptr [ %432, %435 ], [ %52, %94 ]
  %443 = phi ptr [ %433, %435 ], [ %51, %94 ]
  %444 = add i64 %30, -1
  %445 = sub i64 1, %30
  %446 = and i64 %444, %445
  %447 = tail call i32 @exact_log2(i64 noundef %446) #15
  %448 = icmp sgt i32 %447, -1
  %449 = icmp slt i32 %447, %12
  %450 = select i1 %448, i1 %449, i1 false
  br i1 %450, label %451, label %480

451:                                              ; preds = %438
  %452 = zext i8 %13 to i64
  %453 = zext nneg i32 %447 to i64
  %454 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftadd_cost, i64 0, i64 %452, i64 %6, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !80
  %456 = trunc i32 %455 to i16
  %457 = sub i16 %440, %456
  store i16 %457, ptr %5, align 2, !tbaa !166
  %458 = sub i16 %441, %456
  %459 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %458, ptr %459, align 2, !tbaa !168
  %460 = lshr i64 %444, %453
  call fastcc void @synth_mult(ptr noundef %443, i64 noundef %460, ptr noundef nonnull %5, i32 noundef %3)
  %461 = load i16, ptr %443, align 4, !tbaa !169
  %462 = add i16 %461, %456
  store i16 %462, ptr %443, align 4, !tbaa !169
  %463 = getelementptr inbounds %struct.mult_cost, ptr %443, i64 0, i32 1
  %464 = load i16, ptr %463, align 2, !tbaa !171
  %465 = add i16 %464, %456
  store i16 %465, ptr %463, align 2, !tbaa !171
  %466 = icmp slt i16 %462, %440
  br i1 %466, label %471, label %467

467:                                              ; preds = %451
  %468 = icmp eq i16 %462, %440
  %469 = icmp slt i16 %465, %441
  %470 = select i1 %468, i1 %469, i1 false
  br i1 %470, label %471, label %480

471:                                              ; preds = %467, %451
  %472 = trunc i32 %447 to i8
  %473 = getelementptr inbounds %struct.algorithm, ptr %443, i64 0, i32 1
  %474 = load i16, ptr %473, align 4, !tbaa !174
  %475 = sext i16 %474 to i64
  %476 = getelementptr inbounds %struct.algorithm, ptr %443, i64 0, i32 3, i64 %475
  store i8 %472, ptr %476, align 1, !tbaa !76
  %477 = load i16, ptr %473, align 4, !tbaa !174
  %478 = sext i16 %477 to i64
  %479 = getelementptr inbounds %struct.algorithm, ptr %443, i64 0, i32 2, i64 %478
  store i32 8, ptr %479, align 4, !tbaa !80
  br label %480

480:                                              ; preds = %467, %471, %438
  %481 = phi i16 [ %462, %471 ], [ %440, %467 ], [ %440, %438 ]
  %482 = phi i16 [ %465, %471 ], [ %441, %467 ], [ %441, %438 ]
  %483 = phi ptr [ %443, %471 ], [ %442, %467 ], [ %442, %438 ]
  %484 = phi ptr [ %442, %471 ], [ %443, %467 ], [ %443, %438 ]
  br i1 %439, label %485, label %527

485:                                              ; preds = %94, %480
  %486 = phi i8 [ 0, %480 ], [ 1, %94 ]
  %487 = phi i16 [ %481, %480 ], [ %20, %94 ]
  %488 = phi i16 [ %482, %480 ], [ %53, %94 ]
  %489 = phi ptr [ %483, %480 ], [ %52, %94 ]
  %490 = phi ptr [ %484, %480 ], [ %51, %94 ]
  %491 = add i64 %30, 1
  %492 = xor i64 %30, -1
  %493 = and i64 %491, %492
  %494 = tail call i32 @exact_log2(i64 noundef %493) #15
  %495 = icmp sgt i32 %494, -1
  %496 = icmp slt i32 %494, %12
  %497 = select i1 %495, i1 %496, i1 false
  br i1 %497, label %498, label %527

498:                                              ; preds = %485
  %499 = zext i8 %13 to i64
  %500 = zext nneg i32 %494 to i64
  %501 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shiftsub0_cost, i64 0, i64 %499, i64 %6, i64 %500
  %502 = load i32, ptr %501, align 4, !tbaa !80
  %503 = trunc i32 %502 to i16
  %504 = sub i16 %487, %503
  store i16 %504, ptr %5, align 2, !tbaa !166
  %505 = sub i16 %488, %503
  %506 = getelementptr inbounds %struct.mult_cost, ptr %5, i64 0, i32 1
  store i16 %505, ptr %506, align 2, !tbaa !168
  %507 = lshr i64 %491, %500
  call fastcc void @synth_mult(ptr noundef %490, i64 noundef %507, ptr noundef nonnull %5, i32 noundef %3)
  %508 = load i16, ptr %490, align 4, !tbaa !169
  %509 = add i16 %508, %503
  store i16 %509, ptr %490, align 4, !tbaa !169
  %510 = getelementptr inbounds %struct.mult_cost, ptr %490, i64 0, i32 1
  %511 = load i16, ptr %510, align 2, !tbaa !171
  %512 = add i16 %511, %503
  store i16 %512, ptr %510, align 2, !tbaa !171
  %513 = icmp slt i16 %509, %487
  br i1 %513, label %518, label %514

514:                                              ; preds = %498
  %515 = icmp eq i16 %509, %487
  %516 = icmp slt i16 %512, %488
  %517 = select i1 %515, i1 %516, i1 false
  br i1 %517, label %518, label %527

518:                                              ; preds = %514, %498
  %519 = trunc i32 %494 to i8
  %520 = getelementptr inbounds %struct.algorithm, ptr %490, i64 0, i32 1
  %521 = load i16, ptr %520, align 4, !tbaa !174
  %522 = sext i16 %521 to i64
  %523 = getelementptr inbounds %struct.algorithm, ptr %490, i64 0, i32 3, i64 %522
  store i8 %519, ptr %523, align 1, !tbaa !76
  %524 = load i16, ptr %520, align 4, !tbaa !174
  %525 = sext i16 %524 to i64
  %526 = getelementptr inbounds %struct.algorithm, ptr %490, i64 0, i32 2, i64 %525
  store i32 9, ptr %526, align 4, !tbaa !80
  br label %527

527:                                              ; preds = %485, %480, %518, %514, %435, %429, %297, %176
  %528 = phi i8 [ 1, %176 ], [ 1, %297 ], [ 1, %429 ], [ %486, %518 ], [ %486, %514 ], [ 0, %435 ], [ 1, %480 ], [ %486, %485 ]
  %529 = phi i16 [ %177, %176 ], [ %298, %297 ], [ %430, %429 ], [ %509, %518 ], [ %487, %514 ], [ %430, %435 ], [ %481, %480 ], [ %487, %485 ]
  %530 = phi i16 [ %178, %176 ], [ %299, %297 ], [ %431, %429 ], [ %512, %518 ], [ %488, %514 ], [ %431, %435 ], [ %482, %480 ], [ %488, %485 ]
  %531 = phi ptr [ %179, %176 ], [ %300, %297 ], [ %432, %429 ], [ %490, %518 ], [ %489, %514 ], [ %432, %435 ], [ %483, %480 ], [ %489, %485 ]
  %532 = load i16, ptr %2, align 2, !tbaa !166
  %533 = icmp slt i16 %529, %532
  br i1 %533, label %545, label %534

534:                                              ; preds = %527
  %535 = icmp eq i16 %529, %532
  br i1 %535, label %536, label %539

536:                                              ; preds = %534
  %537 = load i16, ptr %16, align 2, !tbaa !168
  %538 = icmp slt i16 %530, %537
  br i1 %538, label %545, label %539

539:                                              ; preds = %536, %534
  store i64 %30, ptr %60, align 8, !tbaa !204
  %540 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 1
  store i32 %3, ptr %540, align 8, !tbaa !206
  %541 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 4
  store i8 %13, ptr %541, align 4, !tbaa !207
  %542 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 2
  store i32 10, ptr %542, align 4, !tbaa !208
  %543 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 3
  %544 = load i32, ptr %2, align 2
  store i32 %544, ptr %543, align 8
  br label %571

545:                                              ; preds = %536, %527
  %546 = icmp eq i8 %528, 0
  br i1 %546, label %547, label %558

547:                                              ; preds = %545
  store i64 %30, ptr %60, align 8, !tbaa !204
  %548 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 1
  store i32 %3, ptr %548, align 8, !tbaa !206
  %549 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 4
  store i8 %13, ptr %549, align 4, !tbaa !207
  %550 = getelementptr inbounds %struct.algorithm, ptr %531, i64 0, i32 1
  %551 = load i16, ptr %550, align 4, !tbaa !174
  %552 = sext i16 %551 to i64
  %553 = getelementptr inbounds %struct.algorithm, ptr %531, i64 0, i32 2, i64 %552
  %554 = load i32, ptr %553, align 4, !tbaa !80
  %555 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 2
  store i32 %554, ptr %555, align 4, !tbaa !208
  %556 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 3
  store i16 %529, ptr %556, align 8, !tbaa !209
  %557 = getelementptr inbounds [1031 x %struct.alg_hash_entry], ptr @alg_hash, i64 0, i64 %59, i32 3, i32 1
  store i16 %530, ptr %557, align 2, !tbaa !210
  br label %558

558:                                              ; preds = %547, %545
  %559 = getelementptr inbounds %struct.algorithm, ptr %531, i64 0, i32 1
  %560 = load i16, ptr %559, align 4, !tbaa !174
  %561 = icmp eq i16 %560, 32
  br i1 %561, label %571, label %562

562:                                              ; preds = %558
  %563 = add i16 %560, 1
  %564 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 1
  store i16 %563, ptr %564, align 4, !tbaa !174
  store i16 %529, ptr %0, align 4, !tbaa.struct !213
  store i16 %530, ptr %19, align 2, !tbaa.struct !214
  %565 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 2
  %566 = getelementptr inbounds %struct.algorithm, ptr %531, i64 0, i32 2
  %567 = sext i16 %563 to i64
  %568 = shl nsw i64 %567, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %565, ptr nonnull align 4 %566, i64 %568, i1 false)
  %569 = getelementptr inbounds %struct.algorithm, ptr %0, i64 0, i32 3
  %570 = getelementptr inbounds %struct.algorithm, ptr %531, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %569, ptr nonnull align 4 %570, i64 %567, i1 false)
  br label %571

571:                                              ; preds = %80, %558, %84, %90, %78, %34, %42, %4, %24, %562, %539, %46, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_mult_highpart_optab(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #12 !prof !64 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = tail call ptr @gen_int_mode(i64 noundef %7, i32 noundef %0) #15
  %9 = tail call zeroext i8 @optimize_insn_for_speed_p() #15
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !76
  %13 = and i8 %12, -2
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3461, ptr noundef nonnull @.str.1) #15
  br label %16

16:                                               ; preds = %5, %15
  %17 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %10
  %18 = load i8, ptr %17, align 1, !tbaa !76
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %21 = load i8, ptr %20, align 1, !tbaa !76
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = zext i8 %9 to i64
  %25 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_highpart_cost, i64 0, i64 %24, i64 %10
  %26 = load i32, ptr %25, align 4, !tbaa !80
  %27 = icmp slt i32 %26, %4
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19)
  %31 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %30, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 0) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %123

33:                                               ; preds = %28, %16
  %34 = add nsw i32 %23, -1
  %35 = icmp ugt i8 %21, 4
  br i1 %35, label %55, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %25, align 4, !tbaa !80
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !80
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %41, %37
  %43 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %24, i64 %10
  %44 = load i32, ptr %43, align 4, !tbaa !80
  %45 = shl nsw i32 %44, 2
  %46 = add nsw i32 %42, %45
  %47 = icmp slt i32 %46, %4
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = icmp eq i32 %3, 0
  %50 = select i1 %49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18)
  %51 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %50, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 0) #15
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @expand_mult_highpart_adjust(i32 noundef %0, ptr noundef nonnull %51, ptr noundef %1, ptr noundef %8, ptr noundef nonnull %51, i32 noundef %3)
  br label %123

55:                                               ; preds = %48, %36, %33
  %56 = icmp eq i32 %3, 0
  %57 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %58 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %59 = zext i8 %18 to i64
  %60 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %58, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !115
  %62 = icmp eq i32 %61, 2956
  br i1 %62, label %72, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %24, i64 %59
  %65 = load i32, ptr %64, align 4, !tbaa !80
  %66 = icmp slt i32 %65, %4
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull %57, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3, i32 noundef 2) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef nonnull %68)
  br label %123

72:                                               ; preds = %67, %63, %55
  %73 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 %59
  %74 = load i32, ptr %73, align 4, !tbaa !115
  %75 = icmp eq i32 %74, 2956
  %76 = or i1 %35, %75
  br i1 %76, label %96, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_cost, i64 0, i64 %24, i64 %59
  %79 = load i32, ptr %78, align 4, !tbaa !80
  %80 = sext i32 %34 to i64
  %81 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !80
  %83 = add nsw i32 %82, %79
  %84 = icmp slt i32 %83, %4
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  tail call void @start_sequence() #15
  %86 = tail call ptr @convert_modes(i32 noundef %19, i32 noundef %0, ptr noundef %1, i32 noundef %3) #15
  %87 = tail call ptr @convert_modes(i32 noundef %19, i32 noundef %0, ptr noundef %2, i32 noundef %3) #15
  %88 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr noundef %86, ptr noundef %87, ptr noundef null, i32 noundef %3, i32 noundef 2) #15
  %89 = tail call ptr @get_insns() #15
  tail call void @end_sequence() #15
  %90 = icmp eq ptr %88, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = tail call ptr @emit_insn(ptr noundef %89) #15
  %93 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef nonnull %88)
  br label %94

94:                                               ; preds = %85, %91
  %95 = phi ptr [ %93, %91 ], [ undef, %85 ]
  br i1 %90, label %96, label %123

96:                                               ; preds = %94, %72, %77
  %97 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %98 = select i1 %56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4)
  %99 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %98, i64 0, i64 %59
  %100 = load i32, ptr %99, align 4, !tbaa !115
  %101 = icmp eq i32 %100, 2956
  %102 = or i1 %35, %101
  br i1 %102, label %123, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds [2 x [87 x i32]], ptr @mul_widen_cost, i64 0, i64 %24, i64 %59
  %105 = load i32, ptr %104, align 4, !tbaa !80
  %106 = sext i32 %34 to i64
  %107 = getelementptr inbounds [2 x [87 x [32 x i32]]], ptr @shift_cost, i64 0, i64 %24, i64 %10, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !80
  %109 = shl nsw i32 %108, 1
  %110 = add nsw i32 %109, %105
  %111 = getelementptr inbounds [2 x [87 x i32]], ptr @add_cost, i64 0, i64 %24, i64 %10
  %112 = load i32, ptr %111, align 4, !tbaa !80
  %113 = shl nsw i32 %112, 2
  %114 = add nsw i32 %110, %113
  %115 = icmp slt i32 %114, %4
  br i1 %115, label %116, label %123

116:                                              ; preds = %103
  %117 = zext i1 %56 to i32
  %118 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull %97, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %117, i32 noundef 2) #15
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = tail call fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef nonnull %118)
  %122 = tail call ptr @expand_mult_highpart_adjust(i32 noundef %0, ptr noundef %121, ptr noundef %1, ptr noundef %8, ptr noundef null, i32 noundef %3)
  br label %123

123:                                              ; preds = %103, %116, %96, %28, %94, %120, %70, %53
  %124 = phi ptr [ %54, %53 ], [ %71, %70 ], [ %122, %120 ], [ %95, %94 ], [ %31, %28 ], [ null, %96 ], [ null, %116 ], [ null, %103 ]
  ret ptr %124
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @extract_high_half(i32 noundef %0, ptr noundef %1) unnamed_addr #12 !prof !64 {
  %3 = load i32, ptr @word_mode, align 4, !tbaa !80
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @gen_highpart(i32 noundef %0, ptr noundef %1) #15
  br label %25

7:                                                ; preds = %2
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !76
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3439, ptr noundef nonnull @.str.1) #15
  br label %14

14:                                               ; preds = %7, %13
  %15 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %8
  %16 = load i8, ptr %15, align 1, !tbaa !76
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %19 = load i8, ptr %18, align 1, !tbaa !76
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %21) #15
  %23 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %17, ptr noundef %1, ptr noundef %22, ptr noundef null, i32 noundef 1)
  %24 = tail call ptr @convert_modes(i32 noundef %0, i32 noundef %17, ptr noundef %23, i32 noundef 0) #15
  br label %25

25:                                               ; preds = %14, %5
  %26 = phi ptr [ %6, %5 ], [ %24, %14 ]
  ret ptr %26
}

declare ptr @gen_highpart(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @do_pending_stack_adjust() local_unnamed_addr #3

declare i32 @unsigned_condition(i32 noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @subreg_highpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @emit_cstore(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #9 !prof !187 !PGOFuncName !215 {
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = tail call ptr @get_last_insn() #15
  %18 = tail call ptr @prepare_operand(i32 noundef %1, ptr noundef %6, i32 noundef 2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15
  %19 = tail call ptr @prepare_operand(i32 noundef %1, ptr noundef %7, i32 noundef 3, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15
  %20 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %16, ptr noundef %18, ptr noundef %19) #15
  %21 = icmp ne ptr %18, null
  %22 = icmp ne ptr %19, null
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %48, !prof !191

24:                                               ; preds = %10
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %25, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !110
  %28 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !117
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 2, i32 2
  %31 = load i16, ptr %30, align 8
  %32 = zext i16 %31 to i32
  %33 = tail call i32 %29(ptr noundef nonnull %18, i32 noundef %32) #15, !prof !216
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35, !prof !188

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 3
  %37 = load ptr, ptr %36, align 8, !tbaa !117
  %38 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 3, i32 2
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = tail call i32 %37(ptr noundef nonnull %19, i32 noundef %40) #15, !prof !217
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43, !prof !188

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.insn_operand_data, ptr %27, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !117
  %46 = tail call i32 %45(ptr noundef %20, i32 noundef 0) #15, !prof !218
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49, !prof !188

48:                                               ; preds = %43, %35, %24, %10
  tail call void @delete_insns_since(ptr noundef %17) #15
  br label %101

49:                                               ; preds = %43
  %50 = icmp eq i32 %9, 0
  %51 = select i1 %50, i32 %16, i32 %9, !prof !188
  %52 = icmp eq ptr %0, null
  br i1 %52, label %53, label %55, !prof !188

53:                                               ; preds = %49
  %54 = tail call ptr @gen_reg_rtx(i32 noundef %51) #15
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %0, %49 ], [ %54, %53 ]
  %57 = load i32, ptr @optimize, align 4, !tbaa !80
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63, !prof !188

59:                                               ; preds = %55
  %60 = load ptr, ptr %13, align 8, !tbaa !117
  %61 = tail call i32 %60(ptr noundef %56, i32 noundef %16) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %55
  %64 = tail call ptr @gen_reg_rtx(i32 noundef %16) #15
  br label %65

65:                                               ; preds = %59, %63
  %66 = phi ptr [ %64, %63 ], [ %56, %59 ]
  %67 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %25, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !119
  %69 = tail call ptr (ptr, ...) %68(ptr noundef %66, ptr noundef %20, ptr noundef nonnull %18, ptr noundef nonnull %19) #15, !prof !219
  %70 = icmp eq ptr %69, null
  br i1 %70, label %101, label %71, !prof !188

71:                                               ; preds = %65
  %72 = tail call ptr @emit_insn(ptr noundef nonnull %69) #15
  %73 = zext nneg i32 %51 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !76
  %76 = zext i16 %15 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !76
  %79 = icmp ugt i8 %75, %78
  br i1 %79, label %80, label %83, !prof !220

80:                                               ; preds = %71
  %81 = icmp ult i8 %78, 9
  %82 = zext i1 %81 to i32
  tail call void @convert_move(ptr noundef %56, ptr noundef %66, i32 noundef %82) #15
  br label %83

83:                                               ; preds = %71, %80
  %84 = phi ptr [ %56, %80 ], [ %66, %71 ]
  %85 = phi i32 [ %51, %80 ], [ %16, %71 ]
  %86 = load i32, ptr @optimize, align 4, !tbaa !80
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr %66, ptr null, !prof !188
  %89 = icmp ult i32 %8, 2
  br i1 %89, label %97, label %90, !prof !191

90:                                               ; preds = %83
  %91 = icmp eq i32 %8, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = tail call ptr @expand_unop(i32 noundef %85, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %84, ptr noundef %88, i32 noundef 0) #15
  br label %97

94:                                               ; preds = %90
  %95 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !65
  %96 = tail call ptr @expand_and(i32 noundef %85, ptr noundef %84, ptr noundef %95, ptr noundef %88)
  br label %97

97:                                               ; preds = %94, %92, %83
  %98 = phi ptr [ %84, %83 ], [ %93, %92 ], [ %96, %94 ]
  %99 = icmp eq i32 %51, %85
  br i1 %99, label %101, label %100, !prof !191

100:                                              ; preds = %97
  tail call void @convert_move(ptr noundef %56, ptr noundef %98, i32 noundef 0) #15
  br label %101

101:                                              ; preds = %97, %65, %100, %48
  %102 = phi ptr [ %56, %100 ], [ null, %48 ], [ null, %65 ], [ %98, %97 ]
  ret ptr %102
}

declare ptr @prepare_operand(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @init_expmed, ptr @gen_rtx_CONST_INT, i64 73}
!36 = !{ptr @init_expmed, ptr @df_ref_change_reg_with_loc, i64 1}
!37 = !{ptr @init_expmed, ptr @rtx_cost, i64 1274}
!38 = !{ptr @init_expmed, ptr @default_rtl_profile, i64 1}
!39 = !{ptr @negate_rtx, ptr @simplify_unary_operation, i64 53}
!40 = !{ptr @mode_for_extraction, ptr @fancy_abort, i64 183526}
!41 = !{ptr @expand_shift, ptr @optimize_insn_for_speed_p, i64 7110}
!42 = !{ptr @expand_shift, ptr @expand_expr_real, i64 7110}
!43 = !{ptr @expand_shift, ptr @expand_binop, i64 7110}
!44 = !{ptr @expand_mult, ptr @optimize_insn_for_speed_p, i64 67}
!45 = !{ptr @expand_mult, ptr @gen_raw_REG, i64 67}
!46 = !{ptr @expand_mult, ptr @floor_log2, i64 67}
!47 = !{ptr @expand_mult, ptr @build_int_cst, i64 67}
!48 = !{ptr @expand_mult, ptr @expand_shift, i64 67}
!49 = !{ptr @ceil_log2, ptr @floor_log2, i64 636519}
!50 = !{ptr @emit_store_flag_force, ptr @emit_store_flag, i64 19550}
!51 = !{ptr @emit_store_flag, ptr @emit_store_flag_1, i64 20229}
!52 = !{ptr @emit_store_flag_1, ptr @unsigned_condition, i64 19231}
!53 = !{ptr @emit_store_flag_1, ptr @swap_condition, i64 20229}
!54 = !{ptr @emit_store_flag_1, ptr @swap_commutative_operands_p, i64 20229}
!55 = !{ptr @emit_store_flag_1, ptr @do_pending_stack_adjust, i64 20229}
!56 = !{ptr @emit_store_flag_1, ptr @emit_cstore, i64 20229}
!57 = !{ptr @emit_cstore, ptr @get_last_insn, i64 20229}
!58 = !{ptr @emit_cstore, ptr @prepare_operand, i64 40458}
!59 = !{ptr @emit_cstore, ptr @gen_rtx_fmt_ee_stat, i64 20229}
!60 = !{ptr @emit_cstore, ptr @gen_reg_rtx, i64 20229}
!61 = !{ptr @emit_cstore, ptr @emit_insn, i64 20229}
!62 = !{ptr @emit_cstore, ptr @convert_move, i64 1305}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!70, !66, i64 8}
!70 = !{!"_IO_FILE", !71, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !71, i64 112, !71, i64 116, !72, i64 120, !73, i64 128, !67, i64 130, !67, i64 131, !66, i64 136, !72, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !72, i64 184, !71, i64 192, !67, i64 196}
!71 = !{!"int", !67, i64 0}
!72 = !{!"long", !67, i64 0}
!73 = !{!"short", !67, i64 0}
!74 = !{!70, !66, i64 16}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!67, !67, i64 0}
!77 = !{!70, !66, i64 40}
!78 = !{!70, !66, i64 48}
!79 = !{!70, !71, i64 0}
!80 = !{!71, !71, i64 0}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!"function_entry_count", i64 1}
!85 = !{!"branch_weights", i32 1, i32 30}
!86 = distinct !{!86, !82, !83}
!87 = !{!88, !67, i64 478}
!88 = !{!"rtl_data", !89, i64 0, !90, i64 40, !91, i64 96, !92, i64 112, !94, i64 208, !95, i64 248, !71, i64 312, !66, i64 320, !66, i64 328, !66, i64 336, !66, i64 344, !66, i64 352, !66, i64 360, !66, i64 368, !66, i64 376, !66, i64 384, !66, i64 392, !72, i64 400, !66, i64 408, !66, i64 416, !66, i64 424, !71, i64 432, !71, i64 436, !71, i64 440, !71, i64 444, !71, i64 448, !71, i64 452, !66, i64 456, !67, i64 464, !67, i64 465, !67, i64 466, !67, i64 467, !67, i64 468, !67, i64 469, !67, i64 470, !67, i64 471, !67, i64 472, !67, i64 473, !67, i64 474, !67, i64 475, !67, i64 476, !67, i64 477, !67, i64 478, !67, i64 479, !67, i64 480, !67, i64 481, !67, i64 482, !67, i64 483, !67, i64 484, !67, i64 485}
!89 = !{!"expr_status", !71, i64 0, !71, i64 4, !71, i64 8, !66, i64 16, !66, i64 24, !66, i64 32}
!90 = !{!"emit_status", !71, i64 0, !71, i64 4, !66, i64 8, !66, i64 16, !66, i64 24, !71, i64 32, !71, i64 36, !71, i64 40, !71, i64 44, !66, i64 48}
!91 = !{!"varasm_status", !66, i64 0, !71, i64 8}
!92 = !{!"incoming_args", !71, i64 0, !71, i64 4, !71, i64 8, !66, i64 16, !93, i64 24, !66, i64 88}
!93 = !{!"ix86_args", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36, !71, i64 40, !71, i64 44, !71, i64 48, !71, i64 52, !71, i64 56, !71, i64 60}
!94 = !{!"function_subsections", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32}
!95 = !{!"rtl_eh", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !67, i64 48}
!96 = !{!"branch_weights", i32 1, i32 127}
!97 = !{!"branch_weights", i32 127, i32 641}
!98 = distinct !{!98, !82, !83}
!99 = !{!"branch_weights", i32 2, i32 10}
!100 = !{!"branch_weights", i32 6, i32 6}
!101 = !{!"branch_weights", i32 1, i32 191}
!102 = !{!"branch_weights", i32 191, i32 4481}
!103 = distinct !{!103, !82, !83}
!104 = !{!"branch_weights", i32 1, i32 1}
!105 = distinct !{!105, !82, !83}
!106 = !{!"function_entry_count", i64 53}
!107 = !{!"branch_weights", i32 0, i32 53}
!108 = !{!"function_entry_count", i64 367052}
!109 = !{!"branch_weights", i32 91763, i32 275289}
!110 = !{!111, !66, i64 24}
!111 = !{!"insn_data", !66, i64 0, !67, i64 8, !66, i64 16, !66, i64 24, !67, i64 32, !67, i64 33, !67, i64 34, !67, i64 35}
!112 = !{!"branch_weights", i32 91649, i32 183640}
!113 = !{i8 0, i8 2}
!114 = distinct !{!114, !82, !83}
!115 = !{!116, !71, i64 0}
!116 = !{!"optab_handlers", !71, i64 0}
!117 = !{!118, !66, i64 0}
!118 = !{!"insn_operand_data", !66, i64 0, !66, i64 8, !71, i64 16, !67, i64 18, !67, i64 19}
!119 = !{!111, !66, i64 16}
!120 = !{!121, !66, i64 0}
!121 = !{!"rtl_hooks", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32}
!122 = distinct !{!122, !82, !83}
!123 = !{!124, !71, i64 28}
!124 = !{!"mem_attrs", !66, i64 0, !66, i64 8, !66, i64 16, !71, i64 24, !71, i64 28, !67, i64 32}
!125 = distinct !{!125, !82, !83}
!126 = !{!127, !66, i64 1240}
!127 = !{!"gcc_target", !128, i64 0, !130, i64 368, !131, i64 664, !71, i64 744, !66, i64 752, !66, i64 760, !66, i64 768, !66, i64 776, !66, i64 784, !66, i64 792, !66, i64 800, !66, i64 808, !66, i64 816, !66, i64 824, !66, i64 832, !66, i64 840, !66, i64 848, !66, i64 856, !66, i64 864, !66, i64 872, !66, i64 880, !66, i64 888, !66, i64 896, !66, i64 904, !66, i64 912, !66, i64 920, !66, i64 928, !66, i64 936, !66, i64 944, !66, i64 952, !66, i64 960, !66, i64 968, !66, i64 976, !66, i64 984, !66, i64 992, !66, i64 1000, !66, i64 1008, !66, i64 1016, !66, i64 1024, !66, i64 1032, !66, i64 1040, !66, i64 1048, !66, i64 1056, !72, i64 1064, !72, i64 1072, !66, i64 1080, !66, i64 1088, !66, i64 1096, !66, i64 1104, !66, i64 1112, !66, i64 1120, !66, i64 1128, !66, i64 1136, !66, i64 1144, !66, i64 1152, !66, i64 1160, !66, i64 1168, !132, i64 1176, !66, i64 1232, !66, i64 1240, !66, i64 1248, !66, i64 1256, !66, i64 1264, !66, i64 1272, !66, i64 1280, !66, i64 1288, !66, i64 1296, !66, i64 1304, !66, i64 1312, !66, i64 1320, !66, i64 1328, !66, i64 1336, !66, i64 1344, !66, i64 1352, !66, i64 1360, !66, i64 1368, !66, i64 1376, !66, i64 1384, !66, i64 1392, !66, i64 1400, !66, i64 1408, !66, i64 1416, !66, i64 1424, !66, i64 1432, !66, i64 1440, !66, i64 1448, !66, i64 1456, !72, i64 1464, !133, i64 1472, !66, i64 1664, !66, i64 1672, !66, i64 1680, !66, i64 1688, !66, i64 1696, !66, i64 1704, !66, i64 1712, !66, i64 1720, !66, i64 1728, !66, i64 1736, !66, i64 1744, !66, i64 1752, !66, i64 1760, !66, i64 1768, !66, i64 1776, !134, i64 1784, !135, i64 1792, !136, i64 1896, !137, i64 1968, !66, i64 2016, !67, i64 2024, !67, i64 2025, !67, i64 2026, !67, i64 2027, !67, i64 2028, !67, i64 2029, !67, i64 2030, !67, i64 2031, !67, i64 2032, !67, i64 2033, !67, i64 2034, !67, i64 2035}
!128 = !{!"asm_out", !66, i64 0, !66, i64 8, !66, i64 16, !129, i64 24, !129, i64 56, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !66, i64 120, !66, i64 128, !66, i64 136, !66, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !66, i64 184, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !66, i64 224, !66, i64 232, !66, i64 240, !66, i64 248, !66, i64 256, !66, i64 264, !66, i64 272, !66, i64 280, !66, i64 288, !66, i64 296, !66, i64 304, !66, i64 312, !66, i64 320, !66, i64 328, !66, i64 336, !66, i64 344, !66, i64 352, !66, i64 360}
!129 = !{!"asm_int_op", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24}
!130 = !{!"sched", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !66, i64 120, !66, i64 128, !66, i64 136, !66, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !66, i64 184, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !66, i64 224, !66, i64 232, !66, i64 240, !66, i64 248, !66, i64 256, !66, i64 264, !66, i64 272, !66, i64 280, !66, i64 288}
!131 = !{!"vectorize", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72}
!132 = !{!"addr_space", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48}
!133 = !{!"calls", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !66, i64 120, !66, i64 128, !66, i64 136, !66, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !66, i64 184}
!134 = !{!"c", !66, i64 0}
!135 = !{!"cxx", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96}
!136 = !{!"emutls", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !67, i64 64, !67, i64 65}
!137 = !{!"target_option_hooks", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40}
!138 = distinct !{!138, !82, !83}
!139 = distinct !{!139, !82, !83}
!140 = distinct !{!140, !82, !83}
!141 = !{!"function_entry_count", i64 7110}
!142 = !{!"branch_weights", i32 0, i32 7110}
!143 = !{!"branch_weights", i32 7043, i32 67}
!144 = !{!"branch_weights", i32 67, i32 0}
!145 = distinct !{!145, !82, !83}
!146 = !{!"branch_weights", i32 0, i32 7110, i32 0}
!147 = !{!"branch_weights", i32 67, i32 7043}
!148 = !{!"branch_weights", i32 7043, i32 0}
!149 = distinct !{!149, !82, !83}
!150 = !{!151, !71, i64 0}
!151 = !{!"rtvec_def", !71, i64 0, !67, i64 8}
!152 = distinct !{!152, !82, !83}
!153 = !{!154, !66, i64 448}
!154 = !{!"lang_hooks", !66, i64 0, !72, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !66, i64 120, !66, i64 128, !66, i64 136, !66, i64 144, !66, i64 152, !66, i64 160, !66, i64 168, !66, i64 176, !66, i64 184, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !66, i64 224, !66, i64 232, !155, i64 240, !156, i64 248, !157, i64 256, !158, i64 272, !159, i64 432, !160, i64 560, !66, i64 584, !66, i64 592, !66, i64 600, !66, i64 608, !66, i64 616, !66, i64 624, !66, i64 632, !66, i64 640, !66, i64 648, !66, i64 656, !66, i64 664, !67, i64 672}
!155 = !{!"lang_hooks_for_tree_inlining", !66, i64 0}
!156 = !{!"lang_hooks_for_callgraph", !66, i64 0}
!157 = !{!"lang_hooks_for_tree_dump", !66, i64 0, !66, i64 8}
!158 = !{!"lang_hooks_for_decls", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !66, i64 120, !66, i64 128, !66, i64 136, !66, i64 144, !66, i64 152}
!159 = !{!"lang_hooks_for_types", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !67, i64 120}
!160 = !{!"lang_hooks_for_lto", !66, i64 0, !66, i64 8, !66, i64 16}
!161 = !{!"function_entry_count", i64 67}
!162 = !{!"branch_weights", i32 0, i32 67}
!163 = !{!"branch_weights", i32 0, i32 67, i32 0}
!164 = !{i64 0, i64 65}
!165 = !{i64 0, i64 4, !80, i64 0, i64 4, !80, i64 0, i64 4, !80, i64 0, i64 4, !80, i64 0, i64 4, !80, i64 0, i64 4, !80, i64 8, i64 24, !76}
!166 = !{!167, !73, i64 0}
!167 = !{!"mult_cost", !73, i64 0, !73, i64 2}
!168 = !{!167, !73, i64 2}
!169 = !{!170, !73, i64 0}
!170 = !{!"algorithm", !167, i64 0, !73, i64 4, !67, i64 8, !67, i64 136}
!171 = !{!170, !73, i64 2}
!172 = !{i64 0, i64 2, !173, i64 2, i64 2, !173, i64 4, i64 2, !173, i64 8, i64 128, !76, i64 136, i64 32, !76}
!173 = !{!73, !73, i64 0}
!174 = !{!170, !73, i64 4}
!175 = distinct !{!175, !82, !83}
!176 = !{!72, !72, i64 0}
!177 = !{!"function_entry_count", i64 636519}
!178 = distinct !{!178, !82, !83}
!179 = distinct !{!179, !82, !83}
!180 = !{i64 0, i64 64}
!181 = distinct !{!181, !82, !83}
!182 = !{!"function_entry_count", i64 19550}
!183 = !{!"branch_weights", i32 0, i32 19550}
!184 = !{!185, !67, i64 46}
!185 = !{!"real_format", !66, i64 0, !66, i64 8, !71, i64 16, !71, i64 20, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36, !71, i64 40, !67, i64 44, !67, i64 45, !67, i64 46, !67, i64 47, !67, i64 48, !67, i64 49, !67, i64 50, !67, i64 51}
!186 = distinct !{!186, !82, !83}
!187 = !{!"function_entry_count", i64 20229}
!188 = !{!"branch_weights", i32 0, i32 20229}
!189 = !{!"expmed.c;emit_store_flag_1"}
!190 = !{!"branch_weights", i32 998, i32 19231}
!191 = !{!"branch_weights", i32 20229, i32 0}
!192 = !{!"branch_weights", i32 679, i32 19550}
!193 = !{!"branch_weights", i32 20212, i32 0, i32 14, i32 3, i32 0, i32 0, i32 0}
!194 = !{!"branch_weights", i32 0, i32 14}
!195 = !{!"branch_weights", i32 0, i32 3}
!196 = !{!"branch_weights", i32 391, i32 19838}
!197 = !{!"branch_weights", i32 391, i32 0, i32 0}
!198 = !{!"branch_weights", i32 0, i32 1}
!199 = !{!"branch_weights", i32 20229, i32 0, i32 0}
!200 = distinct !{!200, !82, !83}
!201 = distinct !{!201, !82, !83}
!202 = distinct !{!202, !82, !83}
!203 = distinct !{!203, !82, !83}
!204 = !{!205, !72, i64 0}
!205 = !{!"alg_hash_entry", !72, i64 0, !71, i64 8, !71, i64 12, !167, i64 16, !67, i64 20}
!206 = !{!205, !71, i64 8}
!207 = !{!205, !67, i64 20}
!208 = !{!205, !71, i64 12}
!209 = !{!205, !73, i64 16}
!210 = !{!205, !73, i64 18}
!211 = distinct !{!211, !82, !83}
!212 = distinct !{!212, !82, !83}
!213 = !{i64 0, i64 2, !173, i64 2, i64 2, !173}
!214 = !{i64 0, i64 2, !173}
!215 = !{!"expmed.c;emit_cstore"}
!216 = !{!"VP", i32 0, i64 20229, i64 1320961495666781357, i64 20229}
!217 = !{!"VP", i32 0, i64 20229, i64 2413368657831509256, i64 20229}
!218 = !{!"VP", i32 0, i64 20229, i64 2961254994277687989, i64 20229}
!219 = !{!"VP", i32 0, i64 20229, i64 1212273931131172754, i64 20203, i64 -2492106291519257777, i64 26}
!220 = !{!"branch_weights", i32 1305, i32 18924}
