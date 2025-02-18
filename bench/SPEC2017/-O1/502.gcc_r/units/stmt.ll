; ModuleID = 'stmt.c'
source_filename = "stmt.c"
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
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.elims = type { i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.case_node = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.case_bit_test = type { i64, i64, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"stmt.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"output operand constraint lacks %<=%>\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"output constraint %qc for operand %d is not at the beginning\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"operand constraint contains incorrectly positioned %<+%> or %<=%>\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%<%%%> constraint used with last operand\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"matching constraint not valid in output operand\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.7 = private unnamed_addr constant [38 x i8] c"input operand constraint contains %qc\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"matching constraint references invalid operand number\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"invalid punctuation %qc in constraint\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"matching constraint does not allow a register\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"value computed is not used\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@word_mode = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"struct case_node pool\00", align 1
@optab_table = external global [159 x %struct.optab_d], align 16
@flag_jump_tables = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@use_cost_table = internal unnamed_addr global i32 0, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.13 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@generating_concat_p = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"unknown register name %qs in %<asm%>\00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"PIC register %qs clobbered in %<asm%>\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"more than %d operands in %<asm%>\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"output number %d not directly addressable\00", align 1
@empty_string = external constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"asm operand %d probably doesn%'t match constraints\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"use of memory input without lvalue in asm operand %d is deprecated\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"asm clobber conflict with output operand\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"asm clobber conflict with input operand\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"too many alternatives in %<asm%>\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"operand constraints for %<asm%> differ in number of alternatives\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"asm-specifier for variable %qE conflicts with asm clobber list\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"duplicate asm operand name %qs\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"missing close brace for named operand\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"undefined named operand %qs\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@expand_nl_goto_receiver.elim_regs = internal unnamed_addr constant [4 x %struct.elims] [%struct.elims { i32 16, i32 7 }, %struct.elims { i32 16, i32 6 }, %struct.elims { i32 20, i32 7 }, %struct.elims { i32 20, i32 6 }], align 16
@lshift_cheap_p.init = internal unnamed_addr global i1 false, align 1
@lshift_cheap_p.cheap = internal unnamed_addr global i8 1, align 1
@cost_table_initialized = internal unnamed_addr global i1 false, align 4
@cost_table_ = internal unnamed_addr global [129 x i16] zeroinitializer, align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !124 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !125
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !124 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !125
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !124 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !135

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !129
  %11 = load i8, ptr %3, align 1, !tbaa !136
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !124 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !135

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !129
  %11 = load i8, ptr %3, align 1, !tbaa !136
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !124 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !125
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !135

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !129
  %11 = load i8, ptr %3, align 1, !tbaa !136
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !124 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !125
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !124 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !135

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !137
  store i8 %12, ptr %4, align 1, !tbaa !136
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !124 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !135

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !137
  store i8 %12, ptr %4, align 1, !tbaa !136
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !124 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !125
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !135

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !137
  store i8 %12, ptr %4, align 1, !tbaa !136
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !124 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !124 {
  %2 = load i32, ptr %0, align 8, !tbaa !139
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !124 {
  %2 = load i32, ptr %0, align 8, !tbaa !139
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !124 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !140
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !124 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !140
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !124 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !124 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !124 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !124 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !141

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !124 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @label_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !144 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 30
  br i1 %4, label %6, label %5, !prof !145

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 136, ptr noundef nonnull @.str.1) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %8, i64 11
  %10 = load i8, ptr %9, align 1, !tbaa !136
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12, !prof !146

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !136
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29, !prof !147

16:                                               ; preds = %12, %6
  %17 = tail call ptr @gen_label_rtx() #19
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %17) #19
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65536
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26, !prof !148

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 256
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26, !prof !148

26:                                               ; preds = %21, %16
  %27 = load i32, ptr %17, align 8
  %28 = or i32 %27, 268435456
  store i32 %28, ptr %17, align 8
  br label %29

29:                                               ; preds = %21, %26, %12
  %30 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !136
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !146

33:                                               ; preds = %29
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %34 = load ptr, ptr %30, align 8, !tbaa !136
  br label %35

35:                                               ; preds = %29, %33
  %36 = phi ptr [ %34, %33 ], [ %31, %29 ]
  ret ptr %36
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @force_label_rtx(ptr noundef %0) local_unnamed_addr #10 !prof !124 {
  %2 = tail call ptr @label_rtx(ptr noundef %0)
  %3 = tail call ptr @decl_function_context(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.1) #19
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !149
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %2, ptr noundef %7) #19
  store ptr %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !149
  ret ptr %2
}

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @emit_jump(ptr noundef %0) local_unnamed_addr #9 !prof !158 {
  tail call void @do_pending_stack_adjust() #19
  %2 = tail call ptr @gen_jump(ptr noundef %0) #19
  %3 = tail call ptr @emit_jump_insn(ptr noundef %2) #19
  %4 = tail call ptr @emit_barrier() #19
  ret void
}

declare void @do_pending_stack_adjust() local_unnamed_addr #3

declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_computed_goto(ptr noundef %0) local_unnamed_addr #10 !prof !124 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %3 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %2, i8 noundef zeroext 0) #19
  tail call void @do_pending_stack_adjust() #19
  tail call void @emit_indirect_jump(ptr noundef %3) #19
  ret void
}

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @emit_indirect_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @expand_label(ptr noundef %0) local_unnamed_addr #9 !prof !159 {
  %2 = tail call ptr @label_rtx(ptr noundef %0)
  tail call void @do_pending_stack_adjust() #19
  %3 = tail call ptr @emit_label(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7, !prof !148

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @make_decl_rtl(ptr noundef %0) #19
  %14 = load ptr, ptr %10, align 8, !tbaa !136
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %17, align 8, !tbaa !136
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 256
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %66, label %23, !prof !148

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !125
  %25 = tail call ptr @emit_use(ptr noundef %24) #19
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !160
  %27 = load ptr, ptr @current_function_decl, align 8, !tbaa !125
  %28 = tail call ptr %26(ptr noundef %27, i8 noundef zeroext 1) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load i32, ptr %28, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call ptr @emit_clobber(ptr noundef nonnull %28) #19
  br label %36

36:                                               ; preds = %34, %30, %23
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !125
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !125
  %39 = tail call ptr @emit_move_insn(ptr noundef %37, ptr noundef %38) #19
  %40 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !136
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %36, %50
  %43 = phi i64 [ %51, %50 ], [ 0, %36 ]
  %44 = getelementptr inbounds [4 x %struct.elims], ptr @expand_nl_goto_receiver.elim_regs, i64 0, i64 %43
  %45 = load i32, ptr %44, align 8, !tbaa !172
  %46 = icmp ne i32 %45, 16
  %47 = and i64 %43, 1
  %48 = icmp eq i64 %47, 0
  %49 = or i1 %48, %46
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = add nuw nsw i64 %43, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %42, !llvm.loop !174

53:                                               ; preds = %42, %50
  %54 = phi i64 [ %43, %42 ], [ 4, %50 ]
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !175
  %58 = tail call ptr @get_arg_pointer_save_area() #19
  %59 = tail call ptr @copy_to_reg(ptr noundef %58) #19
  %60 = tail call ptr @emit_move_insn(ptr noundef %57, ptr noundef %59) #19
  br label %61

61:                                               ; preds = %53, %36, %56
  %62 = tail call ptr @gen_blockage() #19
  %63 = tail call ptr @emit_insn(ptr noundef %62) #19
  %64 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !176
  %65 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %2, ptr noundef %64) #19
  store ptr %65, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !176
  br label %66

66:                                               ; preds = %61, %18
  %67 = load i64, ptr %0, align 8
  %68 = and i64 %67, 65536
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %73, label %70, !prof !148

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !149
  %72 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %2, ptr noundef %71) #19
  store ptr %72, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !149
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i64, ptr %19, align 8
  %75 = and i64 %74, 256
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81, !prof !148

77:                                               ; preds = %73
  %78 = load i64, ptr %0, align 8
  %79 = and i64 %78, 65536
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %82, label %81, !prof !148

81:                                               ; preds = %77, %73
  tail call void @maybe_set_first_label_num(ptr noundef %2) #19
  br label %82

82:                                               ; preds = %81, %77
  ret void
}

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

declare void @maybe_set_first_label_num(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_goto(ptr noundef %0) local_unnamed_addr #10 !prof !124 {
  %2 = tail call ptr @label_rtx(ptr noundef %0)
  tail call void @do_pending_stack_adjust() #19
  %3 = tail call ptr @gen_jump(ptr noundef %2) #19
  %4 = tail call ptr @emit_jump_insn(ptr noundef %3) #19
  %5 = tail call ptr @emit_barrier() #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @parse_output_constraint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #10 !prof !124 {
  %8 = load ptr, ptr %0, align 8, !tbaa !125
  store i8 0, ptr %4, align 1, !tbaa !136
  store i8 0, ptr %5, align 1, !tbaa !136
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 61)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 43)
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %9, %7 ], [ %12, %11 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %69, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %14, align 1, !tbaa !136
  %18 = icmp eq i8 %17, 43
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %6, align 1, !tbaa !136
  %20 = icmp ne ptr %14, %8
  %21 = select i1 %20, i1 true, i1 %18
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  br i1 %20, label %24, label %28

24:                                               ; preds = %22
  %25 = load i8, ptr %14, align 1, !tbaa !136
  %26 = sext i8 %25 to i32
  %27 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %26, i32 noundef %1) #19
  br label %28

28:                                               ; preds = %24, %22
  %29 = add i64 %23, 1
  %30 = alloca i8, i64 %29, align 16
  %31 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %8)
  %32 = load i8, ptr %30, align 16, !tbaa !136
  %33 = ptrtoint ptr %14 to i64
  %34 = ptrtoint ptr %8 to i64
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds i8, ptr %30, i64 %35
  store i8 %32, ptr %36, align 1, !tbaa !136
  store i8 61, ptr %30, align 16, !tbaa !136
  %37 = trunc i64 %23 to i32
  %38 = call ptr @ggc_alloc_string(ptr noundef nonnull %30, i32 noundef %37) #19
  store ptr %38, ptr %0, align 8, !tbaa !125
  br label %39

39:                                               ; preds = %16, %28
  %40 = phi ptr [ %38, %28 ], [ %8, %16 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = add nsw i32 %1, 1
  %43 = add nsw i32 %3, %2
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %63, %39
  %46 = phi ptr [ %41, %39 ], [ %67, %63 ]
  %47 = load i8, ptr %46, align 1, !tbaa !136
  switch i8 %47, label %51 [
    i8 0, label %71
    i8 43, label %68
    i8 61, label %68
    i8 37, label %48
    i8 86, label %61
    i8 109, label %61
    i8 111, label %61
    i8 63, label %63
    i8 33, label %63
    i8 42, label %63
    i8 38, label %63
    i8 35, label %63
    i8 69, label %63
    i8 70, label %63
    i8 71, label %63
    i8 72, label %63
    i8 115, label %63
    i8 105, label %63
    i8 110, label %63
    i8 73, label %63
    i8 74, label %63
    i8 75, label %63
    i8 76, label %63
    i8 77, label %63
    i8 78, label %63
    i8 79, label %63
    i8 80, label %63
    i8 44, label %63
    i8 48, label %69
    i8 49, label %69
    i8 50, label %69
    i8 51, label %69
    i8 52, label %69
    i8 53, label %69
    i8 54, label %69
    i8 55, label %69
    i8 56, label %69
    i8 57, label %69
    i8 91, label %69
    i8 60, label %61
    i8 62, label %61
    i8 103, label %49
    i8 88, label %49
    i8 112, label %50
    i8 114, label %50
  ]

48:                                               ; preds = %45
  br i1 %44, label %69, label %63

49:                                               ; preds = %45, %45
  store i8 1, ptr %5, align 1, !tbaa !136
  br label %61

50:                                               ; preds = %45, %45
  br label %61

51:                                               ; preds = %45
  %52 = zext i8 %47 to i64
  %53 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !177
  %55 = and i16 %54, 136
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = call i32 @lookup_constraint(ptr noundef nonnull %46) #19
  %59 = call i32 @regclass_for_constraint(i32 noundef %58) #19
  %60 = icmp eq i32 %59, 0
  store i8 1, ptr %5, align 1, !tbaa !136
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %45, %45, %45, %45, %45, %50, %49
  %62 = phi ptr [ %4, %49 ], [ %5, %50 ], [ %4, %45 ], [ %4, %45 ], [ %4, %45 ], [ %4, %45 ], [ %4, %45 ], [ %4, %57 ]
  store i8 1, ptr %62, align 1, !tbaa !136
  br label %63

63:                                               ; preds = %61, %57, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %48, %51
  %64 = load i8, ptr %46, align 1, !tbaa !136
  %65 = icmp eq i8 %64, 89
  %66 = select i1 %65, i64 2, i64 1
  %67 = getelementptr inbounds i8, ptr %46, i64 %66
  br label %45, !llvm.loop !178

68:                                               ; preds = %45, %45
  br label %69

69:                                               ; preds = %48, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %68, %13
  %70 = phi ptr [ @.str.2, %13 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.6, %45 ], [ @.str.5, %48 ], [ @.str.4, %68 ]
  call void (ptr, ...) @error(ptr noundef nonnull %70) #19
  br label %71

71:                                               ; preds = %45, %69
  %72 = phi i8 [ 0, %69 ], [ 1, %45 ]
  ret i8 %72
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @parse_input_constraint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) local_unnamed_addr #10 !prof !124 {
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr %0, align 8, !tbaa !125
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10)
  store i8 0, ptr %6, align 1, !tbaa !136
  store i8 0, ptr %7, align 1, !tbaa !136
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %97, label %13

13:                                               ; preds = %8
  %14 = sext i32 %3 to i64
  br label %15

15:                                               ; preds = %13, %79
  %16 = phi i8 [ 0, %13 ], [ %83, %79 ]
  %17 = phi i64 [ 0, %13 ], [ %88, %79 ]
  %18 = phi i64 [ %11, %13 ], [ %81, %79 ]
  %19 = phi ptr [ %10, %13 ], [ %80, %79 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !136
  %22 = sext i8 %21 to i32
  switch i8 %21, label %61 [
    i8 43, label %23
    i8 61, label %23
    i8 38, label %23
    i8 37, label %26
    i8 86, label %73
    i8 109, label %73
    i8 111, label %73
    i8 60, label %79
    i8 62, label %79
    i8 63, label %79
    i8 33, label %79
    i8 42, label %79
    i8 35, label %79
    i8 69, label %79
    i8 70, label %79
    i8 71, label %79
    i8 72, label %79
    i8 115, label %79
    i8 105, label %79
    i8 110, label %79
    i8 73, label %79
    i8 74, label %79
    i8 75, label %79
    i8 76, label %79
    i8 77, label %79
    i8 78, label %79
    i8 79, label %79
    i8 80, label %79
    i8 44, label %79
    i8 48, label %33
    i8 49, label %33
    i8 50, label %33
    i8 51, label %33
    i8 52, label %33
    i8 53, label %33
    i8 54, label %33
    i8 55, label %33
    i8 56, label %33
    i8 57, label %33
    i8 112, label %59
    i8 114, label %59
    i8 103, label %60
    i8 88, label %60
  ]

23:                                               ; preds = %15, %15, %15
  %24 = icmp eq ptr %19, %10
  br i1 %24, label %25, label %79

25:                                               ; preds = %23
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %22) #19
  br label %97

26:                                               ; preds = %15
  %27 = icmp eq ptr %19, %10
  br i1 %27, label %28, label %79

28:                                               ; preds = %26
  %29 = add nsw i32 %1, 1
  %30 = sub nsw i32 %2, %4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %28
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #19
  br label %97

33:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %34 = call i64 @strtoul(ptr noundef nonnull %20, ptr noundef nonnull %9, i32 noundef 10)
  %35 = icmp ult i64 %34, %14
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #19
  br label %54

37:                                               ; preds = %33
  %38 = load ptr, ptr %9, align 8, !tbaa !125
  %39 = load i8, ptr %38, align 1, !tbaa !136
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  switch i64 %17, label %49 [
    i64 0, label %45
    i64 1, label %42
  ]

42:                                               ; preds = %41
  %43 = load i8, ptr %19, align 1, !tbaa !136
  %44 = icmp eq i8 %43, 37
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %42
  %46 = getelementptr inbounds ptr, ptr %5, i64 %34
  %47 = load ptr, ptr %46, align 8, !tbaa !125
  store ptr %47, ptr %0, align 8, !tbaa !125
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %47)
  br label %54

49:                                               ; preds = %42, %41, %37
  %50 = ptrtoint ptr %38 to i64
  %51 = ptrtoint ptr %19 to i64
  %52 = xor i64 %51, -1
  %53 = add i64 %50, %52
  br label %54

54:                                               ; preds = %49, %45, %36
  %55 = phi ptr [ %19, %36 ], [ %47, %45 ], [ %19, %49 ]
  %56 = phi i64 [ %18, %36 ], [ %48, %45 ], [ %18, %49 ]
  %57 = phi i64 [ %17, %36 ], [ 0, %45 ], [ %53, %49 ]
  %58 = phi i32 [ 1, %36 ], [ 5, %45 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  switch i32 %58, label %97 [
    i32 0, label %73
    i32 5, label %79
  ]

59:                                               ; preds = %15, %15
  br label %73

60:                                               ; preds = %15, %15
  store i8 1, ptr %7, align 1, !tbaa !136
  br label %73

61:                                               ; preds = %15
  %62 = and i32 %22, 255
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !177
  %66 = and i16 %65, 136
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %22) #19
  br label %97

69:                                               ; preds = %61
  %70 = tail call i32 @lookup_constraint(ptr noundef nonnull %20) #19
  %71 = tail call i32 @regclass_for_constraint(i32 noundef %70) #19
  %72 = icmp eq i32 %71, 0
  store i8 1, ptr %7, align 1, !tbaa !136
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %54, %15, %15, %15, %60, %59
  %74 = phi ptr [ %6, %60 ], [ %6, %15 ], [ %6, %15 ], [ %6, %15 ], [ %7, %54 ], [ %7, %59 ], [ %6, %69 ]
  %75 = phi ptr [ %19, %60 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %55, %54 ], [ %19, %59 ], [ %19, %69 ]
  %76 = phi i64 [ %18, %60 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %56, %54 ], [ %18, %59 ], [ %18, %69 ]
  %77 = phi i64 [ %17, %60 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %57, %54 ], [ %17, %59 ], [ %17, %69 ]
  %78 = phi i8 [ %16, %60 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ 1, %54 ], [ %16, %59 ], [ %16, %69 ]
  store i8 1, ptr %74, align 1, !tbaa !136
  br label %79

79:                                               ; preds = %73, %69, %23, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %54, %28, %26, %15
  %80 = phi ptr [ %55, %54 ], [ %19, %15 ], [ %19, %28 ], [ %19, %26 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %15 ], [ %19, %23 ], [ %19, %69 ], [ %75, %73 ]
  %81 = phi i64 [ %56, %54 ], [ %18, %15 ], [ %18, %28 ], [ %18, %26 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %15 ], [ %18, %23 ], [ %18, %69 ], [ %76, %73 ]
  %82 = phi i64 [ %57, %54 ], [ %17, %15 ], [ %17, %28 ], [ %17, %26 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %23 ], [ %17, %69 ], [ %77, %73 ]
  %83 = phi i8 [ 1, %54 ], [ %16, %15 ], [ %16, %28 ], [ %16, %26 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %15 ], [ %16, %23 ], [ %16, %69 ], [ %78, %73 ]
  %84 = getelementptr inbounds i8, ptr %80, i64 %82
  %85 = load i8, ptr %84, align 1, !tbaa !136
  %86 = icmp eq i8 %85, 89
  %87 = select i1 %86, i64 2, i64 1
  %88 = add i64 %87, %82
  %89 = icmp ult i64 %88, %81
  br i1 %89, label %15, label %90, !llvm.loop !179

90:                                               ; preds = %79
  %91 = icmp eq i8 %83, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %90
  %93 = load i8, ptr %7, align 1, !tbaa !136
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.10) #19
  br label %97

97:                                               ; preds = %54, %8, %90, %92, %95, %68, %32, %25
  %98 = phi i8 [ 0, %68 ], [ 0, %32 ], [ 0, %25 ], [ 1, %95 ], [ 1, %92 ], [ 1, %90 ], [ 1, %8 ], [ 0, %54 ]
  ret i8 %98
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @tree_overlaps_hard_reg_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !124 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !125
  %4 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @decl_overlaps_hard_reg_set_p, ptr noundef %1, ptr noundef null, ptr noundef null) #19
  ret ptr %4
}

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @decl_overlaps_hard_reg_set_p(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #10 !prof !124 {
  %4 = load ptr, ptr %0, align 8, !tbaa !125
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 32
  br i1 %7, label %8, label %66

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @make_decl_rtl(ptr noundef nonnull %4) #19
  %18 = load ptr, ptr %14, align 8, !tbaa !136
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %66

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 8, !tbaa !136
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  tail call void @make_decl_rtl(ptr noundef nonnull %4) #19
  %28 = load ptr, ptr %14, align 8, !tbaa !136
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi ptr [ %28, %27 ], [ %25, %24 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !136
  %33 = icmp ult i32 %32, 53
  br i1 %33, label %34, label %66

34:                                               ; preds = %29
  %35 = load ptr, ptr %14, align 8, !tbaa !136
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  tail call void @make_decl_rtl(ptr noundef nonnull %4) #19
  %38 = load ptr, ptr %14, align 8, !tbaa !136
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ %35, %34 ]
  %41 = load i64, ptr %2, align 8, !tbaa !180
  %42 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !136
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %45, %41
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %39
  %49 = load i32, ptr %40, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %44, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !136
  %55 = zext i8 %54 to i32
  %56 = add i32 %43, %55
  br label %57

57:                                               ; preds = %61, %48
  %58 = phi i32 [ %43, %48 ], [ %59, %61 ]
  %59 = add i32 %58, 1
  %60 = icmp ult i32 %59, %56
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = zext nneg i32 %59 to i64
  %63 = shl nuw i64 1, %62
  %64 = and i64 %63, %41
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %57, label %66, !llvm.loop !181

66:                                               ; preds = %61, %57, %39, %29, %19, %8, %3
  %67 = phi ptr [ null, %3 ], [ null, %8 ], [ null, %19 ], [ null, %29 ], [ %4, %39 ], [ null, %57 ], [ %4, %61 ]
  ret ptr %67
}

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_asm_stmt(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !124 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !136
  %4 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !136
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %69, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !136
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -10
  %13 = icmp ult i32 %12, -9
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = zext nneg i32 %11 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !140
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !180
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds i8, ptr %0, i64 %20
  %25 = zext i8 %9 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  br label %28

28:                                               ; preds = %7, %23
  %29 = phi ptr [ %27, %23 ], [ null, %7 ]
  %30 = icmp eq i8 %5, 1
  br i1 %30, label %69, label %31

31:                                               ; preds = %28
  %32 = tail call i8 @llvm.umax.i8(i8 %5, i8 2)
  %33 = zext i8 %32 to i64
  br label %34

34:                                               ; preds = %31, %64
  %35 = phi ptr [ %65, %64 ], [ %29, %31 ]
  %36 = phi i64 [ %67, %64 ], [ 1, %31 ]
  %37 = trunc i64 %36 to i32
  %38 = load i8, ptr %4, align 1, !tbaa !136
  %39 = zext i8 %38 to i32
  %40 = icmp ult i32 %39, %37
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2655, ptr noundef nonnull @.str.1) #19
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i8, ptr %8, align 8, !tbaa !136
  %44 = zext i8 %43 to i64
  %45 = add nuw i64 %36, %44
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -10
  %49 = icmp ult i32 %48, -9
  br i1 %49, label %64, label %50

50:                                               ; preds = %42
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !140
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !180
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds i8, ptr %0, i64 %56
  %61 = and i64 %45, 4294967295
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !125
  br label %64

64:                                               ; preds = %42, %59
  %65 = phi ptr [ %63, %59 ], [ null, %42 ]
  %66 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !136
  %67 = add nuw nsw i64 %36, 1
  %68 = icmp eq i64 %67, %33
  br i1 %68, label %69, label %34, !llvm.loop !182

69:                                               ; preds = %64, %28, %1
  %70 = phi ptr [ null, %1 ], [ %29, %28 ], [ %29, %64 ]
  %71 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %72 = load i8, ptr %71, align 8, !tbaa !136
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %128, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 255
  %77 = add nsw i32 %76, -10
  %78 = icmp ult i32 %77, -9
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = zext nneg i32 %76 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !140
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !180
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %88

88:                                               ; preds = %87, %79
  %89 = getelementptr inbounds i8, ptr %0, i64 %85
  %90 = load ptr, ptr %89, align 8, !tbaa !125
  br label %91

91:                                               ; preds = %74, %88
  %92 = phi ptr [ %90, %88 ], [ null, %74 ]
  %93 = icmp eq i8 %72, 1
  br i1 %93, label %128, label %94

94:                                               ; preds = %91
  %95 = tail call i8 @llvm.umax.i8(i8 %72, i8 2)
  %96 = zext i8 %95 to i64
  br label %97

97:                                               ; preds = %94, %123
  %98 = phi ptr [ %124, %123 ], [ %92, %94 ]
  %99 = phi i64 [ %126, %123 ], [ 1, %94 ]
  %100 = trunc i64 %99 to i32
  %101 = load i8, ptr %71, align 8, !tbaa !136
  %102 = zext i8 %101 to i32
  %103 = icmp ult i32 %102, %100
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2622, ptr noundef nonnull @.str.1) #19
  br label %105

105:                                              ; preds = %104, %97
  %106 = load i32, ptr %0, align 8
  %107 = and i32 %106, 255
  %108 = add nsw i32 %107, -10
  %109 = icmp ult i32 %108, -9
  br i1 %109, label %123, label %110

110:                                              ; preds = %105
  %111 = zext nneg i32 %107 to i64
  %112 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !140
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !180
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %119

119:                                              ; preds = %118, %110
  %120 = getelementptr inbounds i8, ptr %0, i64 %116
  %121 = getelementptr inbounds ptr, ptr %120, i64 %99
  %122 = load ptr, ptr %121, align 8, !tbaa !125
  br label %123

123:                                              ; preds = %105, %119
  %124 = phi ptr [ %122, %119 ], [ null, %105 ]
  %125 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 1
  store ptr %124, ptr %125, align 8, !tbaa !136
  %126 = add nuw nsw i64 %99, 1
  %127 = icmp eq i64 %126, %96
  br i1 %127, label %128, label %97, !llvm.loop !183

128:                                              ; preds = %123, %91, %69
  %129 = phi ptr [ null, %69 ], [ %92, %91 ], [ %92, %123 ]
  %130 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %131 = load i8, ptr %130, align 2, !tbaa !136
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %200, label %133

133:                                              ; preds = %128
  %134 = load i8, ptr %71, align 8, !tbaa !136
  %135 = zext i8 %134 to i64
  %136 = load i8, ptr %4, align 1, !tbaa !136
  %137 = zext i8 %136 to i64
  %138 = load i32, ptr %0, align 8
  %139 = and i32 %138, 255
  %140 = add nsw i32 %139, -10
  %141 = icmp ult i32 %140, -9
  br i1 %141, label %156, label %142

142:                                              ; preds = %133
  %143 = zext nneg i32 %139 to i64
  %144 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !140
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %146
  %148 = load i64, ptr %147, align 8, !tbaa !180
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %151

151:                                              ; preds = %150, %142
  %152 = getelementptr inbounds i8, ptr %0, i64 %148
  %153 = getelementptr ptr, ptr %152, i64 %135
  %154 = getelementptr ptr, ptr %153, i64 %137
  %155 = load ptr, ptr %154, align 8, !tbaa !125
  br label %156

156:                                              ; preds = %133, %151
  %157 = phi ptr [ %155, %151 ], [ null, %133 ]
  %158 = icmp eq i8 %131, 1
  br i1 %158, label %200, label %159

159:                                              ; preds = %156
  %160 = tail call i8 @llvm.umax.i8(i8 %131, i8 2)
  %161 = zext i8 %160 to i64
  br label %162

162:                                              ; preds = %159, %195
  %163 = phi ptr [ %196, %195 ], [ %157, %159 ]
  %164 = phi i64 [ %198, %195 ], [ 1, %159 ]
  %165 = trunc i64 %164 to i32
  %166 = load i8, ptr %130, align 2, !tbaa !136
  %167 = zext i8 %166 to i32
  %168 = icmp ult i32 %167, %165
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2688, ptr noundef nonnull @.str.1) #19
  br label %170

170:                                              ; preds = %169, %162
  %171 = load i8, ptr %71, align 8, !tbaa !136
  %172 = zext i8 %171 to i64
  %173 = add nuw i64 %164, %172
  %174 = load i8, ptr %4, align 1, !tbaa !136
  %175 = zext i8 %174 to i64
  %176 = add i64 %173, %175
  %177 = load i32, ptr %0, align 8
  %178 = and i32 %177, 255
  %179 = add nsw i32 %178, -10
  %180 = icmp ult i32 %179, -9
  br i1 %180, label %195, label %181

181:                                              ; preds = %170
  %182 = zext nneg i32 %178 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !140
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %185
  %187 = load i64, ptr %186, align 8, !tbaa !180
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %190

190:                                              ; preds = %189, %181
  %191 = getelementptr inbounds i8, ptr %0, i64 %187
  %192 = and i64 %176, 4294967295
  %193 = getelementptr inbounds ptr, ptr %191, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !125
  br label %195

195:                                              ; preds = %170, %190
  %196 = phi ptr [ %194, %190 ], [ null, %170 ]
  %197 = getelementptr inbounds %struct.tree_common, ptr %163, i64 0, i32 1
  store ptr %196, ptr %197, align 8, !tbaa !136
  %198 = add nuw nsw i64 %164, 1
  %199 = icmp eq i64 %198, %161
  br i1 %199, label %200, label %162, !llvm.loop !184

200:                                              ; preds = %195, %156, %128
  %201 = phi ptr [ null, %128 ], [ %157, %156 ], [ %157, %195 ]
  %202 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %203 = load i8, ptr %202, align 1, !tbaa !136
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %272, label %205

205:                                              ; preds = %200
  %206 = load i8, ptr %71, align 8, !tbaa !136
  %207 = zext i8 %206 to i64
  %208 = load i8, ptr %130, align 2, !tbaa !136
  %209 = zext i8 %208 to i64
  %210 = load i32, ptr %0, align 8
  %211 = and i32 %210, 255
  %212 = add nsw i32 %211, -10
  %213 = icmp ult i32 %212, -9
  br i1 %213, label %228, label %214

214:                                              ; preds = %205
  %215 = zext nneg i32 %211 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !140
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !180
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %223

223:                                              ; preds = %222, %214
  %224 = getelementptr inbounds i8, ptr %0, i64 %220
  %225 = getelementptr ptr, ptr %224, i64 %207
  %226 = getelementptr ptr, ptr %225, i64 %209
  %227 = load ptr, ptr %226, align 8, !tbaa !125
  br label %228

228:                                              ; preds = %205, %223
  %229 = phi ptr [ %227, %223 ], [ null, %205 ]
  %230 = icmp eq i8 %203, 1
  br i1 %230, label %272, label %231

231:                                              ; preds = %228
  %232 = tail call i8 @llvm.umax.i8(i8 %203, i8 2)
  %233 = zext i8 %232 to i64
  br label %234

234:                                              ; preds = %231, %267
  %235 = phi ptr [ %268, %267 ], [ %229, %231 ]
  %236 = phi i64 [ %270, %267 ], [ 1, %231 ]
  %237 = trunc i64 %236 to i32
  %238 = load i8, ptr %202, align 1, !tbaa !136
  %239 = zext i8 %238 to i32
  %240 = icmp ult i32 %239, %237
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2710, ptr noundef nonnull @.str.1) #19
  br label %242

242:                                              ; preds = %241, %234
  %243 = load i8, ptr %71, align 8, !tbaa !136
  %244 = zext i8 %243 to i64
  %245 = add nuw i64 %236, %244
  %246 = load i8, ptr %130, align 2, !tbaa !136
  %247 = zext i8 %246 to i64
  %248 = add i64 %245, %247
  %249 = load i32, ptr %0, align 8
  %250 = and i32 %249, 255
  %251 = add nsw i32 %250, -10
  %252 = icmp ult i32 %251, -9
  br i1 %252, label %267, label %253

253:                                              ; preds = %242
  %254 = zext nneg i32 %250 to i64
  %255 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !140
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %257
  %259 = load i64, ptr %258, align 8, !tbaa !180
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %262

262:                                              ; preds = %261, %253
  %263 = getelementptr inbounds i8, ptr %0, i64 %259
  %264 = and i64 %248, 4294967295
  %265 = getelementptr inbounds ptr, ptr %263, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !125
  br label %267

267:                                              ; preds = %242, %262
  %268 = phi ptr [ %266, %262 ], [ null, %242 ]
  %269 = getelementptr inbounds %struct.tree_common, ptr %235, i64 0, i32 1
  store ptr %268, ptr %269, align 8, !tbaa !136
  %270 = add nuw nsw i64 %236, 1
  %271 = icmp eq i64 %270, %233
  br i1 %271, label %272, label %234, !llvm.loop !185

272:                                              ; preds = %267, %228, %200
  %273 = phi ptr [ null, %200 ], [ %229, %228 ], [ %229, %267 ]
  %274 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !136
  %276 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %275)
  %277 = trunc i64 %276 to i32
  %278 = tail call ptr @build_string(i32 noundef %277, ptr noundef %275) #19
  %279 = load i32, ptr %0, align 8
  %280 = and i32 %279, 65536
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %300, label %282

282:                                              ; preds = %272
  %283 = load i64, ptr %278, align 8
  %284 = and i64 %283, 65535
  %285 = icmp eq i64 %284, 121
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.tree_exp, ptr %278, i64 0, i32 3
  %288 = load ptr, ptr %287, align 8, !tbaa !136
  br label %289

289:                                              ; preds = %282, %286
  %290 = phi ptr [ %288, %286 ], [ %278, %282 ]
  %291 = getelementptr inbounds %struct.tree_string, ptr %290, i64 0, i32 2
  %292 = tail call ptr @ggc_alloc_string(ptr noundef nonnull %291, i32 noundef -1) #19
  %293 = tail call ptr @gen_rtx_fmt_si_stat(i32 noundef 16, i32 noundef 0, ptr noundef %292, i32 noundef %3) #19
  %294 = load i32, ptr %293, align 8
  %295 = shl i32 %279, 10
  %296 = and i32 %295, 134217728
  %297 = and i32 %294, -134217729
  %298 = or disjoint i32 %297, %296
  store i32 %298, ptr %293, align 8
  %299 = tail call ptr @emit_insn(ptr noundef nonnull %293) #19
  br label %334

300:                                              ; preds = %272
  %301 = load i8, ptr %4, align 1, !tbaa !136
  %302 = zext i8 %301 to i64
  %303 = shl nuw nsw i64 %302, 3
  %304 = alloca i8, i64 %303, align 16
  %305 = icmp eq ptr %70, null
  br i1 %305, label %316, label %306

306:                                              ; preds = %300, %306
  %307 = phi ptr [ %313, %306 ], [ %70, %300 ]
  %308 = phi i64 [ %314, %306 ], [ 0, %300 ]
  %309 = getelementptr inbounds %struct.tree_list, ptr %307, i64 0, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !136
  %311 = getelementptr inbounds ptr, ptr %304, i64 %308
  store ptr %310, ptr %311, align 8, !tbaa !125
  %312 = getelementptr inbounds %struct.tree_common, ptr %307, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !136
  %314 = add i64 %308, 1
  %315 = icmp eq ptr %313, null
  br i1 %315, label %316, label %306, !llvm.loop !186

316:                                              ; preds = %306, %300
  %317 = lshr i32 %279, 17
  %318 = and i32 %317, 1
  tail call fastcc void @expand_asm_operands(ptr noundef %278, ptr noundef %70, ptr noundef %129, ptr noundef %201, ptr noundef %273, i32 noundef %318, i32 noundef %3)
  %319 = icmp eq ptr %70, null
  br i1 %319, label %334, label %320

320:                                              ; preds = %316, %329
  %321 = phi ptr [ %331, %329 ], [ %70, %316 ]
  %322 = phi i64 [ %332, %329 ], [ 0, %316 ]
  %323 = getelementptr inbounds ptr, ptr %304, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !125
  %325 = getelementptr inbounds %struct.tree_list, ptr %321, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !136
  %327 = icmp eq ptr %324, %326
  br i1 %327, label %329, label %328

328:                                              ; preds = %320
  tail call void @expand_assignment(ptr noundef %324, ptr noundef %326, i8 noundef zeroext 0) #19
  tail call void @free_temp_slots() #19
  store ptr %324, ptr %325, align 8, !tbaa !136
  br label %329

329:                                              ; preds = %320, %328
  %330 = getelementptr inbounds %struct.tree_common, ptr %321, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !136
  %332 = add i64 %322, 1
  %333 = icmp eq ptr %331, null
  br i1 %333, label %334, label %320, !llvm.loop !187

334:                                              ; preds = %329, %316, %289
  ret void
}

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @expand_asm_operands(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #10 !prof !124 {
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca ptr, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca ptr, align 8
  %22 = alloca [16 x i8], align 16
  %23 = tail call i32 @list_length(ptr noundef %2) #19
  %24 = tail call i32 @list_length(ptr noundef %1) #19
  %25 = tail call i32 @list_length(ptr noundef %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %26 = sext i32 %24 to i64
  %27 = shl nsw i64 %26, 3
  %28 = alloca i8, i64 %27, align 16
  %29 = shl nsw i64 %26, 2
  %30 = alloca i8, i64 %29, align 16
  %31 = alloca i8, i64 %27, align 16
  %32 = alloca i8, i64 %29, align 16
  %33 = add nsw i32 %24, %23
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 3
  %36 = alloca i8, i64 %35, align 16
  %37 = load i32, ptr @generating_concat_p, align 4, !tbaa !140
  %38 = icmp eq i32 %24, 0
  %39 = shl i32 %5, 27
  %40 = icmp ne ptr %1, null
  %41 = icmp ne ptr %2, null
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %7
  %44 = select i1 %40, ptr %1, ptr %2
  %45 = getelementptr inbounds %struct.tree_list, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !136
  %47 = getelementptr inbounds %struct.tree_list, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !136
  %49 = getelementptr inbounds %struct.tree_string, ptr %48, i64 0, i32 2
  %50 = load i8, ptr %49, align 1, !tbaa !136
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %43, %52
  %53 = phi i8 [ %60, %52 ], [ %50, %43 ]
  %54 = phi i32 [ %59, %52 ], [ 0, %43 ]
  %55 = phi ptr [ %56, %52 ], [ %49, %43 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = icmp eq i8 %53, 44
  %58 = zext i1 %57 to i32
  %59 = add nuw nsw i32 %54, %58
  %60 = load i8, ptr %56, align 1, !tbaa !136
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %52, !llvm.loop !188

62:                                               ; preds = %52, %43
  %63 = phi i32 [ 0, %43 ], [ %59, %52 ]
  %64 = icmp ugt i32 %63, 29
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23) #19
  br label %862

66:                                               ; preds = %62, %98
  %67 = phi ptr [ %99, %98 ], [ %1, %62 ]
  %68 = phi ptr [ %100, %98 ], [ %2, %62 ]
  %69 = icmp eq ptr %67, null
  br i1 %69, label %101, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_list, ptr %67, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !136
  %73 = getelementptr inbounds %struct.tree_list, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !136
  %75 = getelementptr inbounds %struct.tree_string, ptr %74, i64 0, i32 2
  %76 = load i8, ptr %75, align 1, !tbaa !136
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %70, %78
  %79 = phi i8 [ %86, %78 ], [ %76, %70 ]
  %80 = phi i32 [ %85, %78 ], [ 0, %70 ]
  %81 = phi ptr [ %82, %78 ], [ %75, %70 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  %83 = icmp eq i8 %79, 44
  %84 = zext i1 %83 to i32
  %85 = add nuw nsw i32 %80, %84
  %86 = load i8, ptr %82, align 1, !tbaa !136
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %78, !llvm.loop !188

88:                                               ; preds = %78, %70
  %89 = phi i32 [ 0, %70 ], [ %85, %78 ]
  %90 = icmp eq i32 %89, %63
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24) #19
  br label %98

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !136
  %95 = icmp eq ptr %94, null
  %96 = select i1 %95, ptr %68, ptr %94
  %97 = select i1 %95, ptr null, ptr %68
  br label %98

98:                                               ; preds = %92, %91
  %99 = phi ptr [ %67, %91 ], [ %96, %92 ]
  %100 = phi ptr [ %68, %91 ], [ %97, %92 ]
  br i1 %90, label %66, label %862, !llvm.loop !189

101:                                              ; preds = %66, %7
  %102 = tail call ptr @resolve_asm_operand_names(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4)
  %103 = icmp eq ptr %1, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %109, %101
  %105 = phi i64 [ 0, %101 ], [ %120, %109 ]
  %106 = icmp eq ptr %2, null
  br i1 %106, label %135, label %107

107:                                              ; preds = %104
  %108 = and i64 %105, 4294967295
  br label %122

109:                                              ; preds = %101, %109
  %110 = phi i64 [ %120, %109 ], [ 0, %101 ]
  %111 = phi ptr [ %119, %109 ], [ %1, %101 ]
  %112 = getelementptr inbounds %struct.tree_list, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !136
  %114 = getelementptr inbounds %struct.tree_list, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !136
  %116 = getelementptr inbounds %struct.tree_string, ptr %115, i64 0, i32 2
  %117 = getelementptr inbounds ptr, ptr %36, i64 %110
  store ptr %116, ptr %117, align 8, !tbaa !125
  %118 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !136
  %120 = add nuw i64 %110, 1
  %121 = icmp eq ptr %119, null
  br i1 %121, label %104, label %109, !llvm.loop !190

122:                                              ; preds = %107, %122
  %123 = phi i64 [ %108, %107 ], [ %133, %122 ]
  %124 = phi ptr [ %2, %107 ], [ %132, %122 ]
  %125 = getelementptr inbounds %struct.tree_list, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !136
  %127 = getelementptr inbounds %struct.tree_list, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !136
  %129 = getelementptr inbounds %struct.tree_string, ptr %128, i64 0, i32 2
  %130 = getelementptr inbounds ptr, ptr %36, i64 %123
  store ptr %129, ptr %130, align 8, !tbaa !125
  %131 = getelementptr inbounds %struct.tree_common, ptr %124, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !136
  %133 = add nuw i64 %123, 1
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %122, !llvm.loop !191

135:                                              ; preds = %122, %104
  %136 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 79), align 8, !tbaa !192
  %137 = tail call ptr %136(ptr noundef %1, ptr noundef %2, ptr noundef %3) #19
  store i64 0, ptr %8, align 8, !tbaa !180
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %184, %135
  %140 = phi i32 [ 0, %135 ], [ %183, %184 ]
  %141 = icmp eq ptr %1, null
  br i1 %141, label %267, label %188

142:                                              ; preds = %135, %184
  %143 = phi i32 [ %183, %184 ], [ 0, %135 ]
  %144 = phi ptr [ %186, %184 ], [ %137, %135 ]
  %145 = getelementptr inbounds %struct.tree_list, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !136
  %147 = load ptr, ptr @global_trees, align 16, !tbaa !125
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %181, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.tree_string, ptr %146, i64 0, i32 2
  %151 = tail call i32 @decode_reg_name(ptr noundef nonnull %150) #19
  %152 = icmp sgt i32 %151, -1
  %153 = icmp eq i32 %151, -4
  %154 = or i1 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = add nsw i32 %143, 1
  br label %160

157:                                              ; preds = %149
  %158 = icmp eq i32 %151, -2
  br i1 %158, label %159, label %160

159:                                              ; preds = %157
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.14, ptr noundef nonnull %150) #19
  br label %160

160:                                              ; preds = %157, %159, %155
  %161 = phi i32 [ %156, %155 ], [ %143, %159 ], [ %143, %157 ]
  br i1 %152, label %162, label %181

162:                                              ; preds = %160
  %163 = load i32, ptr @flag_pic, align 4, !tbaa !140
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr @reload_completed, align 4, !tbaa !140
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !125
  %170 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !136
  br label %172

172:                                              ; preds = %168, %165, %162
  %173 = phi i32 [ -1, %162 ], [ %171, %168 ], [ 3, %165 ]
  %174 = icmp eq i32 %151, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull %150) #19
  br label %181

176:                                              ; preds = %172
  %177 = zext nneg i32 %151 to i64
  %178 = shl nuw i64 1, %177
  %179 = load i64, ptr %8, align 8, !tbaa !180
  %180 = or i64 %179, %178
  store i64 %180, ptr %8, align 8, !tbaa !180
  br label %181

181:                                              ; preds = %160, %176, %142, %175
  %182 = phi i1 [ false, %175 ], [ false, %142 ], [ true, %176 ], [ true, %160 ]
  %183 = phi i32 [ %161, %175 ], [ %143, %142 ], [ %161, %176 ], [ %161, %160 ]
  br i1 %182, label %184, label %862

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !136
  %187 = icmp eq ptr %186, null
  br i1 %187, label %139, label %142, !llvm.loop !193

188:                                              ; preds = %139, %262
  %189 = phi i64 [ %265, %262 ], [ 0, %139 ]
  %190 = phi i32 [ %261, %262 ], [ 0, %139 ]
  %191 = phi ptr [ %264, %262 ], [ %1, %139 ]
  %192 = getelementptr inbounds %struct.tree_list, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !136
  %194 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  %196 = load ptr, ptr @global_trees, align 16, !tbaa !125
  %197 = icmp eq ptr %195, %196
  br i1 %197, label %259, label %198

198:                                              ; preds = %188
  %199 = getelementptr inbounds ptr, ptr %36, i64 %189
  %200 = load ptr, ptr %199, align 8, !tbaa !125
  store ptr %200, ptr %9, align 8, !tbaa !125
  %201 = trunc i64 %189 to i32
  %202 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %9, i32 noundef %201, i32 noundef %23, i32 noundef %24, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10), !range !194
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %259, label %204

204:                                              ; preds = %198
  %205 = load i8, ptr %11, align 1, !tbaa !136
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %254

207:                                              ; preds = %204
  %208 = load i8, ptr %12, align 1, !tbaa !136
  %209 = icmp ne i8 %208, 0
  %210 = load i8, ptr %10, align 1
  %211 = icmp ne i8 %210, 0
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %253, label %213

213:                                              ; preds = %207
  %214 = load i64, ptr %193, align 8
  %215 = and i64 %214, 65535
  %216 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !140
  %218 = icmp eq i32 %217, 3
  br i1 %218, label %219, label %254

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %193, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !136
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  tail call void @make_decl_rtl(ptr noundef nonnull %193) #19
  %224 = load ptr, ptr %220, align 8, !tbaa !136
  br label %225

225:                                              ; preds = %219, %223
  %226 = phi ptr [ %224, %223 ], [ %221, %219 ]
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, 65535
  %229 = icmp eq i32 %228, 37
  br i1 %229, label %230, label %254

230:                                              ; preds = %225
  %231 = load ptr, ptr %220, align 8, !tbaa !136
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  tail call void @make_decl_rtl(ptr noundef nonnull %193) #19
  %234 = load ptr, ptr %220, align 8, !tbaa !136
  br label %235

235:                                              ; preds = %230, %233
  %236 = phi ptr [ %234, %233 ], [ %231, %230 ]
  %237 = load i32, ptr %236, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = load i64, ptr %195, align 8
  %241 = and i64 %240, 65535
  %242 = icmp eq i64 %241, 14
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = tail call i32 @vector_type_mode(ptr noundef nonnull %195) #19
  br label %250

245:                                              ; preds = %235
  %246 = getelementptr inbounds %struct.tree_type, ptr %195, i64 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = icmp eq i32 %239, %251
  br i1 %252, label %254, label %253

253:                                              ; preds = %250, %207
  tail call void @mark_addressable(ptr noundef %193) #19
  br label %254

254:                                              ; preds = %253, %250, %225, %213, %204
  %255 = load i8, ptr %10, align 1, !tbaa !136
  %256 = icmp ne i8 %255, 0
  %257 = zext i1 %256 to i32
  %258 = add nsw i32 %190, %257
  br label %259

259:                                              ; preds = %198, %188, %254
  %260 = phi i1 [ true, %254 ], [ false, %188 ], [ false, %198 ]
  %261 = phi i32 [ %258, %254 ], [ %190, %188 ], [ %190, %198 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br i1 %260, label %262, label %862

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.tree_common, ptr %191, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !136
  %265 = add nuw i64 %189, 1
  %266 = icmp eq ptr %264, null
  br i1 %266, label %267, label %188, !llvm.loop !195

267:                                              ; preds = %262, %139
  %268 = phi i32 [ 0, %139 ], [ %261, %262 ]
  %269 = add nsw i32 %268, %23
  %270 = add nsw i32 %269, %24
  %271 = icmp sgt i32 %270, 30
  br i1 %271, label %277, label %272

272:                                              ; preds = %267
  %273 = icmp eq ptr %2, null
  br i1 %273, label %278, label %274

274:                                              ; preds = %272
  %275 = sext i32 %24 to i64
  %276 = getelementptr ptr, ptr %36, i64 %275
  br label %280

277:                                              ; preds = %267
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef 30) #19
  br label %862

278:                                              ; preds = %303, %272
  %279 = icmp eq ptr %1, null
  br i1 %279, label %473, label %308

280:                                              ; preds = %274, %303
  %281 = phi i64 [ 0, %274 ], [ %304, %303 ]
  %282 = phi ptr [ %2, %274 ], [ %306, %303 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %283 = getelementptr inbounds %struct.tree_list, ptr %282, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !136
  %285 = getelementptr inbounds %struct.tree_common, ptr %284, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !136
  %287 = load ptr, ptr @global_trees, align 16, !tbaa !125
  %288 = icmp eq ptr %286, %287
  br i1 %288, label %861, label %289

289:                                              ; preds = %280
  %290 = getelementptr ptr, ptr %276, i64 %281
  %291 = load ptr, ptr %290, align 8, !tbaa !125
  store ptr %291, ptr %15, align 8, !tbaa !125
  %292 = trunc i64 %281 to i32
  %293 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %15, i32 noundef %292, i32 noundef %269, i32 noundef %24, i32 noundef %268, ptr noundef nonnull %36, ptr noundef nonnull %14, ptr noundef nonnull %13)
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %861, label %295

295:                                              ; preds = %289
  %296 = load i8, ptr %13, align 1, !tbaa !136
  %297 = icmp eq i8 %296, 0
  %298 = load i8, ptr %14, align 1
  %299 = icmp ne i8 %298, 0
  %300 = select i1 %297, i1 %299, i1 false
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load ptr, ptr %283, align 8, !tbaa !136
  tail call void @mark_addressable(ptr noundef %302) #19
  br label %303

303:                                              ; preds = %295, %301
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #19
  %304 = add nuw i64 %281, 1
  %305 = getelementptr inbounds %struct.tree_common, ptr %282, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !136
  %307 = icmp eq ptr %306, null
  br i1 %307, label %278, label %280, !llvm.loop !196

308:                                              ; preds = %278, %464
  %309 = phi i64 [ %471, %464 ], [ 0, %278 ]
  %310 = phi i32 [ %465, %464 ], [ 0, %278 ]
  %311 = phi i32 [ %468, %464 ], [ 0, %278 ]
  %312 = phi ptr [ %470, %464 ], [ %1, %278 ]
  %313 = getelementptr inbounds %struct.tree_list, ptr %312, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !136
  %315 = getelementptr inbounds %struct.tree_common, ptr %314, i64 0, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #19
  %317 = getelementptr inbounds ptr, ptr %36, i64 %309
  %318 = trunc i64 %309 to i32
  %319 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %317, i32 noundef %318, i32 noundef %269, i32 noundef %24, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16), !range !194
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %308
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1) #19
  br label %322

322:                                              ; preds = %308, %321
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !140
  %323 = getelementptr inbounds ptr, ptr %31, i64 %309
  store ptr null, ptr %323, align 8, !tbaa !125
  %324 = load i64, ptr %314, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 47
  %327 = load i8, ptr %18, align 1
  %328 = icmp ne i8 %327, 0
  %329 = select i1 %326, i1 %328, i1 false
  br i1 %329, label %389, label %330

330:                                              ; preds = %322
  %331 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %325
  %332 = load i32, ptr %331, align 4, !tbaa !140
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %383

334:                                              ; preds = %330
  br i1 %328, label %346, label %335

335:                                              ; preds = %334
  %336 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %314, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !136
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  call void @make_decl_rtl(ptr noundef nonnull %314) #19
  %340 = load ptr, ptr %336, align 8, !tbaa !136
  br label %341

341:                                              ; preds = %335, %339
  %342 = phi ptr [ %340, %339 ], [ %337, %335 ]
  %343 = load i32, ptr %342, align 8
  %344 = and i32 %343, 65535
  %345 = icmp eq i32 %344, 37
  br i1 %345, label %346, label %383

346:                                              ; preds = %341, %334
  %347 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %314, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !136
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %352

350:                                              ; preds = %346
  call void @make_decl_rtl(ptr noundef nonnull %314) #19
  %351 = load ptr, ptr %347, align 8, !tbaa !136
  br label %352

352:                                              ; preds = %346, %350
  %353 = phi ptr [ %351, %350 ], [ %348, %346 ]
  %354 = load i32, ptr %353, align 8
  %355 = and i32 %354, 65535
  %356 = icmp eq i32 %355, 37
  br i1 %356, label %357, label %389

357:                                              ; preds = %352
  %358 = load ptr, ptr %347, align 8, !tbaa !136
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %362

360:                                              ; preds = %357
  call void @make_decl_rtl(ptr noundef nonnull %314) #19
  %361 = load ptr, ptr %347, align 8, !tbaa !136
  br label %362

362:                                              ; preds = %357, %360
  %363 = phi ptr [ %361, %360 ], [ %358, %357 ]
  %364 = load i32, ptr %363, align 8
  %365 = lshr i32 %364, 16
  %366 = and i32 %365, 255
  %367 = load i64, ptr %316, align 8
  %368 = and i64 %367, 65535
  %369 = icmp eq i64 %368, 14
  br i1 %369, label %370, label %372

370:                                              ; preds = %362
  %371 = call i32 @vector_type_mode(ptr noundef nonnull %316) #19
  br label %377

372:                                              ; preds = %362
  %373 = getelementptr inbounds %struct.tree_type, ptr %316, i64 0, i32 6
  %374 = load i32, ptr %373, align 4
  %375 = lshr i32 %374, 16
  %376 = and i32 %375, 255
  br label %377

377:                                              ; preds = %372, %370
  %378 = phi i32 [ %371, %370 ], [ %376, %372 ]
  %379 = icmp ne i32 %366, %378
  %380 = load i8, ptr %17, align 1
  %381 = icmp ne i8 %380, 0
  %382 = select i1 %379, i1 %381, i1 false
  br i1 %382, label %386, label %389

383:                                              ; preds = %341, %330
  %384 = load i8, ptr %17, align 1, !tbaa !136
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %377, %383
  %387 = load i8, ptr %16, align 1, !tbaa !136
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %425, label %389

389:                                              ; preds = %383, %377, %322, %386, %352
  %390 = call ptr @expand_expr_real(ptr noundef nonnull %314, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null) #19
  %391 = load i32, ptr %390, align 8
  %392 = and i32 %391, 65535
  %393 = icmp eq i32 %392, 43
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = call ptr @validize_mem(ptr noundef nonnull %390) #19
  br label %396

396:                                              ; preds = %394, %389
  %397 = phi ptr [ %395, %394 ], [ %390, %389 ]
  %398 = load i8, ptr %17, align 1, !tbaa !136
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %396
  %401 = load i32, ptr %397, align 8
  %402 = and i32 %401, 65535
  %403 = icmp eq i32 %402, 43
  br i1 %403, label %406, label %404

404:                                              ; preds = %400
  %405 = trunc i64 %309 to i32
  call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %405) #19
  br label %406

406:                                              ; preds = %404, %400, %396
  %407 = icmp eq i8 %327, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %406
  %409 = load i32, ptr %397, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 43
  br i1 %411, label %416, label %412

412:                                              ; preds = %408, %406
  %413 = load i32, ptr %397, align 8
  %414 = and i32 %413, 65535
  %415 = icmp eq i32 %414, 41
  br i1 %415, label %416, label %441

416:                                              ; preds = %412, %408
  store ptr %397, ptr %323, align 8, !tbaa !125
  %417 = load i32, ptr %397, align 8
  %418 = lshr i32 %417, 16
  %419 = and i32 %418, 255
  %420 = call ptr @gen_reg_rtx(i32 noundef %419) #19
  %421 = load i8, ptr %16, align 1, !tbaa !136
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %441, label %423

423:                                              ; preds = %416
  %424 = call ptr @emit_move_insn(ptr noundef %420, ptr noundef nonnull %397) #19
  br label %441

425:                                              ; preds = %386
  %426 = call ptr @assign_temp(ptr noundef %316, i32 noundef 0, i32 noundef 0, i32 noundef 1) #19
  %427 = call ptr @validize_mem(ptr noundef %426) #19
  %428 = load i32, ptr %427, align 8
  %429 = and i32 %428, 65535
  %430 = icmp eq i32 %429, 43
  br i1 %430, label %439, label %431

431:                                              ; preds = %425
  %432 = load ptr, ptr %313, align 8, !tbaa !136
  %433 = load i64, ptr %432, align 8
  %434 = and i64 %433, 65535
  %435 = icmp eq i64 %434, 141
  br i1 %435, label %436, label %439

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.tree_ssa_name, ptr %432, i64 0, i32 1
  %438 = load ptr, ptr %437, align 8, !tbaa !136
  call void @set_reg_attrs_for_decl_rtl(ptr noundef %438, ptr noundef nonnull %427) #19
  br label %439

439:                                              ; preds = %436, %431, %425
  %440 = call ptr @make_tree(ptr noundef %316, ptr noundef nonnull %427) #19
  store ptr %440, ptr %313, align 8, !tbaa !136
  br label %441

441:                                              ; preds = %416, %412, %423, %439
  %442 = phi ptr [ %420, %423 ], [ %397, %412 ], [ %427, %439 ], [ %420, %416 ]
  %443 = getelementptr inbounds ptr, ptr %28, i64 %309
  store ptr %442, ptr %443, align 8, !tbaa !125
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !140
  %444 = load i8, ptr %16, align 1, !tbaa !136
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %464, label %446

446:                                              ; preds = %441
  %447 = load i64, ptr %316, align 8
  %448 = and i64 %447, 65535
  %449 = icmp eq i64 %448, 14
  br i1 %449, label %450, label %452

450:                                              ; preds = %446
  %451 = call i32 @vector_type_mode(ptr noundef nonnull %316) #19
  br label %457

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.tree_type, ptr %316, i64 0, i32 6
  %454 = load i32, ptr %453, align 4
  %455 = lshr i32 %454, 16
  %456 = and i32 %455, 255
  br label %457

457:                                              ; preds = %452, %450
  %458 = phi i32 [ %451, %450 ], [ %456, %452 ]
  %459 = sext i32 %310 to i64
  %460 = getelementptr inbounds i32, ptr %32, i64 %459
  store i32 %458, ptr %460, align 4, !tbaa !140
  %461 = add nsw i32 %310, 1
  %462 = getelementptr inbounds i32, ptr %30, i64 %459
  %463 = trunc i64 %309 to i32
  store i32 %463, ptr %462, align 4, !tbaa !140
  br label %464

464:                                              ; preds = %457, %441
  %465 = phi i32 [ %461, %457 ], [ %310, %441 ]
  %466 = call fastcc zeroext i8 @tree_conflicts_with_clobbers_p(ptr noundef nonnull %314, ptr noundef nonnull %8), !range !194
  %467 = icmp eq i8 %466, 0
  %468 = select i1 %467, i32 %311, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #19
  %469 = getelementptr inbounds %struct.tree_common, ptr %312, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !136
  %471 = add nuw i64 %309, 1
  %472 = icmp eq ptr %470, null
  br i1 %472, label %473, label %308, !llvm.loop !197

473:                                              ; preds = %464, %278
  %474 = phi i32 [ 0, %278 ], [ %468, %464 ]
  %475 = phi i32 [ 0, %278 ], [ %465, %464 ]
  %476 = call ptr @rtvec_alloc(i32 noundef %269) #19
  %477 = call ptr @rtvec_alloc(i32 noundef %269) #19
  %478 = call ptr @rtvec_alloc(i32 noundef %25) #19
  br i1 %38, label %484, label %479

479:                                              ; preds = %473
  %480 = load ptr, ptr %28, align 16, !tbaa !125
  %481 = load i32, ptr %480, align 8
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  br label %484

484:                                              ; preds = %473, %479
  %485 = phi i32 [ %39, %479 ], [ 134217728, %473 ]
  %486 = phi i32 [ %483, %479 ], [ 0, %473 ]
  %487 = getelementptr inbounds %struct.tree_string, ptr %102, i64 0, i32 2
  %488 = call ptr @ggc_alloc_string(ptr noundef nonnull %487, i32 noundef -1) #19
  %489 = call ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef 17, i32 noundef %486, ptr noundef %488, ptr noundef nonnull @empty_string, i32 noundef 0, ptr noundef %476, ptr noundef %477, ptr noundef %478, i32 noundef %6) #19
  %490 = load i32, ptr %489, align 8
  %491 = and i32 %485, 134217728
  %492 = and i32 %490, -134217729
  %493 = or disjoint i32 %492, %491
  store i32 %493, ptr %489, align 8
  %494 = icmp eq ptr %2, null
  br i1 %494, label %663, label %495

495:                                              ; preds = %484
  %496 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1, i32 0, i32 1
  %497 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1, i32 0, i32 2
  %498 = sext i32 %24 to i64
  br label %499

499:                                              ; preds = %495, %649
  %500 = phi i64 [ 0, %495 ], [ %661, %649 ]
  %501 = phi i32 [ %474, %495 ], [ %658, %649 ]
  %502 = phi ptr [ %2, %495 ], [ %660, %649 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #19
  %503 = add nsw i64 %500, %498
  %504 = getelementptr inbounds ptr, ptr %36, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !125
  store ptr %505, ptr %21, align 8, !tbaa !125
  %506 = trunc i64 %500 to i32
  %507 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %21, i32 noundef %506, i32 noundef %269, i32 noundef %24, i32 noundef %475, ptr noundef nonnull %36, ptr noundef nonnull %20, ptr noundef nonnull %19)
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %499
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 875, ptr noundef nonnull @.str.1) #19
  br label %510

510:                                              ; preds = %499, %509
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !140
  %511 = getelementptr inbounds %struct.tree_list, ptr %502, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !136
  %513 = getelementptr inbounds %struct.tree_common, ptr %512, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !136
  %515 = load i8, ptr %19, align 1, !tbaa !136
  %516 = icmp eq i8 %515, 0
  %517 = load i8, ptr %20, align 1
  %518 = icmp eq i8 %517, 0
  %519 = select i1 %518, i32 4, i32 6
  %520 = select i1 %516, i32 %519, i32 0
  %521 = call ptr @expand_expr_real(ptr noundef %512, ptr noundef null, i32 noundef 0, i32 noundef %520, ptr noundef null) #19
  %522 = load i32, ptr %521, align 8
  %523 = trunc i32 %522 to i16
  switch i16 %523, label %530 [
    i16 41, label %524
    i16 43, label %528
  ]

524:                                              ; preds = %510
  %525 = lshr i32 %522, 16
  %526 = and i32 %525, 255
  %527 = call ptr @force_reg(i32 noundef %526, ptr noundef nonnull %521) #19
  br label %530

528:                                              ; preds = %510
  %529 = call ptr @validize_mem(ptr noundef nonnull %521) #19
  br label %530

530:                                              ; preds = %510, %528, %524
  %531 = phi ptr [ %527, %524 ], [ %529, %528 ], [ %521, %510 ]
  %532 = load ptr, ptr %21, align 8, !tbaa !125
  %533 = call i32 @asm_operand_ok(ptr noundef %531, ptr noundef %532, ptr noundef null) #19
  %534 = icmp slt i32 %533, 1
  br i1 %534, label %535, label %635

535:                                              ; preds = %530
  br i1 %516, label %564, label %536

536:                                              ; preds = %535
  %537 = load i64, ptr %514, align 8
  %538 = and i64 %537, 65535
  %539 = icmp eq i64 %538, 14
  br i1 %539, label %540, label %542

540:                                              ; preds = %536
  %541 = call i32 @vector_type_mode(ptr noundef nonnull %514) #19
  br label %547

542:                                              ; preds = %536
  %543 = getelementptr inbounds %struct.tree_type, ptr %514, i64 0, i32 6
  %544 = load i32, ptr %543, align 4
  %545 = lshr i32 %544, 16
  %546 = and i32 %545, 255
  br label %547

547:                                              ; preds = %542, %540
  %548 = phi i32 [ %541, %540 ], [ %546, %542 ]
  %549 = icmp eq i32 %548, 1
  br i1 %549, label %564, label %550

550:                                              ; preds = %547
  %551 = load i64, ptr %514, align 8
  %552 = and i64 %551, 65535
  %553 = icmp eq i64 %552, 14
  br i1 %553, label %554, label %556

554:                                              ; preds = %550
  %555 = call i32 @vector_type_mode(ptr noundef nonnull %514) #19
  br label %561

556:                                              ; preds = %550
  %557 = getelementptr inbounds %struct.tree_type, ptr %514, i64 0, i32 6
  %558 = load i32, ptr %557, align 4
  %559 = lshr i32 %558, 16
  %560 = and i32 %559, 255
  br label %561

561:                                              ; preds = %556, %554
  %562 = phi i32 [ %555, %554 ], [ %560, %556 ]
  %563 = call ptr @force_reg(i32 noundef %562, ptr noundef %531) #19
  br label %635

564:                                              ; preds = %547, %535
  br i1 %518, label %565, label %568

565:                                              ; preds = %564
  %566 = trunc i64 %503 to i32
  %567 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %566) #19
  br label %635

568:                                              ; preds = %564
  %569 = load i32, ptr %531, align 8
  %570 = and i32 %569, 65535
  %571 = icmp eq i32 %570, 43
  br i1 %571, label %635, label %572

572:                                              ; preds = %568
  %573 = trunc i64 %503 to i32
  %574 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %573) #19
  %575 = load i32, ptr %531, align 8
  %576 = and i32 %575, 65535
  %577 = zext nneg i32 %576 to i64
  %578 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %577
  %579 = load i32, ptr %578, align 4, !tbaa !140
  %580 = icmp eq i32 %579, 9
  br i1 %580, label %581, label %612

581:                                              ; preds = %572
  %582 = load i64, ptr %514, align 8
  %583 = and i64 %582, 65535
  %584 = icmp eq i64 %583, 14
  br i1 %584, label %585, label %587

585:                                              ; preds = %581
  %586 = call i32 @vector_type_mode(ptr noundef nonnull %514) #19
  br label %592

587:                                              ; preds = %581
  %588 = getelementptr inbounds %struct.tree_type, ptr %514, i64 0, i32 6
  %589 = load i32, ptr %588, align 4
  %590 = lshr i32 %589, 16
  %591 = and i32 %590, 255
  br label %592

592:                                              ; preds = %587, %585
  %593 = phi i32 [ %586, %585 ], [ %591, %587 ]
  %594 = call ptr @force_const_mem(i32 noundef %593, ptr noundef nonnull %531) #19
  %595 = icmp eq ptr %594, null
  br i1 %595, label %598, label %596

596:                                              ; preds = %592
  %597 = call ptr @validize_mem(ptr noundef nonnull %594) #19
  br label %612

598:                                              ; preds = %592
  %599 = load i64, ptr %514, align 8
  %600 = and i64 %599, 65535
  %601 = icmp eq i64 %600, 14
  br i1 %601, label %602, label %604

602:                                              ; preds = %598
  %603 = call i32 @vector_type_mode(ptr noundef nonnull %514) #19
  br label %609

604:                                              ; preds = %598
  %605 = getelementptr inbounds %struct.tree_type, ptr %514, i64 0, i32 6
  %606 = load i32, ptr %605, align 4
  %607 = lshr i32 %606, 16
  %608 = and i32 %607, 255
  br label %609

609:                                              ; preds = %604, %602
  %610 = phi i32 [ %603, %602 ], [ %608, %604 ]
  %611 = call ptr @force_reg(i32 noundef %610, ptr noundef nonnull %531) #19
  br label %612

612:                                              ; preds = %596, %609, %572
  %613 = phi ptr [ %531, %572 ], [ %597, %596 ], [ %611, %609 ]
  %614 = load i32, ptr %613, align 8
  %615 = trunc i32 %614 to i16
  switch i16 %615, label %635 [
    i16 37, label %616
    i16 39, label %616
    i16 41, label %616
  ]

616:                                              ; preds = %612, %612, %612
  %617 = load i64, ptr %514, align 8
  %618 = trunc i64 %617 to i32
  %619 = lshr i32 %618, 18
  %620 = and i32 %619, 2
  %621 = getelementptr inbounds %struct.tree_type, ptr %514, i64 0, i32 6
  %622 = load i32, ptr %621, align 4
  %623 = lshr i32 %622, 11
  %624 = and i32 %623, 4
  %625 = lshr i64 %617, 48
  %626 = trunc i64 %625 to i32
  %627 = and i32 %626, 65280
  %628 = or disjoint i32 %624, %620
  %629 = or disjoint i32 %628, %627
  %630 = or disjoint i32 %629, 1
  %631 = call ptr @build_qualified_type(ptr noundef nonnull %514, i32 noundef %630) #19
  %632 = call ptr @assign_temp(ptr noundef %631, i32 noundef 1, i32 noundef 1, i32 noundef 1) #19
  %633 = call ptr @validize_mem(ptr noundef %632) #19
  %634 = call ptr @emit_move_insn(ptr noundef %633, ptr noundef nonnull %613) #19
  br label %635

635:                                              ; preds = %612, %561, %568, %616, %565, %530
  %636 = phi ptr [ %563, %561 ], [ %531, %568 ], [ %633, %616 ], [ %531, %565 ], [ %531, %530 ], [ %613, %612 ]
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !140
  %637 = load ptr, ptr %496, align 8, !tbaa !136
  %638 = getelementptr inbounds %struct.rtvec_def, ptr %637, i64 0, i32 1, i64 %500
  store ptr %636, ptr %638, align 8, !tbaa !125
  %639 = load i64, ptr %514, align 8
  %640 = and i64 %639, 65535
  %641 = icmp eq i64 %640, 14
  br i1 %641, label %642, label %644

642:                                              ; preds = %635
  %643 = call i32 @vector_type_mode(ptr noundef nonnull %514) #19
  br label %649

644:                                              ; preds = %635
  %645 = getelementptr inbounds %struct.tree_type, ptr %514, i64 0, i32 6
  %646 = load i32, ptr %645, align 4
  %647 = lshr i32 %646, 16
  %648 = and i32 %647, 255
  br label %649

649:                                              ; preds = %644, %642
  %650 = phi i32 [ %643, %642 ], [ %648, %644 ]
  %651 = load ptr, ptr %504, align 8, !tbaa !125
  %652 = call ptr @ggc_alloc_string(ptr noundef %651, i32 noundef -1) #19
  %653 = call ptr @gen_rtx_fmt_si_stat(i32 noundef 16, i32 noundef %650, ptr noundef %652, i32 noundef 0) #19
  %654 = load ptr, ptr %497, align 8, !tbaa !136
  %655 = getelementptr inbounds %struct.rtvec_def, ptr %654, i64 0, i32 1, i64 %500
  store ptr %653, ptr %655, align 8, !tbaa !125
  %656 = call fastcc zeroext i8 @tree_conflicts_with_clobbers_p(ptr noundef %512, ptr noundef nonnull %8), !range !194
  %657 = icmp eq i8 %656, 0
  %658 = select i1 %657, i32 %501, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #19
  %659 = getelementptr inbounds %struct.tree_common, ptr %502, i64 0, i32 1
  %660 = load ptr, ptr %659, align 8, !tbaa !136
  %661 = add nuw i64 %500, 1
  %662 = icmp eq ptr %660, null
  br i1 %662, label %663, label %499, !llvm.loop !198

663:                                              ; preds = %649, %484
  %664 = phi i32 [ %474, %484 ], [ %658, %649 ]
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !140
  %665 = icmp sgt i32 %475, 0
  br i1 %665, label %666, label %672

666:                                              ; preds = %663
  %667 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1, i32 0, i32 1
  %668 = sub i32 %269, %475
  %669 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1, i32 0, i32 2
  %670 = sext i32 %668 to i64
  %671 = zext nneg i32 %475 to i64
  br label %677

672:                                              ; preds = %677, %663
  %673 = icmp sgt i32 %25, 0
  br i1 %673, label %674, label %709

674:                                              ; preds = %672
  %675 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 1
  %676 = zext nneg i32 %25 to i64
  br label %696

677:                                              ; preds = %666, %677
  %678 = phi i64 [ 0, %666 ], [ %694, %677 ]
  %679 = getelementptr inbounds i32, ptr %30, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #19
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds ptr, ptr %28, i64 %681
  %683 = load ptr, ptr %682, align 8, !tbaa !125
  %684 = load ptr, ptr %667, align 8, !tbaa !136
  %685 = add nsw i64 %678, %670
  %686 = getelementptr inbounds %struct.rtvec_def, ptr %684, i64 0, i32 1, i64 %685
  store ptr %683, ptr %686, align 8, !tbaa !125
  %687 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %680)
  %688 = getelementptr inbounds i32, ptr %32, i64 %678
  %689 = load i32, ptr %688, align 4, !tbaa !140
  %690 = call ptr @ggc_alloc_string(ptr noundef nonnull %22, i32 noundef -1) #19
  %691 = call ptr @gen_rtx_fmt_si_stat(i32 noundef 16, i32 noundef %689, ptr noundef %690, i32 noundef 0) #19
  %692 = load ptr, ptr %669, align 8, !tbaa !136
  %693 = getelementptr inbounds %struct.rtvec_def, ptr %692, i64 0, i32 1, i64 %685
  store ptr %691, ptr %693, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #19
  %694 = add nuw nsw i64 %678, 1
  %695 = icmp eq i64 %694, %671
  br i1 %695, label %672, label %677, !llvm.loop !199

696:                                              ; preds = %674, %696
  %697 = phi i64 [ 0, %674 ], [ %705, %696 ]
  %698 = phi ptr [ %4, %674 ], [ %707, %696 ]
  %699 = getelementptr inbounds %struct.tree_list, ptr %698, i64 0, i32 2
  %700 = load ptr, ptr %699, align 8, !tbaa !136
  %701 = call ptr @label_rtx(ptr noundef %700)
  %702 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %701) #19
  %703 = load ptr, ptr %675, align 8, !tbaa !136
  %704 = getelementptr inbounds %struct.rtvec_def, ptr %703, i64 0, i32 1, i64 %697
  store ptr %702, ptr %704, align 8, !tbaa !125
  %705 = add nuw nsw i64 %697, 1
  %706 = getelementptr inbounds %struct.tree_common, ptr %698, i64 0, i32 1
  %707 = load ptr, ptr %706, align 8, !tbaa !136
  %708 = icmp eq i64 %705, %676
  br i1 %708, label %709, label %696, !llvm.loop !200

709:                                              ; preds = %696, %672
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !140
  %710 = icmp sgt i32 %25, 0
  %711 = icmp eq i32 %140, 0
  %712 = select i1 %710, i1 %711, i1 false
  br i1 %712, label %713, label %717

713:                                              ; preds = %709
  br i1 %38, label %715, label %714

714:                                              ; preds = %713
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 980, ptr noundef nonnull @.str.1) #19
  br label %715

715:                                              ; preds = %713, %714
  %716 = call ptr @emit_jump_insn(ptr noundef nonnull %489) #19
  br label %844

717:                                              ; preds = %709
  %718 = select i1 %38, i1 %711, i1 false
  br i1 %718, label %719, label %721

719:                                              ; preds = %717
  %720 = call ptr @emit_insn(ptr noundef nonnull %489) #19
  br label %844

721:                                              ; preds = %717
  %722 = icmp eq i32 %24, 1
  %723 = select i1 %722, i1 %711, i1 false
  br i1 %723, label %724, label %731

724:                                              ; preds = %721
  %725 = load ptr, ptr %36, align 16, !tbaa !125
  %726 = call ptr @ggc_alloc_string(ptr noundef %725, i32 noundef -1) #19
  %727 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %726, ptr %727, align 8, !tbaa !136
  %728 = load ptr, ptr %28, align 16, !tbaa !125
  %729 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %728, ptr noundef nonnull %489) #19
  %730 = call ptr @emit_insn(ptr noundef %729) #19
  br label %844

731:                                              ; preds = %721
  %732 = call i32 @llvm.umax.i32(i32 %24, i32 1)
  %733 = add nsw i32 %140, %732
  %734 = call ptr @rtvec_alloc(i32 noundef %733) #19
  %735 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %734) #19
  %736 = icmp eq ptr %1, null
  br i1 %736, label %770, label %737

737:                                              ; preds = %731
  %738 = getelementptr inbounds %struct.rtx_def, ptr %735, i64 0, i32 1
  br label %739

739:                                              ; preds = %737, %739
  %740 = phi i64 [ 0, %737 ], [ %766, %739 ]
  %741 = phi ptr [ %1, %737 ], [ %765, %739 ]
  %742 = getelementptr inbounds ptr, ptr %28, i64 %740
  %743 = load ptr, ptr %742, align 8, !tbaa !125
  %744 = load i32, ptr %743, align 8
  %745 = lshr i32 %744, 16
  %746 = and i32 %745, 255
  %747 = call ptr @ggc_alloc_string(ptr noundef nonnull %487, i32 noundef -1) #19
  %748 = getelementptr inbounds ptr, ptr %36, i64 %740
  %749 = load ptr, ptr %748, align 8, !tbaa !125
  %750 = call ptr @ggc_alloc_string(ptr noundef %749, i32 noundef -1) #19
  %751 = trunc i64 %740 to i32
  %752 = call ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef 17, i32 noundef %746, ptr noundef %747, ptr noundef %750, i32 noundef %751, ptr noundef %476, ptr noundef %477, ptr noundef %478, i32 noundef %6) #19
  %753 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %743, ptr noundef %752) #19
  %754 = load ptr, ptr %738, align 8, !tbaa !136
  %755 = getelementptr inbounds %struct.rtvec_def, ptr %754, i64 0, i32 1, i64 %740
  store ptr %753, ptr %755, align 8, !tbaa !125
  %756 = load ptr, ptr %738, align 8, !tbaa !136
  %757 = getelementptr inbounds %struct.rtvec_def, ptr %756, i64 0, i32 1, i64 %740
  %758 = load ptr, ptr %757, align 8, !tbaa !125
  %759 = getelementptr inbounds %struct.rtx_def, ptr %758, i64 0, i32 1, i32 0, i32 0, i64 1
  %760 = load ptr, ptr %759, align 8, !tbaa !136
  %761 = load i32, ptr %760, align 8
  %762 = and i32 %761, -134217729
  %763 = or disjoint i32 %762, %491
  store i32 %763, ptr %760, align 8
  %764 = getelementptr inbounds %struct.tree_common, ptr %741, i64 0, i32 1
  %765 = load ptr, ptr %764, align 8, !tbaa !136
  %766 = add nuw i64 %740, 1
  %767 = icmp eq ptr %765, null
  br i1 %767, label %768, label %739, !llvm.loop !201

768:                                              ; preds = %739
  %769 = trunc i64 %766 to i32
  br label %770

770:                                              ; preds = %768, %731
  %771 = phi i32 [ 0, %731 ], [ %769, %768 ]
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %777

773:                                              ; preds = %770
  %774 = getelementptr inbounds %struct.rtx_def, ptr %735, i64 0, i32 1
  %775 = load ptr, ptr %774, align 8, !tbaa !136
  %776 = getelementptr inbounds %struct.rtvec_def, ptr %775, i64 0, i32 1
  store ptr %489, ptr %776, align 8, !tbaa !125
  br label %777

777:                                              ; preds = %773, %770
  %778 = phi i32 [ 1, %773 ], [ %771, %770 ]
  %779 = icmp eq ptr %137, null
  br i1 %779, label %839, label %780

780:                                              ; preds = %777
  %781 = icmp eq i32 %664, 0
  %782 = icmp sgt i32 %24, 0
  %783 = sub i32 %269, %475
  %784 = icmp sgt i32 %783, 0
  %785 = getelementptr inbounds %struct.rtx_def, ptr %489, i64 0, i32 1, i32 0, i32 1
  %786 = zext nneg i32 %24 to i64
  %787 = zext nneg i32 %783 to i64
  %788 = getelementptr inbounds %struct.rtx_def, ptr %735, i64 0, i32 1
  br label %789

789:                                              ; preds = %780, %834
  %790 = phi ptr [ %137, %780 ], [ %837, %834 ]
  %791 = phi i32 [ %778, %780 ], [ %835, %834 ]
  %792 = getelementptr inbounds %struct.tree_list, ptr %790, i64 0, i32 2
  %793 = load ptr, ptr %792, align 8, !tbaa !136
  %794 = getelementptr inbounds %struct.tree_string, ptr %793, i64 0, i32 2
  %795 = call i32 @decode_reg_name(ptr noundef nonnull %794) #19
  %796 = icmp slt i32 %795, 0
  br i1 %796, label %797, label %802

797:                                              ; preds = %789
  %798 = icmp eq i32 %795, -4
  br i1 %798, label %799, label %834

799:                                              ; preds = %797
  %800 = call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 0) #19
  %801 = call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %800) #19
  br label %827

802:                                              ; preds = %789
  %803 = call ptr @gen_rtx_REG(i32 noundef 14, i32 noundef %795) #19
  br i1 %781, label %804, label %827

804:                                              ; preds = %802
  br i1 %782, label %806, label %805

805:                                              ; preds = %813, %804
  br i1 %784, label %816, label %827

806:                                              ; preds = %804, %813
  %807 = phi i64 [ %814, %813 ], [ 0, %804 ]
  %808 = getelementptr inbounds ptr, ptr %28, i64 %807
  %809 = load ptr, ptr %808, align 8, !tbaa !125
  %810 = call i32 @reg_overlap_mentioned_p(ptr noundef %803, ptr noundef %809) #19
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %813, label %812

812:                                              ; preds = %806
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.21) #19
  br label %813

813:                                              ; preds = %806, %812
  %814 = add nuw nsw i64 %807, 1
  %815 = icmp eq i64 %814, %786
  br i1 %815, label %805, label %806, !llvm.loop !202

816:                                              ; preds = %805, %824
  %817 = phi i64 [ %825, %824 ], [ 0, %805 ]
  %818 = load ptr, ptr %785, align 8, !tbaa !136
  %819 = getelementptr inbounds %struct.rtvec_def, ptr %818, i64 0, i32 1, i64 %817
  %820 = load ptr, ptr %819, align 8, !tbaa !125
  %821 = call i32 @reg_overlap_mentioned_p(ptr noundef %803, ptr noundef %820) #19
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %824, label %823

823:                                              ; preds = %816
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.22) #19
  br label %824

824:                                              ; preds = %816, %823
  %825 = add nuw nsw i64 %817, 1
  %826 = icmp eq i64 %825, %787
  br i1 %826, label %827, label %816, !llvm.loop !203

827:                                              ; preds = %824, %802, %805, %799
  %828 = phi ptr [ %801, %799 ], [ %803, %805 ], [ %803, %802 ], [ %803, %824 ]
  %829 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %828) #19
  %830 = load ptr, ptr %788, align 8, !tbaa !136
  %831 = add nsw i32 %791, 1
  %832 = sext i32 %791 to i64
  %833 = getelementptr inbounds %struct.rtvec_def, ptr %830, i64 0, i32 1, i64 %832
  store ptr %829, ptr %833, align 8, !tbaa !125
  br label %834

834:                                              ; preds = %827, %797
  %835 = phi i32 [ %791, %797 ], [ %831, %827 ]
  %836 = getelementptr inbounds %struct.tree_common, ptr %790, i64 0, i32 1
  %837 = load ptr, ptr %836, align 8, !tbaa !136
  %838 = icmp eq ptr %837, null
  br i1 %838, label %839, label %789, !llvm.loop !204

839:                                              ; preds = %834, %777
  br i1 %710, label %840, label %842

840:                                              ; preds = %839
  %841 = call ptr @emit_jump_insn(ptr noundef %735) #19
  br label %844

842:                                              ; preds = %839
  %843 = call ptr @emit_insn(ptr noundef %735) #19
  br label %844

844:                                              ; preds = %840, %842, %719, %724, %715
  %845 = icmp sgt i32 %24, 0
  br i1 %845, label %846, label %860

846:                                              ; preds = %844
  %847 = zext nneg i32 %24 to i64
  br label %848

848:                                              ; preds = %846, %857
  %849 = phi i64 [ 0, %846 ], [ %858, %857 ]
  %850 = getelementptr inbounds ptr, ptr %31, i64 %849
  %851 = load ptr, ptr %850, align 8, !tbaa !125
  %852 = icmp eq ptr %851, null
  br i1 %852, label %857, label %853

853:                                              ; preds = %848
  %854 = getelementptr inbounds ptr, ptr %28, i64 %849
  %855 = load ptr, ptr %854, align 8, !tbaa !125
  %856 = call ptr @emit_move_insn(ptr noundef nonnull %851, ptr noundef %855) #19
  br label %857

857:                                              ; preds = %848, %853
  %858 = add nuw nsw i64 %849, 1
  %859 = icmp eq i64 %858, %847
  br i1 %859, label %860, label %848, !llvm.loop !205

860:                                              ; preds = %857, %844
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 32), align 4, !tbaa !206
  call void @free_temp_slots() #19
  br label %862

861:                                              ; preds = %289, %280
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #19
  br label %862

862:                                              ; preds = %98, %181, %259, %65, %861, %860, %277
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  ret void
}

declare void @expand_assignment(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @free_temp_slots() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @resolve_asm_operand_names(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !prof !124 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %31, %4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = icmp eq ptr %1, null
  br label %39

10:                                               ; preds = %4, %31
  %11 = phi ptr [ %33, %31 ], [ %1, %4 ]
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = getelementptr inbounds %struct.tree_list, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %10, %22
  %18 = phi ptr [ %20, %22 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_list, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = getelementptr inbounds %struct.tree_list, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !136
  %27 = tail call i32 @simple_cst_equal(ptr noundef nonnull %15, ptr noundef %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %17, label %29, !llvm.loop !207

29:                                               ; preds = %22, %17, %10
  %30 = phi i32 [ 4, %10 ], [ 0, %17 ], [ 8, %22 ]
  switch i32 %30, label %118 [
    i32 0, label %31
    i32 4, label %31
    i32 8, label %111
  ]

31:                                               ; preds = %29, %29
  %32 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !136
  %34 = icmp eq ptr %33, null
  br i1 %34, label %6, label %10, !llvm.loop !208

35:                                               ; preds = %73, %6
  %36 = icmp eq ptr %3, null
  br i1 %36, label %118, label %37

37:                                               ; preds = %35
  %38 = icmp eq ptr %2, null
  br label %77

39:                                               ; preds = %8, %73
  %40 = phi ptr [ %2, %8 ], [ %75, %73 ]
  %41 = getelementptr inbounds %struct.tree_list, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !136
  %43 = getelementptr inbounds %struct.tree_list, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !136
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %39, %52
  %47 = phi ptr [ %49, %52 ], [ %40, %39 ]
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !136
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br i1 %9, label %71, label %59

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.tree_list, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !136
  %55 = getelementptr inbounds %struct.tree_list, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !136
  %57 = tail call i32 @simple_cst_equal(ptr noundef nonnull %44, ptr noundef %56) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %46, label %71, !llvm.loop !209

59:                                               ; preds = %51, %67
  %60 = phi ptr [ %69, %67 ], [ %1, %51 ]
  %61 = getelementptr inbounds %struct.tree_list, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !136
  %63 = getelementptr inbounds %struct.tree_list, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !136
  %65 = tail call i32 @simple_cst_equal(ptr noundef nonnull %44, ptr noundef %64) #19
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !136
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %59, !llvm.loop !210

71:                                               ; preds = %52, %59, %67, %51, %39
  %72 = phi i32 [ 11, %39 ], [ 0, %51 ], [ 0, %67 ], [ 8, %59 ], [ 8, %52 ]
  switch i32 %72, label %118 [
    i32 0, label %73
    i32 11, label %73
    i32 8, label %111
  ]

73:                                               ; preds = %71, %71
  %74 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !136
  %76 = icmp eq ptr %75, null
  br i1 %76, label %35, label %39, !llvm.loop !211

77:                                               ; preds = %37, %107
  %78 = phi ptr [ %3, %37 ], [ %109, %107 ]
  %79 = getelementptr inbounds %struct.tree_list, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !136
  %81 = icmp eq ptr %80, null
  br i1 %81, label %105, label %82

82:                                               ; preds = %77, %88
  %83 = phi ptr [ %85, %88 ], [ %78, %77 ]
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !136
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br i1 %38, label %105, label %93

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.tree_list, ptr %85, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !136
  %91 = tail call i32 @simple_cst_equal(ptr noundef nonnull %80, ptr noundef %90) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %82, label %105, !llvm.loop !212

93:                                               ; preds = %87, %101
  %94 = phi ptr [ %103, %101 ], [ %2, %87 ]
  %95 = getelementptr inbounds %struct.tree_list, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !136
  %97 = getelementptr inbounds %struct.tree_list, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !136
  %99 = tail call i32 @simple_cst_equal(ptr noundef nonnull %80, ptr noundef %98) #19
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !136
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %93, !llvm.loop !213

105:                                              ; preds = %88, %93, %101, %87, %77
  %106 = phi i32 [ 20, %77 ], [ 0, %87 ], [ 0, %101 ], [ 8, %93 ], [ 8, %88 ]
  switch i32 %106, label %118 [
    i32 0, label %107
    i32 20, label %107
    i32 8, label %111
  ]

107:                                              ; preds = %105, %105
  %108 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !136
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %77, !llvm.loop !214

111:                                              ; preds = %29, %71, %105
  %112 = phi ptr [ %78, %105 ], [ %40, %71 ], [ %11, %29 ]
  %113 = getelementptr inbounds %struct.tree_list, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !136
  %115 = getelementptr inbounds %struct.tree_list, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !136
  %117 = getelementptr inbounds %struct.tree_string, ptr %116, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, ptr noundef nonnull %117) #19
  br label %118

118:                                              ; preds = %29, %71, %105, %107, %35, %111
  %119 = icmp eq ptr %2, null
  br i1 %119, label %148, label %120

120:                                              ; preds = %118, %144
  %121 = phi ptr [ %146, %144 ], [ %2, %118 ]
  %122 = getelementptr inbounds %struct.tree_list, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !136
  %124 = getelementptr inbounds %struct.tree_list, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !136
  %126 = getelementptr inbounds %struct.tree_string, ptr %125, i64 0, i32 2
  %127 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %126, i32 noundef 91)
  %128 = icmp eq ptr %127, null
  br i1 %128, label %144, label %129

129:                                              ; preds = %120
  %130 = tail call ptr @xstrdup(ptr noundef nonnull %126) #19
  %131 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %130, i32 noundef 91)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %129, %133
  %134 = phi ptr [ %136, %133 ], [ %131, %129 ]
  %135 = tail call fastcc ptr @resolve_operand_name_1(ptr noundef nonnull %134, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null)
  %136 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %135, i32 noundef 91)
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %133, !llvm.loop !215

138:                                              ; preds = %133, %129
  %139 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %130)
  %140 = trunc i64 %139 to i32
  %141 = tail call ptr @build_string(i32 noundef %140, ptr noundef %130) #19
  %142 = load ptr, ptr %122, align 8, !tbaa !136
  %143 = getelementptr inbounds %struct.tree_list, ptr %142, i64 0, i32 2
  store ptr %141, ptr %143, align 8, !tbaa !136
  tail call void @free(ptr noundef %130)
  br label %144

144:                                              ; preds = %120, %138
  %145 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !136
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %120, !llvm.loop !216

148:                                              ; preds = %144, %118
  %149 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %150 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %149, i32 noundef 37)
  %151 = icmp eq ptr %150, null
  br i1 %151, label %204, label %152

152:                                              ; preds = %148, %167
  %153 = phi ptr [ %168, %167 ], [ %150, %148 ]
  %154 = getelementptr inbounds i8, ptr %153, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !136
  %156 = icmp eq i8 %155, 91
  br i1 %156, label %170, label %157

157:                                              ; preds = %152
  %158 = zext i8 %155 to i64
  %159 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %158
  %160 = load i16, ptr %159, align 2, !tbaa !177
  %161 = and i16 %160, 136
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds i8, ptr %153, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !136
  %166 = icmp eq i8 %165, 91
  br i1 %166, label %170, label %167

167:                                              ; preds = %163, %157
  %168 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %154, i32 noundef 37)
  %169 = icmp eq ptr %168, null
  br i1 %169, label %204, label %152, !llvm.loop !217

170:                                              ; preds = %152, %163
  %171 = tail call ptr @xstrdup(ptr noundef nonnull %149) #19
  %172 = ptrtoint ptr %153 to i64
  %173 = ptrtoint ptr %149 to i64
  %174 = sub i64 %172, %173
  %175 = getelementptr inbounds i8, ptr %171, i64 %174
  %176 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %175, i32 noundef 37)
  %177 = icmp eq ptr %176, null
  br i1 %177, label %200, label %178

178:                                              ; preds = %170, %193
  %179 = phi ptr [ %195, %193 ], [ %176, %170 ]
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !136
  %182 = icmp eq i8 %181, 91
  br i1 %182, label %197, label %183

183:                                              ; preds = %178
  %184 = zext i8 %181 to i64
  %185 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !177
  %187 = and i16 %186, 136
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds i8, ptr %179, i64 2
  %191 = load i8, ptr %190, align 1, !tbaa !136
  %192 = icmp eq i8 %191, 91
  br i1 %192, label %197, label %193

193:                                              ; preds = %183, %189, %197
  %194 = phi ptr [ %199, %197 ], [ %180, %189 ], [ %180, %183 ]
  %195 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %194, i32 noundef 37)
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %178, !llvm.loop !218

197:                                              ; preds = %189, %178
  %198 = phi ptr [ %180, %178 ], [ %190, %189 ]
  %199 = tail call fastcc ptr @resolve_operand_name_1(ptr noundef nonnull %198, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %193

200:                                              ; preds = %193, %170
  %201 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %171)
  %202 = trunc i64 %201 to i32
  %203 = tail call ptr @build_string(i32 noundef %202, ptr noundef %171) #19
  tail call void @free(ptr noundef %171)
  br label %204

204:                                              ; preds = %167, %148, %200
  %205 = phi ptr [ %203, %200 ], [ %0, %148 ], [ %0, %167 ]
  ret ptr %205
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @resolve_operand_name_1(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) unnamed_addr #10 !prof !124 {
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 93)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27) #19
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %5)
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  br label %90

11:                                               ; preds = %4
  store i8 0, ptr %6, align 1, !tbaa !136
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %31, %11
  %14 = phi i32 [ 0, %11 ], [ %34, %31 ]
  %15 = icmp eq ptr %2, null
  br i1 %15, label %36, label %39

16:                                               ; preds = %11, %31
  %17 = phi i32 [ %34, %31 ], [ 0, %11 ]
  %18 = phi ptr [ %33, %31 ], [ %1, %11 ]
  %19 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = getelementptr inbounds %struct.tree_list, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !136
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_string, ptr %22, i64 0, i32 2
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %5)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %16
  br label %29

29:                                               ; preds = %24, %28
  %30 = phi i32 [ 0, %28 ], [ 5, %24 ]
  switch i32 %30, label %90 [
    i32 0, label %31
    i32 5, label %79
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !136
  %34 = add nuw nsw i32 %17, 1
  %35 = icmp eq ptr %33, null
  br i1 %35, label %13, label %16, !llvm.loop !219

36:                                               ; preds = %54, %13
  %37 = phi i32 [ %14, %13 ], [ %57, %54 ]
  %38 = icmp eq ptr %3, null
  br i1 %38, label %77, label %59

39:                                               ; preds = %13, %54
  %40 = phi i32 [ %57, %54 ], [ %14, %13 ]
  %41 = phi ptr [ %56, %54 ], [ %2, %13 ]
  %42 = getelementptr inbounds %struct.tree_list, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !136
  %44 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !136
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.tree_string, ptr %45, i64 0, i32 2
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %5)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %47, %51
  %53 = phi i32 [ 0, %51 ], [ 5, %47 ]
  switch i32 %53, label %90 [
    i32 0, label %54
    i32 5, label %79
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !136
  %57 = add nuw nsw i32 %40, 1
  %58 = icmp eq ptr %56, null
  br i1 %58, label %36, label %39, !llvm.loop !220

59:                                               ; preds = %36, %72
  %60 = phi i32 [ %75, %72 ], [ %37, %36 ]
  %61 = phi ptr [ %74, %72 ], [ %3, %36 ]
  %62 = getelementptr inbounds %struct.tree_list, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !136
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_string, ptr %63, i64 0, i32 2
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(1) %5)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %65, %69
  %71 = phi i32 [ 0, %69 ], [ 5, %65 ]
  switch i32 %71, label %90 [
    i32 0, label %72
    i32 5, label %79
  ]

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !136
  %75 = add nuw nsw i32 %60, 1
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %59, !llvm.loop !221

77:                                               ; preds = %72, %36
  %78 = tail call ptr @identifier_to_locale(ptr noundef nonnull %5) #19
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, ptr noundef %78) #19
  br label %79

79:                                               ; preds = %29, %52, %70, %77
  %80 = phi i32 [ 0, %77 ], [ %60, %70 ], [ %40, %52 ], [ %17, %29 ]
  %81 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %80)
  %82 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %83 = getelementptr inbounds i8, ptr %0, i64 %82
  %84 = icmp ugt ptr %83, %6
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1408, ptr noundef nonnull @.str.1) #19
  br label %86

86:                                               ; preds = %79, %85
  %87 = getelementptr inbounds i8, ptr %6, i64 1
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87)
  %89 = add i64 %88, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %83, ptr nonnull align 1 %87, i64 %89, i1 false)
  br label %90

90:                                               ; preds = %29, %52, %70, %86, %8
  %91 = phi ptr [ %83, %86 ], [ %10, %8 ], [ undef, %70 ], [ undef, %52 ], [ undef, %29 ]
  ret ptr %91
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_expr_stmt(ptr noundef %0) local_unnamed_addr #10 !prof !124 {
  %2 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !125
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = icmp eq ptr %3, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 43
  br i1 %10, label %11, label %51

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 524288
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %51, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %5, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #19
  br label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  %30 = load i64, ptr %5, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #19
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @copy_to_reg(ptr noundef nonnull %3) #19
  br label %51

45:                                               ; preds = %40
  %46 = tail call ptr @gen_label_rtx() #19
  %47 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !136
  %49 = tail call ptr @expand_expr_real(ptr noundef %48, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef 81, ptr noundef %49, i32 noundef 1, i32 noundef 0, ptr noundef %46) #19
  %50 = tail call ptr @emit_label(ptr noundef %46) #19
  br label %51

51:                                               ; preds = %26, %45, %43, %11, %7, %1
  tail call void @free_temp_slots() #19
  ret void
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @warn_if_unused_value(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !124 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 25165824
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %85

6:                                                ; preds = %2, %40
  %7 = phi i64 [ %42, %40 ], [ %3, %2 ]
  %8 = phi i32 [ %33, %40 ], [ %1, %2 ]
  %9 = phi ptr [ %41, %40 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 19
  br i1 %14, label %85, label %15

15:                                               ; preds = %6
  %16 = and i64 %7, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !140
  %19 = add i32 %18, -11
  %20 = icmp ult i32 %19, -7
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !136
  br label %24

24:                                               ; preds = %15, %21
  %25 = phi i32 [ %23, %21 ], [ 0, %15 ]
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %20, %26
  %28 = select i1 %26, i32 %8, i32 0
  br i1 %27, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !136
  br label %32

32:                                               ; preds = %24, %29
  %33 = phi i32 [ %28, %24 ], [ %31, %29 ]
  %34 = trunc i64 %7 to i16
  switch i16 %34, label %71 [
    i16 126, label %85
    i16 128, label %85
    i16 125, label %85
    i16 127, label %85
    i16 53, label %85
    i16 54, label %85
    i16 55, label %85
    i16 59, label %85
    i16 130, label %85
    i16 60, label %85
    i16 136, label %85
    i16 129, label %85
    i16 58, label %35
    i16 120, label %45
    i16 117, label %45
    i16 92, label %47
    i16 91, label %47
    i16 52, label %49
    i16 56, label %60
    i16 47, label %63
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  br label %37

37:                                               ; preds = %47, %45, %35
  %38 = phi ptr [ %36, %35 ], [ %46, %45 ], [ %48, %47 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !136
  br label %40

40:                                               ; preds = %37, %54, %63
  %41 = phi ptr [ %56, %54 ], [ %65, %63 ], [ %39, %37 ]
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 25165824
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %6, label %85

45:                                               ; preds = %32, %32
  %46 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  br label %37

47:                                               ; preds = %32, %32
  %48 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  br label %37

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !136
  %52 = tail call i32 @warn_if_unused_value(ptr noundef %51, i32 noundef %33), !range !222
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !136
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 131072
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %40, label %85

60:                                               ; preds = %32
  %61 = and i64 %7, 65536
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %83, label %85

63:                                               ; preds = %32
  %64 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !136
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !136
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 12
  br i1 %70, label %40, label %71

71:                                               ; preds = %63, %32
  %72 = add i32 %18, -5
  %73 = icmp ult i32 %72, -2
  %74 = and i64 %7, 524288
  %75 = icmp eq i64 %74, 0
  %76 = or i1 %75, %73
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = icmp eq i32 %18, 10
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %16
  %81 = load i8, ptr %80, align 1, !tbaa !136
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77, %79, %60
  %84 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %33, i32 noundef 229, ptr noundef nonnull @.str.11) #19
  br label %85

85:                                               ; preds = %40, %6, %49, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %54, %2, %79, %71, %60, %83
  %86 = phi i32 [ 1, %83 ], [ 0, %60 ], [ 0, %71 ], [ 0, %79 ], [ 0, %2 ], [ 0, %54 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 0, %32 ], [ 1, %49 ], [ 0, %6 ], [ 0, %40 ]
  ret i32 %86
}

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_null_return() local_unnamed_addr #10 !prof !124 {
  tail call void @clobber_return_register() #19
  tail call fastcc void @expand_null_return_1()
  ret void
}

declare void @clobber_return_register() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_null_return_1() unnamed_addr #9 !prof !124 !PGOFuncName !223 {
  tail call void @clear_pending_stack_adjust() #19
  tail call void @do_pending_stack_adjust() #19
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !224
  tail call void @do_pending_stack_adjust() #19
  %2 = tail call ptr @gen_jump(ptr noundef %1) #19
  %3 = tail call ptr @emit_jump_insn(ptr noundef %2) #19
  %4 = tail call ptr @emit_barrier() #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_naked_return() local_unnamed_addr #10 !prof !124 {
  tail call void @clear_pending_stack_adjust() #19
  tail call void @do_pending_stack_adjust() #19
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 12), align 8, !tbaa !225
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @gen_label_rtx() #19
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 12), align 8, !tbaa !225
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @do_pending_stack_adjust() #19
  %7 = tail call ptr @gen_jump(ptr noundef %6) #19
  %8 = tail call ptr @emit_jump_insn(ptr noundef %7) #19
  %9 = tail call ptr @emit_barrier() #19
  ret void
}

declare void @clear_pending_stack_adjust() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @expand_return(ptr noundef %0) local_unnamed_addr #9 !prof !226 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !125
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 19
  br i1 %9, label %10, label %12, !prof !227

10:                                               ; preds = %1
  %11 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  tail call void @clobber_return_register() #19
  tail call fastcc void @expand_null_return_1()
  br label %235

12:                                               ; preds = %1
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !125
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %16, !prof !227

15:                                               ; preds = %12
  tail call void @clobber_return_register() #19
  tail call fastcc void @expand_null_return_1()
  br label %235

16:                                               ; preds = %12
  %17 = load i64, ptr %0, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -53
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %31, !prof !228

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 36
  br i1 %27, label %28, label %31, !prof !228

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  br label %31

31:                                               ; preds = %16, %22, %28
  %32 = phi ptr [ %30, %28 ], [ %0, %16 ], [ %0, %22 ]
  %33 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !136
  %35 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !136
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44, !prof !227

38:                                               ; preds = %31
  tail call void @make_decl_rtl(ptr noundef %34) #19
  %39 = load ptr, ptr @current_function_decl, align 8, !tbaa !125
  %40 = getelementptr inbounds %struct.tree_decl_non_common, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !136
  %42 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !136
  br label %44

44:                                               ; preds = %31, %38
  %45 = phi ptr [ %43, %38 ], [ %36, %31 ]
  %46 = load i64, ptr %32, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 36
  br i1 %48, label %49, label %50, !prof !227

49:                                               ; preds = %44
  tail call fastcc void @expand_value_return(ptr noundef %45)
  br label %235

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !136
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 14
  br i1 %55, label %56, label %58, !prof !227

56:                                               ; preds = %50
  %57 = tail call i32 @vector_type_mode(ptr noundef nonnull %52) #19
  br label %63

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi i32 [ %57, %56 ], [ %62, %58 ]
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %197, !prof !227

66:                                               ; preds = %63
  %67 = load i32, ptr %45, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  br i1 %69, label %70, label %197

70:                                               ; preds = %66
  %71 = load ptr, ptr %51, align 8, !tbaa !136
  %72 = tail call i64 @int_size_in_bytes(ptr noundef %71) #19
  %73 = add i64 %72, 3
  %74 = lshr i64 %73, 2
  %75 = trunc i64 %74 to i32
  %76 = load ptr, ptr %51, align 8, !tbaa !136
  %77 = getelementptr inbounds %struct.tree_type, ptr %76, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !136
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 32)
  %80 = zext nneg i32 %79 to i64
  %81 = shl i64 %74, 32
  %82 = ashr exact i64 %81, 29
  %83 = alloca i8, i64 %82, align 16
  %84 = tail call ptr @expand_expr_real(ptr noundef nonnull %32, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %85 = icmp eq i64 %72, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  tail call void @clobber_return_register() #19
  tail call fastcc void @expand_null_return_1()
  br label %235

87:                                               ; preds = %70
  %88 = and i64 %72, 3
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !229
  %92 = load ptr, ptr %51, align 8, !tbaa !136
  %93 = tail call zeroext i8 %91(ptr noundef %92) #19
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = shl nuw nsw i64 %88, 3
  %97 = sub nuw nsw i64 32, %96
  br label %98

98:                                               ; preds = %90, %95, %87
  %99 = phi i64 [ %97, %95 ], [ 0, %90 ], [ 0, %87 ]
  %100 = shl i64 %72, 3
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %138, label %102

102:                                              ; preds = %98, %131
  %103 = phi ptr [ %124, %131 ], [ null, %98 ]
  %104 = phi ptr [ %132, %131 ], [ null, %98 ]
  %105 = phi i64 [ %135, %131 ], [ 0, %98 ]
  %106 = phi i64 [ %136, %131 ], [ %99, %98 ]
  %107 = and i64 %106, 31
  %108 = icmp eq i64 %107, 0
  %109 = icmp eq i64 %106, %99
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %102
  %112 = load i32, ptr @word_mode, align 4, !tbaa !140
  %113 = tail call ptr @gen_reg_rtx(i32 noundef %112) #19
  %114 = lshr i64 %106, 5
  %115 = getelementptr inbounds ptr, ptr %83, i64 %114
  store ptr %113, ptr %115, align 8, !tbaa !125
  %116 = load i32, ptr %113, align 8
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !125
  %122 = tail call ptr @emit_move_insn(ptr noundef nonnull %113, ptr noundef %121) #19
  br label %123

123:                                              ; preds = %102, %111
  %124 = phi ptr [ %113, %111 ], [ %103, %102 ]
  %125 = and i64 %105, 31
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = lshr exact i64 %105, 5
  %129 = trunc i64 %128 to i32
  %130 = tail call ptr @operand_subword_force(ptr noundef %84, i32 noundef %129, i32 noundef 1) #19
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi ptr [ %130, %127 ], [ %104, %123 ]
  %133 = load i32, ptr @word_mode, align 4, !tbaa !140
  %134 = tail call ptr @extract_bit_field(ptr noundef %132, i64 noundef %80, i64 noundef %125, i32 noundef 1, ptr noundef null, i32 noundef %133, i32 noundef %133) #19
  tail call void @store_bit_field(ptr noundef %124, i64 noundef %80, i64 noundef %107, i32 noundef %133, ptr noundef %134) #19
  %135 = add i64 %105, %80
  %136 = add i64 %106, %80
  %137 = icmp ult i64 %135, %100
  br i1 %137, label %102, label %138, !llvm.loop !230

138:                                              ; preds = %131, %98
  %139 = load i32, ptr %45, align 8
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %166

143:                                              ; preds = %138
  %144 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !136
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %143, %153
  %147 = phi i8 [ %155, %153 ], [ %144, %143 ]
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !136
  %151 = zext i8 %150 to i64
  %152 = icmp ugt i64 %72, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %148
  %155 = load i8, ptr %154, align 1, !tbaa !136
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %146, !llvm.loop !231

157:                                              ; preds = %153, %143
  %158 = phi i8 [ %144, %143 ], [ %155, %153 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #19
  br label %159

159:                                              ; preds = %146, %157
  %160 = phi i8 [ %158, %157 ], [ %147, %146 ]
  %161 = zext i8 %160 to i32
  %162 = load i32, ptr %45, align 8
  %163 = shl nuw nsw i32 %161, 16
  %164 = and i32 %162, -16711681
  %165 = or disjoint i32 %164, %163
  store i32 %165, ptr %45, align 8
  br label %166

166:                                              ; preds = %159, %138
  %167 = phi i32 [ %161, %159 ], [ %141, %138 ]
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !136
  %171 = load i32, ptr @word_mode, align 4, !tbaa !140
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !136
  %175 = icmp ult i8 %170, %174
  %176 = select i1 %175, i32 %171, i32 %167
  %177 = tail call ptr @gen_reg_rtx(i32 noundef %176) #19
  %178 = icmp sgt i32 %75, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %166
  %180 = and i64 %74, 4294967295
  br label %181

181:                                              ; preds = %179, %181
  %182 = phi i64 [ 0, %179 ], [ %188, %181 ]
  %183 = trunc i64 %182 to i32
  %184 = tail call ptr @operand_subword(ptr noundef %177, i32 noundef %183, i32 noundef 0, i32 noundef %176) #19
  %185 = getelementptr inbounds ptr, ptr %83, i64 %182
  %186 = load ptr, ptr %185, align 8, !tbaa !125
  %187 = tail call ptr @emit_move_insn(ptr noundef %184, ptr noundef %186) #19
  %188 = add nuw nsw i64 %182, 1
  %189 = icmp eq i64 %188, %180
  br i1 %189, label %190, label %181, !llvm.loop !232

190:                                              ; preds = %181, %166
  %191 = icmp eq i32 %167, %176
  br i1 %191, label %195, label %192

192:                                              ; preds = %190
  %193 = load ptr, ptr @rtl_hooks, align 8, !tbaa !233
  %194 = tail call ptr %193(i32 noundef %167, ptr noundef %177) #19
  br label %195

195:                                              ; preds = %192, %190
  %196 = phi ptr [ %194, %192 ], [ %177, %190 ]
  tail call fastcc void @expand_value_return(ptr noundef %196)
  br label %235

197:                                              ; preds = %63, %66
  %198 = load ptr, ptr %51, align 8, !tbaa !136
  %199 = load i64, ptr %198, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 19
  br i1 %201, label %232, label %202, !prof !227

202:                                              ; preds = %197
  %203 = load i32, ptr %45, align 8
  %204 = trunc i32 %203 to i16
  switch i16 %204, label %232 [
    i16 37, label %205
    i16 15, label %205
  ], !prof !235

205:                                              ; preds = %202, %202
  %206 = load ptr, ptr @current_function_decl, align 8, !tbaa !125
  %207 = getelementptr inbounds %struct.tree_decl_non_common, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !136
  %209 = getelementptr inbounds %struct.tree_common, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !136
  %211 = load i64, ptr %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = lshr i32 %212, 18
  %214 = and i32 %213, 2
  %215 = getelementptr inbounds %struct.tree_type, ptr %210, i64 0, i32 6
  %216 = load i32, ptr %215, align 4
  %217 = lshr i32 %216, 11
  %218 = and i32 %217, 4
  %219 = lshr i64 %211, 48
  %220 = trunc i64 %219 to i32
  %221 = and i32 %220, 65280
  %222 = or disjoint i32 %218, %214
  %223 = or disjoint i32 %222, %221
  %224 = or disjoint i32 %223, 1
  %225 = tail call ptr @build_qualified_type(ptr noundef nonnull %210, i32 noundef %224) #19
  %226 = tail call ptr @assign_temp(ptr noundef %225, i32 noundef 0, i32 noundef 0, i32 noundef 1) #19
  %227 = load i32, ptr %226, align 8
  %228 = lshr i32 %227, 16
  %229 = and i32 %228, 255
  %230 = tail call ptr @expand_expr_real(ptr noundef nonnull %32, ptr noundef nonnull %226, i32 noundef %229, i32 noundef 0, ptr noundef null) #19
  %231 = tail call ptr @force_not_mem(ptr noundef %230) #19
  tail call fastcc void @expand_value_return(ptr noundef %231)
  br label %235

232:                                              ; preds = %202, %197
  %233 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !125
  %234 = tail call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef %233, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  tail call fastcc void @expand_value_return(ptr noundef %45)
  br label %235

235:                                              ; preds = %86, %195, %49, %205, %232, %15, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_value_return(ptr noundef %0) unnamed_addr #9 !prof !226 !PGOFuncName !236 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !227

9:                                                ; preds = %1
  tail call void @make_decl_rtl(ptr noundef %5) #19
  %10 = load ptr, ptr %6, align 8, !tbaa !136
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %1 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %44, label %14, !prof !227

14:                                               ; preds = %11
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !125
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  %18 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = lshr i32 %21, 21
  %23 = and i32 %22, 1
  store i32 %23, ptr %2, align 4, !tbaa !140
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 255
  %28 = call i32 @promote_function_mode(ptr noundef nonnull %19, i32 noundef %27, ptr noundef nonnull %2, ptr noundef %17, i32 noundef 1) #19
  %29 = icmp eq i32 %28, %27
  br i1 %29, label %33, label %30, !prof !228

30:                                               ; preds = %14
  %31 = load i32, ptr %2, align 4, !tbaa !140
  %32 = call ptr @convert_modes(i32 noundef %28, i32 noundef %27, ptr noundef %0, i32 noundef %31) #19
  br label %33

33:                                               ; preds = %30, %14
  %34 = phi ptr [ %32, %30 ], [ %0, %14 ]
  %35 = load i32, ptr %12, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %41, !prof !227

38:                                               ; preds = %33
  %39 = call i64 @int_size_in_bytes(ptr noundef nonnull %19) #19
  %40 = trunc i64 %39 to i32
  call void @emit_group_load(ptr noundef nonnull %12, ptr noundef %34, ptr noundef nonnull %19, i32 noundef %40) #19
  br label %43

41:                                               ; preds = %33
  %42 = call ptr @emit_move_insn(ptr noundef nonnull %12, ptr noundef %34) #19
  br label %43

43:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %44

44:                                               ; preds = %43, %11
  call void @clear_pending_stack_adjust() #19
  call void @do_pending_stack_adjust() #19
  %45 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !224
  call void @do_pending_stack_adjust() #19
  %46 = call ptr @gen_jump(ptr noundef %45) #19
  %47 = call ptr @emit_jump_insn(ptr noundef %46) #19
  %48 = call ptr @emit_barrier() #19
  ret void
}

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @store_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @extract_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @assign_temp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_not_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_decl(ptr noundef %0) local_unnamed_addr #10 !prof !124 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %175 [
    i16 33, label %6
    i16 32, label %33
  ]

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #19
  br label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 16
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = zext nneg i32 %18 to i64
  %22 = and i64 %20, -256
  %23 = or disjoint i64 %22, %21
  store i64 %23, ptr %19, align 8
  %24 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !136
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  store i32 %25, ptr %26, align 8, !tbaa !136
  %27 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !136
  %30 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !136
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !136
  br label %175

33:                                               ; preds = %1
  %34 = and i64 %4, 67108864
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %175

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 33554432
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %175

41:                                               ; preds = %36
  %42 = load ptr, ptr @global_trees, align 16, !tbaa !125
  %43 = icmp eq ptr %3, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !125
  %46 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %45) #19
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %46) #19
  br label %175

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !136
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !136
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !125
  br label %59

57:                                               ; preds = %51
  %58 = tail call ptr @gen_reg_rtx(i32 noundef 16) #19
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %58, %57 ], [ %56, %55 ]
  %61 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %60) #19
  tail call void @set_mem_attributes(ptr noundef %61, ptr noundef nonnull %0, i32 noundef 1) #19
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %61) #19
  br label %175

62:                                               ; preds = %47
  %63 = tail call zeroext i8 @use_register_for_decl(ptr noundef nonnull %0) #19
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @promote_decl_mode(ptr noundef nonnull %0, ptr noundef null) #19
  %67 = tail call ptr @gen_reg_rtx(i32 noundef %66) #19
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %67) #19
  %68 = load i64, ptr %37, align 8
  %69 = and i64 %68, 4096
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !136
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %76 = load ptr, ptr %72, align 8, !tbaa !136
  br label %77

77:                                               ; preds = %71, %75
  %78 = phi ptr [ %76, %75 ], [ %73, %71 ]
  tail call void @mark_user_reg(ptr noundef %78) #19
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i64, ptr %3, align 8
  %81 = trunc i64 %80 to i16
  switch i16 %81, label %175 [
    i16 10, label %82
    i16 12, label %82
  ]

82:                                               ; preds = %79, %79
  %83 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !136
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %87 = load ptr, ptr %83, align 8, !tbaa !136
  br label %88

88:                                               ; preds = %82, %86
  %89 = phi ptr [ %87, %86 ], [ %84, %82 ]
  %90 = load ptr, ptr %2, align 8, !tbaa !136
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !136
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !136
  tail call void @mark_reg_pointer(ptr noundef %89, i32 noundef %94) #19
  br label %175

95:                                               ; preds = %62
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !136
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 23
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1944, ptr noundef nonnull @.str.1) #19
  br label %102

102:                                              ; preds = %95, %101
  %103 = load i64, ptr %0, align 8
  %104 = and i64 %103, 65535
  %105 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %104, i64 11
  %106 = load i8, ptr %105, align 1, !tbaa !136
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %139, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !136
  %111 = icmp eq ptr %110, null
  br i1 %111, label %139, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %110, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 43
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1952, ptr noundef nonnull @.str.1) #19
  br label %117

117:                                              ; preds = %112, %116
  %118 = load ptr, ptr %109, align 8, !tbaa !136
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %121 = load ptr, ptr %109, align 8, !tbaa !136
  br label %122

122:                                              ; preds = %117, %120
  %123 = phi ptr [ %121, %120 ], [ %118, %117 ]
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !136
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 37
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1953, ptr noundef nonnull @.str.1) #19
  br label %130

130:                                              ; preds = %122, %129
  %131 = load ptr, ptr %109, align 8, !tbaa !136
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %134 = load ptr, ptr %109, align 8, !tbaa !136
  br label %135

135:                                              ; preds = %130, %133
  %136 = phi ptr [ %134, %133 ], [ %131, %130 ]
  %137 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !136
  br label %139

139:                                              ; preds = %135, %108, %102
  %140 = phi ptr [ %138, %135 ], [ null, %108 ], [ null, %102 ]
  %141 = load i64, ptr %37, align 8
  %142 = and i64 %141, 255
  %143 = icmp eq i64 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !140
  %146 = and i32 %145, 32
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 128, i32 256
  br label %154

149:                                              ; preds = %139
  %150 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %151 = load i8, ptr %150, align 1, !tbaa !136
  %152 = zext i8 %151 to i32
  %153 = shl nuw nsw i32 %152, 3
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i32 [ %148, %144 ], [ %153, %149 ]
  %156 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  store i32 %155, ptr %156, align 8, !tbaa !136
  %157 = load i64, ptr %0, align 8
  %158 = and i64 %157, -4398046511105
  store i64 %158, ptr %0, align 8
  %159 = tail call ptr @assign_temp(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1, i32 noundef 1) #19
  tail call void @set_mem_attributes(ptr noundef %159, ptr noundef nonnull %0, i32 noundef 1) #19
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %159) #19
  %160 = icmp eq ptr %140, null
  br i1 %160, label %175, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !136
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #19
  %166 = load ptr, ptr %162, align 8, !tbaa !136
  br label %167

167:                                              ; preds = %161, %165
  %168 = phi ptr [ %166, %165 ], [ %163, %161 ]
  %169 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !136
  %171 = tail call ptr @force_operand(ptr noundef %170, ptr noundef nonnull %140) #19
  %172 = icmp eq ptr %171, %140
  br i1 %172, label %175, label %173

173:                                              ; preds = %167
  %174 = tail call ptr @emit_move_insn(ptr noundef nonnull %140, ptr noundef %171) #19
  br label %175

175:                                              ; preds = %44, %59, %79, %88, %167, %173, %154, %33, %36, %1, %16
  ret void
}

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @use_register_for_decl(ptr noundef) local_unnamed_addr #3

declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_user_reg(ptr noundef) local_unnamed_addr #3

declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_stack_save() local_unnamed_addr #10 !prof !124 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  store ptr null, ptr %1, align 8, !tbaa !125
  tail call void @do_pending_stack_adjust() #19
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #19
  %2 = load ptr, ptr %1, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret ptr %2
}

declare void @emit_stack_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_stack_restore(ptr noundef %0) local_unnamed_addr #10 !prof !124 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %3 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %2, i8 noundef zeroext 0) #19
  tail call void @emit_stack_restore(i32 noundef 0, ptr noundef %3, ptr noundef null) #19
  ret void
}

declare void @emit_stack_restore(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @expand_case(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !237 {
  %2 = alloca ptr, align 8
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = add nsw i32 %4, -10
  %6 = icmp ult i32 %5, -9
  br i1 %6, label %19, label %7, !prof !238

7:                                                ; preds = %1
  %8 = zext nneg i32 %4 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !140
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !180
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16, !prof !238

15:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %16

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !125
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi ptr [ %18, %16 ], [ null, %1 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !136
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 21
  %26 = and i32 %25, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !125
  %27 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 48, i64 noundef 100) #19
  tail call void @do_pending_stack_adjust() #19
  %28 = load ptr, ptr @global_trees, align 16, !tbaa !125
  %29 = icmp eq ptr %22, %28
  br i1 %29, label %589, label %30, !prof !238

30:                                               ; preds = %19
  %31 = load i64, ptr %20, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %35, !prof !238

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2279, ptr noundef nonnull @.str.1) #19
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !136
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %40, label %39, !prof !239

39:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3215, ptr noundef nonnull @.str.1) #19
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, 255
  %43 = add nsw i32 %42, -1
  %44 = icmp ult i32 %43, 9
  tail call void @llvm.assume(i1 %44)
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !140
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !180
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53, !prof !238

52:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %53

53:                                               ; preds = %52, %40
  %54 = getelementptr inbounds i8, ptr %0, i64 %50
  %55 = getelementptr inbounds ptr, ptr %54, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !125
  %57 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !136
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %67, !prof !239

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !136
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67, !prof !239

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !136
  br label %67

67:                                               ; preds = %64, %60, %53
  %68 = phi ptr [ null, %53 ], [ null, %60 ], [ %66, %64 ]
  %69 = phi i32 [ 0, %53 ], [ 0, %60 ], [ 1, %64 ]
  %70 = load i32, ptr %36, align 4, !tbaa !136
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %73, label %72, !prof !239

72:                                               ; preds = %67
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3162, ptr noundef nonnull @.str.1) #19
  br label %73

73:                                               ; preds = %67, %72
  %74 = load ptr, ptr %2, align 8, !tbaa !125
  %75 = add i32 %70, -2
  %76 = icmp slt i32 %75, %69
  br i1 %76, label %214, label %77, !prof !240

77:                                               ; preds = %73
  %78 = add i32 %70, -1
  %79 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 13
  %80 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 14
  br label %81

81:                                               ; preds = %77, %210
  %82 = phi i32 [ %75, %77 ], [ %212, %210 ]
  %83 = phi i32 [ %78, %77 ], [ %82, %210 ]
  %84 = phi ptr [ %74, %77 ], [ %211, %210 ]
  %85 = load i32, ptr %36, align 4, !tbaa !136
  %86 = icmp ugt i32 %85, %83
  br i1 %86, label %88, label %87, !prof !241

87:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3215, ptr noundef nonnull @.str.1) #19
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, ptr %0, align 8
  %90 = and i32 %89, 255
  %91 = add nsw i32 %90, -1
  %92 = icmp ult i32 %91, 9
  tail call void @llvm.assume(i1 %92)
  %93 = zext nneg i32 %90 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !140
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !180
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101, !prof !242

100:                                              ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #19
  br label %101

101:                                              ; preds = %100, %88
  %102 = getelementptr inbounds i8, ptr %0, i64 %98
  %103 = zext i32 %83 to i64
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !125
  %106 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !136
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110, !prof !242

109:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2295, ptr noundef nonnull @.str.1) #19
  br label %110

110:                                              ; preds = %101, %109
  %111 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !136
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114, !prof !243

114:                                              ; preds = %110
  %115 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %112, ptr noundef %107) #19
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %210, !prof !244

117:                                              ; preds = %114, %110
  %118 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !136
  %120 = load i64, ptr %107, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 23
  br i1 %122, label %124, label %123, !prof !241

123:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2009, ptr noundef nonnull @.str.1) #19
  br label %124

124:                                              ; preds = %123, %117
  br i1 %113, label %130, label %125, !prof !243

125:                                              ; preds = %124
  %126 = load i64, ptr %112, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 23
  br i1 %128, label %130, label %129, !prof !244

129:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2010, ptr noundef nonnull @.str.1) #19
  br label %130

130:                                              ; preds = %129, %125, %124
  %131 = load ptr, ptr %79, align 8, !tbaa !136
  %132 = load ptr, ptr %80, align 8, !tbaa !136
  br i1 %113, label %136, label %133, !prof !243

133:                                              ; preds = %130
  %134 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %107, ptr noundef nonnull %112) #19
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %152, label %136, !prof !244

136:                                              ; preds = %133, %130
  %137 = load i64, ptr %131, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 23
  br i1 %139, label %140, label %143, !prof !245

140:                                              ; preds = %136
  %141 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %107, ptr noundef nonnull %131) #19
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %210, label %143, !prof !246

143:                                              ; preds = %140, %136
  %144 = load i64, ptr %132, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 23
  br i1 %146, label %147, label %150, !prof !245

147:                                              ; preds = %143
  %148 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %107, ptr noundef nonnull %132) #19
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %210, label %150, !prof !246

150:                                              ; preds = %147, %143
  %151 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %22, ptr noundef nonnull %107) #19
  br label %187

152:                                              ; preds = %133
  %153 = load i64, ptr %131, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 23
  br i1 %155, label %156, label %159, !prof !244

156:                                              ; preds = %152
  %157 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %112, ptr noundef nonnull %131) #19
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %210, label %159, !prof !247

159:                                              ; preds = %156, %152
  %160 = load i64, ptr %132, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 23
  br i1 %162, label %163, label %166, !prof !244

163:                                              ; preds = %159
  %164 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %107, ptr noundef nonnull %132) #19
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %210, label %166, !prof !247

166:                                              ; preds = %163, %159
  %167 = load i64, ptr %131, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 23
  br i1 %169, label %170, label %174, !prof !244

170:                                              ; preds = %166
  %171 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %107, ptr noundef nonnull %131) #19
  %172 = icmp slt i32 %171, 0
  %173 = select i1 %172, ptr %131, ptr %107, !prof !247
  br label %174

174:                                              ; preds = %170, %166
  %175 = phi ptr [ %107, %166 ], [ %173, %170 ]
  %176 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %22, ptr noundef nonnull %175) #19
  %177 = load i64, ptr %132, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 23
  br i1 %179, label %180, label %184, !prof !244

180:                                              ; preds = %174
  %181 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %112, ptr noundef nonnull %132) #19
  %182 = icmp sgt i32 %181, 0
  %183 = select i1 %182, ptr %132, ptr %112, !prof !247
  br label %184

184:                                              ; preds = %180, %174
  %185 = phi ptr [ %112, %174 ], [ %183, %180 ]
  %186 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %22, ptr noundef nonnull %185) #19
  br label %187

187:                                              ; preds = %184, %150
  %188 = phi ptr [ %151, %150 ], [ %186, %184 ]
  %189 = phi ptr [ %151, %150 ], [ %176, %184 ]
  %190 = tail call ptr @pool_alloc(ptr noundef %27) #19
  %191 = getelementptr inbounds %struct.tree_common, ptr %189, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !136
  %193 = getelementptr inbounds %struct.tree_int_cst, ptr %189, i64 0, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !136
  %195 = getelementptr inbounds %struct.tree_int_cst, ptr %189, i64 0, i32 1, i32 1
  %196 = load i64, ptr %195, align 8, !tbaa !136
  %197 = tail call ptr @build_int_cst_wide(ptr noundef %192, i64 noundef %194, i64 noundef %196) #19
  %198 = getelementptr inbounds %struct.case_node, ptr %190, i64 0, i32 3
  store ptr %197, ptr %198, align 8, !tbaa !248
  %199 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !136
  %201 = getelementptr inbounds %struct.tree_int_cst, ptr %188, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !136
  %203 = getelementptr inbounds %struct.tree_int_cst, ptr %188, i64 0, i32 1, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !136
  %205 = tail call ptr @build_int_cst_wide(ptr noundef %200, i64 noundef %202, i64 noundef %204) #19
  %206 = getelementptr inbounds %struct.case_node, ptr %190, i64 0, i32 4
  store ptr %205, ptr %206, align 8, !tbaa !250
  %207 = getelementptr inbounds %struct.case_node, ptr %190, i64 0, i32 5
  store ptr %119, ptr %207, align 8, !tbaa !251
  store ptr null, ptr %190, align 8, !tbaa !252
  %208 = getelementptr inbounds %struct.case_node, ptr %190, i64 0, i32 2
  store ptr null, ptr %208, align 8, !tbaa !253
  %209 = getelementptr inbounds %struct.case_node, ptr %190, i64 0, i32 1
  store ptr %84, ptr %209, align 8, !tbaa !254
  br label %210

210:                                              ; preds = %187, %163, %156, %147, %140, %114
  %211 = phi ptr [ %84, %114 ], [ %190, %187 ], [ %84, %147 ], [ %84, %140 ], [ %84, %163 ], [ %84, %156 ]
  %212 = add nsw i32 %82, -1
  %213 = icmp sgt i32 %82, %69
  br i1 %213, label %81, label %214, !prof !255, !llvm.loop !256

214:                                              ; preds = %210, %73
  %215 = phi ptr [ %74, %73 ], [ %211, %210 ]
  store ptr %215, ptr %2, align 8, !tbaa !125
  %216 = tail call ptr @get_last_insn() #19
  %217 = icmp eq ptr %68, null
  br i1 %217, label %220, label %218, !prof !238

218:                                              ; preds = %214
  %219 = tail call ptr @label_rtx(ptr noundef nonnull %68)
  br label %220

220:                                              ; preds = %218, %214
  %221 = phi ptr [ %219, %218 ], [ null, %214 ]
  %222 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  %223 = load ptr, ptr %2, align 8, !tbaa !125
  %224 = icmp eq ptr %223, null
  br i1 %224, label %278, label %225, !prof !240

225:                                              ; preds = %220, %273
  %226 = phi ptr [ %276, %273 ], [ %223, %220 ]
  %227 = phi ptr [ %253, %273 ], [ null, %220 ]
  %228 = phi ptr [ %252, %273 ], [ null, %220 ]
  %229 = phi i32 [ %261, %273 ], [ 0, %220 ]
  %230 = phi i32 [ %274, %273 ], [ 0, %220 ]
  %231 = icmp eq i32 %229, 0
  %232 = getelementptr inbounds %struct.case_node, ptr %226, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !248
  br i1 %231, label %234, label %236, !prof !257

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.case_node, ptr %226, i64 0, i32 4
  br label %247

236:                                              ; preds = %225
  %237 = tail call i32 @tree_int_cst_lt(ptr noundef %233, ptr noundef %227) #19
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239, !prof !258

239:                                              ; preds = %236
  %240 = load ptr, ptr %232, align 8, !tbaa !248
  br label %241

241:                                              ; preds = %239, %236
  %242 = phi ptr [ %240, %239 ], [ %227, %236 ]
  %243 = getelementptr inbounds %struct.case_node, ptr %226, i64 0, i32 4
  %244 = load ptr, ptr %243, align 8, !tbaa !250
  %245 = tail call i32 @tree_int_cst_lt(ptr noundef %228, ptr noundef %244) #19
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247, !prof !259

247:                                              ; preds = %241, %234
  %248 = phi ptr [ %235, %234 ], [ %243, %241 ]
  %249 = phi ptr [ %233, %234 ], [ %242, %241 ]
  %250 = load ptr, ptr %248, align 8, !tbaa !250
  br label %251

251:                                              ; preds = %247, %241
  %252 = phi ptr [ %228, %241 ], [ %250, %247 ]
  %253 = phi ptr [ %242, %241 ], [ %249, %247 ]
  %254 = getelementptr inbounds %struct.case_node, ptr %226, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !248
  %256 = getelementptr inbounds %struct.case_node, ptr %226, i64 0, i32 4
  %257 = load ptr, ptr %256, align 8, !tbaa !250
  %258 = tail call i32 @tree_int_cst_equal(ptr noundef %255, ptr noundef %257) #19
  %259 = icmp eq i32 %258, 0
  %260 = select i1 %259, i32 2, i32 1, !prof !260
  %261 = add i32 %260, %229
  %262 = getelementptr inbounds %struct.case_node, ptr %226, i64 0, i32 5
  %263 = load ptr, ptr %262, align 8, !tbaa !251
  %264 = tail call ptr @label_rtx(ptr noundef %263)
  %265 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 1, i32 1
  %266 = load i32, ptr %265, align 8, !tbaa !136
  %267 = tail call i32 @bitmap_bit_p(ptr noundef %222, i32 noundef %266) #19
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273, !prof !261

269:                                              ; preds = %251
  %270 = load i32, ptr %265, align 8, !tbaa !136
  %271 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %222, i32 noundef %270) #19
  %272 = add i32 %230, 1
  br label %273

273:                                              ; preds = %251, %269
  %274 = phi i32 [ %230, %251 ], [ %272, %269 ]
  %275 = getelementptr inbounds %struct.case_node, ptr %226, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !125
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %225, !prof !262, !llvm.loop !263

278:                                              ; preds = %273, %220
  %279 = phi i32 [ 0, %220 ], [ %274, %273 ]
  %280 = phi i32 [ 0, %220 ], [ %261, %273 ]
  %281 = phi ptr [ null, %220 ], [ %252, %273 ]
  %282 = phi ptr [ null, %220 ], [ %253, %273 ]
  tail call void @bitmap_obstack_free(ptr noundef %222) #19
  %283 = icmp eq i32 %280, 0
  br i1 %283, label %284, label %291, !prof !238

284:                                              ; preds = %278
  %285 = icmp eq ptr %221, null
  br i1 %285, label %290, label %286

286:                                              ; preds = %284
  tail call void @do_pending_stack_adjust() #19
  %287 = tail call ptr @gen_jump(ptr noundef nonnull %221) #19
  %288 = tail call ptr @emit_jump_insn(ptr noundef %287) #19
  %289 = tail call ptr @emit_barrier() #19
  br label %290

290:                                              ; preds = %286, %284
  tail call void @free_alloc_pool(ptr noundef %27) #19
  br label %588

291:                                              ; preds = %278
  %292 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %22, ptr noundef %281, ptr noundef %282) #19
  %293 = load i32, ptr @word_mode, align 4, !tbaa !140
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !264
  %297 = icmp eq i32 %296, 2956
  br i1 %297, label %358, label %298, !prof !238

298:                                              ; preds = %291
  %299 = load i64, ptr %20, align 8
  %300 = and i64 %299, 131072
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %302, label %358, !prof !239

302:                                              ; preds = %298
  %303 = zext i32 %293 to i64
  %304 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !136
  %306 = zext i8 %305 to i64
  %307 = shl nuw nsw i64 %306, 3
  %308 = tail call i32 @compare_tree_int(ptr noundef %292, i64 noundef %307) #19
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %358, !prof !266

310:                                              ; preds = %302
  %311 = tail call i32 @compare_tree_int(ptr noundef %292, i64 noundef 0) #19
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %358, !prof !267

313:                                              ; preds = %310
  %314 = load i1, ptr @lshift_cheap_p.init, align 1
  br i1 %314, label %325, label %315

315:                                              ; preds = %313
  %316 = load i32, ptr @word_mode, align 4, !tbaa !140
  %317 = tail call ptr @gen_rtx_REG(i32 noundef %316, i32 noundef 10000) #19
  %318 = load i32, ptr @word_mode, align 4, !tbaa !140
  %319 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !125
  %320 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 65, i32 noundef %318, ptr noundef %319, ptr noundef %317) #19
  %321 = tail call zeroext i8 @optimize_insn_for_speed_p() #19
  %322 = tail call i32 @rtx_cost(ptr noundef %320, i32 noundef 23, i8 noundef zeroext %321) #19
  %323 = icmp slt i32 %322, 12
  %324 = zext i1 %323 to i8
  store i8 %324, ptr @lshift_cheap_p.cheap, align 1, !tbaa !136
  store i1 true, ptr @lshift_cheap_p.init, align 1
  br label %325

325:                                              ; preds = %313, %315
  %326 = load i8, ptr @lshift_cheap_p.cheap, align 1, !tbaa !136
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %358, label %328

328:                                              ; preds = %325
  %329 = icmp eq i32 %279, 1
  %330 = icmp ugt i32 %280, 2
  %331 = select i1 %329, i1 %330, i1 false
  br i1 %331, label %340, label %332

332:                                              ; preds = %328
  %333 = icmp eq i32 %279, 2
  %334 = icmp ugt i32 %280, 4
  %335 = select i1 %333, i1 %334, i1 false
  br i1 %335, label %340, label %336

336:                                              ; preds = %332
  %337 = icmp eq i32 %279, 3
  %338 = icmp ugt i32 %280, 5
  %339 = select i1 %337, i1 %338, i1 false
  br i1 %339, label %340, label %358

340:                                              ; preds = %336, %332, %328
  %341 = tail call i32 @compare_tree_int(ptr noundef %282, i64 noundef 0) #19
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %340
  %344 = load i32, ptr @word_mode, align 4, !tbaa !140
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !136
  %348 = zext i8 %347 to i64
  %349 = shl nuw nsw i64 %348, 3
  %350 = tail call i32 @compare_tree_int(ptr noundef %281, i64 noundef %349) #19
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %343
  %353 = tail call ptr @build_int_cst(ptr noundef nonnull %22, i64 noundef 0) #19
  br label %354

354:                                              ; preds = %352, %343, %340
  %355 = phi ptr [ %281, %352 ], [ %292, %343 ], [ %292, %340 ]
  %356 = phi ptr [ %353, %352 ], [ %282, %343 ], [ %282, %340 ]
  %357 = load ptr, ptr %2, align 8, !tbaa !125
  tail call fastcc void @emit_case_bit_tests(ptr noundef nonnull %22, ptr noundef nonnull %20, ptr noundef %356, ptr noundef %355, ptr noundef %357, ptr noundef %221)
  br label %584

358:                                              ; preds = %336, %325, %310, %302, %298, %291
  %359 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 101), align 8, !tbaa !268
  %360 = tail call i32 %359() #19, !prof !269
  %361 = icmp ult i32 %280, %360
  br i1 %361, label %380, label %362, !prof !270

362:                                              ; preds = %358
  %363 = tail call zeroext i8 @optimize_insn_for_size_p() #19
  %364 = icmp eq i8 %363, 0
  %365 = select i1 %364, i32 10, i32 3, !prof !271
  %366 = mul i32 %365, %280
  %367 = zext i32 %366 to i64
  %368 = tail call i32 @compare_tree_int(ptr noundef %292, i64 noundef %367) #19
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %380, label %370, !prof !272

370:                                              ; preds = %362
  %371 = tail call i32 @compare_tree_int(ptr noundef %292, i64 noundef 0) #19
  %372 = icmp sgt i32 %371, -1
  %373 = load i32, ptr @flag_jump_tables, align 4
  %374 = icmp ne i32 %373, 0
  %375 = select i1 %372, i1 %374, i1 false, !prof !273
  br i1 %375, label %376, label %380, !prof !273

376:                                              ; preds = %370
  %377 = load i64, ptr %20, align 8
  %378 = and i64 %377, 131072
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %490, label %380, !prof !273

380:                                              ; preds = %376, %370, %362, %358
  %381 = tail call ptr @expand_expr_real(ptr noundef nonnull %20, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %382 = load i32, ptr %381, align 8
  %383 = lshr i32 %382, 16
  %384 = and i32 %383, 255
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !136
  %388 = icmp eq i8 %387, 2
  br i1 %388, label %389, label %409, !prof !274

389:                                              ; preds = %380
  %390 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %384) #19
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %409, !prof !275

392:                                              ; preds = %389
  %393 = load i32, ptr %381, align 8
  %394 = lshr i32 %393, 16
  %395 = and i32 %394, 255
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %409, label %397

397:                                              ; preds = %392, %403
  %398 = phi i32 [ %407, %403 ], [ %395, %392 ]
  %399 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %398) #19
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = tail call ptr @convert_to_mode(i32 noundef %398, ptr noundef nonnull %381, i32 noundef %26) #19
  br label %409

403:                                              ; preds = %397
  %404 = zext nneg i32 %398 to i64
  %405 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !136
  %407 = zext i8 %406 to i32
  %408 = icmp eq i8 %406, 0
  br i1 %408, label %409, label %397, !llvm.loop !276

409:                                              ; preds = %403, %392, %401, %389, %380
  %410 = phi ptr [ %381, %389 ], [ %381, %380 ], [ %402, %401 ], [ %381, %392 ], [ %381, %403 ]
  tail call void @do_pending_stack_adjust() #19
  %411 = load i32, ptr %410, align 8
  %412 = and i32 %411, 65535
  %413 = icmp eq i32 %412, 43
  br i1 %413, label %414, label %416, !prof !275

414:                                              ; preds = %409
  %415 = tail call ptr @copy_to_reg(ptr noundef nonnull %410) #19
  br label %416

416:                                              ; preds = %414, %409
  %417 = phi ptr [ %415, %414 ], [ %410, %409 ]
  %418 = load ptr, ptr %2, align 8, !tbaa !125
  %419 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !125
  %420 = getelementptr inbounds %struct.case_node, ptr %418, i64 0, i32 4
  %421 = load ptr, ptr %420, align 8, !tbaa !250
  %422 = getelementptr inbounds %struct.tree_common, ptr %421, i64 0, i32 2
  %423 = load ptr, ptr %422, align 8, !tbaa !136
  %424 = tail call ptr @build_int_cst(ptr noundef %423, i64 noundef 127) #19
  %425 = load i1, ptr @cost_table_initialized, align 4
  br i1 %425, label %448, label %426, !prof !277

426:                                              ; preds = %416
  store i1 true, ptr @cost_table_initialized, align 4
  br label %427

427:                                              ; preds = %426, %444
  %428 = phi i64 [ 0, %426 ], [ %445, %444 ]
  %429 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %428
  %430 = load i16, ptr %429, align 2, !tbaa !177
  %431 = zext i16 %430 to i32
  %432 = and i32 %431, 140
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %440, !prof !278

434:                                              ; preds = %427
  %435 = and i32 %431, 32
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %440, !prof !279

437:                                              ; preds = %434
  %438 = and i32 %431, 2
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %444, label %440, !prof !280

440:                                              ; preds = %437, %434, %427
  %441 = phi i16 [ 16, %427 ], [ 8, %434 ], [ -1, %437 ]
  %442 = add nuw nsw i64 %428, 1
  %443 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %442
  store i16 %441, ptr %443, align 2, !tbaa !177
  br label %444

444:                                              ; preds = %440, %437
  %445 = add nuw nsw i64 %428, 1
  %446 = icmp eq i64 %445, 128
  br i1 %446, label %447, label %427, !prof !281, !llvm.loop !282

447:                                              ; preds = %444
  store i16 8, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 33), align 2, !tbaa !177
  store i16 4, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 10), align 4, !tbaa !177
  store i16 4, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 1), align 2, !tbaa !177
  store i16 2, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 11), align 2, !tbaa !177
  store i16 1, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 13), align 2, !tbaa !177
  store i16 1, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 12), align 8, !tbaa !177
  store i16 1, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 9), align 2, !tbaa !177
  br label %448

448:                                              ; preds = %447, %416
  %449 = icmp eq ptr %418, null
  br i1 %449, label %482, label %450, !prof !283

450:                                              ; preds = %448, %478
  %451 = phi ptr [ %480, %478 ], [ %418, %448 ]
  %452 = getelementptr inbounds %struct.case_node, ptr %451, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !248
  %454 = tail call i32 @tree_int_cst_lt(ptr noundef %453, ptr noundef %419) #19
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %482, !prof !284

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.case_node, ptr %451, i64 0, i32 4
  %458 = load ptr, ptr %457, align 8, !tbaa !250
  %459 = tail call i32 @tree_int_cst_lt(ptr noundef %424, ptr noundef %458) #19
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %482, !prof !285

461:                                              ; preds = %456
  %462 = load ptr, ptr %452, align 8, !tbaa !248
  %463 = getelementptr inbounds %struct.tree_int_cst, ptr %462, i64 0, i32 1
  %464 = load i64, ptr %463, align 8, !tbaa !136
  %465 = load ptr, ptr %457, align 8, !tbaa !250
  %466 = getelementptr inbounds %struct.tree_int_cst, ptr %465, i64 0, i32 1
  %467 = load i64, ptr %466, align 8, !tbaa !136
  %468 = shl i64 %464, 32
  %469 = ashr exact i64 %468, 32
  br label %470

470:                                              ; preds = %473, %461
  %471 = phi i64 [ %474, %473 ], [ %469, %461 ]
  %472 = icmp slt i64 %467, %471
  br i1 %472, label %478, label %473, !prof !286

473:                                              ; preds = %470
  %474 = add i64 %471, 1
  %475 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %474
  %476 = load i16, ptr %475, align 2, !tbaa !177
  %477 = icmp slt i16 %476, 0
  br i1 %477, label %482, label %470, !prof !287, !llvm.loop !288

478:                                              ; preds = %470
  %479 = getelementptr inbounds %struct.case_node, ptr %451, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !254
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %450, !prof !289, !llvm.loop !290

482:                                              ; preds = %456, %450, %478, %473, %448
  %483 = phi i32 [ 1, %448 ], [ 0, %473 ], [ 1, %478 ], [ 0, %450 ], [ 0, %456 ]
  store i32 %483, ptr @use_cost_table, align 4, !tbaa !140
  call fastcc void @balance_case_nodes(ptr noundef nonnull %2, ptr noundef null)
  %484 = load ptr, ptr %2, align 8, !tbaa !125
  tail call fastcc void @emit_case_nodes(ptr noundef %417, ptr noundef %484, ptr noundef %221, ptr noundef nonnull %22)
  %485 = icmp eq ptr %221, null
  br i1 %485, label %584, label %486, !prof !275

486:                                              ; preds = %482
  tail call void @do_pending_stack_adjust() #19
  %487 = tail call ptr @gen_jump(ptr noundef nonnull %221) #19
  %488 = tail call ptr @emit_jump_insn(ptr noundef %487) #19
  %489 = tail call ptr @emit_barrier() #19
  br label %584

490:                                              ; preds = %376
  %491 = load ptr, ptr %2, align 8, !tbaa !125
  %492 = getelementptr inbounds %struct.case_node, ptr %491, i64 0, i32 5
  %493 = load ptr, ptr %492, align 8, !tbaa !251
  %494 = tail call ptr @label_rtx(ptr noundef %493)
  %495 = tail call ptr @gen_label_rtx() #19
  %496 = tail call i32 @try_casesi(ptr noundef nonnull %22, ptr noundef nonnull %20, ptr noundef %282, ptr noundef %292, ptr noundef %495, ptr noundef %221, ptr noundef %494) #19
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %516, !prof !273

498:                                              ; preds = %490
  %499 = tail call zeroext i8 @optimize_insn_for_speed_p() #19
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %509, label %501, !prof !291

501:                                              ; preds = %498
  %502 = tail call i32 @compare_tree_int(ptr noundef %282, i64 noundef 0) #19
  %503 = icmp sgt i32 %502, 0
  br i1 %503, label %504, label %509, !prof !291

504:                                              ; preds = %501
  %505 = tail call i32 @compare_tree_int(ptr noundef %282, i64 noundef 3) #19
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %504
  %508 = tail call ptr @build_int_cst(ptr noundef nonnull %22, i64 noundef 0) #19
  br label %509

509:                                              ; preds = %507, %504, %501, %498
  %510 = phi ptr [ %281, %507 ], [ %292, %504 ], [ %292, %501 ], [ %292, %498 ]
  %511 = phi ptr [ %508, %507 ], [ %282, %504 ], [ %282, %501 ], [ %282, %498 ]
  %512 = tail call i32 @try_tablejump(ptr noundef nonnull %22, ptr noundef nonnull %20, ptr noundef %511, ptr noundef %510, ptr noundef %495, ptr noundef %221) #19
  %513 = and i32 %512, 255
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %516, !prof !291

515:                                              ; preds = %509
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2473, ptr noundef nonnull @.str.1) #19
  br label %516

516:                                              ; preds = %515, %509, %490
  %517 = phi ptr [ %292, %490 ], [ %510, %509 ], [ %510, %515 ]
  %518 = phi ptr [ %282, %490 ], [ %511, %509 ], [ %511, %515 ]
  %519 = tail call i64 @tree_low_cst(ptr noundef %517, i32 noundef 0) #19
  %520 = trunc i64 %519 to i32
  %521 = add i32 %520, 1
  %522 = sext i32 %521 to i64
  %523 = shl nsw i64 %522, 3
  %524 = alloca i8, i64 %523, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %524, i8 0, i64 %523, i1 false), !prof !292
  %525 = load ptr, ptr %2, align 8, !tbaa !125
  %526 = icmp eq ptr %525, null
  br i1 %526, label %552, label %527, !prof !293

527:                                              ; preds = %516, %548
  %528 = phi ptr [ %550, %548 ], [ %525, %516 ]
  %529 = getelementptr inbounds %struct.case_node, ptr %528, i64 0, i32 3
  %530 = load ptr, ptr %529, align 8, !tbaa !248
  %531 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %22, ptr noundef %530, ptr noundef %518) #19
  %532 = tail call i64 @tree_low_cst(ptr noundef %531, i32 noundef 1) #19
  %533 = getelementptr inbounds %struct.case_node, ptr %528, i64 0, i32 4
  %534 = load ptr, ptr %533, align 8, !tbaa !250
  %535 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %22, ptr noundef %534, ptr noundef %518) #19
  %536 = tail call i64 @tree_low_cst(ptr noundef %535, i32 noundef 1) #19
  %537 = icmp sgt i64 %532, %536
  br i1 %537, label %548, label %538, !prof !294

538:                                              ; preds = %527
  %539 = getelementptr inbounds %struct.case_node, ptr %528, i64 0, i32 5
  br label %540

540:                                              ; preds = %538, %540
  %541 = phi i64 [ %532, %538 ], [ %546, %540 ]
  %542 = load ptr, ptr %539, align 8, !tbaa !251
  %543 = tail call ptr @label_rtx(ptr noundef %542)
  %544 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %543) #19
  %545 = getelementptr inbounds ptr, ptr %524, i64 %541
  store ptr %544, ptr %545, align 8, !tbaa !125
  %546 = add i64 %541, 1
  %547 = icmp eq i64 %541, %536
  br i1 %547, label %548, label %540, !prof !295, !llvm.loop !296

548:                                              ; preds = %540, %527
  %549 = getelementptr inbounds %struct.case_node, ptr %528, i64 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !125
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %527, !prof !297, !llvm.loop !298

552:                                              ; preds = %548, %516
  %553 = icmp eq ptr %221, null
  %554 = select i1 %553, ptr %494, ptr %221, !prof !291
  %555 = icmp ult i32 %520, 2147483647
  br i1 %555, label %556, label %568, !prof !299

556:                                              ; preds = %552
  %557 = zext i32 %521 to i64
  br label %558

558:                                              ; preds = %556, %565
  %559 = phi i64 [ 0, %556 ], [ %566, %565 ]
  %560 = getelementptr inbounds ptr, ptr %524, i64 %559
  %561 = load ptr, ptr %560, align 8, !tbaa !125
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %565, !prof !300

563:                                              ; preds = %558
  %564 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %554) #19
  store ptr %564, ptr %560, align 8, !tbaa !125
  br label %565

565:                                              ; preds = %558, %563
  %566 = add nuw nsw i64 %559, 1
  %567 = icmp eq i64 %566, %557
  br i1 %567, label %568, label %558, !prof !301, !llvm.loop !302

568:                                              ; preds = %565, %552
  %569 = tail call ptr @emit_label(ptr noundef %495) #19
  %570 = load i32, ptr @flag_pic, align 4, !tbaa !140
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %577, label %572, !prof !273

572:                                              ; preds = %568
  %573 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %495) #19
  %574 = call ptr @gen_rtvec_v(i32 noundef %521, ptr noundef nonnull %524) #19
  %575 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !125
  %576 = call ptr @gen_rtx_fmt_eEee0_stat(i32 noundef 21, i32 noundef 16, ptr noundef %573, ptr noundef %574, ptr noundef %575, ptr noundef %575) #19
  br label %580

577:                                              ; preds = %568
  %578 = call ptr @gen_rtvec_v(i32 noundef %521, ptr noundef nonnull %524) #19
  %579 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 20, i32 noundef 16, ptr noundef %578) #19
  br label %580

580:                                              ; preds = %577, %572
  %581 = phi ptr [ %579, %577 ], [ %576, %572 ]
  %582 = call ptr @emit_jump_insn(ptr noundef %581) #19
  %583 = call ptr @emit_barrier() #19
  br label %584

584:                                              ; preds = %580, %486, %482, %354
  %585 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1, i32 0, i32 0, i64 2
  %586 = load ptr, ptr %585, align 8, !tbaa !136
  %587 = call ptr @get_last_insn() #19
  call void @reorder_insns(ptr noundef %586, ptr noundef %587, ptr noundef %216) #19
  br label %588

588:                                              ; preds = %584, %290
  br i1 %283, label %590, label %589, !prof !238

589:                                              ; preds = %588, %19
  call void @free_temp_slots() #19
  call void @free_alloc_pool(ptr noundef %27) #19
  br label %590

590:                                              ; preds = %588, %589
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @emit_case_bit_tests(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef %5) unnamed_addr #10 !prof !124 {
  %7 = alloca [3 x %struct.case_bit_test], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #19
  %8 = icmp eq ptr %4, null
  br i1 %8, label %81, label %9

9:                                                ; preds = %6, %77
  %10 = phi i32 [ %43, %77 ], [ 0, %6 ]
  %11 = phi ptr [ %79, %77 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  %14 = tail call ptr @label_rtx(ptr noundef %13)
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9, %22
  %17 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %18, i32 2
  %20 = load ptr, ptr %19, align 16, !tbaa !303
  %21 = icmp eq ptr %14, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = add nuw i32 %17, 1
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %25, label %16, !llvm.loop !305

25:                                               ; preds = %22, %16, %9
  %26 = phi i32 [ 0, %9 ], [ %10, %22 ], [ %17, %16 ]
  %27 = icmp eq i32 %26, %10
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = icmp ult i32 %10, 3
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2165, ptr noundef nonnull @.str.1) #19
  br label %31

31:                                               ; preds = %28, %30
  %32 = zext i32 %26 to i64
  %33 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %32
  %34 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %32, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  store ptr %14, ptr %34, align 16, !tbaa !303
  %35 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %32, i32 3
  store i32 1, ptr %35, align 8, !tbaa !306
  %36 = add i32 %10, 1
  br label %42

37:                                               ; preds = %25
  %38 = zext i32 %26 to i64
  %39 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %38, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !306
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !306
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i32 [ %36, %31 ], [ %10, %37 ]
  %44 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !248
  %46 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %45, ptr noundef %2) #19
  %47 = tail call i64 @tree_low_cst(ptr noundef %46, i32 noundef 1) #19
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !250
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %50, ptr noundef %2) #19
  %52 = tail call i64 @tree_low_cst(ptr noundef %51, i32 noundef 1) #19
  %53 = trunc i64 %52 to i32
  %54 = icmp ugt i32 %48, %53
  br i1 %54, label %77, label %55

55:                                               ; preds = %42
  %56 = zext i32 %26 to i64
  %57 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %56, i32 1
  %58 = zext i32 %26 to i64
  %59 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %58
  br label %60

60:                                               ; preds = %55, %74
  %61 = phi i32 [ %48, %55 ], [ %75, %74 ]
  %62 = icmp ugt i32 %61, 63
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = add i32 %61, -32
  %65 = zext nneg i32 %64 to i64
  %66 = shl nuw i64 1, %65
  %67 = load i64, ptr %59, align 16, !tbaa !307
  %68 = or i64 %67, %66
  store i64 %68, ptr %59, align 16, !tbaa !307
  br label %74

69:                                               ; preds = %60
  %70 = zext nneg i32 %61 to i64
  %71 = shl nuw i64 1, %70
  %72 = load i64, ptr %57, align 8, !tbaa !308
  %73 = or i64 %72, %71
  store i64 %73, ptr %57, align 8, !tbaa !308
  br label %74

74:                                               ; preds = %63, %69
  %75 = add i32 %61, 1
  %76 = icmp ugt i32 %75, %53
  br i1 %76, label %77, label %60, !llvm.loop !309

77:                                               ; preds = %74, %42
  %78 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !254
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %9, !llvm.loop !310

81:                                               ; preds = %77, %6
  %82 = phi i32 [ 0, %6 ], [ %43, %77 ]
  %83 = zext i32 %82 to i64
  call void @spec_qsort(ptr noundef nonnull %7, i64 noundef %83, i64 noundef 32, ptr noundef nonnull @case_bit_test_cmp) #19
  %84 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #19
  %85 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %2) #19
  %86 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %84, ptr noundef %85) #19
  %87 = call ptr @expand_expr_real(ptr noundef %86, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  call void @do_pending_stack_adjust() #19
  %88 = load i64, ptr %0, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = call i32 @vector_type_mode(ptr noundef nonnull %0) #19
  br label %98

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  br label %98

98:                                               ; preds = %93, %91
  %99 = phi i32 [ %92, %91 ], [ %97, %93 ]
  %100 = call ptr @expand_expr_real(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %101 = icmp eq ptr %5, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @emit_cmp_and_jump_insns(ptr noundef %87, ptr noundef %100, i32 noundef 87, ptr noundef null, i32 noundef %99, i32 noundef 1, ptr noundef nonnull %5) #19
  br label %103

103:                                              ; preds = %102, %98
  %104 = load i32, ptr @word_mode, align 4, !tbaa !140
  %105 = call ptr @convert_to_mode(i32 noundef %104, ptr noundef %87, i32 noundef 0) #19
  %106 = load i32, ptr @word_mode, align 4, !tbaa !140
  %107 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !125
  %108 = call ptr @expand_binop(i32 noundef %106, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), ptr noundef %107, ptr noundef %105, ptr noundef null, i32 noundef 1, i32 noundef 2) #19
  %109 = icmp eq i32 %82, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %103
  %111 = zext i32 %82 to i64
  br label %112

112:                                              ; preds = %110, %112
  %113 = phi i64 [ 0, %110 ], [ %126, %112 ]
  %114 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %113
  %115 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %113, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !308
  %117 = load i64, ptr %114, align 16, !tbaa !307
  %118 = load i32, ptr @word_mode, align 4, !tbaa !140
  %119 = call ptr @immed_double_const(i64 noundef %116, i64 noundef %117, i32 noundef %118) #19
  %120 = load i32, ptr @word_mode, align 4, !tbaa !140
  %121 = call ptr @expand_binop(i32 noundef %120, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %108, ptr noundef %119, ptr noundef null, i32 noundef 1, i32 noundef 2) #19
  %122 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !125
  %123 = load i32, ptr @word_mode, align 4, !tbaa !140
  %124 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %113, i32 2
  %125 = load ptr, ptr %124, align 16, !tbaa !303
  call void @emit_cmp_and_jump_insns(ptr noundef %121, ptr noundef %122, i32 noundef 80, ptr noundef null, i32 noundef %123, i32 noundef 1, ptr noundef %125) #19
  %126 = add nuw nsw i64 %113, 1
  %127 = icmp eq i64 %126, %111
  br i1 %127, label %128, label %112, !llvm.loop !311

128:                                              ; preds = %112, %103
  br i1 %101, label %133, label %129

129:                                              ; preds = %128
  call void @do_pending_stack_adjust() #19
  %130 = call ptr @gen_jump(ptr noundef nonnull %5) #19
  %131 = call ptr @emit_jump_insn(ptr noundef %130) #19
  %132 = call ptr @emit_barrier() #19
  br label %133

133:                                              ; preds = %129, %128
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #19
  ret void
}

declare zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #3

declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @balance_case_nodes(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !312 !PGOFuncName !313 {
  br label %3

3:                                                ; preds = %148, %2
  %4 = phi ptr [ %0, %2 ], [ %152, %148 ]
  %5 = phi ptr [ %1, %2 ], [ %150, %148 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !125
  %7 = icmp eq ptr %6, null
  br i1 %7, label %165, label %8, !prof !314

8:                                                ; preds = %3, %46
  %9 = phi ptr [ %50, %46 ], [ %6, %3 ]
  %10 = phi i32 [ %34, %46 ], [ 0, %3 ]
  %11 = phi i32 [ %48, %46 ], [ 0, %3 ]
  %12 = phi i32 [ %47, %46 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.case_node, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !248
  %15 = getelementptr inbounds %struct.case_node, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !250
  %17 = tail call i32 @tree_int_cst_equal(ptr noundef %14, ptr noundef %16) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32, !prof !315

19:                                               ; preds = %8
  %20 = add nsw i32 %10, 1
  %21 = load i32, ptr @use_cost_table, align 4, !tbaa !140
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23, !prof !316

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 8, !tbaa !250
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %24, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !136
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !177
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %12, %30
  br label %32

32:                                               ; preds = %19, %23, %8
  %33 = phi i32 [ %12, %8 ], [ %31, %23 ], [ %12, %19 ]
  %34 = phi i32 [ %10, %8 ], [ %20, %23 ], [ %20, %19 ]
  %35 = load i32, ptr @use_cost_table, align 4, !tbaa !140
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37, !prof !317

37:                                               ; preds = %32
  %38 = load ptr, ptr %13, align 8, !tbaa !248
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !136
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !177
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %33, %44
  br label %46

46:                                               ; preds = %37, %32
  %47 = phi i32 [ %45, %37 ], [ %33, %32 ]
  %48 = add nuw nsw i32 %11, 1
  %49 = getelementptr inbounds %struct.case_node, ptr %9, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !254
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %8, !prof !318, !llvm.loop !319

52:                                               ; preds = %46
  %53 = icmp ugt i32 %11, 1
  %54 = load ptr, ptr %4, align 8, !tbaa !125
  br i1 %53, label %55, label %153, !prof !320

55:                                               ; preds = %52
  %56 = load i32, ptr @use_cost_table, align 4, !tbaa !140
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %114, label %58, !prof !321

58:                                               ; preds = %55
  %59 = add nsw i32 %47, 1
  %60 = sdiv i32 %59, 2
  br label %61

61:                                               ; preds = %96, %58
  %62 = phi i32 [ %60, %58 ], [ %94, %96 ]
  %63 = phi ptr [ %4, %58 ], [ %97, %96 ]
  %64 = phi i32 [ 0, %58 ], [ %98, %96 ]
  %65 = load ptr, ptr %63, align 8, !tbaa !125
  %66 = getelementptr inbounds %struct.case_node, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !248
  %68 = getelementptr inbounds %struct.case_node, ptr %65, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !250
  %70 = tail call i32 @tree_int_cst_equal(ptr noundef %67, ptr noundef %69) #19
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %61
  %73 = load ptr, ptr %63, align 8, !tbaa !125
  %74 = getelementptr inbounds %struct.case_node, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !250
  %76 = getelementptr inbounds %struct.tree_int_cst, ptr %75, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !136
  %78 = add i64 %77, 1
  %79 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !177
  %81 = sext i16 %80 to i32
  %82 = sub nsw i32 %62, %81
  br label %83

83:                                               ; preds = %72, %61
  %84 = phi i32 [ %62, %61 ], [ %82, %72 ]
  %85 = load ptr, ptr %63, align 8, !tbaa !125
  %86 = getelementptr inbounds %struct.case_node, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !248
  %88 = getelementptr inbounds %struct.tree_int_cst, ptr %87, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !136
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !177
  %93 = sext i16 %92 to i32
  %94 = sub nsw i32 %84, %93
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %99, label %96

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.case_node, ptr %85, i64 0, i32 1
  %98 = add nuw nsw i32 %64, 1
  br label %61, !llvm.loop !322

99:                                               ; preds = %83
  %100 = icmp eq i32 %64, 0
  br i1 %100, label %101, label %148

101:                                              ; preds = %99
  %102 = load ptr, ptr %4, align 8, !tbaa !125
  %103 = getelementptr inbounds %struct.case_node, ptr %102, i64 0, i32 2
  store ptr %5, ptr %103, align 8, !tbaa !253
  tail call fastcc void @balance_case_nodes(ptr noundef %102, ptr noundef %102)
  %104 = getelementptr inbounds %struct.case_node, ptr %102, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !254
  %106 = icmp eq ptr %105, null
  br i1 %106, label %165, label %107

107:                                              ; preds = %101, %107
  %108 = phi ptr [ %112, %107 ], [ %105, %101 ]
  %109 = phi ptr [ %108, %107 ], [ %102, %101 ]
  %110 = getelementptr inbounds %struct.case_node, ptr %108, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !253
  %111 = getelementptr inbounds %struct.case_node, ptr %108, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !254
  %113 = icmp eq ptr %112, null
  br i1 %113, label %165, label %107, !llvm.loop !323

114:                                              ; preds = %55
  %115 = icmp eq i32 %48, 3
  br i1 %115, label %116, label %118, !prof !324

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.case_node, ptr %54, i64 0, i32 1
  br label %148

118:                                              ; preds = %114
  %119 = add nuw i32 %11, 2
  %120 = add i32 %119, %34
  %121 = sdiv i32 %120, 2
  %122 = load ptr, ptr %4, align 8, !tbaa !125
  %123 = getelementptr inbounds %struct.case_node, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !248
  %125 = getelementptr inbounds %struct.case_node, ptr %122, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !250
  %127 = tail call i32 @tree_int_cst_equal(ptr noundef %124, ptr noundef %126) #19
  %128 = icmp eq i32 %127, 0
  %129 = sext i1 %128 to i32
  %130 = add nsw i32 %121, %129
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %148, label %132, !prof !325

132:                                              ; preds = %118, %132
  %133 = phi i32 [ %146, %132 ], [ %130, %118 ]
  %134 = phi ptr [ %137, %132 ], [ %4, %118 ]
  %135 = add nsw i32 %133, -1
  %136 = load ptr, ptr %134, align 8, !tbaa !125
  %137 = getelementptr inbounds %struct.case_node, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !125
  %139 = getelementptr inbounds %struct.case_node, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !248
  %141 = getelementptr inbounds %struct.case_node, ptr %138, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !250
  %143 = tail call i32 @tree_int_cst_equal(ptr noundef %140, ptr noundef %142) #19
  %144 = icmp eq i32 %143, 0
  %145 = sext i1 %144 to i32
  %146 = add nsw i32 %135, %145
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %132, !prof !326, !llvm.loop !327

148:                                              ; preds = %132, %118, %99, %116
  %149 = phi ptr [ %117, %116 ], [ %63, %99 ], [ %4, %118 ], [ %137, %132 ]
  %150 = load ptr, ptr %149, align 8, !tbaa !125
  store ptr %150, ptr %4, align 8, !tbaa !125
  store ptr null, ptr %149, align 8, !tbaa !125
  %151 = getelementptr inbounds %struct.case_node, ptr %150, i64 0, i32 2
  store ptr %5, ptr %151, align 8, !tbaa !253
  store ptr %54, ptr %150, align 8, !tbaa !252
  tail call fastcc void @balance_case_nodes(ptr noundef nonnull %150, ptr noundef nonnull %150)
  %152 = getelementptr inbounds %struct.case_node, ptr %150, i64 0, i32 1
  br label %3

153:                                              ; preds = %52
  %154 = getelementptr inbounds %struct.case_node, ptr %54, i64 0, i32 2
  store ptr %5, ptr %154, align 8, !tbaa !253
  %155 = getelementptr inbounds %struct.case_node, ptr %54, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !254
  %157 = icmp eq ptr %156, null
  br i1 %157, label %165, label %158, !prof !328

158:                                              ; preds = %153, %158
  %159 = phi ptr [ %163, %158 ], [ %156, %153 ]
  %160 = phi ptr [ %159, %158 ], [ %54, %153 ]
  %161 = getelementptr inbounds %struct.case_node, ptr %159, i64 0, i32 2
  store ptr %160, ptr %161, align 8, !tbaa !253
  %162 = getelementptr inbounds %struct.case_node, ptr %159, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !254
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %158, !prof !329, !llvm.loop !330

165:                                              ; preds = %158, %107, %153, %101, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_case_nodes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !331 !PGOFuncName !332 {
  br label %5

5:                                                ; preds = %311, %292, %279, %221, %184, %157, %83, %67, %4
  %6 = phi ptr [ %1, %4 ], [ %75, %67 ], [ %91, %83 ], [ %158, %157 ], [ %185, %184 ], [ %222, %221 ], [ %280, %279 ], [ %299, %292 ], [ %318, %311 ]
  %7 = load i64, ptr %3, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 21
  %10 = and i32 %9, 1
  %11 = load i32, ptr %0, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = and i64 %7, 65535
  %15 = icmp eq i64 %14, 14
  br i1 %15, label %16, label %18, !prof !333

16:                                               ; preds = %5
  %17 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #19
  br label %23

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  %25 = icmp eq i32 %13, 0
  %26 = select i1 %25, i32 %24, i32 %13, !prof !333
  %27 = tail call fastcc i32 @node_has_low_bound(ptr noundef %6, ptr noundef nonnull %3), !range !222
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !334

29:                                               ; preds = %23
  %30 = tail call fastcc i32 @node_has_high_bound(ptr noundef %6, ptr noundef nonnull %3), !range !222
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi i32 [ 0, %23 ], [ %30, %29 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34, !prof !335

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !251
  %37 = tail call ptr @label_rtx(ptr noundef %36)
  tail call void @do_pending_stack_adjust() #19
  %38 = tail call ptr @gen_jump(ptr noundef %37) #19
  %39 = tail call ptr @emit_jump_insn(ptr noundef %38) #19
  %40 = tail call ptr @emit_barrier() #19
  br label %358

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !248
  %44 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !250
  %46 = tail call i32 @tree_int_cst_equal(ptr noundef %43, ptr noundef %45) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %233, label %48, !prof !336

48:                                               ; preds = %41
  %49 = load ptr, ptr %42, align 8, !tbaa !248
  %50 = tail call ptr @expand_expr_real(ptr noundef %49, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %51 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %50, i32 noundef %10) #19
  %52 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !251
  %54 = tail call ptr @label_rtx(ptr noundef %53)
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %0, ptr noundef %51, i32 noundef 81, i32 noundef %10, i32 noundef %26, ptr noundef null, ptr noundef null, ptr noundef %54, i32 noundef -1) #19
  %55 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !254
  %57 = icmp eq ptr %56, null
  br i1 %57, label %197, label %58, !prof !337

58:                                               ; preds = %48
  %59 = load ptr, ptr %6, align 8, !tbaa !252
  %60 = icmp eq ptr %59, null
  br i1 %60, label %159, label %61, !prof !338

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @node_has_low_bound(ptr noundef nonnull %56, ptr noundef nonnull %3), !range !222
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64, !prof !339

64:                                               ; preds = %61
  %65 = tail call fastcc i32 @node_has_high_bound(ptr noundef nonnull %56, ptr noundef nonnull %3), !range !222
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67, !prof !340

67:                                               ; preds = %64
  %68 = load ptr, ptr %44, align 8, !tbaa !250
  %69 = tail call ptr @expand_expr_real(ptr noundef %68, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %70 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %69, i32 noundef %10) #19
  %71 = load ptr, ptr %55, align 8, !tbaa !254
  %72 = getelementptr inbounds %struct.case_node, ptr %71, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !251
  %74 = tail call ptr @label_rtx(ptr noundef %73)
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %70, i32 noundef 83, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %74) #19
  %75 = load ptr, ptr %6, align 8, !tbaa !252
  br label %5

76:                                               ; preds = %61, %64
  %77 = load ptr, ptr %6, align 8, !tbaa !252
  %78 = tail call fastcc i32 @node_has_low_bound(ptr noundef %77, ptr noundef nonnull %3), !range !222
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80, !prof !341

80:                                               ; preds = %76
  %81 = tail call fastcc i32 @node_has_high_bound(ptr noundef %77, ptr noundef nonnull %3), !range !222
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83, !prof !342

83:                                               ; preds = %80
  %84 = load ptr, ptr %44, align 8, !tbaa !250
  %85 = tail call ptr @expand_expr_real(ptr noundef %84, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %86 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %85, i32 noundef %10) #19
  %87 = load ptr, ptr %6, align 8, !tbaa !252
  %88 = getelementptr inbounds %struct.case_node, ptr %87, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !251
  %90 = tail call ptr @label_rtx(ptr noundef %89)
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %86, i32 noundef 85, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %90) #19
  %91 = load ptr, ptr %55, align 8, !tbaa !254
  br label %5

92:                                               ; preds = %76, %80
  %93 = load ptr, ptr %55, align 8, !tbaa !254
  %94 = getelementptr inbounds %struct.case_node, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !248
  %96 = getelementptr inbounds %struct.case_node, ptr %93, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !250
  %98 = tail call i32 @tree_int_cst_equal(ptr noundef %95, ptr noundef %97) #19
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %143, label %100, !prof !343

100:                                              ; preds = %92
  %101 = load ptr, ptr %55, align 8, !tbaa !254
  %102 = load ptr, ptr %101, align 8, !tbaa !252
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %143, !prof !344

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.case_node, ptr %101, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !254
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %143, !prof !345

108:                                              ; preds = %104
  %109 = load ptr, ptr %6, align 8, !tbaa !252
  %110 = getelementptr inbounds %struct.case_node, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !248
  %112 = getelementptr inbounds %struct.case_node, ptr %109, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !250
  %114 = tail call i32 @tree_int_cst_equal(ptr noundef %111, ptr noundef %113) #19
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %143, label %116, !prof !346

116:                                              ; preds = %108
  %117 = load ptr, ptr %6, align 8, !tbaa !252
  %118 = load ptr, ptr %117, align 8, !tbaa !252
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %143, !prof !347

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.case_node, ptr %117, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !254
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %143, !prof !347

124:                                              ; preds = %120
  %125 = load ptr, ptr %55, align 8, !tbaa !254
  %126 = getelementptr inbounds %struct.case_node, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !248
  %128 = tail call ptr @expand_expr_real(ptr noundef %127, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %129 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %128, i32 noundef %10) #19
  %130 = load ptr, ptr %55, align 8, !tbaa !254
  %131 = getelementptr inbounds %struct.case_node, ptr %130, i64 0, i32 5
  %132 = load ptr, ptr %131, align 8, !tbaa !251
  %133 = tail call ptr @label_rtx(ptr noundef %132)
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %0, ptr noundef %129, i32 noundef 81, i32 noundef %10, i32 noundef %26, ptr noundef null, ptr noundef null, ptr noundef %133, i32 noundef -1) #19
  %134 = load ptr, ptr %6, align 8, !tbaa !252
  %135 = getelementptr inbounds %struct.case_node, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !248
  %137 = tail call ptr @expand_expr_real(ptr noundef %136, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %138 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %137, i32 noundef %10) #19
  %139 = load ptr, ptr %6, align 8, !tbaa !252
  %140 = getelementptr inbounds %struct.case_node, ptr %139, i64 0, i32 5
  %141 = load ptr, ptr %140, align 8, !tbaa !251
  %142 = tail call ptr @label_rtx(ptr noundef %141)
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %0, ptr noundef %138, i32 noundef 81, i32 noundef %10, i32 noundef %26, ptr noundef null, ptr noundef null, ptr noundef %142, i32 noundef -1) #19
  br label %358

143:                                              ; preds = %120, %116, %108, %104, %100, %92
  %144 = tail call i32 @curr_insn_locator() #19
  %145 = tail call i32 @locator_location(i32 noundef %144) #19
  %146 = tail call ptr @build_decl_stat(i32 noundef %145, i32 noundef 30, ptr noundef null, ptr noundef null) #19
  %147 = load ptr, ptr %44, align 8, !tbaa !250
  %148 = tail call ptr @expand_expr_real(ptr noundef %147, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %149 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %148, i32 noundef %10) #19
  %150 = tail call ptr @label_rtx(ptr noundef %146)
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %149, i32 noundef 83, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %150) #19
  %151 = load ptr, ptr %6, align 8, !tbaa !252
  tail call fastcc void @emit_case_nodes(ptr noundef nonnull %0, ptr noundef %151, ptr noundef %2, ptr noundef nonnull %3)
  %152 = icmp eq ptr %2, null
  br i1 %152, label %157, label %153, !prof !348

153:                                              ; preds = %143
  tail call void @do_pending_stack_adjust() #19
  %154 = tail call ptr @gen_jump(ptr noundef nonnull %2) #19
  %155 = tail call ptr @emit_jump_insn(ptr noundef %154) #19
  %156 = tail call ptr @emit_barrier() #19
  br label %157

157:                                              ; preds = %153, %143
  tail call void @expand_label(ptr noundef %146)
  %158 = load ptr, ptr %55, align 8, !tbaa !254
  br label %5

159:                                              ; preds = %58
  br i1 %57, label %197, label %160, !prof !349

160:                                              ; preds = %159
  %161 = load ptr, ptr %6, align 8, !tbaa !252
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %196, !prof !350

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.case_node, ptr %56, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !254
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %177, !prof !350

167:                                              ; preds = %163
  %168 = load ptr, ptr %56, align 8, !tbaa !252
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %177, !prof !350

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.case_node, ptr %56, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !248
  %173 = getelementptr inbounds %struct.case_node, ptr %56, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !250
  %175 = tail call i32 @tree_int_cst_equal(ptr noundef %172, ptr noundef %174) #19
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %186, !prof !351

177:                                              ; preds = %170, %167, %163
  %178 = tail call fastcc i32 @node_has_low_bound(ptr noundef nonnull %6, ptr noundef nonnull %3), !range !222
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184, !prof !352

180:                                              ; preds = %177
  %181 = load ptr, ptr %44, align 8, !tbaa !250
  %182 = tail call ptr @expand_expr_real(ptr noundef %181, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %183 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %182, i32 noundef %10) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %183, i32 noundef 85, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %2) #19
  br label %184

184:                                              ; preds = %180, %177
  %185 = load ptr, ptr %55, align 8, !tbaa !254
  br label %5

186:                                              ; preds = %170
  %187 = load ptr, ptr %55, align 8, !tbaa !254
  %188 = getelementptr inbounds %struct.case_node, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !248
  %190 = tail call ptr @expand_expr_real(ptr noundef %189, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %191 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %190, i32 noundef %10) #19
  %192 = load ptr, ptr %55, align 8, !tbaa !254
  %193 = getelementptr inbounds %struct.case_node, ptr %192, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !251
  %195 = tail call ptr @label_rtx(ptr noundef %194)
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %0, ptr noundef %191, i32 noundef 81, i32 noundef %10, i32 noundef %26, ptr noundef null, ptr noundef null, ptr noundef %195, i32 noundef -1) #19
  br label %358

196:                                              ; preds = %160
  br i1 %57, label %197, label %358, !prof !353

197:                                              ; preds = %48, %159, %196
  %198 = load ptr, ptr %6, align 8, !tbaa !252
  %199 = icmp eq ptr %198, null
  br i1 %199, label %358, label %200, !prof !353

200:                                              ; preds = %197
  %201 = load ptr, ptr %198, align 8, !tbaa !252
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.case_node, ptr %198, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !254
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.case_node, ptr %198, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !248
  %210 = getelementptr inbounds %struct.case_node, ptr %198, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !250
  %212 = tail call i32 @tree_int_cst_equal(ptr noundef %209, ptr noundef %211) #19
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %207, %203, %200
  %215 = tail call fastcc i32 @node_has_high_bound(ptr noundef nonnull %6, ptr noundef nonnull %3), !range !222
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load ptr, ptr %44, align 8, !tbaa !250
  %219 = tail call ptr @expand_expr_real(ptr noundef %218, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %220 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %219, i32 noundef %10) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %220, i32 noundef 83, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %2) #19
  br label %221

221:                                              ; preds = %217, %214
  %222 = load ptr, ptr %6, align 8, !tbaa !252
  br label %5

223:                                              ; preds = %207
  %224 = load ptr, ptr %6, align 8, !tbaa !252
  %225 = getelementptr inbounds %struct.case_node, ptr %224, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !248
  %227 = tail call ptr @expand_expr_real(ptr noundef %226, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %228 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %227, i32 noundef %10) #19
  %229 = load ptr, ptr %6, align 8, !tbaa !252
  %230 = getelementptr inbounds %struct.case_node, ptr %229, i64 0, i32 5
  %231 = load ptr, ptr %230, align 8, !tbaa !251
  %232 = tail call ptr @label_rtx(ptr noundef %231)
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %0, ptr noundef %228, i32 noundef 81, i32 noundef %10, i32 noundef %26, ptr noundef null, ptr noundef null, ptr noundef %232, i32 noundef -1) #19
  br label %358

233:                                              ; preds = %41
  %234 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !254
  %236 = icmp eq ptr %235, null
  br i1 %236, label %301, label %237, !prof !354

237:                                              ; preds = %233
  %238 = load ptr, ptr %6, align 8, !tbaa !252
  %239 = icmp eq ptr %238, null
  br i1 %239, label %281, label %240, !prof !355

240:                                              ; preds = %237
  %241 = tail call fastcc i32 @node_has_low_bound(ptr noundef nonnull %235, ptr noundef nonnull %3), !range !222
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %253, label %243, !prof !356

243:                                              ; preds = %240
  %244 = tail call fastcc i32 @node_has_high_bound(ptr noundef nonnull %235, ptr noundef nonnull %3), !range !222
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %253, label %246, !prof !357

246:                                              ; preds = %243
  %247 = load ptr, ptr %44, align 8, !tbaa !250
  %248 = tail call ptr @expand_expr_real(ptr noundef %247, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %249 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %248, i32 noundef %10) #19
  %250 = load ptr, ptr %234, align 8, !tbaa !254
  %251 = getelementptr inbounds %struct.case_node, ptr %250, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !251
  br label %260

253:                                              ; preds = %240, %243
  %254 = tail call i32 @curr_insn_locator() #19
  %255 = tail call i32 @locator_location(i32 noundef %254) #19
  %256 = tail call ptr @build_decl_stat(i32 noundef %255, i32 noundef 30, ptr noundef null, ptr noundef null) #19
  %257 = load ptr, ptr %44, align 8, !tbaa !250
  %258 = tail call ptr @expand_expr_real(ptr noundef %257, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %259 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %258, i32 noundef %10) #19
  br label %260

260:                                              ; preds = %253, %246
  %261 = phi ptr [ %256, %253 ], [ %252, %246 ]
  %262 = phi ptr [ %259, %253 ], [ %249, %246 ]
  %263 = phi ptr [ %256, %253 ], [ null, %246 ]
  %264 = tail call ptr @label_rtx(ptr noundef %261)
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %262, i32 noundef 83, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %264) #19
  %265 = load ptr, ptr %42, align 8, !tbaa !248
  %266 = tail call ptr @expand_expr_real(ptr noundef %265, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %267 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %266, i32 noundef %10) #19
  %268 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 5
  %269 = load ptr, ptr %268, align 8, !tbaa !251
  %270 = tail call ptr @label_rtx(ptr noundef %269)
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %267, i32 noundef 82, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %270) #19
  %271 = load ptr, ptr %6, align 8, !tbaa !252
  tail call fastcc void @emit_case_nodes(ptr noundef nonnull %0, ptr noundef %271, ptr noundef %2, ptr noundef nonnull %3)
  %272 = icmp eq ptr %263, null
  br i1 %272, label %358, label %273, !prof !358

273:                                              ; preds = %260
  %274 = icmp eq ptr %2, null
  br i1 %274, label %279, label %275, !prof !359

275:                                              ; preds = %273
  tail call void @do_pending_stack_adjust() #19
  %276 = tail call ptr @gen_jump(ptr noundef nonnull %2) #19
  %277 = tail call ptr @emit_jump_insn(ptr noundef %276) #19
  %278 = tail call ptr @emit_barrier() #19
  br label %279

279:                                              ; preds = %275, %273
  tail call void @expand_label(ptr noundef nonnull %263)
  %280 = load ptr, ptr %234, align 8, !tbaa !254
  br label %5

281:                                              ; preds = %237
  br i1 %236, label %301, label %282, !prof !360

282:                                              ; preds = %281
  %283 = load ptr, ptr %6, align 8, !tbaa !252
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %300, !prof !361

285:                                              ; preds = %282
  %286 = tail call fastcc i32 @node_has_low_bound(ptr noundef nonnull %6, ptr noundef nonnull %3), !range !222
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %292, !prof !362

288:                                              ; preds = %285
  %289 = load ptr, ptr %42, align 8, !tbaa !248
  %290 = tail call ptr @expand_expr_real(ptr noundef %289, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %291 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %290, i32 noundef %10) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %291, i32 noundef 85, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %2) #19
  br label %292

292:                                              ; preds = %288, %285
  %293 = load ptr, ptr %44, align 8, !tbaa !250
  %294 = tail call ptr @expand_expr_real(ptr noundef %293, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %295 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %294, i32 noundef %10) #19
  %296 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 5
  %297 = load ptr, ptr %296, align 8, !tbaa !251
  %298 = tail call ptr @label_rtx(ptr noundef %297)
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %295, i32 noundef 84, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %298) #19
  %299 = load ptr, ptr %234, align 8, !tbaa !254
  br label %5

300:                                              ; preds = %282
  br i1 %236, label %301, label %319, !prof !363

301:                                              ; preds = %233, %281, %300
  %302 = load ptr, ptr %6, align 8, !tbaa !252
  %303 = icmp eq ptr %302, null
  br i1 %303, label %319, label %304, !prof !363

304:                                              ; preds = %301
  %305 = tail call fastcc i32 @node_has_high_bound(ptr noundef nonnull %6, ptr noundef nonnull %3), !range !222
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load ptr, ptr %44, align 8, !tbaa !250
  %309 = tail call ptr @expand_expr_real(ptr noundef %308, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %310 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %309, i32 noundef %10) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %310, i32 noundef 83, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %2) #19
  br label %311

311:                                              ; preds = %307, %304
  %312 = load ptr, ptr %42, align 8, !tbaa !248
  %313 = tail call ptr @expand_expr_real(ptr noundef %312, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %314 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %313, i32 noundef %10) #19
  %315 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 5
  %316 = load ptr, ptr %315, align 8, !tbaa !251
  %317 = tail call ptr @label_rtx(ptr noundef %316)
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %314, i32 noundef 82, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %317) #19
  %318 = load ptr, ptr %6, align 8, !tbaa !252
  br label %5

319:                                              ; preds = %301, %300
  %320 = tail call fastcc i32 @node_has_high_bound(ptr noundef %6, ptr noundef nonnull %3), !range !222
  %321 = tail call fastcc i32 @node_has_low_bound(ptr noundef %6, ptr noundef nonnull %3), !range !222
  %322 = icmp eq i32 %320, 0
  %323 = icmp ne i32 %321, 0
  %324 = and i1 %322, %323
  br i1 %324, label %325, label %329, !prof !364

325:                                              ; preds = %319
  %326 = load ptr, ptr %44, align 8, !tbaa !250
  %327 = tail call ptr @expand_expr_real(ptr noundef %326, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %328 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %327, i32 noundef %10) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %328, i32 noundef 83, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %2) #19
  br label %351

329:                                              ; preds = %319
  %330 = icmp eq i32 %321, 0
  %331 = icmp ne i32 %320, 0
  %332 = and i1 %331, %330
  br i1 %332, label %333, label %337, !prof !365

333:                                              ; preds = %329
  %334 = load ptr, ptr %42, align 8, !tbaa !248
  %335 = tail call ptr @expand_expr_real(ptr noundef %334, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #19
  %336 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %24, ptr noundef %335, i32 noundef %10) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %336, i32 noundef 85, ptr noundef null, i32 noundef %26, i32 noundef %10, ptr noundef %2) #19
  br label %351

337:                                              ; preds = %329
  %338 = or i32 %321, %320
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %351, !prof !366

340:                                              ; preds = %337
  %341 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !367
  %342 = tail call ptr %341(i32 noundef %26, i32 noundef %10) #19, !prof !375
  %343 = load ptr, ptr %42, align 8, !tbaa !248
  %344 = tail call ptr @build1_stat(i32 noundef 113, ptr noundef %342, ptr noundef %343) #19
  %345 = load ptr, ptr %44, align 8, !tbaa !250
  %346 = tail call ptr @build1_stat(i32 noundef 113, ptr noundef %342, ptr noundef %345) #19
  %347 = tail call ptr @expand_expr_real(ptr noundef %344, ptr noundef null, i32 noundef %26, i32 noundef 0, ptr noundef null) #19
  %348 = tail call ptr @expand_simple_binop(i32 noundef %26, i32 noundef 50, ptr noundef nonnull %0, ptr noundef %347, ptr noundef null, i32 noundef %10, i32 noundef 2) #19
  %349 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %342, ptr noundef %346, ptr noundef %344) #19
  %350 = tail call ptr @expand_expr_real(ptr noundef %349, ptr noundef null, i32 noundef %26, i32 noundef 0, ptr noundef null) #19
  tail call void @emit_cmp_and_jump_insns(ptr noundef %348, ptr noundef %350, i32 noundef 83, ptr noundef null, i32 noundef %26, i32 noundef 1, ptr noundef %2) #19
  br label %351

351:                                              ; preds = %333, %340, %337, %325
  %352 = getelementptr inbounds %struct.case_node, ptr %6, i64 0, i32 5
  %353 = load ptr, ptr %352, align 8, !tbaa !251
  %354 = tail call ptr @label_rtx(ptr noundef %353)
  tail call void @do_pending_stack_adjust() #19
  %355 = tail call ptr @gen_jump(ptr noundef %354) #19
  %356 = tail call ptr @emit_jump_insn(ptr noundef %355) #19
  %357 = tail call ptr @emit_barrier() #19
  br label %358

358:                                              ; preds = %260, %186, %223, %197, %196, %124, %351, %34
  ret void
}

declare i32 @try_casesi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

declare i32 @try_tablejump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_eEee0_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtvec_v(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_si_stat(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare i32 @list_length(ptr noundef) local_unnamed_addr #3

declare i32 @decode_reg_name(ptr noundef) local_unnamed_addr #3

declare void @mark_addressable(ptr noundef) local_unnamed_addr #3

declare ptr @validize_mem(ptr noundef) local_unnamed_addr #3

declare void @set_reg_attrs_for_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @tree_conflicts_with_clobbers_p(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !124 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %0, ptr %3, align 8, !tbaa !125
  %4 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @decl_overlaps_hard_reg_set_p, ptr noundef %1, ptr noundef null, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  call void (ptr, ...) @error(ptr noundef nonnull @.str.25, ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, -16777217
  store i64 %11, ptr %9, align 8
  br label %12

12:                                               ; preds = %2, %6
  %13 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %13
}

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @asm_operand_ok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

declare i32 @promote_function_mode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @emit_group_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_use(ptr noundef) local_unnamed_addr #3

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @get_arg_pointer_save_area() local_unnamed_addr #3

declare ptr @gen_blockage() local_unnamed_addr #3

declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @case_bit_test_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !124 {
  %3 = getelementptr inbounds %struct.case_bit_test, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !306
  %5 = getelementptr inbounds %struct.case_bit_test, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !306
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub nsw i32 %4, %6
  br label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.case_bit_test, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !303
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !136
  %15 = getelementptr inbounds %struct.case_bit_test, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !303
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !136
  %19 = sub nsw i32 %14, %18
  br label %20

20:                                               ; preds = %10, %8
  %21 = phi i32 [ %9, %8 ], [ %19, %10 ]
  ret i32 %21
}

declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @locator_location(i32 noundef) local_unnamed_addr #3

declare i32 @curr_insn_locator() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @node_has_low_bound(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !376 !PGOFuncName !377 {
  %3 = getelementptr inbounds %struct.case_node, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = tail call i32 @tree_int_cst_equal(ptr noundef %4, ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %31, !prof !378

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !252
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %31, !prof !379

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 8, !tbaa !248
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = tail call ptr @build_int_cst(ptr noundef %15, i64 noundef 1) #19
  %17 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %15, ptr noundef %13, ptr noundef %16) #19
  %18 = load ptr, ptr %3, align 8, !tbaa !248
  %19 = tail call i32 @tree_int_cst_lt(ptr noundef %17, ptr noundef %18) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21, !prof !380

21:                                               ; preds = %12, %26
  %22 = phi ptr [ %24, %26 ], [ %0, %12 ]
  %23 = getelementptr inbounds %struct.case_node, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !253
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !381

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.case_node, ptr %24, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !250
  %29 = tail call i32 @tree_int_cst_equal(ptr noundef %17, ptr noundef %28) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %21, label %31, !prof !382, !llvm.loop !383

31:                                               ; preds = %26, %21, %12, %9, %2
  %32 = phi i32 [ 1, %2 ], [ 0, %9 ], [ 0, %12 ], [ 0, %21 ], [ 1, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @node_has_high_bound(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !384 !PGOFuncName !385 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6, !prof !386

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.case_node, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  %9 = tail call i32 @tree_int_cst_equal(ptr noundef %8, ptr noundef nonnull %4) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34, !prof !387

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.case_node, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !254
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %34, !prof !388

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !250
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !136
  %19 = tail call ptr @build_int_cst(ptr noundef %18, i64 noundef 1) #19
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %18, ptr noundef %16, ptr noundef %19) #19
  %21 = load ptr, ptr %7, align 8, !tbaa !250
  %22 = tail call i32 @tree_int_cst_lt(ptr noundef %21, ptr noundef %20) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24, !prof !389

24:                                               ; preds = %15, %29
  %25 = phi ptr [ %27, %29 ], [ %0, %15 ]
  %26 = getelementptr inbounds %struct.case_node, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !253
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29, !prof !390

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.case_node, ptr %27, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !248
  %32 = tail call i32 @tree_int_cst_equal(ptr noundef %20, ptr noundef %31) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %24, label %34, !prof !391, !llvm.loop !392

34:                                               ; preds = %29, %24, %15, %11, %6, %2
  %35 = phi i32 [ 1, %2 ], [ 1, %6 ], [ 0, %11 ], [ 0, %15 ], [ 0, %24 ], [ 1, %29 ]
  ret i32 %35
}

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

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
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!123}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!35 = !{ptr @label_rtx, ptr @gen_label_rtx, i64 3108}
!36 = !{ptr @label_rtx, ptr @set_decl_rtl, i64 3108}
!37 = !{ptr @emit_jump, ptr @do_pending_stack_adjust, i64 10140}
!38 = !{ptr @emit_jump, ptr @gen_jump, i64 10140}
!39 = !{ptr @emit_jump, ptr @emit_jump_insn, i64 10140}
!40 = !{ptr @emit_jump, ptr @emit_barrier, i64 10140}
!41 = !{ptr @expand_label, ptr @label_rtx, i64 3108}
!42 = !{ptr @expand_label, ptr @do_pending_stack_adjust, i64 3108}
!43 = !{ptr @expand_label, ptr @emit_label, i64 3108}
!44 = !{ptr @expand_return, ptr @build_qualified_type, i64 38}
!45 = !{ptr @expand_return, ptr @assign_temp, i64 38}
!46 = !{ptr @expand_return, ptr @expand_expr_real, i64 38}
!47 = !{ptr @expand_return, ptr @force_not_mem, i64 38}
!48 = !{ptr @expand_return, ptr @expand_value_return, i64 38}
!49 = !{ptr @expand_value_return, ptr @promote_function_mode, i64 38}
!50 = !{ptr @expand_value_return, ptr @emit_move_insn, i64 38}
!51 = !{ptr @expand_value_return, ptr @clear_pending_stack_adjust, i64 38}
!52 = !{ptr @expand_value_return, ptr @do_pending_stack_adjust, i64 76}
!53 = !{ptr @expand_value_return, ptr @gen_jump, i64 38}
!54 = !{ptr @expand_value_return, ptr @emit_jump_insn, i64 38}
!55 = !{ptr @expand_value_return, ptr @emit_barrier, i64 38}
!56 = !{ptr @expand_case, ptr @create_alloc_pool, i64 40}
!57 = !{ptr @expand_case, ptr @do_pending_stack_adjust, i64 74}
!58 = !{ptr @expand_case, ptr @tree_int_cst_lt, i64 22156}
!59 = !{ptr @expand_case, ptr @tree_int_cst_equal, i64 12929}
!60 = !{ptr @expand_case, ptr @tree_int_cst_compare, i64 25858}
!61 = !{ptr @expand_case, ptr @fold_convert_loc, i64 12929}
!62 = !{ptr @expand_case, ptr @pool_alloc, i64 9209}
!63 = !{ptr @expand_case, ptr @build_int_cst_wide, i64 18418}
!64 = !{ptr @expand_case, ptr @get_last_insn, i64 80}
!65 = !{ptr @expand_case, ptr @label_rtx, i64 32792}
!66 = !{ptr @expand_case, ptr @bitmap_obstack_alloc_stat, i64 40}
!67 = !{ptr @expand_case, ptr @bitmap_bit_p, i64 9209}
!68 = !{ptr @expand_case, ptr @bitmap_set_bit, i64 2903}
!69 = !{ptr @expand_case, ptr @bitmap_obstack_free, i64 40}
!70 = !{ptr @expand_case, ptr @fold_build2_stat_loc, i64 17504}
!71 = !{ptr @expand_case, ptr @compare_tree_int, i64 124}
!72 = !{ptr @expand_case, ptr @optimize_insn_for_size_p, i64 35}
!73 = !{ptr @expand_case, ptr @expand_expr_real, i64 17}
!74 = !{ptr @expand_case, ptr @have_insn_for, i64 17}
!75 = !{ptr @expand_case, ptr @build_int_cst, i64 17}
!76 = !{ptr @expand_case, ptr @balance_case_nodes, i64 17}
!77 = !{ptr @expand_case, ptr @emit_case_nodes, i64 17}
!78 = !{ptr @expand_case, ptr @gen_jump, i64 17}
!79 = !{ptr @expand_case, ptr @emit_jump_insn, i64 40}
!80 = !{ptr @expand_case, ptr @emit_barrier, i64 40}
!81 = !{ptr @expand_case, ptr @gen_label_rtx, i64 23}
!82 = !{ptr @expand_case, ptr @try_casesi, i64 23}
!83 = !{ptr @expand_case, ptr @optimize_insn_for_speed_p, i64 23}
!84 = !{ptr @expand_case, ptr @try_tablejump, i64 23}
!85 = !{ptr @expand_case, ptr @tree_low_cst, i64 17487}
!86 = !{ptr @expand_case, ptr @gen_rtx_fmt_u_stat, i64 40501}
!87 = !{ptr @expand_case, ptr @emit_label, i64 23}
!88 = !{ptr @expand_case, ptr @gen_rtvec_v, i64 23}
!89 = !{ptr @expand_case, ptr @gen_rtx_fmt_E_stat, i64 23}
!90 = !{ptr @expand_case, ptr @reorder_insns, i64 40}
!91 = !{ptr @expand_case, ptr @free_temp_slots, i64 40}
!92 = !{ptr @expand_case, ptr @free_alloc_pool, i64 40}
!93 = !{ptr @balance_case_nodes, ptr @tree_int_cst_equal, i64 6456}
!94 = !{ptr @balance_case_nodes, ptr @balance_case_nodes, i64 368}
!95 = !{ptr @emit_case_nodes, ptr @node_has_low_bound, i64 1496}
!96 = !{ptr @emit_case_nodes, ptr @node_has_high_bound, i64 414}
!97 = !{ptr @emit_case_nodes, ptr @label_rtx, i64 1166}
!98 = !{ptr @emit_case_nodes, ptr @do_pending_stack_adjust, i64 552}
!99 = !{ptr @emit_case_nodes, ptr @gen_jump, i64 552}
!100 = !{ptr @emit_case_nodes, ptr @emit_jump_insn, i64 552}
!101 = !{ptr @emit_case_nodes, ptr @emit_barrier, i64 552}
!102 = !{ptr @emit_case_nodes, ptr @tree_int_cst_equal, i64 923}
!103 = !{ptr @emit_case_nodes, ptr @expand_expr_real, i64 1298}
!104 = !{ptr @emit_case_nodes, ptr @convert_modes, i64 1042}
!105 = !{ptr @emit_case_nodes, ptr @do_compare_rtx_and_jump, i64 341}
!106 = !{ptr @emit_case_nodes, ptr @emit_cmp_and_jump_insns, i64 829}
!107 = !{ptr @emit_case_nodes, ptr @curr_insn_locator, i64 329}
!108 = !{ptr @emit_case_nodes, ptr @locator_location, i64 329}
!109 = !{ptr @emit_case_nodes, ptr @build_decl_stat, i64 329}
!110 = !{ptr @emit_case_nodes, ptr @emit_case_nodes, i64 331}
!111 = !{ptr @emit_case_nodes, ptr @expand_label, i64 318}
!112 = !{ptr @emit_case_nodes, ptr @build1_stat, i64 256}
!113 = !{ptr @emit_case_nodes, ptr @expand_simple_binop, i64 128}
!114 = !{ptr @emit_case_nodes, ptr @fold_build2_stat_loc, i64 128}
!115 = !{ptr @node_has_low_bound, ptr @tree_int_cst_equal, i64 2690}
!116 = !{ptr @node_has_low_bound, ptr @build_int_cst, i64 505}
!117 = !{ptr @node_has_low_bound, ptr @fold_build2_stat_loc, i64 505}
!118 = !{ptr @node_has_low_bound, ptr @tree_int_cst_lt, i64 505}
!119 = !{ptr @node_has_high_bound, ptr @tree_int_cst_equal, i64 830}
!120 = !{ptr @node_has_high_bound, ptr @build_int_cst, i64 153}
!121 = !{ptr @node_has_high_bound, ptr @fold_build2_stat_loc, i64 153}
!122 = !{ptr @node_has_high_bound, ptr @tree_int_cst_lt, i64 153}
!123 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!124 = !{!"function_entry_count", i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"any pointer", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C/C++ TBAA"}
!129 = !{!130, !126, i64 8}
!130 = !{!"_IO_FILE", !131, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !131, i64 112, !131, i64 116, !132, i64 120, !133, i64 128, !127, i64 130, !127, i64 131, !126, i64 136, !132, i64 144, !126, i64 152, !126, i64 160, !126, i64 168, !126, i64 176, !132, i64 184, !131, i64 192, !127, i64 196}
!131 = !{!"int", !127, i64 0}
!132 = !{!"long", !127, i64 0}
!133 = !{!"short", !127, i64 0}
!134 = !{!130, !126, i64 16}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{!127, !127, i64 0}
!137 = !{!130, !126, i64 40}
!138 = !{!130, !126, i64 48}
!139 = !{!130, !131, i64 0}
!140 = !{!131, !131, i64 0}
!141 = distinct !{!141, !142, !143}
!142 = !{!"llvm.loop.mustprogress"}
!143 = !{!"llvm.loop.unroll.disable"}
!144 = !{!"function_entry_count", i64 39167}
!145 = !{!"branch_weights", i32 39167, i32 0}
!146 = !{!"branch_weights", i32 0, i32 39167}
!147 = !{!"branch_weights", i32 3108, i32 36059}
!148 = !{!"branch_weights", i32 3108, i32 0}
!149 = !{!150, !126, i64 32}
!150 = !{!"rtl_data", !151, i64 0, !152, i64 40, !153, i64 96, !154, i64 112, !156, i64 208, !157, i64 248, !131, i64 312, !126, i64 320, !126, i64 328, !126, i64 336, !126, i64 344, !126, i64 352, !126, i64 360, !126, i64 368, !126, i64 376, !126, i64 384, !126, i64 392, !132, i64 400, !126, i64 408, !126, i64 416, !126, i64 424, !131, i64 432, !131, i64 436, !131, i64 440, !131, i64 444, !131, i64 448, !131, i64 452, !126, i64 456, !127, i64 464, !127, i64 465, !127, i64 466, !127, i64 467, !127, i64 468, !127, i64 469, !127, i64 470, !127, i64 471, !127, i64 472, !127, i64 473, !127, i64 474, !127, i64 475, !127, i64 476, !127, i64 477, !127, i64 478, !127, i64 479, !127, i64 480, !127, i64 481, !127, i64 482, !127, i64 483, !127, i64 484, !127, i64 485}
!151 = !{!"expr_status", !131, i64 0, !131, i64 4, !131, i64 8, !126, i64 16, !126, i64 24, !126, i64 32}
!152 = !{!"emit_status", !131, i64 0, !131, i64 4, !126, i64 8, !126, i64 16, !126, i64 24, !131, i64 32, !131, i64 36, !131, i64 40, !131, i64 44, !126, i64 48}
!153 = !{!"varasm_status", !126, i64 0, !131, i64 8}
!154 = !{!"incoming_args", !131, i64 0, !131, i64 4, !131, i64 8, !126, i64 16, !155, i64 24, !126, i64 88}
!155 = !{!"ix86_args", !131, i64 0, !131, i64 4, !131, i64 8, !131, i64 12, !131, i64 16, !131, i64 20, !131, i64 24, !131, i64 28, !131, i64 32, !131, i64 36, !131, i64 40, !131, i64 44, !131, i64 48, !131, i64 52, !131, i64 56, !131, i64 60}
!156 = !{!"function_subsections", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32}
!157 = !{!"rtl_eh", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !127, i64 48}
!158 = !{!"function_entry_count", i64 10140}
!159 = !{!"function_entry_count", i64 3108}
!160 = !{!161, !126, i64 1640}
!161 = !{!"gcc_target", !162, i64 0, !164, i64 368, !165, i64 664, !131, i64 744, !126, i64 752, !126, i64 760, !126, i64 768, !126, i64 776, !126, i64 784, !126, i64 792, !126, i64 800, !126, i64 808, !126, i64 816, !126, i64 824, !126, i64 832, !126, i64 840, !126, i64 848, !126, i64 856, !126, i64 864, !126, i64 872, !126, i64 880, !126, i64 888, !126, i64 896, !126, i64 904, !126, i64 912, !126, i64 920, !126, i64 928, !126, i64 936, !126, i64 944, !126, i64 952, !126, i64 960, !126, i64 968, !126, i64 976, !126, i64 984, !126, i64 992, !126, i64 1000, !126, i64 1008, !126, i64 1016, !126, i64 1024, !126, i64 1032, !126, i64 1040, !126, i64 1048, !126, i64 1056, !132, i64 1064, !132, i64 1072, !126, i64 1080, !126, i64 1088, !126, i64 1096, !126, i64 1104, !126, i64 1112, !126, i64 1120, !126, i64 1128, !126, i64 1136, !126, i64 1144, !126, i64 1152, !126, i64 1160, !126, i64 1168, !166, i64 1176, !126, i64 1232, !126, i64 1240, !126, i64 1248, !126, i64 1256, !126, i64 1264, !126, i64 1272, !126, i64 1280, !126, i64 1288, !126, i64 1296, !126, i64 1304, !126, i64 1312, !126, i64 1320, !126, i64 1328, !126, i64 1336, !126, i64 1344, !126, i64 1352, !126, i64 1360, !126, i64 1368, !126, i64 1376, !126, i64 1384, !126, i64 1392, !126, i64 1400, !126, i64 1408, !126, i64 1416, !126, i64 1424, !126, i64 1432, !126, i64 1440, !126, i64 1448, !126, i64 1456, !132, i64 1464, !167, i64 1472, !126, i64 1664, !126, i64 1672, !126, i64 1680, !126, i64 1688, !126, i64 1696, !126, i64 1704, !126, i64 1712, !126, i64 1720, !126, i64 1728, !126, i64 1736, !126, i64 1744, !126, i64 1752, !126, i64 1760, !126, i64 1768, !126, i64 1776, !168, i64 1784, !169, i64 1792, !170, i64 1896, !171, i64 1968, !126, i64 2016, !127, i64 2024, !127, i64 2025, !127, i64 2026, !127, i64 2027, !127, i64 2028, !127, i64 2029, !127, i64 2030, !127, i64 2031, !127, i64 2032, !127, i64 2033, !127, i64 2034, !127, i64 2035}
!162 = !{!"asm_out", !126, i64 0, !126, i64 8, !126, i64 16, !163, i64 24, !163, i64 56, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !126, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152, !126, i64 160, !126, i64 168, !126, i64 176, !126, i64 184, !126, i64 192, !126, i64 200, !126, i64 208, !126, i64 216, !126, i64 224, !126, i64 232, !126, i64 240, !126, i64 248, !126, i64 256, !126, i64 264, !126, i64 272, !126, i64 280, !126, i64 288, !126, i64 296, !126, i64 304, !126, i64 312, !126, i64 320, !126, i64 328, !126, i64 336, !126, i64 344, !126, i64 352, !126, i64 360}
!163 = !{!"asm_int_op", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24}
!164 = !{!"sched", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !126, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152, !126, i64 160, !126, i64 168, !126, i64 176, !126, i64 184, !126, i64 192, !126, i64 200, !126, i64 208, !126, i64 216, !126, i64 224, !126, i64 232, !126, i64 240, !126, i64 248, !126, i64 256, !126, i64 264, !126, i64 272, !126, i64 280, !126, i64 288}
!165 = !{!"vectorize", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72}
!166 = !{!"addr_space", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48}
!167 = !{!"calls", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !126, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152, !126, i64 160, !126, i64 168, !126, i64 176, !126, i64 184}
!168 = !{!"c", !126, i64 0}
!169 = !{!"cxx", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96}
!170 = !{!"emutls", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !127, i64 64, !127, i64 65}
!171 = !{!"target_option_hooks", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40}
!172 = !{!173, !131, i64 0}
!173 = !{!"elims", !131, i64 0, !131, i64 4}
!174 = distinct !{!174, !142, !143}
!175 = !{!150, !126, i64 200}
!176 = !{!150, !126, i64 344}
!177 = !{!133, !133, i64 0}
!178 = distinct !{!178, !142, !143}
!179 = distinct !{!179, !142, !143}
!180 = !{!132, !132, i64 0}
!181 = distinct !{!181, !142, !143}
!182 = distinct !{!182, !142, !143}
!183 = distinct !{!183, !142, !143}
!184 = distinct !{!184, !142, !143}
!185 = distinct !{!185, !142, !143}
!186 = distinct !{!186, !142, !143}
!187 = distinct !{!187, !142, !143}
!188 = distinct !{!188, !142, !143}
!189 = distinct !{!189, !142, !143}
!190 = distinct !{!190, !142, !143}
!191 = distinct !{!191, !142, !143}
!192 = !{!161, !126, i64 1400}
!193 = distinct !{!193, !142, !143}
!194 = !{i8 0, i8 2}
!195 = distinct !{!195, !142, !143}
!196 = distinct !{!196, !142, !143}
!197 = distinct !{!197, !142, !143}
!198 = distinct !{!198, !142, !143}
!199 = distinct !{!199, !142, !143}
!200 = distinct !{!200, !142, !143}
!201 = distinct !{!201, !142, !143}
!202 = distinct !{!202, !142, !143}
!203 = distinct !{!203, !142, !143}
!204 = distinct !{!204, !142, !143}
!205 = distinct !{!205, !142, !143}
!206 = !{!150, !127, i64 468}
!207 = distinct !{!207, !142, !143}
!208 = distinct !{!208, !142, !143}
!209 = distinct !{!209, !142, !143}
!210 = distinct !{!210, !142, !143}
!211 = distinct !{!211, !142, !143}
!212 = distinct !{!212, !142, !143}
!213 = distinct !{!213, !142, !143}
!214 = distinct !{!214, !142, !143}
!215 = distinct !{!215, !142, !143}
!216 = distinct !{!216, !142, !143}
!217 = distinct !{!217, !142, !143}
!218 = distinct !{!218, !142, !143}
!219 = distinct !{!219, !142, !143}
!220 = distinct !{!220, !142, !143}
!221 = distinct !{!221, !142, !143}
!222 = !{i32 0, i32 2}
!223 = !{!"stmt.c;expand_null_return_1"}
!224 = !{!150, !126, i64 352}
!225 = !{!150, !126, i64 360}
!226 = !{!"function_entry_count", i64 38}
!227 = !{!"branch_weights", i32 0, i32 38}
!228 = !{!"branch_weights", i32 38, i32 0}
!229 = !{!161, !126, i64 1504}
!230 = distinct !{!230, !142, !143}
!231 = distinct !{!231, !142, !143}
!232 = distinct !{!232, !142, !143}
!233 = !{!234, !126, i64 0}
!234 = !{!"rtl_hooks", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32}
!235 = !{!"branch_weights", i32 0, i32 38, i32 0}
!236 = !{!"stmt.c;expand_value_return"}
!237 = !{!"function_entry_count", i64 40}
!238 = !{!"branch_weights", i32 0, i32 40}
!239 = !{!"branch_weights", i32 40, i32 0}
!240 = !{!"branch_weights", i32 1, i32 159}
!241 = !{!"branch_weights", i32 9209, i32 0}
!242 = !{!"branch_weights", i32 0, i32 9209}
!243 = !{!"branch_weights", i32 5489, i32 3720}
!244 = !{!"branch_weights", i32 3720, i32 0}
!245 = !{!"branch_weights", i32 5489, i32 0}
!246 = !{!"branch_weights", i32 0, i32 5489}
!247 = !{!"branch_weights", i32 0, i32 3720}
!248 = !{!249, !126, i64 24}
!249 = !{!"case_node", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40}
!250 = !{!249, !126, i64 32}
!251 = !{!249, !126, i64 40}
!252 = !{!249, !126, i64 0}
!253 = !{!249, !126, i64 16}
!254 = !{!249, !126, i64 8}
!255 = !{!"branch_weights", i32 36677, i32 159}
!256 = distinct !{!256, !142, !143}
!257 = !{!"branch_weights", i32 40, i32 9169}
!258 = !{!"branch_weights", i32 9169, i32 0}
!259 = !{!"branch_weights", i32 0, i32 9169}
!260 = !{!"branch_weights", i32 3720, i32 5489}
!261 = !{!"branch_weights", i32 2903, i32 6306}
!262 = !{!"branch_weights", i32 159, i32 36677}
!263 = distinct !{!263, !142, !143}
!264 = !{!265, !131, i64 0}
!265 = !{!"optab_handlers", !131, i64 0}
!266 = !{!"branch_weights", i32 3, i32 37}
!267 = !{!"branch_weights", i32 0, i32 3}
!268 = !{!161, !126, i64 1760}
!269 = !{!"VP", i32 0, i64 40, i64 -1435484128547903387, i64 40}
!270 = !{!"branch_weights", i32 5, i32 35}
!271 = !{!"branch_weights", i32 35, i32 0}
!272 = !{!"branch_weights", i32 12, i32 23}
!273 = !{!"branch_weights", i32 23, i32 0}
!274 = !{!"branch_weights", i32 17, i32 0}
!275 = !{!"branch_weights", i32 0, i32 17}
!276 = distinct !{!276, !142, !143}
!277 = !{!"branch_weights", i32 16, i32 1}
!278 = !{!"branch_weights", i32 66, i32 62}
!279 = !{!"branch_weights", i32 34, i32 32}
!280 = !{!"branch_weights", i32 1, i32 33}
!281 = !{!"branch_weights", i32 1, i32 127}
!282 = distinct !{!282, !142, !143}
!283 = !{!"branch_weights", i32 1, i32 191}
!284 = !{!"branch_weights", i32 47, i32 0}
!285 = !{!"branch_weights", i32 37, i32 10}
!286 = !{!"branch_weights", i32 33, i32 40}
!287 = !{!"branch_weights", i32 4, i32 36}
!288 = distinct !{!288, !142, !143}
!289 = !{!"branch_weights", i32 191, i32 2817}
!290 = distinct !{!290, !142, !143}
!291 = !{!"branch_weights", i32 0, i32 23}
!292 = !{!"VP", i32 1, i64 23, i64 513, i64 23}
!293 = !{!"branch_weights", i32 1, i32 183}
!294 = !{!"branch_weights", i32 1, i32 8731}
!295 = !{!"branch_weights", i32 8731, i32 14789}
!296 = distinct !{!296, !142, !143}
!297 = !{!"branch_weights", i32 183, i32 69673}
!298 = distinct !{!298, !142, !143}
!299 = !{!"branch_weights", i32 183, i32 1}
!300 = !{!"branch_weights", i32 16981, i32 23520}
!301 = !{!"branch_weights", i32 183, i32 323825}
!302 = distinct !{!302, !142, !143}
!303 = !{!304, !126, i64 16}
!304 = !{!"case_bit_test", !132, i64 0, !132, i64 8, !126, i64 16, !131, i64 24}
!305 = distinct !{!305, !142, !143}
!306 = !{!304, !131, i64 24}
!307 = !{!304, !132, i64 0}
!308 = !{!304, !132, i64 8}
!309 = distinct !{!309, !142, !143}
!310 = distinct !{!310, !142, !143}
!311 = distinct !{!311, !142, !143}
!312 = !{!"function_entry_count", i64 401}
!313 = !{!"stmt.c;balance_case_nodes"}
!314 = !{!"branch_weights", i32 0, i32 401}
!315 = !{!"branch_weights", i32 1241, i32 1106}
!316 = !{!"branch_weights", i32 1241, i32 0}
!317 = !{!"branch_weights", i32 2344, i32 3}
!318 = !{!"branch_weights", i32 401, i32 1946}
!319 = distinct !{!319, !142, !143}
!320 = !{!"branch_weights", i32 192, i32 209}
!321 = !{!"branch_weights", i32 192, i32 0}
!322 = distinct !{!322, !143}
!323 = distinct !{!323, !142, !143}
!324 = !{!"branch_weights", i32 48, i32 144}
!325 = !{!"branch_weights", i32 1, i32 143}
!326 = !{!"branch_weights", i32 143, i32 731}
!327 = distinct !{!327, !143}
!328 = !{!"branch_weights", i32 133, i32 76}
!329 = !{!"branch_weights", i32 76, i32 0}
!330 = distinct !{!330, !142, !143}
!331 = !{!"function_entry_count", i64 418}
!332 = !{!"stmt.c;emit_case_nodes"}
!333 = !{!"branch_weights", i32 0, i32 418}
!334 = !{!"branch_weights", i32 359, i32 59}
!335 = !{!"branch_weights", i32 408, i32 10}
!336 = !{!"branch_weights", i32 254, i32 154}
!337 = !{!"branch_weights", i32 51, i32 103}
!338 = !{!"branch_weights", i32 37, i32 66}
!339 = !{!"branch_weights", i32 49, i32 17}
!340 = !{!"branch_weights", i32 60, i32 6}
!341 = !{!"branch_weights", i32 48, i32 12}
!342 = !{!"branch_weights", i32 55, i32 5}
!343 = !{!"branch_weights", i32 25, i32 30}
!344 = !{!"branch_weights", i32 17, i32 13}
!345 = !{!"branch_weights", i32 10, i32 7}
!346 = !{!"branch_weights", i32 1, i32 9}
!347 = !{!"branch_weights", i32 9, i32 0}
!348 = !{!"branch_weights", i32 0, i32 46}
!349 = !{!"branch_weights", i32 51, i32 37}
!350 = !{!"branch_weights", i32 37, i32 0}
!351 = !{!"branch_weights", i32 14, i32 23}
!352 = !{!"branch_weights", i32 10, i32 4}
!353 = !{!"branch_weights", i32 51, i32 0}
!354 = !{!"branch_weights", i32 89, i32 165}
!355 = !{!"branch_weights", i32 39, i32 126}
!356 = !{!"branch_weights", i32 107, i32 19}
!357 = !{!"branch_weights", i32 119, i32 7}
!358 = !{!"branch_weights", i32 7, i32 119}
!359 = !{!"branch_weights", i32 0, i32 119}
!360 = !{!"branch_weights", i32 89, i32 39}
!361 = !{!"branch_weights", i32 39, i32 0}
!362 = !{!"branch_weights", i32 26, i32 13}
!363 = !{!"branch_weights", i32 89, i32 0}
!364 = !{!"branch_weights", i32 19, i32 70}
!365 = !{!"branch_weights", i32 17, i32 53}
!366 = !{!"branch_weights", i32 53, i32 0}
!367 = !{!368, !126, i64 448}
!368 = !{!"lang_hooks", !126, i64 0, !132, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !126, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152, !126, i64 160, !126, i64 168, !126, i64 176, !126, i64 184, !126, i64 192, !126, i64 200, !126, i64 208, !126, i64 216, !126, i64 224, !126, i64 232, !369, i64 240, !370, i64 248, !371, i64 256, !372, i64 272, !373, i64 432, !374, i64 560, !126, i64 584, !126, i64 592, !126, i64 600, !126, i64 608, !126, i64 616, !126, i64 624, !126, i64 632, !126, i64 640, !126, i64 648, !126, i64 656, !126, i64 664, !127, i64 672}
!369 = !{!"lang_hooks_for_tree_inlining", !126, i64 0}
!370 = !{!"lang_hooks_for_callgraph", !126, i64 0}
!371 = !{!"lang_hooks_for_tree_dump", !126, i64 0, !126, i64 8}
!372 = !{!"lang_hooks_for_decls", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !126, i64 120, !126, i64 128, !126, i64 136, !126, i64 144, !126, i64 152}
!373 = !{!"lang_hooks_for_types", !126, i64 0, !126, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !126, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !126, i64 88, !126, i64 96, !126, i64 104, !126, i64 112, !127, i64 120}
!374 = !{!"lang_hooks_for_lto", !126, i64 0, !126, i64 8, !126, i64 16}
!375 = !{!"VP", i32 0, i64 53, i64 746784871645613821, i64 53}
!376 = !{!"function_entry_count", i64 812}
!377 = !{!"stmt.c;node_has_low_bound"}
!378 = !{!"branch_weights", i32 812, i32 0}
!379 = !{!"branch_weights", i32 505, i32 307}
!380 = !{!"branch_weights", i32 0, i32 505}
!381 = !{!"branch_weights", i32 362, i32 1878}
!382 = !{!"branch_weights", i32 1735, i32 143}
!383 = distinct !{!383, !142, !143}
!384 = !{!"function_entry_count", i64 196}
!385 = !{!"stmt.c;node_has_high_bound"}
!386 = !{!"branch_weights", i32 0, i32 196}
!387 = !{!"branch_weights", i32 196, i32 0}
!388 = !{!"branch_weights", i32 153, i32 43}
!389 = !{!"branch_weights", i32 0, i32 153}
!390 = !{!"branch_weights", i32 108, i32 634}
!391 = !{!"branch_weights", i32 589, i32 45}
!392 = distinct !{!392, !142, !143}
